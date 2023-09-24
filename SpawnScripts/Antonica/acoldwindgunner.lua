--[[
    Script Name    : SpawnScripts/Antonica/acoldwindgunner.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.22 08:07:46
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 17
    local difficulty1 = 6
    local hp1 = 1045
    local power1 = 310
    local difficulty2 = 6
    local hp2 = 1180
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
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end