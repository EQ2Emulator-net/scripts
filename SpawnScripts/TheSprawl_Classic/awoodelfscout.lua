--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/awoodelfscout.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.20 07:11:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    woodelf(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end