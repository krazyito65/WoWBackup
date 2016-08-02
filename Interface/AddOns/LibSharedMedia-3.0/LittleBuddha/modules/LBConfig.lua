lbconfig = CreateFrame("Frame");

LittleBuddhaConfig = lbconfig;
LB_Version = GetAddOnMetadata("LittleBuddha", "Version");

LittleBuddha_States = {
	Whisper = true,
	WhisperGen = true,
	Guild = false,
	Officer = false,
	Raid = false,
	Party = false,
	RaidLeader = false,
	PartyLeader = false,
	Instance = false,
	InstanceLeader = false,
	BNWhisper = true,
	BNConversation = true,
	BNWhisperGen = true,
	BNConversationGen = false,
	ChannelOne = false,
	ChannelTwo = false,
	ChannelThree = false,
	ChannelFour = false,
	ChannelFive = false,
	ChannelSix = false,
	ChannelSeven = false,
	ChannelEight = false,
	ChannelNine = false,
	ChannelTen = false
	};

function lbconfig:SetDefaultStates()
	LittleBuddha_States = {};
		LittleBuddha_States.Whisper = true;
		LittleBuddha_States.WhisperGen = true;
		LittleBuddha_States.Guild = false;
		LittleBuddha_States.Officer = false;
		LittleBuddha_States.Raid = false;
		LittleBuddha_States.Party = false;
		LittleBuddha_States.RaidLeader = false;
		LittleBuddha_States.PartyLeader = false;
		LittleBuddha_States.Instance = false;
		LittleBuddha_States.InstanceLeader = false;
		LittleBuddha_States.BNWhisper = true;
		LittleBuddha_States.BNConversation = true;
		LittleBuddha_States.BNWhisperGen = true;
		LittleBuddha_States.BNConversationGen = false;
		LittleBuddha_States.ChannelOne = false;
		LittleBuddha_States.ChannelTwo = false;
		LittleBuddha_States.ChannelThree = false;
		LittleBuddha_States.ChannelFour = false;
		LittleBuddha_States.ChannelFive = false;
		LittleBuddha_States.ChannelSix = false;
		LittleBuddha_States.ChannelSeven = false;
		LittleBuddha_States.ChannelEight = false;
		LittleBuddha_States.ChannelNine = false;
		LittleBuddha_States.ChannelTen = false;
end

function LittleBuddha_Defaults()
	if LittleBuddha_States.Whisper == nil then 
		LittleBuddha_States.Whisper = true;
	end
	if LittleBuddha_States.WhisperGen == nil then 
		LittleBuddha_States.WhisperGen = true;
	end
	if LittleBuddha_States.Guild == nil then 
		LittleBuddha_States.Guild = false;
	end
	if LittleBuddha_States.Officer == nil then 
		LittleBuddha_States.Officer = false;
	end
	if LittleBuddha_States.Raid == nil then 
		LittleBuddha_States.Raid = false;
	end
	if LittleBuddha_States.Party == nil then 
		LittleBuddha_States.Party = false;
	end
	if LittleBuddha_States.RaidLeader == nil then 
		LittleBuddha_States.RaidLeader = false;
	end
	if LittleBuddha_States.PartyLeader == nil then 
		LittleBuddha_States.PartyLeader = false;
	end
	if LittleBuddha_States.Instance == nil then 
		LittleBuddha_States.Instance = false;
	end
	if LittleBuddha_States.InstanceLeader == nil then 
		LittleBuddha_States.InstanceLeader = false;
	end
	if LittleBuddha_States.BNWhisper == nil then 
		LittleBuddha_States.BNWhisper = true;
	end
	if LittleBuddha_States.BNConversation == nil then 
		LittleBuddha_States.BNConversation = true;
	end
	if LittleBuddha_States.BNWhisperGen == nil then 
		LittleBuddha_States.BNWhisperGen = true;
	end
	if LittleBuddha_States.BNConversationGen == nil then 
		LittleBuddha_States.BNConversationGen = false;
	end
	if LittleBuddha_States.ChannelOne == nil then 
		LittleBuddha_States.ChannelOne = false;
	end
	if LittleBuddha_States.ChannelTwo == nil then 
		LittleBuddha_States.ChannelTwo = false;
	end
	if LittleBuddha_States.ChannelThree == nil then 
		LittleBuddha_States.ChannelThree = false;
	end
	if LittleBuddha_States.ChannelFour == nil then 
		LittleBuddha_States.ChannelFour = false;
	end
	if LittleBuddha_States.ChannelFive == nil then 
		LittleBuddha_States.ChannelFive = false;
	end
	if LittleBuddha_States.ChannelSix == nil then 
		LittleBuddha_States.ChannelSix = false;
	end
	if LittleBuddha_States.ChannelSeven == nil then 
		LittleBuddha_States.ChannelSeven = false;
	end
	if LittleBuddha_States.ChannelEight == nil then 
		LittleBuddha_States.ChannelEight = false;
	end
	if LittleBuddha_States.ChannelNine == nil then 
		LittleBuddha_States.ChannelNine = false;
	end
	if LittleBuddha_States.ChannelTen == nil then 
		LittleBuddha_States.ChannelTen = false;
	end
end

function lbconfig:Init()
	if not (LittleBuddha_States) then
		lbconfig:SetDefaultStates();
	end
end