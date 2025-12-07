-----------------------------------
-- Trust: Zeid
-- Jobs: WHM/NONE
-----------------------------------
---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled(true)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.WHM)
    mob:setSpellList(1)

    mob:addMod(xi.mod.CURE_POTENCY, 30)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 20)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)

    -- Visuals (setModelId)
    mob:setModelId(103, xi.slot.MAIN) -- beryllium_mace
    mob:setModelId(24, xi.slot.RANGED) -- antitail
    mob:setModelId(371, xi.slot.HEAD) -- erilaz_galea_+3
    mob:setModelId(288, xi.slot.BODY) -- chevaliers_cuirass_+3
    mob:setModelId(288, xi.slot.HANDS) -- chevaliers_gauntlets_+3
    mob:setModelId(341, xi.slot.LEGS) -- azimuth_tights_+3
    mob:setModelId(296, xi.slot.FEET) -- beckoners_pigaches +2

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.STR, 7) -- main: beryllium_mace
    mob:addMod(xi.mod.MND, 7) -- main: beryllium_mace
    mob:addMod(xi.mod.ACC, 27) -- main: beryllium_mace
    mob:addMod(xi.mod.WSACC, 15) -- main: beryllium_mace
    mob:addMod(xi.mod.ADDS_WEAPONSKILL, 168) -- main: beryllium_mace
    mob:addMod(xi.mod.HP, 35) -- ranged: antitail
    mob:addMod(xi.mod.MP, 35) -- ranged: antitail
    mob:addMod(xi.mod.LIGHT_MEVA, 15) -- ranged: antitail
    mob:addMod(xi.mod.DARK_MEVA, 15) -- ranged: antitail
    mob:addMod(xi.mod.RATT, 20) -- ranged: antitail
    mob:addMod(xi.mod.RACC, 20) -- ranged: antitail
    mob:addMod(xi.mod.1, 135) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.HP, 111) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.MP, 65) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.STR, 34) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.DEX, 30) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.VIT, 24) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.AGI, 30) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.INT, 29) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.MND, 31) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.CHR, 27) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.ATT, 61) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.ACC, 61) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.MDEF, 9) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.MACC, 61) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.MEVA, 119) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.EVA, 92) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.SPELLINTERRUPT, 20) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.HASTE_GEAR, 800) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.ENHANCES_REFRESH, 5) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.ENH_MAGIC_DURATION, 22) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.AUGMENTS_VIVACIOUS_PULSE, 12) -- head: erilaz_galea_+3
    mob:addMod(xi.mod.1, 180) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.HP, 151) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.MP, 144) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.STR, 44) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.DEX, 32) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.VIT, 52) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.AGI, 32) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.INT, 31) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.MND, 31) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.CHR, 31) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.ATT, 74) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.ACC, 64) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.ENMITY, 13) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.MDEF, 8) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.MACC, 64) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.MEVA, 119) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.EVA, 86) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.SPELLINTERRUPT, 20) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.HASTE_GEAR, 300) -- body: chevaliers_cuirass_+3
    mob:addMod(xi.mod.1, 136) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.HP, 64) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.MP, 44) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.STR, 27) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.DEX, 43) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.VIT, 54) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.INT, 21) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.MND, 36) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.CHR, 31) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.ATT, 62) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.ACC, 62) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.MDEF, 5) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.MACC, 62) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.MEVA, 98) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.EVA, 69) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.SWORD, 38) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.DMG, -995) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.HASTE_GEAR, 500) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.SHIELD_DEF_BONUS, 6) -- hands: chevaliers_gauntlets_+3
    mob:addMod(xi.mod.1, 138) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.HP, 68) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MP, 74) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.STR, 31) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.VIT, 23) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.AGI, 31) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.INT, 55) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MND, 38) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.CHR, 32) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.ACC, 63) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MATT, 60) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MDEF, 10) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MACC, 63) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MEVA, 168) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.EVA, 74) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.DARK, 30) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MAGIC_DAMAGE, 28) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.HASTE_GEAR, 500) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.MAGIC_BURST_BONUS_CAPPED, 12) -- legs: azimuth_tights_+3
    mob:addMod(xi.mod.1, 81) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.HP, 29) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MP, 107) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.STR, 16) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.DEX, 16) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.VIT, 17) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.AGI, 35) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.INT, 29) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MND, 29) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.CHR, 45) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.ACC, 50) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MDEF, 9) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MACC, 50) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MEVA, 158) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.EVA, 95) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.PERPETUATION_REDUCTION, 8) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.HASTE_GEAR, 300) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.ENHANCES_ELEMENTAL_SIPHON, 70) -- feet: beckoners_pigaches +2
    mob:addMod(xi.mod.MP, 30) -- ear2: andoaa_earring
    mob:addMod(xi.mod.ENHANCE, 5) -- ear2: andoaa_earring
    mob:addMod(xi.mod.SUMMONING, 5) -- ear2: andoaa_earring
    mob:addMod(xi.mod.STR, 3) -- ring1: beithir_ring
    mob:addMod(xi.mod.DEX, 3) -- ring1: beithir_ring
    mob:addMod(xi.mod.VIT, 3) -- ring1: beithir_ring
    mob:addMod(xi.mod.AGI, 3) -- ring1: beithir_ring
    mob:addMod(xi.mod.1, 12) -- back: argochampsa_mantle
    mob:addMod(xi.mod.MATT, 12) -- back: argochampsa_mantle
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 75 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 45 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURAGA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.POISON }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.POISONA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SILENCE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PETRIFICATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.REGEN }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REGEN })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.PROTECT }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PROTECT })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.SHELL }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SHELL })

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
