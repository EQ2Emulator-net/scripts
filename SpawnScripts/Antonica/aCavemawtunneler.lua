--[[
    Script Name    : SpawnScripts/Antonica/aCavemawtunneler.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 12:05:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end