--[[
    Script Name    : Spells/Commoner/TheOverlordsWill.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.26 03:09:36
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]


function cast(Caster, Target)
    if GetQuestStep(Target,5890)==1 then
        SetStepComplete(Target,5890,1)
    end
    KillSpawn(Target,Caster)
end
