-----------------------------------
-- Trust: Lion
-- Jobs: WAR/THF
-----------------------------------
---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled(true)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.WAR)
    mob:changesJob(xi.job.THF)

    mob:addMod(xi.mod.ATT, 35)
    mob:addMod(xi.mod.ACC, 25)
    mob:addMod(xi.mod.ENMITY, 20)

    -- Gear Mods (Aggregated)
    mob:setMobMod(xi.mobMod.WEAPON_BONUS, 74) -- main: alards_axe_+3
    mob:addMod(xi.mod.DELAY, 800)
    mob:addMod(xi.mod.SUB_DMG_RATING, 148)    -- sub: arasy_tabar
    mob:addMod(xi.mod.STR, 111)
    mob:addMod(xi.mod.DEX, 119)
    mob:addMod(xi.mod.AGI, 86)
    mob:addMod(xi.mod.ACC, 113)
    mob:addMod(xi.mod.TP_BONUS, 100)
    mob:addMod(xi.mod.DEF, 447)
    mob:addMod(xi.mod.HP, 227)
    mob:addMod(xi.mod.MP, 58)
    mob:addMod(xi.mod.VIT, 42)
    mob:addMod(xi.mod.INT, 52)
    mob:addMod(xi.mod.MND, 39)
    mob:addMod(xi.mod.CHR, 63)
    mob:addMod(xi.mod.WATER_MEVA, 20)
    mob:addMod(xi.mod.MDEF, 12)
    mob:addMod(xi.mod.MEVA, 240)
    mob:addMod(xi.mod.EVA, 184)
    mob:addMod(xi.mod.HASTE_GEAR, 2100)
    mob:addMod(xi.mod.ATT, 23)
    mob:addMod(xi.mod.STORETP, 11)
    mob:addMod(xi.mod.ENMITY, 4)
    mob:addMod(xi.mod.DOUBLE_ATTACK, 5)
    mob:addMod(xi.mod.RACC, 60)
    mob:addMod(xi.mod.SUBTLE_BLOW, 9)
    mob:addMod(xi.mod.SNAPSHOT, 2)
    mob:addMod(xi.mod.TRIPLE_ATTACK, 1)
    mob:addMod(xi.mod.CONVHPTOMP, 55)
    mob:addMod(xi.mod.THUNDER_MEVA, 20)
    mob:addMod(xi.mod.LTNG_ABSORB, 3)
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.BERSERK }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.BERSERK })
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 50 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.DEFENDER })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.WARCRY })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE })
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
