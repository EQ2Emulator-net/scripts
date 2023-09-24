--[[
    Script Name    : SpawnScripts/Antonica/adankfurgnollWarrior.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.13 02:03:07
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
 
end

function respawn(NPC)
	spawn(NPC)
end