--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystfairy.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 01:10:01
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFairy1.lua")
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
		if HasQuest(Spawn, Catalogue) and GetQuestStepProgress(Spawn,Catalogue,1) == 0 then
			AddStepProgress(Spawn, Catalogue, 1, 1)
			        local con = CreateConversation()
        AddConversationOption(con, "Close the entry.")
        StartDialogConversation(con, 1, NPC, Spawn, "Oakmyst Fairy\n\n \"Oakmyst fairies should not be mistaken for sweet innocent pranksters. In a world of spirits, these fairies embody deception. Many tales are told to children of Qeynos about being led off into the woods by playful fayefolk, never to be seen again. Sadly, those tales are more true than I’d like to admit.\"\n\n-Heirophant Aldalad")
        end
end
end
