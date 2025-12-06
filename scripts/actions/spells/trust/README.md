# Trust Editor - Default Configurations & New Features

## What's New

The Trust Editor has been enhanced with default configurations and new UI controls to improve your workflow.

## Quick Start

1. Open `trust_editor.py`
2. Select any trust from the dropdown
3. See default configuration loaded automatically (if available)
4. Edit as needed
5. Use new buttons:
   - **"Restore to Default"** - Reset to original configuration
   - **"Clear All"** - Start with blank slate
   - **"Save Trust"** - Save your changes

## New Features

### 1. Default Configurations (120 Trusts)

All trusts now have default configurations stored in `sys/defaults/`:
- Parsed automatically from existing Lua files
- Include gambits, mods, TP settings, and more
- Serve as working examples and starting points

**Examples:**
- `curilla.json` - Tank setup with Sentinel, Flash, Cure
- `shantotto.json` - Caster with magic burst gambits
- `ayame.json` - Melee with Hasso, Third Eye, Meditate

### 2. Automatic Loading

When you select a trust:
1. First checks for your customizations in `userdata/`
2. If not found, loads defaults from `sys/defaults/`
3. If neither exists, shows blank form

### 3. New Buttons

#### Restore to Default
- Reloads the trust from `sys/defaults/[trust].json`
- Undoes all customizations
- Shows confirmation before restoring

#### Clear All
- Clears all form fields
- Provides blank slate for custom builds
- Shows confirmation before clearing

## File Structure

```
scripts/actions/spells/trust/
├── trust_editor.py          # Main editor (launch this)
├── generate_defaults.py     # Regenerate defaults if needed
├── sys/
│   └── defaults/            # Default configurations
│       ├── curilla.json     # Example: Tank
│       ├── shantotto.json   # Example: Caster
│       ├── ayame.json       # Example: Melee
│       └── ... (120 total)
└── userdata/                # Your customizations (auto-created)
    └── ...
```

## Usage Examples

### Example 1: Customizing Curilla
1. Select "curilla.lua"
2. Editor loads default: 3 gambits, auto-attack enabled
3. Add gear, adjust gambits as needed
4. Click "Save Trust"
5. Your customization saved to `userdata/curilla.json`

### Example 2: Undoing Changes
1. You've modified "shantotto.lua"
2. Want to go back to original
3. Click "Restore to Default"
4. Confirm → defaults reload from `sys/defaults/shantotto.json`

### Example 3: Creating Custom Trust
1. Select "moogle.lua"
2. Click "Clear All"
3. Confirm → all fields empty
4. Build your custom configuration
5. Click "Save Trust"

## Documentation

- **FEATURE_DOCUMENTATION.md** - Detailed feature descriptions
- **UI_CHANGES.txt** - Visual mockups and workflows
- **UI_SCREENSHOT.txt** - Detailed UI layout and examples
- **BEFORE_AFTER.txt** - Comparison of old vs new behavior
- **IMPLEMENTATION_SUMMARY.md** - Technical implementation details

## Testing

Run the test scripts to verify everything works:
```bash
python3 test_changes.py         # Basic validation
python3 test_functionality.py   # Comprehensive tests
```

## Regenerating Defaults

If you update trust Lua files and need to regenerate defaults:
```bash
python3 generate_defaults.py
```
This will recreate all JSON files in `sys/defaults/` from the Lua files.

## Benefits

✅ **Faster Setup** - See working examples immediately  
✅ **Learning Tool** - Defaults show proper configuration patterns  
✅ **Easy Reset** - One-click restore to defaults  
✅ **Flexibility** - One-click clear for blank slate  
✅ **Safety** - Your customizations in `userdata/`, defaults preserved  

## Important Notes

### Gear Stats Limitation
⚠️ **Most high-level gear does NOT have stat mods in the database**
- Visual appearance (setLook) works ✅
- Weapon DMG/Delay works ✅
- Armor/accessory stats DON'T apply ❌ (not in database)

**Solution**: Use the **Mods tab** to add stats manually (ATT, ACC, Haste, etc.)

See **TROUBLESHOOTING.md** for detailed information on:
- Why trusts don't cast spells
- How to make trusts powerful
- Common mistakes and solutions
- How the gear system actually works

## Notes

- User customizations are stored in `userdata/` (not committed to git)
- Default configurations are in `sys/defaults/` (committed to git)
- Equipment cache files (`slot_*.json`) are auto-generated and not committed
- **Always restart the server** after saving trust changes for them to take effect

## Support

If you encounter issues:
1. **Read TROUBLESHOOTING.md** - Covers common problems and solutions
2. Check that `sys/defaults/` contains 120 JSON files
3. Run `python3 test_changes.py` to verify integrity
4. Check console output for errors
5. Review documentation files for detailed information

---

**Ready to use!** Open `trust_editor.py` and start customizing your trusts with working defaults as your starting point.
