--[[
    Script Name    : SpawnScripts/Antonica/awitherstrawscarecrow.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.27 12:05:42
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/WitherstrawScarecrows.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end