--[[
    Script Name    : SpawnScripts/TempleSt/SparzitCogsnibble.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.08 03:07:42
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