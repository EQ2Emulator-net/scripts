--[[
    Script Name    : Spells/Traits/RemedialWill.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:32
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs noxious damage by 3

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 202, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end