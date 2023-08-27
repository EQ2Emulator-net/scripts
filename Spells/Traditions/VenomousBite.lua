--[[
    Script Name    : Spells/Traditions/VenomousBite.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.27 02:08:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MainVal, DoTVal)
    Level = GetLevel(Caster)
    SpellLevel = 4
    Mastery = SpellLevel + 3
   
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    TotalDmg = MainVal + LvlBonus
    SpellDamage(Target, 2, TotalDmg, TotalDmg)
end


function tick(Caster, Target, MainVal, DoTVal)
    Level = GetLevel(Caster)
    SpellLevel = 4
    Mastery = SpellLevel + 3
   
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    PowerDrain = 0 - DoTVal - LvlBonus
    ModifyPower(Target, PowerDrain)
    --SpellHeal("Power", PowerDrain, PowerDrain, Target)
end