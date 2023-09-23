--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/acorrupteddryad.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.22 01:09:00
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Dryad_Corrupt1.lua")
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