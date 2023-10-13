--[[
    Script Name    : Spells/Traditions/DullClawClamp.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.12 04:10:56
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 5
    Mastery = SpellLevel + 50
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    MaxDmg = MaxVal + math.floor(LvlBonus * 2 + StatBonus)
    MinDmg = MinVal + math.floor(LvlBonus + StatBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end