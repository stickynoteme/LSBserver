-----------------------------------
-- Trust: Zeid
-- Jobs: WHM/RDM
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
    mob:changeSJob(xi.job.RDM)
    mob:setSpellList(1)

    -- Faux Gear Look
    mob:setLook({ main = 361, body = 62 })

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.STR, 20) -- main: gozuki_mezuki
    mob:addMod(xi.mod.ATT, 43) -- main: gozuki_mezuki
    mob:addMod(xi.mod.ACC, 43) -- main: gozuki_mezuki
    mob:addMod(xi.mod.DOUBLE_ATTACK, 3) -- main: gozuki_mezuki
    mob:addMod(xi.mod.TRIPLE_ATTACK, 2) -- main: gozuki_mezuki
    mob:addMod(xi.mod.1, 125) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.HP, 139) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.MP, 144) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.STR, 21) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.DEX, 21) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.VIT, 21) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.AGI, 21) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.INT, 29) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.MND, 29) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.CHR, 29) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.ENMITY, -13) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.MDEF, 6) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.MEVA, 80) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.EVA, 41) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.SPELLINTERRUPT, 25) -- body: rosette_jaseran_+1
    mob:addMod(xi.mod.HASTE_GEAR, 300) -- body: rosette_jaseran_+1

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
