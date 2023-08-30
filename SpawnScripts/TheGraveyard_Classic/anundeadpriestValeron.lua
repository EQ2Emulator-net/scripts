--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadpriestValeron.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.15 01:08:05
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua")

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end