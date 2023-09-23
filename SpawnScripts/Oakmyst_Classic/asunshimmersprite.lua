--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/asunshimmersprite.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.10 03:09:27
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

