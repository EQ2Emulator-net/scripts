--[[
    Script Name    : ItemScripts/AcommemorativeQeynosCoin.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.30 08:05:12
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function examined(Item, Player)
conversation = CreateConversation()
PlayFlavor(Player,"voiceover/english/tullia_domna/fprt_hood04/quests/tulladomna/tulla_x1_initial.mp3","","",309451026,621524268,Player)
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "As you clutch the coin in your hand, you hear a voice magically speaking in your mind.")
end


function CloseConvo(Item,Player)
    CloseItemConversation(Item,Player)
end