--[[
    Script Name    : SpawnScripts/TempleSt/Brashk.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.27 12:10:31
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "gathering_search")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A new treasure lurks in every corner! Ooooh! ")
	Dialog.AddVoiceover("voiceover/english/optional1/brashk/fprt_hood03/qst_brashk.mp3", 67711495, 2241704250)
	Dialog.AddOption("I bet it does... if you treasure filth, that is. Goodbye.")
	Dialog.Start()
end
