--[[
    Script Name    : Quests/Hallmark/stonestair_byway_citizenship_task.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.29 04:06:46
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather five tokens from the creatures in the Graveyard.", 5, 34, "The Graveyard has been seeded with tokens for the citizens of Stonestair Byway to gather. These tokens may be found on any creatures in the Graveyard.  I can reach the Graveyard by using any of the bells in and around the City of Freeport.", 1366, 1250001,1250005,1250006,1250007,1250008,1250009,1250010,1250011,1250012,1250013,1250014,1250015,1250016,1250017,1250018,1250019,1250021,1250022,1250023,1250024,1250025,1250027,1250028,1250030,1250031,1250033,1250035,1250036,1250039,1250040,1250041,1250044,1250045,1250046,1250048,1250049,1250054,1250065,1250067)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Graveyard")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have gathered five tokens from the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the tokens required to prove my worth as a citizen.")
    UpdateQuestZone(Quest,"Stonestair Byway")
	AddQuestStep(Quest, 2, "I need to enter the citizenship trial.", 1, 100, "I must perform the citizenship trial by returning to the Citizenship Sign and entering the trial chamber",1335)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've entered the citizenship trial.")
    UpdateQuestZone(Quest,"Uncovered Traitors Hideout")
	AddQuestStepChat(Quest, 3, "I need to speak with Abbetor T'Avi regarding my Citizenship Trial.", 1, "I need to speak with Abbetor T'Avi regarding my Citizenship Trial", 1350, 1640000)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")   
end

function Step3Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've entered the citizenship trial.")

 	AddQuestStepChat(Quest, 4, "I need to judge the traitors.",1, "Abbetor T'Avi has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101351)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")   
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've judged the traitors.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have dealt with the traitors")
	AddQuestStepChat(Quest, 5, "I need to return to Abbetor T'Avi.", 1, "I must return to Abbetor T'Avi to let her know the deed is done.",0, 1640000)
    AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Freeport Citizenship Granted")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Abbetor T'Avi and she has granted me Freeport citizenship.")

	UpdateQuestDescription(Quest, "The task list is completed and you may now apply to become a citizen of the city of Freeport.")
	GiveQuestReward(Quest, Player)
alignment = GetAlignment(Player)

if alignment ~= 0 then
SetAlignment(Player, 0)
end
end



function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	Step1Complete(Quest, QuestGiver, Player)
    elseif Step == 2 then	    
    Step2Complete(Quest, QuestGiver, Player)
    elseif Step == 3 then	    
    Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then	    
    Step4Complete(Quest, QuestGiver, Player)
    elseif Step == 5 then	    
	QuestComplete(Quest, QuestGiver, Player)
	end
end
