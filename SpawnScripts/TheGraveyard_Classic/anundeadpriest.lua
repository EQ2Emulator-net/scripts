--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadpriest.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 04:08:10
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