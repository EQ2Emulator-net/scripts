--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadcrusaderValeron.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.15 01:08:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton2.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

    SetSpawnAnimation(NPC, 13016)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end