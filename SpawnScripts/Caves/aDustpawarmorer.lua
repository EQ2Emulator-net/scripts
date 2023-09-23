--[[
	Script Name	: SpawnScripts/Caves/aDustpawarmorer.lua
	Script Purpose	: a Dustpaw armorer 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    
end

function respawn(NPC, Spawn)
    spawn()
end