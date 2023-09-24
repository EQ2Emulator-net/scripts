--[[
    Script Name    : SpawnScripts/Antonica/HighwaymanHighMelee.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.07 09:07:17
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1290
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1930
    local power2 = 425
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


function respawn(NPC)
	spawn(NPC)
end