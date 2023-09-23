--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arottingcitizen.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.22 02:09:38
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