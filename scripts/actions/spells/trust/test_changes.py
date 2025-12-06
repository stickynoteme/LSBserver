#!/usr/bin/env python3
"""
Test script to verify trust_editor.py changes work correctly.
"""
import os
import json
import sys

# Set up paths
CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))
USERDATA_DIR = os.path.join(CURRENT_DIR, "userdata")
SYS_DIR = os.path.join(CURRENT_DIR, "sys")
DEFAULTS_DIR = os.path.join(SYS_DIR, "defaults")

def test_defaults_exist():
    """Test that default JSON files were created."""
    if not os.path.exists(DEFAULTS_DIR):
        print(f"❌ FAIL: DEFAULTS_DIR does not exist: {DEFAULTS_DIR}")
        return False
    
    json_files = [f for f in os.listdir(DEFAULTS_DIR) if f.endswith('.json')]
    print(f"✓ Found {len(json_files)} default JSON files in {DEFAULTS_DIR}")
    
    if len(json_files) < 100:
        print(f"⚠ WARNING: Expected ~120 files, found {len(json_files)}")
        return False
    
    return True

def test_default_structure():
    """Test that default JSON files have correct structure."""
    test_files = ['curilla.json', 'shantotto.json', 'ayame.json']
    
    for filename in test_files:
        path = os.path.join(DEFAULTS_DIR, filename)
        if not os.path.exists(path):
            print(f"❌ FAIL: Test file does not exist: {filename}")
            return False
        
        with open(path, 'r') as f:
            data = json.load(f)
        
        required_keys = ['auto_attack', 'mods', 'gambits', 'tp_settings', 'effects', 'listeners', 'custom_code', 'main_job', 'sub_job', 'gear']
        for key in required_keys:
            if key not in data:
                print(f"❌ FAIL: {filename} missing key: {key}")
                return False
        
        print(f"✓ {filename} has correct structure")
    
    return True

def test_curilla_defaults():
    """Test specific content of curilla defaults."""
    path = os.path.join(DEFAULTS_DIR, 'curilla.json')
    with open(path, 'r') as f:
        data = json.load(f)
    
    # Curilla should have gambits
    if len(data['gambits']) != 3:
        print(f"❌ FAIL: curilla.json should have 3 gambits, has {len(data['gambits'])}")
        return False
    
    # Check first gambit
    first_gambit = data['gambits'][0]
    if first_gambit['target'] != 'SELF' or first_gambit['reaction'] != 'JA':
        print(f"❌ FAIL: curilla.json first gambit incorrect")
        return False
    
    print(f"✓ curilla.json has correct gambit data")
    return True

def test_shantotto_defaults():
    """Test specific content of shantotto defaults."""
    path = os.path.join(DEFAULTS_DIR, 'shantotto.json')
    with open(path, 'r') as f:
        data = json.load(f)
    
    # Shantotto should have auto_attack = false
    if data['auto_attack'] != False:
        print(f"❌ FAIL: shantotto.json should have auto_attack=false")
        return False
    
    # Should have mods
    if len(data['mods']) < 1:
        print(f"❌ FAIL: shantotto.json should have at least 1 mod")
        return False
    
    print(f"✓ shantotto.json has correct settings (auto_attack=false, has mods)")
    return True

def main():
    """Run all tests."""
    print("Testing trust_editor.py changes...")
    print("=" * 60)
    
    tests = [
        ("Defaults directory exists", test_defaults_exist),
        ("Default JSON structure", test_default_structure),
        ("Curilla defaults content", test_curilla_defaults),
        ("Shantotto defaults content", test_shantotto_defaults),
    ]
    
    passed = 0
    failed = 0
    
    for test_name, test_func in tests:
        print(f"\n{test_name}...")
        try:
            if test_func():
                passed += 1
            else:
                failed += 1
        except Exception as e:
            print(f"❌ EXCEPTION: {e}")
            failed += 1
    
    print("\n" + "=" * 60)
    print(f"Results: {passed} passed, {failed} failed")
    
    if failed > 0:
        sys.exit(1)
    else:
        print("\n✓ All tests passed!")
        sys.exit(0)

if __name__ == "__main__":
    main()
