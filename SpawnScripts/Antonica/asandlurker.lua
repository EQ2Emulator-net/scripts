--[[
    Script Name    : SpawnScripts/Antonica/asandlurker.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.11 11:07:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end