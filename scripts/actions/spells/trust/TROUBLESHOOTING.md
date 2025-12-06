# Trust System Troubleshooting Guide

## Issue: Trust doesn't cast spells or use abilities

### Possible Causes:

1. **Server not reloading Lua files**
   - **Solution**: Restart the server after saving trust changes
   - The server caches Lua scripts and may not reload them automatically
   - Command: Stop the server, then start it again

2. **Trust has no gambits**
   - **Check**: Open the trust Lua file and verify `mob:addGambit()` calls exist
   - **Solution**: Apply a job template in the trust editor, or manually add gambits

3. **Trust level too low**
   - Some abilities/spells require minimum trust level
   - **Solution**: Level up the trust by using it in combat

4. **MP issues (casters)**
   - Trust may be out of MP
   - **Check**: Add REFRESH mod or REFRESH gear
   - **Example**: `mob:addMod(xi.mod.REFRESH, 3)` gives 3 MP/tick

5. **Auto-attack disabled incorrectly**
   - Melee trusts need auto-attack enabled
   - **Check**: `mob:setAutoAttackEnabled(true)` for melee, `false` for casters
   - **Solution**: Edit in trust editor General tab

## Issue: Gear has no visible effect

### Visual Appearance (setLook):
- **Works**: `mob:setLook({ main = 17024, head = 27733 })` changes appearance
- **Check**: Verify the Lua file has setLook() call with your gear item IDs
- **Note**: Some items may not have visible models

### Gear Stats:
- **IMPORTANT**: Most high-level gear has NO STAT MODS in the database
- **What works**: Weapon DMG/Delay from item_weapon.sql
- **What doesn't work**: Armor stats like STR+10, ACC+20 (missing from item_mods.sql)

#### Example:
```lua
-- This WILL apply (weapon has DMG/Delay data):
mob:setLook({ main = 20993 })  -- Senkutanto, DMG:100 Delay:185
-- Generated: mob:addMod(xi.mod.MAIN_DMG_RATING, 100)

-- This WON'T add stats (no mods in database):
mob:setLook({ body = 10240 })  -- Hexed Haubert lv99 - NO MODS!
```

### Solution for Better Stats:
**Use the Mods tab instead of gear for stat bonuses**
- Add mods manually: ATT+50, ACC+30, HASTE_MAGIC+1000, etc.
- These mods ALWAYS work regardless of gear
- Mods represent the total power you want, not individual gear pieces

#### Example Configuration:
```lua
-- Instead of relying on gear stats, add mods directly:
mob:addMod(xi.mod.ATT, 100)        -- Attack +100
mob:addMod(xi.mod.ACC, 80)         -- Accuracy +80
mob:addMod(xi.mod.HASTE_MAGIC, 1500) -- 15% Haste
mob:addMod(xi.mod.DOUBLE_ATTACK, 10) -- 10% Double Attack
```

## Issue: Trust doesn't seem powerful even with lv99 gear

### Root Cause:
**The item_mods.sql database is incomplete** - Most lv99+ gear has NO stat mods defined.

### What This Means:
- ❌ Equipping lv99 armor → No DEF/EVA/stat bonuses (data missing)
- ✅ Equipping lv99 weapon → DMG/Delay work (in item_weapon.sql)
- ❌ Equipping accessories → No stat bonuses (data missing)

### Workaround:
1. **Focus on weapon DMG** - This is the main benefit of gear
2. **Add manual mods** - Use Mods tab to add the stats you want
3. **Reference player gear** - Look up what stats the gear should have, add those mods manually

### Example: Making a Powerful Trust
```lua
-- In the Mods tab, add:
ATT: 150          -- Strong attack power
ACC: 120          -- High accuracy
HASTE_MAGIC: 1500 -- 15% Haste
DOUBLE_ATTACK: 15 -- 15% Double Attack
TRIPLE_ATTACK: 5  -- 5% Triple Attack
STORE_TP: 25      -- Store TP +25
CRIT_HIT_RATE: 10 -- +10% Crit Rate

-- Weapon will add DMG/Delay automatically if equipped
-- But other slots need manual mods
```

## Issue: Applied job template but trust still weak

### Check These:
1. **Did you save?** - Click "Save Trust" button after applying template
2. **Did you restart server?** - Server must be restarted to reload Lua files
3. **Check the Lua file** - Verify `mob:addMod()` and `mob:addGambit()` lines exist
4. **Check trust level** - Low level trusts are weaker regardless of configuration

### Typical Job Template Should Generate:
- 3-10 `mob:addMod()` calls for stats
- 5-15 `mob:addGambit()` calls for AI behavior
- 1 `mob:setTrustTPSkillSettings()` call for weaponskills (melee jobs)
- 0-2 `mob:setLook()` calls if gear is equipped

## General Debugging Steps

### 1. Check Generated Lua File
Open `scripts/actions/spells/trust/[trustname].lua` and verify:
- ✅ `mob:setAutoAttackEnabled(true/false)` matches job type
- ✅ `mob:addMod()` calls present with reasonable values
- ✅ `mob:addGambit()` calls present (at least 3-5 for functionality)
- ✅ No syntax errors (Lua will fail silently if there are errors)

### 2. Verify JSON Configuration
Check `userdata/[trustname].json` or `sys/defaults/[trustname].json`:
- Should have `"mods"` array with entries
- Should have `"gambits"` array with entries
- Should match what you configured in the editor

### 3. Test with Known Working Trust
- Compare your custom trust to `curilla.lua`, `ayame.lua`, or `shantotto.lua`
- These are confirmed working trusts
- Structure and format should be similar

### 4. Server-Side Verification
- Check server logs for Lua errors on startup
- Watch for errors when summoning the trust
- Verify trust actually spawns (if it doesn't spawn, there's a Lua error)

## Common Mistakes

### Mistake 1: Empty Gambits
**Problem**: Trust does nothing
**Solution**: Apply a job template or add gambits manually

### Mistake 2: Wrong Auto-Attack Setting
**Problem**: WAR stands around doing nothing
**Solution**: Enable auto-attack for melee jobs

### Mistake 3: No Mods
**Problem**: Trust is very weak
**Solution**: Add stat mods or apply a job template

### Mistake 4: Expecting Gear to Add Stats
**Problem**: lv99 gear doesn't make trust powerful
**Solution**: Add mods manually instead of relying on gear stats

### Mistake 5: Not Restarting Server
**Problem**: Changes don't take effect
**Solution**: Always restart server after editing trust files

## How the System Actually Works

### Trust Stats:
```
Base Stats (from trust level)
+ Mods from trust Lua file (mob:addMod calls)
+ Weapon DMG/Delay (if weapon equipped)
= Final Trust Stats
```

### What Gets Applied:
✅ **Mods from `mob:addMod(xi.mod.X, value)`**
  - Always works
  - Direct stat modifications

✅ **Weapon DMG/Delay**
  - From item_weapon.sql
  - Added automatically by trust_editor.py

❌ **Armor/Accessory Stats**
  - NOT in item_mods.sql for most gear
  - Does NOT apply automatically
  - Must add manually via Mods tab

### Visual Appearance:
✅ **`mob:setLook({ slot = itemid })`**
  - Changes visual appearance
  - Works for all items with models
  - Does NOT add stats (except weapon DMG/Delay)

## Technical Details

### SQL Tables Used:
1. **item_mods.sql** - Sparse data, many items missing
2. **item_weapon.sql** - Complete weapon data
3. **item_equipment.sql** - Complete equipment data

### Python Parsing (generate_defaults.py):
- Reads existing Lua files
- Extracts mods, gambits, gear
- Skips EQUIPMENT_ONLY_RACE automatically
- Skips dynamic values (calculations)

### Lua Generation (trust_editor.py):
- Takes JSON configuration
- Generates complete trust Lua file
- Adds weapon DMG/Delay from item_weapon.sql
- Skips EQUIPMENT_ONLY_RACE from item_mods.sql

## FAQ

**Q: Why doesn't my trust cast Cure even with WHM template?**
A: Check that gambits exist in the Lua file. If they do, restart the server.

**Q: Why doesn't lv99 gear make my trust powerful?**
A: Most lv99 gear has no stats in the database. Add stats manually via Mods tab.

**Q: Does setLook() do anything?**
A: Yes, it changes visual appearance and adds weapon DMG/Delay, but not armor stats.

**Q: How do I make a trust as powerful as a lv99 player?**
A: Add mods manually to match player stats: ATT+150, ACC+120, Haste+25%, etc.

**Q: Can I import stats from real FFXI gear database?**
A: The LSB item_mods.sql is incomplete. You'd need to manually add mods to match retail stats.

**Q: Do trusts benefit from gear?**
A: Only weapons (DMG/Delay). For armor/accessories, add mods manually instead.

**Q: Why do some trusts work and others don't?**
A: Working trusts (Curilla, Ayame, Shantotto) have proper configurations with gambits and mods.
Broken trusts either have no configuration or haven't been reloaded by the server.

