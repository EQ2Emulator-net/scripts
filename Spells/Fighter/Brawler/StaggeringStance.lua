--[[
    Script Name    : Spells/Fighter/Brawler/StaggeringStance.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.29 05:09:28
    Script Purpose : 
                   : 
--]]
--Note: Need to replace deflection with agility
function cast(Caster, Target, Chance, Def)
        AddSkillBonus(Caster, GetSkillIDByName("Deflection"), Def)
        AddProc(Target, 4, Chance)

end

function proc(Caster, Target, Type)
        Say(Caster, "Avoidance buff not implemented.")

end

   
function remove(Caster, Target)
        RemoveSkillBonus(Caster)

end

