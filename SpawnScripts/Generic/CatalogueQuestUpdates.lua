--[[
    Script Name    : SpawnScripts/Generic/CatalogueQuestUpdates.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.10 10:09:20
    Script Purpose : Facilitates updates for Catalogue Quest updates. Only created catalogue quests are referenced here. 
                        The script requires the 'Catalogue Creature' ability to be cast, Player to be on the right Quest, and the Appropriate Target/Update to complete the quest step.
                   : 
--]]
local OutlyingQeynos = 519

function casted_on(NPC, Spawn, Message)
    if Message == "Catalogue Creature" then
        if HasQuest(Spawn, OutlyingQeynos) then 

    --OAKMYST FAIRIES        
            if GetSpawnID(NPC) == 8300048 or GetSpawnID(NPC) == 8300049 or GetSpawnID(NPC) == 8300050 or GetSpawnID(NPC) == 8300014 or GetSpawnID(NPC) == 8300015 or GetSpawnID(NPC) == 8300011 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,1) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 1)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Oakmyst Fairy\n\n \"Oakmyst fairies should not be mistaken for sweet innocent pranksters. In a world of spirits, these fairies embody deception. Many tales are told to children of Qeynos about being led off into the woods by playful fayefolk, never to be seen again. Sadly, those tales are more true than I’d like to admit.\"\n\n-Heirophant Aldalad")
                    end
    --SUNSHIMMER SPRITE                
            elseif GetSpawnID(NPC) == 8300051 or GetSpawnID(NPC) == 8300052 or GetSpawnID(NPC) == 8300053 or GetSpawnID(NPC) == 8300006 or GetSpawnID(NPC) == 8300052 or GetSpawnID(NPC) == 8300012 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,2) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 2)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Sunshimmer Sprite\n\n \"Sprites are a newer addition to the Oakmyst since The Cataclysm. Supposedly hailing from more enchanted waters, they were swept in from the torrential winds. It is hard to say what terms they have made with the resident fairies to occupy the same woods. Unlike the fairies here in Oakmyst, sprites are known to be true to their word.\"\n\n-Tracker Kelnis")        end
                    end
    --BADGER CUB                
            elseif GetSpawnID(NPC) == 8300001 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,3) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 3)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Badger Cub\n\n \"Badger cubs go weeks before their ear canals develop! This lack of hearing causes the parental badgers to remain nearby at all times. If a parent badger loses their young, for whatever reason, their temperament becomes more vicious. That aggression empowers their attacks and manifests in their actual claws!\"\n\n-Yanari Cyellann")
                    end
    --RUINS SKULKER                
            elseif GetSpawnID(NPC) == 8270058 or GetSpawnID(NPC) == 8270059 or GetSpawnID(NPC) == 8270060 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,4) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 4)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Ruins Skulker\n\n \"The aqua goblins here in the ruins crawled out of the sea once the dust settled from the chunks of Luclin landed in the old mage quarter. They have this insatiable need to collect and trade trinkets they find among each other. You have to wonder where they put it all…\"\n\n-Sergeant at Arms Uthros")
                    end 
    --FLAMEPAW LOYALIST                
            elseif GetSpawnID(NPC) == 8270010 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,5) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 5)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Flamepaw Loyalist\n\n \"Kinloc Flamepaw was renowned in his day for his control of summoning magic in Qeynos during the Age of Turmoil. Aspiring mages flocked to him for protection from The Shattering as Luclin succumbed to its fate. Fortunately for us, he sacrificed himself to protect Qeynos. He did this by weaving together elements to absorb most of the impacts… His aspiring students were not as luckly. Even now, those mages still cling to Kinloc searching for answers. \"\n\n-Bellengere the Three")                     end
                    
    --SLEEPLESS ONE                
            elseif GetSpawnID(NPC) == 8270018 or GetSpawnID(NPC) == 8270066 then         
    
		            if  GetQuestStepProgress(Spawn,OutlyingQeynos,6) == 0 then
			        SetStepComplete(Spawn, OutlyingQeynos, 6)
			        local con = CreateConversation()
                    AddConversationOption(con, "Close the entry.")
                    StartDialogConversation(con, 1, NPC, Spawn, "Sleepless One\n\n \"Not all students of the arcane are as focused as I would like. Ages ago, practicing meditation to regain precious mana was common. This required closing your mind to distraction and feeling the mana flow through you. Still in the old magician guild ruins, these students continue their meditations- even in undeath. They might not even know they're dead!\n\nI'de doubt if today's students have that sort of attention span... \"\n\n-Telamina Garendell") 
                    end 


            end
    end
end