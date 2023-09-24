--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aShoresideadder.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.23 07:09:42
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