--[[
    Script Name    : Quests/Hallmark/becoming_a_cleric.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.29 02:09:48
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Modinite Z'Vol.", 1, "I need to find Modinite Z'Vol and tell him I am ready for the Threshing.", 11, 1440466)
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
	UpdateQuestStepDescription(Quest, 1, "I spoke to Modinite Z'Vol.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Modinite Z'Vol and spoke to him.")

	AddQuestStep(Quest, 2, "I need to survive the Threshing.", 1, 100, "I need to enter the room to undergo the Threshing and then speak to Modinite Z'Vol.  I must survive this test.", 11)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I survived the Threshing.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I survived the test and spoke to Z'Vol.")

	UpdateQuestDescription(Quest, "I survived the pain of the Threshing.  I have emerged purified and worthy of the title I now hold.  I am a Cleric.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

