--[[
    Script Name    : SpawnScripts/TempleSt/BarmaidKrasa.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end