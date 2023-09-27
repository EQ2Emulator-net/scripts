--[[
    Script Name    : SpawnScripts/Commonlands/ExecutionerSelindi.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 06:05:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional1/executioner_selindi/commonlands/quest/020_executioner_selindi_callout1_da9a558a.mp3", "Move along unless you want to join these skeletons.", "", 2115754705, 267010184, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

--Pay attention, for I only have time to say it once.  The rare poison coating my axe preserved you long enough for me to revive you.  It may be a very long time before you fully recover from the poison.  I believed your words, friend.