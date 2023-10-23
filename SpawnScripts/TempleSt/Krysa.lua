--[[
    Script Name    : SpawnScripts/TempleSt/Krysa.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.22 02:10:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
    Dialog1(NPC, Spawn)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to Pshavost's bar.  If you want a drink, find my ugly sister Krasa or see Pshavost at the bar.")
	Dialog.AddVoiceover("voiceover/english/krysa/fprt_hood03/mer_barentertainerkrysa_hail.mp3", 2129178406, 2161516525)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
    Dialog.AddOption("I just might.")
	Dialog.Start()
end


function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/krysa/fprt_hood03/100_barentertainerkrysa_multhail2_7c1029d0.mp3", "Welcome to Pshavost's bar. If you want a drink, find my ugly sister Krasa or see Pshavost at the bar.", "", 766013067, 711037507, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/krysa/fprt_hood03/100_barentertainerkrysa_callout_a56d9ec5.mp3", "Welcome to Pshavost's bar!  You want a drink?", "", 3717169563, 2070235233, Spawn, 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end
