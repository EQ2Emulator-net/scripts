--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadfighterHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 03:08:34
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua")
require "SpawnScripts/Generic/CombatModule"

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