--[[
    Script Name    : Quests/Hallmark/becoming_a_sorcerer.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.29 03:09:49
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to duel Dasicar T'Lys.", 1, "I need to seek out Dasicar T'Lys in the Academy dueling room to have our duel.", 611, 1)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I defeated Dasicar T'Lys.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I defeated Dasicar T'Lys in a duel.")

	AddQuestStepChat(Quest, 2, "I need to speak with the Arcanist.", 1, "I need to return to Arcanist Sonius and let her know I was the victor.", 11,1)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with the Arcanist.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Arcanist Sonius.")

	UpdateQuestDescription(Quest, "I defeated Dasicar T'Lys in a duel of mages.  Arcanist Sonius was surprised that I won and Dasicar was the vanquished.  It doesn't matter.  I am the one that is now the Sorcerer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
