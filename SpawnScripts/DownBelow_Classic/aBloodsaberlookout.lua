--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberlookout.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:34
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BloodSabers.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    if not HasLanguage(Spawn,26) then
        Garbled(NPC,Spawn)
    end
end

function spawn(NPC)
    SetSeeHide(NPC,1)
    SetSeeInvis(NPC,1)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end