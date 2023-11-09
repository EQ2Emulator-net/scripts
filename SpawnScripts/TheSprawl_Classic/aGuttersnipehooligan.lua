--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipehooligan.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.08 08:11:01
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