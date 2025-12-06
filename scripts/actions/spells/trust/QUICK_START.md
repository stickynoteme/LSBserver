# Trust Editor Quick Start Guide

## How to Make a Trust Cast Spells

### Example: Making Zeid Act Like a White Mage

#### Step 1: Open Trust Editor
```bash
python3 trust_editor.py
```

#### Step 2: Select Trust
- Click the dropdown at the top
- Select "zeid.lua"
- Default configuration (empty) will load

#### Step 3: Apply Job Template
- **General Tab**: Set Main Job to "WHM", Sub Job to "NONE"
- Click **"Apply Player-Like Job Template"** button
- Confirm replacement when prompted
- This adds all WHM gambits and mods automatically

#### Step 4: Verify Configuration
- **Mods Tab**: Should show 5 mods (CURE_POTENCY, FASTCAST, MND, REFRESH)
- **Gambits Tab**: Should show 12 gambits (cure, status removal, buffs)
- **General Tab**: Auto Attack should be OFF (unchecked)

#### Step 5: Optional - Add Gear
- **Gear Tab**: Add a weapon and armor if desired
- Note: Only adds visual appearance and weapon DMG
- For stats, use Mods tab instead

#### Step 6: Save
- Click **"Save Trust"** button at the top
- Success message: "Saved zeid.lua and updated Lua file"
- Check that `zeid.lua` file was created/updated

#### Step 7: Restart Server
**CRITICAL**: Server must be restarted for changes to take effect
```bash
# Stop server (depends on your setup)
# Start server again
```

#### Step 8: Test In-Game
- Summon Zeid trust
- Take damage or get status effects
- Zeid should cast Cure, Poisona, Protect, Shell, etc.

---

## How to Make a Trust Powerful

### The WRONG Way ❌
```
Add lv99 gear → Expect trust to become powerful
```
**Why this doesn't work**: Most gear has no stats in the database!

### The RIGHT Way ✅
```
Use the Mods tab to add stats directly
```

#### Example: Powerful Warrior Trust

**Mods Tab - Add These:**
```
ATT:    150    # High attack power
ACC:    120    # Good accuracy
DEF:    100    # Some defense
HP:     500    # Extra HP
HASTE_MAGIC: 1500  # 15% haste
DOUBLE_ATTACK: 15  # 15% double attack
STORE_TP: 25   # Store TP +25
CRIT_HIT_RATE: 10  # +10% crit rate
```

**Gambits Tab - Should Have:**
- Berserk (when not active)
- Warcry (when not active)  
- Provoke (when don't have top enmity)
- Weaponskill (when TP >= 1000)

**TP Settings Tab:**
- Trigger: CLOSER_UNTIL_TP
- Select: HIGHEST
- Value: 1250

**General Tab:**
- Auto Attack: ✅ ENABLED (checked)
- Main Job: WAR
- Sub Job: NIN (optional)

---

## How to Fix Visual Appearance

### Changing Trust's Look

#### Example: Make Lion Wear Cool Gear

**Gear Tab:**
```
Main:   18264  # Bravura (Great Axe)
Head:   12516  # Fighter Mask +1
Body:   10240  # Hexed Haubert
Hands:  14928  # Fighter Mufflers +1
Legs:   15640  # Fighter Cuisses +1
Feet:   13662  # Fighter Calligae +1
```

**Result:**
- ✅ Lion's appearance changes (looks like wearing that gear)
- ❌ Stats DON'T apply (except weapon DMG)
- ✅ Weapon DMG/Delay applied automatically

**To Add Stats:**
- Use Mods tab and add the stats manually
- Example: If gear should have ATT+50, add ATT: 50 in Mods tab

---

## Common Mistakes

### Mistake 1: Not Restarting Server
**Symptom**: Changes don't work in-game
**Solution**: Always restart server after saving

### Mistake 2: No Gambits
**Symptom**: Trust does nothing, just follows you around
**Solution**: Apply a job template or add gambits manually

### Mistake 3: Expecting Gear to Add Stats
**Symptom**: Trust is weak even with "good" gear
**Solution**: Add stats via Mods tab, not Gear tab

### Mistake 4: Wrong Auto-Attack Setting
**Symptom**: Melee trust doesn't attack
**Solution**: Enable auto-attack (check the box)

### Mistake 5: Empty Mods
**Symptom**: Trust hits for 1 damage, has no accuracy
**Solution**: Add mods (ATT, ACC) or apply job template

---

## Job Templates Reference

### Available Templates
- **PLD** - Paladin tank with Flash, Cure, Sentinel
- **WAR** - Warrior DD with Berserk, Warcry, Provoke
- **SAM** - Samurai DD with Hasso, Meditate
- **NIN** - Ninja with Utsusemi, enfeebles
- **DRK** - Dark Knight with Last Resort, Drain/Aspir
- **WHM** - White Mage with Cure, status removal, buffs
- **RDM** - Red Mage with Haste, Refresh, enfeebles
- **BLM** - Black Mage with magic burst logic
- **BRD** - Bard with songs
- **COR** - Corsair with phantom rolls
- **DNC** - Dancer with Sambas, Waltzes
- **RNG** - Ranger with ranged attacks
- **DRG** - Dragoon with Jump

### What Templates Add
- **Mods**: Job-appropriate stats (ATT, ACC, MATT, MACC, etc.)
- **Gambits**: Job-appropriate AI behavior
- **TP Settings**: How the job uses weaponskills
- **Auto-Attack**: Enabled for melee, disabled for casters

### After Applying Template
- Review and adjust mods (increase/decrease values)
- Review and adjust gambits (add/remove)
- Add gear for appearance (optional)
- Save and restart server

---

## Verifying Your Changes

### Check the Generated Lua File
```bash
# Open in text editor
nano scripts/actions/spells/trust/zeid.lua

# Should contain:
mob:addMod(xi.mod.CURE_POTENCY, 30)      # Mods section
mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 75 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })  # Gambits section
```

### Check the JSON Configuration
```bash
# Your customizations
cat scripts/actions/spells/trust/userdata/zeid.json

# Or defaults
cat scripts/actions/spells/trust/sys/defaults/zeid.json
```

### Test Each Component
1. **Spawn**: Can you summon the trust?
   - If no: Lua syntax error (check server logs)
2. **Movement**: Does trust follow you?
   - If no: Basic trust functionality broken
3. **Auto-attack**: Does melee trust attack?
   - If no: Check auto-attack setting
4. **Abilities**: Does trust use JAs/spells?
   - If no: Check gambits exist, restart server
5. **Damage**: Does trust hit hard?
   - If no: Add more mods (ATT, weapon DMG)

---

## Advanced: Custom Gambits

### Gambit Structure
```
Target | Condition | Condition Arg | Reaction | Selector | Selector Arg
```

### Example: Cast Cure When HP < 50%
```
Target:        PARTY
Condition:     HPP_LT
Condition Arg: 50
Reaction:      MA
Selector:      HIGHEST
Selector Arg:  xi.magic.spellFamily.CURE
```

### Example: Use Provoke When Don't Have Hate
```
Target:        SELF
Condition:     NOT_HAS_TOP_ENMITY
Condition Arg: 0
Reaction:      JA
Selector:      SPECIFIC
Selector Arg:  xi.ja.PROVOKE
```

### Example: Cast Thunder When Magic Burst Available
```
Target:        TARGET
Condition:     MB_AVAILABLE
Condition Arg: 0
Reaction:      MA
Selector:      MB_ELEMENT
Selector Arg:  xi.magic.spellFamily.NONE
```

---

## Workflow Summary

```
1. Open trust_editor.py
   ↓
2. Select trust from dropdown
   ↓
3. Apply job template (or configure manually)
   ↓
4. Adjust mods/gambits as needed
   ↓
5. Add gear for appearance (optional)
   ↓
6. Click "Save Trust"
   ↓
7. Restart server
   ↓
8. Test in-game
   ↓
9. If not working, check TROUBLESHOOTING.md
```

---

## Files to Know

- **trust_editor.py** - Main GUI application
- **userdata/[trust].json** - Your custom configurations
- **sys/defaults/[trust].json** - Default configurations  
- **[trust].lua** - Generated Lua file (what server uses)
- **TROUBLESHOOTING.md** - Detailed troubleshooting guide
- **README.md** - Feature documentation

---

## Getting Help

1. Read **TROUBLESHOOTING.md** - Covers 90% of issues
2. Check generated Lua file for errors
3. Verify server restarted after saving
4. Compare your trust to working examples (curilla, ayame, shantotto)
5. Check server logs for Lua errors

---

## Pro Tips

### Tip 1: Start with Working Trust
Copy curilla.json or ayame.json as a starting point

### Tip 2: Test Incrementally
Make one change, save, restart, test. Don't change everything at once.

### Tip 3: Focus on Mods Tab
This is where real power comes from, not Gear tab.

### Tip 4: Use Higher Values
Don't be afraid to use ATT: 200, ACC: 150 for powerful trusts.

### Tip 5: Check Examples
Look at other trust Lua files to see what works.

### Tip 6: Keep It Simple
Start with 3-5 gambits. Add more only if needed.

### Tip 7: Weapon DMG Matters
A good weapon (high DMG) makes a big difference for damage output.

---

## Quick Reference: Mod Values

### Typical Ranges
```
ATT:          50-200   (attack power)
ACC:          30-150   (accuracy)
DEF:          30-100   (defense)
EVA:          30-100   (evasion)
HP:           200-1000 (extra HP)
MP:           100-500  (extra MP)
STR/DEX/VIT:  10-50    (main stats)
HASTE_MAGIC:  1500     (15% haste)
DOUBLE_ATTACK: 10-20   (% chance)
STORE_TP:     10-30    (TP gain)
CRIT_HIT_RATE: 5-15    (% bonus)
CURE_POTENCY: 20-40    (cure power)
FASTCAST:     15-30    (% faster cast)
REFRESH:      3-5      (MP per tick)
```

### Example Builds

**Tank:**
```
HP: 800, DEF: 150, ENMITY: 60, CURE_POTENCY: 30
```

**DD:**
```
ATT: 150, ACC: 120, HASTE_MAGIC: 1500, DOUBLE_ATTACK: 15
```

**Caster:**
```
MATT: 100, MACC: 120, FASTCAST: 25, REFRESH: 5
```

**Healer:**
```
CURE_POTENCY: 40, MND: 50, FASTCAST: 25, REFRESH: 5
```

