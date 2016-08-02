local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Popup = {}
local L = ZGV.L
local CHAIN = ZGV.ChainCall

ZGV.Popup=Popup

local table,string,tonumber,tostring,ipairs,pairs,setmetatable = table,string,tonumber,tostring,ipairs,pairs,setmetatable

local SegoeFont=ZGV.DIR.."\\Skins\\SegoeUI.TTF"
local SegoeFontBold=ZGV.DIR.."\\Skins\\SegoeUIB.TTF"

--[[
	Basic popups will have a background, a logo, a text line, and an accept and decline button. These features are there in all popups

]]--

function Popup:CreatePopup(skin)
	ZGV:Debug("Creating a Popup")

	local function SkinData(property)
		if skin then
			local r=ZGV.Skins.default.styles[skin][property] or ZGV.Skins.default.styles[skin].skin.defaultstyle[property]
			if r then
				if type(r)=="function" then -- if it's a function, call it.
					return r(self)
				else -- a property then
					return r
				end
			else
				--error("Unknown property requested: "..propertyname)
			end
		else
			return ZGV.CurrentSkinStyle:SkinData(property)
		end
	end

	local popup = CHAIN(CreateFrame("Frame","ZygorGuidePopup",UIParent)) --This is the object we will be returning
		:SetBackdrop(SkinData("Backdrop"))
		:SetBackdropColor(unpack(SkinData("BackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("BackdropBorderColor")))
		:SetSize(375,150) -- The height can change later.
		:SetAlpha(ZGV.db.profile.opacitymain) --This only gets set once per popup.
		:SetPoint("TOP",0,-50)
		:SetClampedToScreen(true) :EnableMouse(true) :RegisterForDrag("LeftButton") :SetMovable(true)
		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:SetFrameStrata("HIGH")
		:Hide() --Don't show here. Let the Client decide when to show.
	.__END
	popup:SetScript("OnShow", function() StaticPopup_DisplayedFrames[6]=popup popup.hideOnEscape=true  end)-- tricking the game to think a static popup is displayed so that escape works correctly.

	popup.logo = CHAIN(popup:CreateTexture()) :SetPoint("TOP",0,-10) :SetSize(135,31) :SetTexture(SkinData("TitleLogo")) .__END

	popup.text=CHAIN(popup:CreateFontString("","ARTWORK"))
		:SetPoint("TOP",popup.logo,"BOTTOM",0,0)
		:SetWidth(350)
		:SetFont(SegoeFont,11) --text is set later
	.__END

	popup.text2=CHAIN(popup:CreateFontString("","ARTWORK"))
		:SetPoint("TOP",popup.text,"BOTTOM")
		:SetWidth(350)
		:SetFont(SegoeFontBold,14) --text is set later
	.__END

	popup.declinebutton = CHAIN(CreateFrame("Button", "", popup)) --TODO: make these buttons change for Midnight.
		:SetPoint("BOTTOMLEFT",popup,"BOTTOM",5,5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0.3,0.3,0.3)
		:SetSize(80,20)
		:SetText(L['static_decline'])
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() popup:DeclineFunc() popup:Close() end)
	 .__END
	popup.declinebutton:GetFontString():SetFont(SegoeFontBold,12)

	popup.acceptbutton = CHAIN(CreateFrame("Button", "", popup))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOM",-5,5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3)
		:SetSize(80,20)
		:SetText(L['static_accept'])
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() popup:AcceptFunc() popup:Close() end)
	.__END
	popup.acceptbutton:GetFontString():SetFont(SegoeFontBold,12)

	popup.settings = CHAIN(CreateFrame("Button",nil,popup))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOMRIGHT",-10,5) :SetSize(15,15)
		:SetScript("OnClick",function() popup:Settings() end) --Meaning to pass nothing into OpenOptions, want to see main tab.
	.__END
	ZGV.AssignButtonTexture(popup.settings,(SkinData("TitleButtons")),5,16)

	--[[
	--TODO if we have a checkbutton, move the accept button. :SetPoint("RIGHT",popup.declinebutton,"LEFT",-10,0)
	F.checkbutton=CHAIN(CreateFrame("CheckButton", "GuideCheck",F,"UICheckButtonTemplate"))
		:SetSize(20,20)
		:SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",15,10)
		:Hide()
	.__END
	_G[F.checkbutton:GetName().."Text"]:SetText(L['static_dontshow'])--]]

	self:SetDefaultFunctions(popup)
	popup:SetText("This is a Zygor Popup with no text...") -- This will be set by the client.

	return popup
end

function Popup:SetDefaultFunctions(popup)
	--*****Client needs to set AcceptFunc and DeclineFunc themselves for it to do anything special.****
	popup.AcceptFunc = function(self)
		local checked=popup.checkbutton and popup.checkbutton:GetChecked()
		if checked then
			--Do something
		end

		--Do something else
		ZGV:Debug("Popup Accept pressed, no other function was given to this popup.")
	end 

	popup.DeclineFunc = function(self,key)
		local checked=popup.checkbutton and popup.checkbutton:GetChecked()
		if checked then
			--Do Something
		end
		--Do something else
		ZGV:Debug("Popup Decline pressed, no other function was given to this popup.")
	end

	popup.EscapeFunc = function(self)
		--More of just a place holder.. Usually nothing is done on Escape, but if something is, put it here.
		ZGV:Debug("Escape pressed, no other function was given to this popup.")
	end
	hooksecurefunc("StaticPopup_EscapePressed",function() popup:EscapeFunc() popup:Close() end)

	popup.Settings = function(self) --Do this if not told where to open
		 ZygorGuidesViewer:OpenOptions()
	end

	function popup:Close()
		popup:Hide()
		StaticPopup_DisplayedFrames[6]=nil
		ZGV:Debug("Popup Closed")
	end

	function popup:SetText(text,text2)
		self.text:SetText(text)
		self.text2:SetText(text2)
		self:AdjustSize()
	end

	function popup:AdjustSize()
		local offsets = 10 + 10 + 5 --Logo and top + text and buttons + buttons and bottom
		self:SetHeight(offsets + self.text:GetStringHeight() + self.text2:GetStringHeight() + self.logo:GetHeight() + self.acceptbutton:GetHeight() )
		--String width is 300, so max width is 350
	end
end