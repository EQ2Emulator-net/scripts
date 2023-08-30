--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/TheBonewatcher.lua
    Script Author  : Dorbin
    Script Date    : 2023.08.29 12:08:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)

end

function hail(NPC,Spawn)
    SendMessage(NPC,"The Bonewatcher stares in your general direction... Almost as if it is looking through you.","white")
end


function respawn(NPC)
	spawn(NPC)
end