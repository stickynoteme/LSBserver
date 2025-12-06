import tkinter as tk
from tkinter import ttk, messagebox, scrolledtext
import os
import re
import json
import copy
from pathlib import Path

# --- Constants & Enums ---

AI_TARGETS = {
    'SELF': 0, 'PARTY': 1, 'TARGET': 2, 'MASTER': 3, 'TANK': 4,
    'MELEE': 5, 'RANGED': 6, 'CASTER': 7, 'TOP_ENMITY': 8,
    'CURILLA': 9, 'PARTY_DEAD': 10, 'PARTY_MULTI': 11
}

AI_CONDITIONS = {
    'ALWAYS': 0, 'HPP_LT': 1, 'HPP_GTE': 2, 'MPP_LT': 3,
    'TP_LT': 4, 'TP_GTE': 5, 'STATUS': 6, 'NOT_STATUS': 7,
    'STATUS_FLAG': 8, 'HAS_TOP_ENMITY': 9, 'NOT_HAS_TOP_ENMITY': 10,
    'SC_AVAILABLE': 11, 'NOT_SC_AVAILABLE': 12, 'MB_AVAILABLE': 13,
    'READYING_WS': 14, 'READYING_MS': 15, 'READYING_JA': 16,
    'CASTING_MA': 17, 'RANDOM': 18, 'NO_SAMBA': 19, 'NO_STORM': 20,
    'PT_HAS_TANK': 21, 'NOT_PT_HAS_TANK': 22, 'IS_ECOSYSTEM': 23,
    'HP_MISSING': 24
}

AI_REACTIONS = {
    'ATTACK': 0, 'RATTACK': 1, 'MA': 2, 'JA': 3, 'WS': 4, 'MS': 5
}

AI_SELECTS = {
    'HIGHEST': 0, 'LOWEST': 1, 'SPECIFIC': 2, 'RANDOM': 3,
    'MB_ELEMENT': 4, 'SPECIAL_AYAME': 5, 'BEST_AGAINST_TARGET': 6,
    'BEST_SAMBA': 7, 'HIGHEST_WALTZ': 8, 'ENTRUSTED': 9,
    'BEST_INDI': 10, 'STORM_DAY': 11, 'HELIX_DAY': 12,
    'EN_MOB_WEAKNESS': 13, 'STORM_MOB_WEAKNESS': 14,
    'HELIX_MOB_WEAKNESS': 15
}

AI_TP_TRIGGERS = {
    'ASAP': 0, 'RANDOM': 1, 'OPENER': 2, 'CLOSER': 3, 'CLOSER_UNTIL_TP': 4
}

# Paths
CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))
ENUM_DIR = os.path.abspath(os.path.join(CURRENT_DIR, "../../../../scripts/enum"))
USERDATA_DIR = os.path.join(CURRENT_DIR, "userdata")
SYS_DIR = os.path.join(CURRENT_DIR, "sys")
DEFAULTS_DIR = os.path.join(SYS_DIR, "defaults")

if not os.path.exists(USERDATA_DIR):
    os.makedirs(USERDATA_DIR)

if not os.path.exists(SYS_DIR):
    os.makedirs(SYS_DIR)

if not os.path.exists(DEFAULTS_DIR):
    os.makedirs(DEFAULTS_DIR)

# Equipment slot bitmasks (from xi.slot enum, but as bitmask for item_equipment.slot field)
SLOT_BITMASK = {
    'main': 1,
    'sub': 2,
    'ranged': 4,
    'ammo': 8,
    'head': 16,
    'body': 32,
    'hands': 64,
    'legs': 128,
    'feet': 256,
    'neck': 512,
    'waist': 1024,
    'ear1': 2048,
    'ear2': 4096,
    'ring1': 8192,
    'ring2': 16384,
    'back': 32768,
}

# Combined masks for dual slots (earrings can go in either ear slot)
SLOT_COMBINED = {
    'ear1': SLOT_BITMASK['ear1'] | SLOT_BITMASK['ear2'],
    'ear2': SLOT_BITMASK['ear1'] | SLOT_BITMASK['ear2'],
    'ring1': SLOT_BITMASK['ring1'] | SLOT_BITMASK['ring2'],
    'ring2': SLOT_BITMASK['ring1'] | SLOT_BITMASK['ring2'],
}

# All equipment slots in display order
ALL_EQUIP_SLOTS = [
    'main', 'sub', 'ranged', 'ammo',
    'head', 'body', 'hands', 'legs', 'feet',
    'neck', 'waist', 'ear1', 'ear2', 'ring1', 'ring2', 'back'
]

# Base stats for a lv99 trust (approximations based on typical player stats)
BASE_STATS_LV99 = {
    'HP': 2000,
    'MP': 500,
    'STR': 75,
    'DEX': 75,
    'VIT': 75,
    'AGI': 75,
    'INT': 75,
    'MND': 75,
    'CHR': 75,
    'ATT': 300,
    'ACC': 400,
    'DEF': 400,
    'EVA': 350,
    'MATT': 100,
    'MACC': 350,
    'MDEF': 100,
    'MEVA': 350,
}

def parse_lua_enum(file_path, enum_name):
    """Parses a Lua file for enum definitions."""
    data = {}
    if not os.path.exists(file_path):
        return data
    
    with open(file_path, 'r') as f:
        content = f.read()
        # Simple regex to find KEY = VALUE
        # Looks for patterns inside the enum table definition if possible, 
        # but for simplicity assuming standard "KEY = VALUE," format
        matches = re.findall(r'(\w+)\s*=\s*(0x[0-9A-Fa-f]+|\d+)', content)
        for key, value in matches:
            # basic filtering to avoid false positives if any
            if key != "xi": 
                data[key] = int(value, 0)
    return data

MODS = parse_lua_enum(os.path.join(ENUM_DIR, "mod.lua"), "xi.mod")
EFFECTS = parse_lua_enum(os.path.join(ENUM_DIR, "effect.lua"), "xi.effect")
EFFECT_FLAGS = parse_lua_enum(os.path.join(ENUM_DIR, "effect_flag.lua"), "xi.effectFlag")
JOBS = parse_lua_enum(os.path.join(ENUM_DIR, "job.lua"), "xi.job")
JOB_ABILITIES = parse_lua_enum(os.path.join(ENUM_DIR, "job_ability.lua"), "xi.jobAbility")
WEAPONSKILLS = parse_lua_enum(os.path.join(ENUM_DIR, "weaponskill.lua"), "xi.weaponskill")

# Reverse mod lookup for SQL-driven gear mods
MOD_ID_TO_NAME = {v: k for k, v in MODS.items()}

# SQL parsing helpers for pseudo-gear
SQL_DIR = Path(os.path.abspath(os.path.join(CURRENT_DIR, "../../../.."))) / "sql"

def parse_item_basic():
    data = {}
    file_path = SQL_DIR / "item_basic.sql"
    if not file_path.exists():
        return data
    content = file_path.read_text(errors="ignore")
    # Format: (itemid,subid,'name','sortname',type,stackSize,flags,aH,BaseSell)
    for match in re.findall(r"VALUES\s*\((\d+),\d+,'([^']*)',", content):
        item_id, name = match
        data[int(item_id)] = name
    return data

def parse_item_mods():
    mods = {}
    file_path = SQL_DIR / "item_mods.sql"
    if not file_path.exists():
        return mods
    content = file_path.read_text(errors="ignore")
    for item_id, mod_id, val in re.findall(r"\((\d+),(\d+),(-?\d+)\)", content):
        mods.setdefault(int(item_id), []).append((int(mod_id), int(val)))
    return mods

def parse_item_weapon():
    weapons = {}
    file_path = SQL_DIR / "item_weapon.sql"
    if not file_path.exists():
        return weapons
    content = file_path.read_text(errors="ignore")
    for match in re.findall(r"\((\d+),'[^']*',\s*\d+,\s*\d+,\s*\d+,\s*\d+,\s*\d+,\s*\d+,\s*\d+,\s*(\d+),\s*(\d+)\)", content):
        item_id, delay, dmg = match
        weapons[int(item_id)] = {'delay': int(delay), 'dmg': int(dmg)}
    return weapons

def parse_item_equipment():
    """Parse item_equipment.sql to get slot information for each item."""
    equipment = {}
    file_path = SQL_DIR / "item_equipment.sql"
    if not file_path.exists():
        return equipment
    content = file_path.read_text(errors="ignore")
    # Format: (itemId,'name',level,ilevel,jobs,MId,shieldSize,scriptType,slot,rslot,rslotlook,su_level)
    for match in re.findall(r"VALUES\s*\((\d+),'([^']*)',(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+)\)", content):
        item_id = int(match[0])
        name = match[1]
        level = int(match[2])
        ilevel = int(match[3])
        slot_bitmask = int(match[8])
        equipment[item_id] = {
            'name': name,
            'level': level,
            'ilevel': ilevel,
            'slot': slot_bitmask
        }
    return equipment

def build_slot_item_lists(equipment_data, item_names):
    """Build filtered item lists for each equipment slot."""
    slot_lists = {slot: [] for slot in ALL_EQUIP_SLOTS}
    
    for item_id, eq_info in equipment_data.items():
        slot_bitmask = eq_info.get('slot', 0)
        name = item_names.get(item_id, eq_info.get('name', f'Item {item_id}'))
        level = eq_info.get('level', 0)
        ilevel = eq_info.get('ilevel', 0)
        
        # Create display string with level info
        if ilevel > 0:
            display = f"{name} (iLv{ilevel}) [{item_id}]"
        elif level > 0:
            display = f"{name} (Lv{level}) [{item_id}]"
        else:
            display = f"{name} [{item_id}]"
        
        # Check each slot and add item if bitmask matches
        for slot_name in ALL_EQUIP_SLOTS:
            if slot_name in SLOT_COMBINED:
                # For ear/ring slots, check combined mask
                check_mask = SLOT_COMBINED[slot_name]
            else:
                check_mask = SLOT_BITMASK.get(slot_name, 0)
            
            if slot_bitmask & check_mask:
                slot_lists[slot_name].append({
                    'id': item_id,
                    'name': name,
                    'display': display,
                    'level': level,
                    'ilevel': ilevel
                })
    
    # Sort each list by ilevel (descending), then level (descending), then name
    for slot_name in slot_lists:
        slot_lists[slot_name].sort(key=lambda x: (-x['ilevel'], -x['level'], x['name'].lower()))
    
    return slot_lists

def cache_slot_lists(slot_lists):
    """Cache the slot lists to JSON files in the sys folder."""
    for slot_name, items in slot_lists.items():
        cache_file = os.path.join(SYS_DIR, f"slot_{slot_name}.json")
        with open(cache_file, 'w') as f:
            json.dump(items, f, indent=2)

def load_cached_slot_lists():
    """Load slot lists from cache if available, otherwise build from SQL."""
    # Check if cache exists and is not empty
    cache_valid = True
    for slot_name in ALL_EQUIP_SLOTS:
        cache_file = os.path.join(SYS_DIR, f"slot_{slot_name}.json")
        if not os.path.exists(cache_file) or os.path.getsize(cache_file) == 0:
            cache_valid = False
            break
    
    if cache_valid:
        # Load from cache
        slot_lists = {}
        for slot_name in ALL_EQUIP_SLOTS:
            cache_file = os.path.join(SYS_DIR, f"slot_{slot_name}.json")
            try:
                with open(cache_file, 'r') as f:
                    slot_lists[slot_name] = json.load(f)
            except (json.JSONDecodeError, IOError):
                cache_valid = False
                break
        
        if cache_valid:
            return slot_lists
    
    # Build from SQL and cache
    equipment = parse_item_equipment()
    names = parse_item_basic()
    slot_lists = build_slot_item_lists(equipment, names)
    cache_slot_lists(slot_lists)
    return slot_lists

def get_slot_item_lists():
    """Lazy loader for slot item lists - only loads when needed."""
    global _SLOT_ITEM_LISTS
    if _SLOT_ITEM_LISTS is None:
        _SLOT_ITEM_LISTS = load_cached_slot_lists()
    return _SLOT_ITEM_LISTS

# Module-level cache (lazy loaded)
_SLOT_ITEM_LISTS = None

ITEM_NAMES = parse_item_basic()
ITEM_NAME_LIST = [f"{name} ({item_id})" for item_id, name in ITEM_NAMES.items()]
ITEM_MODS = parse_item_mods()
ITEM_WEAPONS = parse_item_weapon()
ITEM_EQUIPMENT = parse_item_equipment()

# Slot item lists are lazy loaded via get_slot_item_lists()
# This avoids expensive I/O at module import time

def parse_nested_lua_enum(file_path, table_name):
    """Parses a specific table inside a Lua file."""
    data = {}
    if not os.path.exists(file_path):
        return data
    
    with open(file_path, 'r') as f:
        content = f.read()
        
    # Find the table block: table_name = { ... }
    # This regex is a bit fragile but works for standard formatting
    pattern = re.compile(re.escape(table_name) + r'\s*=\s*(\{(.*?)\})', re.DOTALL)
    match = pattern.search(content)
    if match:
        block = match.group(1)
        # Parse key = value lines
        items = re.findall(r'(\w+)\s*=\s*(\d+)', block)
        for key, value in items:
            data[key] = int(value)
    return data

MAGIC_SPELLS = parse_nested_lua_enum(os.path.join(ENUM_DIR, "magic.lua"), "xi.magic.spell")
MAGIC_FAMILIES = parse_nested_lua_enum(os.path.join(ENUM_DIR, "magic.lua"), "xi.magic.spellFamily")

# Build a list of all constants for dropdowns
ALL_CONSTANTS = []
for k in sorted(MAGIC_FAMILIES.keys()): ALL_CONSTANTS.append(f"xi.magic.spellFamily.{k}")
for k in sorted(MAGIC_SPELLS.keys()): ALL_CONSTANTS.append(f"xi.magic.spell.{k}")
for k in sorted(EFFECTS.keys()): ALL_CONSTANTS.append(f"xi.effect.{k}")
for k in sorted(EFFECT_FLAGS.keys()): ALL_CONSTANTS.append(f"xi.effectFlag.{k}")
for k in sorted(JOB_ABILITIES.keys()): ALL_CONSTANTS.append(f"xi.ja.{k}")
for k in sorted(WEAPONSKILLS.keys()): ALL_CONSTANTS.append(f"xi.ws.{k}")
# Add JA/WS placeholders if needed, or user types them

# Sort for dropdowns
SORTED_MODS = sorted(MODS.keys())
SORTED_EFFECTS = sorted(EFFECTS.keys())
SORTED_AI_TARGETS = sorted(AI_TARGETS.keys())
SORTED_AI_CONDITIONS = sorted(AI_CONDITIONS.keys())
SORTED_AI_REACTIONS = sorted(AI_REACTIONS.keys())
SORTED_AI_SELECTS = sorted(AI_SELECTS.keys())
SORTED_AI_TP_TRIGGERS = sorted(AI_TP_TRIGGERS.keys())
SORTED_JOBS = sorted([job for job in JOBS.keys() if job != 'NONE'])
MAIN_JOB_CHOICES = [''] + SORTED_JOBS
SUBJOB_CHOICES = ['NONE'] + SORTED_JOBS

ROLE_FALLBACKS = {
    'TANK': {
        'auto_attack': True,
        'mods': [{'name': 'ENMITY', 'value': '40'}, {'name': 'DEF', 'value': '40'}, {'name': 'HP', 'value': '200'}],
        'gambits': [{'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.FLASH', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.FLASH'}],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '2000'},
    },
    'MELEE': {
        'auto_attack': True,
        'mods': [{'name': 'ATT', 'value': '25'}, {'name': 'ACC', 'value': '20'}, {'name': 'DOUBLE_ATTACK', 'value': '10'}],
        'gambits': [{'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1250', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'}],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'CASTER': {
        'auto_attack': False,
        'mods': [{'name': 'MATT', 'value': '25'}, {'name': 'MACC', 'value': '20'}, {'name': 'FASTCAST', 'value': '15'}],
        'gambits': [{'target': 'TARGET', 'condition': 'MB_AVAILABLE', 'cond_arg': '0', 'reaction': 'MA', 'selector': 'MB_ELEMENT', 'sel_arg': 'xi.magic.spellFamily.NONE'}],
    },
}

JOB_ROLE_MAP = {
    'PLD': 'TANK', 'RUN': 'TANK',
    'WAR': 'MELEE', 'MNK': 'MELEE', 'THF': 'MELEE', 'DRK': 'MELEE', 'SAM': 'MELEE', 'NIN': 'MELEE',
    'DRG': 'MELEE', 'BST': 'MELEE', 'PUP': 'MELEE', 'BLU': 'MELEE', 'DNC': 'MELEE',
    'RNG': 'RANGED', 'COR': 'RANGED',
    'WHM': 'CASTER', 'SCH': 'CASTER', 'RDM': 'CASTER', 'BRD': 'CASTER', 'GEO': 'CASTER', 'SMN': 'CASTER', 'BLM': 'CASTER',
}

JOB_TEMPLATES = {
    'PLD': {
        'auto_attack': True,
        'mods': [{'name': 'ENMITY', 'value': '60'}, {'name': 'DEF', 'value': '50'}, {'name': 'HP', 'value': '250'}, {'name': 'MDEF', 'value': '20'}, {'name': 'FASTCAST', 'value': '15'}],
        'gambits': [
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.FLASH', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.FLASH'},
            {'target': 'SELF', 'condition': 'NOT_HAS_TOP_ENMITY', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.PROVOKE'},
            {'target': 'SELF', 'condition': 'HPP_LT', 'cond_arg': '60', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.SENTINEL'},
            {'target': 'TARGET', 'condition': 'CASTING_MA', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.SHIELD_BASH'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PHALANX', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PHALANX'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.ENLIGHT', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.ENLIGHT'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PROTECT', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PROTECT'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.SHELL', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.SHELL'},
            {'target': 'MASTER', 'condition': 'HPP_LT', 'cond_arg': '50', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'},
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '40', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '2000'},
    },
    'WAR': {
        'auto_attack': True,
        'mods': [{'name': 'ATT', 'value': '35'}, {'name': 'ACC', 'value': '25'}, {'name': 'ENMITY', 'value': '20'}],
        'gambits': [
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.BERSERK', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.BERSERK'},
            {'target': 'SELF', 'condition': 'HPP_LT', 'cond_arg': '50', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.DEFENDER'},
            {'target': 'SELF', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.WARCRY'},
            {'target': 'SELF', 'condition': 'NOT_HAS_TOP_ENMITY', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.PROVOKE'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1250', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'SAM': {
        'auto_attack': True,
        'mods': [{'name': 'ATT', 'value': '25'}, {'name': 'ACC', 'value': '25'}, {'name': 'STORETP', 'value': '20'}],
        'gambits': [
            {'target': 'SELF', 'condition': 'TP_LT', 'cond_arg': '1000', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.MEDITATE'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.HASSO', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.HASSO'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1500', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1500'},
    },
    'NIN': {
        'auto_attack': True,
        'mods': [{'name': 'EVA', 'value': '20'}, {'name': 'ACC', 'value': '15'}, {'name': 'ENMITY', 'value': '15'}],
        'gambits': [
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.COPY_IMAGE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.UTSUSEMI'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PARALYSIS', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PARALYZE'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.BLINDNESS', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.BLIND'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1250', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'DRK': {
        'auto_attack': True,
        'mods': [{'name': 'ATT', 'value': '30'}, {'name': 'ACC', 'value': '20'}, {'name': 'FASTCAST', 'value': '10'}],
        'gambits': [
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.LAST_RESORT', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.LAST_RESORT'},
            {'target': 'SELF', 'condition': 'HPP_GTE', 'cond_arg': '60', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.SOULEATER'},
            {'target': 'TARGET', 'condition': 'HPP_LT', 'cond_arg': '60', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.ABSORB'},
            {'target': 'TARGET', 'condition': 'HPP_GTE', 'cond_arg': '80', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.SLEEP_II'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1250', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'WHM': {
        'auto_attack': False,
        'mods': [{'name': 'CURE_POTENCY', 'value': '30'}, {'name': 'CURE_POTENCY_II', 'value': '10'}, {'name': 'FASTCAST', 'value': '20'}, {'name': 'MND', 'value': '20'}, {'name': 'REFRESH', 'value': '3'}],
        'gambits': [
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '75', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'},
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '45', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURAGA'},
            {'target': 'PARTY', 'condition': 'STATUS_FLAG', 'cond_arg': 'xi.effectFlag.ERASABLE', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.ERASE'},
            {'target': 'PARTY', 'condition': 'STATUS', 'cond_arg': 'xi.effect.POISON', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.POISONA'},
            {'target': 'PARTY', 'condition': 'STATUS', 'cond_arg': 'xi.effect.PARALYSIS', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.PARALYNA'},
            {'target': 'PARTY', 'condition': 'STATUS', 'cond_arg': 'xi.effect.SILENCE', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.SILENA'},
            {'target': 'PARTY', 'condition': 'STATUS', 'cond_arg': 'xi.effect.DISEASE', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.VIRUNA'},
            {'target': 'PARTY', 'condition': 'STATUS', 'cond_arg': 'xi.effect.PETRIFICATION', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.STONA'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.HASTE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.HASTE'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.REGEN', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.REGEN'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PROTECT', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PROTECT'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.SHELL', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.SHELL'},
        ],
    },
    'RDM': {
        'auto_attack': True,
        'mods': [{'name': 'FASTCAST', 'value': '30'}, {'name': 'REFRESH', 'value': '3'}, {'name': 'MACC', 'value': '25'}],
        'gambits': [
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.HASTE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.HASTE'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.REFRESH', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.REFRESH'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PHALANX', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PHALANX'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.DIA', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.DIA'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.SLOW', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.SLOW'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.PARALYSIS', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.PARALYZE'},
            {'target': 'TARGET', 'condition': 'STATUS_FLAG', 'cond_arg': 'xi.effectFlag.DISPELABLE', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.DISPEL'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.GRAVITY', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.GRAVITY'},
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '70', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'},
        ],
    },
    'BLM': {
        'auto_attack': False,
        'mods': [{'name': 'MATT', 'value': '35'}, {'name': 'MACC', 'value': '30'}, {'name': 'FASTCAST', 'value': '20'}],
        'gambits': [
            {'target': 'TARGET', 'condition': 'HPP_GTE', 'cond_arg': '80', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.SLEEP_II'},
            {'target': 'TARGET', 'condition': 'MB_AVAILABLE', 'cond_arg': '0', 'reaction': 'MA', 'selector': 'MB_ELEMENT', 'sel_arg': 'xi.magic.spellFamily.NONE'},
            {'target': 'TARGET', 'condition': 'NOT_SC_AVAILABLE', 'cond_arg': '0', 'reaction': 'MA', 'selector': 'BEST_AGAINST_TARGET', 'sel_arg': '0'},
            {'target': 'TARGET', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.FIRE'},
        ],
    },
    'BRD': {
        'auto_attack': True,
        'mods': [{'name': 'CHR', 'value': '20'}, {'name': 'FASTCAST', 'value': '10'}],
        'gambits': [
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.BALLAD', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.MAGES_BALLAD_II'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.MINUET', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.VALOR_MINUET_IV'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.MADRIGAL', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.SWORD_MADRIGAL'},
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '60', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'},
        ],
    },
    'COR': {
        'auto_attack': True,
        'mods': [{'name': 'RATT', 'value': '20'}, {'name': 'RACC', 'value': '20'}, {'name': 'AGI', 'value': '15'}],
        'gambits': [
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.CHAOS_ROLL', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.CHAOS_ROLL'},
            {'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.HUNTERS_ROLL', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.HUNTERS_ROLL'},
            {'target': 'TARGET', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.DIA', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.DIA'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1500', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1500'},
    },
    'DNC': {
        'auto_attack': True,
        'mods': [{'name': 'CHR', 'value': '15'}, {'name': 'DEX', 'value': '15'}, {'name': 'EVA', 'value': '10'}],
        'gambits': [
            {'target': 'TARGET', 'condition': 'NO_SAMBA', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'BEST_SAMBA', 'sel_arg': '0'},
            {'target': 'TARGET', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.BOX_STEP'},
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '55', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.CURING_WALTZ_IV'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1250', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'RNG': {
        'auto_attack': True,
        'mods': [{'name': 'RATT', 'value': '30'}, {'name': 'RACC', 'value': '30'}, {'name': 'AGI', 'value': '15'}],
        'gambits': [
            {'target': 'TARGET', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'RATTACK', 'selector': 'RANDOM', 'sel_arg': '0'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.SHARPSHOT', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.SHARPSHOT'},
            {'target': 'SELF', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.BARRAGE'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1500', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'OPENER', 'select': 'HIGHEST', 'value': '1500'},
    },
    'DRG': {
        'auto_attack': True,
        'mods': [{'name': 'ATT', 'value': '25'}, {'name': 'ACC', 'value': '20'}],
        'gambits': [
            {'target': 'TARGET', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.JUMP'},
            {'target': 'TARGET', 'condition': 'HPP_GTE', 'cond_arg': '50', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.HIGH_JUMP'},
            {'target': 'SELF', 'condition': 'TP_GTE', 'cond_arg': '1500', 'reaction': 'WS', 'selector': 'HIGHEST', 'sel_arg': '0'},
        ],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1500'},
    },
}

JOB_SUB_TEMPLATES = {
    ('PLD', 'WAR'): {
        'mods': [{'name': 'ENMITY', 'value': '10'}],
        'gambits': [{'target': 'SELF', 'condition': 'ALWAYS', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.WARCRY'}],
    },
    ('WAR', 'NIN'): {
        'mods': [{'name': 'EVA', 'value': '10'}],
        'gambits': [{'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.COPY_IMAGE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.UTSUSEMI'}],
    },
    ('SAM', 'WAR'): {
        'gambits': [{'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.BERSERK', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.BERSERK'}],
    },
    ('BLM', 'RDM'): {
        'mods': [{'name': 'FASTCAST', 'value': '10'}, {'name': 'REFRESH', 'value': '2'}],
        'gambits': [{'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.STONESKIN', 'reaction': 'MA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.magic.spell.STONESKIN'}],
    },
    ('RNG', 'NIN'): {
        'mods': [{'name': 'EVA', 'value': '10'}],
        'gambits': [{'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.COPY_IMAGE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.UTSUSEMI'}],
    },
    ('DNC', 'WAR'): {
        'gambits': [{'target': 'SELF', 'condition': 'NOT_HAS_TOP_ENMITY', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.PROVOKE'}],
    },
}

SUB_JOB_EXTRAS = {
    'NIN': {
        'mods': [{'name': 'EVA', 'value': '10'}],
        'gambits': [{'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.COPY_IMAGE', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.UTSUSEMI'}],
        'tp_settings': {'trigger': 'CLOSER_UNTIL_TP', 'select': 'HIGHEST', 'value': '1250'},
    },
    'WAR': {
        'gambits': [
            {'target': 'SELF', 'condition': 'NOT_HAS_TOP_ENMITY', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.PROVOKE'},
            {'target': 'SELF', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.BERSERK', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.BERSERK'},
        ],
    },
    'DNC': {
        'mods': [{'name': 'CHR', 'value': '10'}],
        'gambits': [
            {'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '60', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.CURING_WALTZ_III'},
            {'target': 'TARGET', 'condition': 'NO_SAMBA', 'cond_arg': '0', 'reaction': 'JA', 'selector': 'BEST_SAMBA', 'sel_arg': '0'},
        ],
    },
    'WHM': {
        'mods': [{'name': 'CURE_POTENCY', 'value': '10'}],
        'gambits': [{'target': 'PARTY', 'condition': 'HPP_LT', 'cond_arg': '60', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.CURE'}],
    },
    'SAM': {
        'gambits': [{'target': 'SELF', 'condition': 'TP_LT', 'cond_arg': '1000', 'reaction': 'JA', 'selector': 'SPECIFIC', 'sel_arg': 'xi.ja.MEDITATE'}],
    },
    'RDM': {
        'mods': [{'name': 'FASTCAST', 'value': '10'}],
        'gambits': [{'target': 'PARTY', 'condition': 'NOT_STATUS', 'cond_arg': 'xi.effect.REFRESH', 'reaction': 'MA', 'selector': 'HIGHEST', 'sel_arg': 'xi.magic.spellFamily.REFRESH'}],
    },
}

TARGET_DESCRIPTIONS = {
    'SELF': 'The trust itself.',
    'PARTY': 'All party members.',
    'TARGET': 'Current combat target.',
    'MASTER': 'The summoning player.',
    'TANK': 'Party member with top enmity.',
    'MELEE': 'Frontline DD allies.',
    'RANGED': 'Ranged allies.',
    'CASTER': 'Casters in party.',
    'TOP_ENMITY': 'Entity with highest enmity.',
    'CURILLA': 'Curilla only (special).',
    'PARTY_DEAD': 'Party members who are KO’d.',
    'PARTY_MULTI': 'Multiple party targets.',
}

CONDITION_DESCRIPTIONS = {
    'ALWAYS': 'Always true; use to spam on cooldown.',
    'HPP_LT': 'Target HP% < arg (0-100).',
    'HPP_GTE': 'Target HP% >= arg (0-100).',
    'MPP_LT': 'Target MP% < arg.',
    'TP_LT': 'Target TP < arg.',
    'TP_GTE': 'Target TP >= arg.',
    'STATUS': 'Has xi.effect.* equal to arg.',
    'NOT_STATUS': 'Does NOT have xi.effect.* arg.',
    'STATUS_FLAG': 'Has xi.effectFlag.* bitfield arg.',
    'HAS_TOP_ENMITY': 'Target currently tanks.',
    'NOT_HAS_TOP_ENMITY': 'Target does not tank.',
    'SC_AVAILABLE': 'Skillchain is possible. Arg ignored.',
    'NOT_SC_AVAILABLE': 'No SC available. Arg ignored.',
    'MB_AVAILABLE': 'Magic burst window. Arg ignored.',
    'READYING_WS': 'Target readies WS. Arg ignored.',
    'READYING_MS': 'Target readies mob skill.',
    'READYING_JA': 'Target readies job ability.',
    'CASTING_MA': 'Target casting magic.',
    'RANDOM': 'Random chance; arg is percent (0-100).',
    'NO_SAMBA': 'No Samba effect active.',
    'NO_STORM': 'No Storm effect active.',
    'PT_HAS_TANK': 'Party has a tank.',
    'NOT_PT_HAS_TANK': 'Party lacks a tank.',
    'IS_ECOSYSTEM': 'Mob ecosystem matches arg id.',
    'HP_MISSING': 'HP missing >= arg.',
}

CONDITION_ARG_GUIDE = {
    'HPP_LT': 'Percent 0-100',
    'HPP_GTE': 'Percent 0-100',
    'MPP_LT': 'Percent 0-100',
    'TP_LT': 'TP amount (e.g. 1000)',
    'TP_GTE': 'TP amount (e.g. 1000)',
    'STATUS': 'xi.effect.* ({} options)'.format(len(EFFECTS)),
    'NOT_STATUS': 'xi.effect.* ({} options)'.format(len(EFFECTS)),
    'STATUS_FLAG': 'xi.effectFlag.* ({} options)'.format(len(EFFECT_FLAGS)),
    'RANDOM': 'Percent 0-100',
    'IS_ECOSYSTEM': 'Ecosystem id',
    'HP_MISSING': 'HP amount missing',
}

REACTION_DESCRIPTIONS = {
    'ATTACK': 'Melee attack target.',
    'RATTACK': 'Ranged attack.',
    'MA': 'Cast magic action.',
    'JA': 'Use job ability.',
    'WS': 'Use weaponskill.',
    'MS': 'Use mob skill.',
}

SELECTOR_DESCRIPTIONS = {
    'HIGHEST': 'Pick highest-rated option / target.',
    'LOWEST': 'Pick lowest-rated option / target.',
    'SPECIFIC': 'Use explicit Sel. Arg constant.',
    'RANDOM': 'Choose randomly.',
    'MB_ELEMENT': 'Pick burst element based on SC.',
    'SPECIAL_AYAME': 'Ayame WS logic.',
    'BEST_AGAINST_TARGET': 'Best element vs target.',
    'BEST_SAMBA': 'Best Samba for party.',
    'HIGHEST_WALTZ': 'Best Waltz available.',
    'ENTRUSTED': 'Entrust behavior (GEO).',
    'BEST_INDI': 'Best Indi spell.',
    'STORM_DAY': 'Storm for day.',
    'HELIX_DAY': 'Helix for day.',
    'EN_MOB_WEAKNESS': 'En-spell for mob weakness.',
    'STORM_MOB_WEAKNESS': 'Storm for mob weakness.',
    'HELIX_MOB_WEAKNESS': 'Helix for mob weakness.',
}

SELECTOR_ARG_GUIDE = {
    'HIGHEST': 'Usually 0',
    'LOWEST': 'Usually 0',
    'SPECIFIC': 'Explicit constant (xi.magic.spell.*, xi.ja.*, xi.ws.*, etc.)',
    'MB_ELEMENT': '0 or xi.magic.spellFamily.*',
    'BEST_AGAINST_TARGET': '0 or xi.magic.spellFamily.*',
    'BEST_SAMBA': '0',
    'HIGHEST_WALTZ': '0',
    'ENTRUSTED': '0',
    'BEST_INDI': 'xi.magic.spellFamily.INDI_*',
    'STORM_DAY': '0 or xi.magic.spellFamily.STORM',
    'HELIX_DAY': '0 or xi.magic.spellFamily.HELIX',
    'EN_MOB_WEAKNESS': '0',
    'STORM_MOB_WEAKNESS': '0',
    'HELIX_MOB_WEAKNESS': '0',
}

TP_TRIGGER_DESCRIPTIONS = {
    'ASAP': 'Use TP as soon as it is available.',
    'RANDOM': 'Use TP at random intervals.',
    'OPENER': 'Spend TP early to start skillchains.',
    'CLOSER': 'Save TP to close skillchains.',
    'CLOSER_UNTIL_TP': 'Close chains until TP reaches the Value threshold.',
}

TP_SELECT_DESCRIPTIONS = {
    'HIGHEST': 'Choose strongest WS/skill.',
    'LOWEST': 'Choose weakest WS/skill.',
    'RANDOM': 'Pick randomly.',
    'SPECIFIC': 'Use the explicit Sel. Arg (xi.ws.*, xi.ja.*, etc.).',
    'SPECIAL_AYAME': 'Ayame TP logic.',
    'BEST_AGAINST_TARGET': 'Pick best element vs target.',
    'BEST_SAMBA': 'Pick best Samba.',
    'HIGHEST_WALTZ': 'Highest Waltz available.',
    'ENTRUSTED': 'Entrust logic.',
    'BEST_INDI': 'Best Indi spell.',
    'STORM_DAY': 'Storm matching day.',
    'HELIX_DAY': 'Helix matching day.',
    'EN_MOB_WEAKNESS': 'En-spell for mob weakness.',
    'STORM_MOB_WEAKNESS': 'Storm for mob weakness.',
    'HELIX_MOB_WEAKNESS': 'Helix for mob weakness.',
}

LISTENER_EVENTS = [
    'WEAPONSKILL_USE',
    'ABILITY_USE',
    'MAGIC_USE',
    'MAGIC_STATE_EXIT',
    'COMBAT_TICK',
    'TP_TICK',
    'DEAL_DAMAGE',
    'TAKE_DAMAGE',
    'EFFECT_GAIN',
    'EFFECT_LOSE',
    'ITEM_USE',
    'ROAM_TICK',
]

LISTENER_HELP = {
    'WEAPONSKILL_USE': "Args: (mob, target, wsid, tp, action). Fires when the trust uses a WS.",
    'ABILITY_USE': "Args: (mob, target, abilityId, action). Fires on job ability use.",
    'MAGIC_USE': "Args: (mob, target, spellId, action). Before cast completes.",
    'MAGIC_STATE_EXIT': "Args: (mob, spellId). On finishing casting state.",
    'COMBAT_TICK': "Args: (mob). Periodic tick while engaged.",
    'TP_TICK': "Args: (mob). TP update tick.",
    'DEAL_DAMAGE': "Args: (mob, target, damage, element). After dealing damage.",
    'TAKE_DAMAGE': "Args: (mob, attacker, damage, element). After taking damage.",
    'EFFECT_GAIN': "Args: (mob, effectId). When an effect is gained.",
    'EFFECT_LOSE': "Args: (mob, effectId). When an effect is lost/removed.",
    'ITEM_USE': "Args: (mob, target, itemId). When using an item.",
    'ROAM_TICK': "Args: (mob). Periodic tick while idle/roaming.",
}

LISTENER_SIGNATURES = {
    'WEAPONSKILL_USE': "function(mobArg, target, wsid, tp, action)",
    'ABILITY_USE': "function(mobArg, target, abilityId, action)",
    'MAGIC_USE': "function(mobArg, target, spellId, action)",
    'MAGIC_STATE_EXIT': "function(mobArg, spellId)",
    'COMBAT_TICK': "function(mobArg)",
    'TP_TICK': "function(mobArg)",
    'DEAL_DAMAGE': "function(mobArg, target, damage, element)",
    'TAKE_DAMAGE': "function(mobArg, attacker, damage, element)",
    'EFFECT_GAIN': "function(mobArg, effectId)",
    'EFFECT_LOSE': "function(mobArg, effectId)",
    'ITEM_USE': "function(mobArg, target, itemId)",
    'ROAM_TICK': "function(mobArg)",
}

LISTENER_TEMPLATES = {
    'LOG_EVENT': [
        "-- Log the event with IDs",
        "mobArg:messageBasic(xi.msg.basic.NONE)",  # placeholder safe call
        "printf('[LISTENER][%s] event fired', mobArg:getName())",
    ],
    'REAPPLY_BUFF': [
        "-- Reapply a buff if missing",
        "if not mobArg:hasStatusEffect(xi.effect.PHALANX) then",
        "    mobArg:castSpell(xi.magic.spell.PHALANX, mobArg)",
        "end",
    ],
    'CURE_MASTER': [
        "-- Heal master if low HP",
        "local master = mobArg:getMaster()",
        "if master and master:getHPP() < 50 then",
        "    mobArg:castSpell(xi.magic.spell.CURE_IV, master)",
        "end",
    ],
    'REMOVE_LISTENER': [
        "-- Example of removing a listener by tag",
        "mobArg:removeListener('TAG_TO_REMOVE')",
    ],
}

class TrustEditor(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Trust Editor")
        self.geometry("1100x700")
        self.style = ttk.Style()
        self.style.configure("Icon.TButton", padding=0)
        self.style.configure("HelpHeader.TLabel", foreground="#2a7ae2", font=("TkDefaultFont", 10, "underline"))

        self.trust_files = self.get_trust_files()
        self.current_trust = tk.StringVar()
        self.config = {}
        self.current_trust.trace_add("write", self.on_trust_selected)

        self.create_widgets()

    def open_filter_list_dialog(self, values, target_var, title="Select", width=40, height=12, help_category=None):
        dialog = tk.Toplevel(self)
        dialog.title(title)
        dialog.grab_set()

        search_var = tk.StringVar()
        ttk.Label(dialog, text="Filter:").pack(anchor="w", padx=8, pady=(8, 2))
        search_entry = ttk.Entry(dialog, textvariable=search_var, width=width)
        search_entry.pack(fill=tk.X, padx=8)

        list_frame = ttk.Frame(dialog)
        list_frame.pack(fill=tk.BOTH, expand=True, padx=8, pady=8)

        scrollbar = ttk.Scrollbar(list_frame, orient=tk.VERTICAL)
        listbox = tk.Listbox(list_frame, height=height, yscrollcommand=scrollbar.set, exportselection=False)
        scrollbar.config(command=listbox.yview)
        listbox.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        scrollbar.pack(side=tk.LEFT, fill=tk.Y)

        detail = None
        help_items = self.get_help_items(help_category) if help_category else []

        if help_items:
            detail = scrolledtext.ScrolledText(list_frame, wrap=tk.WORD, width=50)
            detail.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=(8, 0))

        def describe(sel):
            if not detail:
                return
            info = ""
            for item in help_items:
                if item['name'].startswith(sel):
                    info = item['info']
                    break
            detail.config(state="normal")
            detail.delete("1.0", tk.END)
            detail.insert("1.0", info or sel)
            detail.config(state="disabled")

        def refresh(filter_text=""):
            listbox.delete(0, tk.END)
            filtered = [v for v in values if filter_text.lower() in v.lower()]
            listbox._items = filtered
            for item in filtered:
                listbox.insert(tk.END, item)
            if filtered:
                listbox.selection_set(0)
                describe(filtered[0])

        def choose(event=None):
            if listbox.curselection():
                sel = listbox.get(tk.ACTIVE)
                target_var.set(sel)
            dialog.destroy()

        def on_select(event=None):
            if listbox.curselection():
                sel = listbox.get(tk.ACTIVE)
                describe(sel)

        ttk.Button(dialog, text="Select", command=choose).pack(pady=(0, 8))
        listbox.bind("<Double-Button-1>", choose)
        listbox.bind("<<ListboxSelect>>", on_select)
        search_var.trace_add("write", lambda *args: refresh(search_var.get()))
        refresh()
        search_entry.focus_set()

    def create_list_picker(self, parent, values, textvariable=None, width=20, title="Select", help_category=None):
        var = textvariable or tk.StringVar()
        frame = ttk.Frame(parent)
        display = ttk.Label(frame, textvariable=var, width=width, relief="sunken", anchor="w")
        display.pack(side=tk.LEFT, padx=(0, 1))
        tk.Button(
            frame,
            text="🔍",
            width=1,
            height=1,
            padx=0,
            pady=0,
            borderwidth=0,
            highlightthickness=0,
            relief="flat",
            font=("TkDefaultFont", 8),
            command=lambda: self.open_filter_list_dialog(values, var, title=title, help_category=help_category),
        ).pack(side=tk.LEFT, padx=0, pady=0)
        return frame, var

    def create_gear_rows(self, parent):
        """Create gear selection rows for all equipment slots, organized in two columns."""
        # Split slots into two columns for better layout
        left_slots = ['main', 'sub', 'ranged', 'ammo', 'head', 'body', 'hands', 'legs', 'feet']
        right_slots = ['neck', 'waist', 'ear1', 'ear2', 'ring1', 'ring2', 'back']
        
        # Create two frames for left and right columns
        left_frame = ttk.Frame(parent)
        left_frame.grid(row=1, column=0, sticky="nw", padx=5)
        
        right_frame = ttk.Frame(parent)
        right_frame.grid(row=1, column=1, sticky="nw", padx=5)
        
        def add_slot_row(frame, slot, row_num):
            slot_label = slot.upper().replace('1', ' 1').replace('2', ' 2')  # "EAR1" -> "EAR 1"
            ttk.Label(frame, text=slot_label + ":").grid(row=row_num, column=0, padx=5, pady=3, sticky="w")
            id_var = tk.StringVar()
            name_var = tk.StringVar()

            entry = ttk.Entry(frame, textvariable=id_var, width=8)
            entry.grid(row=row_num, column=1, padx=3, pady=3, sticky="w")
            
            # Bind id_var changes to update name and trigger stats refresh
            id_var.trace_add("write", lambda *args, iv=id_var, nv=name_var, s=slot: self.on_gear_id_changed(iv, nv, s))

            name_label = ttk.Label(frame, textvariable=name_var, width=25, relief="sunken", anchor="w")
            name_label.grid(row=row_num, column=2, padx=3, pady=3, sticky="w")

            tk.Button(frame, text="🔍", width=1, height=1, padx=0, pady=0, borderwidth=0, highlightthickness=0,
                      command=lambda s=slot, iv=id_var, nv=name_var: self.pick_gear_item(s, iv, nv)).grid(row=row_num, column=3, padx=2, pady=2)

            self.gear_rows.append({'slot': slot, 'id_var': id_var, 'name_var': name_var})
        
        # Add left column slots
        for i, slot in enumerate(left_slots):
            add_slot_row(left_frame, slot, i)
        
        # Add right column slots
        for i, slot in enumerate(right_slots):
            add_slot_row(right_frame, slot, i)

    def on_gear_id_changed(self, id_var, name_var, slot):
        """Called when a gear ID is manually changed - update name and stats."""
        item_id_str = id_var.get().strip()
        if item_id_str:
            try:
                item_id = int(item_id_str)
                name = ITEM_NAMES.get(item_id, f"Unknown ({item_id})")
                # Find display name from slot lists if available
                slot_items = get_slot_item_lists().get(slot, [])
                for item in slot_items:
                    if item['id'] == item_id:
                        name_var.set(item['display'])
                        break
                else:
                    name_var.set(f"{name} [{item_id}]")
            except ValueError:
                pass
        else:
            name_var.set("")
        
        # Refresh stats preview if it exists
        if hasattr(self, 'refresh_stats_preview'):
            self.refresh_stats_preview()

    def pick_gear_item(self, slot, id_var, name_var):
        """Open a dialog to pick gear from slot-filtered item list."""
        dialog = tk.Toplevel(self)
        dialog.title(f"Select {slot.upper()}")
        dialog.geometry("550x500")
        dialog.grab_set()

        # Get slot-specific items (lazy loaded)
        slot_items = get_slot_item_lists().get(slot, [])
        
        search_var = tk.StringVar()
        ttk.Label(dialog, text="Filter:").pack(anchor="w", padx=8, pady=(8, 2))
        search_entry = ttk.Entry(dialog, textvariable=search_var)
        search_entry.pack(fill=tk.X, padx=8)
        
        # Info label
        ttk.Label(dialog, text=f"Found {len(slot_items)} items for {slot.upper()} slot", 
                  foreground="#666").pack(anchor="w", padx=8, pady=(2, 4))

        list_frame = ttk.Frame(dialog)
        list_frame.pack(fill=tk.BOTH, expand=True, padx=8, pady=4)
        
        scrollbar = ttk.Scrollbar(list_frame, orient=tk.VERTICAL)
        listbox = tk.Listbox(list_frame, yscrollcommand=scrollbar.set, exportselection=False)
        scrollbar.config(command=listbox.yview)
        listbox.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Item details panel
        detail_frame = ttk.LabelFrame(dialog, text="Item Details")
        detail_frame.pack(fill=tk.X, padx=8, pady=4)
        detail_text = scrolledtext.ScrolledText(detail_frame, wrap=tk.WORD, height=6)
        detail_text.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)

        def show_item_details(item_id):
            """Show mods and weapon stats for selected item."""
            detail_text.config(state="normal")
            detail_text.delete("1.0", tk.END)
            
            lines = [f"Item ID: {item_id}"]
            name = ITEM_NAMES.get(item_id, "Unknown")
            lines.append(f"Name: {name}")
            
            # Show weapon stats if applicable
            if item_id in ITEM_WEAPONS:
                w = ITEM_WEAPONS[item_id]
                lines.append(f"Weapon DMG: {w.get('dmg', 0)}")
                lines.append(f"Weapon Delay: {w.get('delay', 0)}")
            
            # Show mods
            if item_id in ITEM_MODS:
                lines.append("\nModifiers:")
                for mod_id, val in ITEM_MODS[item_id]:
                    mod_name = MOD_ID_TO_NAME.get(mod_id, f"MOD_{mod_id}")
                    lines.append(f"  {mod_name}: {val:+d}")
            
            detail_text.insert("1.0", "\n".join(lines))
            detail_text.config(state="disabled")

        def refresh():
            term = search_var.get().lower()
            listbox.delete(0, tk.END)
            filtered = [item for item in slot_items if term in item['display'].lower() or term in item['name'].lower()]
            listbox._items = filtered
            for item in filtered:
                listbox.insert(tk.END, item['display'])
            if filtered:
                listbox.selection_set(0)
                show_item_details(filtered[0]['id'])
        refresh()

        def on_select(event=None):
            if listbox.curselection():
                idx = listbox.curselection()[0]
                items = getattr(listbox, '_items', [])
                if idx < len(items):
                    show_item_details(items[idx]['id'])

        def choose(event=None):
            if not listbox.curselection():
                return
            idx = listbox.curselection()[0]
            items = getattr(listbox, '_items', [])
            if idx < len(items):
                selected = items[idx]
                id_var.set(str(selected['id']))
                name_var.set(selected['display'])
            dialog.destroy()

        btn_frame = ttk.Frame(dialog)
        btn_frame.pack(fill=tk.X, padx=8, pady=(0, 8))
        ttk.Button(btn_frame, text="Select", command=choose).pack(side=tk.LEFT, padx=4)
        ttk.Button(btn_frame, text="Clear", command=lambda: (id_var.set(""), name_var.set(""), dialog.destroy())).pack(side=tk.LEFT, padx=4)
        ttk.Button(btn_frame, text="Cancel", command=dialog.destroy).pack(side=tk.RIGHT, padx=4)
        
        listbox.bind("<Double-Button-1>", choose)
        listbox.bind("<<ListboxSelect>>", on_select)
        search_var.trace_add("write", lambda *args: refresh())
        search_entry.focus_set()

    def get_trust_files(self):
        files = [f for f in os.listdir(CURRENT_DIR) if f.endswith(".lua") and f != os.path.basename(__file__)]
        return sorted(files)

    def create_widgets(self):
        # Top Bar
        top_frame = ttk.Frame(self, padding=10)
        top_frame.pack(fill=tk.X)

        ttk.Label(top_frame, text="Select Trust:").pack(side=tk.LEFT, padx=5)
        self.trust_picker_frame, _ = self.create_list_picker(top_frame, self.trust_files, self.current_trust, width=32, title="Select Trust File")
        self.trust_picker_frame.pack(side=tk.LEFT, padx=5)

        ttk.Button(top_frame, text="Save Trust", command=self.save_trust).pack(side=tk.RIGHT, padx=5)
        ttk.Button(top_frame, text="Clear All", command=self.clear_all).pack(side=tk.RIGHT, padx=5)
        ttk.Button(top_frame, text="Restore to Default", command=self.restore_to_default).pack(side=tk.RIGHT, padx=5)
        
        # Notebook (Tabs)
        self.notebook = ttk.Notebook(self, padding=5)
        self.notebook.pack(fill=tk.BOTH, expand=True)

        # -- General Tab --
        self.general_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.general_frame, text="General")
        self.create_general_tab()

        # -- Mods Tab --
        self.mods_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.mods_frame, text="Mods")
        self.create_mods_tab()

        # -- Gambits Tab (Spell List) --
        self.gambits_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.gambits_frame, text="Gambits (Spells/Abilities)")
        self.create_gambits_tab()

        # -- TP Settings Tab --
        self.tp_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.tp_frame, text="TP Settings")
        self.create_tp_tab()

        # -- Status Effects --
        self.effects_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.effects_frame, text="Status Effects")
        self.create_effects_tab()

        # -- Listeners --
        self.listeners_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.listeners_frame, text="Listeners")
        self.create_listeners_tab()

        # -- Custom Code --
        self.code_frame = ttk.Frame(self.notebook)
        self.notebook.add(self.code_frame, text="Custom Code")
        self.create_code_tab()

    def create_help_label(self, parent, text, category, width=None):
        lbl = ttk.Label(parent, text=text, style="HelpHeader.TLabel", width=width)
        lbl.bind("<Button-1>", lambda e: self.open_help_window(category))
        lbl.bind("<Enter>", lambda e: lbl.configure(cursor="hand2"))
        lbl.bind("<Leave>", lambda e: lbl.configure(cursor=""))
        return lbl

    def open_help_window(self, category):
        help_items = self.get_help_items(category)
        dialog = tk.Toplevel(self)
        dialog.title(f"{category} Help")
        dialog.geometry("700x500")
        dialog.grab_set()

        search_var = tk.StringVar()
        ttk.Label(dialog, text="Filter:").pack(anchor="w", padx=8, pady=(8, 2))
        search_entry = ttk.Entry(dialog, textvariable=search_var)
        search_entry.pack(fill=tk.X, padx=8)

        content_frame = ttk.Frame(dialog)
        content_frame.pack(fill=tk.BOTH, expand=True, padx=8, pady=8)

        listbox = tk.Listbox(content_frame, width=30, exportselection=False)
        listbox.pack(side=tk.LEFT, fill=tk.Y)

        scrollbar = ttk.Scrollbar(content_frame, orient=tk.VERTICAL, command=listbox.yview)
        scrollbar.pack(side=tk.LEFT, fill=tk.Y)
        listbox.configure(yscrollcommand=scrollbar.set)

        detail = scrolledtext.ScrolledText(content_frame, wrap=tk.WORD)
        detail.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=(8, 0))

        def refresh(filter_text=""):
            listbox.delete(0, tk.END)
            filtered = [item for item in help_items if filter_text.lower() in item['name'].lower()]
            for item in filtered:
                listbox.insert(tk.END, item['name'])
            listbox._items = filtered
            if filtered:
                listbox.selection_set(0)
                show_detail(0)

        def show_detail(index):
            items = getattr(listbox, "_items", help_items)
            if 0 <= index < len(items):
                detail.delete("1.0", tk.END)
                detail.insert(tk.END, items[index]['info'])

        def on_select(event=None):
            if listbox.curselection():
                show_detail(listbox.curselection()[0])

        search_var.trace_add("write", lambda *args: refresh(search_var.get()))
        listbox.bind("<<ListboxSelect>>", on_select)
        refresh()
        search_entry.focus_set()

    def create_general_tab(self):
        self.main_job_var = tk.StringVar()
        self.sub_job_var = tk.StringVar(value="NONE")
        self.auto_attack_var = tk.BooleanVar(value=True)
        self.gear_rows = []

        # Create a scrollable frame for the general tab
        general_canvas = tk.Canvas(self.general_frame)
        general_scrollbar = ttk.Scrollbar(self.general_frame, orient="vertical", command=general_canvas.yview)
        general_scrollable = ttk.Frame(general_canvas)
        
        general_scrollable.bind(
            "<Configure>",
            lambda e: general_canvas.configure(scrollregion=general_canvas.bbox("all"))
        )
        
        general_canvas.create_window((0, 0), window=general_scrollable, anchor="nw")
        general_canvas.configure(yscrollcommand=general_scrollbar.set)
        
        general_canvas.pack(side="left", fill="both", expand=True)
        general_scrollbar.pack(side="right", fill="y")

        preset_frame = ttk.LabelFrame(general_scrollable, text="Player-like Preset", padding=10)
        preset_frame.pack(fill=tk.X, padx=10, pady=10)

        ttk.Label(preset_frame, text="Main Job").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.main_job_picker, _ = self.create_list_picker(preset_frame, MAIN_JOB_CHOICES, textvariable=self.main_job_var, width=10, title="Pick Main Job")
        self.main_job_picker.grid(row=0, column=1, padx=5, pady=5, sticky="w")

        ttk.Label(preset_frame, text="Sub Job").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.sub_job_picker, _ = self.create_list_picker(preset_frame, SUBJOB_CHOICES, textvariable=self.sub_job_var, width=10, title="Pick Sub Job")
        self.sub_job_picker.grid(row=0, column=3, padx=5, pady=5, sticky="w")

        ttk.Button(preset_frame, text="Apply Job Template", command=self.apply_job_template).grid(row=1, column=0, columnspan=4, pady=5, sticky="w")

        ttk.Checkbutton(general_scrollable, text="Auto Attack Enabled", variable=self.auto_attack_var).pack(pady=10, anchor="w", padx=10)

        # Main content frame with gear and stats side by side
        content_frame = ttk.Frame(general_scrollable)
        content_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)

        gear_frame = ttk.LabelFrame(content_frame, text="Faux Gear (Look + Mods)", padding=10)
        gear_frame.grid(row=0, column=0, sticky="nsew", padx=(0, 5))
        ttk.Label(gear_frame, text="Assign items to apply stats from SQL. Use 🔍 for slot-filtered lists.").grid(row=0, column=0, columnspan=2, sticky="w")
        self.create_gear_rows(gear_frame)

        # Stats Preview Panel
        stats_frame = ttk.LabelFrame(content_frame, text="Stats Preview (Lv99 + Gear)", padding=10)
        stats_frame.grid(row=0, column=1, sticky="nsew", padx=(5, 0))
        
        self.create_stats_preview(stats_frame)
        
        content_frame.columnconfigure(0, weight=2)
        content_frame.columnconfigure(1, weight=1)
    
    def create_stats_preview(self, parent):
        """Create the stats preview panel showing combined base + gear stats."""
        # Header
        ttk.Label(parent, text="Base stats for Lv99 trust + gear mods:", foreground="#666").pack(anchor="w", pady=(0, 5))
        
        # Refresh button
        ttk.Button(parent, text="↻ Refresh Stats", command=self.refresh_stats_preview).pack(anchor="w", pady=(0, 5))
        
        # Stats display frame
        self.stats_display_frame = ttk.Frame(parent)
        self.stats_display_frame.pack(fill=tk.BOTH, expand=True)
        
        # Create stat labels
        self.stat_labels = {}
        stat_groups = [
            ('HP/MP', ['HP', 'MP']),
            ('Primary Stats', ['STR', 'DEX', 'VIT', 'AGI', 'INT', 'MND', 'CHR']),
            ('Physical', ['ATT', 'ACC', 'DEF', 'EVA']),
            ('Magical', ['MATT', 'MACC', 'MDEF', 'MEVA']),
        ]
        
        row = 0
        for group_name, stats in stat_groups:
            ttk.Label(self.stats_display_frame, text=group_name + ":", font=("TkDefaultFont", 9, "bold")).grid(
                row=row, column=0, columnspan=4, sticky="w", pady=(8, 2))
            row += 1
            
            col = 0
            for stat in stats:
                ttk.Label(self.stats_display_frame, text=stat + ":", width=6).grid(row=row, column=col, sticky="w", padx=2)
                val_label = ttk.Label(self.stats_display_frame, text="0", width=6, relief="sunken", anchor="e")
                val_label.grid(row=row, column=col + 1, sticky="w", padx=2)
                self.stat_labels[stat] = val_label
                col += 2
                if col >= 4:
                    col = 0
                    row += 1
            if col > 0:
                row += 1
        
        # Gear mods summary
        ttk.Label(self.stats_display_frame, text="Gear Mods:", font=("TkDefaultFont", 9, "bold")).grid(
            row=row, column=0, columnspan=4, sticky="w", pady=(8, 2))
        row += 1
        
        self.gear_mods_text = scrolledtext.ScrolledText(self.stats_display_frame, wrap=tk.WORD, height=8, width=30)
        self.gear_mods_text.grid(row=row, column=0, columnspan=4, sticky="nsew", pady=2)
        
        # Initialize stats
        self.refresh_stats_preview()
    
    def refresh_stats_preview(self):
        """Calculate and display combined stats from base + gear mods."""
        # Start with base stats
        stats = dict(BASE_STATS_LV99)
        gear_mods_summary = []
        
        # Map mod names to stat names for display
        mod_to_stat = {
            'HP': 'HP', 'MP': 'MP',
            'STR': 'STR', 'DEX': 'DEX', 'VIT': 'VIT', 'AGI': 'AGI',
            'INT': 'INT', 'MND': 'MND', 'CHR': 'CHR',
            'ATT': 'ATT', 'ACC': 'ACC', 'DEF': 'DEF', 'EVA': 'EVA',
            'MATT': 'MATT', 'MACC': 'MACC', 'MDEF': 'MDEF', 'MEVA': 'MEVA',
            # Alt names from mod.lua
            'MAIN_DMG_RATING': 'ATT',
        }
        
        # Collect mods from equipped gear
        for row in self.gear_rows:
            item_id_str = row['id_var'].get().strip()
            if not item_id_str:
                continue
            try:
                item_id = int(item_id_str)
            except ValueError:
                continue
            
            slot = row['slot']
            item_name = ITEM_NAMES.get(item_id, f"Item {item_id}")
            
            # Get item mods
            if item_id in ITEM_MODS:
                slot_mods = []
                for mod_id, val in ITEM_MODS[item_id]:
                    mod_name = MOD_ID_TO_NAME.get(mod_id, f"MOD_{mod_id}")
                    slot_mods.append(f"{mod_name}: {val:+d}")
                    
                    # Apply to stats if mappable
                    if mod_name in mod_to_stat:
                        stat_key = mod_to_stat[mod_name]
                        if stat_key in stats:
                            stats[stat_key] += val
                
                if slot_mods:
                    gear_mods_summary.append(f"[{slot.upper()}] {item_name}:")
                    for m in slot_mods:
                        gear_mods_summary.append(f"  {m}")
            
            # Get weapon stats - display separately from armor mods
            if item_id in ITEM_WEAPONS and slot in ['main', 'sub', 'ranged']:
                w = ITEM_WEAPONS[item_id]
                dmg = w.get('dmg', 0)
                delay = w.get('delay', 0)
                if not any(f"[{slot.upper()}]" in line for line in gear_mods_summary[-5:]):
                    gear_mods_summary.append(f"[{slot.upper()}] {item_name}:")
                gear_mods_summary.append(f"  Weapon DMG: {dmg} (uses {slot.upper()}_DMG_RATING)")
                if slot != 'sub':  # Sub weapons don't have separate delay
                    gear_mods_summary.append(f"  Weapon Delay: {delay}")
                # Note: Weapon DMG contributes to damage calculation, not directly to ATT stat
                # This is a simplified approximation for preview purposes only
        
        # Also add manual mods from the Mods tab
        if hasattr(self, 'mod_rows'):
            manual_mods = []
            for _, mod_var, val_entry in self.mod_rows:
                mod_name = mod_var.get()
                if mod_name:
                    try:
                        val = int(val_entry.get())
                        manual_mods.append(f"{mod_name}: {val:+d}")
                        if mod_name in mod_to_stat:
                            stat_key = mod_to_stat[mod_name]
                            if stat_key in stats:
                                stats[stat_key] += val
                    except ValueError:
                        pass
            
            if manual_mods:
                gear_mods_summary.append("\n[MANUAL MODS]:")
                for m in manual_mods:
                    gear_mods_summary.append(f"  {m}")
        
        # Update stat labels
        for stat_name, label in self.stat_labels.items():
            val = stats.get(stat_name, 0)
            label.config(text=str(val))
        
        # Update gear mods text
        self.gear_mods_text.config(state="normal")
        self.gear_mods_text.delete("1.0", tk.END)
        if gear_mods_summary:
            self.gear_mods_text.insert("1.0", "\n".join(gear_mods_summary))
        else:
            self.gear_mods_text.insert("1.0", "(No gear equipped)")
        self.gear_mods_text.config(state="disabled")

    def create_mods_tab(self):
        # List
        self.mods_list_frame = ttk.Frame(self.mods_frame)
        self.mods_list_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        self.mods_canvas = tk.Canvas(self.mods_list_frame)
        self.mods_scrollbar = ttk.Scrollbar(self.mods_list_frame, orient="vertical", command=self.mods_canvas.yview)
        self.mods_scrollable_frame = ttk.Frame(self.mods_canvas)

        self.mods_scrollable_frame.bind(
            "<Configure>",
            lambda e: self.mods_canvas.configure(scrollregion=self.mods_canvas.bbox("all"))
        )

        self.mods_canvas.create_window((0, 0), window=self.mods_scrollable_frame, anchor="nw")
        self.mods_canvas.configure(yscrollcommand=self.mods_scrollbar.set)

        self.mods_canvas.pack(side="left", fill="both", expand=True)
        self.mods_scrollbar.pack(side="right", fill="y")

        # Add Button
        ttk.Button(self.mods_frame, text="Add Mod", command=self.add_mod_row).pack(pady=5)
        
        self.mod_rows = []

    def add_mod_row(self, mod_name="", value=""):
        row_frame = ttk.Frame(self.mods_scrollable_frame)
        row_frame.pack(fill=tk.X, pady=2)

        ttk.Label(row_frame, text="Mod:").pack(side=tk.LEFT)
        mod_frame, mod_var = self.create_list_picker(row_frame, SORTED_MODS, width=24, textvariable=tk.StringVar(), title="Pick Mod")
        mod_var.set(mod_name)
        mod_frame.pack(side=tk.LEFT, padx=5)

        ttk.Label(row_frame, text="Value:").pack(side=tk.LEFT)
        val_entry = ttk.Entry(row_frame, width=8)
        val_entry.insert(0, str(value))
        val_entry.pack(side=tk.LEFT, padx=5)

        del_btn = ttk.Button(row_frame, text="X", width=3, command=lambda: self.remove_mod_row(row_frame))
        del_btn.pack(side=tk.LEFT, padx=5)

        self.mod_rows.append((row_frame, mod_var, val_entry))

    def remove_mod_row(self, row_frame):
        for i, (frame, _, _) in enumerate(self.mod_rows):
            if frame == row_frame:
                self.mod_rows.pop(i)
                break
        row_frame.destroy()

    def create_gambits_tab(self):
        # Headers
        header_frame = ttk.Frame(self.gambits_frame)
        header_frame.pack(fill=tk.X, padx=10, pady=5)
        self.create_help_label(header_frame, "Target", "TARGET", width=15).pack(side=tk.LEFT)
        self.create_help_label(header_frame, "Condition", "CONDITION", width=20).pack(side=tk.LEFT)
        self.create_help_label(header_frame, "Cond. Arg", "COND_ARG", width=10).pack(side=tk.LEFT)
        self.create_help_label(header_frame, "Reaction", "REACTION", width=15).pack(side=tk.LEFT)
        self.create_help_label(header_frame, "Selector", "SELECTOR", width=20).pack(side=tk.LEFT)
        self.create_help_label(header_frame, "Sel. Arg (Spell/Family/ID)", "SEL_ARG", width=30).pack(side=tk.LEFT)

        # List
        self.gambits_list_frame = ttk.Frame(self.gambits_frame)
        self.gambits_list_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        self.gambits_canvas = tk.Canvas(self.gambits_list_frame)
        self.gambits_scrollbar = ttk.Scrollbar(self.gambits_list_frame, orient="vertical", command=self.gambits_canvas.yview)
        self.gambits_scrollable_frame = ttk.Frame(self.gambits_canvas)

        self.gambits_scrollable_frame.bind(
            "<Configure>",
            lambda e: self.gambits_canvas.configure(scrollregion=self.gambits_canvas.bbox("all"))
        )

        self.gambits_canvas.create_window((0, 0), window=self.gambits_scrollable_frame, anchor="nw")
        self.gambits_canvas.configure(yscrollcommand=self.gambits_scrollbar.set)

        self.gambits_canvas.pack(side="left", fill="both", expand=True)
        self.gambits_scrollbar.pack(side="right", fill="y")

        ttk.Button(self.gambits_frame, text="Add Gambit", command=self.add_gambit_row).pack(pady=5)
        self.gambit_rows = []

    def add_gambit_row(self, t="", c="", c_arg="", r="", s="", s_arg=""):
        row_frame = ttk.Frame(self.gambits_scrollable_frame)
        row_frame.pack(fill=tk.X, pady=2)

        t_frame, t_var = self.create_list_picker(row_frame, SORTED_AI_TARGETS, width=10, textvariable=tk.StringVar(), title="Pick Target", help_category="TARGET"); t_var.set(t); t_frame.pack(side=tk.LEFT, padx=2)
        c_frame, c_var = self.create_list_picker(row_frame, SORTED_AI_CONDITIONS, width=14, textvariable=tk.StringVar(), title="Pick Condition", help_category="CONDITION"); c_var.set(c); c_frame.pack(side=tk.LEFT, padx=2)
        c_arg_e = ttk.Entry(row_frame, width=8); c_arg_e.insert(0, str(c_arg)); c_arg_e.pack(side=tk.LEFT, padx=2)
        r_frame, r_var = self.create_list_picker(row_frame, SORTED_AI_REACTIONS, width=10, textvariable=tk.StringVar(), title="Pick Reaction", help_category="REACTION"); r_var.set(r); r_frame.pack(side=tk.LEFT, padx=2)
        s_frame, s_var = self.create_list_picker(row_frame, SORTED_AI_SELECTS, width=14, textvariable=tk.StringVar(), title="Pick Selector", help_category="SELECTOR"); s_var.set(s); s_frame.pack(side=tk.LEFT, padx=2)
        
        # Selector Arg: filtered picker with all constants + manual entry support
        s_arg_frame, s_arg_var = self.create_list_picker(row_frame, ALL_CONSTANTS, width=22, textvariable=tk.StringVar(), title="Pick Selector Arg", help_category="SEL_ARG")
        s_arg_var.set(s_arg)
        s_arg_frame.pack(side=tk.LEFT, padx=2)

        del_btn = ttk.Button(row_frame, text="X", width=3, command=lambda: self.remove_gambit_row(row_frame))
        del_btn.pack(side=tk.LEFT, padx=5)

        self.gambit_rows.append((row_frame, t_var, c_var, c_arg_e, r_var, s_var, s_arg_var))

    def remove_gambit_row(self, row_frame):
        for i, (frame, _, _, _, _, _, _) in enumerate(self.gambit_rows):
            if frame == row_frame:
                self.gambit_rows.pop(i)
                break
        row_frame.destroy()

    def create_tp_tab(self):
        self.tp_trigger_var = tk.StringVar()
        self.tp_select_var = tk.StringVar()
        self.tp_value_var = tk.StringVar()

        f = ttk.Frame(self.tp_frame)
        f.pack(fill=tk.BOTH, expand=True, pady=10, padx=10)

        ttk.Label(f, text="Trigger:").grid(row=0, column=0, padx=5, pady=5)
        trigger_picker, _ = self.create_list_picker(f, SORTED_AI_TP_TRIGGERS, textvariable=self.tp_trigger_var, width=14, title="Pick TP Trigger", help_category="TP_TRIGGER")
        trigger_picker.grid(row=0, column=1, padx=5, pady=5)

        ttk.Label(f, text="Select:").grid(row=1, column=0, padx=5, pady=5)
        select_picker, _ = self.create_list_picker(f, SORTED_AI_SELECTS, textvariable=self.tp_select_var, width=14, title="Pick TP Selector", help_category="TP_SELECT")
        select_picker.grid(row=1, column=1, padx=5, pady=5)

        ttk.Label(f, text="Value (e.g. 1000):").grid(row=2, column=0, padx=5, pady=5)
        ttk.Entry(f, textvariable=self.tp_value_var).grid(row=2, column=1, padx=5, pady=5)

        help_frame = ttk.LabelFrame(f, text="TP Settings Help")
        help_frame.grid(row=0, column=2, rowspan=3, padx=10, pady=5, sticky="nsew")
        help_text = (
            "Trigger (when to spend TP):\n"
            " - ASAP: Spend TP immediately when ready.\n"
            " - RANDOM: Random timing; ignores Value.\n"
            " - OPENER: Use early to start chains.\n"
            " - CLOSER: Hold TP to close chains.\n"
            " - CLOSER_UNTIL_TP: Close chains until TP exceeds Value.\n\n"
            "Selector (what to use):\n"
            " - HIGHEST/LOWEST: Choose strongest or weakest WS.\n"
            " - RANDOM: Random WS.\n"
            " - SPECIFIC: Use the exact Sel. Arg constant (xi.ws.* or JA/MA id).\n"
            " - SPECIAL_AYAME/BEST_*: Job-specific smart selection.\n\n"
            "Value meaning:\n"
            " - TP threshold (e.g. 1000/1250/1500/3000).\n"
            " - Some triggers ignore Value (ASAP/OPENER/RANDOM).\n"
            " - CLOSER_UNTIL_TP stops closing chains once TP >= Value.\n"
        )
        txt = scrolledtext.ScrolledText(help_frame, wrap=tk.WORD, height=12)
        txt.insert("1.0", help_text)
        txt.config(state="disabled")
        txt.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)

    def create_effects_tab(self):
        # Simplified: Effect, Power, Duration
        self.effects_list_frame = ttk.Frame(self.effects_frame)
        self.effects_list_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        self.effects_canvas = tk.Canvas(self.effects_list_frame)
        self.effects_scrollbar = ttk.Scrollbar(self.effects_list_frame, orient="vertical", command=self.effects_canvas.yview)
        self.effects_scrollable_frame = ttk.Frame(self.effects_canvas)

        self.effects_scrollable_frame.bind(
            "<Configure>",
            lambda e: self.effects_canvas.configure(scrollregion=self.effects_canvas.bbox("all"))
        )

        self.effects_canvas.create_window((0, 0), window=self.effects_scrollable_frame, anchor="nw")
        self.effects_canvas.configure(yscrollcommand=self.effects_scrollbar.set)

        self.effects_canvas.pack(side="left", fill="both", expand=True)
        self.effects_scrollbar.pack(side="right", fill="y")

        header_frame = ttk.Frame(self.effects_frame)
        header_frame.pack(fill=tk.X, padx=10, pady=(0, 5))
        ttk.Button(header_frame, text="Add Effect", command=self.add_effect_row).pack(side=tk.LEFT, pady=5)
        help_frame = ttk.LabelFrame(self.effects_frame, text="Status Effect Help")
        help_frame.pack(fill=tk.BOTH, expand=False, padx=10, pady=(0, 10))
        help_text = (
            "When applied: Effects are added once on trust spawn via mob:addStatusEffectEx.\n"
            "Reapplication: No auto-recast; to refresh mid-fight, add gambits (e.g. NOT_STATUS + MA) or custom code.\n"
            "Effect: Choose xi.effect.* (also used as the icon id).\n"
            "Power: Magnitude (stat bonus, % haste, resist, etc.). Check effect implementation for expected scaling.\n"
            "Duration: Seconds the effect lasts. 0 may mean instant or default. Expired effects do not reapply unless scripted.\n"
            "Stacking: Re-applying the same effect overwrites earlier power/duration; in the editor, later rows overwrite prior ones for the same effect id.\n"
            "Examples: xi.effect.HASTE power=1500 (~15%), xi.effect.PHALANX power=20, xi.effect.ENLIGHT power=15.\n"
        )
        eff_txt = scrolledtext.ScrolledText(help_frame, wrap=tk.WORD, height=6)
        eff_txt.insert("1.0", help_text)
        eff_txt.config(state="disabled")
        eff_txt.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.effect_rows = []

    def add_effect_row(self, eff="", p="", d=""):
        row_frame = ttk.Frame(self.effects_scrollable_frame)
        row_frame.pack(fill=tk.X, pady=2)

        ttk.Label(row_frame, text="Effect:").pack(side=tk.LEFT)
        e_frame, e_var = self.create_list_picker(row_frame, SORTED_EFFECTS, width=20, textvariable=tk.StringVar(), title="Pick Effect")
        e_var.set(eff)
        e_frame.pack(side=tk.LEFT, padx=2)
        
        ttk.Label(row_frame, text="Power:").pack(side=tk.LEFT)
        p_e = ttk.Entry(row_frame, width=6); p_e.insert(0, str(p)); p_e.pack(side=tk.LEFT, padx=2)

        ttk.Label(row_frame, text="Duration:").pack(side=tk.LEFT)
        d_e = ttk.Entry(row_frame, width=6); d_e.insert(0, str(d)); d_e.pack(side=tk.LEFT, padx=2)

        del_btn = ttk.Button(row_frame, text="X", width=3, command=lambda: self.remove_effect_row(row_frame))
        del_btn.pack(side=tk.LEFT, padx=5)

        self.effect_rows.append((row_frame, e_var, p_e, d_e))

    def create_listeners_tab(self):
        list_frame = ttk.Frame(self.listeners_frame)
        list_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)

        self.listeners_canvas = tk.Canvas(list_frame)
        self.listeners_scrollbar = ttk.Scrollbar(list_frame, orient="vertical", command=self.listeners_canvas.yview)
        self.listeners_scrollable_frame = ttk.Frame(self.listeners_canvas)

        self.listeners_scrollable_frame.bind(
            "<Configure>",
            lambda e: self.listeners_canvas.configure(scrollregion=self.listeners_canvas.bbox("all"))
        )

        self.listeners_canvas.create_window((0, 0), window=self.listeners_scrollable_frame, anchor="nw")
        self.listeners_canvas.configure(yscrollcommand=self.listeners_scrollbar.set)

        self.listeners_canvas.pack(side="left", fill="both", expand=True)
        self.listeners_scrollbar.pack(side="right", fill="y")

        header_frame = ttk.Frame(self.listeners_frame)
        header_frame.pack(fill=tk.X, padx=10, pady=(0, 5))
        ttk.Button(header_frame, text="Add Listener", command=self.add_listener_row).pack(side=tk.LEFT, pady=5)

        help_frame = ttk.LabelFrame(self.listeners_frame, text="Listener Help")
        help_frame.pack(fill=tk.BOTH, expand=False, padx=10, pady=(0, 10))
        help_text = (
            "Listeners attach during onMobSpawn (TrustEditor writes mob:addListener calls).\n"
            "Event: Pick an event like WEAPONSKILL_USE, TAKE_DAMAGE, COMBAT_TICK.\n"
            "Tag: Unique id string per listener (used to identify/remove). Auto-updates when you change Event until you edit it manually.\n"
            "Body: Lua function body; signature depends on event. See right-hand help when picking an event.\n"
            "Lifecycle: Added on spawn; removed automatically when the mob despawns.\n"
            "Args: e.g., WEAPONSKILL_USE (mob, target, wsid, tp, action), TAKE_DAMAGE (mob, attacker, damage, element).\n"
            "Keep code light; avoid expensive loops. Use xi/ai helpers already required in the generated file.\n"
        )
        lst_txt = scrolledtext.ScrolledText(help_frame, wrap=tk.WORD, height=6)
        lst_txt.insert("1.0", help_text)
        lst_txt.config(state="disabled")
        lst_txt.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)

        self.listener_rows = []
        self.listener_row_counter = 0

    def build_listener_template(self, event_name, template_key=None):
        signature = LISTENER_SIGNATURES.get(event_name, "function(mobArg, ...)")
        lines = [
            f"-- {event_name}",
            f"-- {LISTENER_HELP.get(event_name, '').strip()}",
            f"return {signature}",
            "{",
        ]
        chosen = LISTENER_TEMPLATES.get(template_key or "", [])
        if not chosen:
            chosen = LISTENER_TEMPLATES.get('LOG_EVENT', [])
        lines.extend([f"    {l}" for l in chosen])
        lines.append("}")
        return "\n".join(lines)

    def listener_event_changed(self, row_data):
        ev = row_data['event_var'].get()
        if ev:
            new_auto_tag = f"{ev}_L{row_data.get('id', 0)}"
            current_tag = row_data['tag_entry'].get()
            prev_auto = row_data.get('auto_tag', '')
            if not current_tag or current_tag == prev_auto:
                row_data['tag_entry'].delete(0, tk.END)
                row_data['tag_entry'].insert(0, new_auto_tag)
            row_data['auto_tag'] = new_auto_tag
        if ev and not row_data['body_text'].get('1.0', tk.END).strip():
            row_data['body_text'].insert("1.0", self.build_listener_template(ev))
        signature = LISTENER_SIGNATURES.get(ev, "")
        help_line = LISTENER_HELP.get(ev, "")
        row_data['signature_label'].configure(text=f"{signature}  {help_line}")

    def add_listener_row(self, event_name="", tag="", body=""):
        row_frame = ttk.Frame(self.listeners_scrollable_frame)
        row_frame.pack(fill=tk.X, pady=4, anchor="w")

        ttk.Label(row_frame, text="Event:").pack(side=tk.LEFT)
        event_frame, event_var = self.create_list_picker(row_frame, LISTENER_EVENTS, width=14, textvariable=tk.StringVar(), title="Pick Listener Event", help_category="LISTENER_EVENT")
        event_var.set(event_name)
        event_frame.pack(side=tk.LEFT, padx=4)

        ttk.Label(row_frame, text="Tag:").pack(side=tk.LEFT)
        tag_entry = ttk.Entry(row_frame, width=12)
        tag_entry.insert(0, tag)
        tag_entry.pack(side=tk.LEFT, padx=4)

        body_frame = ttk.Frame(self.listeners_scrollable_frame)
        body_frame.pack(fill=tk.BOTH, expand=True, padx=4, pady=(0, 6))
        ttk.Label(body_frame, text="Body:").pack(anchor="w")
        body_text = scrolledtext.ScrolledText(body_frame, height=4)
        body_text.insert("1.0", body)
        body_text.pack(fill=tk.BOTH, expand=True)

        sig_label = ttk.Label(body_frame, text="", foreground="#5a5a5a")
        sig_label.pack(anchor="w", pady=(2, 0))

        btn_frame = ttk.Frame(body_frame)
        btn_frame.pack(fill=tk.X, pady=(2, 0))
        ttk.Label(btn_frame, text="Preset:").pack(side=tk.LEFT, padx=(0, 4))
        preset_var = tk.StringVar()
        preset_picker, _ = self.create_list_picker(btn_frame, list(LISTENER_TEMPLATES.keys()), textvariable=preset_var, width=12, title="Pick Listener Preset")
        preset_picker.pack(side=tk.LEFT, padx=(0, 6))
        ttk.Button(btn_frame, text="Apply", width=6, command=lambda ev=event_var, bd=body_text, pv=preset_var: self.apply_listener_template(ev, bd, pv.get())).pack(side=tk.LEFT)
        ttk.Button(btn_frame, text="Remove", command=lambda: self.remove_listener_row(row_frame, body_frame, row_data)).pack(side=tk.RIGHT)

        row_data = {
            'row_frame': row_frame,
            'event_var': event_var,
            'tag_entry': tag_entry,
            'body_text': body_text,
            'body_frame': body_frame,
            'signature_label': sig_label,
            'auto_tag': '',
            'id': self.listener_row_counter + 1,
        }
        self.listener_row_counter += 1
        event_var.trace_add("write", lambda *args, rd=row_data: self.listener_event_changed(rd))
        self.listener_rows.append(row_data)
        self.listener_event_changed(row_data)

    def apply_listener_template(self, event_var, body_text, template_key=None):
        ev = event_var.get()
        if not ev:
            return
        body_text.delete("1.0", tk.END)
        body_text.insert("1.0", self.build_listener_template(ev, template_key))

    def remove_listener_row(self, row_frame, body_frame, row_data=None):
        if row_data and row_data in self.listener_rows:
            self.listener_rows.remove(row_data)
        row_frame.destroy()
        body_frame.destroy()

    def remove_effect_row(self, row_frame):
        for i, (frame, _, _, _) in enumerate(self.effect_rows):
            if frame == row_frame:
                self.effect_rows.pop(i)
                break
        row_frame.destroy()

    def create_code_tab(self):
        header = ttk.Frame(self.code_frame)
        header.pack(fill=tk.X, padx=10, pady=(10, 5))
        ttk.Label(header, text="Extra Lua Code (Inserted at end of onMobSpawn):").pack(side=tk.LEFT)
        help_btn = tk.Button(header, text="?", width=2, height=1, padx=0, pady=0, borderwidth=0, highlightthickness=0,
                             command=self.open_custom_code_help)
        help_btn.pack(side=tk.LEFT, padx=(6, 0))

        self.custom_code = scrolledtext.ScrolledText(self.code_frame, height=20)
        self.custom_code.pack(fill=tk.BOTH, expand=True, padx=10, pady=(0, 10))

    def open_custom_code_help(self):
        help_items = self.get_help_items("CUSTOM_CODE")
        dialog = tk.Toplevel(self)
        dialog.title("Custom Code Help")
        dialog.geometry("700x400")
        dialog.grab_set()

        content_frame = ttk.Frame(dialog)
        content_frame.pack(fill=tk.BOTH, expand=True, padx=8, pady=8)

        listbox = tk.Listbox(content_frame, width=30, exportselection=False)
        listbox.pack(side=tk.LEFT, fill=tk.Y)

        scrollbar = ttk.Scrollbar(content_frame, orient=tk.VERTICAL, command=listbox.yview)
        scrollbar.pack(side=tk.LEFT, fill=tk.Y)
        listbox.configure(yscrollcommand=scrollbar.set)

        detail = scrolledtext.ScrolledText(content_frame, wrap=tk.WORD)
        detail.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=(8, 0))

        for item in help_items:
            listbox.insert(tk.END, item['name'])
        listbox._items = help_items

        def show_detail(index):
            if 0 <= index < len(help_items):
                detail.config(state="normal")
                detail.delete("1.0", tk.END)
                detail.insert("1.0", help_items[index]['info'])
                detail.config(state="disabled")

        def on_select(event=None):
            if listbox.curselection():
                show_detail(listbox.curselection()[0])

        listbox.bind("<<ListboxSelect>>", on_select)
        if help_items:
            listbox.selection_set(0)
            show_detail(0)

    def reset_form(self):
        self.auto_attack_var.set(True)
        self.main_job_var.set('')
        self.sub_job_var.set('NONE')
        self.tp_trigger_var.set('')
        self.tp_select_var.set('')
        self.tp_value_var.set('')
        for row in self.gear_rows:
            row['id_var'].set('')
            row['name_var'].set('')

        for frame, _, _ in list(self.mod_rows):
            self.remove_mod_row(frame)

        for frame, _, _, _, _, _, _ in list(self.gambit_rows):
            self.remove_gambit_row(frame)

        for frame, _, _, _ in list(self.effect_rows):
            self.remove_effect_row(frame)

        for row_data in list(self.listener_rows):
            self.remove_listener_row(row_data['row_frame'], row_data['body_frame'])

        if hasattr(self, "custom_code"):
            self.custom_code.delete('1.0', tk.END)

    def ensure_template_defaults(self, template):
        tpl = copy.deepcopy(template) if template else {}
        tpl.setdefault('auto_attack', True)
        tpl.setdefault('mods', [])
        tpl.setdefault('gambits', [])
        tpl.setdefault('effects', [])
        tpl.setdefault('listeners', [])
        tpl.setdefault('custom_code', '')
        tpl.setdefault('main_job', '')
        tpl.setdefault('sub_job', 'NONE')
        tpl.setdefault('gear', [])
        tp = tpl.get('tp_settings', {}) or {}
        tpl['tp_settings'] = {
            'trigger': tp.get('trigger', ''),
            'select': tp.get('select', ''),
            'value': tp.get('value', '')
        }
        return tpl

    def merge_template_data(self, target, addition):
        if not addition:
            return
        addition = self.ensure_template_defaults(addition)
        target['auto_attack'] = addition.get('auto_attack', target.get('auto_attack', True))

        mod_map = {m['name']: m for m in target['mods'] if m.get('name')}
        for m in addition.get('mods', []):
            if m.get('name'):
                mod_map[m['name']] = m
        target['mods'] = list(mod_map.values())

        def gambit_key(g):
            return (
                g.get('target', ''),
                g.get('condition', ''),
                str(g.get('cond_arg', '')),
                g.get('reaction', ''),
                g.get('selector', ''),
                str(g.get('sel_arg', '')),
            )

        existing_keys = {gambit_key(g) for g in target['gambits']}
        for g in addition.get('gambits', []):
            if gambit_key(g) not in existing_keys:
                target['gambits'].append(g)
                existing_keys.add(gambit_key(g))

        effect_map = {e['effect']: e for e in target['effects'] if e.get('effect')}
        for e in addition.get('effects', []):
            if e.get('effect'):
                effect_map[e['effect']] = e
        target['effects'] = list(effect_map.values())

        for key, val in addition.get('tp_settings', {}).items():
            if val != '' or not target['tp_settings'].get(key):
                target['tp_settings'][key] = val

        if addition.get('custom_code'):
            existing = target.get('custom_code', '')
            target['custom_code'] = (existing + "\n" + addition['custom_code']).strip() if existing else addition['custom_code']
        if addition.get('listeners'):
            target.setdefault('listeners', [])
            target['listeners'].extend(copy.deepcopy(addition.get('listeners', [])))

    def build_job_template(self, main_job, sub_job):
        base_template = self.ensure_template_defaults({})

        if (main_job, sub_job) in JOB_SUB_TEMPLATES:
            base_template = self.ensure_template_defaults(JOB_TEMPLATES.get(main_job, {}))
            self.merge_template_data(base_template, JOB_SUB_TEMPLATES.get((main_job, sub_job)))
        elif main_job in JOB_TEMPLATES:
            base_template = self.ensure_template_defaults(JOB_TEMPLATES.get(main_job))
        else:
            role = JOB_ROLE_MAP.get(main_job, 'MELEE')
            base_template = self.ensure_template_defaults(ROLE_FALLBACKS.get(role, ROLE_FALLBACKS['MELEE']))

        if sub_job and sub_job != 'NONE':
            self.merge_template_data(base_template, SUB_JOB_EXTRAS.get(sub_job))

        base_template['main_job'] = main_job
        base_template['sub_job'] = sub_job or 'NONE'
        return base_template

    def get_help_items(self, category):
        items = []
        if category == "TARGET":
            for k in SORTED_AI_TARGETS:
                desc = TARGET_DESCRIPTIONS.get(k, '')
                items.append({'name': f"{k} ({AI_TARGETS[k]})", 'info': f"{k}\nValue: {AI_TARGETS[k]}\n{desc}"})
        elif category == "CONDITION":
            for k in SORTED_AI_CONDITIONS:
                desc = CONDITION_DESCRIPTIONS.get(k, '')
                arg = CONDITION_ARG_GUIDE.get(k, 'Usually 0 / unused')
                items.append({'name': f"{k} ({AI_CONDITIONS[k]})", 'info': f"{k}\nValue: {AI_CONDITIONS[k]}\nCondition: {desc}\nArg: {arg}"})
        elif category == "COND_ARG":
            items.append({'name': "STATUS", 'info': f"Use xi.effect.* constants ({len(EFFECTS)} available). Examples: xi.effect.POISON, xi.effect.PHALANX."})
            items.append({'name': "STATUS_FLAG", 'info': f"Use xi.effectFlag.* constants ({len(EFFECT_FLAGS)} available). Examples: xi.effectFlag.ERASABLE, xi.effectFlag.DISPELABLE."})
            items.append({'name': "HPP/MPP/TP thresholds", 'info': "Numeric values: percent for HP/MP, raw TP for TP_LT/TP_GTE, missing HP for HP_MISSING."})
            items.append({'name': "RANDOM", 'info': "Percent chance 0-100."})
            items.append({'name': "Spell/Family constants", 'info': f"Selectors often take xi.magic.spell.* or xi.magic.spellFamily.* (spells: {len(MAGIC_SPELLS)}, families: {len(MAGIC_FAMILIES)})."})
            items.append({'name': "JA/WS constants", 'info': "Use xi.ja.*, xi.ws.*, or similar ids when reaction is JA/WS and selector is SPECIFIC."})
        elif category == "REACTION":
            for k in SORTED_AI_REACTIONS:
                desc = REACTION_DESCRIPTIONS.get(k, '')
                items.append({'name': f"{k} ({AI_REACTIONS[k]})", 'info': f"{k}\nValue: {AI_REACTIONS[k]}\nAction: {desc}"})
        elif category == "SELECTOR":
            for k in SORTED_AI_SELECTS:
                desc = SELECTOR_DESCRIPTIONS.get(k, '')
                arg = SELECTOR_ARG_GUIDE.get(k, 'Usually 0')
                items.append({'name': f"{k} ({AI_SELECTS[k]})", 'info': f"{k}\nValue: {AI_SELECTS[k]}\nSelector: {desc}\nSel. Arg: {arg}"})
        elif category == "SEL_ARG":
            items.append({'name': "SPECIFIC", 'info': "Provide explicit constant: xi.magic.spell.*, xi.magic.spellFamily.*, xi.ja.*, xi.ws.*, or numeric id as required by the reaction."})
            items.append({'name': "Families", 'info': f"xi.magic.spellFamily.* ({len(MAGIC_FAMILIES)} options). Examples: CURE, HASTE, DIA, PARALYZE."})
            items.append({'name': "Spells", 'info': f"xi.magic.spell.* ({len(MAGIC_SPELLS)} options). Examples: xi.magic.spell.CURE_IV, xi.magic.spell.FLASH."})
            items.append({'name': "Effects", 'info': f"xi.effect.* ({len(EFFECTS)} options). Often used with STATUS/NOT_STATUS conditions."})
            items.append({'name': "Effect Flags", 'info': f"xi.effectFlag.* ({len(EFFECT_FLAGS)} options). Use with STATUS_FLAG condition; ERASABLE, DISPELABLE, etc."})
            items.append({'name': "Default zero", 'info': "Selectors like HIGHEST/LOWEST/MB_ELEMENT/BEST_SAMBA typically accept 0 when no explicit override is needed."})
        elif category == "TP_TRIGGER":
            for k in SORTED_AI_TP_TRIGGERS:
                desc = TP_TRIGGER_DESCRIPTIONS.get(k, '')
                items.append({'name': f"{k} ({AI_TP_TRIGGERS[k]})", 'info': f"{k}\nValue: {AI_TP_TRIGGERS[k]}\n{desc}"})
        elif category == "TP_SELECT":
            for k in SORTED_AI_SELECTS:
                desc = TP_SELECT_DESCRIPTIONS.get(k, SELECTOR_DESCRIPTIONS.get(k, ''))
                arg = SELECTOR_ARG_GUIDE.get(k, 'Usually 0')
                items.append({'name': f"{k} ({AI_SELECTS[k]})", 'info': f"{k}\nValue: {AI_SELECTS[k]}\nSelector: {desc}\nSel. Arg: {arg}"})
        elif category == "LISTENER_EVENT":
            for ev in LISTENER_EVENTS:
                desc = LISTENER_HELP.get(ev, '')
                items.append({'name': ev, 'info': f"{ev}\n{desc}\nTag: auto-fills as {ev}_L# and updates when you change the event unless you override it. Used to identify/remove listeners.\nBody: Lua code for the callback (preset buttons add examples)."})
        elif category == "CUSTOM_CODE":
            items.append({'name': "onMobSpawn context", 'info': "Code runs inside spellObject.onMobSpawn(mob). 'mob' is available; use mob:addMod, mob:addGambit, mob:addStatusEffectEx, addListener, etc."})
            items.append({'name': "AI helpers", 'info': "ai.t.*, ai.c.*, ai.r.*, ai.s.*, ai.tp.* are available once you require globals/trust/magic. Follow existing trust scripts for patterns."})
            items.append({'name': "Examples", 'info': "mob:addListener('WEAPONSKILL_USE', 'TAG', function(mobArg, target, wsid, tp, action) ... end)\n mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)\n mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PHALANX })"})
            items.append({'name': "Safety", 'info': "Keep code idempotent; avoid heavy loops; do not assume player globals. Validate constants exist in xi.* enums."})
            items.append({'name': "Where to learn", 'info': "Browse scripts/actions/spells/trust/*.lua for patterns; reuse their listeners and gambits. This snippet is appended after the generated blocks in onMobSpawn."})
        return items

    def populate_from_data(self, data):
        data = self.ensure_template_defaults(data)
        self.auto_attack_var.set(data.get('auto_attack', True))
        self.main_job_var.set(data.get('main_job', ''))
        self.sub_job_var.set(data.get('sub_job', 'NONE') or 'NONE')
        gear_map = {g.get('slot'): g for g in data.get('gear', [])}
        for row in self.gear_rows:
            slot = row['slot']
            if slot in gear_map:
                item_id = gear_map[slot].get('item_id', '')
                row['id_var'].set(str(item_id) if item_id else '')
                # Try to get display name from slot list
                display_name = ''
                if item_id:
                    slot_items = get_slot_item_lists().get(slot, [])
                    for item in slot_items:
                        if item['id'] == int(item_id):
                            display_name = item['display']
                            break
                    if not display_name:
                        nm = ITEM_NAMES.get(int(item_id), '')
                        display_name = f"{nm} [{item_id}]" if nm else str(item_id)
                row['name_var'].set(display_name)

        for m in data.get('mods', []):
            self.add_mod_row(m.get('name', ''), m.get('value', ''))

        for g in data.get('gambits', []):
            self.add_gambit_row(
                g.get('target', ''),
                g.get('condition', ''),
                g.get('cond_arg', ''),
                g.get('reaction', ''),
                g.get('selector', ''),
                g.get('sel_arg', '')
            )

        tp = data.get('tp_settings', {})
        self.tp_trigger_var.set(tp.get('trigger', ''))
        self.tp_select_var.set(tp.get('select', ''))
        self.tp_value_var.set(tp.get('value', ''))

        for e in data.get('effects', []):
            self.add_effect_row(e.get('effect', ''), e.get('power', ''), e.get('duration', ''))

        for lst in data.get('listeners', []):
            self.add_listener_row(lst.get('event', ''), lst.get('tag', ''), lst.get('body', ''))

        if data.get('custom_code'):
            self.custom_code.insert('1.0', data.get('custom_code', ''))
        
        # Refresh stats preview
        if hasattr(self, 'refresh_stats_preview'):
            self.refresh_stats_preview()

    def is_form_dirty(self):
        if self.main_job_var.get() or (self.sub_job_var.get() and self.sub_job_var.get() != 'NONE'):
            return True

        if not self.auto_attack_var.get():
            return True

        for row in self.gear_rows:
            if row['id_var'].get():
                return True

        if self.tp_trigger_var.get() or self.tp_select_var.get() or self.tp_value_var.get():
            return True

        if self.custom_code.get('1.0', tk.END).strip():
            return True

        if self.mod_rows or self.gambit_rows or self.effect_rows or self.listener_rows:
            return True

        return False

    def apply_job_template(self):
        main_job = self.main_job_var.get()
        sub_job = self.sub_job_var.get()

        if not main_job:
            messagebox.showwarning("Select a Job", "Choose a main job before applying a player-like preset.")
            return

        template = self.build_job_template(main_job, sub_job)
        if not template:
            messagebox.showerror("Template Missing", f"No template found for {main_job}/{sub_job or 'NONE'}.")
            return

        if self.is_form_dirty():
            proceed = messagebox.askyesno("Replace current values?", "Applying a job template will replace the current form values.")
            if not proceed:
                return

        self.reset_form()
        self.populate_from_data(template)

    def on_trust_selected(self, *args):
        filename = self.current_trust.get()
        if not filename: return

        self.reset_form()

        # Try to load user data first
        json_path = os.path.join(USERDATA_DIR, filename + ".json")
        if os.path.exists(json_path):
            with open(json_path, 'r') as f:
                data = json.load(f)
                self.populate_from_data(data)
        else:
            # If no user data, try to load defaults
            default_path = os.path.join(DEFAULTS_DIR, filename + ".json")
            if os.path.exists(default_path):
                with open(default_path, 'r') as f:
                    data = json.load(f)
                    self.populate_from_data(data)
            # No existing user data or defaults found, start with blank form

    def save_trust(self):
        filename = self.current_trust.get()
        if not filename: return

        # Collect Data
        data = {
            'main_job': self.main_job_var.get(),
            'sub_job': self.sub_job_var.get(),
            'auto_attack': self.auto_attack_var.get(),
            'gear': [],
            'mods': [],
            'gambits': [],
            'tp_settings': {
                'trigger': self.tp_trigger_var.get(),
                'select': self.tp_select_var.get(),
                'value': self.tp_value_var.get()
            },
            'effects': [],
            'listeners': [],
            'custom_code': self.custom_code.get('1.0', tk.END).strip()
        }

        for _, name_var, val_e in self.mod_rows:
            if name_var.get():
                data['mods'].append({'name': name_var.get(), 'value': val_e.get()})

        for row in self.gear_rows:
            if row['id_var'].get():
                try:
                    iid = int(row['id_var'].get())
                except ValueError:
                    continue
                data['gear'].append({
                    'slot': row['slot'],
                    'item_id': iid,
                    'name': ITEM_NAMES.get(iid, '')
                })

        for _, t_var, c_var, c_arg_e, r_var, s_var, s_arg_var in self.gambit_rows:
            if t_var.get():
                data['gambits'].append({
                    'target': t_var.get(),
                    'condition': c_var.get(),
                    'cond_arg': c_arg_e.get(),
                    'reaction': r_var.get(),
                    'selector': s_var.get(),
                    'sel_arg': s_arg_var.get()
                })

        for _, e_var, p_e, d_e in self.effect_rows:
            if e_var.get():
                data['effects'].append({
                    'effect': e_var.get(),
                    'power': p_e.get(),
                    'duration': d_e.get()
                })

        for row_data in self.listener_rows:
            ev_var = row_data['event_var']
            if ev_var.get():
                data['listeners'].append({
                    'event': ev_var.get(),
                    'tag': row_data['tag_entry'].get(),
                    'body': row_data['body_text'].get('1.0', tk.END).strip()
                })

        # Save JSON
        json_path = os.path.join(USERDATA_DIR, filename + ".json")
        with open(json_path, 'w') as f:
            json.dump(data, f, indent=4)

        # Generate Lua
        self.generate_lua(filename, data)
        messagebox.showinfo("Success", f"Saved {filename} and updated Lua file.")

    def restore_to_default(self):
        """Restore the current trust to its default configuration."""
        filename = self.current_trust.get()
        if not filename:
            messagebox.showwarning("No Trust Selected", "Please select a trust first.")
            return
        
        default_path = os.path.join(DEFAULTS_DIR, filename + ".json")
        if not os.path.exists(default_path):
            messagebox.showwarning("No Default Available", f"No default configuration found for {filename}.")
            return
        
        # Confirm action
        confirm = messagebox.askyesno(
            "Restore to Default",
            f"This will restore {filename} to its default configuration.\nAny unsaved changes will be lost.\n\nContinue?"
        )
        if not confirm:
            return
        
        # Load default data
        with open(default_path, 'r') as f:
            data = json.load(f)
        
        # Reset and populate with default data
        self.reset_form()
        self.populate_from_data(data)
        messagebox.showinfo("Restored", f"{filename} has been restored to default configuration.")
    
    def clear_all(self):
        """Clear all values to create a blank trust."""
        filename = self.current_trust.get()
        if not filename:
            messagebox.showwarning("No Trust Selected", "Please select a trust first.")
            return
        
        # Confirm action
        confirm = messagebox.askyesno(
            "Clear All",
            f"This will clear all values for {filename}.\nAny unsaved changes will be lost.\n\nContinue?"
        )
        if not confirm:
            return
        
        # Reset form to blank state
        self.reset_form()
        messagebox.showinfo("Cleared", f"All values for {filename} have been cleared.")

    def generate_lua(self, filename, data):
        name = filename.replace(".lua", "").replace("_", " ").title()
        job_line = ""
        if data.get('main_job'):
            job_line = f"-- Jobs: {data.get('main_job')}/{data.get('sub_job', 'NONE')}\n"
        
        # Helper to format args
        def fmt_arg(val):
            if not val: return "0"
            try:
                return str(int(val))
            except:
                # If it looks like a constant (xi.magic...), leave it
                if "xi." in val or "ai." in val: return val
                return val # Fallback

        mods_str = ""
        for m in data['mods']:
            mods_str += f"    mob:addMod(xi.mod.{m['name']}, {fmt_arg(m['value'])})\n"

        effects_str = ""
        for e in data['effects']:
            # addStatusEffectEx(effect, icon, power, tick, duration, ...)
            # Simplification: using same ID for icon
            effects_str += f"    mob:addStatusEffectEx(xi.effect.{e['effect']}, xi.effect.{e['effect']}, {fmt_arg(e['power'])}, 0, {fmt_arg(e['duration'])})\n"

        gear_setlook = ""
        gear_mods_str = ""
        if data.get('gear'):
            # Slots that affect visual appearance
            visual_slots = ['main', 'sub', 'ranged', 'ammo', 'head', 'body', 'hands', 'legs', 'feet']
            look_parts = []
            for g in data['gear']:
                slot = g.get('slot')
                item_id = g.get('item_id')
                item_name = g.get('name', ITEM_NAMES.get(item_id, ''))
                if slot and item_id:
                    # Only add to look table for visual slots
                    if slot in visual_slots:
                        look_parts.append(f"{slot} = {item_id}")
                    
                    # Add item mods for all slots
                    for mod_id, val in ITEM_MODS.get(item_id, []):
                        mod_name = MOD_ID_TO_NAME.get(mod_id)
                        if mod_name:
                            gear_mods_str += f"    mob:addMod(xi.mod.{mod_name}, {fmt_arg(val)}) -- {slot}: {item_name}\n"
                    
                    # Add weapon stats for weapon slots - use slot-specific mods
                    if item_id in ITEM_WEAPONS and slot in ['main', 'sub', 'ranged']:
                        w = ITEM_WEAPONS[item_id]
                        dmg = w.get('dmg', 0)
                        delay = w.get('delay', 0)
                        gear_mods_str += f"    -- {slot}: {item_name} weapon stats\n"
                        
                        if slot == 'main':
                            gear_mods_str += f"    mob:addMod(xi.mod.MAIN_DMG_RATING, {fmt_arg(dmg)}) -- main weapon dmg\n"
                            gear_mods_str += f"    mob:addMod(xi.mod.DELAY, {fmt_arg(delay)}) -- main weapon delay\n"
                        elif slot == 'sub':
                            gear_mods_str += f"    mob:addMod(xi.mod.SUB_DMG_RATING, {fmt_arg(dmg)}) -- sub weapon dmg\n"
                            # Note: Sub weapon delay typically doesn't apply separately
                        elif slot == 'ranged':
                            gear_mods_str += f"    mob:addMod(xi.mod.RANGED_DMG_RATING, {fmt_arg(dmg)}) -- ranged weapon dmg\n"
                            gear_mods_str += f"    mob:addMod(xi.mod.RANGED_DELAY, {fmt_arg(delay)}) -- ranged weapon delay\n"
            
            if look_parts:
                gear_setlook = "    -- Faux Gear Look\n"
                gear_setlook += "    mob:setLook({ " + ", ".join(look_parts) + " })\n"
            
            if gear_mods_str:
                gear_mods_str = "    -- Gear Mods (from item_mods.sql)\n" + gear_mods_str

        gambits_str = ""
        for g in data['gambits']:
            # mob:addGambit(ai.t.TARGET, { ai.c.HPP_LT, 25 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
            t = f"ai.t.{g['target']}"
            c = f"{{ ai.c.{g['condition']}, {fmt_arg(g['cond_arg'])} }}"
            r = f"{{ ai.r.{g['reaction']}, ai.s.{g['selector']}, {fmt_arg(g['sel_arg'])} }}"
            gambits_str += f"    mob:addGambit({t}, {c}, {r})\n"

        tp_str = ""
        tp_settings = data.get('tp_settings', {})
        if tp_settings.get('trigger'):
            tp_str = f"    mob:setTrustTPSkillSettings(ai.tp.{tp_settings.get('trigger')}, ai.s.{tp_settings.get('select')}, {fmt_arg(tp_settings.get('value'))})\n"

        listeners_str = ""
        for lst in data.get('listeners', []):
            if not lst.get('event'):
                continue
            tag = lst.get('tag') or f"{lst.get('event')}_LISTENER"
            body = lst.get('body', '').strip() or "-- TODO: add listener logic"
            indented_body = "\n".join(f"        {line}" if line.strip() else "" for line in body.splitlines())
            listeners_str += f"    mob:addListener('{lst.get('event')}', '{tag}', function(mobArg, target, param1, param2, action)\n{indented_body}\n    end)\n\n"

        lua_content = f"""-----------------------------------
-- Trust: {name}
-- Custom Trust Generated by TrustEditor
{job_line}-----------------------------------
require("scripts/globals/trust")
require("scripts/globals/magic")

---@type TSpellTrust
local spellObject = {{}}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled({str(data['auto_attack']).lower()})

{mods_str}
{effects_str}
{gear_setlook}{gear_mods_str}\
{gambits_str}
{tp_str}
{listeners_str}\
    -- Custom Code
    {data['custom_code']}
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
"""
        with open(os.path.join(CURRENT_DIR, filename), 'w') as f:
            f.write(lua_content)

if __name__ == "__main__":
    app = TrustEditor()
    app.mainloop()
