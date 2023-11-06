--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/adecayingdeadlingHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.24 12:10:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    SpawnSet(NPC, "heroic", 1)
    SetSpawnAnimation(NPC, 13016)
    if GetClass(NPC) ==31 then
    SetSeeHide(NPC,1)
    end
end

function hailed(NPC, Spawn)
	Attack(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end