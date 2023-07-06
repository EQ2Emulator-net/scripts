--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskEndPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.04 04:07:21
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
    local difficulty3 = 6
    local hp3 = 430
    local power3 = 160
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -164.04, -2.67, 34.78, 2, 10)
	MovementLoopAddLocation(NPC, -159.92, -2.67, 34.68, 2, 0)
	MovementLoopAddLocation(NPC, -147.13, -2.67, 34.18, 2, 0)
	MovementLoopAddLocation(NPC, -142.66, -2.67, 31.82, 2, 10)
	MovementLoopAddLocation(NPC, -142.66, -2.67, 31.82, 2, 0)
	MovementLoopAddLocation(NPC, -146.47, -2.67, 33.88, 2, 0)
	
end
