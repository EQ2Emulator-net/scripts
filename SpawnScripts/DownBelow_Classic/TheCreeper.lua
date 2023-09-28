--[[
    Script Name    : SpawnScripts/DownBelow_Classic/TheCreeper.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SetSeeHide(NPC,1)
    SetSeeInvis(NPC,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end