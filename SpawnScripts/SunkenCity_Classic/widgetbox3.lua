--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/widgetbox3.lua
    Script Author  : Dorbin
    Script Date    : 2023.11.02 06:11:27
    Script Purpose : 
                   : 
--]]

local LukursAntiques = 374

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Search' then
		if  GetTempVariable(Spawn,"Mask1")=="1" then --ShadowedMask
            SetStepComplete(Spawn, LukursAntiques, 1)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, LukursAntiques, 2)
end

function respawn(NPC)
	spawn(NPC)
end