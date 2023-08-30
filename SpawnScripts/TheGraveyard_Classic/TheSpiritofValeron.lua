--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/TheSpiritofValeron.lua
    Script Author  : Dorbin
    Script Date    : 2023.08.29 05:08:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end