--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/ahalflingupstart.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.20 07:11:46
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    halfling(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end