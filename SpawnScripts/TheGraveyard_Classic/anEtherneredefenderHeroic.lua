--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anEtherneredefenderHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.17 07:08:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseDarkElf1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

    SpawnSet(NPC, "heroic", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SendMessage(NPC,"The defender looks at you with a tired, but determined, stare. Unwavered from its duties.","white")
end

function respawn(NPC)
	spawn(NPC)
end