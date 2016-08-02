------------------------------------------------
--                  CT_Core                   --
--                                            --
-- Core addon for doing basic and popular     --
-- things in an intuitive way.                --
-- Please do not modify or otherwise          --
-- redistribute this without the consent of   --
-- the CTMod Team. Thank you.                 --
------------------------------------------------

local _G = getfenv(0);
local module = _G.CT_Core;

--------------------------------------------
-- Hide the friends button.

local chgFriendsButtonHide;

local function setFriendsButton(showButton)
	local button = FriendsMicroButton;
	if (showButton) then
		button:Show();
	else
		button:Hide();
	end
end

local function updateFriendsButtonHide()
	local hideButton = module:getOption("friendsMicroButton");
	if (not hideButton) then
		-- If we have changed this setting...
		if (chgFriendsButtonHide) then
			chgFriendsButtonHide = false;
			-- Reset to game default.
			-- Show the Friends button.
			setFriendsButton(true);
		end
	else
		-- Hide the Friends button.
		setFriendsButton(false);
		chgFriendsButtonHide = true;
	end
end

--------------------------------------------
-- Hide the chat buttons (conversation, minimize, up, down, bottom).

local chgChatButtonsHide;
local func_updateChatButtonsHide;

local function setChatFrameButtons(chatFrame, showButtons)
	local chatFrameName = chatFrame:GetName();
	if (chatFrameName) then
		-- By using ChatFrame?ButtonFrame the following items will also
		-- get hidden/shown:
		--   ChatFrame?ConversationButton
		--   ChatFrame?ButtonFrameMinimizeButton
		--   ChatFrame?ButtonFrameUpButton
		--   ChatFrame?ButtonFrameDownButton
		--   ChatFrame?ButtonFrameBottomButton
		local buttonFrame = _G[chatFrameName .. "ButtonFrame"];
		if (buttonFrame) then
			if (showButtons) then
				buttonFrame:Show();
			else
				buttonFrame:Hide();
			end
			if (not buttonFrame.ctOnShow) then
				buttonFrame.ctOnShow = true;
				buttonFrame:HookScript("OnShow", func_updateChatButtonsHide);
			end
		end
	end
end

local function setChatButtons(showButtons)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameButtons(chatFrame, showButtons);
		end
	end
end

local function updateChatButtonsHide()
	local hideButtons = module:getOption("chatArrows");
	if (not hideButtons) then
		-- If we have changed this setting...
		if (chgChatButtonsHide) then
			chgChatButtonsHide = false;
			-- Reset to game default.
			-- Show the chat buttons.
			setChatButtons(true);
		end
	else
		-- Hide the chat buttons.
		setChatButtons(false);
		chgChatButtonsHide = true;
	end
end

func_updateChatButtonsHide = updateChatButtonsHide;

--------------------------------------------
-- Hide the chat menu button.

local chgChatMenuButtonHide;
local hookedChatMenuButtonOnShow;
local func_updateChatMenuButtonHide;

local function setChatMenuButton(showButton)
	local button = ChatFrameMenuButton;
	if (showButton) then
		button:Show();
	else
		button:Hide();
	end
	if (not hookedChatMenuButtonOnShow) then
		hookedChatMenuButtonOnShow = true;
		ChatFrameMenuButton:HookScript("OnShow", func_updateChatMenuButtonHide);
	end
end

local function updateChatMenuButtonHide()
	local hideButton = module:getOption("chatArrows");
	if (not hideButton) then
		-- If we have changed this setting...
		if (chgChatMenuButtonHide) then
			chgChatMenuButtonHide = false;
			-- Reset to game default.
			-- Show the chat menu button.
			setChatMenuButton(true);
		end
	else
		-- Hide the chat menu button.
		setChatMenuButton(false);
		chgChatMenuButtonHide = true;
	end
end

func_updateChatMenuButtonHide = updateChatMenuButtonHide;

--------------------------------------------
-- Chat scrolling (using shift, control keys).

hooksecurefunc("FloatingChatFrame_OnMouseScroll",
	function(self, delta)
		-- In 3.3.5 Blizzard added their own mouse scrolling to chat
		-- windows, so CTCore no longer has to enable mouse wheel handling
		-- or set the OnMouseWheel script for each chat frame.
		-- However, since Blizzard's function only allows for single line
		-- scrolling, the following continues to provide scrolling
		-- to top/bottom and page up/down using Shift and Control key
		-- modifiers.
		if ( not module:getOption("chatScrolling") ) then
			return;
		end
		if ( delta and delta > 0 ) then
			if ( IsShiftKeyDown() ) then
				self:ScrollToTop();
			elseif ( IsControlKeyDown() ) then
				self:ScrollDown(); -- Undo Blizzard's ScrollUp()
				self:PageUp();
			end
		else
			if ( IsShiftKeyDown() ) then
				self:ScrollToBottom();
			elseif ( IsControlKeyDown() ) then
				self:ScrollUp(); -- Undo Blizzard's ScrollDown()
				self:PageDown();
			end
		end
	end
);

local function updateChatScrolling()
end

--------------------------------------------
-- Move input box to top of chat frame.

local chgChatEditTop;

local function setChatFrameEditTop(chatFrame, showAtTop)
	local pos = module:getOption("chatEditPosition") or 0;
	local chatFrameName = chatFrame:GetName();
	if (chatFrameName) then
		local editBox = _G[chatFrameName .. "EditBox"];
		if (editBox) then
			if (showAtTop) then
				-- Show edit box at top of chat frame.
				-- At pos == 0 the top of the editbox is at the top of the chat frame.
				local yoffset;
				if (IsCombatLog(chatFrame)) then
					yoffset = 4 + pos;
					if (pos > 0) then
						-- The combat log frame has an extra button bar that
						-- the other chat frames don't have.
						yoffset = yoffset + 26;
					end
				else
					yoffset = 6 + pos;
				end
				editBox:ClearAllPoints();
				editBox:SetPoint("TOPLEFT", chatFrameName, "TOPLEFT", -5, yoffset);
				editBox:SetPoint("TOPRIGHT", chatFrameName, "TOPRIGHT", 5, yoffset);
			else
				-- Show edit box at bottom of chat frame (this is the game's default position).
				editBox:ClearAllPoints();
				editBox:SetPoint("TOPLEFT", chatFrameName, "BOTTOMLEFT", -5, -2);
				editBox:SetPoint("TOPRIGHT", chatFrameName, "BOTTOMRIGHT", 5, -2);
			end
		end
	end
end

local function setChatEditTop(showAtTop)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameEditTop(chatFrame, showAtTop);
		end
	end
end

local function updateChatEditTop()
	local showAtTop = module:getOption("chatEditMove");
	if (not showAtTop) then
		-- If we have changed this setting...
		if (chgChatEditTop) then
			chgChatEditTop = false;
			-- Reset to game default.
			-- Show edit box at bottom of chat frame.
			setChatEditTop(false);
		end
	else
		-- Show the chat edit box at the top.
		setChatEditTop(true);
		chgChatEditTop = true;
	end
end

--------------------------------------------
-- Chat timestamps

local chgChatTimestamp;
local valChatTimestampShow;
local valChatTimestampFormat = 1;
local oldChatFrameAddMessage = {};
local useChatTimestamp = {};

local function addChatTimestamp(self, msg, ...)
	local addMessage = oldChatFrameAddMessage[self];
	if (not addMessage) then
		return;
	end
	if (valChatTimestampShow and useChatTimestamp[self]) then
		if (valChatTimestampFormat == 1) then
			-- 12h
			return addMessage(self, "[" .. tonumber(date("%I")) .. date(":%M] ") .. (msg or ""), ...);
		elseif (valChatTimestampFormat == 2) then
			-- 12hs
			return addMessage(self, "[" .. tonumber(date("%I")) .. date(":%M:%S] ") .. (msg or ""), ...);
		elseif (valChatTimestampFormat == 3) then
			-- 24h
			return addMessage(self, date("[%H:%M] ") .. (msg or ""), ...);
		elseif (valChatTimestampFormat == 4) then
			-- 24hs
			return addMessage(self, date("[%H:%M:%S] ") .. (msg or ""), ...);
		end
	end
	return addMessage(self, (msg or ""), ...);
end

local function setChatFrameTimestamp(chatFrame, showTimestamp)
	if (showTimestamp) then
		if (not oldChatFrameAddMessage[chatFrame]) then
			-- Hook the chat frame's AddMessage routine.
			oldChatFrameAddMessage[chatFrame] = chatFrame.AddMessage;
			chatFrame.AddMessage = addChatTimestamp;
		end
	end
	useChatTimestamp[chatFrame] = not IsCombatLog(chatFrame);
end

local function setChatTimestamp(showTimestamp)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameTimestamp(chatFrame, showTimestamp);
		end
	end
end

local function updateChatTimestamp()
	valChatTimestampShow = module:getOption("chatTimestamp");
	valChatTimestampFormat = module:getOption("chatTimestampFormat") or 1;

	local showTimestamp = valChatTimestampShow;
	if (not showTimestamp) then
		-- If we have changed this setting...
		if (chgChatTimestamp) then
			chgChatTimestamp = false;
			-- Reset to game default.
			-- No timestamps.
			setChatTimestamp(false);
		end
	else
		-- Show timestamps.
		setChatTimestamp(true);
		chgChatTimestamp = true;
	end
end

--------------------------------------------
-- Chat text fading: Time visible

local chgChatTimeVisible;

local function setChatFrameTimeVisible(chatFrame, seconds)
	chatFrame:SetTimeVisible(seconds);
end

local function setChatTimeVisible(seconds)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameTimeVisible(chatFrame, seconds);
		end
	end
end

local function updateChatTimeVisible()
	local seconds = module:getOption("chatTimeVisible");
	if (seconds and seconds >= 0) then
		-- Set time visible to user specified value.
		setChatTimeVisible(seconds);
		chgChatTimeVisible = true;
	else
		-- User has turned this option off.
		-- If we have changed this setting...
		if (chgChatTimeVisible) then
			chgChatTimeVisible = false;
			-- Restore to game default.
			-- Set to 120 seconds.
			setChatTimeVisible(120);
		end
	end
end

--------------------------------------------
-- Chat text fading: Fade duration

local chgChatFadeDuration;

local function setChatFrameFadeDuration(chatFrame, seconds)
	chatFrame:SetFadeDuration(seconds);
end

local function setChatFadeDuration(seconds)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameFadeDuration(chatFrame, seconds);
		end
	end
end

local function updateChatFadeDuration()
	local seconds = module:getOption("chatFadeDuration");
	if (seconds and seconds >= 0) then
		-- Set fade duration to user specified value.
		setChatFadeDuration(seconds);
		chgChatFadeDuration = true;
	else
		-- User has turned this option off.
		-- If we have changed this setting...
		if (chgChatFadeDuration) then
			chgChatFadeDuration = false;
			-- Restore to game default.
			-- Set to 3 seconds.
			setChatFadeDuration(3);
		end
	end
end

--------------------------------------------
-- Chat text fading: Disable fading

local chgChatFadingDisable;

local function setChatFrameFading(chatFrame, enableFading)
	chatFrame:SetFading(enableFading);
end

local function setChatFading(enableFading)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameFading(chatFrame, enableFading);
		end
	end
end

local function updateChatFadingDisable()
	local disableFading = module:getOption("chatDisableFading");
	if (disableFading) then
		-- Disable fading.
		setChatFading(false);
		chgChatFadingDisable = true;
	else
		-- If we have changed this setting...
		if (chgChatFadingDisable) then
			chgChatFadingDisable = false;
			-- Restore to game default.
			-- Enable fading.
			setChatFading(true);
		end
	end
end

--------------------------------------------
-- Chat frame clamping

local chgChatClamping;

local function setChatFrameClamping(chatFrame, enableClamping, useInsets)
	chatFrame:SetClampedToScreen(enableClamping);

	-- chatFrame:SetClampRectInsets(left, right, top, bottom)
	if (useInsets) then
		-- These insets are for use with the "Game default" setting.
		-- These are the inset values used by Blizzard.
		if (chatFrame == ChatFrame1) then
			chatFrame:SetClampRectInsets(-35, 35, 38, -50);
		else
			chatFrame:SetClampRectInsets(-35, 35, 26, -50);
		end
	else
		-- These insets are for use with the "Can move to edges" setting.
		--
		-- The left value of 1 and right vlue of -1 are used to ensure
		-- the side chat buttons are visible when the chat frame is
		-- moved to the very edge of the screen. The game will move the
		-- side buttons to the side of the chat frame closest to the
		-- center of the screen.
		--
		-- The top value of 26, prevents the chat tabs from being
		-- move off the top of the screen.
		--
		-- The bottom value of 0, allows the bottom of the chat
		-- frame to touch the bottom edge of the screen.
		chatFrame:SetClampRectInsets(1, -1, 26, 0);
	end
end

local function setChatClamping(enableClamping, useInsets)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameClamping(chatFrame, enableClamping, useInsets);
		end
	end
end

local function updateChatClamping()
	local clampMode = module:getOption("chatClamping") or 1;
	if (clampMode == 2) then
		-- Can move to edge of screen.
		setChatClamping(true, false);
		chgChatClamping = true;
	elseif (clampMode == 3) then
		-- Can move off screen.
		setChatClamping(false, false);
		chgChatClamping = true;
	else
		-- Game default.
		-- If we have changed this setting...
		if (chgChatClamping) then
			chgChatClamping = false;
			-- Restore to game default.
			-- Cannot move off screen.
			-- Cannot move to edge of screen.
			setChatClamping(true, true);
		end
	end
end

--------------------------------------------
-- Chat Tab Opacity

module.optChatTabOpacity = {
	{
		heading = "Mouse not over chat frame",
		sliders = {
			{option = "chatTabNormalNoMouseAlpha",   default = -0.01, label = "Normal",   varname = "CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA",   gameDefault = 0.2},
			{option = "chatTabSelectedNoMouseAlpha", default = -0.01, label = "Selected", varname = "CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA", gameDefault = 0.4},
			{option = "chatTabAlertingNoMouseAlpha", default = -0.01, label = "Alerting", varname = "CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA", gameDefault = 1.0},
		},
	},
	{
		heading = "Mouse over chat frame",
		sliders = {
			{option = "chatTabNormalMouseOverAlpha",   default = -0.01, label = "Normal",   varname = "CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA",   gameDefault = 0.6},
			{option = "chatTabSelectedMouseOverAlpha", default = -0.01, label = "Selected", varname = "CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA", gameDefault = 1.0},
			{option = "chatTabAlertingMouseOverAlpha", default = -0.01, label = "Alerting", varname = "CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA", gameDefault = 1.0},
		},
	},
};

local chgChatTabAlpha = {};

local function setChatTabAlpha(tbl, opacity)
	_G[tbl.varname] = opacity;
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			FCFTab_UpdateAlpha(chatFrame);
		end
	end
end

local function updateChatTabAlpha(tbl)
	local opacity = module:getOption(tbl.option);
	if (not opacity) then
		-- User has never changed this option.
		opacity = tbl.default;
	end
	if (opacity and opacity < 0) then
		-- If we have changed this setting...
		if (chgChatTabAlpha[tbl.option]) then
			chgChatTabAlpha[tbl.option] = false;
			-- Reset to game default.
			setChatTabAlpha(tbl, tbl.gameDefault);
		end
	else
		-- Change tab's alpha to the user specified value.
		setChatTabAlpha(tbl, opacity or tbl.gameDefault);
		chgChatTabAlpha[tbl.option] = true;
	end
end

local function updateChatTabAlphas()
	for i, optTable in ipairs(module.optChatTabOpacity) do
		for j, tbl in ipairs(optTable.sliders) do
			updateChatTabAlpha(tbl);
		end
	end
end

--------------------------------------------
-- Chat frame resize buttons

local chgChatResizeButton = {};

local function setChatFrameResizeButton(chatFrame, buttonNum, enableButton)
	if (not chatFrame.ctResizeButtons) then
		chatFrame.ctResizeButtons = {};
	end
	local btn;
	if (buttonNum == 4) then
		-- Blizzard's bottom right resize button.
		btn = chatFrame.resizeButton;
		if (not btn) then
			local chatFrameName = chatFrame:GetName();
			if (chatFrameName) then
				btn = _G[chatFrameName .. "ResizeButton"];
			end
		end
	else
		btn = chatFrame.ctResizeButtons[buttonNum];
	end
	if (btn) then
		if ( chatFrame.isUninteractable or chatFrame.isLocked ) then
			btn:Hide();
		else
			if (enableButton) then
				btn:Show();
			else
				btn:Hide();
			end
		end
	end
end

local function setChatResizeButton(buttonNum, enableButton)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameResizeButton(chatFrame, buttonNum, enableButton);
		end
	end
end

local function updateChatResizeButton(buttonNum)
	local enableButton = module:getOption("chatResizeEnabled" .. buttonNum);
	if (buttonNum == 4) then
		-- The bottom right corner resize button (Blizzard's resize button).
		if (enableButton or enableButton == nil) then
			-- If we have changed this setting...
			if (chgChatResizeButton[buttonNum]) then
				chgChatResizeButton[buttonNum] = false;
				-- Restore to game default.
				-- Show bottom right resize button.
				setChatResizeButton(buttonNum, true);
			end
		else
			-- Hide bottom right resize button.
			setChatResizeButton(buttonNum, false);
			chgChatResizeButton[buttonNum] = true;
		end
	else
		-- Top right, top left, or bottom left resize button.
		if (enableButton) then
			-- Show this resize button.
			setChatResizeButton(buttonNum, true);
			chgChatResizeButton[buttonNum] = true;
		else
			-- If we have changed this setting...
			if (chgChatResizeButton[buttonNum]) then
				chgChatResizeButton[buttonNum] = false;
				-- Restore to game default.
				-- Hide this resize button.
				setChatResizeButton(buttonNum, false);
			end
		end
	end
end

local function updateChatResizeButtons()
	for buttonNum = 1, 4 do
		updateChatResizeButton(buttonNum);
	end
end



local chgChatResizeMouseover;

-- Rotate texture routines are from an example on
-- WoWWiki's "SetTexCoord Transformations" page.
local s2 = sqrt(2);
local cos, sin, rad = math.cos, math.sin, math.rad;
local function CalculateCorner(angle)
	local r = rad(angle);
	return 0.5 + cos(r) / s2, 0.5 + sin(r) / s2;
end
local function RotateTexture(texture, angle)
	local LRx, LRy = CalculateCorner(angle + 45);
	local LLx, LLy = CalculateCorner(angle + 135);
	local ULx, ULy = CalculateCorner(angle + 225);
	local URx, URy = CalculateCorner(angle - 45);
	texture:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
end

local function assignChatFrameResizeDefaultTexture(btn, buttonNum)
	local tx;

	btn:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up");
	tx = btn:GetNormalTexture();
	RotateTexture(tx, 90 * buttonNum);

	btn:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight");
	tx = btn:GetHighlightTexture();
	RotateTexture(tx, 90 * buttonNum);

	btn:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down");
	tx = btn:GetPushedTexture();
	RotateTexture(tx, 90 * buttonNum);
end

local function setChatFrameResizeMouseover(chatFrame, showOnMouseover)
	if (not chatFrame.ctResizeButtons) then
		chatFrame.ctResizeButtons = {};
	end
	local btn, tx;
	for buttonNum = 1, 4 do
		if (buttonNum == 4) then
			-- The bottom right corner resize button (Blizzard's resize button).
			btn = chatFrame.resizeButton;
			if (not btn) then
				local chatFrameName = chatFrame:GetName();
				if (chatFrameName) then
					btn = _G[chatFrameName .. "ResizeButton"];
				end
			end
		else
			btn = chatFrame.ctResizeButtons[buttonNum];
		end
		if (btn) then
			if (showOnMouseover) then
				-- Show textures on mouseover only
				btn:SetNormalTexture(nil);

				btn:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight");
				tx = btn:GetHighlightTexture();
				RotateTexture(tx, 90 * buttonNum);

				btn:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down");
				tx = btn:GetPushedTexture();
				RotateTexture(tx, 90 * buttonNum);
			else
				-- Always show textures
				assignChatFrameResizeDefaultTexture(btn, buttonNum);
			end
		end
	end
end

local function setChatResizeMouseover(showOnMouseover)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameResizeMouseover(chatFrame, showOnMouseover);
		end
	end
end

local function updateChatResizeMouseover()
	local showOnMouseover = module:getOption("chatResizeMouseover");
	if (showOnMouseover) then
		-- Show the resize button textures on mouseover only.
		setChatResizeMouseover(true);
		chgChatResizeMouseover = true;
	else
		-- If we have changed this setting...
		if (chgChatResizeMouseover) then
			chgChatResizeMouseover = false;
			-- Restore to game default.
			-- Show the resize button textures all the time.
			setChatResizeMouseover(false);
		end
	end
end



local chatResizePoints = {"TOPRIGHT", "TOPLEFT", "BOTTOMLEFT"};

local function createChatFrameResizeButtons(chatFrame)
	if (not chatFrame) then
		return;
	end
	local chatFrameName = chatFrame:GetName();
	if (not chatFrameName) then
		return;
	end
	if (not chatFrame.ctResizeButtons) then
		chatFrame.ctResizeButtons = {};
	end
	local updated;
	for buttonNum = 1, 3 do
		if (not chatFrame.ctResizeButtons[buttonNum]) then
			local tx, bg;
			local btn = CreateFrame("Button");
			btn:SetHeight(16);
			btn:SetWidth(16);
			btn:SetParent(chatFrame);
			bg = _G[chatFrameName .. "Background"];
			if (bg) then
				btn:SetPoint(chatResizePoints[buttonNum], bg, chatResizePoints[buttonNum], 0, 0);
			end
			btn:SetScript("OnMouseDown",
				function(self)
					local chatFrame = self:GetParent();
					self:SetButtonState("PUSHED", true);
					-- SetCursor("UI-Cursor-Size");	--Hide the cursor
					self:GetHighlightTexture():Hide();
					chatFrame:StartSizing(chatResizePoints[buttonNum]);
				end
			);
			btn:SetScript("OnMouseUp",
				function(self)
					self:SetButtonState("NORMAL", false);
					-- SetCursor(nil); --Show the cursor again
					self:GetHighlightTexture():Show();
					self:GetParent():StopMovingOrSizing();
					FCF_SavePositionAndDimensions(self:GetParent());
				end
			);
			btn:Hide();
			chatFrame.ctResizeButtons[buttonNum] = btn;
			assignChatFrameResizeDefaultTexture(btn, buttonNum);
			updated = true;
		end
	end
	return updated;
end

local function createChatResizeButtons()
	local updated;
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			updated = createChatFrameResizeButtons(chatFrame);
		end
	end
	return updated;
end

if (createChatResizeButtons()) then
	updateChatResizeButtons();
	updateChatResizeMouseover();
end

hooksecurefunc("FCF_SetLocked",
	function(chatFrame, isLocked)
		updateChatResizeButtons();
	end
);

hooksecurefunc("FCF_SetUninteractable",
	function(chatFrame, isUninteractable)
		updateChatResizeButtons();
	end
);

hooksecurefunc("FCF_OnUpdate",
	function(elapsed)
		for _, frameName in pairs(CHAT_FRAMES) do
			local chatFrame = _G[frameName];
			if ( chatFrame and chatFrame:IsShown() ) then
				--Items that will always cause the frame to fade in.
				local pushed, btn;
				local btns = chatFrame.ctResizeButtons;
				if (btns) then
					for i = 1, 3 do
						btn = btns[i];
						if (btn) then
							if (btn:GetButtonState() == "PUSHED") then
								pushed = true;
								break;
							end
						end
					end
				end
				if ( MOVING_CHATFRAME or pushed ) then
					chatFrame.mouseOutTime = 0;
					if ( not chatFrame.hasBeenFaded ) then
						FCF_FadeInChatFrame(chatFrame);
					end
				end
			end
		end
	end
);

--------------------------------------------
-- Chat frame sticky chat types

module.chatStickyTypes = {
	{default = 1, chatType = "BATTLEGROUND", label = "Battleground"},
	{default = 1, chatType = "CHANNEL", label = "Channel"},
	{default = 1, chatType = "EMOTE", label = "Emote"},
	{default = 1, chatType = "GUILD", label = "Guild"},
	{default = 1, chatType = "OFFICER", label = "Officer"},
	{default = 1, chatType = "PARTY", label = "Party"},
	{default = 1, chatType = "RAID", label = "Raid"},
	{default = 1, chatType = "BN_CONVERSATION", label = "Real ID conversation"},
	{default = 1, chatType = "BN_WHISPER", label = "Real ID whisper"},
	{default = 1, chatType = "SAY", label = "Say"},
	{default = 1, chatType = "WHISPER", label = "Whisper"},
	{default = 1, chatType = "YELL", label = "Yell"},
};

local chgChatStickyFlag = {};

local function setChatStickyFlag(chatType, stickyMode)
	-- stickyMode: 0 or 1
	if (not ChatTypeInfo[chatType]) then
		return;
	end
	if (stickyMode ~= 1) then
		stickyMode = 0;
	end
	if (ChatTypeInfo[chatType].sticky ~= stickyMode) then
		ChatTypeInfo[chatType].sticky = stickyMode;
	end
end

local function updateChatStickyFlag(stickyInfo)
	local chatType = stickyInfo.chatType;
	local stickyMode = module:getOption("chatSticky" .. chatType);  -- nil, 0, 1
	if (stickyMode == nil) then
		-- This option has never been changed by the user.
		-- Use the default value (0 or 1) for this chat type.
		stickyMode = stickyInfo.default;
	end
	if (stickyInfo.default == 1) then
		if (stickyMode == 1) then
			-- If we have changed this setting...
			if (chgChatStickyFlag[chatType]) then
				chgChatStickyFlag[chatType] = false;
				-- Restore to game default
				setChatStickyFlag(chatType, 1);
			end
		else
			-- Disable sticky state of this chat type.
			setChatStickyFlag(chatType, 0);
			chgChatStickyFlag[chatType] = true;
		end
	else
		if (stickyMode == 1) then
			-- Enable sticky state of this chat type.
			setChatStickyFlag(chatType, 1);
			chgChatStickyFlag[chatType] = true;
		else
			-- If we have changed this setting...
			if (chgChatStickyFlag[chatType]) then
				chgChatStickyFlag[chatType] = false;
				-- Restore to game default
				setChatStickyFlag(chatType, 0);
			end
		end
	end
end

local function updateChatStickyFlags()
	for i, stickyInfo in ipairs(module.chatStickyTypes) do
		updateChatStickyFlag(stickyInfo);
	end
end

--------------------------------------------
-- Override chat frame resize limits.

local chgChatNoResizeLimits;

local function setChatFrameNoResizeLimits(chatFrame, hasNoLimits)
	local width, height;
	local minWidth, minHeight, maxWidth, maxHeight;

	local defMinWidth = CHAT_FRAME_MIN_WIDTH;
	local defMinHeight = CHAT_FRAME_NORMAL_MIN_HEIGHT;
	local defMinHeight2 = CHAT_FRAME_BIGGER_MIN_HEIGHT;
	local defMaxWidth = 608;
	local defMaxHeight = 400;

	local ctMinWidth = 25;
	local ctMinHeight = 20;
	local ctMinHeight2 = ctMinHeight + (defMinHeight2 - defMinHeight);
	local ctMaxWidth = 6000;
	local ctMaxHeight = 6000;

	if (not chatFrame) then
		return;
	end

	local chatType = chatFrame.chatType;
	if ( chatType and (chatType == "BN_CONVERSATION" or chatType == "BN_WHISPER") ) then
		if (hasNoLimits) then
			minWidth  = ctMinWidth;
			minHeight = ctMinHeight2;
			maxWidth  = ctMaxWidth;
			maxHeight = ctMaxHeight;
		else
			minWidth  = defMinWidth;
			minHeight = defMinHeight2;
			maxWidth  = defMaxWidth;
			maxHeight = defMaxHeight;
		end
	else
		if (hasNoLimits) then
			minWidth  = ctMinWidth;
			minHeight = ctMinHeight;
			maxWidth  = ctMaxWidth;
			maxHeight = ctMaxHeight;
		else
			minWidth  = defMinWidth;
			minHeight = defMinHeight;
			maxWidth  = defMaxWidth;
			maxHeight = defMaxHeight;
		end
	end

	chatFrame:SetMinResize(minWidth, minHeight);
	chatFrame:SetMaxResize(maxWidth, maxHeight);

	width = chatFrame:GetWidth();
	height = chatFrame:GetHeight();
	if (width) then
		if (width < minWidth) then
			chatFrame:SetWidth(minWidth);
		elseif (width > maxWidth) then
			chatFrame:SetWidth(maxWidth);
		end
	end
	if (height) then
		if (height < minHeight) then
			chatFrame:SetHeight(minHeight);
		elseif (height > maxHeight) then
			chatFrame:SetHeight(maxHeight);
		end
	end
end

local function setChatNoResizeLimits(hasNoLimits)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local chatFrame = _G[chatFrameName];
		if (chatFrame) then
			setChatFrameNoResizeLimits(chatFrame, hasNoLimits);
		end
	end
end

local function updateChatNoResizeLimits()
	local hasNoLimits = module:getOption("chatMinMaxSize");
	if (hasNoLimits) then
		-- Override resize limits.
		setChatNoResizeLimits(true);
		chgChatNoResizeLimits = true;
	else
		-- If we have changed this setting...
		if (chgChatNoResizeLimits) then
			chgChatNoResizeLimits = false;
			-- Restore to game default.
			-- Do not override resize limits.
			setChatNoResizeLimits(false);
		end
	end
end

--------------------------------------------
-- Chat frame opacity

module.optChatFrameOpacity = {
	{
		sliders = {
			{option = "chatFrameDefaultAlpha",   default = -0.01, label = "Default",   varname = "DEFAULT_CHATFRAME_ALPHA",   gameDefault = 0.25},
		},
	},
};

local chgChatDefaultAlpha = {};

local function setChatDefaultAlpha(tbl, opacity)
	_G[tbl.varname] = opacity;
end

local function updateChatDefaultAlpha(tbl)
	local opacity = module:getOption(tbl.option);
	if (not opacity) then
		-- User has never changed this option.
		opacity = tbl.default;
	end
	if (opacity and opacity < 0) then
		-- If we have changed this setting...
		if (chgChatDefaultAlpha[tbl.option]) then
			chgChatDefaultAlpha[tbl.option] = false;
			-- Reset to game default.
			setChatDefaultAlpha(tbl, tbl.gameDefault);
		end
	else
		-- Change tab's alpha to the user specified value.
		setChatDefaultAlpha(tbl, opacity or tbl.gameDefault);
		chgChatDefaultAlpha[tbl.option] = true;
	end
end

local function updateChatDefaultAlphas()
	for i, optTable in ipairs(module.optChatFrameOpacity) do
		for j, tbl in ipairs(optTable.sliders) do
			updateChatDefaultAlpha(tbl);
		end
	end
end

--------------------------------------------
-- Edit box focus texture

local chgEditFocusHide;

local function setChatEditFocus(showFocus)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local focus1 = _G[chatFrameName .. "EditBox" .. "FocusLeft"];
		local focus2 = _G[chatFrameName .. "EditBox" .. "FocusRight"];
		local focus3 = _G[chatFrameName .. "EditBox" .. "FocusMid"];
		if (focus1 and focus2 and focus3) then
			if (showFocus) then
				focus1:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorderFocus-Left");
				focus2:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorderFocus-Right");
				focus3:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorderFocus-Mid");
			else
				focus1:SetTexture(nil);
				focus2:SetTexture(nil);
				focus3:SetTexture(nil);
			end
		end			
	end
end

local function updateEditFocusHide()
	local hideFocus = module:getOption("chatEditHideFocus");
	if (not hideFocus) then
		-- If we have changed this setting...
		if (chgEditFocusHide) then
			chgEditFocusHide = false;
			-- Reset to game default.
			-- Don't hide it. Use texture for the edit box with focus.
			setChatEditFocus(true);
		end
	else
		-- Hide it. Do not use a texture for the edit box with focus.
		setChatEditFocus(false);
		chgEditFocusHide = true;
	end
end

--------------------------------------------
-- Edit box border texture

local chgEditBorderHide;

local function setChatEditBorder(showBorder)
	for _, chatFrameName in pairs(CHAT_FRAMES) do
		local border1 = _G[chatFrameName .. "EditBox" .. "Left"];
		local border2 = _G[chatFrameName .. "EditBox" .. "Right"];
		local border3 = _G[chatFrameName .. "EditBox" .. "Mid"];
		if (border1 and border2 and border3) then
			if (showBorder) then
				border1:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Left2");
				border2:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Right2");
				border3:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Mid2");
			else
				border1:SetTexture(nil);
				border2:SetTexture(nil);
				border3:SetTexture(nil);
			end
		end			
	end
end

local function updateEditBorderHide()
	local hideBorder = module:getOption("chatEditHideBorder");
	if (not hideBorder) then
		-- If we have changed this setting...
		if (chgEditBorderHide) then
			chgEditBorderHide = false;
			-- Reset to game default.
			-- Don't hide it. Use texture for the edit box border.
			setChatEditBorder(true);
		end
	else
		-- Hide it. Do not use a texture for the edit box border.
		setChatEditBorder(false);
		chgEditBorderHide = true;
	end
end

--------------------------------------------
-- Miscellaneous

local function updateChat()
	updateFriendsButtonHide();
	updateChatMenuButtonHide();
	updateChatButtonsHide();
	updateChatScrolling();
	updateChatEditTop();
	updateChatTimestamp();
	updateChatTimeVisible();
	updateChatFadeDuration();
	updateChatFadingDisable();
	updateChatClamping();
	updateChatTabAlphas();
	updateChatResizeButtons();
	updateChatResizeMouseover();
	updateChatStickyFlags();
	updateChatNoResizeLimits();
	updateChatDefaultAlphas();
	updateEditFocusHide();
	updateEditBorderHide();
end

-- Hook function Blizzard uses to open a temporary window.
local oldFCF_OpenTemporaryWindow = FCF_OpenTemporaryWindow;
FCF_OpenTemporaryWindow = function(...)
	local chatFrame = oldFCF_OpenTemporaryWindow(...);
	if (chatFrame) then
		createChatFrameResizeButtons(chatFrame);
		updateChat();
	end
	return chatFrame;
end

--[[
-- /pri
module:setSlashCmd(
	function(msg)
		RunScript("ChatFrame1:AddMessage(" .. msg .. ", 1, 1, 0);");
	end,
	"/pri"
);
]]

--------------------------------------------
-- General Initializer

module.chatupdate = function(self, type, value)
	if ( type == "init" ) then
		-- Update chat frames with the settings.
		updateChat();

		-- At this point ChatFrame2 may not yet be the Combat Log
		-- window. We need to watch for it to get loaded, and then
		-- perform any updates that depend on knowing if a frame
		-- is the Combat Log frame.
		module:regEvent("ADDON_LOADED",
			function(event, addonName)
				if (addonName == "Blizzard_CombatLog") then
					updateChatEditTop();
					updateChatTimestamp();
				end
			end
		);
	else
		if ( type == "chatArrows" ) then
			updateChatMenuButtonHide();
			updateChatButtonsHide();

		elseif ( type == "friendsMicroButton" ) then
			updateFriendsButtonHide();

		elseif ( type == "chatTimestamp" ) then
			updateChatTimestamp();

		elseif ( type == "chatTimestampFormat" ) then
			updateChatTimestamp();

		elseif ( type == "chatEditMove" ) then
			updateChatEditTop();

		elseif ( type == "chatEditPosition" ) then
			updateChatEditTop();

		elseif ( type == "chatDisableFading" ) then
			updateChatFadingDisable();

		elseif ( type == "chatTimeVisible" ) then
			updateChatTimeVisible();

		elseif ( type == "chatFadeDuration" ) then
			updateChatFadeDuration();

		elseif ( type == "chatClamping" ) then
			updateChatClamping();

		elseif (type == "chatResizeEnabled1" or	type == "chatResizeEnabled2" or
			type == "chatResizeEnabled3" or	type == "chatResizeEnabled4") then
			updateChatResizeButtons();

		elseif ( type == "chatResizeMouseover" ) then
			updateChatResizeMouseover();

		elseif ( type == "chatMinMaxSize" ) then
			updateChatNoResizeLimits();

		elseif ( type == "chatEditHideFocus" ) then
			updateEditFocusHide();

		elseif ( type == "chatEditHideBorder" ) then
			updateEditBorderHide();

		else
			-- Chat tab opacity
			for i, optTable in ipairs(module.optChatTabOpacity) do
				for j, tbl in ipairs(optTable.sliders) do
					if ( type == tbl.option ) then
						updateChatTabAlpha(tbl);
						return;
					end
				end
			end

			-- Chat frame opacity
			for i, optTable in ipairs(module.optChatFrameOpacity) do
				for j, tbl in ipairs(optTable.sliders) do
					if ( type == tbl.option ) then
						updateChatDefaultAlpha(tbl);
						return;
					end
				end
			end

			-- Chat sticky types
			for i, stickyInfo in ipairs(module.chatStickyTypes) do
				if (type == "chatSticky" .. stickyInfo.chatType) then
					updateChatStickyFlag(stickyInfo)
					return;
				end
			end
		end
	end
end

