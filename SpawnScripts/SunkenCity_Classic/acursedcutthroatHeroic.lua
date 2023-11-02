--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/acursedcutthroatHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.17 07:10:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton2.lua")

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SpawnSet(NPC, "heroic", 1)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end