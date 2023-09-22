--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunner.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.09 09:03:49
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end