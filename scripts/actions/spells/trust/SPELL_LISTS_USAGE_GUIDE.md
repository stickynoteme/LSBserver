# Spell Lists Usage Guide

## Quick Start

### Access Single-Job Spell Lists

```python
from trust_editor import WHM_SPELLS, BLM_SPELLS, BRD_SPELLS, ...

# Get a specific job's spells
whm_spells = WHM_SPELLS  # Returns list of spell IDs
print(f"WHM has {len(whm_spells)} spells")  # Output: WHM has 270 spells
```

### Access Job Combinations

```python
from trust_editor import WHM_RDM_SPELLS, WHM_BLM_SPELLS, ...

# Get combined spell list for main job + sub job
combined = WHM_RDM_SPELLS  # WHM + RDM spells union
print(f"WHM/RDM has {len(combined)} spells")
```

### Use Master Dictionary

```python
from trust_editor import SPELL_LISTS_BY_JOB

# Dynamic lookup by job name
job = "WHM"
spells = SPELL_LISTS_BY_JOB[job]

# Dynamic lookup by combination
main_job = "WHM"
sub_job = "RDM"
key = f"{main_job}_{sub_job}"
spells = SPELL_LISTS_BY_JOB[key]

# List all available combinations
for key in SPELL_LISTS_BY_JOB:
    print(key)  # Output: WHM, BLM, RDM, ..., WHM_RDM, WHM_BLM, ...
```

## Common Use Cases

### 1. Validate Gambit Spell Selection

```python
def is_valid_spell_for_job(spell_id, main_job, sub_job=None):
    """Check if a spell is available for a job combination."""
    if sub_job:
        key = f"{main_job}_{sub_job}"
        spells = SPELL_LISTS_BY_JOB.get(key, [])
    else:
        spells = SPELL_LISTS_BY_JOB.get(main_job, [])

    return spell_id in spells

# Usage
if is_valid_spell_for_job(1, "WHM", "RDM"):  # Cure for WHM/RDM
    print("✓ Spell is valid")
else:
    print("✗ Spell not available")
```

### 2. Generate Spell List Suggestions

```python
def get_spell_names_for_job(main_job, sub_job=None):
    """Get readable spell names for a job combination."""
    if sub_job:
        key = f"{main_job}_{sub_job}"
        spell_ids = SPELL_LISTS_BY_JOB.get(key, [])
    else:
        spell_ids = SPELL_LISTS_BY_JOB.get(main_job, [])

    # Map spell IDs to names from SPELL_NAMES (already available in trust_editor)
    spell_list = [
        (spell_id, SPELL_NAMES.get(spell_id, f"Unknown Spell {spell_id}"))
        for spell_id in spell_ids
    ]
    return spell_list

# Usage
spells = get_spell_names_for_job("WHM", "RDM")
for spell_id, name in spells[:5]:
    print(f"  {spell_id}: {name}")
```

### 3. Create Custom Spell Lists

```python
def create_custom_trust_spell_list(main_job, sub_job, exclude_spells=None):
    """Create a custom spell list for a trust, optionally excluding certain spells."""
    if sub_job:
        key = f"{main_job}_{sub_job}"
        spells = SPELL_LISTS_BY_JOB.get(key, [])
    else:
        spells = SPELL_LISTS_BY_JOB.get(main_job, [])

    if exclude_spells:
        spells = [s for s in spells if s not in exclude_spells]

    return spells

# Usage
spells = create_custom_trust_spell_list("WHM", "RDM", exclude_spells=[1, 2, 3])
print(f"Custom list has {len(spells)} spells")
```

### 4. Filter Spells by Category

```python
def get_healing_spells_for_job(main_job, sub_job=None):
    """Get only healing spells available to a job."""
    if sub_job:
        key = f"{main_job}_{sub_job}"
        spell_ids = SPELL_LISTS_BY_JOB.get(key, [])
    else:
        spell_ids = SPELL_LISTS_BY_JOB.get(main_job, [])

    # Filter by spell family (requires FAMILY_SPELLS or similar)
    healing_family = 1  # CURE family
    healing_spells = [s for s in spell_ids if s in FAMILY_SPELLS.get(healing_family, set())]
    return healing_spells

# Usage
healing = get_healing_spells_for_job("WHM", "RDM")
print(f"Available healing spells: {healing}")
```

### 5. Compare Job Capabilities

```python
def compare_jobs(job1, job2, sub_job1=None, sub_job2=None):
    """Compare spell capabilities between two job combinations."""
    key1 = f"{job1}_{sub_job1}" if sub_job1 else job1
    key2 = f"{job2}_{sub_job2}" if sub_job2 else job2

    spells1 = set(SPELL_LISTS_BY_JOB.get(key1, []))
    spells2 = set(SPELL_LISTS_BY_JOB.get(key2, []))

    return {
        'exclusive_to_first': spells1 - spells2,
        'exclusive_to_second': spells2 - spells1,
        'shared': spells1 & spells2,
    }

# Usage
result = compare_jobs("WHM", "BLM", None, None)
print(f"WHM only: {len(result['exclusive_to_first'])} spells")
print(f"BLM only: {len(result['exclusive_to_second'])} spells")
print(f"Both have: {len(result['shared'])} spells")
```

## Integration with Existing Code

### In Gambit Validation

The existing gambit validation code at line 7355+ can be enhanced:

```python
# Current code (line 7371-7372):
elif main_job and main_job in JOB_SPELL_LISTS:
    spell_list_id = JOB_SPELL_LISTS[main_job]

# Enhanced code (for future optimization):
elif main_job and main_job in SPELL_LISTS_BY_JOB:
    spells_available = SPELL_LISTS_BY_JOB[main_job]
    # Can now directly validate against spell ID lists instead of mob_spell_lists
```

### In Trust Configuration

When applying job templates:

```python
# Line 7206-7207 (build_job_template):
def build_job_template(self, main_job, sub_job):
    # Could add: Automatically validate template gambits against SPELL_LISTS_BY_JOB

    # Example enhancement:
    if main_job and sub_job:
        available_spells = SPELL_LISTS_BY_JOB.get(f"{main_job}_{sub_job}", [])
    elif main_job:
        available_spells = SPELL_LISTS_BY_JOB.get(main_job, [])

    # Validate each gambit spell selector...
```

## Spell List Sizes

For reference, here are the sizes of all spell lists:

### Single Job Lists
```
WHM:   270 spells
BLM:   291 spells
BRD:   205 spells
SMN:   130 spells
BLU:   220 spells
NIN:   152 spells
RDM:   109 spells (+ trust)
GEO:   109 spells (+ trust)
DRK:   109 spells (+ trust)
PLD:   109 spells (+ trust)
RUN:   109 spells (+ trust)
SCH:   109 spells (+ trust)
BST:   109 spells (+ trust)
```

### Job Combinations
The largest combinations are:
- `WHM_BLM`: 402 spells
- `WHM_BRD`: 387 spells
- `WHM_BLU`: 380 spells
- `BLM_BLU`: 402 spells
- `BRD_BLU`: 342 spells

The smallest combinations are:
- `DRK_BST`: 109 spells
- `PLD_SCH`: 109 spells
- `RUN_SCH`: 109 spells

## Tips & Best Practices

### 1. Cache Results
For frequently accessed lists, cache them:
```python
_spell_cache = {}

def get_spells_cached(key):
    if key not in _spell_cache:
        _spell_cache[key] = SPELL_LISTS_BY_JOB.get(key, [])
    return _spell_cache[key]
```

### 2. Handle Missing Jobs
Always use `.get()` with defaults:
```python
spells = SPELL_LISTS_BY_JOB.get(job_name, [])
if not spells:
    print(f"Warning: No spells found for {job_name}")
```

### 3. Performance Considerations
For large-scale validation, convert lists to sets:
```python
spell_set = set(SPELL_LISTS_BY_JOB[job_name])
if spell_id in spell_set:  # O(1) lookup
    # spell is available
```

### 4. Documentation
When creating custom lists, document which jobs they support:
```python
# Custom healing-focused spell list for WHM/SCH
CUSTOM_HEALING = [
    1, 2, 3, 4, 5,      # Cure spells
    47, 48, 49, 50, 51, # Protect/Shell spells
    # ...more spells...
]
# Supports: WHM (primary), SCH (secondary)
```

## Regenerating Lists

If new spells are added to the spell directories:

```bash
cd /Volumes/NVMe/git/LSBserver/scripts/actions/spells/trust

# Run the generator
python3 generate_job_spell_lists.py

# This creates job_spell_lists.py with updated lists
# Then integrate back into trust_editor.py using:
python3 insert_spell_lists.py
```

## Questions & Troubleshooting

### "Spell not found in SPELL_LISTS_BY_JOB"
- Check if the spell ID is valid in `magic.lua`
- Verify the spell file exists in the correct directory
- Regenerate lists if new spells were added

### "KeyError: 'JOBNAME_SUBJOB'"
- Ensure job names are in UPPERCASE
- Check spelling matches `magic.lua` job enum exactly
- Some job combinations may not be needed - handle gracefully

### "List includes unexpected spells"
- Trust spells (890-1019) are included in all jobs
- Verify the spell file is in the correct directory
- Check spell type directory associations in `generate_job_spell_lists.py`

## See Also

- `SPELL_LISTS_README.md` - Overview and technical details
- `trust_editor.py` - Main trust editing tool (lines 215-1853 for spell lists)
- `scripts/enum/magic.lua` - Spell ID definitions
- `scripts/enum/job.lua` - Job ID definitions
- `sql/mob_spell_lists.sql` - Legacy spell list data (for backward compatibility)
