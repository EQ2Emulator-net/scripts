--[[
    Script Name    : SpawnScripts/Antonica/aCavemawtamer.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.01 11:04:55
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