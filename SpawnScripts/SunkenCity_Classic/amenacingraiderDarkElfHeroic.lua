--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/amenacingraiderDarkElfHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.27 08:10:53
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"
dofile("SpawnScripts/Generic/MonsterCallouts/BaseDarkElf1.lua")

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    Appearance(NPC)
    SpawnSet(NPC, "heroic", 1)
    
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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

function respawn(NPC)
	spawn(NPC)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",116)    
    else
    SpawnSet(NPC,"model_type",115)    
    end
end