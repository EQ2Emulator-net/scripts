--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/aboneyardwatcher.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 08:08:03
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 8
    local hp1 = 645
    local power1 = 300
    local difficulty2 = 8
    local hp2 = 870
    local power2 = 360
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
    SendMessage(NPC,"The watcher's cold and unwavering stare leaves you uneasy.","white")
end

function respawn(NPC)
	spawn(NPC)
end