--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadlancer.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 04:08:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton2.lua")

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end