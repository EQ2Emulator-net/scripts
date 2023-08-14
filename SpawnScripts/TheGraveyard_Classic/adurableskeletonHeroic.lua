--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/adurableskeletonHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.13 11:08:29
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