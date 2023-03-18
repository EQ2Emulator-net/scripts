--[[
    Script Name    : Spells/Fighter/Crusader/PowerCleave.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 07:03:02
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, Parry)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus * 2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)
 
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
