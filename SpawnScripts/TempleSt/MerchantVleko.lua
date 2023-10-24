--[[
    Script Name    : SpawnScripts/TempleSt/MerchantVleko.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 11:10:35
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