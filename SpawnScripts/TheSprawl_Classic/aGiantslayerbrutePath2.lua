--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGiantslayerbrutePath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.16 09:11:47
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    race(NPC)
    waypoints(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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


function race(NPC)
    local race = MakeRandomInt(1,3)
    if race == 1 then
        barbarian(NPC)
        elseif race == 2 then
            ogre(NPC)
            elseif race == 3 then
                troll(NPC)
    end
end
    
    
function barbarian(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",111)    
    else
    SpawnSet(NPC,"model_type",112)    
    end
    
end


function ogre(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",123)    
    else
    SpawnSet(NPC,"model_type",124)    
    end
    
end


function troll(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",105)    
    else
    SpawnSet(NPC,"model_type",106)    
    end

end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 14.49, -2.54, -54.5, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 14.49, -2.54, -54.5, 2, 0)
	MovementLoopAddLocation(NPC, 18.89, -2.54, -53.47, 2, 0)
	MovementLoopAddLocation(NPC, 25.99, -2.54, -53.76, 2, 0)
	MovementLoopAddLocation(NPC, 30.6, -2.54, -53.16, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 30.6, -2.54, -53.16, 2, 0)
	MovementLoopAddLocation(NPC, 27, -2.54, -53.13, 2, 0)
	MovementLoopAddLocation(NPC, 23.63, -2.59, -50.38, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 23.63, -2.59, -50.38, 2, 0)
	MovementLoopAddLocation(NPC, 19.31, -2.54, -54.49, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 19.31, -2.54, -54.49, 2, 0)
	MovementLoopAddLocation(NPC, 26.79, -2.54, -52.52, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 26.79, -2.54, -52.52, 2, 0)
	MovementLoopAddLocation(NPC, 18.57, -2.54, -53.02, 2, 0)
	MovementLoopAddLocation(NPC, 12.01, -2.62, -50.82, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 12.01, -2.62, -50.82, 2, 0)
	MovementLoopAddLocation(NPC, 19.73, -2.54, -55.21, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 19.73, -2.54, -55.21, 2, 0)
end

