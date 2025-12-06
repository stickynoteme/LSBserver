#!/usr/bin/env python3
"""
Trust Customizer GUI

User-friendly Tkinter tool for building custom trust behaviors without writing Lua by hand.
It lets you pick an existing trust, design gambits, status effects, mods, listeners, TP
settings, auto-attack preferences, and optional spell lists, then save/load everything from
scripts/actions/spells/trust/userdata.

Saving also regenerates the selected trust's Lua file so the server uses your custom setup.
"""
from __future__ import annotations

import json
import re
import textwrap
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Tuple

import tkinter as tk
from tkinter import messagebox, ttk


# ---------------------------------------------------------------------------
# Enum loading helpers
# ---------------------------------------------------------------------------

@dataclass
class EnumEntry:
    name: str
    value: str
    help: str = ""

    @property
    def display(self) -> str:
        readable = self.name.replace("_", " ").title()
        suffix = f" ({self.value})"
        return f"{readable}{suffix}"


class EnumLibrary:
    """Loads enum files under scripts/enum for dropdown/autocomplete help."""

    def __init__(self, repo_root: Path) -> None:
        self.repo_root = repo_root
        self.cache: Dict[str, List[EnumEntry]] = {}

    def get(self, key: str) -> List[EnumEntry]:
        if key in self.cache:
            return self.cache[key]
        spec = ENUM_SPECS[key]
        entries = self._parse_enum_file(
            self.repo_root / spec["path"], spec["section"], spec["prefix"]
        )
        self.cache[key] = entries
        return entries

    def _parse_enum_file(
        self, path: Path, section_name: str, prefix: str
    ) -> List[EnumEntry]:
        if not path.exists():
            return []

        with path.open("r", encoding="utf-8") as f:
            content = f.read()

        pattern = re.compile(
            rf"{re.escape(section_name)}\s*=\s*\{{(.*?)\}}",
            re.DOTALL | re.MULTILINE,
        )
        match = pattern.search(content)
        if not match:
            return []

        block = match.group(1)
        entries: List[EnumEntry] = []
        for line in block.splitlines():
            line = line.strip()
            if not line or line.startswith("--"):
                continue
            enum_match = re.match(r"([A-Z0-9_]+)\s*=\s*([^,]+),?\s*(--\s*(.*))?", line)
            if not enum_match:
                continue
            name, value, _, help_text = enum_match.groups()
            entries.append(
                EnumEntry(
                    name=name,
                    value=f"{prefix}.{name}",
                    help=(help_text or "").strip(),
                )
            )
        return entries


ENUM_SPECS = {
    "effect": {
        "path": "scripts/enum/effect.lua",
        "section": "xi.effect",
        "prefix": "xi.effect",
    },
    "effectFlag": {
        "path": "scripts/enum/effect_flag.lua",
        "section": "xi.effectFlag",
        "prefix": "xi.effectFlag",
    },
    "mod": {
        "path": "scripts/enum/mod.lua",
        "section": "xi.mod",
        "prefix": "xi.mod",
    },
    "ecosystem": {
        "path": "scripts/enum/ecosystem.lua",
        "section": "xi.ecosystem",
        "prefix": "xi.ecosystem",
    },
    "auraTarget": {
        "path": "scripts/enum/aura_target.lua",
        "section": "xi.auraTarget",
        "prefix": "xi.auraTarget",
    },
    "magic_spell": {
        "path": "scripts/enum/magic.lua",
        "section": "xi.magic.spell",
        "prefix": "xi.magic.spell",
    },
    "magic_family": {
        "path": "scripts/enum/magic.lua",
        "section": "xi.magic.spellFamily",
        "prefix": "xi.magic.spellFamily",
    },
    "jobAbility": {
        "path": "scripts/enum/job_ability.lua",
        "section": "xi.jobAbility",
        "prefix": "xi.jobAbility",
    },
    "weaponSkill": {
        "path": "scripts/enum/weaponskill.lua",
        "section": "xi.weaponskill",
        "prefix": "xi.weaponskill",
    },
    "mobSkill": {
        "path": "scripts/enum/mob_skill.lua",
        "section": "xi.mobSkill",
        "prefix": "xi.mobSkill",
    },
}


# ---------------------------------------------------------------------------
# AI enums (kept local because scripts/globals/gambits.lua is small)
# ---------------------------------------------------------------------------

AI_TARGETS = {
    "SELF": "Trust itself.",
    "PARTY": "Any party member.",
    "TARGET": "Current attack target.",
    "MASTER": "The summoning player.",
    "TANK": "Whichever party member is tanking.",
    "MELEE": "Front-line melees.",
    "RANGED": "Back-line ranged allies.",
    "CASTER": "Primary casters/healers.",
    "TOP_ENMITY": "Party member currently holding top enmity.",
    "CURILLA": "Special case target used by Rainemard.",
    "PARTY_DEAD": "Party members who are KO’d.",
    "PARTY_MULTI": "Multi-target party helper.",
}

AI_CONDITIONS = {
    "ALWAYS": "Always run.",
    "HPP_LT": "Target HP% is below the chosen value.",
    "HPP_GTE": "Target HP% is at or above the chosen value.",
    "MPP_LT": "Target MP% is below the chosen value.",
    "TP_LT": "Target TP is below the chosen value.",
    "TP_GTE": "Target TP is at or above the chosen value.",
    "STATUS": "Target has the chosen status effect.",
    "NOT_STATUS": "Target lacks the chosen status effect.",
    "STATUS_FLAG": "Target has a status effect flagged (erasable/dispellable/etc.).",
    "HAS_TOP_ENMITY": "Trust currently tanks.",
    "NOT_HAS_TOP_ENMITY": "Trust is not tanking.",
    "SC_AVAILABLE": "A skillchain is available to close.",
    "NOT_SC_AVAILABLE": "No skillchain is active.",
    "MB_AVAILABLE": "Magic burst window is available.",
    "READYING_WS": "Target is readying a weapon skill.",
    "READYING_MS": "Target is readying a monster skill.",
    "READYING_JA": "Target is readying a job ability.",
    "CASTING_MA": "Target is casting magic.",
    "RANDOM": "Random chance gate.",
    "NO_SAMBA": "No samba is active (Dancer).",
    "NO_STORM": "No storm spell is active (Scholar).",
    "PT_HAS_TANK": "Party currently has a tank.",
    "NOT_PT_HAS_TANK": "Party does not have a tank.",
    "IS_ECOSYSTEM": "Target matches the chosen ecosystem (family).",
    "HP_MISSING": "Target is missing at least this much HP.",
}

AI_REACTIONS = {
    "ATTACK": "Use a basic melee attack.",
    "RATTACK": "Use a ranged attack.",
    "MA": "Cast magic.",
    "JA": "Use a job ability.",
    "WS": "Use a weapon skill.",
    "MS": "Use a monster/TP move.",
}

AI_SELECTS = {
    "HIGHEST": "Pick the highest-tier option available.",
    "LOWEST": "Pick the lowest-tier option available.",
    "SPECIFIC": "Use the exact action you specify.",
    "RANDOM": "Pick randomly from available actions.",
    "MB_ELEMENT": "Pick an element that can magic burst.",
    "SPECIAL_AYAME": "Use Ayame style opener skillchain.",
    "BEST_AGAINST_TARGET": "Pick the option strongest against current target.",
    "BEST_SAMBA": "Use the best samba available.",
    "HIGHEST_WALTZ": "Use the strongest healing waltz available.",
    "ENTRUSTED": "Scholar entrusted spells.",
    "BEST_INDI": "Geomancer best Indi spell.",
    "STORM_DAY": "Storm spell matching the day.",
    "HELIX_DAY": "Helix spell matching the day.",
    "EN_MOB_WEAKNESS": "En-spell that targets the mob’s weakness.",
    "STORM_MOB_WEAKNESS": "Storm spell matching the mob’s weakness.",
    "HELIX_MOB_WEAKNESS": "Helix spell matching the mob’s weakness.",
}

AI_TP = {
    "ASAP": "Use TP as soon as possible.",
    "RANDOM": "Spend TP at random intervals.",
    "OPENER": "Open combat with a TP move.",
    "CLOSER": "Hold TP to close a skillchain.",
    "CLOSER_UNTIL_TP": "Hold TP until a threshold, then close skillchains.",
}


CONDITION_SCHEMAS = {
    "HPP_LT": {"type": "percent", "label": "Trigger when HP% is below", "default": 50},
    "HPP_GTE": {"type": "percent", "label": "Trigger when HP% is at or above", "default": 90},
    "MPP_LT": {"type": "percent", "label": "Trigger when MP% is below", "default": 25},
    "TP_LT": {"type": "tp", "label": "Trigger when TP is below", "default": 1000},
    "TP_GTE": {"type": "tp", "label": "Trigger when TP is at or above", "default": 1000},
    "STATUS": {"type": "effect", "label": "Effect required"},
    "NOT_STATUS": {"type": "effect", "label": "Effect must be missing"},
    "STATUS_FLAG": {"type": "effectFlag", "label": "Effect flag required"},
    "RANDOM": {"type": "percent", "label": "Chance to trigger", "default": 50},
    "IS_ECOSYSTEM": {"type": "ecosystem", "label": "Ecosystem / family"},
    "HP_MISSING": {"type": "number", "label": "Missing HP at least", "default": 500},
    "NO_SAMBA": {"type": "text", "label": "Optional dance check (leave blank for any)"},
    "NO_STORM": {"type": "text", "label": "Optional storm check (leave blank for any)"},
}


# ---------------------------------------------------------------------------
# Small UI helpers
# ---------------------------------------------------------------------------

class AutoComplete(ttk.Combobox):
    """Combobox that filters its dropdown as the user types."""

    def __init__(self, master, values: Iterable[str] = (), **kwargs):
        super().__init__(master, **kwargs)
        self._all_values: List[str] = sorted(values)
        self.configure(values=self._all_values)
        self.bind("<KeyRelease>", self._on_key)

    def set_values(self, values: Iterable[str]) -> None:
        self._all_values = sorted(values)
        self.configure(values=self._all_values)

    def _on_key(self, _event=None):
        typed = self.get().lower()
        if not typed:
            self.configure(values=self._all_values)
            return
        filtered = [v for v in self._all_values if typed in v.lower()]
        if filtered:
            self.configure(values=filtered)


def titled_label(frame, text: str) -> ttk.Label:
    return ttk.Label(frame, text=text, font=("TkDefaultFont", 10, "bold"))


# ---------------------------------------------------------------------------
# Main application
# ---------------------------------------------------------------------------

class TrustCustomizerApp:
    def __init__(self, root: tk.Tk):
        self.root = root
        self.root.title("Trust Customizer")
        self.base_dir = Path(__file__).resolve().parent
        self.repo_root = self._find_repo_root(self.base_dir)
        self.userdata_dir = self.base_dir / "userdata"
        self.userdata_dir.mkdir(exist_ok=True)

        self.enums = EnumLibrary(self.repo_root)
        self.config = self._empty_config()
        self.current_trust: Optional[str] = None
        self.trust_spell_constant_cache: Dict[str, str] = {}
        self.spell_list_index: List[Tuple[str, str]] = []

        self._build_ui()
        self._load_first_trust()

    # --------------------------- UI construction --------------------------
    def _build_ui(self):
        self.root.geometry("1350x880")
        top = ttk.Frame(self.root, padding=10)
        top.pack(fill=tk.X)

        titled_label(top, "Trust").grid(row=0, column=0, sticky="w")
        self.trust_var = tk.StringVar()
        self.trust_combo = AutoComplete(
            top, values=self._trust_choices(), width=40, textvariable=self.trust_var
        )
        self.trust_combo.grid(row=0, column=1, padx=6, pady=2, sticky="w")
        ttk.Button(top, text="Load", command=self._on_load_clicked).grid(
            row=0, column=2, padx=6
        )
        ttk.Button(top, text="Save", command=self._on_save_clicked).grid(
            row=0, column=3, padx=6
        )
        ttk.Button(top, text="Preview Lua", command=self._show_preview).grid(
            row=0, column=4, padx=6
        )
        ttk.Label(
            top,
            text="Pick a trust to override. Everything you enter is stored in userdata/ and written back to the trust’s Lua file.",
        ).grid(row=1, column=0, columnspan=5, sticky="w", pady=(4, 0))

        self.tabs = ttk.Notebook(self.root)
        self.tabs.pack(fill=tk.BOTH, expand=True, padx=10, pady=8)

        self._build_settings_tab()
        self._build_gambits_tab()
        self._build_mods_tab()
        self._build_status_tab()
        self._build_listeners_tab()
        self._build_spellbook_tab()

    def _build_settings_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.tabs.add(tab, text="Core Settings")

        self.auto_attack_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(tab, text="Enable auto-attack", variable=self.auto_attack_var).grid(
            row=0, column=0, sticky="w"
        )

        titled_label(tab, "TP Skill Settings").grid(row=1, column=0, sticky="w", pady=(10, 2))
        tp_frame = ttk.Frame(tab)
        tp_frame.grid(row=2, column=0, sticky="w")

        self.tp_enabled = tk.BooleanVar(value=False)
        ttk.Checkbutton(tp_frame, text="Enable", variable=self.tp_enabled).grid(
            row=0, column=0, sticky="w", padx=(0, 8)
        )
        ttk.Label(tp_frame, text="Trigger:").grid(row=0, column=1, sticky="e")
        self.tp_trigger = AutoComplete(tp_frame, values=list(AI_TP.keys()), width=20)
        self.tp_trigger.set("ASAP")
        self.tp_trigger.grid(row=0, column=2, padx=4)
        ttk.Label(tp_frame, text="Selector:").grid(row=0, column=3, sticky="e")
        self.tp_selector = AutoComplete(tp_frame, values=list(AI_SELECTS.keys()), width=25)
        self.tp_selector.set("RANDOM")
        self.tp_selector.grid(row=0, column=4, padx=4)
        ttk.Label(tp_frame, text="TP threshold (for CLOSER_UNTIL_TP)").grid(
            row=1, column=1, columnspan=2, sticky="w"
        )
        self.tp_threshold = tk.IntVar(value=1500)
        ttk.Scale(
            tp_frame, from_=500, to=3000, orient=tk.HORIZONTAL, variable=self.tp_threshold, length=260
        ).grid(row=1, column=3, columnspan=2, sticky="w", pady=4)
        ttk.Label(
            tp_frame,
            text="Tip: Use ASAP/RANDOM for aggressive TP use, CLOSER options for closing skillchains.",
            wraplength=600,
            foreground="gray40",
        ).grid(row=2, column=0, columnspan=5, sticky="w", pady=(6, 0))

        titled_label(tab, "Spell List").grid(row=3, column=0, sticky="w", pady=(12, 2))
        sl_frame = ttk.Frame(tab)
        sl_frame.grid(row=4, column=0, sticky="w")
        ttk.Label(
            sl_frame,
            text="Optional custom spell list ID (numeric)",
            font=("TkDefaultFont", 9, "bold"),
        ).grid(row=0, column=0, sticky="w")
        self.spell_list_id = tk.StringVar()
        ttk.Entry(sl_frame, textvariable=self.spell_list_id, width=12).grid(
            row=0, column=1, padx=6, sticky="w"
        )
        ttk.Button(sl_frame, text="Browse lists", command=self._open_spelllist_browser).grid(
            row=0, column=2, padx=4
        )
        ttk.Label(
            sl_frame,
            text="Trust will cast only the spells in that list. Use Browse to see names/IDs; double-click to fill.",
            foreground="gray40",
            wraplength=680,
        ).grid(row=1, column=0, columnspan=2, sticky="w")

    def _build_gambits_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.tabs.add(tab, text="Gambits")
        left = ttk.Frame(tab)
        left.pack(side=tk.LEFT, fill=tk.Y)
        right = ttk.Frame(tab)
        right.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10)

        titled_label(left, "Gambit list").pack(anchor="w")
        self.gambit_list = tk.Listbox(left, height=20, width=36)
        self.gambit_list.pack(side=tk.TOP, fill=tk.Y, pady=4)
        self.gambit_list.bind("<<ListboxSelect>>", lambda _e: self._load_gambit_details())
        btns = ttk.Frame(left)
        btns.pack(fill=tk.X, pady=4)
        ttk.Button(btns, text="Add", command=self._add_gambit).pack(side=tk.LEFT, padx=2)
        ttk.Button(btns, text="Remove", command=self._remove_gambit).pack(side=tk.LEFT, padx=2)
        ttk.Button(btns, text="Move Up", command=lambda: self._move_gambit(-1)).pack(
            side=tk.LEFT, padx=2
        )
        ttk.Button(btns, text="Move Down", command=lambda: self._move_gambit(1)).pack(
            side=tk.LEFT, padx=2
        )

        titled_label(right, "Gambit details").grid(row=0, column=0, sticky="w")

        form = ttk.Frame(right)
        form.grid(row=1, column=0, sticky="nw")
        form.columnconfigure(1, weight=1)

        ttk.Label(form, text="Target").grid(row=0, column=0, sticky="e")
        self.g_target = AutoComplete(form, values=list(AI_TARGETS.keys()), width=25)
        self.g_target.grid(row=0, column=1, padx=4, pady=2, sticky="w")
        self.g_target.set("TARGET")
        self.g_target.bind("<<ComboboxSelected>>", lambda _e: self._update_target_help())
        self.g_target_help = ttk.Label(form, foreground="gray40")
        self.g_target_help.grid(row=1, column=1, sticky="w")

        ttk.Label(form, text="Condition").grid(row=2, column=0, sticky="e")
        self.g_condition = AutoComplete(form, values=list(AI_CONDITIONS.keys()), width=25)
        self.g_condition.grid(row=2, column=1, padx=4, pady=2, sticky="w")
        self.g_condition.set("ALWAYS")
        self.g_condition.bind("<<ComboboxSelected>>", lambda _e: self._render_condition_args())
        self.g_condition_help = ttk.Label(form, foreground="gray40", wraplength=450)
        self.g_condition_help.grid(row=3, column=1, sticky="w")
        self.condition_args_frame = ttk.Frame(form)
        self.condition_args_frame.grid(row=4, column=0, columnspan=3, sticky="w", pady=(4, 6))

        ttk.Label(form, text="Reaction").grid(row=5, column=0, sticky="e")
        self.g_reaction = AutoComplete(form, values=list(AI_REACTIONS.keys()), width=25)
        self.g_reaction.grid(row=5, column=1, padx=4, pady=2, sticky="w")
        self.g_reaction.set("MA")
        self.g_reaction.bind("<<ComboboxSelected>>", lambda _e: self._render_reaction_args())
        self.g_reaction_help = ttk.Label(form, foreground="gray40", wraplength=450)
        self.g_reaction_help.grid(row=6, column=1, sticky="w")

        ttk.Label(form, text="Selector").grid(row=7, column=0, sticky="e")
        self.g_selector = AutoComplete(form, values=list(AI_SELECTS.keys()), width=25)
        self.g_selector.grid(row=7, column=1, padx=4, pady=2, sticky="w")
        self.g_selector.set("SPECIFIC")
        self.g_selector.bind("<<ComboboxSelected>>", lambda _e: self._render_reaction_args())

        self.reaction_args_frame = ttk.Frame(form)
        self.reaction_args_frame.grid(row=8, column=0, columnspan=3, sticky="w", pady=(4, 6))
        self.reaction_args_frame.columnconfigure(1, weight=1)

        ttk.Label(form, text="Cooldown (seconds)").grid(row=9, column=0, sticky="e")
        self.g_cooldown = tk.IntVar(value=0)
        ttk.Scale(
            form, from_=0, to=120, orient=tk.HORIZONTAL, variable=self.g_cooldown, length=260
        ).grid(row=9, column=1, sticky="w")
        ttk.Label(
            form,
            text="Use cooldown to throttle how often this gambit fires.",
            foreground="gray40",
        ).grid(row=10, column=1, sticky="w")

    def _build_mods_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.tabs.add(tab, text="Mods")
        left = ttk.Frame(tab)
        left.pack(side=tk.LEFT, fill=tk.Y)
        right = ttk.Frame(tab)
        right.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10)

        titled_label(left, "Mods").pack(anchor="w")
        self.mod_list = tk.Listbox(left, height=18, width=36)
        self.mod_list.pack(side=tk.TOP, fill=tk.Y, pady=4)
        self.mod_list.bind("<<ListboxSelect>>", lambda _e: self._load_mod_details())
        mbtns = ttk.Frame(left)
        mbtns.pack(fill=tk.X, pady=4)
        ttk.Button(mbtns, text="Add", command=self._add_mod).pack(side=tk.LEFT, padx=2)
        ttk.Button(mbtns, text="Remove", command=self._remove_mod).pack(side=tk.LEFT, padx=2)

        titled_label(right, "Mod details").grid(row=0, column=0, sticky="w")
        form = ttk.Frame(right)
        form.grid(row=1, column=0, sticky="nw")
        ttk.Label(form, text="Type").grid(row=0, column=0, sticky="e")
        self.mod_type = AutoComplete(form, values=self._enum_display("mod"), width=60)
        self.mod_type.grid(row=0, column=1, padx=4, pady=2, sticky="w")
        self.mod_type.bind("<<ComboboxSelected>>", lambda _e: self._update_mod_help())
        self.mod_help = ttk.Label(form, foreground="gray40", wraplength=520)
        self.mod_help.grid(row=1, column=1, sticky="w")
        ttk.Label(form, text="Value").grid(row=2, column=0, sticky="e")
        self.mod_value = tk.IntVar(value=0)
        ttk.Scale(
            form, from_=-500, to=500, orient=tk.HORIZONTAL, variable=self.mod_value, length=260
        ).grid(row=2, column=1, sticky="w")
        ttk.Label(
            form,
            text="Positive increases, negative decreases. Range is wide enough for big tweaks.",
            foreground="gray40",
        ).grid(row=3, column=1, sticky="w")

    def _build_status_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.tabs.add(tab, text="Status Effects")
        left = ttk.Frame(tab)
        left.pack(side=tk.LEFT, fill=tk.Y)
        right = ttk.Frame(tab)
        right.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10)

        titled_label(left, "Effects").pack(anchor="w")
        self.status_list = tk.Listbox(left, height=18, width=36)
        self.status_list.pack(side=tk.TOP, fill=tk.Y, pady=4)
        self.status_list.bind("<<ListboxSelect>>", lambda _e: self._load_status_details())
        sbtns = ttk.Frame(left)
        sbtns.pack(fill=tk.X, pady=4)
        ttk.Button(sbtns, text="Add", command=self._add_status).pack(side=tk.LEFT, padx=2)
        ttk.Button(sbtns, text="Remove", command=self._remove_status).pack(side=tk.LEFT, padx=2)

        titled_label(right, "Effect details (addStatusEffectEx)").grid(row=0, column=0, sticky="w")
        form = ttk.Frame(right)
        form.grid(row=1, column=0, sticky="nw")

        ttk.Label(form, text="Effect").grid(row=0, column=0, sticky="e")
        self.status_effect = AutoComplete(form, values=self._enum_display("effect"), width=55)
        self.status_effect.grid(row=0, column=1, padx=4, pady=2, sticky="w")
        ttk.Button(
            form,
            text="Search in Spellbook",
            command=lambda: self._jump_to_spellbook(self.status_effect.get()),
        ).grid(row=0, column=2, padx=4, sticky="w")

        ttk.Label(form, text="Effect Icon").grid(row=1, column=0, sticky="e")
        self.status_icon = AutoComplete(form, values=self._enum_display("effect"), width=55)
        self.status_icon.grid(row=1, column=1, padx=4, pady=2, sticky="w")
        ttk.Label(form, text="Power").grid(row=2, column=0, sticky="e")
        self.status_power = tk.IntVar(value=1)
        ttk.Entry(form, textvariable=self.status_power, width=10).grid(
            row=2, column=1, sticky="w", padx=4, pady=2
        )
        ttk.Label(form, text="Tick (per tick potency)").grid(row=3, column=0, sticky="e")
        self.status_tick = tk.IntVar(value=3)
        ttk.Entry(form, textvariable=self.status_tick, width=10).grid(
            row=3, column=1, sticky="w", padx=4, pady=2
        )
        ttk.Label(form, text="Duration (sec)").grid(row=4, column=0, sticky="e")
        self.status_duration = tk.IntVar(value=180)
        ttk.Entry(form, textvariable=self.status_duration, width=10).grid(
            row=4, column=1, sticky="w", padx=4, pady=2
        )
        ttk.Label(form, text="Sub Power").grid(row=5, column=0, sticky="e")
        self.status_subpower = tk.IntVar(value=0)
        ttk.Entry(form, textvariable=self.status_subpower, width=10).grid(
            row=5, column=1, sticky="w", padx=4, pady=2
        )
        ttk.Label(form, text="Sub Type (element/effect)").grid(row=6, column=0, sticky="e")
        self.status_subtype = AutoComplete(form, values=self._enum_display("effect"), width=55)
        self.status_subtype.grid(row=6, column=1, padx=4, pady=2, sticky="w")
        ttk.Label(form, text="Tier / Aura target").grid(row=7, column=0, sticky="e")
        self.status_aura = AutoComplete(form, values=self._enum_display("auraTarget"), width=30)
        self.status_aura.grid(row=7, column=1, padx=4, pady=2, sticky="w")
        ttk.Label(form, text="Effect flags").grid(row=8, column=0, sticky="e")
        self.status_flag = AutoComplete(form, values=self._enum_display("effectFlag"), width=55)
        self.status_flag.grid(row=8, column=1, padx=4, pady=2, sticky="w")
        ttk.Label(
            form,
            text="Tip: Icon usually matches effect. Aura target + AURA flag makes a party aura.",
            foreground="gray40",
            wraplength=520,
        ).grid(row=9, column=1, sticky="w", pady=(6, 0))

    def _build_listeners_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.tabs.add(tab, text="Listeners")
        left = ttk.Frame(tab)
        left.pack(side=tk.LEFT, fill=tk.Y)
        right = ttk.Frame(tab)
        right.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10)

        titled_label(left, "Listeners").pack(anchor="w")
        self.listener_list = tk.Listbox(left, height=16, width=36)
        self.listener_list.pack(side=tk.TOP, fill=tk.Y, pady=4)
        self.listener_list.bind("<<ListboxSelect>>", lambda _e: self._load_listener_details())
        lbtns = ttk.Frame(left)
        lbtns.pack(fill=tk.X, pady=4)
        ttk.Button(lbtns, text="Add", command=self._add_listener).pack(side=tk.LEFT, padx=2)
        ttk.Button(lbtns, text="Remove", command=self._remove_listener).pack(side=tk.LEFT, padx=2)

        titled_label(right, "Listener details").grid(row=0, column=0, sticky="w")
        form = ttk.Frame(right)
        form.grid(row=1, column=0, sticky="nw")
        ttk.Label(form, text="Event").grid(row=0, column=0, sticky="e")
        self.listener_event = AutoComplete(
            form,
            values=[
                "WEAPONSKILL_USE",
                "WEAPONSKILL_STATE_EXIT",
                "MAGIC_USE",
                "COMBAT_TICK",
                "TAKE_DAMAGE",
                "ROAM_TICK",
            ],
            width=30,
        )
        self.listener_event.grid(row=0, column=1, padx=4, pady=2, sticky="w")
        ttk.Label(form, text="Action template").grid(row=1, column=0, sticky="e")
        self.listener_template = AutoComplete(
            form,
            values=[
                "Cast Spell",
                "Use Job Ability",
                "Use Mob Skill",
                "Add Status Effect",
                "Toggle Auto Attack",
                "Custom Lua",
            ],
            width=30,
        )
        self.listener_template.set("Cast Spell")
        self.listener_template.grid(row=1, column=1, padx=4, pady=2, sticky="w")
        self.listener_template.bind("<<ComboboxSelected>>", lambda _e: self._render_listener_fields())
        self.listener_args_frame = ttk.Frame(form)
        self.listener_args_frame.grid(row=2, column=0, columnspan=2, sticky="w", pady=(4, 6))
        ttk.Label(
            form,
            text="Listeners are optional event hooks. Templates keep things readable while still powerful.",
            foreground="gray40",
            wraplength=540,
        ).grid(row=3, column=0, columnspan=2, sticky="w")

    def _build_spellbook_tab(self):
        tab = ttk.Frame(self.tabs, padding=10)
        self.spellbook_tab = tab
        self.tabs.add(tab, text="Spellbook & Notes")
        titled_label(tab, "Quick spell/ability finder").grid(row=0, column=0, sticky="w")
        search_frame = ttk.Frame(tab)
        search_frame.grid(row=1, column=0, sticky="w")
        ttk.Label(search_frame, text="Search text").grid(row=0, column=0, sticky="e")
        self.search_var = tk.StringVar()
        ttk.Entry(search_frame, textvariable=self.search_var, width=40).grid(
            row=0, column=1, padx=4, pady=2, sticky="w"
        )
        ttk.Button(search_frame, text="Search enums", command=self._run_search).grid(
            row=0, column=2, padx=4
        )
        self.search_results = tk.Text(tab, height=20, width=120)
        self.search_results.grid(row=2, column=0, sticky="nsew", pady=6)
        tab.rowconfigure(2, weight=1)
        tab.columnconfigure(0, weight=1)

    # --------------------------- Data helpers -----------------------------
    def _trust_choices(self) -> List[str]:
        files = [
            f.name[:-4]
            for f in sorted(self.base_dir.glob("*.lua"))
            if f.is_file() and f.name.lower() != "trust_customizer.py"
        ]
        return files

    def _enum_display(self, key: str) -> List[str]:
        return [entry.display for entry in self.enums.get(key)]

    def _entry_value(self, display_value: str) -> str:
        # Extract "xi...." token from "Readable (xi.xxx)"
        match = re.search(r"\(([^)]+)\)$", display_value.strip())
        return match.group(1) if match else display_value.strip()

    def _empty_config(self) -> Dict:
        return {
            "auto_attack": True,
            "tp_settings": {
                "enabled": False,
                "trigger": "ASAP",
                "selector": "RANDOM",
                "threshold": 1500,
            },
            "spell_list_id": "",
            "gambits": [],
            "mods": [],
            "status_effects": [],
            "listeners": [],
        }

    def _find_repo_root(self, start: Path) -> Path:
        current = start
        for _ in range(6):
            if (current / "scripts").exists():
                return current
            if current.parent == current:
                break
            current = current.parent
        return start

    # --------------------------- Load / Save ------------------------------
    def _load_first_trust(self):
        choices = self._trust_choices()
        if choices:
            self.trust_var.set(choices[0])
            self._load_trust(choices[0])

    def _on_load_clicked(self):
        name = self.trust_var.get().strip()
        if not name:
            messagebox.showerror("No trust selected", "Pick a trust to load.")
            return
        self._load_trust(name)

    def _load_trust(self, name: str):
        self.current_trust = name
        cfg_path = self.userdata_dir / f"{name}.json"
        if cfg_path.exists():
            try:
                self.config = json.loads(cfg_path.read_text())
            except json.JSONDecodeError:
                messagebox.showerror("Load failed", f"Could not read {cfg_path}")
                self.config = self._empty_config()
        else:
            self.config = self._empty_config()
        self._sync_ui_from_config()

    def _sync_ui_from_config(self):
        cfg = self.config
        self.auto_attack_var.set(cfg.get("auto_attack", True))
        tp_cfg = cfg.get("tp_settings", {})
        self.tp_enabled.set(tp_cfg.get("enabled", False))
        self.tp_trigger.set(tp_cfg.get("trigger", "ASAP"))
        self.tp_selector.set(tp_cfg.get("selector", "RANDOM"))
        self.tp_threshold.set(tp_cfg.get("threshold", 1500))
        self.spell_list_id.set(cfg.get("spell_list_id", ""))

        self._refresh_list(self.gambit_list, cfg.get("gambits", []), self._format_gambit_summary)
        self._refresh_list(self.mod_list, cfg.get("mods", []), self._format_mod_summary)
        self._refresh_list(
            self.status_list, cfg.get("status_effects", []), self._format_status_summary
        )
        self._refresh_list(
            self.listener_list, cfg.get("listeners", []), self._format_listener_summary
        )
        self._clear_gambit_fields()
        self._clear_mod_fields()
        self._clear_status_fields()
        self._clear_listener_fields()

    def _refresh_list(self, listbox: tk.Listbox, items: List[Dict], formatter) -> None:
        listbox.delete(0, tk.END)
        for item in items:
            listbox.insert(tk.END, formatter(item))

    def _on_save_clicked(self):
        if not self.current_trust:
            messagebox.showerror("No trust selected", "Pick a trust to save.")
            return
        self._pull_current_forms()
        cfg_path = self.userdata_dir / f"{self.current_trust}.json"
        cfg_path.write_text(json.dumps(self.config, indent=2))
        lua = self._render_lua()
        trust_path = self.base_dir / f"{self.current_trust}.lua"
        trust_path.write_text(lua)
        messagebox.showinfo(
            "Saved",
            f"Updated {trust_path.name} and saved user data to userdata/{cfg_path.name}.\n"
            f"Restart or reload scripts to apply changes.",
        )

    # --------------------------- Gambits logic ---------------------------
    def _clear_gambit_fields(self):
        self.g_target.set("TARGET")
        self.g_condition.set("ALWAYS")
        self.g_selector.set("SPECIFIC")
        self.g_reaction.set("MA")
        self.g_cooldown.set(0)
        self._render_condition_args()
        self._render_reaction_args()

    def _add_gambit(self):
        self._pull_current_forms()
        gambits = self.config.setdefault("gambits", [])
        gambits.append(self._default_gambit())
        self._refresh_list(self.gambit_list, gambits, self._format_gambit_summary)
        self.gambit_list.selection_clear(0, tk.END)
        self.gambit_list.selection_set(tk.END)
        self._load_gambit_details()

    def _remove_gambit(self):
        idx = self._selected_index(self.gambit_list)
        if idx is None:
            return
        del self.config["gambits"][idx]
        self._refresh_list(self.gambit_list, self.config["gambits"], self._format_gambit_summary)
        self._clear_gambit_fields()

    def _move_gambit(self, delta: int):
        idx = self._selected_index(self.gambit_list)
        if idx is None:
            return
        gambits = self.config["gambits"]
        new_idx = max(0, min(len(gambits) - 1, idx + delta))
        gambits[idx], gambits[new_idx] = gambits[new_idx], gambits[idx]
        self._refresh_list(self.gambit_list, gambits, self._format_gambit_summary)
        self.gambit_list.selection_clear(0, tk.END)
        self.gambit_list.selection_set(new_idx)

    def _load_gambit_details(self):
        idx = self._selected_index(self.gambit_list)
        if idx is None:
            self._clear_gambit_fields()
            return
        gambit = self.config["gambits"][idx]
        self.g_target.set(gambit.get("target", "TARGET"))
        self.g_condition.set(gambit.get("condition", "ALWAYS"))
        self.g_reaction.set(gambit.get("reaction", "MA"))
        self.g_selector.set(gambit.get("selector", "SPECIFIC"))
        self.g_cooldown.set(gambit.get("cooldown", 0))
        self._render_condition_args(gambit.get("condition_args"))
        self._render_reaction_args(gambit.get("reaction_args"))
        self._update_target_help()

    def _render_condition_args(self, preset=None):
        for child in self.condition_args_frame.winfo_children():
            child.destroy()
        cond = self.g_condition.get().strip() or "ALWAYS"
        schema = CONDITION_SCHEMAS.get(cond, {"type": "none"})
        self.g_condition_help.config(text=AI_CONDITIONS.get(cond, ""))
        self.condition_arg_widget = None

        if schema["type"] == "percent":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            var = tk.IntVar(value=(preset or schema.get("default", 0)))
            ttk.Scale(
                self.condition_args_frame, from_=0, to=100, orient=tk.HORIZONTAL, variable=var, length=240
            ).grid(row=0, column=1, sticky="w")
            self.condition_arg_widget = var
        elif schema["type"] == "tp":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            var = tk.IntVar(value=(preset or schema.get("default", 1000)))
            ttk.Scale(
                self.condition_args_frame, from_=0, to=4000, orient=tk.HORIZONTAL, variable=var, length=240
            ).grid(row=0, column=1, sticky="w")
            self.condition_arg_widget = var
        elif schema["type"] == "effect":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            entry = AutoComplete(self.condition_args_frame, values=self._enum_display("effect"), width=60)
            entry.grid(row=0, column=1, sticky="w")
            if preset:
                entry.set(preset)
            self.condition_arg_widget = entry
        elif schema["type"] == "effectFlag":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            entry = AutoComplete(
                self.condition_args_frame, values=self._enum_display("effectFlag"), width=60
            )
            entry.grid(row=0, column=1, sticky="w")
            if preset:
                entry.set(preset)
            self.condition_arg_widget = entry
        elif schema["type"] == "ecosystem":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            entry = AutoComplete(
                self.condition_args_frame, values=self._enum_display("ecosystem"), width=60
            )
            entry.grid(row=0, column=1, sticky="w")
            if preset:
                entry.set(preset)
            self.condition_arg_widget = entry
        elif schema["type"] == "number":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            var = tk.IntVar(value=(preset or schema.get("default", 0)))
            ttk.Entry(self.condition_args_frame, textvariable=var, width=12).grid(
                row=0, column=1, sticky="w"
            )
            self.condition_arg_widget = var
        elif schema["type"] == "text":
            ttk.Label(self.condition_args_frame, text=schema["label"]).grid(row=0, column=0, sticky="w")
            var = tk.StringVar(value=preset or "")
            ttk.Entry(self.condition_args_frame, textvariable=var, width=30).grid(
                row=0, column=1, sticky="w"
            )
            self.condition_arg_widget = var
        else:
            ttk.Label(
                self.condition_args_frame,
                text="No additional arguments required for this condition.",
                foreground="gray40",
            ).grid(row=0, column=0, sticky="w")

        self._update_target_help()

    def _render_reaction_args(self, preset=None):
        for child in self.reaction_args_frame.winfo_children():
            child.destroy()
        reaction = self.g_reaction.get().strip() or "MA"
        selector = self.g_selector.get().strip() or "SPECIFIC"
        self.g_reaction_help.config(text=AI_REACTIONS.get(reaction, ""))
        self.reaction_arg_widgets: Dict[str, tk.Variable] = {}

        row = 0
        if reaction in ("MA", "JA", "WS", "MS"):
            if selector == "SPECIFIC":
                ttk.Label(self.reaction_args_frame, text="Pick the exact action").grid(
                    row=row, column=0, sticky="w"
                )
                values = {
                    "MA": self._enum_display("magic_spell"),
                    "JA": self._enum_display("jobAbility"),
                    "WS": self._enum_display("weaponSkill"),
                    "MS": self._enum_display("mobSkill"),
                }.get(reaction, [])
                entry = AutoComplete(self.reaction_args_frame, values=values, width=60)
                entry.grid(row=row, column=1, sticky="w", pady=2)
                ttk.Button(
                    self.reaction_args_frame,
                    text="Search in Spellbook",
                    command=lambda w=entry: self._jump_to_spellbook(w.get()),
                ).grid(row=row, column=2, padx=4, sticky="w")
                if preset:
                    entry.set(preset.get("action", ""))
                self.reaction_arg_widgets["action"] = entry
            else:
                ttk.Label(self.reaction_args_frame, text="Pick an action / helper").grid(
                    row=row, column=0, sticky="w"
                )
                values = self._enum_display("magic_family") if reaction == "MA" else {
                    "JA": self._enum_display("jobAbility"),
                    "WS": self._enum_display("weaponSkill"),
                    "MS": self._enum_display("mobSkill"),
                }.get(reaction, [])
                fam = AutoComplete(self.reaction_args_frame, values=values, width=60)
                fam.grid(row=row, column=1, sticky="w", pady=2)
                ttk.Button(
                    self.reaction_args_frame,
                    text="Search in Spellbook",
                    command=lambda w=fam: self._jump_to_spellbook(w.get()),
                ).grid(row=row, column=2, padx=4, sticky="w")
                if preset:
                    fam.set(preset.get("action", ""))
                self.reaction_arg_widgets["action"] = fam
                row += 1
                ttk.Label(
                    self.reaction_args_frame,
                    text="Selector decides how the engine chooses from the family (highest tier, best vs target, etc.).",
                    foreground="gray40",
                    wraplength=520,
                ).grid(row=row, column=0, columnspan=2, sticky="w", pady=(4, 0))
        else:
            ttk.Label(
                self.reaction_args_frame,
                text="No extra action details needed for this reaction.",
                foreground="gray40",
            ).grid(row=row, column=0, sticky="w")

    def _pull_gambit_form(self) -> Dict:
        cond_arg = None
        if isinstance(self.condition_arg_widget, tk.Variable):
            cond_arg = self.condition_arg_widget.get()
        elif isinstance(self.condition_arg_widget, AutoComplete):
            cond_arg = self.condition_arg_widget.get()

        action_arg = None
        if "action" in getattr(self, "reaction_arg_widgets", {}):
            widget = self.reaction_arg_widgets["action"]
            action_arg = widget.get()

        return {
            "target": self.g_target.get().strip() or "TARGET",
            "condition": self.g_condition.get().strip() or "ALWAYS",
            "condition_args": cond_arg,
            "reaction": self.g_reaction.get().strip() or "MA",
            "selector": self.g_selector.get().strip() or "SPECIFIC",
            "reaction_args": {"action": action_arg} if action_arg else {},
            "cooldown": int(self.g_cooldown.get()),
        }

    def _pull_current_forms(self):
        # Sync currently selected row edits back into config before switching tabs.
        idx = self._selected_index(self.gambit_list)
        if idx is not None and idx < len(self.config.get("gambits", [])):
            self.config["gambits"][idx] = self._pull_gambit_form()
            self._refresh_list(self.gambit_list, self.config["gambits"], self._format_gambit_summary)

        midx = self._selected_index(self.mod_list)
        if midx is not None and midx < len(self.config.get("mods", [])):
            self.config["mods"][midx] = self._pull_mod_form()
            self._refresh_list(self.mod_list, self.config["mods"], self._format_mod_summary)

        sidx = self._selected_index(self.status_list)
        if sidx is not None and sidx < len(self.config.get("status_effects", [])):
            self.config["status_effects"][sidx] = self._pull_status_form()
            self._refresh_list(
                self.status_list, self.config["status_effects"], self._format_status_summary
            )

        lidx = self._selected_index(self.listener_list)
        if lidx is not None and lidx < len(self.config.get("listeners", [])):
            self.config["listeners"][lidx] = self._pull_listener_form()
            self._refresh_list(
                self.listener_list, self.config["listeners"], self._format_listener_summary
            )

        self.config["auto_attack"] = self.auto_attack_var.get()
        self.config["tp_settings"] = {
            "enabled": self.tp_enabled.get(),
            "trigger": self.tp_trigger.get() or "ASAP",
            "selector": self.tp_selector.get() or "RANDOM",
            "threshold": int(self.tp_threshold.get()),
        }
        self.config["spell_list_id"] = self.spell_list_id.get().strip()

    def _format_gambit_summary(self, gambit: Dict) -> str:
        target = gambit.get("target", "TARGET")
        cond = gambit.get("condition", "ALWAYS")
        reaction = gambit.get("reaction", "MA")
        selector = gambit.get("selector", "SPECIFIC")
        return f"{target} | {cond} -> {reaction}/{selector}"

    def _default_gambit(self) -> Dict:
        return {
            "target": "TARGET",
            "condition": "ALWAYS",
            "condition_args": None,
            "reaction": "MA",
            "selector": "SPECIFIC",
            "reaction_args": {},
            "cooldown": 0,
        }

    # --------------------------- Mods logic ------------------------------
    def _clear_mod_fields(self):
        self.mod_type.set("")
        self.mod_value.set(0)
        self.mod_help.config(text="")

    def _add_mod(self):
        mods = self.config.setdefault("mods", [])
        mods.append({"type": "", "value": 0})
        self._refresh_list(self.mod_list, mods, self._format_mod_summary)
        self.mod_list.selection_clear(0, tk.END)
        self.mod_list.selection_set(tk.END)
        self._load_mod_details()

    def _remove_mod(self):
        idx = self._selected_index(self.mod_list)
        if idx is None:
            return
        del self.config["mods"][idx]
        self._refresh_list(self.mod_list, self.config["mods"], self._format_mod_summary)
        self._clear_mod_fields()

    def _load_mod_details(self):
        idx = self._selected_index(self.mod_list)
        if idx is None:
            self._clear_mod_fields()
            return
        mod = self.config["mods"][idx]
        self.mod_type.set(mod.get("type", ""))
        self.mod_value.set(mod.get("value", 0))
        self._update_mod_help()

    def _pull_mod_form(self) -> Dict:
        self._update_mod_help()
        return {"type": self.mod_type.get().strip(), "value": int(self.mod_value.get())}

    def _format_mod_summary(self, mod: Dict) -> str:
        return f"{mod.get('type','(pick mod)')} => {mod.get('value',0)}"

    def _update_mod_help(self):
        display = self.mod_type.get()
        needle = self._entry_value(display)
        help_text = ""
        for entry in self.enums.get("mod"):
            if entry.value == needle:
                help_text = entry.help or ""
                break
        if not help_text and needle:
            help_text = "Positive raises this stat/trait, negative lowers it."
        self.mod_help.config(text=help_text)

    # --------------------------- Status logic ----------------------------
    def _clear_status_fields(self):
        self.status_effect.set("")
        self.status_icon.set("")
        self.status_power.set(1)
        self.status_tick.set(3)
        self.status_duration.set(180)
        self.status_subpower.set(0)
        self.status_flag.set("")
        self.status_subtype.set("")
        self.status_aura.set("")

    def _add_status(self):
        statuses = self.config.setdefault("status_effects", [])
        statuses.append(self._default_status())
        self._refresh_list(self.status_list, statuses, self._format_status_summary)
        self.status_list.selection_clear(0, tk.END)
        self.status_list.selection_set(tk.END)
        self._load_status_details()

    def _remove_status(self):
        idx = self._selected_index(self.status_list)
        if idx is None:
            return
        del self.config["status_effects"][idx]
        self._refresh_list(
            self.status_list, self.config["status_effects"], self._format_status_summary
        )
        self._clear_status_fields()

    def _load_status_details(self):
        idx = self._selected_index(self.status_list)
        if idx is None:
            self._clear_status_fields()
            return
        st = self.config["status_effects"][idx]
        self.status_effect.set(st.get("effect", ""))
        self.status_icon.set(st.get("icon", ""))
        self.status_power.set(st.get("power", 1))
        self.status_tick.set(st.get("tick", 3))
        self.status_duration.set(st.get("duration", 180))
        self.status_subpower.set(st.get("subpower", 0))
        self.status_flag.set(st.get("flag", ""))
        self.status_subtype.set(st.get("subtype", ""))
        self.status_aura.set(st.get("aura", ""))

    def _pull_status_form(self) -> Dict:
        return {
            "effect": self.status_effect.get().strip(),
            "icon": self.status_icon.get().strip() or self.status_effect.get().strip(),
            "power": int(self.status_power.get()),
            "tick": int(self.status_tick.get()),
            "duration": int(self.status_duration.get()),
            "subpower": int(self.status_subpower.get()),
            "flag": self.status_flag.get().strip(),
            "subtype": self.status_subtype.get().strip(),
            "aura": self.status_aura.get().strip(),
        }

    def _default_status(self) -> Dict:
        return {
            "effect": "",
            "icon": "",
            "power": 1,
            "tick": 3,
            "duration": 180,
            "subpower": 0,
            "flag": "",
            "subtype": "",
            "aura": "",
        }

    def _format_status_summary(self, st: Dict) -> str:
        return f"{st.get('effect','(effect)')} {st.get('power',1)} for {st.get('duration',0)}s"

    # --------------------------- Listener logic --------------------------
    def _clear_listener_fields(self):
        self.listener_event.set("")
        self.listener_template.set("Cast Spell")
        self._render_listener_fields()

    def _add_listener(self):
        listeners = self.config.setdefault("listeners", [])
        listeners.append(self._default_listener())
        self._refresh_list(self.listener_list, listeners, self._format_listener_summary)
        self.listener_list.selection_clear(0, tk.END)
        self.listener_list.selection_set(tk.END)
        self._load_listener_details()

    def _remove_listener(self):
        idx = self._selected_index(self.listener_list)
        if idx is None:
            return
        del self.config["listeners"][idx]
        self._refresh_list(
            self.listener_list, self.config["listeners"], self._format_listener_summary
        )
        self._clear_listener_fields()

    def _load_listener_details(self):
        idx = self._selected_index(self.listener_list)
        if idx is None:
            self._clear_listener_fields()
            return
        li = self.config["listeners"][idx]
        self.listener_event.set(li.get("event", ""))
        self.listener_template.set(li.get("template", "Cast Spell"))
        self._render_listener_fields(li.get("args"))

    def _render_listener_fields(self, preset=None):
        for child in self.listener_args_frame.winfo_children():
            child.destroy()
        template = self.listener_template.get() or "Cast Spell"
        self.listener_widgets: Dict[str, tk.Variable] = {}

        if template == "Cast Spell":
            ttk.Label(self.listener_args_frame, text="Spell to cast").grid(row=0, column=0, sticky="w")
            entry = AutoComplete(self.listener_args_frame, values=self._enum_display("magic_spell"), width=70)
            entry.grid(row=0, column=1, sticky="w")
            ttk.Button(
                self.listener_args_frame,
                text="Search in Spellbook",
                command=lambda w=entry: self._jump_to_spellbook(w.get()),
            ).grid(row=0, column=2, padx=4, sticky="w")
            if preset:
                entry.set(preset.get("action", ""))
            self.listener_widgets["action"] = entry
        elif template == "Use Job Ability":
            ttk.Label(self.listener_args_frame, text="Job ability").grid(row=0, column=0, sticky="w")
            entry = AutoComplete(self.listener_args_frame, values=self._enum_display("jobAbility"), width=70)
            entry.grid(row=0, column=1, sticky="w")
            ttk.Button(
                self.listener_args_frame,
                text="Search in Spellbook",
                command=lambda w=entry: self._jump_to_spellbook(w.get()),
            ).grid(row=0, column=2, padx=4, sticky="w")
            if preset:
                entry.set(preset.get("action", ""))
            self.listener_widgets["action"] = entry
        elif template == "Use Mob Skill":
            ttk.Label(self.listener_args_frame, text="Mob skill / TP move").grid(row=0, column=0, sticky="w")
            entry = AutoComplete(self.listener_args_frame, values=self._enum_display("mobSkill"), width=70)
            entry.grid(row=0, column=1, sticky="w")
            ttk.Button(
                self.listener_args_frame,
                text="Search in Spellbook",
                command=lambda w=entry: self._jump_to_spellbook(w.get()),
            ).grid(row=0, column=2, padx=4, sticky="w")
            if preset:
                entry.set(preset.get("action", ""))
            self.listener_widgets["action"] = entry
        elif template == "Add Status Effect":
            ttk.Label(self.listener_args_frame, text="Effect").grid(row=0, column=0, sticky="w")
            eff = AutoComplete(self.listener_args_frame, values=self._enum_display("effect"), width=60)
            eff.grid(row=0, column=1, sticky="w")
            ttk.Button(
                self.listener_args_frame,
                text="Search in Spellbook",
                command=lambda w=eff: self._jump_to_spellbook(w.get()),
            ).grid(row=0, column=2, padx=4, sticky="w")
            ttk.Label(self.listener_args_frame, text="Power").grid(row=1, column=0, sticky="w")
            power = tk.IntVar(value=(preset or {}).get("power", 1))
            ttk.Entry(self.listener_args_frame, textvariable=power, width=10).grid(row=1, column=1, sticky="w")
            if preset:
                eff.set(preset.get("effect", ""))
            self.listener_widgets["effect"] = eff
            self.listener_widgets["power"] = power
        elif template == "Toggle Auto Attack":
            ttk.Label(self.listener_args_frame, text="Auto-attack enabled?").grid(
                row=0, column=0, sticky="w"
            )
            var = tk.BooleanVar(value=(preset or {}).get("enabled", True))
            ttk.Checkbutton(self.listener_args_frame, variable=var).grid(row=0, column=1, sticky="w")
            self.listener_widgets["enabled"] = var
        else:
            ttk.Label(self.listener_args_frame, text="Lua snippet (advanced)").grid(
                row=0, column=0, sticky="w"
            )
            txt = tk.Text(self.listener_args_frame, height=6, width=60)
            txt.grid(row=1, column=0, columnspan=2, sticky="w")
            if preset and "code" in preset:
                txt.insert("1.0", preset["code"])
            self.listener_widgets["code"] = txt

    def _pull_listener_form(self) -> Dict:
        args = {}
        for key, widget in getattr(self, "listener_widgets", {}).items():
            if isinstance(widget, tk.Text):
                args[key] = widget.get("1.0", tk.END).strip()
            elif isinstance(widget, tk.Variable):
                args[key] = widget.get()
            else:
                args[key] = widget.get()
        return {
            "event": self.listener_event.get().strip(),
            "template": self.listener_template.get().strip(),
            "args": args,
        }

    def _default_listener(self) -> Dict:
        return {"event": "WEAPONSKILL_USE", "template": "Cast Spell", "args": {}}

    def _format_listener_summary(self, li: Dict) -> str:
        return f"{li.get('event','(event)')} -> {li.get('template','(template)')}"

    # --------------------------- Search helper ---------------------------
    def _run_search(self):
        text = self.search_var.get().strip().lower()
        if not text:
            return
        buckets = {
            "Spells": self.enums.get("magic_spell"),
            "Spell Families": self.enums.get("magic_family"),
            "Job Abilities": self.enums.get("jobAbility"),
            "Weapon Skills": self.enums.get("weaponSkill"),
            "Mob Skills": self.enums.get("mobSkill"),
            "Status Effects": self.enums.get("effect"),
        }
        lines: List[str] = []
        for label, entries in buckets.items():
            hits = [e for e in entries if text in e.name.lower() or text in e.display.lower()]
            if hits:
                lines.append(f"{label}:")
                for hit in hits[:80]:
                    helper = f" - {hit.display}"
                    if hit.help:
                        helper += f" :: {hit.help}"
                    lines.append(helper)
                lines.append("")
        self.search_results.delete("1.0", tk.END)
        if lines:
            self.search_results.insert("1.0", "\n".join(lines))
        else:
            self.search_results.insert("1.0", "No matches found.")

    def _jump_to_spellbook(self, term: str):
        term = (term or "").strip()
        if not term:
            return
        self.search_var.set(term)
        if hasattr(self, "spellbook_tab"):
            self.tabs.select(self.spellbook_tab)
        self._run_search()

    def _load_spell_lists(self):
        if self.spell_list_index:
            return

        def add_entry(list_id: str, name: str):
            key = (list_id, name)
            if key not in seen:
                seen.add(key)
                self.spell_list_index.append(key)

        seen = set()
        mob_lists = self.repo_root / "sql" / "mob_spell_lists.sql"
        if mob_lists.exists():
            for line in mob_lists.read_text(errors="ignore").splitlines():
                m = re.search(r"VALUES\s*\('([^']+)',\s*([0-9]+)", line)
                if m:
                    add_entry(m.group(2), m.group(1))
        spell_lists = self.repo_root / "sql" / "spell_list.sql"
        if spell_lists.exists():
            for line in spell_lists.read_text(errors="ignore").splitlines():
                m = re.search(r"VALUES\s*\((\d+),'([^']+)'", line)
                if m:
                    add_entry(m.group(1), m.group(2))
        self.spell_list_index.sort(key=lambda t: int(t[0]))

    def _open_spelllist_browser(self):
        self._load_spell_lists()
        top = tk.Toplevel(self.root)
        top.title("Spell List Browser")
        top.geometry("520x520")
        ttk.Label(
            top,
            text="Double-click a row to use that spell list ID. Names come from mob_spell_lists/spell_list SQL.",
            wraplength=500,
            foreground="gray40",
        ).pack(fill=tk.X, padx=8, pady=6)
        search_var = tk.StringVar()
        search_entry = ttk.Entry(top, textvariable=search_var)
        search_entry.pack(fill=tk.X, padx=8, pady=4)
        listbox = tk.Listbox(top)
        listbox.pack(fill=tk.BOTH, expand=True, padx=8, pady=4)
        info = ttk.Label(top, text="", foreground="gray40")
        info.pack(fill=tk.X, padx=8, pady=4)

        def refresh():
            query = search_var.get().lower()
            listbox.delete(0, tk.END)
            results = [
                entry
                for entry in self.spell_list_index
                if query in entry[0].lower() or query in entry[1].lower()
            ]
            for list_id, name in results[:500]:
                listbox.insert(tk.END, f"{list_id}  –  {name}")
            info.config(text=f"{len(results)} result(s)")

        def use_selected(_event=None):
            selection = listbox.curselection()
            if not selection:
                return
            value = listbox.get(selection[0]).split()[0]
            self.spell_list_id.set(value)
            top.destroy()

        listbox.bind("<Double-Button-1>", use_selected)
        search_entry.bind("<KeyRelease>", lambda _e: refresh())
        refresh()
        search_entry.focus_set()

    # --------------------------- Utility ------------------------------
    def _selected_index(self, listbox: tk.Listbox) -> Optional[int]:
        sel = listbox.curselection()
        if not sel:
            return None
        return int(sel[0])

    def _update_target_help(self):
        self.g_target_help.config(text=AI_TARGETS.get(self.g_target.get().strip(), ""))

    # --------------------------- Lua rendering -------------------------
    def _render_lua(self) -> str:
        trust_name = self.current_trust or "CustomTrust"
        spell_constant = self._trust_spell_constant(trust_name)
        cfg = self.config

        lines = [
            "-" * 35,
            f"-- Trust: {trust_name} (customized)",
            "-" * 35,
            "---@type TSpellTrust",
            "local spellObject = {}",
            "",
            "spellObject.onMagicCastingCheck = function(caster, target, spell)",
            f"    return xi.trust.canCast(caster, spell, {spell_constant})",
            "end",
            "",
            "spellObject.onSpellCast = function(caster, target, spell)",
            "    return xi.trust.spawn(caster, spell)",
            "end",
            "",
            "spellObject.onMobSpawn = function(mob)",
        ]

        lines.append(f"    mob:setAutoAttackEnabled({str(bool(cfg.get('auto_attack', True))).lower()})")

        if cfg.get("spell_list_id"):
            lines.append(f"    mob:setSpellList({cfg['spell_list_id']})")

        for mod in cfg.get("mods", []):
            mtype = self._entry_value(mod.get("type", ""))
            lines.append(f"    mob:addMod({mtype}, {int(mod.get('value', 0))})")

        for st in cfg.get("status_effects", []):
            eff = self._entry_value(st.get("effect", ""))
            icon = self._entry_value(st.get("icon", eff))
            flag = self._entry_value(st.get("flag", "").strip()) if st.get("flag") else "xi.effectFlag.NONE"
            aura = self._entry_value(st.get("aura", "").strip()) if st.get("aura") else "0"
            subtype = self._entry_value(st.get("subtype", "").strip()) if st.get("subtype") else "0"
            parts = [
                eff,
                icon,
                str(int(st.get("power", 1))),
                str(int(st.get("tick", 3))),
                str(int(st.get("duration", 180))),
                subtype,
                str(int(st.get("subpower", 0))),
                aura,
                flag,
            ]
            lines.append(f"    mob:addStatusEffectEx({', '.join(parts)})")

        for gambit in cfg.get("gambits", []):
            cond_arg = gambit.get("condition_args")
            cond_segment = gambit.get("condition", "ALWAYS")
            if cond_arg not in (None, "", 0):
                if isinstance(cond_arg, str):
                    cond_segment += f", {self._entry_value(cond_arg)}"
                else:
                    cond_segment += f", {cond_arg}"
            react_arg = gambit.get("reaction_args", {}).get("action")
            selector = gambit.get("selector", "SPECIFIC")
            react_segment = gambit.get("reaction", "MA")
            if react_segment in ("ATTACK", "RATTACK"):
                react_payload = f"ai.r.{react_segment}, 0, 0"
            else:
                react_parts = [react_segment, selector]
                if react_arg:
                    react_parts.append(self._entry_value(react_arg))
                react_payload = ", ".join(
                    [f"ai.r.{react_parts[0]}", f"ai.s.{react_parts[1]}"] + react_parts[2:]
                )
            cooldown = gambit.get("cooldown", 0)
            cd_part = f", {cooldown}" if cooldown else ""
            lines.append(
                f"    mob:addGambit(ai.t.{gambit.get('target','TARGET')}, "
                f"{{ ai.c.{cond_segment} }}, "
                f"{{ {react_payload} }}{cd_part})"
            )

        tp_cfg = cfg.get("tp_settings", {})
        if tp_cfg.get("enabled"):
            trigger = tp_cfg.get("trigger", "ASAP")
            selector = tp_cfg.get("selector", "RANDOM")
            threshold = tp_cfg.get("threshold")
            if trigger == "CLOSER_UNTIL_TP" and threshold:
                lines.append(
                    f"    mob:setTrustTPSkillSettings(ai.tp.{trigger}, ai.s.{selector}, {int(threshold)})"
                )
            else:
                lines.append(f"    mob:setTrustTPSkillSettings(ai.tp.{trigger}, ai.s.{selector})")

        for idx, li in enumerate(cfg.get("listeners", []), start=1):
            event = li.get("event", "WEAPONSKILL_USE")
            template = li.get("template", "Cast Spell")
            args = li.get("args", {})
            listener_id = f"CUSTOM_TRUST_LISTENER_{idx}"
            lines.append(
                f"    mob:addListener('{event}', '{listener_id}', function(mobArg, target, wsid, tp, action)"
            )
            lines.extend(self._render_listener_action(template, args, indent="        "))
            lines.append("    end)")

        lines.append("end")
        lines.append("")
        lines.append(
            "spellObject.onMobDespawn = function(mob)\n"
            "    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)\n"
            "end"
        )
        lines.append(
            "spellObject.onMobDeath = function(mob)\n"
            "    xi.trust.message(mob, xi.trust.messageOffset.DEATH)\n"
            "end"
        )
        lines.append("")
        lines.append("return spellObject\n")
        return "\n".join(lines)

    def _render_listener_action(self, template: str, args: Dict, indent: str) -> List[str]:
        lines: List[str] = []
        if template == "Cast Spell":
            spell = self._entry_value(args.get("action", ""))
            if spell and "xi." in spell:
                lines.append(f"{indent}mobArg:castSpell({spell}, target or mobArg:getTarget())")
            else:
                lines.append(f"{indent}-- Pick a spell for this listener.")
        elif template == "Use Job Ability":
            ability = self._entry_value(args.get("action", ""))
            if ability and "xi." in ability:
                lines.append(f"{indent}mobArg:useJobAbility({ability})")
            else:
                lines.append(f"{indent}-- Pick a job ability for this listener.")
        elif template == "Use Mob Skill":
            skill = self._entry_value(args.get("action", ""))
            if skill and "xi." in skill:
                lines.append(f"{indent}mobArg:useMobAbility({skill}, target)")
            else:
                lines.append(f"{indent}-- Pick a mob skill / TP move for this listener.")
        elif template == "Add Status Effect":
            effect = self._entry_value(args.get("effect", ""))
            power = int(args.get("power", 1) or 1)
            if effect and "xi." in effect:
                lines.append(f"{indent}mobArg:addStatusEffectEx({effect}, {effect}, {power}, 3, 30)")
            else:
                lines.append(f"{indent}-- Pick an effect to add for this listener.")
        elif template == "Toggle Auto Attack":
            enabled = str(bool(args.get("enabled", True))).lower()
            lines.append(f"{indent}mobArg:setAutoAttackEnabled({enabled})")
        else:
            code = args.get("code", "-- custom code goes here")
            snippet = textwrap.indent(code, indent)
            lines.append(snippet)
        return lines

    def _trust_spell_constant(self, trust_name: str) -> str:
        if trust_name in self.trust_spell_constant_cache:
            return self.trust_spell_constant_cache[trust_name]
        trust_path = self.base_dir / f"{trust_name}.lua"
        constant = "xi.magic.spell.TRUST"
        if trust_path.exists():
            text = trust_path.read_text()
            match = re.search(r"xi\.magic\.spell\.([A-Z0-9_]+)", text)
            if match:
                constant = f"xi.magic.spell.{match.group(1)}"
        self.trust_spell_constant_cache[trust_name] = constant
        return constant

    # --------------------------- Preview dialog -------------------------
    def _show_preview(self):
        self._pull_current_forms()
        top = tk.Toplevel(self.root)
        top.title("Generated Lua Preview")
        txt = tk.Text(top, wrap=tk.NONE, width=160, height=40)
        txt.pack(fill=tk.BOTH, expand=True)
        txt.insert("1.0", self._render_lua())
        txt.configure(state="disabled")
        ttk.Button(top, text="Close", command=top.destroy).pack(pady=4)


def main():
    root = tk.Tk()
    app = TrustCustomizerApp(root)
    root.mainloop()


if __name__ == "__main__":
    main()
