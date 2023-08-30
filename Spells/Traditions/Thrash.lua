--[[
    Script Name    : Spells/Traditions/Thrash.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.29 11:08:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 1
    Mastery = SpellLevel + 50
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddControlEffect(Target, 2)
   end


function tick(Caster, Target, DmgType, Minval, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 1
    Mastery = SpellLevel + 50
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

end


function remove(Caster, Target)
    RemoveControlEffect(Target, 2)

end


