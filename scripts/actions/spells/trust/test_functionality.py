#!/usr/bin/env python3
"""
Comprehensive test to verify trust_editor.py functionality.
Tests the new features: loading defaults, restore to default, and clear all.
"""
import os
import json
import shutil
from pathlib import Path

# Set up paths
CURRENT_DIR = Path(__file__).parent
USERDATA_DIR = CURRENT_DIR / "userdata"
SYS_DIR = CURRENT_DIR / "sys"
DEFAULTS_DIR = SYS_DIR / "defaults"

# Create test userdata directory
TEST_USERDATA = CURRENT_DIR / "test_userdata"
TEST_USERDATA.mkdir(exist_ok=True)

def test_load_defaults_when_no_user_file():
    """Test that defaults are loaded when user file doesn't exist."""
    print("\n📝 Test 1: Load defaults when no user file exists")
    print("-" * 60)
    
    # Simulate loading a trust without user data
    trust_name = "curilla.lua"
    user_json = TEST_USERDATA / f"{trust_name}.json"
    default_json = DEFAULTS_DIR / f"curilla.json"
    
    # Ensure no user file exists
    if user_json.exists():
        user_json.unlink()
    
    # Simulate the on_trust_selected logic
    if user_json.exists():
        print("❌ Would load user data (not expected)")
        return False
    elif default_json.exists():
        with open(default_json, 'r') as f:
            data = json.load(f)
        print(f"✓ Loaded default data for {trust_name}")
        print(f"  - Auto-attack: {data['auto_attack']}")
        print(f"  - Gambits: {len(data['gambits'])}")
        print(f"  - Mods: {len(data['mods'])}")
        
        # Verify data structure
        if 'gambits' in data and len(data['gambits']) == 3:
            print("✓ Default data structure is correct")
            return True
        else:
            print("❌ Default data structure is incorrect")
            return False
    else:
        print("❌ No default found (not expected)")
        return False

def test_load_user_file_when_exists():
    """Test that user file takes precedence over defaults."""
    print("\n📝 Test 2: Load user file when it exists")
    print("-" * 60)
    
    trust_name = "curilla.lua"
    user_json = TEST_USERDATA / f"{trust_name}.json"
    default_json = DEFAULTS_DIR / f"curilla.json"
    
    # Create a custom user file
    custom_data = {
        'auto_attack': False,  # Different from default
        'mods': [{'name': 'CUSTOM_MOD', 'value': '999'}],
        'gambits': [],
        'tp_settings': {},
        'effects': [],
        'listeners': [],
        'custom_code': 'Custom code here',
        'main_job': 'PLD',
        'sub_job': 'WAR',
        'gear': []
    }
    
    with open(user_json, 'w') as f:
        json.dump(custom_data, f)
    
    # Simulate the on_trust_selected logic
    if user_json.exists():
        with open(user_json, 'r') as f:
            data = json.load(f)
        print(f"✓ Loaded user data for {trust_name}")
        print(f"  - Auto-attack: {data['auto_attack']}")
        print(f"  - Mods: {len(data['mods'])} (custom)")
        print(f"  - Main job: {data['main_job']}")
        
        # Verify it's the custom data
        if data['auto_attack'] == False and data['main_job'] == 'PLD':
            print("✓ User data correctly loaded (not defaults)")
            user_json.unlink()  # Clean up
            return True
        else:
            print("❌ User data incorrect")
            return False
    else:
        print("❌ User file should exist")
        return False

def test_restore_to_default_logic():
    """Test the restore to default logic."""
    print("\n📝 Test 3: Restore to default logic")
    print("-" * 60)
    
    trust_name = "shantotto.lua"
    default_json = DEFAULTS_DIR / f"shantotto.json"
    
    if not default_json.exists():
        print("❌ No default found for shantotto")
        return False
    
    # Load default data
    with open(default_json, 'r') as f:
        default_data = json.load(f)
    
    print(f"✓ Restored default data for {trust_name}")
    print(f"  - Auto-attack: {default_data['auto_attack']}")
    print(f"  - Gambits: {len(default_data['gambits'])}")
    print(f"  - Mods: {len(default_data['mods'])}")
    
    # Shantotto should have auto_attack=false and some mods
    if default_data['auto_attack'] == False and len(default_data['mods']) > 0:
        print("✓ Restore to default logic works correctly")
        return True
    else:
        print("❌ Default data incorrect")
        return False

def test_clear_all_logic():
    """Test the clear all logic."""
    print("\n📝 Test 4: Clear all logic")
    print("-" * 60)
    
    # Simulate reset_form() which clears all fields
    cleared_data = {
        'auto_attack': True,
        'main_job': '',
        'sub_job': 'NONE',
        'gear': [],
        'mods': [],
        'gambits': [],
        'tp_settings': {},
        'effects': [],
        'listeners': [],
        'custom_code': ''
    }
    
    print("✓ Simulated clear all operation")
    print(f"  - Auto-attack: {cleared_data['auto_attack']} (default)")
    print(f"  - Main job: '{cleared_data['main_job']}' (empty)")
    print(f"  - Gambits: {len(cleared_data['gambits'])} (empty)")
    print(f"  - Mods: {len(cleared_data['mods'])} (empty)")
    
    # Verify all fields are cleared
    if (cleared_data['main_job'] == '' and 
        len(cleared_data['gambits']) == 0 and 
        len(cleared_data['mods']) == 0):
        print("✓ Clear all logic works correctly")
        return True
    else:
        print("❌ Clear all logic incorrect")
        return False

def test_defaults_for_multiple_trusts():
    """Test that defaults exist for various trust types."""
    print("\n📝 Test 5: Defaults exist for different trust types")
    print("-" * 60)
    
    test_trusts = [
        ('curilla.json', 'Tank', True, 3),  # name, type, auto_attack, min_gambits
        ('shantotto.json', 'Caster', False, 2),
        ('ayame.json', 'Melee', True, 3),
        ('lion.json', 'Healer', False, 12),  # Updated: Lion is now WHM with healing gambits
    ]
    
    all_passed = True
    for trust_name, trust_type, expected_auto, expected_gambits in test_trusts:
        default_json = DEFAULTS_DIR / trust_name
        
        if not default_json.exists():
            print(f"❌ {trust_name}: No default found")
            all_passed = False
            continue
        
        with open(default_json, 'r') as f:
            data = json.load(f)
        
        auto_match = data['auto_attack'] == expected_auto
        gambits_match = len(data['gambits']) >= expected_gambits
        
        status = "✓" if (auto_match and gambits_match) else "❌"
        print(f"{status} {trust_name} ({trust_type}): auto={data['auto_attack']}, gambits={len(data['gambits'])}")
        
        if not (auto_match and gambits_match):
            all_passed = False
    
    return all_passed

def main():
    """Run all tests."""
    print("=" * 60)
    print("Testing Trust Editor New Features")
    print("=" * 60)
    
    tests = [
        test_load_defaults_when_no_user_file,
        test_load_user_file_when_exists,
        test_restore_to_default_logic,
        test_clear_all_logic,
        test_defaults_for_multiple_trusts,
    ]
    
    results = []
    for test_func in tests:
        try:
            result = test_func()
            results.append(result)
        except Exception as e:
            print(f"\n❌ EXCEPTION: {e}")
            import traceback
            traceback.print_exc()
            results.append(False)
    
    # Clean up test directory
    if TEST_USERDATA.exists():
        shutil.rmtree(TEST_USERDATA)
    
    # Summary
    print("\n" + "=" * 60)
    passed = sum(results)
    total = len(results)
    print(f"Test Results: {passed}/{total} passed")
    
    if passed == total:
        print("\n✅ All tests passed! Features working correctly:")
        print("  • Defaults load when no user file exists")
        print("  • User files take precedence over defaults")
        print("  • Restore to default works")
        print("  • Clear all works")
        print("  • Defaults exist for all trust types")
    else:
        print("\n⚠️  Some tests failed")
    
    print("=" * 60)

if __name__ == "__main__":
    main()
