# Trust Editor - Gambit System Redesign

## 🎉 What's New

The gambit editor has been completely rebuilt with **201 pre-made gambit patterns** covering every behavior seen in FFXI trusts!

## ✨ Key Features

### 1. **Comprehensive Gambit Library**
- **201 gambits** organized into **38 categories**
- Every pattern used in existing FFXI trusts
- Emoji-organized categories for easy browsing
- Covers: Healing, Combat, Tanking, Buffs, Debuffs, Job Abilities, and more

### 2. **User-Friendly Interface**
- **🔍 Search** - Find gambits quickly by typing keywords
- **📖 Browse** - Organized categories with emoji icons
- **💡 Plain-English Explanations** - No programming knowledge needed!
- **One-Click Insert** - Add gambits to your trust instantly

### 3. **Smart Organization**
Categories include:
- 🏥 Healing (Emergency, Standard, Status Removal, Tank Priority, etc.)
- ⚔️ Combat (Weapon Skills, TP Building, Ranged Attacks)
- 🛡️ Tank (Hate Management, Defensive Abilities)
- ⚡ Offensive Buffs (Self, Ranged)
- ✨ Support Buffs (Haste, Refresh, Phalanx, Protection)
- 🎵 Bard Songs
- 🎲 Corsair Rolls
- 💃 Dancer Abilities
- 🌍 Geomancer Abilities
- 🔮 Offensive Magic (Nukes, Debuffs)
- 🛡️ Interrupts (Stun, Violent Flourish)
- 🎯 Situational (Enemy Type, MP Management)

## 🚀 Quick Start

### Opening the Gambit Library
1. Open Trust Editor
2. Go to the **Gambits** tab
3. Click **"📖 Palette / Examples"**

### Using the Library
1. **Browse** categories or **Search** for keywords
2. Click any gambit to see:
   - What it does in plain English
   - When to use it
   - Technical details
3. Click **"Insert into Editor"** to add it to your trust

### Example Searches
- Search "cure" → Find all healing gambits
- Search "haste" → Find haste-related buffs
- Search "provoke" → Find tank hate management
- Search "stun" → Find interrupt gambits

## 📚 Documentation

See **[GAMBIT_GUIDE.md](./GAMBIT_GUIDE.md)** for:
- Complete explanation of how gambits work
- Detailed breakdown of all categories
- Tips for building effective gambit lists
- Common gambit combinations by job
- FAQ and troubleshooting

## 🎯 Quick Examples

### Healer Trust (WHM)
```
1. Emergency Cure Self (HP < 25%)
2. Emergency Party Cure (HP < 25%)
3. Remove Paralysis (Party)
4. Party Cure (HP < 75%)
5. Haste Party
```

### Tank Trust (PLD)
```
1. Provoke (No Top Hate)
2. Flash (Enemy No Flash)
3. Emergency Cure Self (HP < 25%)
4. Sentinel (HP < 33%)
5. Self Phalanx
```

### Damage Dealer (SAM)
```
1. Hasso (Not Active)
2. Meditate (TP < 1000)
3. Berserk (Not Active)
```

## 💡 Pro Tips

1. **Order Matters!** - Put most important gambits first
2. **Emergency healing goes at the top**
3. **Use Search** - Don't scroll through all 201!
4. **Read explanations** - They tell you exactly what each gambit does
5. **Start simple** - 5-10 gambits is usually enough

## 🔧 Technical Improvements

### For Developers
- Analyzed all 201 unique gambit patterns from existing trust Lua files
- Organized into 38 logical categories
- Added comprehensive metadata (descriptions, tooltips, examples)
- Implemented search/filter functionality
- Created plain-English explanation generator
- Enhanced UI with emoji icons and better visual hierarchy

### Code Changes
- Expanded `GAMBIT_PALETTE` dictionary from 13 to 201+ entries
- Enhanced `open_gambit_palette()` method with:
  - Search functionality
  - Dynamic tree population
  - Contextual explanations
  - Better visual layout
- Added helper function `get_friendly_explanation()` for non-technical descriptions

## 🎮 For Users

**No programming knowledge required!**

The new system explains everything in gamer-friendly terms:
- "Cast Cure on party member when HP drops below 75%"
- "Use Provoke when not holding enemy's attention"
- "Cast Magic Burst spell during skillchain"

Every gambit includes:
- Simple name ("Emergency Cure Self")
- What it does ("Saves your life when critically wounded")
- When to use it ("Below 25% HP")
- Usage hints (💊 healing, 🛡️ defensive, ⚔️ combat, etc.)

## 📊 Statistics

- **201** total gambit patterns
- **38** organized categories
- **100%** coverage of existing trust behaviors
- **0** programming knowledge required!

---

**Ready to build smarter trusts? Open the editor and click "📖 Palette / Examples"!** 🎮✨
