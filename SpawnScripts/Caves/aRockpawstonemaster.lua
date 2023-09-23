--[[
    Script Name    : SpawnScripts/Caves/aRockpawstonemaster.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.05 11:10:34
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