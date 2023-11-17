--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/Axefist.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.16 09:11:51
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