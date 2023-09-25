--[[
    Script Name    : SpawnScripts/OverlordsPrivateChambers/LucanicKnightInitiateMale.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.24 11:09:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
	 PlayFlavor(NPC, "voiceover/english/lucanic_knight_initiate/fprt_ph_3r03/quest_f_betrayal_fightone_2_callout1_a40b5115.mp3", "This one's a bit puny, wouldn't you say?", "", 1414515790, 3686356188)
end

function respawn(NPC)
	spawn(NPC)
end

