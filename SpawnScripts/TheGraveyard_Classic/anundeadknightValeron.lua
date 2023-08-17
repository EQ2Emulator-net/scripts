--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/anundeadknightValeron.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.15 01:08:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end