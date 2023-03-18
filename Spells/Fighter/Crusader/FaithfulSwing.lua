--[[
    Script Name    : Spells/Fighter/Crusader/FaithfulSwing.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 08:03:28
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, HealMin, HealMax)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
    MaxHealth = GetMaxHP(Caster)
    MinHeal = math.floor(MaxHealth * HealMin)
    MaxHeal = math.floor(MaxHealth * HealMax)
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus *2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    SpellHeal("Heal", MinHeal, MaxHeal, Caster)
 
end

