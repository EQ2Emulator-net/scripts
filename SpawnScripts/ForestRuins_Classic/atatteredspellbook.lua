--[[
    Script Name    : SpawnScripts/ForestRuins_Classic/atatteredspellbook.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.22 01:09:27
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end