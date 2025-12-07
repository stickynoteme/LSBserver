# 🎮 Complete Gambit System Guide for Trust Editor

## What Are Gambits?

Gambits are **intelligent behavior rules** that tell your trust NPC **when** to do **what action** on **which target**. Think of them as "If-Then" rules:

> **"IF** party member HP is below 50%, **THEN** cast Cure on them"

The Trust Editor now includes **201 pre-made gambit patterns** covering every behavior seen in FFXI trust NPCs!

---

## 📚 How to Use the Gambit Library

### Step 1: Open the Gambit Palette
Click the **"📖 Palette / Examples"** button on the Gambits tab.

### Step 2: Browse or Search
- **Browse** through 38 organized categories with emoji icons
- **Search** by typing keywords (e.g., "cure", "haste", "provoke")
- Click on any gambit to see its details

### Step 3: Understand the Gambit
Each gambit shows:
- **Name**: What it does in simple terms
- **Description**: When to use it
- **Plain-English Explanation**: A friendly explanation with emoji hints
- **Technical Details**: Target, Condition, Reaction, etc.

### Step 4: Insert into Your Trust
Click **"Insert into Editor"** to add the gambit to your trust's behavior.

---

## 🎯 Understanding Gambit Components

Every gambit has 6 parts:

### 1. 🎯 **Target** - Who to perform the action on
- **SELF**: The trust itself
- **PARTY**: Any party member who needs help
- **TARGET**: The enemy being fought
- **MASTER**: The player who summoned the trust
- **TANK**: The party's main tank (person with most hate)
- **MELEE/RANGED/CASTER**: Specific role types
- **TOP_ENMITY**: Whoever the enemy is focused on

### 2. ❓ **Condition** - When to trigger this action
- **HPP_LT 50**: When HP is **Less Than** 50%
- **HPP_GTE 75**: When HP is **Greater Than or Equal** to 75%
- **MPP_LT 25**: When MP is below 25%
- **TP_GTE 1000**: When TP reaches 1000+
- **STATUS**: When target HAS a specific status (Poison, Paralysis, etc.)
- **NOT_STATUS**: When target DOESN'T have a status (no Haste, no Protect, etc.)
- **ALWAYS**: Do this whenever possible
- **MB_AVAILABLE**: When a Magic Burst opportunity exists
- **CASTING_MA**: When enemy is casting magic
- **READYING_WS**: When enemy is using a weaponskill

### 3. 💭 **Condition Arg** - The specific value/threshold
- For HP/MP/TP: A number (25, 50, 75, 1000, etc.)
- For STATUS: An effect name (xi.effect.POISON, xi.effect.HASTE)
- For flags: Special flags (xi.effectFlag.ERASABLE)
- Often "0" for conditions that don't need a value

### 4. ⚡ **Reaction** - What type of action to take
- **MA**: Cast a magic spell (Cure, Haste, Fire, etc.)
- **JA**: Use a job ability (Provoke, Sentinel, Berserk, etc.)
- **WS**: Use a weaponskill
- **RATTACK**: Perform a ranged attack

### 5. 🔧 **Selector** - How to choose the specific action
- **HIGHEST**: Use the highest tier available (Cure V > Cure IV > etc.)
- **SPECIFIC**: Use this exact spell/ability
- **MB_ELEMENT**: Auto-pick the right element for Magic Burst
- **BEST_AGAINST_TARGET**: Pick the element the enemy is weak to
- **RANDOM**: Choose randomly

### 6. 📝 **Selector Arg** - The exact spell/ability to use
- For spells: `xi.magic.spell.CURE` or `xi.magic.spellFamily.CURE`
- For abilities: `xi.ja.PROVOKE` or `xi.ja.SENTINEL`
- For weaponskills: Usually "0" (auto-selects)

---

## 📖 Gambit Categories Explained

### 🏥 **Healing Categories**

#### Healing - Emergency (6 patterns)
Critical healing for near-death situations (HP < 25-33%).

**Example**: "Emergency Cure Self (HP < 25%)"
- Saves the trust's life when critically wounded
- High priority - should be at the top of your gambit list

#### Healing - Standard (6 patterns)
Normal healing for moderate damage (HP < 50-75%).

**Example**: "Party Cure (HP < 75%)"
- Keeps the party healthy during combat
- Most common healing gambits

#### Healing - Status Removal (12 patterns)
Removes bad status effects like Poison, Paralysis, Silence.

**Example**: "Remove Paralysis"
- Casts Paralyna on paralyzed party members
- Essential for healers (WHM, RDM, SCH)

#### Healing - Tank Priority (9 patterns)
Prioritizes healing/cleansing the tank.

**Example**: "Remove Poison (Tank)"
- Takes care of the person holding aggro
- Critical for keeping the tank alive

#### Healing - Resurrection (1 pattern)
Raises dead party members.

**Example**: "Raise Dead Party"
- Uses Raise spells to revive fallen allies

#### Healing - Job Abilities (3 patterns)
Non-magic healing like Chakra, Curing Waltz.

**Example**: "Curing Waltz (HP < 50%)"
- Dancer ability that heals without using MP

---

### ⚔️ **Combat Categories**

#### Combat - Weapon Skills (4 patterns)
Controls when to use weaponskills for damage.

**Example**: "WS at 1000 TP"
- Uses a weaponskill as soon as 1000 TP is reached
- Adjust the TP value (1000/1250/1500/2000) based on job

#### Combat - TP Building (1 pattern)
Helps build TP faster.

**Example**: "Meditate (TP < 1000)"
- Samurai ability to quickly gain TP

#### Combat - Ranged Attacks (2 patterns)
For Rangers and Corsairs using ranged attacks.

**Example**: "Ranged Attack (Always)"
- Continuously shoots with bow/gun

#### Combat - Job Abilities (3 patterns)
Dragoon jumps and similar combat abilities.

**Example**: "Jump (Always)"
- Uses Jump whenever it's available

---

### 🛡️ **Tank Categories**

#### Tank - Hate Management (5 patterns)
Controls enemy aggro/hate.

**Example**: "Provoke (No Top Hate)"
- Uses Provoke to take aggro when not already tanking
- Essential for Paladin, Warrior, Ninja tanks

#### Tank - Defensive Abilities (5 patterns)
Defensive cooldowns to survive big hits.

**Example**: "Sentinel (HP < 33%)"
- Activates defensive stance when low on HP
- Reduces damage taken

---

### ⚡ **Buff Categories**

#### Offensive Buffs - Self (15 patterns)
Attack/accuracy/damage boosting abilities.

**Example**: "Berserk (Not Active)"
- Keeps Berserk active for bonus attack
- Common for Warriors, Dark Knights

#### Offensive Buffs - Ranged (3 patterns)
Buffs for ranged attackers.

**Example**: "Sharpshot (Not Active)"
- Ranger accuracy buff

#### Support Buffs - Party Protection (6 patterns)
Protect and Shell for the party.

**Example**: "Protect Party"
- Casts Protect on anyone who doesn't have it

#### Support Buffs - Haste (4 patterns)
Speeds up attack speed and casting.

**Example**: "Haste Party"
- Keeps Haste on all party members

#### Support Buffs - Regen/Refresh/Phalanx (6 patterns)
HP regeneration, MP regeneration, damage reduction.

**Example**: "Refresh Tank"
- Gives MP regen to the tank for spell spam

#### Support Buffs - Defensive (2 patterns)
Stoneskin, Utsusemi shadows.

**Example**: "Utsusemi Self"
- Keeps shadows active on ninja-type trusts

#### Support Buffs - Enspells (3 patterns)
Adds elemental damage to attacks.

**Example**: "Enlight Self"
- Paladins add light element to their attacks

---

### 🎵 **Job-Specific Categories**

#### Bard Songs (4 patterns)
Ballad (MP), Minuet (ATK), Madrigal (ACC), March (Haste).

**Example**: "Ballad Self"
- Keeps MP regeneration song active

#### Corsair Rolls (2 patterns)
Chaos Roll (ATK), Corsair's Roll (EXP).

**Example**: "Chaos Roll"
- Buffs party's attack power

#### Dancer Abilities (6 patterns)
Sambas, Steps, Flourishes, Waltzes.

**Example**: "Best Samba (No Samba)"
- Automatically picks the best Samba for the situation

#### Geomancer Abilities (3 patterns)
Indi bubbles and Entrust.

**Example**: "Best Indi Buff"
- Casts the most useful Indi spell

#### Scholar Abilities (3 patterns)
Dark Arts, Storm spells.

**Example**: "Dark Arts (Not Active)"
- Activates black magic enhancement mode

#### White Mage Abilities (2 patterns)
Afflatus Solace, Divine Emblem.

**Example**: "Afflatus Solace"
- Boosts healing power

---

### 🔮 **Magic Categories**

#### Offensive Magic - Nukes (4 patterns)
Elemental damage spells and Magic Bursts.

**Example**: "Magic Burst"
- Casts the right element to magic burst during a skillchain
- **HUGE damage bonus!**

#### Offensive Magic - Debuffs (8 patterns)
Slow, Paralyze, Blind, Silence, Dispel, etc.

**Example**: "Slow Enemy"
- Makes the enemy attack slower
- Very useful for dangerous enemies

---

### 🛡️ **Interrupt Categories**

#### Interrupts - Stun (4 patterns)
Stops enemy casting/abilities with Stun.

**Example**: "Stun Casting"
- Interrupts enemy magic
- Critical for high-level content

#### Interrupts - Violent Flourish (4 patterns)
Dancer version of stunning.

**Example**: "Flourish Weaponskill"
- Stuns when enemy uses WS

---

### 🎯 **Situational Categories**

#### Situational - Enemy Type (2 patterns)
Special abilities vs specific monster types.

**Example**: "Holy Circle (vs Undead)"
- Boosts damage against undead enemies

#### Situational - MP Management (3 patterns)
Convert, Chivalry for emergency MP.

**Example**: "Convert (MP < 25%)"
- Swaps HP for MP when desperate
- Red Mage emergency ability

#### Situational - Misc (3 patterns)
Despoil (THF steal), Yonin (NIN enmity), Retaliation.

---

## 💡 Tips for Building Good Gambit Lists

### 1. **Order Matters!**
Gambits are checked from top to bottom. Put the most important ones first:

```
✅ GOOD ORDER:
1. Emergency Cure Self (HP < 25%)        ← Life-saving priority
2. Remove Paralysis (Party)              ← Can't act if paralyzed
3. Party Cure (HP < 75%)                 ← Normal healing
4. Haste Party                           ← Buffs when safe

❌ BAD ORDER:
1. Haste Party                           ← Will try to buff even when dying!
2. Party Cure (HP < 75%)
3. Emergency Cure Self (HP < 25%)
4. Remove Paralysis (Party)
```

### 2. **Use Appropriate HP Thresholds**
- **Emergency healing**: 25-33% HP
- **Standard healing**: 50-75% HP
- **Defensive abilities**: 30-50% HP

### 3. **Don't Over-Buff**
Too many buff gambits will make your trust spend all its time buffing instead of fighting/healing. Pick the most important 3-5 buffs.

### 4. **Match Gambits to Job Role**
- **Tanks**: Provoke, Flash, defensive abilities, hate management
- **Healers**: Cure, status removal, party buffs
- **Damage Dealers**: Weaponskills, offensive buffs, Berserk
- **Support**: Haste, Refresh, songs, rolls

### 5. **Test Your Gambits**
Save your trust and test it in-game. Watch what it does and adjust as needed.

---

## 🔍 Quick Reference: Common Gambit Combos

### For Healers (WHM/SCH/RDM)
```
1. Emergency Cure Self (HP < 25%)
2. Emergency Party Cure (HP < 25%)
3. Remove Paralysis (Party)
4. Remove Silence (Party)
5. Remove Poison (Party)
6. Party Cure (HP < 75%)
7. Erase Debuffs (Party)
8. Protect Party
9. Shell Party
10. Haste Party
```

### For Tanks (PLD/RUN)
```
1. Provoke (No Top Hate)
2. Flash (Enemy No Flash)
3. Emergency Cure Self (HP < 25%)
4. Sentinel (HP < 33%)
5. Self Phalanx
6. Protect Self
7. Shell Self
```

### For Melee DPS (WAR/SAM/DRK/MNK)
```
1. Emergency Cure Self (HP < 25%)          ← If has Cure spells
2. Berserk (Not Active)
3. Hasso (Not Active)                      ← SAM only
4. WS at 1000 TP                          ← Adjust based on job
```

### For Mages (BLM/GEO)
```
1. Emergency Cure Self (HP < 25%)
2. Magic Burst                             ← IMPORTANT!
3. Nuke Best Element
4. Convert (MP < 25%)                      ← BLM/RDM only
```

### For Support (BRD/COR/DNC)
```
1. Emergency Cure Self (HP < 25%)
2. Best Samba (No Samba)                   ← DNC only
3. Ballad Self                             ← BRD only
4. Minuet Self                             ← BRD only
5. Chaos Roll                              ← COR only
6. Curing Waltz (HP < 50%)                 ← DNC only
```

---

## 🚀 Advanced: Creating Custom Gambits

If you can't find the exact gambit you need in the library, you can create a custom one:

1. Click **"Add Gambit"** (not from the palette)
2. Select each component from the dropdowns
3. Fill in the argument values
4. Click the **⚡ Dynamic** button if using Lua expressions

**Example Custom Gambit:**
- Target: PARTY
- Condition: HPP_LT
- Cond Arg: 60
- Reaction: MA
- Selector: HIGHEST
- Sel Arg: xi.magic.spellFamily.CURE

This creates: "Heal party member when below 60% HP"

---

## 📊 Understanding the Statistics

When you open the Gambit Palette, you'll see:
- **Total gambits**: 201 patterns available
- **Categories**: 38 organized categories
- **Search results**: Shows how many match your search

This covers **every single gambit pattern** used in all existing FFXI trusts!

---

## ❓ Frequently Asked Questions

**Q: How many gambits should I add?**
A: 5-15 is typical. More than 20 can be overwhelming and slow.

**Q: What if multiple gambits can trigger at once?**
A: The FIRST matching gambit (from top to bottom) will execute.

**Q: Can I have the same gambit twice?**
A: Yes, but usually unnecessary. The trust will keep trying it.

**Q: What does "⚡ Dynamic" mean?**
A: It allows Lua code in the arguments (advanced users only).

**Q: My trust isn't using a gambit. Why?**
A: Check:
- Is it high enough priority (near the top)?
- Does the trust have the spell/ability?
- Is the condition actually being met?

**Q: Can I copy gambits from other trusts?**
A: Yes! Load a trust, look at its gambits, and add similar ones to yours.

---

## 🎓 Learning by Example

### Example 1: Simple Healer Trust (WHM)
```
Job: WHM/SCH
Auto-Attack: OFF

Gambits:
1. Emergency Cure Self (HP < 25%)
2. Emergency Party Cure (HP < 25%)
3. Remove Paralysis (Party)
4. Remove Silence (Party)
5. Party Cure (HP < 75%)
6. Erase Debuffs (Party)
7. Haste Party
8. Raise Dead Party
```

**Why this works:**
- Prioritizes emergency healing
- Removes dangerous debuffs
- Normal healing
- Buffs when safe
- Raises dead allies

### Example 2: Tank Trust (PLD)
```
Job: PLD/WAR
Auto-Attack: ON

Gambits:
1. Provoke (No Top Hate)
2. Flash (Enemy No Flash)
3. Emergency Cure Self (HP < 25%)
4. Sentinel (HP < 33%)
5. Self Phalanx
6. Party Cure (HP < 50%)

TP Settings:
- Trigger: CLOSER_UNTIL_TP
- Select: HIGHEST
- Value: 2000
```

**Why this works:**
- Maintains aggro with Provoke/Flash
- Survives with emergency heal + Sentinel
- Phalanx reduces damage
- Helps party with healing
- Uses WS at high TP for damage

### Example 3: Damage Dealer (SAM)
```
Job: SAM/WAR
Auto-Attack: ON

Gambits:
1. Hasso (Not Active)
2. Meditate (TP < 1000)
3. Berserk (Not Active)

TP Settings:
- Trigger: CLOSER_UNTIL_TP
- Select: HIGHEST
- Value: 1500
```

**Why this works:**
- Minimal gambits = more focus on attacking
- Hasso + Berserk = massive damage
- Meditate gets TP fast
- High TP before WS = more damage

---

## 🏆 Best Practices Summary

1. **Emergency healing ALWAYS goes first**
2. **Status removal before normal healing**
3. **Match gambits to the trust's job**
4. **Test in-game and adjust**
5. **Fewer, well-chosen gambits > many random ones**
6. **Use the search function** - don't scroll through all 201!
7. **Read the plain-English explanation** for each gambit
8. **Order matters** - most important first

---

## 📞 Need Help?

If you're stuck:
1. Use the **Search** in the Gambit Palette
2. Check the **plain-English explanation** for each gambit
3. Look at existing trust `.lua` files for inspiration
4. Start simple and add complexity gradually

---

**Happy Trust Building! 🎮✨**

Your trusts will now be smarter, more responsive, and better at their jobs!
