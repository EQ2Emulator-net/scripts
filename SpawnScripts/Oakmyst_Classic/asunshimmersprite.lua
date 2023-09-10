--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/asunshimmersprite.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.10 03:09:27
    Script Purpose : 
                   : 
--]]

local Catalogue = 519

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Catalogue Creature" then
		if HasQuest(Spawn, Catalogue) and GetQuestStepProgress(Spawn,Catalogue,2) == 0 then
			AddStepProgress(Spawn, Catalogue, 1, 2)
			        local con = CreateConversation()
        AddConversationOption(con, "Close the entry.")
        StartDialogConversation(con, 1, NPC, Spawn, "Sunshimmer Sprite\n\n \"Sprites are a newer addition to the Oakmyst since The Cataclysm. Supposedly hailing from more enchanted waters, they were swept in from the torrential seas. It is hard to say what terms they have made with the resident fairies. Unlike the fairies here in Oakmyst, sprites are known to be true to their word.\"\n\n-Tracker Kelnis")        end
end
end