--[[
    Script Name    : SpawnScripts/TempleSt/ScribeFriziFigglesnip.lua
    Script Author  : Dorbin
    Script Date    : 2023.11.07 04:11:22
    Script Purpose : 
                   : 
--]]
--Didn't you hear what I said? Sorry. I thought you were asking something else. Some loathsome, unkempt fiends called Guttersnipes accosted me.

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/scribe_frizi_figglesnip/scribefigglesnip_multhail4_edit_64.mp3", "Ah ... yes, you killed the Guttersnipes. Unfortunately, that doesn't solve my book problem. Leave me alone. I've no further use for you.", "", 4232546415, 1790498085, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/scribe_frizi_figglesnip/scribefigglesnip_multhail1_edit_64.mp3", "I'm busy with other customers. Come back later.", "", 3159692842, 3138177466, Spawn, 0)
	end
end


function respawn(NPC)
	spawn(NPC)
end