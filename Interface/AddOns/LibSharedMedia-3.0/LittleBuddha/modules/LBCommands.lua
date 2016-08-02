function LittleBuddha_SWhisper()
	if LittleBuddha_States.Whisper then 
		LittleBuddha_States.Whisper = false;
		ChatTypeInfo["WHISPER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Whisper channel.');
	else 
		LittleBuddha_States.Whisper = true;
		ChatTypeInfo["WHISPER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Whisper channel.');
	end
end

function LittleBuddha_SWhisperGen()
	if LittleBuddha_States.WhisperGen then 
		LittleBuddha_States.WhisperGen = false;
		ChatTypeInfo["WHISPER"].flashTabOnGeneral = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Whisper (General Tab) channel.');
	else 
		LittleBuddha_States.WhisperGen = true;
		ChatTypeInfo["WHISPER"].flashTabOnGeneral = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Whisper (General Tab) channel.');
	end
end

function LittleBuddha_SGuild()
	if LittleBuddha_States.Guild then
		LittleBuddha_States.Guild = false;
		ChatTypeInfo["GUILD"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Guild channel.');
	else
		LittleBuddha_States.Guild = true;
		ChatTypeInfo["GUILD"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Guild channel.');
	end
end

function LittleBuddha_SOfficer()
	if LittleBuddha_States.Officer then
		LittleBuddha_States.Officer = false;
		ChatTypeInfo["OFFICER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Officer channel.');
	else
		LittleBuddha_States.Officer = true;
		ChatTypeInfo["OFFICER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Officer channel.');
	end
end

function LittleBuddha_SRaid()
	if LittleBuddha_States.Raid then
		LittleBuddha_States.Raid = false;
		ChatTypeInfo["RAID"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Raid channel.');
	else
		LittleBuddha_States.Raid = true;
		ChatTypeInfo["RAID"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Raid channel.');
	end
end

function LittleBuddha_SParty()
	if LittleBuddha_States.Party then
		LittleBuddha_States.Party = false;
		ChatTypeInfo["PARTY"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Party channel.');
	else
		LittleBuddha_States.Party = true;
		ChatTypeInfo["PARTY"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Party channel.');
	end
end

function LittleBuddha_SRaidLeader()
	if LittleBuddha_States.RaidLeader then
		LittleBuddha_States.RaidLeader = false;
		ChatTypeInfo["RAID_LEADER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Raid Leader channel.');
	else
		LittleBuddha_States.RaidLeader = true;
		ChatTypeInfo["RAID_LEADER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Raid Leader channel.');
	end
end

function LittleBuddha_SPartyLeader()
	if LittleBuddha_States.PartyLeader then
		LittleBuddha_States.PartyLeader = false;
		ChatTypeInfo["PARTY_LEADER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Party Leader channel.');
	else
		LittleBuddha_States.PartyLeader = true;
		ChatTypeInfo["PARTY_LEADER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Party Leader channel.');
	end
end

function LittleBuddha_SInstance()
	if LittleBuddha_States.Instance then
		LittleBuddha_States.Instance = false;
		ChatTypeInfo["INSTANCE_CHAT"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Instance channel.');
	else
		LittleBuddha_States.Instance = true;
		ChatTypeInfo["INSTANCE_CHAT"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Instance channel.');
	end
end

function LittleBuddha_SInstanceLeader()
	if LittleBuddha_States.InstanceLeader then
		LittleBuddha_States.InstanceLeader = false;
		ChatTypeInfo["INSTANCE_CHAT_LEADER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Instance Leader channel.');
	else
		LittleBuddha_States.InstanceLeader = true;
		ChatTypeInfo["INSTANCE_CHAT_LEADER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Instance Leader channel.');
	end
end

function LittleBuddha_SBNWhisper()
	if LittleBuddha_States.BNWhisper then
		LittleBuddha_States.BNWhisper = false;
		ChatTypeInfo["BN_WHISPER"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for BattleNet Whisper channel.');
	else
		LittleBuddha_States.BNWhisper = true;
		ChatTypeInfo["BN_WHISPER"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for BattleNet Whisper channel.');
	end
end

function LittleBuddha_SBNConversation()
	if LittleBuddha_States.BNConversation then
		LittleBuddha_States.BNConversation = false;
		ChatTypeInfo["BN_CONVERSATION"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for BattleNet Conversation channel.');
	else
		LittleBuddha_States.BNConversation = true;
		ChatTypeInfo["BN_CONVERSATION"].flashTab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for BattleNet Conversation channel.');
	end
end

function LittleBuddha_SBNWhisperGen()
	if LittleBuddha_States.BNWhisperGen then
		LittleBuddha_States.BNWhisperGen = false;
		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for BattleNet Whisper (General Tab) channel.');
	else
		LittleBuddha_States.BNWhisperGen = true;
		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for BattleNet Whisper (General Tab) channel.');
	end
end

function LittleBuddha_SBNConversationGen()
	if LittleBuddha_States.BNConversationGen then
		LittleBuddha_States.BNConversationGen = false;
		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for BattleNet Conversation (General Tab) channel.');
	else
		LittleBuddha_States.BNConversationGen = true;
		ChatTypeInfo["BN_WHISPER"].flashTabOnGeneral = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for BattleNet Conversation (General Tab) channel.');
	end
end

function LittleBuddha_ChannelOne()
	if LittleBuddha_States.ChannelOne then
		LittleBuddha_States.ChannelOne = false;
		ChatTypeInfo["CHANNEL1"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 1.');
	else
		LittleBuddha_States.ChannelOne = true;
		ChatTypeInfo["CHANNEL1"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 1.');
	end
end

function LittleBuddha_ChannelTwo()
	if LittleBuddha_States.ChannelTwo then
		LittleBuddha_States.ChannelTwo = false;
		ChatTypeInfo["CHANNEL2"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 2.');
	else
		LittleBuddha_States.ChannelTwo = true;
		ChatTypeInfo["CHANNEL2"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 2.');
	end
end

function LittleBuddha_ChannelThree()
	if LittleBuddha_States.ChannelThree then
		LittleBuddha_States.ChannelThree = false;
		ChatTypeInfo["CHANNEL3"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 3.');
	else
		LittleBuddha_States.ChannelThree = true;
		ChatTypeInfo["CHANNEL3"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 3.');
	end
end

function LittleBuddha_ChannelFour()
	if LittleBuddha_States.ChannelFour then
		LittleBuddha_States.ChannelFour = false;
		ChatTypeInfo["CHANNEL4"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 4.');
	else
		LittleBuddha_States.ChannelFour = true;
		ChatTypeInfo["CHANNEL4"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 4.');
	end
end

function LittleBuddha_ChannelFive()
	if LittleBuddha_States.ChannelFive then
		LittleBuddha_States.ChannelFive = false;
		ChatTypeInfo["CHANNEL5"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 5.');
	else
		LittleBuddha_States.ChannelFive = true;
		ChatTypeInfo["CHANNEL5"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 5.');
	end
end

function LittleBuddha_ChannelSix()
	if LittleBuddha_States.ChannelSix then
		LittleBuddha_States.ChannelSix = false;
		ChatTypeInfo["CHANNEL6"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 6.');
	else
		LittleBuddha_States.ChannelSix = true;
		ChatTypeInfo["CHANNEL6"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 6.');
	end
end

function LittleBuddha_ChannelSeven()
	if LittleBuddha_States.ChannelSeven then
		LittleBuddha_States.ChannelSeven = false;
		ChatTypeInfo["CHANNEL7"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 7.');
	else
		LittleBuddha_States.ChannelSeven = true;
		ChatTypeInfo["CHANNEL7"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 7.');
	end
end

function LittleBuddha_ChannelEight()
	if LittleBuddha_States.ChannelEight then
		LittleBuddha_States.ChannelEight = false;
		ChatTypeInfo["CHANNEL8"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 8.');
	else
		LittleBuddha_States.ChannelEight = true;
		ChatTypeInfo["CHANNEL8"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 8.');
	end
end

function LittleBuddha_ChannelNine()
	if LittleBuddha_States.ChannelNine then
		LittleBuddha_States.ChannelNine = false;
		ChatTypeInfo["CHANNEL9"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 9.');
	else
		LittleBuddha_States.ChannelNine = true;
		ChatTypeInfo["CHANNEL9"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 9.');
	end
end

function LittleBuddha_ChannelTen()
	if LittleBuddha_States.ChannelTen then
		LittleBuddha_States.ChannelTen = false;
		ChatTypeInfo["CHANNEL10"].flashTab = false
		print('|cff388E8ELittleBuddha:|cffffffff Flash disabled for Channel 10.');
	else
		LittleBuddha_States.ChannelTen = true;
		ChatTypeInfo["CHANNEL10"].flashtab = true
		print('|cff388E8ELittleBuddha:|cffffffff Flash enabled for Channel 10.');
	end
end