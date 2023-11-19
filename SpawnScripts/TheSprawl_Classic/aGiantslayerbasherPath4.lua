--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGiantslayerbasherPath4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.19 06:11:07
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    ogre(NPC)
    waypoints(NPC)
    
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, 39.17, -2.58, -22.44, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.17, -2.58, -22.44, 2, 0)
	MovementLoopAddLocation(NPC, 34.14, -2.55, -21.31, 2, 0)
	MovementLoopAddLocation(NPC, 27.14, -2.55, -14.17, 2, 0)
	MovementLoopAddLocation(NPC, 21.77, -2.55, -12.59, 2, 0)
	MovementLoopAddLocation(NPC, 16.01, -2.56, -12.73, 2, 0)
	MovementLoopAddLocation(NPC, 11.53, -2.65, -14.28, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 11.53, -2.65, -14.28, 2, 0)
	MovementLoopAddLocation(NPC, 15.32, -2.59, -13.16, 2, 0)
	MovementLoopAddLocation(NPC, 21.66, -2.56, -11.94, 2, 0)
	MovementLoopAddLocation(NPC, 26.09, -2.55, -13.98, 2, 0)
	MovementLoopAddLocation(NPC, 32.84, -2.55, -19.91, 2, 0)
	MovementLoopAddLocation(NPC, 38.6, -2.56, -21.52, 2, 0)
	MovementLoopAddLocation(NPC, 44.84, -2.67, -14.74, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.84, -2.67, -14.74, 2, 0)
	MovementLoopAddLocation(NPC, 39.27, -2.58, -21.33, 2, 0)
	MovementLoopAddLocation(NPC, 43.5, -2.67, -24.2, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 43.5, -2.67, -24.2, 2, 0)
	MovementLoopAddLocation(NPC, 39.41, -2.6, -20.87, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.41, -2.6, -20.87, 2, 0)
	MovementLoopAddLocation(NPC, 46.16, -2.67, -20.27, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 46.16, -2.67, -20.27, 2, 0)
	MovementLoopAddLocation(NPC, 37.03, -2.55, -21.88, 2, 0)
	MovementLoopAddLocation(NPC, 34.4, -2.55, -21.16, 2, 0)
	MovementLoopAddLocation(NPC, 26.01, -2.55, -13.1, 2, 0)
	MovementLoopAddLocation(NPC, 19.41, -2.55, -12.47, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 19.41, -2.55, -12.47, 2, 0)
	MovementLoopAddLocation(NPC, 25.39, -2.55, -12.9, 2, 0)
	MovementLoopAddLocation(NPC, 31.25, -2.55, -18.89, 2, 0)
	MovementLoopAddLocation(NPC, 34.5, -2.55, -21.13, 2, 0)
end