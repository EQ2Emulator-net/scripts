--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aBlackMagiinsurgent.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.08 08:11:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ratonga(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end