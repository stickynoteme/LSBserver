# Spell Lists for Trust Editor

## Overview

This document describes the new comprehensive spell list system for `trust_editor.py`. The spell lists are automatically generated and provide complete spell catalogs for each job individually and for all possible job combinations (main job + sub job).

## File Structure

### Generated Files

1. **`job_spell_lists.py`** (Source)
   - Contains the generation script `generate_job_spell_lists.py` that creates spell lists
   - Generated spell lists are embedded directly in `trust_editor.py`
   - Run this script if you need to regenerate lists (e.g., after adding new spells)

### Integration

The new spell lists have been integrated into `trust_editor.py` as follows:

- **Single-job spell lists** (lines 215-1853): `XXX_SPELLS` variables
  - `WHM_SPELLS`, `BLM_SPELLS`, `BRD_SPELLS`, `SMN_SPELLS`, `BLU_SPELLS`, `NIN_SPELLS`, `RUN_SPELLS`, `GEO_SPELLS`, `DRK_SPELLS`, `PLD_SPELLS`, `RDM_SPELLS`, `SCH_SPELLS`, `BST_SPELLS`

- **Job combination spell lists** (lines 1854+): `XXX_YYY_SPELLS` variables
  - All combinations like `WHM_RDM_SPELLS`, `WHM_BLM_SPELLS`, `WHM_BRD_SPELLS`, etc.
  - 78 total combinations for complete coverage

- **Master dictionary** (line 1854+): `SPELL_LISTS_BY_JOB`
  - Easy lookup by job name: `SPELL_LISTS_BY_JOB['WHM']` → list of spell IDs
  - Easy lookup by combination: `SPELL_LISTS_BY_JOB['WHM_RDM']` → combined spell list

## Spell List Contents

### Single-Job Lists

Each job's spell list contains:
- **Trust spells** (all jobs): IDs 896-1019 (includes all trust summoning spells)
- **Primary job spells**: Unique spells from that job's spell directory

#### Spell Counts
- **WHM**: 270 spells (Cure, Heal, Protect, Shell, Dia, Banish, etc.)
- **BLM**: 291 spells (Fire, Blizzard, Thunder, Water, Aero, Stone, Aspir, etc.)
- **BRD**: 205 spells (Healing songs, buff songs, debuff songs)
- **SMN**: 130 spells (Avatar summons and related spells)
- **BLU**: 220 spells (Blue mage spellset)
- **NIN**: 152 spells (Ninjutsu, evasion spells)
- **RDM**: 109 spells (Dual-casting job spells + trust)
- **GEO**: 109 spells (Geomancer spells + trust)
- **DRK**: 109 spells (Dark magic + trust)
- **PLD**: 109 spells (Paladin support + trust)
- **RUN**: 109 spells (Rune magic + trust)
- **SCH**: 109 spells (Scholar spells + trust)
- **BST**: 109 spells (Beastmaster spells + trust)

### Job Combination Lists

Each combination includes the union of both jobs' spell lists. For example:
- `WHM_RDM_SPELLS` = `WHM_SPELLS` ∪ `RDM_SPELLS`
- `WHM_BLM_SPELLS` = `WHM_SPELLS` ∪ `BLM_SPELLS`

This allows trusts to have access to spells from both their main and sub job.

## Usage

### How It Works

The spell lists are organized by spell type directory in the filesystem:

```
scripts/actions/spells/
├── white/           → WHM spells
├── black/           → BLM spells
├── songs/           → BRD spells
├── ninjutsu/        → NIN spells
├── summoning/       → SMN spells
├── geomancy/        → GEO spells
├── blue/            → BLU spells
└── trust/           → Trust spells (all jobs)
```

The generation script:
1. Scans all spell `.lua` files in each directory
2. Matches spell names to spell IDs from `magic.lua` enum
3. Creates Python lists for each job and combination
4. Generates a master dictionary for easy lookup

### For Trust Designers

When creating custom trust configurations:

1. **Use the existing mob_spell_lists** (legacy):
   - Set spell list ID using the Spell List Manager UI
   - Uses predefined Beastmen and other NPC spell lists

2. **Use the new spell lists** (recommended):
   - Create custom SQL entries in `mob_spell_lists.sql` that reference the new `SPELL_LISTS_BY_JOB` values
   - Or write Python code to extract spell IDs: `SPELL_LISTS_BY_JOB['WHM_RDM']`

### Example: Creating a Custom Trust

```python
# Get WHM + RDM spell combination
spells_available = SPELL_LISTS_BY_JOB['WHM_RDM']

# Use in gambit validation:
# When a trust has main=WHM, sub=RDM, it can use spells from WHM_RDM_SPELLS

# In gambits, spell selectors like "HIGHEST" will work with spells from this list
```

## Regenerating Spell Lists

If you add new spells to the system:

```bash
cd /Volumes/NVMe/git/LSBserver/scripts/actions/spells/trust
python3 generate_job_spell_lists.py
```

Then:
1. Copy the output from `job_spell_lists.py`
2. Replace the spell list sections in `trust_editor.py` (lines 215-1853 and SPELL_LISTS_BY_JOB)
3. Or use the provided insertion script:

```bash
python3 generate_job_spell_lists.py  # Generates job_spell_lists.py
python3 insert_spell_lists_into_trust_editor.py  # Automatically updates trust_editor.py
```

## Legacy Support

The existing `JOB_SPELL_LISTS` dictionary (mapping job names to mob_spell_list IDs) is preserved:

```python
JOB_SPELL_LISTS = {
    "WHM": 1,  # Beastmen_WHM (from mob_spell_lists.sql)
    "BLM": 2,  # Beastmen_BLM
    # ... etc
}
```

This maintains backward compatibility with existing trust configurations that reference mob_spell_lists.sql entries.

## Advantages of the New System

1. **Complete Coverage**: Every job and job combination has a defined spell list
2. **Human Trust Builds**: Unlike NPC lists which are limited, these are comprehensive
3. **Easy Customization**: Spell lists are simple Python lists, easy to modify
4. **Consistency**: All jobs have similar structure and coverage
5. **Future-Proof**: Auto-generated from filesystem, automatically includes new spells

## Technical Details

### Binary Format

Spells are stored as integer IDs matching the `xi.magic.spell` enum in `magic.lua`:
- Healing spells: 1-100 range
- Black magic: 140+ range
- Blue magic: 500+ range
- Geomancy: 600+ range
- Ninjutsu: 300+ range
- Songs: 360+ range
- Trust: 890+ range

### Data Sources

- **Spell IDs**: `scripts/enum/magic.lua` (xi.magic.spell)
- **Job IDs**: `scripts/enum/job.lua` (xi.job)
- **Spell Files**: `scripts/actions/spells/` directory structure
- **Legacy Lists**: `sql/mob_spell_lists.sql` (for backward compatibility)

## Notes

- Trust spells (IDs 890-1019) are included in all job lists since all jobs can use trusts
- The lists are alphabetically ordered for consistency
- Some jobs (like BST, DRK, PLD, RUN, SCH) only have trust spells in their base lists - add primary spells from other sources as needed
- GEO, RUN, SCH, and BST have minimal non-trust spells; this reflects current spell directory contents

## Future Enhancements

- Add support for Job Point gift spells automatically
- Create separate lists for subjob-only spells
- Auto-generate SQL INSERT statements for mob_spell_lists
- Create role-based spell lists (Healer, DPS, Tank, Support)
