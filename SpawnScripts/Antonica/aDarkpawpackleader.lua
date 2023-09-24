--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawpackleader.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.15 07:07:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end