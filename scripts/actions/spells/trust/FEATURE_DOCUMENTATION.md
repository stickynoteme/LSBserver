# Trust Editor - New Features Documentation

## Overview
The Trust Editor has been enhanced with default configurations and new UI buttons to improve user experience.

## Changes Made

### 1. Default Configurations (sys/defaults/)
- Created `sys/defaults/` folder containing 120 JSON files
- Each JSON file represents the default configuration for a trust Lua file
- Defaults are automatically parsed from existing trust Lua files
- Includes gambits, mods, auto-attack settings, TP settings, and more

### 2. Loading Behavior
**Previous behavior:**
- When selecting a trust, only user data was loaded (if it existed)
- If no user data existed, the form was blank

**New behavior:**
- When selecting a trust:
  1. First tries to load user data from `userdata/[trust].json`
  2. If no user data exists, loads from `sys/defaults/[trust].json`
  3. If neither exists, starts with a blank form

This provides users with sensible defaults as starting points for customization.

### 3. New UI Buttons

#### Button Layout (Top Right of Window)
```
[Restore to Default] [Clear All] [Save Trust]
```

#### "Restore to Default" Button
**Purpose:** Restores the currently selected trust to its default configuration from `sys/defaults/`

**Behavior:**
1. User clicks "Restore to Default"
2. Shows confirmation dialog: "This will restore [trust] to its default configuration. Any unsaved changes will be lost. Continue?"
3. If user confirms:
   - Loads the default JSON from `sys/defaults/[trust].json`
   - Resets the form and populates with default data
   - Shows success message: "[trust] has been restored to default configuration."
4. If no default exists, shows warning: "No default configuration found for [trust]."

**Use Cases:**
- User made changes but wants to start over with the original defaults
- User wants to see what the default configuration looks like
- User accidentally saved incorrect data and wants to revert

#### "Clear All" Button
**Purpose:** Clears all values to create a completely blank trust configuration

**Behavior:**
1. User clicks "Clear All"
2. Shows confirmation dialog: "This will clear all values for [trust]. Any unsaved changes will be lost. Continue?"
3. If user confirms:
   - Resets all form fields to their empty/default state
   - Auto-attack: True (default)
   - All other fields: empty
   - Shows success message: "All values for [trust] have been cleared."

**Use Cases:**
- User wants to create a custom trust from scratch
- User wants a completely clean slate
- User wants to remove all configurations

### 4. Example Workflow

#### Scenario 1: New User Customizing Curilla
1. User opens Trust Editor
2. Selects "curilla.lua" from dropdown
3. Editor automatically loads default configuration:
   - 3 gambits (Sentinel, Flash, Cure)
   - Auto-attack enabled
   - No custom mods
4. User modifies gambits or adds gear
5. Clicks "Save Trust" to save their customizations

#### Scenario 2: User Wants to Reset
1. User has heavily modified "shantotto.lua"
2. User wants to go back to defaults
3. Clicks "Restore to Default"
4. Confirms the action
5. Form is reset to original Shantotto configuration:
   - Auto-attack: False (caster)
   - Magic burst gambit
   - Haste magic mod

#### Scenario 3: Creating Custom Trust
1. User selects "moogle.lua"
2. Defaults load (if available)
3. User clicks "Clear All" to start fresh
4. Confirms the action
5. All fields are now empty
6. User builds custom configuration from scratch

## Technical Details

### File Structure
```
scripts/actions/spells/trust/
├── trust_editor.py          # Main editor application
├── generate_defaults.py     # Script to generate defaults from Lua files
├── sys/
│   └── defaults/            # Default configurations
│       ├── curilla.json
│       ├── shantotto.json
│       ├── ayame.json
│       └── ... (120 total)
└── userdata/                # User customizations (gitignored)
    ├── curilla.json
    └── ...
```

### Default JSON Structure
```json
{
  "auto_attack": true,
  "mods": [
    {"name": "HASTE_MAGIC", "value": "1000"}
  ],
  "gambits": [
    {
      "target": "TARGET",
      "condition": "MB_AVAILABLE",
      "cond_arg": "0",
      "reaction": "MA",
      "selector": "MB_ELEMENT",
      "sel_arg": "xi.magic.spellFamily.NONE"
    }
  ],
  "tp_settings": {},
  "effects": [],
  "listeners": [],
  "custom_code": "",
  "main_job": "",
  "sub_job": "NONE",
  "gear": []
}
```

### Code Changes Summary

#### Constants Added (trust_editor.py)
```python
DEFAULTS_DIR = os.path.join(SYS_DIR, "defaults")
```

#### Modified Methods
- `on_trust_selected()`: Now checks for defaults after user data

#### New Methods
- `restore_to_default()`: Loads default configuration for current trust
- `clear_all()`: Resets form to blank state

#### UI Changes
```python
# Added two new buttons before "Save Trust"
ttk.Button(top_frame, text="Restore to Default", command=self.restore_to_default)
ttk.Button(top_frame, text="Clear All", command=self.clear_all)
ttk.Button(top_frame, text="Save Trust", command=self.save_trust)
```

## Benefits

1. **Better UX**: Users see working defaults immediately instead of blank forms
2. **Learning Tool**: Defaults serve as examples of proper trust configurations
3. **Easy Reset**: Users can easily restore or clear configurations
4. **Safety**: Defaults are preserved even if users make mistakes
5. **Consistency**: All trusts have standardized default structures

## Testing

All functionality has been verified:
- ✅ Defaults load when no user file exists
- ✅ User files take precedence over defaults
- ✅ Restore to default works correctly
- ✅ Clear all works correctly
- ✅ All 120 trust defaults exist and are valid
