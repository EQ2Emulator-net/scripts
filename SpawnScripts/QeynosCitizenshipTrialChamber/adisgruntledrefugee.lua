--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/adisgruntledrefugee.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 06:08:19
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","wince",0,0,Spawn)
	Dialog.AddDialog("I promise I'll be better if you find it in your heart to spare me")
	Dialog.AddOption("Why would I do that?", "Dialog2")
	Dialog.AddOption("You must be punished for your crimes!", "AttackTimer")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I made one mistake ... I cast my lot with these scoundrels, and yet, I've regretted it ever since.  Can you not spare me?  I wish only to go back to my former life and make amends to the Ironforges.")
	Dialog.AddOption("Perhaps.  I need to think upon this further.")
	Dialog.AddOption("I'm listening...", "Dialog3")
	Dialog.AddOption("You must be punished for your crimes!", "AttackTimer")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll do anything!  I betrayed all who I loved by my actions, and I cannot bring myself to face the consequences.")
    PlayFlavor(NPC,"","","beg",0,0,Spawn)
	Dialog.AddOption("You will have to face those consequences... but you will not face death. Begone.","ThankYou")
	Dialog.AddOption("You must be punished for your crimes!", "AttackTimer")
	Dialog.Start()
end



function ThankYou(NPC,Spawn)
    AddTimer(NPC,6400,"Runaway",1)
    SetStepComplete(Spawn,5718,5)
    PlayFlavor(NPC,"","","notworthy",0,0,Spawn)
end 

function Runaway(NPC,Spawn)
    Despawn(NPC)
    MoveToLocation(NPC, -10.91, -0.39, 1.64, 4)
--  MoveToLocation(NPC, -9.65, -0.39, -8.53, 4)
--  MoveToLocation(NPC, 16.44, -0.39, -9.29, 4)
--  MoveToLocation(NPC, 19.30, 1.17, -0.86, 4)
--  MoveToLocation(NPC, -10.94, 0.99, 8.04 , 4,"Leave")
end

function death(NPC,Spawn)
    SetStepComplete(Spawn,5718,5)
end
    
function Leave(NPC)
    Despawn(NPC)
end

function AttackTimer(NPC,Spawn)
    AddTimer(NPC,1200,"Attacking",1,Spawn)
end

function Attacking(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
    Attack(NPC,Spawn)
end

function aggro(NPC,Spawn)
     SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
end


  