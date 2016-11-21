--Version 1.9
local Buttonsetup,lastname, AChange, Catmove,q, Expand, ToggleUnused,Listinfo, temp,Delayer,TabButton, Listan
local Cs_Override, Cs_Override,MyTokenButton_OnClick,CleanCsorder,AddCsorder,Update_Cs_order
local newrow,kaboom
local function eventHandler(self, event, ...)
	if event=="ADDON_LOADED" and ...=="CurrencySorter" then
		if select(4, GetBuildInfo())>=60100 then
			if Cs_order[1] and not Cs_order["sixone"] then
				AChange=true
				Cs_order["sixone"]=true
			end
		end
		--table.insert(debugd,"loaded")
		if Cs_order.collapsed then
			Cs_order.collapsed=nil
		end
		Cs_Override()
	end
end


local eventframe = CreateFrame("FRAME", "CSEventframe");
eventframe:SetScript("OnEvent", eventHandler);
eventframe:RegisterEvent("ADDON_LOADED")

Cs_order={}
if select(4, GetBuildInfo())>60200 then
	TabButton=CharacterFrameTab3
	else
	TabButton=CharacterFrameTab4
end
function ModTokenFrame_Update()
Listinfo={}
Listinfo.numhead=0
-----------------------Bother blizzard servers onetimeonly------------------------
for i=1, GetCurrencyListSize() do
	Listinfo[i]={GetCurrencyListInfo(i)}
	if Listinfo[i][2] then
		Listinfo.numhead=Listinfo.numhead+1
	end
end
-----Add a few extra for safety
	for i=#Listinfo+1,45 do
		Listinfo[i]={}
	end
	-------------------------Blizz standard stuff------------------------------------

	local numTokenTypes = GetCurrencyListSize();

	if ( numTokenTypes == 0 ) then
		TabButton:Hide();
	else
		TabButton:Show();
	end

	if (not TokenFrameContainer.buttons) then
		return;
	end

	local scrollFrame = TokenFrameContainer;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	local name, isHeader, isExpanded, isUnused, isWatched, count, icon;
	local button, index
--------------------------First time setup-----------------------------------
	if not(Cs_order.Firsttime) then
		q=1
		for i=1, numTokenTypes do
			name, isHeader= unpack(Listinfo[i]);
			if isHeader then
				if Cs_order[q] and not(i==Cs_order[q].start) then
					Cs_order[q].stop=i-1
					q=q+1
				end
				Cs_order[q]={}
				Cs_order[q].name=name
				Cs_order[q].start=i
			end
			if i==GetCurrencyListSize() then
				Cs_order[q].stop=i
			end
		end
	Cs_order.Firsttime=1
	Cs_order.Nummax=numTokenTypes
	end
-----------------------------Did something change without me doing it?------------------------------
	if not(AChange) and Cs_order.Nummax~=numTokenTypes then
		AChange=true
		newrow=true
	end
------------------------Set up the buttons------------------------------
	if not(Buttonsetup) then
		for i=1,numButtons do
			local Revbutt = CreateFrame("Button", "$parentKnappupp",_G["TokenFrameContainerButton"..i],"SortUpArrowTemplate",i)
			local mjao = CreateFrame("Button", "$parentKnappner",_G["TokenFrameContainerButton"..i],"SortDownArrowTemplate",i)
			_G["TokenFrameContainerButton"..i]:HookScript("OnEnter", function (self)
				if self.isHeader then
					self.SortUpArrow:Show()
					self.SortDownArrow:Show()
				end
			end)
			_G["TokenFrameContainerButton"..i]:HookScript("OnLeave", function (self)
				self.SortUpArrow:Hide()
				self.SortDownArrow:Hide()
			end)
			_G["TokenFrameContainerButton"..i].LinkButton:SetScript("OnEnter",function(self)
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
				GameTooltip:SetCurrencyToken(Listan[self:GetParent().index]);
			end)
			_G["TokenFrameContainerButton"..i].LinkButton:SetScript("OnLeave",function(self)
				GameTooltip:Hide()
			end)
			_G["TokenFrameContainerButton"..i].LinkButton:SetScript("OnClick", function(self)
				HandleModifiedItemClick(GetCurrencyListLink(Listan[self:GetParent().index]));
			end)
			end
		Buttonsetup=true
	end
----------------------------------something changed-----------------------------------------
	if AChange==true then
		AChange=false
		if ToggleUnused==true or newrow then
			ToggleUnused=false
			newrow=false
			if #Cs_order~=Listinfo.numhead then
				if #Cs_order>Listinfo.numhead then
					CleanCsorder(numTokenTypes)
				else
					AddCsorder(numTokenTypes)
				end
			end
		end
		Update_Cs_order(numTokenTypes)
	end

	-------------------G�r listan-----------------
	Listan={}
	q=1
	for i=1 ,#Cs_order do
		for e=Cs_order[i].start,Cs_order[i].stop do
			Listan[q]=e
			q=q+1
		end
	end
	--S� det inte blir nil
	for i=#Listan+1, 40 do
		table.insert(Listan,i,i)
	end
	for i=1, numButtons do
		index = offset+i;
		name, isHeader, isExpanded, isUnused, isWatched, count, icon = unpack(Listinfo[Listan[index]]);
		button = buttons[i];
		button.check:Hide();
		if ( not name or name == "" ) then
			button:Hide();
		else
			if ( isHeader ) then
				button.categoryLeft:Show();
				button.categoryRight:Show();
				button.categoryMiddle:Show();
				button.expandIcon:Show();
				button.count:SetText("");
				button.icon:SetTexture("");
				if ( isExpanded ) then
					button.expandIcon:SetTexCoord(0.5625, 1, 0, 0.4375);
				else
					button.expandIcon:SetTexCoord(0, 0.4375, 0, 0.4375);
				end
				button.highlight:SetTexture("Interface\\TokenFrame\\UI-TokenFrame-CategoryButton");
				button.highlight:SetAlpha(0.5)
				button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 3, -2);
				button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -3, 2);
				button.name:SetText(name);
				button.name:SetFontObject("GameFontNormal");
				button.name:SetPoint("LEFT", 22, 0);
				button.LinkButton:Hide();
			else
				button.categoryLeft:Hide();
				button.categoryRight:Hide();
				button.categoryMiddle:Hide();
				button.expandIcon:Hide();
				button.count:SetText(count);
				button.icon:SetTexture(icon);
				if ( isWatched ) then
					button.check:Show();
				end
				button.highlight:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");
				button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0);
				button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0);
				--Gray out the text if the count is 0
				if ( count == 0 ) then
					button.count:SetFontObject("GameFontDisable");
					button.name:SetFontObject("GameFontDisable");
				else
					button.count:SetFontObject("GameFontHighlight");
					button.name:SetFontObject("GameFontHighlight");
				end
				button.name:SetText(name);
				button.name:SetPoint("LEFT", 11, 0);
				button.LinkButton:Show();
			end
			--Manage highlight
			if ( name == TokenFrame.selectedToken ) then
				TokenFrame.selectedID = index;
				button:LockHighlight();
			else
				button:UnlockHighlight();
			end

			button.index = index;
			button.isHeader = isHeader;
			button.isExpanded = isExpanded;
			button.isUnused = isUnused;
			button.isWatched = isWatched;
			button:Show();
		end
	end
	local totalHeight = numTokenTypes * (button:GetHeight()+TOKEN_BUTTON_OFFSET);
	local displayedHeight = #buttons * (button:GetHeight()+TOKEN_BUTTON_OFFSET);

	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);
end



function Update_Cs_order(numTokenTypes)
temp={}
	for i=1, #Cs_order do
		temp[Cs_order[i].name]=i
	end
		lastname=unpack(Listinfo[1])
	for i=1, numTokenTypes do
		local name, isHeader= unpack(Listinfo[i]);
		if isHeader then
			if lastname ~=name then
				Cs_order[temp[lastname]].stop=i-1
			end
			lastname=name
			Cs_order[temp[name]]={}
			Cs_order[temp[name]].name=name
			Cs_order[temp[name]].start=i
		end
		if i==GetCurrencyListSize() then
			Cs_order[temp[lastname]].stop=i
		end
		Cs_order.Nummax=numTokenTypes
	end
end

local debugd={}
function Cs_Override()
-----------------------------------------------------
	TokenButton_OnClick=MyTokenButton_OnClick
	TokenFrame_Update=ModTokenFrame_Update
	TokenFrameContainer.update=ModTokenFrame_Update
	TokenFramePopupBackpackCheckBox:SetScript("OnClick", function(self)
		if ( self:GetChecked() ) then
			if ( GetNumWatchedTokens() >= MAX_WATCHED_TOKENS ) then
				UIErrorsFrame:AddMessage(format(TOO_MANY_WATCHED_TOKENS, MAX_WATCHED_TOKENS), 1.0, 0.1, 0.1, 1.0);
				self:SetChecked(false);
				return;
			end
			PlaySound("igMainMenuOptionCheckBoxOn");
			SetCurrencyBackpack(Listan[TokenFrame.selectedID], 1);
		else
			PlaySound("igMainMenuOptionCheckBoxOff");
			SetCurrencyBackpack(Listan[TokenFrame.selectedID], 0);
		end
		TokenFrame_Update();
		BackpackTokenFrame_Update();
		ManageBackpackTokenFrame();
	end)
	TokenFramePopupInactiveCheckBox:SetScript("OnClick", function(self)
		if ( self:GetChecked() ) then
			PlaySound("igMainMenuOptionCheckBoxOn");
			SetCurrencyUnused(Listan[TokenFrame.selectedID], 1);
			ToggleUnused=true
			AChange=true
		else
			PlaySound("igMainMenuOptionCheckBoxOff");
			SetCurrencyUnused(Listan[TokenFrame.selectedID], 0);
			ToggleUnused=true
			AChange=true
		end
		TokenFrame_Update();
		TokenFramePopup_CloseIfHidden();
		BackpackTokenFrame_Update();
		ManageBackpackTokenFrame();
	end)



	local Revbutt = CreateFrame("Button","$parentRevertButton",TokenFrame)
Revbutt:SetHeight(22)
Revbutt:SetWidth(22)
Revbutt:SetPoint("TOPRIGHT",TokenFrame,"TOPRIGHT",-8,-40)
Revbutt:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
Revbutt:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down");
Revbutt:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled");
Revbutt:Show()
Revbutt:SetFrameStrata("HIGH")
Revbutt:SetScript("OnEnter", function()
	GameTooltip:SetOwner(Revbutt,"ANCHOR_RIGHT")
	GameTooltip:SetText("Reset to default sorting")
	end)
Revbutt:SetScript("OnLeave", function()
	GameTooltip:Hide()
	end)
Revbutt:SetScript("OnClick", function()
	Cs_order={}
	ModTokenFrame_Update()
	end	)




end



function MyTokenButton_OnClick(self)
	if ( self.isHeader ) then
		AChange=true
		if ( self.isExpanded ) then
			ExpandCurrencyList(Listan[self.index], 0);
		else
			ExpandCurrencyList(Listan[self.index], 1);
		end
	else
		TokenFrame.selectedToken = self.name:GetText();
		local linkedToChat = false;
		if ( IsModifiedClick("CHATLINK") ) then
			linkedToChat = HandleModifiedItemClick(GetCurrencyListLink(Listan[self.index]));
		end
		if ( not linkedToChat ) then
			if ( IsModifiedClick("TOKENWATCHTOGGLE") ) then
				TokenFrame.selectedID = Listan[self.index];
				if ( self.isWatched ) then
					SetCurrencyBackpack(Listan[TokenFrame.selectedID], 0);
					self.isWatched = false;
				else
					-- Set an error message if trying to show too many quests
					if ( GetNumWatchedTokens() >= MAX_WATCHED_TOKENS ) then
						UIErrorsFrame:AddMessage(format(TOO_MANY_WATCHED_TOKENS, MAX_WATCHED_TOKENS), 1.0, 0.1, 0.1, 1.0);
						return;
					end
					SetCurrencyBackpack(Listan[TokenFrame.selectedID], 1);
					self.isWatched = true;
				end
				if ( TokenFrame.selectedID == Listan[self.index] ) then
					TokenFrame_UpdatePopup(self);
				end
				BackpackTokenFrame_Update();
				ManageBackpackTokenFrame();
			else

				if ( TokenFramePopup:IsShown() ) then
					if ( TokenFrame.selectedID == Listan[self.index] ) then
						TokenFramePopup:Hide();
					else
						TokenFramePopup:Show();
					end
				else
					TokenFramePopup:Show();
				end
				TokenFrame.selectedID = Listan[self.index];
				TokenFrame_UpdatePopup(self);
			end
		end
	end
	TokenFrame_Update();
	TokenFramePopup_CloseIfHidden();
end



function Cs_MoveUp(self)
AChange=true
--Catmove=true
local i=1
local id=self:GetID()
local namn,start,stop
	for i=1, #Cs_order do
		if Cs_order[i].name==self:GetParent().name:GetText() and i~=1 then
			namn=Cs_order[i].name
			start=Cs_order[i].start
			stop=Cs_order[i].stop
			table.remove(Cs_order,i)
			table.insert(Cs_order,i-1,{})
			Cs_order[i-1].name=namn
			Cs_order[i-1].start=start
			Cs_order[i-1].stop=stop
			break
		end
	end
ModTokenFrame_Update()
end


function Cs_MoveDown(self)
AChange=true
--Catmove=true
local i=1
local id=self:GetID()
local namn,start,stop
	for i=1, #Cs_order do
		if Cs_order[i].name==self:GetParent().name:GetText() and i~=#Cs_order then
			namn=Cs_order[i].name
			start=Cs_order[i].start
			stop=Cs_order[i].stop
			table.remove(Cs_order,i)
			table.insert(Cs_order,i+1,{})
			Cs_order[i+1].name=namn
			Cs_order[i+1].start=start
			Cs_order[i+1].stop=stop
			break
		end
	end
end


if IsAddOnLoaded("Blizzard_TokenUI") then
	--table.insert(debugd,"blizzisloaded")
	--Override()
end



function CleanCsorder(numTokenTypes)
temp={}
	for i=1, #Cs_order do
		temp[Cs_order[i].name]=i
	end
	for i=1, numTokenTypes do
		local name, isHeader= unpack(Listinfo[i]);
		if isHeader then
			if temp[name] then
				temp[name]=nil
			end
		end
		if i==numTokenTypes then
			for k,v in pairs(temp) do
				table.remove(Cs_order,v)
			end
		end
	end
end

function AddCsorder(numTokenTypes)
temp={}
	for i=1, #Cs_order do
		temp[Cs_order[i].name]=i
	end
	for i=1, numTokenTypes do
		local name,isHeader=unpack(Listinfo[i])
		if isHeader then
			if not(temp[name]) then
				kaboom=1
				for k,k in pairs(temp) do
					kaboom=kaboom+1
				end
				temp[name]=kaboom
			Cs_order[temp[name]]={}
			Cs_order[temp[name]].name=name
			end
		end
	end
end
