--[[
    Script Name    : SpawnScripts/PeatBog/qstambushtorture1.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 08:05:31
    Script Purpose : 
                   : 
--]]
local AMBUSHED_QUEST_ID = 509

function spawn(NPC)
SetRequiredQuest(NPC, AMBUSHED_QUEST_ID, 2, 1,0,1)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end