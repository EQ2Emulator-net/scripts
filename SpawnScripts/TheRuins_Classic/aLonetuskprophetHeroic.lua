--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskprophetHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.03 04:07:55
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