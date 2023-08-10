--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/acrumblingskeletonHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.10 04:08:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end