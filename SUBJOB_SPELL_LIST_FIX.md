# SubJob Spell List Selection Fix

**Status**: ✅ FIXED - SubJob spell lists now automatically selected

## The Problem

When creating a trust with a subjob (e.g., WHM/RDM), the template applier was only selecting the main job's spell list (WHM = 578) instead of the combined job list (WHM_RDM = 653).

**Before Fix:**
- WHM/RDM trust → Gets only WHM spells (270 spells)
- BLM/BLU trust → Gets only BLM spells (291 spells)

**After Fix:**
- WHM/RDM trust → Gets WHM_RDM spells (350+ spells)
- BLM/BLU trust → Gets BLM_BLU spells (402 spells)

## The Solution

Modified the `build_job_template()` method in `trust_editor.py` (line 9136) to:

1. **Check for combination spell lists first**
   - When subjob is set (not NONE), look for combo list by name
   - Example: For WHM/RDM, search MOB_SPELL_LISTS for "WHM_RDM"
   - If found, use that list ID (653)

2. **Fall back to main job only**
   - If no combo list exists, use main job spell list
   - Example: RUN/RNG (if no combo) → Use RUN (575)

3. **Prioritize in this order:**
   - Combo list (if subjob set and combo exists)
   - Main job list (always available)

## Code Changes

**File**: `scripts/actions/spells/trust/trust_editor.py`
**Method**: `build_job_template()` (lines 9160-9184)

### Before
```python
# No spell list selection based on subjob
base_template["main_job"] = main_job
base_template["sub_job"] = sub_job or "NONE"
return base_template
```

### After (with reverse combo support)
```python
base_template["main_job"] = main_job
base_template["sub_job"] = sub_job or "NONE"

# Auto-select spell list based on job combination
# Try job combination list first (e.g., WHM_RDM = 653), then fall back to main job only
spell_list_id = None
if sub_job and sub_job != "NONE":
    # Try both orderings: main_sub and sub_main
    # Example: BLU/BLM would check BLU_BLM first, then BLM_BLU
    combo_keys = [f"{main_job}_{sub_job}", f"{sub_job}_{main_job}"]

    # Look for combination spell list in MOB_SPELL_LISTS by name
    for combo_key in combo_keys:
        for list_id, list_data in MOB_SPELL_LISTS.items():
            if list_data.get("name") == combo_key:
                spell_list_id = list_id
                break
        if spell_list_id:  # Exit outer loop if found
            break

# If no combo list found or no sub job, use main job spell list
if not spell_list_id and main_job in JOB_SPELL_LISTS:
    spell_list_id = JOB_SPELL_LISTS[main_job]

if spell_list_id:
    base_template["spell_list"] = spell_list_id

return base_template
```

## Reverse Combo Support

**Important**: The code now checks BOTH job orderings!

Example: Database has `BLM_BLU` (ID 579) but NOT `BLU_BLM`

**Old Behavior:**
- BLM/BLU → Finds BLM_BLU ✓
- BLU/BLM → Not found, fallbacks to BLU only ✗

**New Behavior:**
- BLM/BLU → Finds BLM_BLU ✓
- BLU/BLM → Checks BLU_BLM (not found), then checks BLM_BLU (FOUND) ✓

Both job orderings now work with a single database entry!

### Lookup Priority
```
For BLU/BLM trust:
1. Check for "BLU_BLM" → Not found
2. Check for "BLM_BLU" → FOUND! Use ID 579
3. Return ID 579 (same as BLM/BLU)
```

### Advantages
- ✅ No duplicate lists needed in database
- ✅ One BLM_BLU list serves both BLM/BLU and BLU/BLM trusts
- ✅ Future-proof: if RDM_BLU is added later, RDM/BLU will find it
- ✅ Flexible: whichever order exists in database will be found

## How It Works

### Scenario 1: WHM/RDM Trust
```
1. User applies WHM/RDM template
2. build_job_template("WHM", "RDM") called
3. Creates combo_key = "WHM_RDM"
4. Searches MOB_SPELL_LISTS for name == "WHM_RDM"
5. Finds list ID 653
6. Sets base_template["spell_list"] = 653
7. WHM_RDM combo list applied (350+ spells)
```

### Scenario 2: RUN (no subjob)
```
1. User applies RUN template with no subjob
2. build_job_template("RUN", "NONE") called
3. sub_job == "NONE", skip combo lookup
4. Use main job: JOB_SPELL_LISTS["RUN"] = 575
5. Sets base_template["spell_list"] = 575
6. RUN main job list applied (109 spells)
```

### Scenario 3: RUN/RNG (no combo list)
```
1. User applies RUN/RNG template
2. build_job_template("RUN", "RNG") called
3. Searches for "RUN_RNG" in MOB_SPELL_LISTS
4. Not found (no combo list for this pair)
5. Falls back to main job: JOB_SPELL_LISTS["RUN"] = 575
6. Sets base_template["spell_list"] = 575
7. RUN main job list applied (109 spells)
```

## Available Combinations

All 78 job combinations are now available:

**Largest Combinations (350+ spells):**
- WHM_RDM (653) = 350 spells
- WHM_BLM (645) = 402 spells
- BLM_BLU (579) = 402 spells
- WHM_BRD (647) = 387 spells
- WHM_BLU (646) = 380 spells

**All 78 combinations available:**
- See `spell_list_id_mapping.txt` for complete reference

## Testing

The fix has been verified with:
- ✅ Python syntax validation
- ✅ Logic testing for all three scenarios
- ✅ Combination list lookup verification
- ✅ Fallback behavior testing

## Example: Creating a WHM/RDM Trust

1. Open trust_editor.py
2. Set Main Job: WHM
3. Set Sub Job: RDM
4. Click "Apply Job Template"
5. **Result**: Spell list automatically set to 653 (WHM_RDM)
   - Previous: Would have been 578 (WHM only)
   - Now: Combined 350+ spells from both jobs

## Spell List IDs for Reference

### Main Job Lists (Single Job):
```
WHM (578) - 270 spells
BLM (566) - 291 spells
BRD (568) - 205 spells
SMN (577) - 130 spells
BLU (567) - 220 spells
NIN (572) - 152 spells
+ Other single job lists (109+ spells each)
```

### Combo List Examples:
```
WHM_RDM (653)  - 350 spells
WHM_BLM (645)  - 402 spells
BLM_BLU (579)  - 402 spells
WHM_BRD (647)  - 387 spells
etc. (76 more combinations)
```

## Backward Compatibility

- ✅ Existing WHM-only trusts continue to work
- ✅ Single job templates unaffected
- ✅ No breaking changes
- ✅ Graceful fallback if combo doesn't exist

## Deployment

1. Deploy updated `trust_editor.py`
2. Create new WHM/RDM trust to test
3. Verify spell list shows ID 653 (or appropriate combo)
4. Test spell casting with combined spellbook

## Future Enhancement

Could expand to:
- Add UI dropdown to manually select combo lists
- Display spell count for selected combo
- Show which spells come from main vs sub job
