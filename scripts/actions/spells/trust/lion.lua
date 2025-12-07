-----------------------------------
-- Trust: Lion
-- Jobs: DNC/THF
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
    mob:changeJob(xi.job.DNC)
    mob:changeSJob(xi.job.THF)

    mob:addMod(xi.mod.CHR, 15)
    mob:addMod(xi.mod.DEX, 15)
    mob:addMod(xi.mod.EVA, 10)

    mob:addStatusEffectEx(xi.effect.TP_BONUS, xi.effect.TP_BONUS, 10000, 0, 5000)

    -- Visuals (setModelId)
    mob:setModelId(459, xi.slot.MAIN) -- blurred_knife_+1
    mob:setModelId(282, xi.slot.HEAD) -- boii_mask_+1
    mob:setModelId(343, xi.slot.BODY) -- thurandaut_tabard_+1
    mob:setModelId(176, xi.slot.HANDS) -- evokers_gages
    mob:setModelId(52, xi.slot.LEGS) -- iron_cuisses_+1
    mob:setModelId(76, xi.slot.FEET) -- gallant_leggings_+1

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.ACC, 20) -- main: blurred_knife_+1
    mob:addMod(xi.mod.EVA, 22) -- main: blurred_knife_+1
    mob:addMod(xi.mod.1, 114) -- head: boii_mask_+1
    mob:addMod(xi.mod.HP, 43) -- head: boii_mask_+1
    mob:addMod(xi.mod.STR, 33) -- head: boii_mask_+1
    mob:addMod(xi.mod.DEX, 17) -- head: boii_mask_+1
    mob:addMod(xi.mod.VIT, 32) -- head: boii_mask_+1
    mob:addMod(xi.mod.AGI, 15) -- head: boii_mask_+1
    mob:addMod(xi.mod.INT, 11) -- head: boii_mask_+1
    mob:addMod(xi.mod.MND, 11) -- head: boii_mask_+1
    mob:addMod(xi.mod.CHR, 11) -- head: boii_mask_+1
    mob:addMod(xi.mod.ATT, 24) -- head: boii_mask_+1
    mob:addMod(xi.mod.ACC, 24) -- head: boii_mask_+1
    mob:addMod(xi.mod.MDEF, 2) -- head: boii_mask_+1
    mob:addMod(xi.mod.MEVA, 48) -- head: boii_mask_+1
    mob:addMod(xi.mod.EVA, 36) -- head: boii_mask_+1
    mob:addMod(xi.mod.CRITHITRATE, 4) -- head: boii_mask_+1
    mob:addMod(xi.mod.DOUBLE_ATTACK, 5) -- head: boii_mask_+1
    mob:addMod(xi.mod.HASTE_GEAR, 700) -- head: boii_mask_+1
    mob:addMod(xi.mod.1, 95) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.MP, 36) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.STR, 19) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.DEX, 18) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.VIT, 15) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.AGI, 19) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.INT, 14) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.MND, 14) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.CHR, 14) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.ATT, 16) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.MEVA, 43) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.HASTE_GEAR, 600) -- body: thurandaut_tabard_+1
    mob:addMod(xi.mod.1, 20) -- hands: evokers_gages
    mob:addMod(xi.mod.1, 22) -- legs: iron_cuisses_+1
    mob:addMod(xi.mod.1, 19) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.HP, 20) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.CHR, 5) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.SHIELD, 12) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.HOLY_CIRCLE_DURATION, 90) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.HOLY_CIRCLE_POTENCY, 2) -- feet: gallant_leggings_+1
    mob:addMod(xi.mod.AGI, 1) -- neck: wing_pendant
    mob:addMod(xi.mod.WIND_MEVA, 1) -- neck: wing_pendant
    mob:addMod(xi.mod.EARTH_MEVA, 1) -- neck: wing_pendant
    mob:addMod(xi.mod.1, 3) -- ear1: hospitaler_earring
    mob:addMod(xi.mod.CURE_POTENCY, 5) -- ear1: hospitaler_earring
    mob:addMod(xi.mod.HP, 10) -- ear2: ryakhos_earring
    mob:addMod(xi.mod.MND, 2) -- ear2: ryakhos_earring
    mob:addMod(xi.mod.1, 20) -- ring1: krousis_ring_+1
    mob:addMod(xi.mod.1, 30) -- back: judges_cape
    mob:addMod(xi.mod.STR, 9999) -- back: judges_cape
    mob:addMod(xi.mod.DEX, 9999) -- back: judges_cape
    mob:addMod(xi.mod.VIT, 9999) -- back: judges_cape
    mob:addMod(xi.mod.AGI, 9999) -- back: judges_cape
    mob:addMod(xi.mod.INT, 9999) -- back: judges_cape
    mob:addMod(xi.mod.MND, 9999) -- back: judges_cape
    mob:addMod(xi.mod.CHR, 9999) -- back: judges_cape
    mob:addGambit(ai.t.TARGET, { ai.c.NO_SAMBA, 0 }, { ai.r.JA, ai.s.BEST_SAMBA, 0 })
    mob:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.BOX_STEP })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 55 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.CURING_WALTZ_IV })
    mob:addGambit(ai.t.SELF, { ai.c.TP_GTE, 1250 }, { ai.r.WS, ai.s.HIGHEST, 0 })
    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 1250)

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
