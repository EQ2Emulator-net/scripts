--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadpikemanHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 01:08:52
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