--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/abrinesifter.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.12 04:10:01
    Script Purpose : 
                   : 
--]]
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