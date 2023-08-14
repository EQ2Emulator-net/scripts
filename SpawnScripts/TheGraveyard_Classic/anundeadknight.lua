--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadknight.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 05:08:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 7
    local hp1 = 370
    local power1 = 160
    local difficulty2 = 7
    local hp2 = 430
    local power2 = 200
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