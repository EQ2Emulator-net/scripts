--[[
    Script Name    : SpawnScripts/Classic_forest/atirelessstudent.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.17 01:10:04
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SkeletonSleepless1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end