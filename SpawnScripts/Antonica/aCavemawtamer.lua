--[[
    Script Name    : SpawnScripts/Antonica/aCavemawtamer.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.01 11:04:55
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