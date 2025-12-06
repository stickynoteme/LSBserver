#!/usr/bin/env python3
"""
Script to regenerate trust Lua files from their JSON defaults.
This is useful when the Lua generation logic changes.
"""
import os
import json
from pathlib import Path

TRUST_DIR = Path(__file__).parent
DEFAULTS_DIR = TRUST_DIR / "sys" / "defaults"

# Import item data parsing from generate_defaults
import sys
sys.path.insert(0, str(TRUST_DIR))
from generate_defaults import TRUST_DIR as _

# Item names for gear comments
SQL_DIR = Path(os.path.abspath(os.path.join(TRUST_DIR, "../../../.."))) / "sql"

def parse_item_names():
    """Parse item names from item_basic.sql"""
    import re
    data = {}
    file_path = SQL_DIR / "item_basic.sql"
    if not file_path.exists():
        return data
    content = file_path.read_text(errors="ignore")
    for match in re.findall(r"VALUES\s*\((\d+),\d+,'([^']*)',", content):
        item_id, name = match
        data[int(item_id)] = name
    return data

ITEM_NAMES = parse_item_names()

def generate_lua(filename, data):
    """Generate Lua trust file from JSON data"""
    name = filename.replace(".lua", "").replace("_", " ").title()
    job_line = ""
    if data.get('main_job'):
        job_line = f"-- Jobs: {data.get('main_job')}/{data.get('sub_job', 'NONE')}\n"
    
    # Helper to format args
    def fmt_arg(val):
        if not val: return "0"
        try:
            return str(int(val))
        except:
            # If it looks like a constant (xi.magic...), leave it
            if "xi." in str(val) or "ai." in str(val): return str(val)
            return str(val) # Fallback

    # Generate job change call if main_job is specified
    job_change_str = ""
    main_job = data.get('main_job', '')
    sub_job = data.get('sub_job', 'NONE')
    if main_job:
        job_change_str += "\n"  # Blank line before
        job_change_str += f"    -- Set main job to enable job-specific abilities and spells\n"
        job_change_str += f"    mob:changeJob(xi.job.{main_job})\n"
        if sub_job and sub_job != 'NONE':
            job_change_str += f"    mob:changeSJob(xi.job.{sub_job})\n"

    mods_str = ""
    if data.get('mods'):
        mods_str += "\n"  # Blank line before
    for m in data.get('mods', []):
        mods_str += f"    mob:addMod(xi.mod.{m['name']}, {fmt_arg(m['value'])})\n"

    effects_str = ""
    if data.get('effects'):
        effects_str += "\n"  # Blank line before
    for e in data.get('effects', []):
        effects_str += f"    mob:addStatusEffectEx(xi.effect.{e['effect']}, xi.effect.{e['effect']}, {fmt_arg(e['power'])}, 0, {fmt_arg(e['duration'])})\n"

    gear_setlook = ""
    gear_mods_str = ""
    if data.get('gear'):
        # Build setLook table
        look_parts = []
        for g in data['gear']:
            slot = g.get('slot')
            item_id = g.get('item_id')
            if slot and item_id:
                look_parts.append(f"{slot} = {item_id}")
        
        if look_parts:
            gear_setlook = "\n"  # Blank line before
            gear_setlook += "    -- Faux Gear Look\n"
            gear_setlook += "    mob:setLook({ " + ", ".join(look_parts) + " })\n"

    gambits_str = ""
    for g in data.get('gambits', []):
        t = f"ai.t.{g['target']}"
        c = f"{{ ai.c.{g['condition']}, {fmt_arg(g['cond_arg'])} }}"
        r = f"{{ ai.r.{g['reaction']}, ai.s.{g['selector']}, {fmt_arg(g['sel_arg'])} }}"
        gambits_str += f"    mob:addGambit({t}, {c}, {r})\n"

    tp_str = ""
    tp_settings = data.get('tp_settings', {})
    if tp_settings.get('trigger'):
        tp_str = f"    mob:setTrustTPSkillSettings(ai.tp.{tp_settings.get('trigger')}, ai.s.{tp_settings.get('select')}, {fmt_arg(tp_settings.get('value'))})\n"

    listeners_str = ""
    for lst in data.get('listeners', []):
        if not lst.get('event'):
            continue
        tag = lst.get('tag') or f"{lst.get('event')}_LISTENER"
        body = lst.get('body', '').strip() or "-- TODO: add listener logic"
        indented_body = "\n".join(f"        {line}" if line.strip() else "" for line in body.splitlines())
        listeners_str += f"    mob:addListener('{lst.get('event')}', '{tag}', function(mobArg, target, param1, param2, action)\n{indented_body}\n    end)\n\n"

    lua_content = f"""-----------------------------------
-- Trust: {name}
{job_line}-----------------------------------
---@type TSpellTrust
local spellObject = {{}}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled({str(data.get('auto_attack', True)).lower()})\
{job_change_str}\
{mods_str}\
{effects_str}\
{gear_setlook}\
{gambits_str}\
{tp_str}\
{listeners_str}
    -- Custom Code
    {data.get('custom_code', '')}
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
"""
    return lua_content

def main():
    """Regenerate Lua files from JSON defaults"""
    # Only regenerate files that were created by the editor (have "Custom Trust Generated" comment)
    generated_files = []
    for lua_file in TRUST_DIR.glob("*.lua"):
        try:
            content = lua_file.read_text()
            # Skip if doesn't look like it was generated (no require statements or old format)
            if "require(" in content or "Jobs:" in content:
                generated_files.append(lua_file.name)
        except Exception as e:
            print(f"Error reading {lua_file.name}: {e}")
    
    print(f"Found {len(generated_files)} generated trust files to regenerate")
    
    regenerated = 0
    for lua_filename in generated_files:
        json_filename = lua_filename.replace('.lua', '.json')
        json_path = DEFAULTS_DIR / json_filename
        
        if not json_path.exists():
            print(f"Warning: No default found for {lua_filename}, skipping")
            continue
        
        try:
            with open(json_path, 'r') as f:
                data = json.load(f)
            
            lua_content = generate_lua(lua_filename, data)
            lua_path = TRUST_DIR / lua_filename
            
            with open(lua_path, 'w') as f:
                f.write(lua_content)
            
            regenerated += 1
            if regenerated % 10 == 0:
                print(f"Regenerated {regenerated} files...")
        except Exception as e:
            print(f"Error regenerating {lua_filename}: {e}")
    
    print(f"\nSuccessfully regenerated {regenerated} trust Lua files")

if __name__ == "__main__":
    main()
