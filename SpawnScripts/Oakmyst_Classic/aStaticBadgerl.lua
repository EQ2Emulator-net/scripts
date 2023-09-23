--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/aStaticBadgerl.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.21 01:10:23
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