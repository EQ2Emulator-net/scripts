--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadlancerHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 04:08:24
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