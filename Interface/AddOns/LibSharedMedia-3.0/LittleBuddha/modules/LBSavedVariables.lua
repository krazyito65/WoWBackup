function LittleBuddha_SavedVariables()
	if LittleBuddha_States.Whisper == true then
  		ChatTypeInfo["WHISPER"].flashTab = true
  	else
  		ChatTypeInfo["WHISPER"].flashTab = false
  	end
  	if LittleBuddha_States.WhisperGen == true then
  		ChatTypeInfo["WHISPER"].flashTabOnGeneral = true
  	else
  		ChatTypeInfo["WHISPER"].flashTabOnGeneral = false
  	end
  	if LittleBuddha_States.Guild == false then
  		ChatTypeInfo["GUILD"].flashTab = false
  	else
  		ChatTypeInfo["GUILD"].flashTab = true
  	end
  	if LittleBuddha_States.Officer == false then
  		ChatTypeInfo["OFFICER"].flashTab = false
  	else
  		ChatTypeInfo["OFFICER"].flashTab = true
  	end
  	if LittleBuddha_States.Raid == false then
  		ChatTypeInfo["RAID"].flashTab = false
  	else
  		ChatTypeInfo["RAID"].flashTab = true
  	end
	if LittleBuddha_States.Party == false then
  		ChatTypeInfo["PARTY"].flashTab = false
  	else
  		ChatTypeInfo["PARTY"].flashTab = true
  	end
	if LittleBuddha_States.RaidLeader == false then
  		ChatTypeInfo["RAID_LEADER"].flashTab = false
  	else
  		ChatTypeInfo["RAID_LEADER"].flashTab = true
  	end
	if LittleBuddha_States.PartyLeader == false then
  		ChatTypeInfo["PARTY_LEADER"].flashTab = false
  	else
  		ChatTypeInfo["PARTY_LEADER"].flashTab = true
  	end
	if LittleBuddha_States.Instance == false then
  		ChatTypeInfo["INSTANCE_CHAT"].flashTab = false
  	else
  		ChatTypeInfo["INSTANCE_CHAT"].flashTab = true
  	end
	if LittleBuddha_States.InstanceLeader == false then
  		ChatTypeInfo["INSTANCE_CHAT_LEADER"].flashTab = false
  	else
  		ChatTypeInfo["INSTANCE_CHAT_LEADER"].flashTab = true
  	end
	if LittleBuddha_States.BNWhisper == true then
  		ChatTypeInfo["BN_WHISPER"].flashTab = true
  	else
  		ChatTypeInfo["BN_WHISPER"].flashTab = false
  	end
	if LittleBuddha_States.BNWhisperGen == true then
  		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = true
  	else
  		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = false
  	end
	if LittleBuddha_States.BNConversation == true then
  		ChatTypeInfo["BN_CONVERSATION"].flashTab = true
  	else
  		ChatTypeInfo["BN_CONVERSATION"].flashTab = false
  	end
	if LittleBuddha_States.BNConversationGen == false then
  		ChatTypeInfo["BN_CONVERSATION"].flashTabOnGeneral = false
  	else
  		ChatTypeInfo["BN_CONVERSATION"].flashTabOnGeneral = true
  	end
  	if LittleBuddha_States.ChannelOne == false then
  		ChatTypeInfo["CHANNEL1"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL1"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelTwo == false then
  		ChatTypeInfo["CHANNEL2"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL2"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelThree == false then
  		ChatTypeInfo["CHANNEL3"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL3"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelFour == false then
  		ChatTypeInfo["CHANNEL4"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL4"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelFive == false then
  		ChatTypeInfo["CHANNEL5"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL5"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelSix == false then
  		ChatTypeInfo["CHANNEL6"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL6"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelSeven == false then
  		ChatTypeInfo["CHANNEL7"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL7"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelEight == false then
  		ChatTypeInfo["CHANNEL8"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL8"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelNine == false then
  		ChatTypeInfo["CHANNEL9"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL9"].flashTab = true
  	end
  	if LittleBuddha_States.ChannelTen == false then
  		ChatTypeInfo["CHANNEL10"].flashTab = false
  	else
  		ChatTypeInfo["CHANNEL10"].flashTab = true
  	end
end