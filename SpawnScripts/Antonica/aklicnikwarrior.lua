--[[
    Script Name    : SpawnScripts/Antonica/aklicnikwarrior.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.15 04:09:30
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