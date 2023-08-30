--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadpriestHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 04:08:00
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua")

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end