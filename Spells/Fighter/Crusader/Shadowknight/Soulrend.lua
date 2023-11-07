--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/Soulrend.lua
    Script Author  : LordPazuz
    Script Date    : 11/6/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)

    SpellDamage(Target, DmgType, MinVal, MaxVal)
    
    if LastSpellAttackHit() then
        CastSpell(Target, 5001, GetSpellTier())
    end
end

