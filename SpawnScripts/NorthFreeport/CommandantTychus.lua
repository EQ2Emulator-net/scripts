--[[
    Script Name    : SpawnScripts/NorthFreeport/CommandantTychus.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.03 04:10:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "mood_angry")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end