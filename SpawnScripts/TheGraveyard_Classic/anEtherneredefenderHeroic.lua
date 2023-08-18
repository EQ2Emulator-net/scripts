--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anEtherneredefenderHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.17 07:08:41
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