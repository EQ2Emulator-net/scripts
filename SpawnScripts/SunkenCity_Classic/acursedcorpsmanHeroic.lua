--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/acursedcorpsmanHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.17 07:10:15
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SpawnSet(NPC, "heroic", 1)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end