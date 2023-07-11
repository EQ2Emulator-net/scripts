--[[
    Script Name    : SpawnScripts/TheRuins_Classic/anexiledorcHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.11 02:07:34
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end