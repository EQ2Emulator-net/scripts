--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGiantslayerbrute.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.08 08:11:58
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    troll(NPC)
    IdleAggressive(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end