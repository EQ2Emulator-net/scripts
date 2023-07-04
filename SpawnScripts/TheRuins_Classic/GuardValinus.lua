--[[
    Script Name    : SpawnScripts/TheRuins_Classic/GuardValinus.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.04 04:07:44
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        else
	FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end