--[[
    Script Name    : SpawnScripts/Antonica/anoverlandminer.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.26 11:05:24
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseDwarf1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SetInfoStructString(NPC, "action_state", "mining_digging")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end