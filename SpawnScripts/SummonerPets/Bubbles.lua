--[[
    Script Name    : SpawnScripts/SummonerPets/Bubbles.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 03:11:24
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    barbarian(NPC, Spawn)
    RandomMovement(NPC, Spawn, -20, 20, 2, 5, 10)
    
    
end

function attacked(NPC)
    
    
end


function hailed(NPC, Spawn)

end



function respawn(NPC)
	spawn(NPC)
end

