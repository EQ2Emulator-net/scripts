--[[
    Script Name    : SpawnScripts/Antonica/atimberclawgnoll.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.09 01:07:44
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end