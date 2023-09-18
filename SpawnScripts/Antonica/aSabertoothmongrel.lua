--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothmongrel.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 12:03:13
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end