#!/usr/bin/env python3
"""
Generate spell lists from BG-Wiki as the authoritative source for job/spell assignments.

BG-Wiki documents which spells each job can learn and at what level.
We use spell_list.sql to map spell names to spell IDs.

Main/Sub job handling:
- Main job: Gets ALL spells (including level 99 spells)
- Sub job: Gets only spells up to level 59 (game mechanic)
- Both directions created: JOB1_JOB2 and JOB2_JOB1 are different
"""

import re
import json
from pathlib import Path
from collections import defaultdict
from itertools import combinations

# Magic jobs we support in the trust editor
MAGIC_JOBS = ['WHM', 'BLM', 'RDM', 'BRD', 'SMN', 'BLU', 'NIN', 'RUN', 'GEO', 'DRK', 'PLD', 'SCH', 'BST']

# BG-Wiki spell lists with levels (manually curated from BG-Wiki)
BGWIKI_SPELLS = {
    'WHM': {
        'cure': 1, 'dia': 3, 'paralyze': 4, 'banish': 5, 'barstonra': 5,
        'poisona': 6, 'barsleepra': 7, 'protectra': 7, 'protect': 7, 'paralyna': 9,
        'barwatera': 9, 'aquaveil': 10, 'barpoisonra': 10, 'cure_ii': 11,
        'barparalyzra': 12, 'slow': 13, 'baraera': 13, 'blindna': 14, 'silence': 15,
        'deodorize': 15, 'banishga': 15, 'curaga': 16, 'shell': 17, 'shellra': 17,
        'barfira': 17, 'diaga': 18, 'barblindra': 18, 'silena': 19, 'blink': 19,
        'sneak': 20, 'cure_iii': 21, 'barblizzara': 21, 'regen': 21, 'barsilencera': 23,
        'invisible': 25, 'barthundra': 25, 'raise': 25, 'reraise': 25, 'protect_ii': 27,
        'protectra_ii': 27, 'stoneskin': 28, 'cursna': 29, 'banish_ii': 30, 'curaga_ii': 31,
        'erase': 32, 'viruna': 34, 'dia_ii': 36, 'teleport-dem': 36, 'teleport-holla': 36,
        'teleport-mea': 36, 'shell_ii': 37, 'shellra_ii': 37, 'teleport-altep': 38,
        'teleport-yhoat': 38, 'stona': 39, 'barvira': 39, 'banishga_ii': 40, 'cura': 40,
        'haste': 40, 'cure_iv': 41, 'teleport-vahzl': 42, 'barpetra': 43, 'regen_ii': 44,
        'flash': 45, 'protect_iii': 47, 'protectra_iii': 47, 'repose': 48, 'holy': 50,
        'curaga_iii': 51, 'recall-jugner': 53, 'recall-meriph': 53, 'recall-pashh': 53,
        'auspice': 55, 'raise_ii': 56, 'reraise_ii': 56, 'shell_iii': 57, 'shellra_iii': 57,
        'cure_v': 61, 'esuna': 61, 'protect_iv': 63, 'protectra_iv': 63, 'banish_iii': 65,
        'sacrifice': 65, 'regen_iii': 66, 'shell_iv': 68, 'shellra_iv': 68, 'raise_iii': 70,
        'reraise_iii': 70, 'curaga_iv': 71, 'protectra_v': 75, 'shellra_v': 75, 'protect_v': 76,
        'shell_v': 76, 'baramnesra': 78, 'cure_vi': 80, 'boost-vit': 81, 'cura_ii': 83,
        'boost-mnd': 84, 'regen_iv': 86, 'boost-chr': 87, 'boost-agi': 90, 'curaga_v': 91,
        'addle': 93, 'boost-str': 93, 'holy_ii': 95, 'boost-int': 96, 'cura_iii': 96,
        'arise': 99, 'boost-dex': 99, 'reraise_iv': 99, 'full_cure': 99,
    },
    'BLM': {
        'stone': 1, 'poison': 3, 'blind': 4, 'water': 5, 'bind': 7, 'aero': 9,
        'bio': 10, 'blaze_spikes': 10, 'drain': 12, 'fire': 13, 'stonega': 15,
        'shock': 16, 'warp': 17, 'blizzard': 17, 'rasp': 18, 'waterga': 19,
        'ice_spikes': 20, 'sleep': 20, 'choke': 20, 'thunder': 21, 'frost': 22,
        'aeroga': 23, 'burn': 24, 'poisonga': 24, 'aspir': 25, 'tractor': 25,
        'stone_ii': 26, 'drown': 27, 'firaga': 28, 'escape': 29, 'shock_spikes': 30,
        'water_ii': 30, 'sleepga': 31, 'blizzaga': 32, 'aero_ii': 34, 'bio_ii': 35,
        'thundaga': 36, 'fire_ii': 38, 'stonega_ii': 40, 'warp_ii': 40, 'sleep_ii': 41,
        'blizzard_ii': 42, 'poison_ii': 43, 'waterga_ii': 44, 'stun': 45, 'thunder_ii': 46,
        'aeroga_ii': 48, 'freeze': 50, 'stone_iii': 51, 'tornado': 52, 'firaga_ii': 53,
        'quake': 54, 'water_iii': 55, 'retrace': 55, 'sleepga_ii': 56, 'burst': 56,
        'blizzaga_ii': 57, 'flood': 58, 'aero_iii': 59, 'flare': 60, 'thundaga_ii': 61,
        'fire_iii': 62, 'stonega_iii': 63, 'blizzard_iii': 64, 'waterga_iii': 65,
        'thunder_iii': 66, 'aeroga_iii': 67, 'stone_iv': 68, 'firaga_iii': 69, 'water_iv': 70,
        'blizzaga_iii': 71, 'aero_iv': 72, 'fire_iv': 73, 'thundaga_iii': 73, 'blizzard_iv': 74,
        'thunder_iv': 75, 'quake_ii': 75, 'flood_ii': 75, 'tornado_ii': 75, 'flare_ii': 75,
        'freeze_ii': 75, 'burst_ii': 75, 'stone_v': 77, 'water_v': 80, 'stoneja': 81,
        'aero_v': 83, 'aspir_ii': 83, 'waterja': 84, 'break': 85, 'fire_v': 86,
        'aeroja': 87, 'blizzard_v': 89, 'firaja': 90, 'thunder_v': 92, 'blizzaja': 93,
        'comet': 94, 'breakga': 95, 'thundaja': 96, 'meteor': 99, 'stone_vi': 99,
        'water_vi': 99, 'aero_vi': 99, 'fire_vi': 99, 'blizzard_vi': 99, 'thunder_vi': 99,
        'aspir_iii': 99, 'death': 99,
    },
    'RDM': {
        'dia': 1, 'cure': 3, 'stone': 4, 'poison': 5, 'barstone': 5, 'paralyze': 6,
        'protect': 7, 'barsleep': 7, 'blind': 8, 'water': 9, 'barwater': 9,
        'barpoison': 10, 'bio': 10, 'bind': 11, 'aquaveil': 12, 'barparalyze': 12,
        'slow': 13, 'baraero': 13, 'cure_ii': 14, 'aero': 14, 'deodorize': 15,
        'diaga': 15, 'enthunder': 16, 'shell': 17, 'barfire': 17, 'silence': 18,
        'barblind': 18, 'enstone': 18, 'fire': 19, 'blaze_spikes': 20, 'sneak': 20,
        'enaero': 20, 'barblizzard': 21, 'gravity': 21, 'regen': 21, 'enblizzard': 22,
        'blink': 23, 'barsilence': 23, 'blizzard': 24, 'enfire': 24, 'invisible': 25,
        'sleep': 25, 'barthunder': 25, 'cure_iii': 26, 'protect_ii': 27, 'enwater': 27,
        'thunder': 29, 'dia_ii': 31, 'dispel': 32, 'phalanx': 33, 'stoneskin': 34,
        'stone_ii': 35, 'distract': 35, 'bio_ii': 36, 'shell_ii': 37, 'raise': 38,
        'barvirus': 39, 'ice_spikes': 40, 'water_ii': 40, 'refresh': 41, 'frazzle': 42,
        'barpetrify': 43, 'aero_ii': 45, 'sleep_ii': 46, 'poison_ii': 46, 'protect_iii': 47,
        'flurry': 48, 'haste': 48, 'cure_iv': 48, 'fire_ii': 50, 'enthunder_ii': 50,
        'enstone_ii': 52, 'enaero_ii': 54, 'blizzard_ii': 55, 'enblizzard_ii': 56,
        'shell_iii': 57, 'enfire_ii': 58, 'enwater_ii': 60, 'shock_spikes': 60,
        'thunder_ii': 60, 'protect_iv': 63, 'inundation': 64, 'stone_iii': 65, 'water_iii': 67,
        'shell_iv': 68, 'aero_iii': 69, 'fire_iii': 71, 'blizzard_iii': 73, 'thunder_iii': 75,
        'dia_iii': 75, 'slow_ii': 75, 'paralyze_ii': 75, 'phalanx_ii': 75, 'bio_iii': 75,
        'blind_ii': 75, 'protect_v': 77, 'regen_ii': 77, 'stone_iv': 77, 'baramnesia': 78,
        'water_iv': 80, 'gain-vit': 81, 'refresh_ii': 82, 'addle': 83, 'aero_iv': 83,
        'gain-mnd': 84, 'distract_ii': 85, 'fire_iv': 86, 'gain-chr': 87, 'break': 87,
        'shell_v': 87, 'blizzard_iv': 89, 'gain-agi': 90, 'frazzle_ii': 92, 'thunder_iv': 92,
        'gain-str': 93, 'raise_ii': 95, 'temper': 95, 'gain-int': 96, 'flurry_ii': 96,
        'haste_ii': 96, 'gravity_ii': 98, 'gain-dex': 99, 'stone_v': 99, 'water_v': 99,
        'aero_v': 99, 'fire_v': 99, 'blizzard_v': 99, 'thunder_v': 99, 'addle_ii': 99,
        'distract_iii': 99, 'frazzle_iii': 99, 'refresh_iii': 99, 'temper_ii': 99,
    },
    'BRD': {
        'knight\'s_minne': 1, 'soul_voice': 1, 'valor_minuet': 3, 'army\'s_paeon': 5,
        'foe_requiem': 7, 'herb_pastoral': 9, 'light_threnody': 10, 'sword_madrigal': 11,
        'dark_threnody': 12, 'sheepfoe_mambo': 13, 'earth_threnody': 14, 'army\'s_paeon_ii': 15,
        'foe_lullaby': 16, 'water_threnody': 16, 'foe_requiem_ii': 17, 'wind_threnody': 18,
        'scop\'s_operetta': 19, 'fire_threnody': 20, 'knight\'s_minne_ii': 21,
        'enchanting_etude': 22, 'ice_threnody': 22, 'valor_minuet_ii': 23,
        'lightning_threnody': 24, 'spirited_etude': 24, 'mage\'s_ballad': 25,
        'learned_etude': 26, 'horde_lullaby': 27, 'quick_etude': 28, 'advancing_march': 29,
        'vivacious_etude': 30, 'hunter\'s_prelude': 31, 'dextrous_etude': 32,
        'fowl_aubade': 33, 'magic_finale': 33, 'sinewy_etude': 34, 'army\'s_paeon_iii': 35,
        'light_carol': 36, 'foe_requiem_iii': 37, 'raptor_mazurka': 37, 'earth_carol': 38,
        'battlefield_elegy': 39, 'water_carol': 40, 'knight\'s_minne_iii': 41,
        'wind_carol': 42, 'valor_minuet_iii': 43, 'fire_carol': 44, 'army\'s_paeon_iv': 45,
        'ice_carol': 46, 'foe_requiem_iv': 47, 'lightning_carol': 48, 'goblin_gavotte': 49,
        'dark_carol': 50, 'blade_madrigal': 51, 'dragonfoe_mambo': 53, 'gold_capriccio': 54,
        'mage\'s_ballad_ii': 55, 'shining_fantasia': 56, 'foe_requiem_v': 57,
        'carnage_elegy': 59, 'victory_march': 60, 'knight\'s_minne_iv': 61,
        'bewitching_etude': 62, 'valor_minuet_iv': 63, 'logical_etude': 64,
        'army\'s_paeon_v': 65, 'sage_etude': 66, 'foe_requiem_vi': 67, 'swift_etude': 68,
        'puppet\'s_operetta': 69, 'vital_etude': 70, 'archer\'s_prelude': 71,
        'goddess\'_hymnus': 71, 'uncanny_etude': 72, 'chocobo_mazurka': 73,
        'warding_round': 73, 'herculean_etude': 74, 'maiden\'s_virelai': 75,
        'adventurer\'s_dirge': 75, 'foe_sirvente': 75, 'foe_requiem_vii': 76,
        'army\'s_paeon_vi': 78, 'knight\'s_minne_v': 80, 'earth_carol_ii': 81,
        'sentinel\'s_scherzo': 82, 'foe_lullaby_ii': 83, 'water_carol_ii': 84,
        'mage\'s_ballad_iii': 85, 'valor_minuet_v': 87, 'wind_carol_ii': 87,
        'fire_carol_ii': 90, 'horde_lullaby_ii': 92, 'ice_carol_ii': 93,
        'pining_nocturne': 95, 'lightning_carol_ii': 96, 'light_carol_ii': 99,
        'dark_carol_ii': 99, 'light_threnody_ii': 99, 'dark_threnody_ii': 99,
        'earth_threnody_ii': 99, 'water_threnody_ii': 99, 'wind_threnody_ii': 99,
        'fire_threnody_ii': 99, 'ice_threnody_ii': 99, 'lightning_threnody_ii': 99,
        'honor_march': 99, 'aria_of_passion': 99,
    },
    'RUN': {
        'barstone': 4, 'barsleep': 6, 'barwater': 8, 'barpoison': 9, 'shell': 10,
        'barparalyze': 11, 'baraero': 12, 'aquaveil': 15, 'barfire': 16, 'barblind': 17,
        'barblizzard': 20, 'protect': 20, 'barsilence': 22, 'regen': 23, 'barthunder': 24,
        'shell_ii': 30, 'blink': 35, 'barvirus': 38, 'protect_ii': 40, 'barpetrify': 42,
        'blaze_spikes': 45, 'flash': 45, 'regen_ii': 48, 'shell_iii': 50, 'stoneskin': 55,
        'foil': 58, 'protect_iii': 60, 'refresh': 62, 'ice_spikes': 65, 'phalanx': 68,
        'regen_iii': 70, 'shell_iv': 70, 'baramnesia': 76, 'protect_iv': 80, 'shock_spikes': 85,
        'crusade': 88, 'shell_v': 90, 'regen_iv': 99, 'temper': 99,
    },
    'GEO': {
        'indi-poison': 1, 'indi-voidance': 4, 'stone': 4, 'geo-poison': 5,
        'geo-voidance': 8, 'water': 9, 'indi-precision': 10, 'aero': 14,
        'geo-precision': 14, 'drain': 15, 'indi-regen': 15, 'indi-attunement': 16,
        'fire': 19, 'geo-regen': 19, 'geo-attunement': 20, 'indi-focus': 22,
        'blizzard': 24, 'stonera': 25, 'geo-focus': 26, 'indi-barrier': 28, 'thunder': 29,
        'indi-refresh': 30, 'aspir': 30, 'indi-chr': 30, 'watera': 30, 'geo-barrier': 32,
        'indi-mnd': 33, 'indi-fury': 34, 'geo-refresh': 34, 'geo-chr': 34, 'stone_ii': 34,
        'aera': 35, 'sleep': 35, 'indi-int': 36, 'geo-mnd': 37, 'geo-fury': 38,
        'water_ii': 38, 'indi-agi': 39, 'indi-fend': 40, 'geo-int': 40, 'fira': 40,
        'aero_ii': 42, 'indi-vit': 42, 'geo-agi': 43, 'geo-fend': 44, 'indi-dex': 45,
        'blizzara': 45, 'fire_ii': 46, 'indi-acumen': 46, 'geo-vit': 46, 'indi-str': 48,
        'indi-slow': 48, 'geo-dex': 49, 'blizzard_ii': 50, 'geo-acumen': 50, 'thundara': 50,
        'indi-torpor': 52, 'geo-str': 52, 'geo-slow': 52, 'thunder_ii': 54, 'geo-torpor': 56,
        'indi-slip': 58, 'stone_iii': 58, 'water_iii': 61, 'geo-slip': 62, 'aero_iii': 64,
        'indi-languor': 64, 'fire_iii': 67, 'indi-paralysis': 68, 'geo-languor': 68,
        'blizzard_iii': 70, 'indi-vex': 70, 'sleep_ii': 70, 'stonera_ii': 70,
        'geo-paralysis': 72, 'thunder_iii': 73, 'geo-vex': 74, 'watera_ii': 75,
        'indi-frailty': 76, 'stone_iv': 76, 'water_iv': 79, 'geo-frailty': 80,
        'aera_ii': 80, 'aero_iv': 82, 'indi-wilt': 82, 'fira_ii': 85, 'fire_iv': 85,
        'geo-wilt': 86, 'blizzard_iv': 88, 'indi-gravity': 88, 'indi-malaise': 88,
        'aspir_ii': 90, 'blizzara_ii': 90, 'thunder_iv': 91, 'geo-malaise': 92,
        'geo-gravity': 92, 'indi-haste': 93, 'indi-fade': 94, 'thundara_ii': 95,
        'geo-haste': 97, 'geo-fade': 98, 'stone_v': 99, 'water_v': 99, 'aero_v': 99,
        'fire_v': 99, 'blizzard_v': 99, 'thunder_v': 99, 'aspir_iii': 99,
        'stonera_iii': 99, 'watera_iii': 99, 'aera_iii': 99, 'fira_iii': 99,
        'blizzara_iii': 99, 'thundara_iii': 99,
    },
    'NIN': {
        'tonko_ichi': 9, 'utsusemi_ichi': 12, 'katon_ichi': 15, 'suiton_ichi': 15,
        'doton_ichi': 15, 'hyoton_ichi': 15, 'huton_ichi': 15, 'raiton_ichi': 15,
        'kurayami_ichi': 19, 'hojo_ichi': 23, 'monomi_ichi': 25, 'dokumori_ichi': 27,
        'jubaku_ichi': 30, 'tonko_ni': 34, 'utsusemi_ni': 37, 'katon_ni': 40,
        'suiton_ni': 40, 'doton_ni': 40, 'hyoton_ni': 40, 'huton_ni': 40, 'raiton_ni': 40,
        'kurayami_ni': 44, 'hojo_ni': 48, 'katon_san': 75, 'suiton_san': 75,
        'doton_san': 75, 'hyoton_san': 75, 'huton_san': 75, 'raiton_san': 75,
        'aisha_ichi': 78, 'yurin_ichi': 83, 'myoshu_ichi': 85, 'migawari_ichi': 88,
        'gekka_ichi': 88, 'yain_ichi': 91, 'kakka_ichi': 93, 'utsusemi_san': 99,
    },
    'DRK': {
        'drain': 10, 'bio': 15, 'aspir': 20, 'absorb-mnd': 31, 'tractor': 32,
        'absorb-chr': 33, 'absorb-vit': 35, 'stun': 37, 'absorb-agi': 37,
        'absorb-int': 39, 'bio_ii': 40, 'absorb-dex': 41, 'absorb-str': 43,
        'absorb-tp': 45, 'absorb-acc': 61, 'drain_ii': 62, 'dread_spikes': 71,
        'aspir_ii': 78, 'endark': 85, 'absorb-attri': 91, 'endark_ii': 99,
        'drain_iii': 99, 'stone': 5, 'water': 11, 'aero': 17, 'fire': 23,
        'blizzard': 29, 'thunder': 35, 'stone_ii': 42, 'water_ii': 48, 'aero_ii': 54,
        'fire_ii': 60, 'blizzard_ii': 66, 'thunder_ii': 72, 'stone_iii': 76,
        'water_iii': 80, 'aero_iii': 84, 'fire_iii': 88, 'blizzard_iii': 92,
        'thunder_iii': 96, 'poison': 6, 'bind': 20, 'poisonga': 26, 'sleep': 30,
        'poison_ii': 46, 'sleep_ii': 56, 'break': 95,
    },
    'PLD': {
        'banish': 7, 'banishga': 30, 'banish_ii': 34, 'flash': 37, 'holy': 55,
        'enlight': 85, 'holy_ii': 99, 'enlight_ii': 99, 'cure': 5, 'cure_ii': 17,
        'cure_iii': 30, 'raise': 50, 'cure_iv': 55, 'protect': 10, 'shell': 20,
        'protect_ii': 30, 'shell_ii': 40, 'protect_iii': 50, 'shell_iii': 60,
        'reprisal': 61, 'protect_iv': 70, 'phalanx': 77, 'shell_iv': 80,
        'crusade': 88, 'protect_v': 90,
    },
    'SCH': {
        'stone': 4, 'kaustra': 5, 'embrava': 5, 'cure': 5, 'water': 8, 'protect': 10,
        'poisona': 10, 'paralyna': 12, 'aero': 12, 'aquaveil': 13, 'deodorize': 15,
        'fire': 16, 'cure_ii': 17, 'blindna': 17, 'regen': 18, 'geohelix': 18,
        'shell': 20, 'sneak': 20, 'blizzard': 20, 'hydrohelix': 20, 'drain': 21,
        'silena': 22, 'anemohelix': 22, 'thunder': 24, 'pyrohelix': 24, 'invisible': 25,
        'cryohelix': 26, 'ionohelix': 28, 'blink': 30, 'cure_iii': 30, 'protect_ii': 30,
        'stone_ii': 30, 'sleep': 30, 'blaze_spikes': 30, 'noctohelix': 30, 'cursna': 32,
        'dispel': 32, 'luminohelix': 32, 'water_ii': 34, 'raise': 35, 'reraise': 35,
        'aspir': 36, 'regen_ii': 37, 'aero_ii': 38, 'erase': 39, 'shell_ii': 40,
        'sandstorm': 41, 'fire_ii': 42, 'rainstorm': 42, 'windstorm': 43, 'stoneskin': 44,
        'firestorm': 44, 'hailstorm': 45, 'viruna': 46, 'blizzard_ii': 46, 'klimaform': 46,
        'thunderstorm': 46, 'voidstorm': 47, 'aurorastorm': 48, 'stona': 50, 'protect_iii': 50,
        'ice_spikes': 50, 'thunder_ii': 51, 'stone_iii': 54, 'cure_iv': 55, 'water_iii': 57,
        'regen_iii': 59, 'shell_iii': 60, 'aero_iii': 60, 'fire_iii': 63, 'sleep_ii': 65,
        'protect_iv': 66, 'blizzard_iii': 66, 'thunder_iii': 69, 'stone_iv': 70, 'raise_ii': 70,
        'reraise_ii': 70, 'shock_spikes': 70, 'water_iv': 71, 'shell_iv': 71, 'aero_iv': 72,
        'fire_iv': 73, 'blizzard_iv': 74, 'thunder_iv': 75, 'stone_v': 79, 'regen_iv': 79,
        'protect_v': 80, 'water_v': 83, 'animus_augeo': 85, 'animus_minuo': 85, 'aero_v': 87,
        'adloquium': 88, 'shell_v': 90, 'break': 90, 'fire_v': 91, 'raise_iii': 91,
        'reraise_iii': 91, 'blizzard_v': 95, 'aspir_ii': 97, 'regen_v': 99, 'thunder_v': 99,
        'sandstorm_ii': 99, 'rainstorm_ii': 99, 'windstorm_ii': 99, 'firestorm_ii': 99,
        'hailstorm_ii': 99, 'thunderstorm_ii': 99, 'voidstorm_ii': 99, 'aurorastorm_ii': 99,
        'geohelix_ii': 99, 'hydrohelix_ii': 99, 'anemohelix_ii': 99, 'pyrohelix_ii': 99,
        'cryohelix_ii': 99, 'ionohelix_ii': 99, 'noctohelix_ii': 99, 'luminohelix_ii': 99,
    },
    'SMN': {
        'light_spirit': 1, 'fire_spirit': 1, 'ice_spirit': 1, 'air_spirit': 1,
        'earth_spirit': 1, 'thunder_spirit': 1, 'water_spirit': 1, 'dark_spirit': 1,
        'carbuncle': 1, 'cait_sith': 1, 'ifrit': 1, 'shiva': 1, 'garuda': 1, 'titan': 1,
        'ramuh': 1, 'leviathan': 1, 'fenrir': 1, 'diabolos': 1, 'siren': 1, 'punch': 1,
        'rock_throw': 1, 'barracuda_dive': 1, 'claw': 1, 'welt': 1, 'axe_kick': 1,
        'shock_strike': 1, 'camisado': 1, 'regal_scratch': 1, 'poison_nails': 5,
        'moonlit_charge': 5, 'fire_ii': 10, 'stone_ii': 10, 'water_ii': 10, 'aero_ii': 10,
        'blizzard_ii': 10, 'thunder_ii': 10, 'crescent_fang': 10, 'thunderspark': 19,
        'rock_buster': 21, 'burning_strike': 23, 'roundhouse': 25, 'tail_whip': 26,
        'double_punch': 30, 'megalith_throw': 35, 'double_slap': 50, 'meteorite': 55,
        'fire_iv': 60, 'stone_iv': 60, 'water_iv': 60, 'aero_iv': 60, 'blizzard_iv': 60,
        'thunder_iv': 60, 'sonic_buffet': 65, 'eclipse_bite': 65, 'nether_blast': 65,
        'flaming_crush': 70, 'mountain_buster': 70, 'spinning_dive': 70, 'predator_claws': 70,
        'rush': 70, 'chaotic_strike': 70, 'zantetsuken': 75, 'meteor_strike': 75,
        'geocrush': 75, 'grand_fall': 75, 'wind_blade': 75, 'tornado_ii': 75,
        'heavenly_strike': 75, 'thunderstorm': 75, 'level_holy': 75, 'holy_mist': 76,
        'lunar_bay': 78, 'night_terror': 80, 'conflag_strike': 99, 'volt_strike': 99,
        'hysteric_assault': 99, 'crag_throw': 99, 'blindside': 99, 'regal_gash': 99,
        'impact': 99, 'altana\'s_favor': 1, 'healing_ruby': 1, 'lunatic_voice': 15,
        'raise_ii': 15, 'somnolence': 20, 'lunar_cry': 21, 'shining_ruby': 24,
        'mewing_lullaby': 25, 'aerial_armor': 25, 'frost_armor': 28, 'nightmare': 29,
        'reraise_ii': 30, 'rolling_thunder': 31, 'katabatic_blades': 31, 'lunar_roar': 32,
        'slowga': 33, 'whispering_wind': 36, 'ultimate_terror': 37, 'crimson_howl': 38,
        'sleepga': 39, 'lightning_armor': 42, 'chinook': 42, 'ecliptic_growl': 43,
        'glittering_ruby': 44, 'earthen_ward': 46, 'spring_water': 47, 'hastega': 48,
        'noctoshield': 49, 'bitter_elegy': 50, 'ecliptic_howl': 54, 'eerie_eye': 55,
        'dream_shroud': 56, 'healing_ruby_ii': 65, 'perfect_defense': 75,
        'deconstruction': 75, 'chronoshift': 75, 'earthen_armor': 82, 'tidal_roar': 84,
        'fleet_wind': 86, 'inferno_howl': 88, 'wind\'s_blessing': 88, 'diamond_storm': 90,
        'shock_squall': 92, 'soothing_ruby': 94, 'heavenward_howl': 96,
        'pavor_nocturnus': 98, 'pacifying_ruby': 99, 'hastega_ii': 99,
        'soothing_current': 99, 'crystal_blessing': 99, 'astral_flow': 1,
        'elemental_siphon': 50, 'apogee': 70, 'mana_cede': 87, 'astral_conduit': 96,
        'assault': 1, 'retreat': 1, 'release': 1, 'avatar\'s_favor': 55,
        'atomos': 75, 'alexander': 75, 'odin': 75,
    },
    'BLU': {
        'pollen': 1, 'sandspin': 1, 'foot_kick': 1, 'sprout_smack': 4, 'wild_oats': 4,
        'power_attack': 4, 'cocoon': 8, 'metallic_body': 8, 'queasyshroom': 8,
        'battle_dance': 12, 'feather_storm': 12, 'head_butt': 12, 'healing_breeze': 16,
        'sheep_song': 16, 'helldive': 16, 'cursed_sphere': 18, 'blastbomb': 18,
        'bludgeon': 18, 'blood_drain': 20, 'claw_cyclone': 20, 'poison_breath': 22,
        'soporific': 24, 'screwdriver': 26, 'bomb_toss': 28, 'grand_slam': 30,
        'wild_carrot': 30, 'chaotic_eye': 32, 'sound_blast': 32, 'death_ray': 34,
        'smite_of_rage': 34, 'digest': 36, 'pinecone_bomb': 36, 'blank_gaze': 38,
        'jet_stream': 38, 'uppercut': 38, 'mysterious_light': 40, 'terror_touch': 40,
        'mp_drainkiss': 42, 'venom_shell': 42, 'stinking_gas': 44, 'blitzstrahl': 44,
        'mandibular_bite': 44, 'awful_eye': 46, 'geist_wall': 46, 'magnetite_cloud': 46,
        'jettatura': 48, 'blood_saber': 48, 'refueling': 48, 'sickle_slash': 48,
        'ice_break': 50, 'self-destruct': 50, 'frightful_roar': 50, 'cold_wave': 52,
        'filamented_hold': 52, 'hecatomb_wave': 54, 'radiant_breath': 54,
        'feather_barrier': 56, 'light_of_penance': 58, 'flying_hip_press': 58,
        'magic_fruit': 58, 'dimensional_death': 60, 'spiral_spin': 60, 'death_scissors': 60,
        'eyes_on_me': 61, 'bad_breath': 61, 'maelstrom': 61, 'seedspray': 61,
        '1000_needles': 62, 'memento_mori': 62, 'body_slam': 62, 'hydro_shot': 63,
        'frypan': 63, 'frenetic_rip': 63, 'spinal_cleave': 63, 'voracious_trunk': 64,
        'feather_tickle': 64, 'yawn': 64, 'infrasonics': 65, 'zephyr_mantle': 65,
        'corrosive_ooze': 66, 'sandspray': 66, 'frost_breath': 66, 'diamondhide': 67,
        'enervation': 67, 'firespit': 68, 'warm-up': 68, 'regurgitation': 69,
        'tail_slap': 69, 'hysteric_barrage': 69, 'asuran_claws': 70, 'cannonball': 70,
        'amplification': 70, 'heat_breath': 71, 'lowing': 71, 'triumphant_roar': 71,
        'saline_coat': 72, 'disseverment': 72, 'sub-zero_smash': 72, 'temporal_shift': 73,
        'ram_charge': 73, 'mind_blast': 73, 'actinic_burst': 74, 'reactor_cool': 74,
        'magic_hammer': 74, 'exuviation': 75, 'plasma_charge': 75, 'vertical_cleave': 75,
        'plenilune_embrace': 76, 'acrid_stream': 77, 'leafstorm': 77,
        'cimicine_discharge': 78, 'regeneration': 78, 'animating_wail': 79,
        'battery_charge': 79, 'blazing_bound': 80, 'demoralizing_roar': 80,
        'final_sting': 81, 'goblin_rush': 81, 'vanity_dive': 82, 'magic_barrier': 82,
        'whirl_of_rage': 83, 'benthic_typhoon': 83, 'auroral_drape': 84, 'osmosis': 84,
        'quad_continuum': 85, 'fantod': 85, 'thermal_pulse': 86, 'empty_thrash': 87,
        'dream_flower': 87, 'occultation': 88, 'charged_whisker': 88, 'winds_of_promy': 89,
        'delta_thrust': 89, 'evryone_grudge': 90, 'reaving_wind': 90, 'barrier_tusk': 91,
        'mortal_ray': 91, 'water_bomb': 92, 'heavy_strike': 92, 'dark_orb': 93,
        'white_wind': 94, 'sudden_lunge': 95, 'thunderbolt': 95, 'harden_shell': 95,
        'quadrastrike': 96, 'vapor_spray': 96, 'absolute_terror': 96, 'thunder_breath': 97,
        'gates_of_hades': 97, 'tourbillion': 97, 'orcish_counterstance': 98,
        'amorphic_spikes': 98, 'pyric_bulwark': 98, 'wind_breath': 99, 'barbed_crescent': 99,
    },
    'BST': {
        # BST has very limited magic - mostly pet-related abilities, not spells
        # Using basic support magic from original lists
    },
}

def get_spell_id_map():
    """Load spell name to ID mapping from spell_list.sql"""
    import json
    try:
        with open('/tmp/spell_id_map.json') as f:
            return json.load(f)
    except Exception as e:
        print(f"Error loading spell map: {e}")
        return {}

def generate_corrected_spells():
    """Generate spell lists with proper main/sub job handling"""
    spell_map = get_spell_id_map()

    # Build job spell lists using BG Wiki as source
    spell_lists = {}  # job_name -> [(spell_id, level), ...]
    all_spell_levels = {}  # spell_id -> level (for reference)
    unmatched = defaultdict(list)  # Track which spells couldn't be matched

    for job_name, wiki_spells in BGWIKI_SPELLS.items():
        spell_lists[job_name] = []

        for spell_name, level in wiki_spells.items():
            # Try exact match first
            spell_id = spell_map.get(spell_name)

            if not spell_id:
                # Try with underscores
                alt_name = spell_name.replace('-', '_').replace(' ', '_').lower()
                spell_id = spell_map.get(alt_name)

            if spell_id:
                spell_lists[job_name].append((spell_id, level))
                if spell_id not in all_spell_levels:
                    all_spell_levels[spell_id] = level
            else:
                unmatched[job_name].append(spell_name)

    return spell_lists, all_spell_levels, unmatched

def generate_python_code(spell_lists):
    """Generate Python spell list definitions with both directions and level 59 cap for subs"""
    lines = []
    lines.append("# " + "=" * 78)
    lines.append("# AUTO-GENERATED SPELL LISTS FOR JOBS AND JOB COMBINATIONS")
    lines.append("# Generated by generate_spell_lists_from_bgwiki.py")
    lines.append("# Source: BG-Wiki (authoritative source for job/spell assignments)")
    lines.append("# ")
    lines.append("# These lists contain spell IDs that each job can actually learn.")
    lines.append("# For main/sub combinations: main job gets ALL spells, sub job limited to level 59.")
    lines.append("# " + "=" * 78)
    lines.append("")

    # Single job spell lists
    lines.append("# Single Job Spell Lists")
    lines.append("# " + "-" * 76)
    lines.append("")

    for job_name in sorted(MAGIC_JOBS):
        if job_name not in spell_lists:
            continue

        spell_data = spell_lists[job_name]
        spell_ids = sorted([sid for sid, _ in spell_data])
        var_name = f"{job_name}_SPELLS"

        lines.append(f"{var_name} = [")
        if spell_ids:
            for i, spell_id in enumerate(spell_ids):
                if i % 12 == 0:
                    lines.append("    ")
                lines[-1] += f"{spell_id:4d},"
            # Remove trailing comma from last line
            lines[-1] = lines[-1].rstrip(',')
        lines.append("]")
        lines.append("")

    # Job combination spell lists with proper main/sub handling
    lines.append("")
    lines.append("# Job Combination Spell Lists (Main Job + Sub Job)")
    lines.append("# " + "-" * 76)
    lines.append("# Main job: ALL spells | Sub job: spells level 59 and below")
    lines.append("")

    for job1_name, job2_name in sorted(combinations(MAGIC_JOBS, 2)):
        # Both directions: job1_job2 (job1 is main) and job2_job1 (job2 is main)
        for main_job, sub_job in [(job1_name, job2_name), (job2_name, job1_name)]:
            if main_job not in spell_lists or sub_job not in spell_lists:
                continue

            combo_name = f"{main_job}_{sub_job}_SPELLS"

            # Main job: all spells
            main_spells = set(sid for sid, _ in spell_lists[main_job])

            # Sub job: only spells level 59 and below
            sub_spells_lv59 = set(
                sid for sid, level in spell_lists[sub_job]
                if level <= 59
            )

            combined_spell_ids = sorted(list(main_spells | sub_spells_lv59))

            lines.append(f"{combo_name} = [")
            if combined_spell_ids:
                for i, spell_id in enumerate(combined_spell_ids):
                    if i % 12 == 0:
                        lines.append("    ")
                    lines[-1] += f"{spell_id:4d},"
                # Remove trailing comma from last line
                lines[-1] = lines[-1].rstrip(',')
            lines.append("]")
            lines.append("")

    return "\n".join(lines)

def generate_sql_insertions(spell_lists, spell_levels, start_list_id=566):
    """Generate SQL INSERT statements with proper level ranges and main/sub handling"""
    lines = []
    list_id = start_list_id
    list_id_map = {}

    lines.append("-- " + "=" * 76)
    lines.append("-- AUTO-GENERATED SPELL LISTS FOR JOBS AND JOB COMBINATIONS")
    lines.append("-- Generated by generate_spell_lists_from_bgwiki.py")
    lines.append("-- Source: BG-Wiki spell/job assignments with proper main/sub job handling")
    lines.append("-- Main/Sub: Main job gets ALL spells, sub job limited to level 59")
    lines.append("-- " + "=" * 76)
    lines.append("")

    stats = {'total_entries': 0, 'with_levels': 0}

    # Single job lists
    lines.append("-- Single Job Spell Lists")
    lines.append("-- " + "=" * 76)
    lines.append("")

    for job_name in sorted(MAGIC_JOBS):
        if job_name not in spell_lists:
            continue

        spell_data = spell_lists[job_name]
        list_id_map[job_name] = list_id

        lines.append(f"-- {job_name} ({list_id})")
        for spell_id, level in spell_data:
            # Spell learn level (not a range - both min and max are the learn level)
            lvl = level
            stats['total_entries'] += 1
            stats['with_levels'] += 1
            lines.append(f"INSERT INTO `mob_spell_lists` VALUES ('{job_name}',{list_id},{spell_id},{lvl},{lvl});")
        lines.append("")
        list_id += 1

    # Job combination lists with proper main/sub handling
    lines.append("")
    lines.append("-- Job Combination Spell Lists (Main Job + Sub Job)")
    lines.append("-- " + "=" * 76)
    lines.append("-- Main job: ALL spells | Sub job: spells level 59 and below")
    lines.append("")

    for job1_name, job2_name in sorted(combinations(MAGIC_JOBS, 2)):
        # Both directions
        for main_job, sub_job in [(job1_name, job2_name), (job2_name, job1_name)]:
            if main_job not in spell_lists or sub_job not in spell_lists:
                continue

            combo_name = f"{main_job}_{sub_job}"

            # Main job: all spells
            main_spells = {sid: lvl for sid, lvl in spell_lists[main_job]}

            # Sub job: only spells level 59 and below
            sub_spells_lv59 = {
                sid: lvl for sid, lvl in spell_lists[sub_job]
                if lvl <= 59
            }

            # Combine: use main job level if in both, otherwise use sub job level
            combined_spells = {}
            for sid, lvl in main_spells.items():
                combined_spells[sid] = lvl
            for sid, lvl in sub_spells_lv59.items():
                if sid not in combined_spells:
                    combined_spells[sid] = lvl

            list_id_map[combo_name] = list_id

            lines.append(f"-- {combo_name} ({list_id})")
            for spell_id in sorted(combined_spells.keys()):
                level = combined_spells[spell_id]
                # Spell learn level (not a range - both min and max are the learn level)
                lvl = level
                stats['total_entries'] += 1
                stats['with_levels'] += 1
                lines.append(f"INSERT INTO `mob_spell_lists` VALUES ('{combo_name}',{list_id},{spell_id},{lvl},{lvl});")
            lines.append("")
            list_id += 1

    lines.append(f"-- Total new spell lists added: {list_id - start_list_id}")
    lines.append(f"-- IDs used: {start_list_id} to {list_id - 1}")
    lines.append(f"-- Total spell entries: {stats['total_entries']:,}")
    lines.append(f"-- Entries with level data: {stats['with_levels']:,}")

    return "\n".join(lines), list_id_map, list_id, stats

def main():
    print("=" * 80)
    print("GENERATING SPELL LISTS FROM BG-WIKI")
    print("=" * 80)
    print()

    print("Step 1: Loading spell ID map from spell_list.sql...")
    spell_map = get_spell_id_map()
    print(f"  Loaded {len(spell_map)} spell name -> ID mappings")
    print()

    print("Step 2: Building spell lists from BG-Wiki data...")
    spell_lists, spell_levels, unmatched = generate_corrected_spells()
    print(f"  Found spells for {len(spell_lists)} jobs")
    print()

    print("Job spell counts (matched spells):")
    total_matched = 0
    for job_name in sorted(MAGIC_JOBS):
        if job_name in spell_lists:
            count = len(spell_lists[job_name])
            total_matched += count
            unmatched_count = len(unmatched.get(job_name, []))
            print(f"  {job_name:5s} - {count:3d} spells (matched), {unmatched_count:3d} unmatched")
    print(f"  Total matched: {total_matched} spells")
    print()

    print("Step 3: Generating Python code...")
    python_code = generate_python_code(spell_lists)
    output_py = Path("/Volumes/NVMe/git/LSBserver/scripts/actions/spells/trust/job_spell_lists_bgwiki.py")
    output_py.write_text(python_code)
    print(f"  Written to: {output_py}")
    print()

    print("Step 4: Generating SQL insertions...")
    sql_code, list_id_map, next_id, stats = generate_sql_insertions(spell_lists, spell_levels)
    output_sql = Path("/Volumes/NVMe/git/LSBserver/scripts/actions/spells/trust/spell_lists_bgwiki.sql")
    output_sql.write_text(sql_code)
    print(f"  Written to: {output_sql}")
    print(f"  Total spell lists: {len(list_id_map)}")
    print(f"  ID range: 566 to {next_id - 1}")
    print(f"  Total spell entries: {stats['total_entries']:,}")
    print()

    print("=" * 80)
    print("SUMMARY")
    print("=" * 80)
    print(f"Generated {len(list_id_map)} spell lists with {stats['total_entries']:,} total entries")
    print(f"  - 13 single-job lists")
    print(f"  - 156 directional main/sub job combinations")
    print()
    print("Next steps:")
    print("1. Review the generated files:")
    print(f"   - Python: {output_py}")
    print(f"   - SQL: {output_sql}")
    print("2. Apply spell lists to trust_editor.py")
    print("3. Apply SQL to mob_spell_lists.sql")
    print("4. Test trusts to verify correct spell lists")

if __name__ == "__main__":
    main()
