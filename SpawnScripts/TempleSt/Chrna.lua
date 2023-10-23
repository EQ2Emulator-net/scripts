--[[
	Script Name		: SpawnScripts/TempleStreet/Chrna.lua
	Script Purpose	: Chrna
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local TheMissingBook = 5681

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else  
 Dialog1(NPC, Spawn)
 end
end





function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Chrna look for hidden treasures.  Maybe you see where they are, yes?  ")
	Dialog.AddVoiceover("voiceover/english/chrna/fprt_hood03/qst_chrna.mp3", 1920372216, 1161082682)
    if GetQuestStep(Spawn, TheMissingBook) == 1 then
    Dialog.AddOption("Treasures, as in a stolen book? Tell me where it is!","Dialog2")
    end
    Dialog.AddOption("I haven't seen any, but will keep an eye out for you.  Good luck!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","","happy",0,0, Spawn)
	Dialog.AddDialog("Yesyesyes! I dids it! I confesses, I do! A mighty magi in the Sprawl paidses me to steals the book from the Dark Elf. I am so sorrrrrrry... I feel so horrrrrrible... the GUILT will plagues me till I die.... Waaaaaahhhhh.... how cans I lives with my self?.... Booo Hooo hooo... BOO-HOO-HOOOOOOOO!")
	Dialog.AddVoiceover("voiceover/english/chrna/fprt_hood05/quests/lotniklria/trueratonga_lotni_x1_initial.mp3", 3981798709, 2280901962)
    if GetQuestStep(Spawn, TheMissingBook) == 1 then
       SetStepComplete(Spawn, TheMissingBook, 1)
    end
    Dialog.AddOption("Okay! Okay... I must report this.","Continue")
	Dialog.Start()
    AddTimer(NPC,14500,"Heart",1,Spawn)
    AddTimer(NPC,23000,"Cry",1,Spawn)
end

function Heart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","heartattack",0,0, Spawn)
end

function Cry(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","cry",0,0, Spawn)
end

function Continue(NPC, Spawn)
end