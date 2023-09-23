--[[
    Script Name    : SpawnScripts/DownBelow_Classic/avenomspitter.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end