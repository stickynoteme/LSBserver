#!/usr/bin/env python3
"""
Script to convert existing trust Lua files to JSON defaults.
Parses basic trust configurations from Lua files.
"""
import os
import re
import json
from pathlib import Path

TRUST_DIR = Path(__file__).parent
DEFAULTS_DIR = TRUST_DIR / "sys" / "defaults"

# Mods to exclude when parsing (these can interfere with trust functionality)
EXCLUDED_MODS = {'EQUIPMENT_ONLY_RACE'}


def extract_local_variables(content):
    """Extract local variable assignments from Lua content."""
    variables = {}
    # Match patterns like: local kGrapeshot = 3198 or local healingMoveCooldown = math.random(3, 4)
    local_pattern = r'local\s+(\w+)\s*=\s*(\d+)'
    for match in re.finditer(local_pattern, content):
        var_name = match.group(1)
        var_value = match.group(2)
        variables[var_name] = var_value
    return variables


def resolve_variable(value, variables):
    """Resolve a variable reference to its value if possible."""
    value = value.strip()
    if value in variables:
        return variables[value]
    return value


def remove_lua_comments(content):
    """Remove Lua comments from content to avoid parsing commented code."""
    # Remove single-line comments (--) but preserve the rest of the line structure
    lines = content.split('\n')
    cleaned_lines = []
    in_block_comment = False
    for line in lines:
        # Handle block comments --[[ ... ]]
        if '--[[' in line:
            in_block_comment = True
            line = line[:line.index('--[[')]
        if ']]' in line and in_block_comment:
            in_block_comment = False
            line = line[line.index(']]') + 2:]
        if in_block_comment:
            cleaned_lines.append('')
            continue
        # Remove single-line comments
        if '--' in line:
            line = line[:line.index('--')]
        cleaned_lines.append(line)
    return '\n'.join(cleaned_lines)


def parse_trust_lua(lua_path):
    """Parse a trust Lua file and extract configuration data."""
    with open(lua_path, 'r', encoding='utf-8') as f:
        raw_content = f.read()

    # Remove comments to avoid parsing commented code
    content = remove_lua_comments(raw_content)

    data = {
        'auto_attack': True,  # Default
        'mods': [],
        'gambits': [],
        'tp_settings': {},
        'effects': [],
        'listeners': [],
        'custom_code': '',
        'main_job': '',
        'sub_job': 'NONE',
        'gear': []
    }

    # Extract local variables for resolution (from raw content since comments don't affect this)
    local_vars = extract_local_variables(raw_content)

    # Parse auto attack setting
    auto_attack_match = re.search(r'setAutoAttackEnabled\((\w+)\)', content)
    if auto_attack_match:
        data['auto_attack'] = auto_attack_match.group(1) == 'true'

    # Parse mods: mob:addMod(xi.mod.STAT, value) and mob:setMod(xi.mod.STAT, value)
    mod_pattern = r'mob:(?:add|set)Mod\(xi\.mod\.(\w+),\s*([^)]+)\)'
    for match in re.finditer(mod_pattern, content):
        mod_name = match.group(1)
        value = match.group(2).strip()
        # Skip excluded mods and dynamic values (expressions with variables)
        if mod_name in EXCLUDED_MODS:
            continue  # Skip mods that can interfere with trust functionality
        if not any(x in value for x in ['mob:', 'power', 'level', '/', '*', 'Lvl']):
            # Resolve variable references
            resolved_value = resolve_variable(value, local_vars)
            data['mods'].append({'name': mod_name, 'value': resolved_value})

    # Parse gambits: mob:addGambit(ai.t.TARGET, { ai.c.HPP_LT, 25 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    # Also handles optional cooldown parameter at the end (variable name or number)
    gambit_pattern = r'mob:addGambit\(ai\.t\.(\w+),\s*\{\s*ai\.c\.(\w+),\s*([^}]+)\}\s*,\s*\{\s*ai\.r\.(\w+),\s*ai\.s\.(\w+),\s*([^}]+)\}\s*(?:,\s*[\w]+)?\)'
    for match in re.finditer(gambit_pattern, content):
        target = match.group(1)
        condition = match.group(2)
        cond_arg = match.group(3).strip()
        reaction = match.group(4)
        selector = match.group(5)
        sel_arg = match.group(6).strip()

        # Resolve variable references in selector argument
        resolved_sel_arg = resolve_variable(sel_arg, local_vars)

        data['gambits'].append({
            'target': target,
            'condition': condition,
            'cond_arg': cond_arg,
            'reaction': reaction,
            'selector': selector,
            'sel_arg': resolved_sel_arg
        })
    
    # Parse TP settings: mob:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.HIGHEST, 1000)
    tp_pattern = r'mob:setTrustTPSkillSettings\(ai\.tp\.(\w+),\s*ai\.s\.(\w+)(?:,\s*([^)]+))?\)'
    tp_match = re.search(tp_pattern, content)
    if tp_match:
        data['tp_settings']['trigger'] = tp_match.group(1)
        data['tp_settings']['select'] = tp_match.group(2)
        data['tp_settings']['value'] = tp_match.group(3).strip() if tp_match.group(3) else ''
    
    # Parse status effects: mob:addStatusEffectEx(xi.effect.X, xi.effect.X, power, tick, duration)
    effect_pattern = r'mob:addStatusEffectEx\(xi\.effect\.(\w+),\s*xi\.effect\.\w+,\s*([^,]+),\s*[^,]+,\s*([^)]+)\)'
    for match in re.finditer(effect_pattern, content):
        effect = match.group(1)
        power = match.group(2).strip()
        duration = match.group(3).strip()
        # Skip dynamic values
        if not any(x in power for x in ['mob:', 'power', 'level', '/', '*']) and \
           not any(x in duration for x in ['mob:', 'power', 'level', '/', '*']):
            data['effects'].append({
                'effect': effect,
                'power': power,
                'duration': duration
            })
    
    # Parse gear from setLook: mob:setLook({ main = 17024, head = 27733 })
    setlook_pattern = r'mob:setLook\(\{([^}]+)\}\)'
    setlook_match = re.search(setlook_pattern, content)
    if setlook_match:
        look_content = setlook_match.group(1)
        # Parse slot = itemid pairs
        gear_pattern = r'(\w+)\s*=\s*(\d+)'
        for gear_match in re.finditer(gear_pattern, look_content):
            slot = gear_match.group(1)
            item_id = int(gear_match.group(2))
            data['gear'].append({
                'slot': slot,
                'item_id': item_id,
                'name': ''  # Name will be looked up by editor
            })
    
    return data

def main():
    """Generate JSON defaults for all trust Lua files."""
    DEFAULTS_DIR.mkdir(parents=True, exist_ok=True)
    
    # Find all trust Lua files
    trust_files = list(TRUST_DIR.glob("*.lua"))
    # Exclude Python files to avoid processing scripts in the trust directory
    trust_files = [f for f in trust_files if f.suffix == '.lua']
    
    print(f"Found {len(trust_files)} trust Lua files")
    
    converted_count = 0
    for lua_file in trust_files:
        try:
            data = parse_trust_lua(lua_file)
            
            # Save to JSON in defaults directory
            json_file = DEFAULTS_DIR / f"{lua_file.stem}.json"
            with open(json_file, 'w') as f:
                json.dump(data, f, indent=2)
            
            converted_count += 1
            if converted_count % 10 == 0:
                print(f"Converted {converted_count} files...")
        except Exception as e:
            print(f"Error converting {lua_file.name}: {e}")
    
    print(f"\nSuccessfully converted {converted_count} trust files to JSON defaults")
    print(f"JSON files saved to: {DEFAULTS_DIR}")

if __name__ == "__main__":
    main()
