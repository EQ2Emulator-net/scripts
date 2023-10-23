--[[
    Script Name    : SpawnScripts/TempleSt/OldManMuckwort.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_multhail1_13434115.mp3", "Bah! Keep your meddling to yourself, leave me be ... and STAY OFF MY PORCH! You heard me. Get out of here!", "", 3647820805, 3418409987, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_callout_ff44b21f.mp3", "Darn pests... messing up my yard and sneaking up on my porch... What do you need, ya' snot-nosed punk?", "", 3612569160, 2400812732, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_callout_ff44b21f.mp3", "Darn pests ... messing up my yard and sneaking up on my porch ... What do you need, ya' snot-nosed punk?", "", 3612569160, 2400812732, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_multhail1_13434115.mp3", "Bah!  Keep your meddling to yourself, leave me be ... and STAY OFF MY PORCH! You heard me, get out of here!", "", 3647820805, 3418409987, Spawn, 0)
	end
end