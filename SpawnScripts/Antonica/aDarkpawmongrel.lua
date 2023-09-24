--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawmongrel.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.24 04:09:02
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