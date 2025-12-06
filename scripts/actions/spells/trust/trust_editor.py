import tkinter as tk
from tkinter import ttk, messagebox, scrolledtext
import os
import re
import json
import copy

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

if not os.path.exists(USERDATA_DIR):
    os.makedirs(USERDATA_DIR)

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

    def open_filter_list_dialog(self, values, target_var, title="Select", width=40, height=12):
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
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

        def refresh(filter_text=""):
            listbox.delete(0, tk.END)
            filtered = [v for v in values if filter_text.lower() in v.lower()]
            for item in filtered:
                listbox.insert(tk.END, item)
            if filtered:
                listbox.selection_set(0)
        refresh()

        def choose(event=None):
            if listbox.curselection():
                sel = listbox.get(tk.ACTIVE)
                target_var.set(sel)
            dialog.destroy()

        ttk.Button(dialog, text="Select", command=choose).pack(pady=(0, 8))
        listbox.bind("<Double-Button-1>", choose)
        search_var.trace_add("write", lambda *args: refresh(search_var.get()))
        search_entry.focus_set()

    def create_list_picker(self, parent, values, textvariable=None, width=20, title="Select"):
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
            command=lambda: self.open_filter_list_dialog(values, var, title=title),
        ).pack(side=tk.LEFT, padx=0, pady=0)
        return frame, var

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

        preset_frame = ttk.LabelFrame(self.general_frame, text="Player-like Preset", padding=10)
        preset_frame.pack(fill=tk.X, padx=10, pady=10)

        ttk.Label(preset_frame, text="Main Job").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.main_job_picker, _ = self.create_list_picker(preset_frame, MAIN_JOB_CHOICES, textvariable=self.main_job_var, width=10, title="Pick Main Job")
        self.main_job_picker.grid(row=0, column=1, padx=5, pady=5, sticky="w")

        ttk.Label(preset_frame, text="Sub Job").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.sub_job_picker, _ = self.create_list_picker(preset_frame, SUBJOB_CHOICES, textvariable=self.sub_job_var, width=10, title="Pick Sub Job")
        self.sub_job_picker.grid(row=0, column=3, padx=5, pady=5, sticky="w")

        ttk.Button(preset_frame, text="Apply Job Template", command=self.apply_job_template).grid(row=1, column=0, columnspan=4, pady=5, sticky="w")

        ttk.Checkbutton(self.general_frame, text="Auto Attack Enabled", variable=self.auto_attack_var).pack(pady=10, anchor="w", padx=10)

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

        t_frame, t_var = self.create_list_picker(row_frame, SORTED_AI_TARGETS, width=10, textvariable=tk.StringVar(), title="Pick Target"); t_var.set(t); t_frame.pack(side=tk.LEFT, padx=2)
        c_frame, c_var = self.create_list_picker(row_frame, SORTED_AI_CONDITIONS, width=14, textvariable=tk.StringVar(), title="Pick Condition"); c_var.set(c); c_frame.pack(side=tk.LEFT, padx=2)
        c_arg_e = ttk.Entry(row_frame, width=8); c_arg_e.insert(0, str(c_arg)); c_arg_e.pack(side=tk.LEFT, padx=2)
        r_frame, r_var = self.create_list_picker(row_frame, SORTED_AI_REACTIONS, width=10, textvariable=tk.StringVar(), title="Pick Reaction"); r_var.set(r); r_frame.pack(side=tk.LEFT, padx=2)
        s_frame, s_var = self.create_list_picker(row_frame, SORTED_AI_SELECTS, width=14, textvariable=tk.StringVar(), title="Pick Selector"); s_var.set(s); s_frame.pack(side=tk.LEFT, padx=2)
        
        # Selector Arg: filtered picker with all constants + manual entry support
        s_arg_frame, s_arg_var = self.create_list_picker(row_frame, ALL_CONSTANTS, width=22, textvariable=tk.StringVar(), title="Pick Selector Arg")
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
        trigger_picker, _ = self.create_list_picker(f, SORTED_AI_TP_TRIGGERS, textvariable=self.tp_trigger_var, width=14, title="Pick TP Trigger")
        trigger_picker.grid(row=0, column=1, padx=5, pady=5)

        ttk.Label(f, text="Select:").grid(row=1, column=0, padx=5, pady=5)
        select_picker, _ = self.create_list_picker(f, SORTED_AI_SELECTS, textvariable=self.tp_select_var, width=14, title="Pick TP Selector")
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
            "Effect: Choose xi.effect.* to apply. This is both the effect id and icon.\n"
            "Power: Magnitude (stat bonus, % haste, resist, etc.). Check effect implementation for expected scale.\n"
            "Duration: Seconds the effect lasts; 0 may mean instant or default duration depending on effect.\n"
            "Stacking: Re-applying the same effect overwrites previous power/duration in templates.\n"
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

    def remove_effect_row(self, row_frame):
        for i, (frame, _, _, _) in enumerate(self.effect_rows):
            if frame == row_frame:
                self.effect_rows.pop(i)
                break
        row_frame.destroy()

    def create_code_tab(self):
        ttk.Label(self.code_frame, text="Extra Lua Code (Inserted at end of onMobSpawn):").pack(pady=5)
        self.custom_code = scrolledtext.ScrolledText(self.code_frame, height=20)
        self.custom_code.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)

    def reset_form(self):
        self.auto_attack_var.set(True)
        self.main_job_var.set('')
        self.sub_job_var.set('NONE')
        self.tp_trigger_var.set('')
        self.tp_select_var.set('')
        self.tp_value_var.set('')

        for frame, _, _ in list(self.mod_rows):
            self.remove_mod_row(frame)

        for frame, _, _, _, _, _, _ in list(self.gambit_rows):
            self.remove_gambit_row(frame)

        for frame, _, _, _ in list(self.effect_rows):
            self.remove_effect_row(frame)

        if hasattr(self, "custom_code"):
            self.custom_code.delete('1.0', tk.END)

    def ensure_template_defaults(self, template):
        tpl = copy.deepcopy(template) if template else {}
        tpl.setdefault('auto_attack', True)
        tpl.setdefault('mods', [])
        tpl.setdefault('gambits', [])
        tpl.setdefault('effects', [])
        tpl.setdefault('custom_code', '')
        tpl.setdefault('main_job', '')
        tpl.setdefault('sub_job', 'NONE')
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
        return items

    def populate_from_data(self, data):
        data = self.ensure_template_defaults(data)
        self.auto_attack_var.set(data.get('auto_attack', True))
        self.main_job_var.set(data.get('main_job', ''))
        self.sub_job_var.set(data.get('sub_job', 'NONE') or 'NONE')

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

        if data.get('custom_code'):
            self.custom_code.insert('1.0', data.get('custom_code', ''))

    def is_form_dirty(self):
        if self.main_job_var.get() or (self.sub_job_var.get() and self.sub_job_var.get() != 'NONE'):
            return True

        if not self.auto_attack_var.get():
            return True

        if self.tp_trigger_var.get() or self.tp_select_var.get() or self.tp_value_var.get():
            return True

        if self.custom_code.get('1.0', tk.END).strip():
            return True

        if self.mod_rows or self.gambit_rows or self.effect_rows:
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

        # Load User Data if exists
        json_path = os.path.join(USERDATA_DIR, filename + ".json")
        if os.path.exists(json_path):
            with open(json_path, 'r') as f:
                data = json.load(f)
                self.populate_from_data(data)
        else:
            # No existing user data, start blank (as requested)
            pass

    def save_trust(self):
        filename = self.current_trust.get()
        if not filename: return

        # Collect Data
        data = {
            'main_job': self.main_job_var.get(),
            'sub_job': self.sub_job_var.get(),
            'auto_attack': self.auto_attack_var.get(),
            'mods': [],
            'gambits': [],
            'tp_settings': {
                'trigger': self.tp_trigger_var.get(),
                'select': self.tp_select_var.get(),
                'value': self.tp_value_var.get()
            },
            'effects': [],
            'custom_code': self.custom_code.get('1.0', tk.END).strip()
        }

        for _, name_var, val_e in self.mod_rows:
            if name_var.get():
                data['mods'].append({'name': name_var.get(), 'value': val_e.get()})

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

        # Save JSON
        json_path = os.path.join(USERDATA_DIR, filename + ".json")
        with open(json_path, 'w') as f:
            json.dump(data, f, indent=4)

        # Generate Lua
        self.generate_lua(filename, data)
        messagebox.showinfo("Success", f"Saved {filename} and updated Lua file.")

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
{gambits_str}
{tp_str}
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
