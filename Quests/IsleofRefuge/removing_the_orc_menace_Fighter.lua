--[[
    Script Name    : Quests/IsleofRefuge/removing_the_orc_menace_Fighter.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.24 03:09:47
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Braksen
        Preceded by: Striking Back at the Goblins
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the orc's cave.", 1, "I need to find the orc's cave on the northeast part of the island, past the main goblin encampment.", 11, -13.77, 0.00, -3.00, 324)
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
	UpdateQuestStepDescription(Quest, 1, "I found the orc cave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the orc cave.")

	AddQuestStepKill(Quest, 2, "I need to kill Grimgash the Black.", 1, 100, "I need to kill Grimgash the Black who I now know to be the cause of the goblin uprising.", 11, 3240000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed Grimgash the Black.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed Grimgash the Black.")

	AddQuestStepChat(Quest, 3, "I should tell Braksan that Grimgash is dead.", 1, "I should tell Braksan that Grimgash is dead.", 11, 3250017)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Braksan.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke to Braksan.")

	UpdateQuestDescription(Quest, "I found Grimgash the Black and helped slay him.  That orc will not be organizing raids any time soon... For all my hard work Braksan gave me a buckler as a reward for my service to the outpost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end