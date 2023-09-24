--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/AmbassadorKialee.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 01:10:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFairy1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end