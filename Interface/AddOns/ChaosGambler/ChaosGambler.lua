-- Version 0.1
-- Initial release version

local AcceptOnes = "false";
local AcceptRolls = "false";
local totalrolls = 0
local tierolls = 0;
local theMax
local lowname = ""
local highname = ""
local low = 0
local high = 0
local tie = 0
local highbreak = 0;
local lowbreak = 0;
local tiehigh = 0;
local tielow = 0;
local chatmethod = "PARTY";
local totalentries = 0;

--[[ UNKNOWN PIECE OF CODE - DONT WANT TO DELETE BECAUSE OF WHAT IT IS
function gcgstat(a) SendChatMessage(string.format("%s @ %d", a, ChaosGambler["stats"][a]), "RAID"); end
]]--

-- LOAD FUNCTION --
function ChaosGambler_OnLoad(this)
	DEFAULT_CHAT_FRAME:AddMessage("|cffffff00<Chaos Gambler v0.1> loaded /cg to use");

	this:RegisterEvent("CHAT_MSG_RAID");
	this:RegisterEvent("CHAT_MSG_RAID_LEADER");
	this:RegisterEvent("CHAT_MSG_PARTY");
	this:RegisterEvent("CHAT_MSG_PARTY_LEADER");
	this:RegisterEvent("CHAT_MSG_SYSTEM");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterForDrag("LeftButton");

	ChaosGambler_ROLL_Button:Disable();
	ChaosGambler_AcceptOnes_Button:Enable();		
	ChaosGambler_LASTCALL_Button:Disable();
	ChaosGambler_CHAT_Button:Enable();
end


function ChaosGambler_OnEvent(self, event, ...)

	-- LOADS ALL DATA FOR INITIALIZATION OF ADDON --
	arg1,arg2 = ...;
	if (event == "PLAYER_ENTERING_WORLD") then
		ChaosGambler_EditBox:SetJustifyH("CENTER");

		if(not ChaosGambler) then
			ChaosGambler = {
				["active"] = 1, 
				["chat"] = false, 
				["strings"] = { },
				["lowtie"] = { },
				["hightie"] = { },
				["bans"] = { }
			}
		end
		if(not ChaosGambler["lastroll"]) then ChaosGambler["lastroll"] = 100; end
		if(not ChaosGambler["stats"]) then ChaosGambler["stats"] = { }; end
		if(not ChaosGambler["joinstats"]) then ChaosGambler["joinstats"] = { }; end
		if(not ChaosGambler["chat"]) then ChaosGambler["chat"] = false; end
		if(not ChaosGambler["bans"]) then ChaosGambler["bans"] = { }; end

		ChaosGambler_EditBox:SetText(""..ChaosGambler["lastroll"]);

		if(ChaosGambler["chat"] == false) then
			ChaosGambler_CHAT_Button:SetText("(Party)");
			chatmethod = "PARTY";
		else
			ChaosGambler_CHAT_Button:SetText("(Raid)");
			chatmethod = "RAID";
		end

		if(ChaosGambler["active"] == 1) then
			ChaosGambler_Frame:Show();
		else
			ChaosGambler_Frame:Hide();
		end
	end

	-- IF IT'S A RAID MESSAGE... --
	if ((event == "CHAT_MSG_RAID_LEADER" or event == "CHAT_MSG_RAID") and AcceptOnes=="true" and ChaosGambler["chat"] == true) then
		
		-- ADDS USER TO THE ROLL POOL - CHECK TO MAKE SURE THEY ARE NOT BANNED --
		if (arg1 == "1") then
			if(ChaosGambler_ChkBan(tostring(arg2)) == 0) then
				ChaosGambler_Add(tostring(arg2));
				if (not ChaosGambler_LASTCALL_Button:IsEnabled() and totalrolls == 1) then
					ChaosGambler_LASTCALL_Button:Enable();
				end
				if totalrolls == 2 then
					ChaosGambler_AcceptOnes_Button:Disable();
					ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
				end
			else
				SendChatMessage("Unable to accept entry. No pay, no play. Got it?", chatmethod);
			end

		elseif(arg1 == "-1") then
			ChaosGambler_Remove(tostring(arg2));
			if (ChaosGambler_LASTCALL_Button:IsEnabled() and totalrolls == 0) then
				ChaosGambler_LASTCALL_Button:Disable();
			end
			if totalrolls == 1 then
				ChaosGambler_AcceptOnes_Button:Enable();
				ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
			end
		end
	end

	if ((event == "CHAT_MSG_PARTY_LEADER" or event == "CHAT_MSG_PARTY")and AcceptOnes=="true" and ChaosGambler["chat"] == false) then

		-- ADDS USER TO THE ROLL POOL - CHECK TO MAKE SURE THEY ARE NOT BANNED --
		if (arg1 == "1") then
			if(ChaosGambler_ChkBan(tostring(arg2)) == 0) then
				ChaosGambler_Add(tostring(arg2));
				if (not ChaosGambler_LASTCALL_Button:IsEnabled() and totalrolls == 1) then
					ChaosGambler_LASTCALL_Button:Enable();
				end
				if totalrolls == 2 then
					ChaosGambler_AcceptOnes_Button:Disable();
					ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
				end
			else
				SendChatMessage("Unable to accept entry. No pay, no play. Got it?", chatmethod);
			end

		elseif(arg1 == "-1") then
			ChaosGambler_Remove(tostring(arg2));
			if (ChaosGambler_LASTCALL_Button:IsEnabled() and totalrolls == 0) then
				ChaosGambler_LASTCALL_Button:Disable();
			end
			if totalrolls == 1 then
				ChaosGambler_AcceptOnes_Button:Enable();
				ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
			end
		end
	end

	if (event == "CHAT_MSG_SYSTEM" and AcceptRolls=="true") then
		local temp1 = tostring(arg1);
		ChaosGambler_ParseRoll(temp1);		
	end	
end


function ChaosGambler_ResetStats()
	ChaosGambler["stats"] = { };
end


function ChaosGambler_OnClickCHAT()
	if(ChaosGambler["chat"] == nil) then ChaosGambler["chat"] = false; end

	ChaosGambler["chat"] = not ChaosGambler["chat"];
	
	if(ChaosGambler["chat"] == false) then
		ChaosGambler_CHAT_Button:SetText("(Party)");
		chatmethod = "PARTY";
	else
		ChaosGambler_CHAT_Button:SetText("(Raid)");
		chatmethod = "RAID";
	end
end


function ChaosGambler_JoinStats(msg)
	local i = string.find(msg, " ");
	if((not i) or i == -1 or string.find(msg, "[", 1, true) or string.find(msg, "]", 1, true)) then
		ChatFrame1:AddMessage("Usage: /cg joinstats mainname altname");
		return;
	end
	local mainname = string.sub(msg, 1, i-1);
	local altname = string.sub(msg, i+1);
	ChatFrame1:AddMessage(string.format("Joined alt '%s' -> main '%s'", altname, mainname));
	ChaosGambler["joinstats"][altname] = mainname;
end

function ChaosGambler_UnjoinStats(altname)
	if(altname ~= nil and altname ~= "") then
		ChatFrame1:AddMessage(string.format("Unjoined alt '%s' from any other characters", altname));
		ChaosGambler["joinstats"][altname] = nil;
	else
		local i, e;
		for i, e in pairs(ChaosGambler["joinstats"]) do
			ChatFrame1:AddMessage(string.format("currently joined: alt '%s' -> main '%s'", i, e));
		end
	end
end

function ChaosGambler_OnClickSTATS()
	local sortlistname = {};
	local sortlistamount = {};
	local n = 0;
	local i, j, k;

	for i, j in pairs(ChaosGambler["stats"]) do
		local name = i;
		if(ChaosGambler["joinstats"][strlower(i)] ~= nil) then
			name = ChaosGambler["joinstats"][strlower(i)]:gsub("^%l", string.upper);
		end
		for k=0,n do
			if(k == n) then
				sortlistname[n] = name;
				sortlistamount[n] = j;
				n = n + 1;
				break;
			elseif(strlower(name) == strlower(sortlistname[k])) then
				sortlistamount[k] = (sortlistamount[k] or 0) + j;
				break;
			end
		end
	end

	if(n == 0) then
		DEFAULT_CHAT_FRAME:AddMessage("No stats yet!!");
		return;
	end

	for i = 0, n-1 do
		for j = i+1, n-1 do
			if(sortlistamount[j] > sortlistamount[i]) then
				sortlistamount[i], sortlistamount[j] = sortlistamount[j], sortlistamount[i];
				sortlistname[i], sortlistname[j] = sortlistname[j], sortlistname[i];
			end
		end
	end

	SendChatMessage("--- Chaos Gambler Stats ---", chatmethod);

	local x1 = 5-1;
	local x2 = n-5;
	if(x1 >= n) then x1 = n-1; end
	if(x2 <= x1) then x2 = x1+1; end

	for i = 0, x1 do
		sortsign = "won";
		if(sortlistamount[i] < 0) then sortsign = "lost"; end
		SendChatMessage(string.format("%d.  %s %s %d total", i+1, sortlistname[i], sortsign, math.abs(sortlistamount[i])), chatmethod);
	end

	if(x1+1 < x2) then
		SendChatMessage("...", chatmethod);
	end

	for i = x2, n-1 do
		sortsign = "won";
		if(sortlistamount[i] < 0) then sortsign = "lost"; end
		SendChatMessage(string.format("%d.  %s %s %d total", i+1, sortlistname[i], sortsign, math.abs(sortlistamount[i])), chatmethod);
	end
end


function ChaosGambler_OnClickROLL()
	if (totalrolls > 0 and AcceptRolls == "true") then
		if table.getn(ChaosGambler.strings) ~= 0 then
			ChaosGambler_List();
		end	
		return;
	end
	if (totalrolls >1) then
		AcceptOnes = "false";
		AcceptRolls = "true";
		if (tie == 0) then
			SendChatMessage("[CG] Roll now!",chatmethod,GetDefaultLanguage("player"));
		end

		if (lowbreak == 1) then
			SendChatMessage(format("%s%d%s", "[CG] Low end tiebreaker! Roll 1-", theMax, " now!"),chatmethod,GetDefaultLanguage("player"));
			ChaosGambler_List();
		end

		if (highbreak == 1) then
			SendChatMessage(format("%s%d%s", "[CG] High end tiebreaker! Roll 1-", theMax, " now!"),chatmethod,GetDefaultLanguage("player"));
			ChaosGambler_List();
		end

		ChaosGambler_EditBox:ClearFocus();

	end

	if (AcceptOnes == "true" and totalrolls <2) then
		SendChatMessage("[CG] Not enough Players!",chatmethod,GetDefaultLanguage("player"));
	end
end

function ChaosGambler_OnClickLASTCALL()
	SendChatMessage("[CG] Last Call to join!",chatmethod,GetDefaultLanguage("player"));
	ChaosGambler_EditBox:ClearFocus();
	ChaosGambler_LASTCALL_Button:Disable();
	ChaosGambler_ROLL_Button:Enable();
end

function ChaosGambler_OnClickACCEPTONES() 
	if ChaosGambler_EditBox:GetText() ~= "" and ChaosGambler_EditBox:GetText() ~= "1" then
		ChaosGambler_Reset();
		ChaosGambler_ROLL_Button:Disable();
		ChaosGambler_LASTCALL_Button:Disable();
		AcceptOnes = "true";
		local fakeroll = "";
		SendChatMessage(format("%s%s%s%s", "[CG] Roll 1-", ChaosGambler_EditBox:GetText(), " Press 1  (-1 to withdraw)", fakeroll),chatmethod,GetDefaultLanguage("player"));
		ChaosGambler["lastroll"] = ChaosGambler_EditBox:GetText();
		theMax = tonumber(ChaosGambler_EditBox:GetText()); 
		low = theMax+1;
		tielow = theMax+1;
		ChaosGambler_EditBox:ClearFocus();
		ChaosGambler_AcceptOnes_Button:SetText("New Game");
		ChaosGambler_LASTCALL_Button:Disable();	
	else
		message("Please enter a number to roll from.");
	end
end

function ChaosGambler_Report()
	local goldowed = high - low
	if (goldowed ~= 0) then
		lowname = lowname:gsub("^%l", string.upper)
		highname = highname:gsub("^%l", string.upper)
		local string3 = strjoin(" ", "[CG]", lowname, "owes", highname, goldowed,"gold.")

		ChaosGambler["stats"][highname] = (ChaosGambler["stats"][highname] or 0) + goldowed;
		ChaosGambler["stats"][lowname] = (ChaosGambler["stats"][lowname] or 0) - goldowed;
	
		SendChatMessage(string3,chatmethod,GetDefaultLanguage("player"));
	else
		SendChatMessage("It was a tie! No payouts on this roll!",chatmethod,GetDefaultLanguage("player"));
	end
	ChaosGambler_Reset();
	ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
	ChaosGambler_CHAT_Button:Enable();
end

function ChaosGambler_Tiebreaker()
	--Everyone has rolled at this point
	tierolls = 0;
	totalrolls = 0;
	tie = 1;
	if table.getn(ChaosGambler.lowtie) == 1 then
		ChaosGambler.lowtie = {};
	end
	if table.getn(ChaosGambler.hightie) == 1 then
		ChaosGambler.hightie = {};
	end
	totalrolls = table.getn(ChaosGambler.lowtie) + table.getn(ChaosGambler.hightie);
	tierolls = totalrolls;
	if (table.getn(ChaosGambler.hightie) == 0 and table.getn(ChaosGambler.lowtie) == 0) then
		ChaosGambler_Report();
	else
		AcceptRolls = "false";
		if table.getn(ChaosGambler.lowtie) > 0 then
			lowbreak = 1;
			highbreak = 0;
			tielow = theMax+1;
			tiehigh = 0;
			ChaosGambler.strings = ChaosGambler.lowtie;
			ChaosGambler.lowtie = {};
			ChaosGambler_OnClickROLL();			
		end
		if table.getn(ChaosGambler.hightie) > 0  and table.getn(ChaosGambler.strings) == 0 then
			lowbreak = 0;
			highbreak = 1;
			tielow = theMax+1;
			tiehigh = 0;
			ChaosGambler.strings = ChaosGambler.hightie;
			ChaosGambler.hightie = {};
			ChaosGambler_OnClickROLL();
		end
	end
end

function ChaosGambler_ParseRoll(temp2)
	local temp1 = strlower(temp2);
	local player, junk, roll, range = strsplit(" ", temp1);
	if junk == "rolls" and ChaosGambler_Check(player)==1 then
		minRoll, maxRoll = strsplit("-",range);
		minRoll = tonumber(strsub(minRoll,2));
		maxRoll = tonumber(strsub(maxRoll,1,-2));
		roll = tonumber(roll);
		if (maxRoll == theMax and minRoll == 1) then
			if (tie == 0) then
				if (roll == high) then
					if table.getn(ChaosGambler.hightie) == 0 then
						ChaosGambler_AddTie(highname, ChaosGambler.hightie);
					end
					ChaosGambler_AddTie(player, ChaosGambler.hightie);
				end
				if (roll>high) then
					highname = player
					high = roll
					ChaosGambler.hightie = {};
					--ChaosGambler_AddTie(player, ChaosGambler.hightie);				
				end
				if (roll == low) then
					if table.getn(ChaosGambler.lowtie) == 0 then
						ChaosGambler_AddTie(lowname, ChaosGambler.lowtie);
					end
					ChaosGambler_AddTie(player, ChaosGambler.lowtie);
				end
				if (roll<low) then 
					lowname = player
					low = roll
					ChaosGambler.lowtie = {};				
					--ChaosGambler_AddTie(player, ChaosGambler.lowtie);				
				end
			else
				if (lowbreak == 1) then
					if (roll == tielow) then
						
						if table.getn(ChaosGambler.lowtie) == 0 then
							ChaosGambler_AddTie(lowname, ChaosGambler.lowtie);
						end
						ChaosGambler_AddTie(player, ChaosGambler.lowtie);
					end
					if (roll<tielow) then 
						lowname = player
						tielow = roll;
						ChaosGambler.lowtie = {};				
						--ChaosGambler_AddTie(player, ChaosGambler.lowtie);				
					end
				end
				if (highbreak == 1) then
					if (roll == tiehigh) then
						if table.getn(ChaosGambler.hightie) == 0 then
							ChaosGambler_AddTie(highname, ChaosGambler.hightie);
						end
						ChaosGambler_AddTie(player, ChaosGambler.hightie);
					end
					if (roll>tiehigh) then
						highname = player
						tiehigh = roll;
						ChaosGambler.hightie = {};
						--ChaosGambler_AddTie(player, ChaosGambler.hightie);				
					end
				end
			end
			ChaosGambler_Remove(tostring(player));
			totalentries = totalentries + 1;
			
			--local string3 = strjoin(" ", "[CG]", "Total Entries: ", totalentries, "players.")
			--SendChatMessage(string3,chatmethod,GetDefaultLanguage("player"));

			if table.getn(ChaosGambler.strings) == 0 then
				if tierolls == 0 then
					ChaosGambler_Report();
				else
					if totalentries == 2 then
						ChaosGambler_Report();
					else
						ChaosGambler_Tiebreaker();
					end
				end
			end
		end	
	end
end

function ChaosGambler_Check(player)
	for i=1, table.getn(ChaosGambler.strings) do
		if strlower(ChaosGambler.strings[i]) == tostring(player) then
			return 1
		end
	end
	return 0
end

function ChaosGambler_List()
	for i=1, table.getn(ChaosGambler.strings) do
	  	local string3 = strjoin(" ", "[CG]", tostring(ChaosGambler.strings[i]):gsub("^%l", string.upper),"still needs to roll.")
		SendChatMessage(string3,chatmethod,GetDefaultLanguage("player"));
	end
end

function ChaosGambler_Add(name)
	if (name ~= nil or name ~= "") then
		local found = 0;
		for i=1, table.getn(ChaosGambler.strings) do
		  	if ChaosGambler.strings[i] == name then
				found = 1;
			end
        	end
		if found == 0 then
		      	table.insert(ChaosGambler.strings, name)
			totalrolls = totalrolls+1
		end
	end
end

function ChaosGambler_ChkBan(name)
	if (name ~= nil or name ~= "") then
		for i=1, table.getn(ChaosGambler.bans) do
			if strlower(ChaosGambler.bans[i]) == strlower(name) then
				return 1
			end
		end
	end
	return 0
end

function ChaosGambler_AddBan(name)
	if (name ~= nil or name ~= "") then
		local banexist = 0;
		for i=1, table.getn(ChaosGambler.bans) do
			if ChaosGambler.bans[i] == name then
				DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Unable to add to ban list - user already banned.");
				banexist = 1;
			end
		end
		if (banexist == 0) then
			table.insert(ChaosGambler.bans, name)
			DEFAULT_CHAT_FRAME:AddMessage("|cffffff00User is now banned!");
			local string3 = strjoin(" ", "[CG]", "User Banned from rolling! -> ",name, "!")
			SendChatMessage(string3,chatmethod,GetDefaultLanguage("player"));
			--local string3 = strjoin(" ", "[CG]", "Total Entries: ", totalentries, "players.")
			--SendChatMessage(string3,chatmethod,GetDefaultLanguage("player"));
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Error: No name provided.");
	end
end

function ChaosGambler_RemoveBan(name)
	if (name ~= nil or name ~= "") then
		local banexist = 0;
		for i=1, table.getn(ChaosGambler.bans) do
			if strlower(ChaosGambler.bans[i]) == strlower(name) then
				table.remove(ChaosGambler.bans, i)
				DEFAULT_CHAT_FRAME:AddMessage("|cffffff00User removed from ban successfully.");
			end
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Error: No name provided.");
	end
end
				
function ChaosGambler_AddTie(name, tietable)
	if (name ~= nil or name ~= "") then
		local found = 0;
		for i=1, table.getn(tietable) do
		  	if tietable[i] == name then
				found = 1;
			end
        	end
		if found == 0 then
		    table.insert(tietable, name)
			tierolls = tierolls+1	
			totalrolls = totalrolls+1		
		end
	end
end

function ChaosGambler_Remove(name)
	for i=1, table.getn(ChaosGambler.strings) do
		if ChaosGambler.strings[i] ~= nil then
		  	if strlower(ChaosGambler.strings[i]) == strlower(name) then
				table.remove(ChaosGambler.strings, i)
				totalrolls = totalrolls - 1;
			end
		end
      end
end

function ChaosGambler_RemoveTie(name, tietable)
	for i=1, table.getn(tietable) do
		if tietable[i] ~= nil then
		  	if strlower(tietable[i]) == name then
				table.remove(tietable, i)
			end
		end
      end
end

function ChaosGambler_Reset()
		ChaosGambler["strings"] = { };
		ChaosGambler["lowtie"] = { };
		ChaosGambler["hightie"] = { };
		AcceptOnes = "false"
		AcceptRolls = "false"
		totalrolls = 0
		theMax = 0
		tierolls = 0;
		lowname = ""
		highname = ""
		low = theMax
		high = 0
		tie = 0
		highbreak = 0;
		lowbreak = 0;
		tiehigh = 0;
		tielow = 0;
		totalentries = 0;
		ChaosGambler_ROLL_Button:Disable();
		ChaosGambler_AcceptOnes_Button:Enable();		
		ChaosGambler_LASTCALL_Button:Disable();
		ChaosGambler_CHAT_Button:Enable();
end

function ChaosGambler_EditBox_OnLoad()
	ChaosGambler_EditBox:SetNumeric("true");
	ChaosGambler_EditBox:SetAutoFocus("false");
end

function ChaosGambler_SlashCmd(msg)
	local msg = msg:lower();
	local msgPrint = 0;
	if (msg == "" or msg == nil) then
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Following commands for /cg:");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00show - Shows the frame");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00hide - Hides the frame");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00reset - Resets the AddOn");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00resetstats - Resets the stats");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00joinstats [main] [alt] - Apply [alt]'s win/losses to [main]");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00unjoinstats [alt] - Unjoin [alt]'s win/losses from whomever it was joined to");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00ban - Ban's the user from being able to roll");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00unban - Unban's the user");
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00listban - Shows ban list");
		msgPrint = 1;
	end
	if (msg == "hide") then
		ChaosGambler_Frame:Hide();
		ChaosGambler["active"] = 0;
		msgPrint = 1;
	end
	if (msg == "show") then
		ChaosGambler_Frame:Show();
		ChaosGambler["active"] = 1;
		msgPrint = 1;
	end
	if (msg == "reset") then
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00CG has now been reset");
		ChaosGambler_Reset();
		ChaosGambler_AcceptOnes_Button:SetText("Open Entry");
		msgPrint = 1;		
	end
	if (msg == "resetstats") then
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00CG stats have now been reset");
		ChaosGambler_ResetStats();
		msgPrint = 1;
	end
	if (string.sub(msg, 1, 9) == "joinstats") then
		ChaosGambler_JoinStats(strsub(msg, 11));
		msgPrint = 1;
	end
	if (string.sub(msg, 1, 11) == "unjoinstats") then
		ChaosGambler_UnjoinStats(strsub(msg, 13));
		msgPrint = 1;
	end

	if (string.sub(msg, 1, 3) == "ban") then
		ChaosGambler_AddBan(strsub(msg, 5));
		msgPrint = 1;
	end

	if (string.sub(msg, 1, 5) == "unban") then
		ChaosGambler_RemoveBan(strsub(msg, 7));
		msgPrint = 1;
	end

	if (msgPrint == 0) then
		DEFAULT_CHAT_FRAME:AddMessage("|cffffff00Invalid argument for command /cg");
	end
end

SLASH_ChaosGambler1 = "/gambler";
SLASH_ChaosGambler2 = "/cg";
SLASH_ChaosGambler3 = "/rollgame";
SLASH_ChaosGambler4 = "/ChaosGambler";
SlashCmdList["ChaosGambler"] = ChaosGambler_SlashCmd
