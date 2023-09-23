--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsabermeddler.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.13 03:09:11
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

end


function respawn(NPC)
	spawn(NPC)
end