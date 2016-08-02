SLASH_LITTLEBUDDHA1, SLASH_LITTLEBUDDHA2 = '/lb', '/littlebuddha';
local function LittleBuddha_Handler(msg, editbox)
	local cmd, rest = msg:match("^(%S*)%s*(.-)$");

	if cmd == 'version' then
		print('|cff388E8ELittleBuddha |cffffcc00v'..LB_Version..'|cffffffff');
	elseif cmd == 'help' then
		LittleBuddha_HelpMenu();
	elseif cmd == 'status' then
		LittleBuddha_Status();
	elseif cmd == 'whisper' then
		LittleBuddha_SWhisper();
	elseif cmd == 'whisper_gen' then
		LittleBuddha_SWhisperGen();
	elseif cmd == 'guild' then
		LittleBuddha_SGuild();
	elseif cmd == 'officer' then
		LittleBuddha_SOfficer();
	elseif cmd == 'raid' then
		LittleBuddha_SRaid();
	elseif cmd == 'party' then
		LittleBuddha_SParty();
	elseif cmd == 'raidleader' then
		LittleBuddha_SRaidLeader();
	elseif cmd == 'partyleader' then
		LittleBuddha_SPartyLeader();
	elseif cmd == 'instance' then
		LittleBuddha_SInstance();
	elseif cmd == 'instanceleader' then
		LittleBuddha_SInstanceLeader();
	elseif cmd == 'bnwhisper' then
		LittleBuddha_SBNWhisper();
	elseif cmd == 'bnconversation' then
		LittleBuddha_SBNConversation();
	elseif cmd == 'bnwhisper_gen' then
		LittleBuddha_SBNWhisperGen();
	elseif cmd == 'bnconversation_gen' then
		LittleBuddha_SBNConversationGen();
	elseif cmd == 'channel1' then
		LittleBuddha_ChannelOne();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel2' then
		LittleBuddha_ChannelTwo();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel3' then
		LittleBuddha_ChannelThree();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel4' then
		LittleBuddha_ChannelFour();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel5' then
		LittleBuddha_ChannelFive();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel6' then
		LittleBuddha_ChannelSix();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel7' then
		LittleBuddha_ChannelSeven();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel8' then
		LittleBuddha_ChannelEight();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel9' then
		LittleBuddha_ChannelNine();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	elseif cmd == 'channel10' then
		LittleBuddha_ChannelTen();
		StaticPopup_Show ("LittleBuddha_ReloadUI");
	else
		LittleBuddha_HelpMenu();
	end
end

SlashCmdList["LITTLEBUDDHA"] = LittleBuddha_Handler;