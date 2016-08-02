------------------------------------------------
--                CT_Viewport                 --
--                                            --
-- Allows you to customize the rendered game  --
-- area, resulting in an overall more         --
-- customizable and usable  user interface.   --
-- Please do not modify or otherwise          --
-- redistribute this without the consent of   --
-- the CTMod Team. Thank you.                 --
------------------------------------------------

-- Initialization
local module = { };

local MODULE_NAME = "CT_Viewport";
local MODULE_VERSION = strmatch(GetAddOnMetadata(MODULE_NAME, "version"), "^([%d.]+)");

module.name = MODULE_NAME;
module.version = MODULE_VERSION;

CT_Library:registerModule(module);

-- module.frame = "CT_ViewportFrame";
-- module.external = true;

-- Mod code below

CT_Viewport = {
	["initialValues"] = {
		[1] = 563,
		[2] = 937, 
		[3] = 736,
		[4] = 455,
		[5] = 375,
		[6] = 281
	},
	["currOffset"] = {
		0, 0, 0, 0
	}
};
CT_Viewport_Saved = { 0, 0, 0, 0, 0, 0, 0 };

-- Not going to bother adding a localization file :)
CT_VIEWPORT_INFO = "Note: |c00FFFFFFLeft click and drag a yellow bar to resize the viewport area.  To enter a custom value, type in the number and hit enter to set it, then click apply to see your changes.|r";
if ( GetLocale() == "deDE" ) then
	CT_VIEWPORT_INFO = "Note: |c00FFFFFFLeft click and drag a yellow bar to resize the viewport area.  To enter a custom value, type in the number and hit enter to set it, then click apply to see your changes.|r";
elseif ( GetLocale() == "frFR" ) then
	CT_VIEWPORT_INFO = "Note: |c00FFFFFFLeft click and drag a yellow bar to resize the viewport area.  To enter a custom value, type in the number and hit enter to set it, then click apply to see your changes.|r";
end

local frameClearAllPoints, frameSetAllPoints, frameSetPoint;

function CT_Viewport_GetQuotient(number)
	number = format("%.2f", number);
	
	for a = 1, 100, 1 do
		for b = 1, 100, 1 do
			if ( format("%.2f", b / a) == number ) then
				return format("%.2f |r(|c00FFFFFF%d/%d|r)", number, b, a);
			elseif ( format("%.2f", a / b) == number ) then
				return format("%.2f |r(|c00FFFFFF%d/%d|r)", number, a, b);
			end
		end 
	end
	return number;
end

-- Add to special frames table
tinsert(UISpecialFrames, "CT_ViewportFrame");

-- Slash command to display the frame
SlashCmdList["VIEWPORT"] = function(msg)
	local iStart, iEnd, left, right, top, bottom = string.find(msg, "^(%d+) (%d+) (%d+) (%d+)$");
	if ( left and right and top and bottom ) then
		CT_Viewport_ApplyViewport(tonumber(left), tonumber(right), tonumber(top), tonumber(bottom));
	else
		ShowUIPanel(CT_ViewportFrame);
	end
end
SLASH_VIEWPORT1 = "/viewport";
SLASH_VIEWPORT2 = "/ctvp";
SLASH_VIEWPORT3 = "/ctviewport";

-- Resizing functions
function CT_Viewport_Resize(button, anchorPoint)
	local ivalues = CT_Viewport.initialValues;
	local iframe = CT_ViewportFrameInnerFrame;

	button:GetParent():StartSizing(anchorPoint);
	CT_Viewport.isResizing = anchorPoint;
	
	-- A bit hackish, but meh, it works
	if ( anchorPoint == "LEFT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (ivalues[2] - iframe:GetRight()), ivalues[6]);

	elseif ( anchorPoint == "RIGHT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (iframe:GetLeft() - ivalues[1]), ivalues[6]);

	elseif ( anchorPoint == "TOP" ) then
		button:GetParent():SetMaxResize(ivalues[5], ivalues[6] - (iframe:GetBottom() - ivalues[4]));

	elseif ( anchorPoint == "BOTTOM" ) then
		button:GetParent():SetMaxResize(ivalues[5], ivalues[6] - (ivalues[3] - iframe:GetTop()));

	elseif ( anchorPoint == "TOPLEFT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (ivalues[2] - iframe:GetRight()), ivalues[6] - (iframe:GetBottom() - ivalues[4]));

	elseif ( anchorPoint == "TOPRIGHT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (iframe:GetLeft() - ivalues[1]), ivalues[6] - (iframe:GetBottom() - ivalues[4]));

	elseif ( anchorPoint == "BOTTOMLEFT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (ivalues[2] - iframe:GetRight()), ivalues[6] - (ivalues[3] - iframe:GetTop()));

	elseif ( anchorPoint == "BOTTOMRIGHT" ) then
		button:GetParent():SetMaxResize(ivalues[5] - (iframe:GetLeft() - ivalues[1]), ivalues[6] - (ivalues[3] - iframe:GetTop()));
	end
end

function CT_Viewport_StopResize(button)
	local screenRes = CT_Viewport.screenRes;
	local currOffset = CT_Viewport.currOffset;

	button:GetParent():StopMovingOrSizing();
	CT_Viewport.isResizing = nil;

	-- We need to re-anchor the inner frame after the player drags it.
	-- The game picks its own anchor when dragging stops, and the one that it picks
	-- is not what we need for the inner frame. Since the viewport window is near the
	-- center of the screen the game will anchor the inner frame using a CENTER
	-- anchor point to UIParent. What we really need are TOPLEFT and BOTTOMRIGHT
	-- anchor points to the outer frame.
	CT_Viewport_ApplyInnerViewport(
		CT_Viewport.currOffset[1], -- left
		CT_Viewport.currOffset[2], -- right
		CT_Viewport.currOffset[3], -- top
		CT_Viewport.currOffset[4] -- bottom
	);

	local value1 = (screenRes[1] - currOffset[1] - currOffset[2]);
	local value2 = (screenRes[2] - currOffset[3] - currOffset[4]);
	local value3
	if (value2 == 0) then
		value3 = 0;
	else
		value3 = value1 / value2;
	end
	CT_ViewportFrameAspectRatioNewText:SetText("Aspect Ratio (Current): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));

	local value1 = screenRes[1];
	local value2 = screenRes[2];
	local value3
	if (value2 == 0) then
		value3 = 0;
	else
		value3 = value1 / value2;
	end
	CT_ViewportFrameAspectRatioDefaultText:SetText("Aspect Ratio (Default): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));
end

-- Get initial size values
function CT_Viewport_GetInitialValues()
	local bframe = CT_ViewportFrameBorderFrame;

	if (not CT_Viewport.initialValues) then
		CT_Viewport.initialValues = {};
	end

	local ivalues = CT_Viewport.initialValues;

	-- Calculate limits of inner frame using the border frame since it will
	-- always be in a fixed position, unlike the inner frame whose edges may get
	-- dragged by the user.
	ivalues[1] = bframe:GetLeft() + 4;
	ivalues[2] = bframe:GetRight() - 4;
	ivalues[3] = bframe:GetTop() - 4;
	ivalues[4] = bframe:GetBottom() + 4;
	ivalues[5] = ivalues[2] - ivalues[1];  -- width
	ivalues[6] = ivalues[3] - ivalues[4];  -- height

	return ivalues;
end

-- Get current resolution in x and y
function CT_Viewport_GetCurrentResolution(...)
	local currRes = select(GetCurrentResolution(), ...);
	if ( currRes ) then
		local useless, useless, x, y = string.find(currRes, "(%d+)x(%d+)");
		if ( x and y ) then
			return tonumber(x), tonumber(y);
		end
	end
	return nil;
end

-- Apply the viewport settings
function CT_Viewport_ApplyViewport(left, right, top, bottom, r, g, b)
	local screenRes = CT_Viewport.screenRes;

	-- UIParent values change when the UI scale is changed by the user,
	-- or if the video resolution is changed by the user.
	local parentWidth = UIParent:GetWidth();
	local parentHeight = UIParent:GetHeight();
	local parentScale = UIParent:GetScale();

	if ( not left ) then
		local ivalues = CT_Viewport.initialValues;
		local iframe = CT_ViewportFrameInnerFrame;

		if (ivalues[5] == 0) then
			right = 0;
			left = 0;
		else
			right = ((ivalues[2] - iframe:GetRight()) / ivalues[5]) * screenRes[1];
			left = ((iframe:GetLeft() - ivalues[1]) / ivalues[5]) * screenRes[1];
		end
		if (ivalues[6] == 0) then
			top = 0;
			bottom = 0;
		else
			top = ((ivalues[3] - iframe:GetTop()) / ivalues[6]) * screenRes[2];
			bottom = ((iframe:GetBottom() - ivalues[4]) / ivalues[6]) * screenRes[2];
		end
	end
	if ( right < 0 ) then
		right = 0;
	end
	if ( left < 0 ) then
		left = 0;
	end
	if ( top < 0 ) then
		top = 0;
	end
	if ( bottom < 0 ) then
		bottom = 0;
	end
	
	r = ( r or 0 );
	g = ( g or 0 );
	b = ( b or 0 );
	
	CT_Viewport_Saved = { left, right, top, bottom, r, g, b }; -- Need to reverse top and bottom because of how it works

	local update = true;
	if (WorldFrame:IsProtected() and InCombatLockdown()) then
		update = false;
	end
	if (update) then
		frameClearAllPoints(WorldFrame);

		local xoffset;
		local yoffset;

		if (screenRes[1] == 0) then
			xoffset = 0;
		else
			xoffset = (left / screenRes[1]) * (parentWidth * parentScale);
		end
		if (screenRes[2] == 0) then
			yoffset = 0;
		else
			yoffset = (top / screenRes[2]) * (parentHeight * parentScale);
		end
		frameSetPoint(WorldFrame, "TOPLEFT", xoffset, -yoffset);

		if (screenRes[1] == 0) then
			xoffset = 0;
		else
			xoffset = (right / screenRes[1]) * (parentWidth * parentScale);
		end
		if (screenRes[2] == 0) then
			yoffset = 0;
		else
			yoffset = (bottom / screenRes[2]) * (parentHeight * parentScale);
		end
		frameSetPoint(WorldFrame, "BOTTOMRIGHT", -xoffset, yoffset);
	end

	CT_ViewportOverlay:SetVertexColor(r, g, b, 1);
end

function CT_Viewport_ApplySavedViewport()
	CT_Viewport_ApplyViewport(
		CT_Viewport_Saved[1],
		CT_Viewport_Saved[2],
		CT_Viewport_Saved[3],
		CT_Viewport_Saved[4],
		CT_Viewport_Saved[5],
		CT_Viewport_Saved[6],
		CT_Viewport_Saved[7]
	);
end

-- Apply saved settings to the inner viewport
function CT_Viewport_ApplyInnerViewport(left, right, top, bottom, r, g, b)
	local screenRes = CT_Viewport.screenRes;
	local ivalues = CT_Viewport.initialValues;
	local iframe = CT_ViewportFrameInnerFrame;

	CT_ViewportFrameLeftEB:SetText(floor(left + 0.5));
	CT_ViewportFrameRightEB:SetText(floor(right + 0.5));
	CT_ViewportFrameTopEB:SetText(floor(top + 0.5));
	CT_ViewportFrameBottomEB:SetText(floor(bottom + 0.5));

	CT_Viewport.currOffset = {
		floor(left + 0.5),
		floor(right + 0.5),
		floor(top + 0.5),
		floor(bottom + 0.5)
	};

	local value1 = (screenRes[1] - left - right);
	local value2 = (screenRes[2] - top - bottom);
	local value3
	if (value2 == 0) then
		value3 = 0;
	else
		value3 = value1 / value2;
	end
	CT_ViewportFrameAspectRatioNewText:SetText("Aspect Ratio (Current): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));

	local value1 = screenRes[1];
	local value2 = screenRes[2];
	local value3
	if (value2 == 0) then
		value3 = 0;
	else
		value3 = value1 / value2;
	end
	CT_ViewportFrameAspectRatioDefaultText:SetText("Aspect Ratio (Default): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));

	if (screenRes[1] == 0) then
		left = 0;
		right = 0;
	else
		left = left * (ivalues[5] / screenRes[1]);
		right = right * (ivalues[5] / screenRes[1]);
	end

	if (screenRes[2] == 0) then
		top = 0;
		bottom = 0;
	else
		top = top * (ivalues[6] / screenRes[2]);
		bottom = bottom * (ivalues[6] / screenRes[2]);
	end

	iframe:ClearAllPoints();
	iframe:SetPoint("TOPLEFT", "CT_ViewportFrameBorderFrame", "TOPLEFT", left + 4, -(top + 4));
	iframe:SetPoint("BOTTOMRIGHT", "CT_ViewportFrameBorderFrame", "BOTTOMRIGHT", -(right + 4), bottom + 4);

	local frameTop = iframe:GetTop();
	local frameBottom = iframe:GetBottom();
	local frameLeft = iframe:GetLeft();
	local frameRight = iframe:GetRight();

	if ( frameTop and frameBottom and frameLeft and frameRight ) then
		iframe:SetHeight(frameTop - frameBottom);
		iframe:SetWidth(frameRight - frameLeft);
	else
		CT_ViewportFrame.awaitingValues = 1;
	end
end

-- Change a side of the viewport
function CT_Viewport_ChangeViewportSide(editBox)
	local value = tonumber(editBox:GetText());
	if ( not value ) then
		return;
	end
	value = abs(value);
	local id = editBox:GetID();

	local left = CT_Viewport.currOffset[1];
	local right = CT_Viewport.currOffset[2];
	local top = CT_Viewport.currOffset[3];
	local bottom = CT_Viewport.currOffset[4];

	if ( id == 1 ) then
		-- Left
		CT_Viewport_ApplyInnerViewport(value, right, top, bottom);
	elseif ( id == 2 ) then
		-- Right
		CT_Viewport_ApplyInnerViewport(left, value, top, bottom);
	elseif ( id == 3 ) then
		-- Top
		CT_Viewport_ApplyInnerViewport(left, right, value, bottom);
	elseif ( id == 4 ) then
		-- Bottom
		CT_Viewport_ApplyInnerViewport(left, right, top, value);
	end
end

function CT_ViewportFrame_Init(width, height)
	local x, y;
	if (width and height) then
		x = width;
		y = height;
	else
		x, y = CT_Viewport_GetCurrentResolution(GetScreenResolutions());
	end
	if ( x and y ) then
		local modifier;
		if (y == 0) then
			modifier = 0;
		else
			modifier = x / y;
		end
		if ( modifier ~= (4 / 3) ) then
			local newViewportHeight = 281 / modifier;  -- CT_Viewport.initialValues[6] / modifier;
			CT_ViewportFrameInnerFrame:SetHeight(newViewportHeight);
			CT_ViewportFrameBorderFrame:SetHeight(newViewportHeight + 8);
		end
		CT_Viewport.screenRes = { x, y };
		CT_ViewportFrame:SetHeight(210 + CT_ViewportFrameBorderFrame:GetHeight());
		CT_Viewport.awaitingValues = 1;
	end
end

-- Handlers

	-- OnLoad
function CT_ViewportFrame_OnLoad(self)
	frameClearAllPoints = CT_ViewportFrame.ClearAllPoints;
	frameSetAllPoints = CT_ViewportFrame.SetAllPoints;
	frameSetPoint = CT_ViewportFrame.SetPoint;

	hooksecurefunc(WorldFrame, "ClearAllPoints", CT_Viewport_ApplySavedViewport);
	hooksecurefunc(WorldFrame, "SetAllPoints", CT_Viewport_ApplySavedViewport);
	hooksecurefunc(WorldFrame, "SetPoint", CT_Viewport_ApplySavedViewport);

	-- The game reloads the UI when switching between different aspect ratios.
	-- The game does not reload the UI when switching between resolutions with the same aspect ratio.
	-- The game does not reload the UI when switching between windowed, windowed (fullscreen),
	-- and fullscreen modes.
	-- The game does not reload the UI when changing the UI scale slider. We'll catch this indirectly
	-- via the OnShow script when the viewport window is re-opened.

	-- Handle screen resolution changes.
	hooksecurefunc("SetScreenResolution",
		function(width, height, ...)
			CT_ViewportFrame_Init(width, height);
			CT_Viewport_ApplySavedViewport();
			CT_ViewportFrame.hasAppliedViewport = nil;
		end
	);

	self:RegisterEvent("VARIABLES_LOADED");

	CT_ViewportFrame_Init(nil, nil);

	CT_ViewportFrameInnerFrame:SetBackdropBorderColor(1, 1, 0, 1);
	CT_ViewportFrameBorderFrame:SetBackdropBorderColor(1, 0, 0, 1);
	CT_ViewportFrameInnerFrameBackground:SetVertexColor(1, 1, 0, 0.1);
	
	if (not CT_ViewportOverlay) then
		CT_ViewportOverlay = WorldFrame:CreateTexture("CT_ViewportOverlay", "BACKGROUND");
		CT_ViewportOverlay:SetTexture(1, 1, 1, 1);
		CT_ViewportOverlay:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", -1, 1);
		CT_ViewportOverlay:SetPoint("BOTTOMRIGHT", "UIParent", "BOTTOMRIGHT", 1, -1);
	end
end

	-- OnUpdate
function CT_ViewportFrame_OnUpdate(self, elapsed)
	local iframe = CT_ViewportFrameInnerFrame;
	local screenRes = CT_Viewport.screenRes;

	if ( not self.hasAppliedViewport ) then
		self.hasAppliedViewport = 1;

		iframe:ClearAllPoints();
		iframe:SetPoint("TOPLEFT", "CT_ViewportFrameBorderFrame", "TOPLEFT", 4, -4);
		iframe:SetPoint("BOTTOMRIGHT", "CT_ViewportFrameBorderFrame", "BOTTOMRIGHT", -4, 4);

	elseif ( self.hasAppliedViewport == 1 ) then
		self.hasAppliedViewport = 2;

		if ( CT_Viewport.awaitingValues ) then
			CT_Viewport_GetInitialValues();
			CT_Viewport.awaitingValues = nil;

			local ivalues = CT_Viewport.initialValues;
			iframe:SetMinResize(ivalues[5] / 2, ivalues[6] / 2);

			CT_ViewportFrameLeftEB.limitation = screenRes[1] / 2;
			CT_ViewportFrameRightEB.limitation = screenRes[1] / 2;
			CT_ViewportFrameTopEB.limitation = screenRes[2] / 2;
			CT_ViewportFrameBottomEB.limitation = screenRes[2] / 2;
		end
		CT_ViewportFrame_OnShow();
	end

	if ( CT_Viewport.isResizing ) then
		local ivalues = CT_Viewport.initialValues;

		local right, left, top, bottom;

		if (ivalues[5] == 0) then
			right = 0;
			left = 0;
		else
			right = ((ivalues[2] - iframe:GetRight()) / ivalues[5]) * screenRes[1];
			left = ((iframe:GetLeft() - ivalues[1]) / ivalues[5]) * screenRes[1];
		end
		if (ivalues[6] == 0) then
			top = 0;
			bottom = 0;
		else
			top = ((ivalues[3] - iframe:GetTop()) / ivalues[6]) * screenRes[2];
			bottom = ((iframe:GetBottom() - ivalues[4]) / ivalues[6]) * screenRes[2];
		end

		if ( right < 0 ) then
			right = 0;
		end
		if ( left < 0 ) then
			left = 0;
		end
		if ( top < 0 ) then
			top = 0;
		end
		if ( bottom < 0 ) then
			bottom = 0;
		end

		CT_ViewportFrameLeftEB:SetText(floor(left + 0.5));
		CT_ViewportFrameRightEB:SetText(floor(right + 0.5));
		CT_ViewportFrameTopEB:SetText(floor(top + 0.5));
		CT_ViewportFrameBottomEB:SetText(floor(bottom + 0.5));

		CT_Viewport.currOffset = {
			floor(left + 0.5),
			floor(right + 0.5),
			floor(top + 0.5),
			floor(bottom + 0.5)
		};

		if ( not self.update ) then
			self.update = 0;
		else
			self.update = self.update - elapsed;
		end
		if ( self.update <= 0 ) then
			local value1 = (screenRes[1] - left - right);
			local value2 = (screenRes[2] - top - bottom);
			local value3
			if (value2 == 0) then
				value3 = 0;
			else
				value3 = value1 / value2;
			end
			CT_ViewportFrameAspectRatioNewText:SetText("Aspect Ratio (Current): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));

			local value1 = screenRes[1];
			local value2 = screenRes[2];
			local value3
			if (value2 == 0) then
				value3 = 0;
			else
				value3 = value1 / value2;
			end
			CT_ViewportFrameAspectRatioDefaultText:SetText("Aspect Ratio (Default): |c00FFFFFF" .. CT_Viewport_GetQuotient(value3));

			self.update = 0.1;
		end
	else
		self.update = nil;
	end
end

	-- OnShow
function CT_ViewportFrame_OnShow(self)
	if ( CT_ViewportFrameInnerFrame:GetLeft() ) then
		CT_Viewport_GetInitialValues();
		CT_Viewport_ApplyInnerViewport(
			CT_Viewport_Saved[1],
			CT_Viewport_Saved[2],
			CT_Viewport_Saved[3],
			CT_Viewport_Saved[4],
			CT_Viewport_Saved[5],
			CT_Viewport_Saved[6],
			CT_Viewport_Saved[7]
		);
	else
			CT_ViewportFrame.hasAppliedViewport = nil;
	end
end

	-- OnEvent
function CT_ViewportFrame_OnEvent(self, event, ...)
	if ( event == "VARIABLES_LOADED" ) then
		CT_Viewport_ApplySavedViewport();
	end
end

--------------------------------------------
-- Options Frame Code

module.frame = function()
	local options = {};
	local yoffset = 5;
	local ysize;

	-- Tips
	ysize = 60;
	options["frame#tl:0:-" .. yoffset .. "#br:tr:0:-".. (yoffset + ysize)] = {
		"font#tl:5:0#v:GameFontNormalLarge#Tips",
		"font#t:0:-25#s:0:30#l:13:0#r#You can use /viewport, /ctvp, or /ctviewport to open the CT_Viewport options window.#0.6:0.6:0.6:l",
	};

	-- General Options
	yoffset = yoffset + ysize + 15;
	ysize = 140;
	options["frame#tl:0:-" .. yoffset .. "#br:tr:0:-".. (yoffset + ysize)] = {
		"font#tl:5:0#v:GameFontNormalLarge#Options",
		"font#t:5:-25#s:0:30#l:13:0#r#Click the button below to open the CT_Viewport options window.#0.6:0.6:0.6:l",
		"font#t:5:-60#s:0:30#l:13:0#r#Shift-click the button if you want to leave the CTMod Control Panel open.#0.6:0.6:0.6:l",
		["button#t:0:-100#s:120:30#n:CT_Viewport_ShowOptions_Button#v:GameMenuButtonTemplate#Show options"] = {
			["onclick"] = function(self)
				CT_ViewportFrame:Show();
				if (not IsShiftKeyDown()) then
					module:showControlPanel(false);
				end
			end,
		},
	};
	yoffset = yoffset + ysize;

	return "frame#all", options;
end
