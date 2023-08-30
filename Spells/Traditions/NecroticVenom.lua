--[[
    Script Name    : Spells/Traditions/NecroticVenom.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.29 03:08:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MainVal, DoTVal)
    Level = GetLevel(Caster)
    SpellLevel = 3
    Mastery = SpellLevel + 5
   
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    TotalDmg = MainVal + LvlBonus
    SpellDamage(Target, 2, TotalDmg, TotalDmg)
end


function tick(Caster, Target, MainVal, DoTVal)
    Level = GetLevel(Caster)
    SpellLevel = 3
    Mastery = SpellLevel + 5
   
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    PowerDrain = 0 - DoTVal - LvlBonus
    ModifyPower(Target, PowerDrain)

end
