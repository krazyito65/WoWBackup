local ZGV = ZygorGuidesViewer
if ZGV then return end

local GP = {}
ZGV.GuidePicker = GP
ZGV.GP = GP

-- This is the Guide Menu. Why is it STILL stuck inside a skin folder is beyond me.

local L = ZGV.L

local FR

local NUMLABELSBIG=20
local LABELSBIG_ONECOLUMN=5

local CHAIN = ZGV.ChainCall

local function ZGV_GP_Scroll_Update(scroll)
	GP:Refresh()
end

local function SetTextureBlock(tex,nh,nv,h,v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
end

local function SetIcon(self,nh,nv,h,v,sec)
	local icon = sec and self.iconover or self.icon
	if nh>0 then icon:Show() else icon:Hide() end
	SetTextureBlock(icon,nh,nv,h,v)
end

local function AssignButtonTexture(obj,tx,num,total, disable4)
	obj:SetNormalTexture(tx) SetTextureBlock(obj:GetNormalTexture(),num,1,total,4)
	obj:SetPushedTexture(tx) SetTextureBlock(obj:GetPushedTexture(),num,2,total,4)
	obj:SetHighlightTexture(tx) SetTextureBlock(obj:GetHighlightTexture(),num,3,total,4)
	obj:SetDisabledTexture(tx) SetTextureBlock(obj:GetDisabledTexture(),num,disable4 and 4 or 1,total,4)
end

function GP:CreateFrame()
	if FR then return FR end
	if InCombatLockdown() then return end

	FR = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_GuidePicker", UIParent, ""))
	 :SetSize(500,500) :SetPoint("CENTER")
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-08", tile = true, edgeSize=20, tileSize = 128, insets = { left = 20, right = 20, top = 20, bottom = 20 }})
	 :SetBackdropColor(0,0,0,0.72) :SetBackdropBorderColor(0,0,0)
	 :SetFrameStrata("DIALOG")
	 :Hide()
	 .__END
	self.Frame = FR

	-- Scaling animation SUCKS when backdrops are concerned. Sucky suckage of suckness, really.

	--[[
		local size=0.95
		local s = FR.showanimgr:CreateAnimation("Scale")
		s:SetScale(1/size,1/size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")

		FR.showanimgr = FR:CreateAnimationGroup()
		local s = FR.showanimgr:CreateAnimation("Animation")
		s:SetScript("OnUpdate",function(self)  print("a") FR:SetScale(size+(1-size)*self:GetSmoothProgress())  FR:SetAlpha(self:GetSmoothProgress()) end)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
		FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  FR:SetScale(size)  end)
		FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  FR:SetScale(1) end)

		local s = FR.hideanimgr:CreateAnimation("Scale")
		s:SetScale(size,size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
	--]]

	FR.showanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.showanimgr:CreateAnimation("Alpha")) :SetChange(1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  end)
	FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  end)

	FR.hideanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.hideanimgr:CreateAnimation("Alpha")) :SetChange(-1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.hideanimgr:SetScript("OnPlay",function(self)  local p = FR  p:SetAlpha(1)  end)
	FR.hideanimgr:SetScript("OnFinished",function(self)  local p = FR  p:Hide()  end)


	FR.Logo = CHAIN(FR:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygorlogo") :SetSize(120,120/4) :SetPoint("TOP",FR,"TOP",0,0)
	--FR.Caption = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Huge1")) :SetPoint("TOP",FR.Logo,"BOTTOM",0,0) :SetJustifyH("LEFT") :SetJustifyV("TOP")  :SetHeight(50)  :SetFont(STANDARD_TEXT_FONT,15)  :SetText("Select a guide")

	FR.TitleBarSep = CHAIN(FR:CreateTexture()) :SetTexture(0,0,0,0.5) :SetPoint("TOPLEFT",FR,"TOPLEFT",2,-26) :SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-2,-28)


	FR.CloseButton = CHAIN(CreateFrame("Button", nil, FR, nil)) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-5,-5) :SetSize(20,20) :SetScript("OnClick",function() GP:Hide() end) .__END
	AssignButtonTexture(FR.CloseButton,ZGV.SkinDir.."titlebuttons",6,16)


	FR.GuidesButton = CHAIN(CreateFrame("Button", "ZGV_GP_Guides", FR, "ZygorGuidesViewer_Default_Button")) :SetPoint("TOPLEFT",FR,"TOPLEFT",10,-30)	:SetSize(60,20)
	 :SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }})  :SetBackdropBorderColor(1,1,1,0)
	 :SetText(L['guidepicker_button_guides'])
	 :SetAttribute("tooltip",L['guidepicker_button_guides_desc'])
	 :SetScript("OnClick",function() GP:NavigateTo() end)
	 .__END

	FR.RecentButton = CHAIN(CreateFrame("Button", "ZGV_GP_Recent", FR, "ZygorGuidesViewer_Default_Button")) :SetPoint("LEFT",FR.GuidesButton,"RIGHT",5,0)	:SetSize(60,20)
	 :SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }})  :SetBackdropBorderColor(1,1,1,0)
	 :SetText(L['guidepicker_button_recent'])
	 :SetAttribute("tooltip",L['guidepicker_button_recent_desc'])
	 :SetScript("OnClick",function() GP:NavigateTo("RECENT") end)
	 .__END

	FR.SuggestButton = CHAIN(CreateFrame("Button", "ZGV_GP_Suggest", FR, "ZygorGuidesViewer_Default_Button")) :SetPoint("LEFT",FR.RecentButton,"RIGHT",5,0)	:SetSize(60,20)
	 :SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }})  :SetBackdropBorderColor(1,1,1,0)
	 :SetText(L['guidepicker_button_suggest'])
	 :SetAttribute("tooltip",L['guidepicker_button_suggest_desc'])
	 :SetScript("OnClick",function() GP:NavigateTo("SUGGESTED") end)
	 .__END



	FR.BackButton = CHAIN(CreateFrame("Button", nil, FR)) :SetPoint("CENTER",FR,"TOPLEFT",22,-69) :SetSize(32,32)
	 :SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
	 :SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
	 :SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
	 :SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
	 :SetScript("OnClick",function() GP:NavigateBack() end)
	 .__END

	FR.PathIcon = CHAIN(FR:CreateTexture())
	 :SetSize(30,30) :SetPoint("CENTER",FR,"TOPLEFT",52,-69)
	 :SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
	 :Hide()
	 .__END

	FR.Path1 = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR,"TOPLEFT",71,-52) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-45,-52)
	 :SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(30)
	 :SetFont(STANDARD_TEXT_FONT,16) :Show()
	 .__END

	FR.pathover = CHAIN(CreateFrame("FRAME",nil,FR)) :SetPoint("TOPLEFT",FR,"TOPLEFT",71,-52) :SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-45,-82)
	 :SetScript("OnEnter",function(self)
		if not self.tip then return end
		GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
		GameTooltip:ClearLines()
		GameTooltip:SetText(self.tip)
		GameTooltip:Show()
	 end)
	 :SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	 --:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	.__END

	--[[
	FR.Path2 = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR.Path1,"TOPRIGHT",0,0) :SetPoint("RIGHT",FR,"RIGHT",-45,0)
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(50)
	 :SetFont(STANDARD_TEXT_FONT,14)
	 .__END

	FR.Path3 = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR,"TOPLEFT",45,-65) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-45,-65)
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(50)
	 :SetFont(STANDARD_TEXT_FONT,15)
	 .__END
	--]]


	local s=12
	FR.GuidesBox = CHAIN(CreateFrame("FRAME", nil, FR)) :SetFrameStrata("DIALOG") :SetPoint("TOPLEFT",FR,"TOPLEFT",10,-85) :SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-10,-295)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=s,edgeSize=s,insets={top=s,bottom=s,left=s,right=s}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetScript("OnMouseUp",function(this,but) if but=="RightButton" then GP:NavigateBack() end end)
	.__END

	-- main categories:

	FR.LabelsBig={}
	local rows,cols

	for i=1,NUMLABELSBIG do
		local but
		but = CHAIN(CreateFrame("Button", nil, FR))
		 --:SetSize(310,60) :SetPoint("TOPLEFT",FR,"TOPLEFT",30+math.floor((i-1)/cols)*330,-90-((i-1)%cols)*65)
		 --:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
		 :SetHighlightTexture(ZGV.SkinDir.."selection")
		 :SetScript("OnClick",ZGV_GP_Button_OnClick)
		 :SetFrameLevel(5)
		 :Enable()
		 .__END
		but:GetHighlightTexture():SetAlpha(0.2)
		FR.LabelsBig[i] = but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but,"LEFT",22,0) :SetSize(50,50)
		 :SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		 .__END

		but.label = CHAIN(but:CreateFontString()) :SetPoint("LEFT",but.icon,"RIGHT",5,0) :SetPoint("RIGHT")
		 :SetJustifyH("LEFT") :SetJustifyV("CENTER")
		 :SetFont(STANDARD_TEXT_FONT,22)
		 :SetTextColor(1.0,0.8,0.0)
		 :SetText("blablabla "..i)
		 .__END
		but:SetFontString(FR.LabelsBig[i].label)
		but.SetIcon=SetIcon
		--but:SetNormalFontObject(GameFontNormalSmall)
		--but:SetHighlightFontObject(GameFontHighlightSmall)
	end

	FR.LabelsSmall={}
	rows=10
	for i=1,rows do
		local but
		but = CHAIN(CreateFrame("Button", nil, FR)) :SetPoint("TOPLEFT",FR,"TOPLEFT",30,-90-(i-1)*20) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-40,-90-(i-1)*20)
		 :SetHeight(16)
		 :SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
		 :SetScript("OnClick",ZGV_GP_Button_OnClick)
		 :RegisterForClicks("AnyUp")
		 :SetFrameLevel(5)
		 :Enable()
		 .__END
		but:GetHighlightTexture():SetAlpha(0.2)
		FR.LabelsSmall[i]=but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("LEFT") :SetSize(17,17) :SetDrawLayer("ARTWORK",0)
		 :SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but.icon,"CENTER",3,-3) :SetSize(17,17) :SetDrawLayer("ARTWORK",1)
		 :SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover.anim = CHAIN(but.iconover:CreateAnimationGroup()) :SetLooping("REPEAT") .__END
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(1.4,1.4) :SetDuration(0.5) :SetSmoothing("OUT")
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(0.7143,0.7143) :SetDuration(0.5) :SetSmoothing("IN")

		but.label = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPLEFT",22,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",-70,0) :SetDrawLayer("ARTWORK")
		 :SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetFont(STANDARD_TEXT_FONT,12) :SetTextColor(1.0,0.8,0.0)
		 :SetText("blablabla tereferekuku blorpft"..i)
		 .__END
		but:SetFontString(but.label)

		but.complabel = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0) :SetDrawLayer("ARTWORK")
		 :SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetFont(STANDARD_TEXT_FONT,10) :SetTextColor(1.0,0.8,0.0)
		 :SetText("0%")
		 .__END

		but.complabelover = CHAIN(CreateFrame("FRAME",nil,but)) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0)
		 :SetScript("OnEnter",function(self)
			if not self.tip then return end
			GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")
			GameTooltip:ClearLines()
			GameTooltip:SetText(self.tip)
			GameTooltip:Show()
		 end)
		 :SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		 --:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
		.__END

		but.back = CHAIN(but:CreateTexture()) :SetAllPoints() :SetDrawLayer("BACKGROUND")
		 :SetTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
		 --:SetBlendMode("ADD")
		 :Hide()
		 .__END
		--but:SetNormalFontObject(GameFontNormalSmall)
		--but:SetHighlightFontObject(GameFontHighlightSmall)
		--but:GetFontString():SetPoint("LEFT",but,"LEFT",22,1)
		but.SetIcon=SetIcon

	end

	-- small buttons' scrollbar
	FR.Scroll = CHAIN(CreateFrame("ScrollFrame",FR:GetName().."_Scroll",FR,"FauxScrollFrameTemplate"))
	 :SetPoint("TOPLEFT",FR,"TOPLEFT",25,-90) :SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-35,-290)
	 :EnableMouseWheel()
	 :SetScript("OnVerticalScroll",function(self,offset) FauxScrollFrame_OnVerticalScroll(self, offset, 10, ZGV_GP_Scroll_Update) end)
	 :SetScript("OnMousewheel",ZGV_GP_OnMousewheel)
	 .__END
	ZGV.ChainCall(FR.Scroll.ScrollBar:CreateTexture("BACKGROUND")) :SetTexture(0,0,0,0.4) :SetPoint("TOPLEFT",FR.Scroll.ScrollBar,"TOPLEFT") :SetPoint("BOTTOMRIGHT",FR.Scroll.ScrollBar,"BOTTOMRIGHT")
	local n=FR.Scroll:GetName()
	_G[n.."ScrollBarThumbTexture"]:SetSize(12,30)
	_G[n.."ScrollBarThumbTexture"]:SetTexture(SKINDIR.."scrollbutton")
	_G[n.."ScrollBarScrollUpButton"]:SetSize(16,16) -- they're 18x16 by default now, the silly things.
	_G[n.."ScrollBarScrollDownButton"]:SetSize(16,16)
	AssignButtonTexture(_G[n.."ScrollBarScrollUpButton"],ZGV.SkinDir.."titlebuttons",7,16)
	AssignButtonTexture(_G[n.."ScrollBarScrollDownButton"],ZGV.SkinDir.."titlebuttons",8,16)

	FR.GuideTitlePre = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
	 :SetPoint("TOPLEFT",FR,"TOPLEFT",15,-305) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-115,-305)
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(13)
	 :SetText("Selected Guide:") :SetTextColor(0.8,0.8,0.7)
	 .__END

	FR.GuideTitle = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR.GuideTitlePre,"BOTTOMLEFT",0,-1) :SetPoint("TOPRIGHT",FR.GuideTitlePre,"BOTTOMRIGHT",0,-1)
	 :SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(16)
	 :SetFont(STANDARD_TEXT_FONT,14)
	 .__END

	FR.GuideTitleBack = CHAIN(CreateFrame("Frame",nil,FR))
	 :SetPoint("TOPLEFT",FR.GuideTitle,"TOPLEFT",-5,2) :SetPoint("BOTTOMRIGHT",FR.GuideTitle,"BOTTOMRIGHT",5,0)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetFrameLevel(1)
	 .__END


	FR.GuideStatusPre = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
	 :SetPoint("TOPLEFT",FR,"TOPRIGHT",-95,-305) :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-15,-305)
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(13)
	 :SetText("Status:") :SetTextColor(0.8,0.8,0.7)
	 .__END

	FR.GuideStatus = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR.GuideStatusPre,"BOTTOMLEFT",0,-1) :SetPoint("TOPRIGHT",FR.GuideStatusPre,"BOTTOMRIGHT",0,-1)
	 :SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(16)
	 .__END

	FR.GuideStatusBack = CHAIN(CreateFrame("Frame",nil,FR))
	 :SetPoint("TOPLEFT",FR.GuideStatus,"TOPLEFT",-5,2) :SetPoint("BOTTOMRIGHT",FR.GuideStatus,"BOTTOMRIGHT",5,0)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetFrameLevel(1)
	 :SetScript("OnEnter",function(self)
		if not FR.GuideStatus.tip then return end
		GameTooltip:SetOwner(self,"ANCHOR_TOP")
		GameTooltip:ClearLines()
		GameTooltip:SetText(FR.GuideStatus.tip)
		GameTooltip:Show()
	  end)
	 :SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	 .__END


	FR.GuideDataPre = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
	 :SetPoint("TOPLEFT",FR.GuideTitle,"BOTTOMLEFT",0,-5) :SetPoint("TOPRIGHT",FR.GuideTitle,"BOTTOMRIGHT",0,-5)
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(13)
	 :SetText("Guide Details:") :SetTextColor(0.8,0.8,0.7)
	 .__END

	--[[
	FR.GuideData = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("TOPLEFT",FR.GuideDataHeader,"BOTTOMLEFT") :SetPoint("TOPRIGHT",FR.GuideDataHeader,"BOTTOMRIGHT")
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetHeight(150)
	 :SetFont(STANDARD_TEXT_FONT,12)
	 .__END
	--]]

	FR.GuideScroll = CHAIN(CreateFrame("ScrollFrame",FR:GetName().."_GuideScroll",FR,"UIPanelScrollFrameTemplate"))
	 :SetPoint("TOPLEFT",FR.GuideDataPre,"BOTTOMLEFT",0,-3) :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
	 --:EnableMouseWheel()
	 --:SetScript("OnVerticalScroll",function(self,offset) FauxScrollFrame_OnVerticalScroll(self, offset, 10, ZGV_GP_Scroll_Update) end)
	 --:SetScript("OnMousewheel",ZGV_GP_OnMousewheel)
	 .__END
	ZGV.ChainCall(FR.GuideScroll.ScrollBar:CreateTexture("BACKGROUND")) :SetTexture(0,0,0,0.4) :SetPoint("TOPLEFT",FR.GuideScroll.ScrollBar,"TOPLEFT") :SetPoint("BOTTOMRIGHT",FR.GuideScroll.ScrollBar,"BOTTOMRIGHT")
	local n=FR.GuideScroll:GetName()
	_G[n.."ScrollBarThumbTexture"]:SetSize(12,30)
	_G[n.."ScrollBarThumbTexture"]:SetTexture(SKINDIR.."scrollbutton")
	_G[n.."ScrollBarScrollUpButton"]:SetSize(16,16) -- they're 18x16 by default now, the silly things.
	_G[n.."ScrollBarScrollDownButton"]:SetSize(16,16)
	AssignButtonTexture(_G[n.."ScrollBarScrollUpButton"],ZGV.SkinDir.."titlebuttons",7,16)
	AssignButtonTexture(_G[n.."ScrollBarScrollDownButton"],ZGV.SkinDir.."titlebuttons",8,16)

	FR.GuideScroll.Child = CHAIN(CreateFrame("Frame",FR.GuideScroll:GetName().."_Child"))
	 :SetAllPoints()
	 .__END
	FR.GuideScroll:SetScrollChild(FR.GuideScroll.Child)

	FR.GuideData = CHAIN(FR.GuideScroll.Child:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 --:SetPoint("TOPLEFT",FR.GuideDataHeader,"BOTTOMLEFT") :SetPoint("TOPRIGHT",FR.GuideDataHeader,"BOTTOMRIGHT")
	 :SetPoint("TOPLEFT") :SetPoint("TOPRIGHT")
	 :SetJustifyH("LEFT") :SetJustifyV("TOP") :SetWidth(150)
	 :SetFont(STANDARD_TEXT_FONT,12)
	 .__END

	FR.GuideDataBack = CHAIN(CreateFrame("Frame",nil,FR))
	 :SetPoint("TOPLEFT",FR.GuideScroll,"TOPLEFT",-5,5) :SetPoint("BOTTOMRIGHT",FR.GuideScroll,"BOTTOMRIGHT",25,-3)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetFrameLevel(1)
	 .__END

	FR.GuideModel = CHAIN(CreateFrame("PlayerModel",nil,FR,"ZygorGuidesViewerPlayerModel"))
	 :SetPoint("TOPLEFT",FR.GuideScroll,"TOPRIGHT",25,5) :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-12,37)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetAutoRotation(0.4)
	 .__END

	FR.GuideImage = CHAIN(CreateFrame("Frame",nil,FR))
	 :SetPoint("TOPLEFT",FR.GuideScroll,"TOPRIGHT") :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetFrameLevel(1)
	 .__END

	FR.GuideImageTex = CHAIN(FR.GuideImage:CreateTexture("ARTWORK"))
	 :SetAllPoints()
	 .__END

	FR.GuideMacro = CHAIN(CreateFrame("Button","MacroTest",FR,"ActionButtonTemplate SecureActionButtonTemplate"))
	:SetPoint("TOPLEFT",FR,"TOPRIGHT",-55,-305) :SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-10,-350)
	:SetFrameLevel(1)
	.__END
	ZGV.MacroGuideProto.ActionButtonPrepare(FR.GuideMacro,function() GP:Refresh() end)

-- 	FR.GuideMacro.cooldown=CreateFrame("Cooldown",nil,FR.GuideMacro,"CooldownFrameTemplate")

	FR.SearchResetButton = CHAIN(CreateFrame("Button", "ZGV_GP_SearchReset", FR, "ZygorGuidesViewer_Default_Button"))
	 :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-8,-34)	:SetSize(12,12)
	 :SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\border-glow", tile = true, edgeSize=6, tileSize = 6, insets = { left = 6, right = 6, top = 6, bottom = 6 }})  :SetBackdropBorderColor(1,1,1,0)
	 :SetText("X")
	 :SetAttribute("tooltip",L['guidepicker_button_searchreset_desc'])
	 :SetScript("OnClick",function() self:ClearSearch(true) end)
	 :Hide()
	 .__END

	FR.SearchEdit = CHAIN(CreateFrame("EditBox",nil,FR))
	 :SetPoint("RIGHT",FR.SearchResetButton,"LEFT",0,0) :SetSize(70,15)
	 :SetFont(STANDARD_TEXT_FONT,12)
	 :SetScript("OnEnterPressed",function() FR.SearchEdit:ClearFocus() end)
	 :SetScript("OnEscapePressed",function() self:ClearSearch(true) end)
	 :SetScript("OnTextChanged",function(edit,user) if user then self:NavigateTo("SEARCH") end end)
	 :SetAutoFocus(false)
	 .__END

	FR.SearchLabel = CHAIN(FR:CreateFontString(nil,nil,"SystemFont_Shadow_Med1"))
	 :SetPoint("RIGHT",FR.SearchEdit,"LEFT",-10,0)
	 :SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetSize(50,16)
	 :SetText(L['guidepicker_button_searchlabel'])
	 :SetFont(STANDARD_TEXT_FONT,12)
	 .__END

	FR.SearchBack = CHAIN(CreateFrame("Frame",nil,FR))
	 :SetPoint("TOPRIGHT",FR,"TOPRIGHT",-5,-30)	:SetSize(90,20)
	 :SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	 :SetFrameLevel(1)
	 .__END



	FR.ViewInFolderButton = CHAIN(CreateFrame("Button", nil, FR, "ZygorGuidesViewer_Default_Button"))
	 :SetPoint("BOTTOMLEFT",FR,"BOTTOMLEFT",10,10)
	 :SetSize(110,20)
	 :SetText(L['guidepicker_button_viewinfolder'])
	 :SetAttribute("tooltip",L['guidepicker_button_viewinfolder_desc'])
	 :SetScript("OnClick",function(self) GP:NavigateToGuide(GP.selectedguide.title) end)
	 :Disable()
	 .__END

	FR.OKButton = CHAIN(CreateFrame("Button", nil, FR, "ZygorGuidesViewer_Default_Button"))
	 :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-10,10)
	 :SetSize(80,20)
	 :SetText(ACCEPT)
	 :SetAttribute("tooltip",L['guidepicker_button_ok_desc'])
	 :SetScript("OnClick",ZGV_GP_OKButton_OnClick)
	 .__END

	FR.MacroButton = CHAIN(CreateFrame("Button", nil, FR, "ZygorGuidesViewer_Default_Button"))
	 :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-10,10)
	 :SetSize(80,20)
	 :SetText(L['guidepicker_button_macro_add'])
	 :SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
	 :SetScript("OnClick",ZGV_GP_MacroButton_OnClick)
	 .__END
	FR.MacroButton.UpdateDisplay=function(self) ZGV_GP_MacroButton_UpdateDisplay(self) end

	FR.BarMacroButton = CHAIN(CreateFrame("Button", nil, FR, "ZygorGuidesViewer_Default_Button"))
	 :SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-100,10)
	 :SetSize(120,20)
	 :SetText(L['guidepicker_button_macro_bar'])
	 :SetAttribute("tooltip",L['guidepicker_button_macro_bar_desc'])
	 :SetScript("OnClick",ZGV_GP_BarMacroButton_OnClick)
	 .__END

	return FR
end

function GP:Show(path)
	if not FR then
		self:CreateFrame()
		if not FR then return end
	end
	if type(path)=="table" and path.title then
		self:NavigateToGuide(path.title)
	elseif path then
		self:NavigateTo(path)
	else
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
	if not FR:IsVisible() then
		FR:Show()
		FR.showanimgr:Play()
	end
end

function GP:Hide()
	if FR then FR.hideanimgr:Play() end
end

--- MAIN FUNCTION: set self.flatgroup, because that's what gets displayed.
function GP:NavigateTo(path)
	if path=="" then path=nil end

	if not self.Frame then self:CreateFrame() end

	-- Stupid, stupid hack.
	if path and path:find("Gear Guide") then
		if not CharacterFrame:IsShown() then ToggleFrame(CharacterFrame) end
		CharacterFrame_Expand()
		ZGVCharacterGearFinderButton:Click()
		self:Hide()
		return
	end
	self.path = path


	ZGV:Debug("Navigating To: "..tostring(path))

	if path=="RECENT" then
		self.flatgroup = ZGV:GetGuidesHistory()
	elseif path=="SUGGESTED" then
		local sugg = ZGV:FindSuggestedGuides()
		if #sugg==1 and automatically_navigate_to_single_suggestion__OFF then
			return self:NavigateToGuide(sugg[1].title)
		else
			self.flatgroup = sugg
		end
	elseif path=="SEARCH" then
		local search = self.Frame.SearchEdit:GetText()
		if search~="" then
			self.flatgroup = ZGV:FindGuides(search)
			self.Frame.SearchResetButton:Show()
		else
			self.flatgroup = ZGV.registered_groups.groups  -- toplevel
			self.path=nil
			self.Frame.SearchResetButton:Hide()
		end
	elseif path=="DETECTOR" then
		local search = ZGV.CreatureDetector.DetectedGuides
		assert(search,"No guides detected, yet we're in DETECTOR??") -- how the hell you happened here if no target guides are found?
		if #search==1 then -- it's a single guide
			self:Show(search[1])
			return
		else
			self:Show()
		end
		self.flatgroup = search
		self.path = "Corresponding Guides"
		self.Frame.SearchResetButton:Show()
	else
		if path then
			self.group = ZGV:FindGroup(ZGV.registered_groups,path)
		else
			self.group = ZGV.registered_groups
		end

		self.flatgroup = {}
		for gi,g in ipairs(self.group.groups) do
			tinsert(self.flatgroup,g)
		end
		for gi,g in ipairs(self.group.guides) do
			tinsert(self.flatgroup,g)
		end
	end

	if path~="SEARCH" then self:ClearSearch() end

	FR.Scroll.ScrollBar:SetValue(0)

	FR.GuidesButton:SetBackdropBorderColor(1,1,1,((self.path~="RECENT") and (self.path~="SUGGESTED")) and 1 or 0)
	FR.RecentButton:SetBackdropBorderColor(1,1,1,(self.path=="RECENT") and 1 or 0)
	FR.SuggestButton:SetBackdropBorderColor(1,1,1,(self.path=="SUGGESTED") and 1 or 0)

	self:SelectGuide()

	self:Refresh()
end

--- Navigate to specified guide title. If no title is given, navigate to top level.
function GP:NavigateToGuide(guidepath)
	if type(guidepath)=="table" and guidepath.title then guidepath=guidepath.title end  --allow guide objects
	if not guidepath then
		self:NavigateTo()
	else
		local pre,post = guidepath:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
		self:SelectGuide(guidepath)
		self:ScrollIntoView()
	end
end

function GP:NavigateBack()
	if self.path then
		local pre,post = self.path:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
	else
		self:NavigateTo()
	end
end

local function get_icon(path)
	if path:find("Leveling") then return 1,1
	elseif path:find("Event") then return 2,1
	elseif path:find("Dailies") then return 3,1
	elseif path:find("Loremaster") then return 4,1
	elseif path:find("Gold") then return 1,2
	elseif path:find("Profession") then return 2,2
	elseif path:find("Pets") then return 3,2
	elseif path:find("Achievement") then return 4,2
	elseif path:find("Title") then return 1,3
	elseif path:find("Reputation") then return 2,3
	elseif path:find("Macro") then return 3,3
	elseif path:find("Dungeon") then return 4,3
	elseif path:find("Gear") then return 1,4
	else return 4,4
	end
end

local specialpaths = {["SUGGESTED"]=L['guidepicker_suggested'],["RECENT"]=L['guidepicker_recent'],["SEARCH"]=L['guidepicker_searchresults']}
setmetatable(specialpaths,{__index=function(self,ind) return ind end})

function GP:Refresh()
	if self.path then
		local path = ZGV.Menu:SanitizePath(self.path)

		local folders = {strsplit("\\",path)}
		local txt=""
		for i=1,#folders-1,1 do
			txt=txt .. "|TInterface\\CHATFRAME\\ChatFrameExpandArrow:0|t " .. folders[i]
		end
		-- do something with txt

		--FR.Path2 :SetPoint("TOPLEFT",FR.Path1,"TOPLEFT",FR.Path1:GetWidth()+10,0)

		--FR.Path2:SetText(txt)
		FR.Path1:SetText(specialpaths[folders[#folders]])
		FR.pathover.tip = ZGV.Menu:SanitizePath(self.path,true):gsub("\\+"," |TInterface\\CHATFRAME\\ChatFrameExpandArrow:0|t ")

		local x,y = get_icon(folders[1])
		if x then SetTextureBlock(FR.PathIcon,x,y,4,4) FR.PathIcon:Show() else FR.PathIcon:Hide() end
	else
		--FR.Path:SetText("")
		FR.PathIcon:Hide()
		FR.Path1:SetText(L['guidepicker_selectaguide'])
		FR.pathover.tip = nil
	end

	local offset = FauxScrollFrame_GetOffset(FR.Scroll)

	if self.flatgroup then
		local buts,otherbuts

		-- prepare targets
		if self.path then
			buts=FR.LabelsSmall
			otherbuts=FR.LabelsBig
		else
			buts=FR.LabelsBig
			otherbuts=FR.LabelsSmall
		end

		-- fill in data
		for i=1,#buts do
			local g = self.flatgroup[offset+i]

			local but = buts[i]

			if g and buts~=FR.LabelsBig then
				if g.icon then
					local c=g.icon.coords or { 0,1,0,1 }
					but.icon:SetTexture(g.icon.texname)
					but.icon:SetTexCoord(c[1],c[2],c[3],c[4])
				else
					but.icon:SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
				end
			end

			-- groups have names. guides have titles. go figure.
			if g and g.name then
				-- group
				but:SetText(ZGV.Menu:SanitizePath(g.name,true))
				but.target = (self.path and self.path.."\\" or "")..g.name
				but.isguide=nil
				if buts==FR.LabelsBig then
					local x,y = get_icon(g.name)
					if x then but:SetIcon(x,y,4,4) end
				else
					but:SetIcon(1,1,2,2)
					local suggest = ZGV:GetGuideFolderInfo(g)
					if suggest then
						but:SetIcon(1,2,2,2,true)
						but.iconover.anim:Play()
					else
						but:SetIcon(0,0,2,2,true)
					end
					but.complabel:SetText()
					but.complabelover.tip = nil
				end
				--but:GetFontString():SetTextColor(1,0.8,0)
				but:Show()
			elseif g and g.title then
				-- guide
				if self.path=="RECENT" then
					but:SetText(("%s, step %d"):format(g.title_short or "",g.CurrentStepNum or 1))
				else
					but:SetText(g.title_short or "")
				end
				but.target = g.title or ""
				but.isguide=true

				if not g.icon then
					but:SetIcon(2,1,2,2)
				end
				local status = g.GetStatus and g:GetStatus()
				if status=="SUGGESTED" then
					but:SetIcon(1,2,2,2,true)
					but.iconover.anim:Play()
				else
					but:SetIcon(0,0,2,2,true)
				end

				local text,tip = g:GetCompletionText()
				but.complabel:SetText(text)
				but.complabelover.tip = tip
				but:Show()
				--but:GetFontString():SetTextColor(1,1,1)
			else
				but:Hide()
			end
		end

		for i=1,#otherbuts do otherbuts[i]:Hide() end

		-- reposition big labels
		if buts==FR.LabelsBig then
			local yspan=65
			local columnbreak
			for i=1,NUMLABELSBIG do buts[i]:ClearAllPoints() end

			if #self.flatgroup<=LABELSBIG_ONECOLUMN then
				-- one column
				yspan = (#self.flatgroup<=3 and 65 or 190/#self.flatgroup)
			else
				-- two columns
				columnbreak = max(3,ceil(#self.flatgroup/2))
				yspan = min(40,200/columnbreak)
			end

			for i=1,NUMLABELSBIG do
				local but = buts[i]
				if i<=#self.flatgroup then
					if columnbreak then
						but:SetPoint("TOP",FR,"TOP",yspan*3 * (math.floor((i-1)/columnbreak)*2-1),-90-((i-1)%columnbreak)*yspan)
					else
						but:SetPoint("TOP",FR,"TOP",0,-90-(i-1)*yspan)
					end
					but:SetSize(yspan*6,yspan*1.2)

					but.label:ClearAllPoints()
					but.label:SetPoint("LEFT",but.icon,"RIGHT",yspan/10,0)
					for fontsize=0.7,0.3,-0.05 do
						but.label:SetFont(STANDARD_TEXT_FONT,yspan * fontsize)
						local wid = but.label:GetWidth()
						if wid<but:GetWidth()-yspan*1.1 then break end
					end

					but.label:SetPoint("RIGHT")
					but.icon:SetSize(yspan*0.9,yspan*0.9)
					but.icon:SetPoint("CENTER",but,"LEFT",yspan*1.10/2,0)
					but:Show()
				else
					but:Hide()
				end
			end
		end

	else
		for i=1,NUMLABELSBIG do FR.LabelsBig[i]:Hide() end
		for i=1,10 do FR.LabelsSmall[i]:Hide() end
	end

	FR.Scroll:ShowIf(self.path)
	--FR.Scroll:EnableIf(#self.flatgroup>10)
	if self.path then
		FauxScrollFrame_Update(FR.Scroll, #self.flatgroup, 10, 10)
	end

	FR.BackButton:ShowIf(self.path)

	-- if guides need loading, make a guide-load cycle.
	self.guideparsetimer = self.guideparsetimer or ZGV:ScheduleRepeatingTimer(function()
		local all_loaded = ZGV:LoadNeededGuides()
		ZGV:Debug("GP: guide full parse cycle: "..(all_loaded and "" or "not").." all loaded")
		if all_loaded then
			ZGV:CancelTimer(self.guideparsetimer)
			self.guideparsetimer = nil
		else
			self:Refresh()  -- yes, that's a self-call, but it's in a timer, so no recursion there.
		end
	end, 0.1)

	self:RefreshGuide()
end

local GuideStatusColor = {}
GuideStatusColor["SUGGESTED"]	= { r = 1.00, g = 0.80, b = 0.25,	font = GameFontNormalLeftYellow }
GuideStatusColor["VALID"]		= { r = 0.25, g = 0.75, b = 0.25,	font = GameFontNormalLeftLightGreen }
GuideStatusColor["COMPLETE"]	= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey }
--GuideStatusColor["OLD"]		= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey }
GuideStatusColor["INVALID"]	= { r = 0.90, g = 0.00, b = 0.00,	font = GameFontNormalLeftRed }
GuideStatusColor["HEADER"]	= { r = 1.00, g = 1.00, b = 1.00,	font = GameFontHighlightLeft }

function GP:ScrollIntoView()
	if self.selectedguide then
		local selectedpos
		for i,gi in ipairs(self.flatgroup) do
			if gi==self.selectedguide then  selectedpos=i  break  end
		end
		--print(selectedpos,offset)
		if selectedpos and selectedpos>10 then
			return self:UpdateScroll(selectedpos-5)
		end
	end
end

function GP:RefreshGuide()
	if self.selectedguide then
		local g = self.selectedguide
		FR.GuideTitle:SetText(g.title_short)

		local status,msg = self.selectedguide:GetStatus()
		local color = GuideStatusColor[status]
		if status=="COMPLETE" and self.selectedguide.type=="leveling" then status=status.."_lev" end
		FR.GuideStatus:SetText(L['guidepicker_status_'..status])
		FR.GuideStatus:SetTextColor(color.r,color.g,color.b)
		FR.GuideStatus.tip = msg

		local s=""
		if g.startlevel then s = s .. "Required level: ".. ZGV.FormatLevel(g.startlevel) .."\n" end
		if g.endlevel then s = s .. "Ending level: ".. ZGV.FormatLevel(g.endlevel) .."\n" end
		if g.next then s = s .. "Next guide: ".. g.next:match(".+\\(.-)$") .."\n" end

		s = s .. (self.selectedguide.description or "")

		if g.macro then s = s.."\n\n"..L['guidepicker_macro_code'].."\n"..g.macro.body end

		CHAIN(FR.GuideData) :SetText(s) :ClearAllPoints() :SetPoint("TOPLEFT",FR.GuideScroll.Child) :SetPoint("TOPRIGHT",FR.GuideScroll.Child)
		:SetWidth(FR.GuideScroll:GetWidth()) -- I think it's a bug in default UI: doing SetPoint doesn't update StringHeight ~aprotas
		FR.GuideScroll.Child:SetSize(FR.GuideScroll:GetWidth(),FR.GuideData:GetStringHeight())
		FR.GuideScroll:SetVerticalScroll(0)
		FR.GuideScroll:Show()
		if g.type~="macro" then -- TODO make all this a function not to duplicate code?
			FR.OKButton:Enable()
			FR.OKButton:Show()
			FR.GuideTitleBack:SetPoint("BOTTOMRIGHT",FR.GuideTitle,"BOTTOMRIGHT",5,0)
			FR.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-95,-305)
			FR.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-15,-305)
			FR.GuideMacro:Hide()
			FR.MacroButton:Hide()
			FR.BarMacroButton:Hide()
			FR.GuideMacro:ClearMacro()
		else
			FR.OKButton:Disable()
			FR.OKButton:Hide()
			FR.GuideTitleBack:SetPoint("BOTTOMRIGHT",FR.GuideTitle,"BOTTOMRIGHT",-47,0) -- TODO do we need to support LONG titles?
			FR.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-147,-305)
			FR.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-67,-305)

			FR.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)

			FR.GuideMacro:SetMacro(g.macro)
			if not g.macro.updateHandlers[FR] then
				g.macro.updateHandlers[FR]=function()
					FR.MacroButton:UpdateDisplay()
					GP:Refresh()
				end
			end
			FR.GuideMacro:Show()
			FR.MacroButton:UpdateDisplay()
			FR.MacroButton:Show()
			FR.BarMacroButton:Show()
		end

		if g.model or g.image then
			FR.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)
			if g.model then
				FR.GuideModel:Show()
				FR.GuideModel:ClearModel()
				FR.GuideModel:SetModels(g.model)
				FR.GuideModel:SetSlideshow(5)
				FR.GuideImage:Hide()
			elseif g.image then
				FR.GuideImageTex:SetTexture(g.image)
				FR.GuideImage:Show()
				FR.GuideModel:Hide()
			end
		else
			FR.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
			FR.GuideImage:Hide()
			FR.GuideModel:Hide()
		end
	else
		FR.GuideTitle:SetText("")
		FR.GuideStatus:SetText("")
		FR.GuideStatus.tip=nil
		FR.GuideData:SetText("")
		FR.OKButton:Disable()
		FR.GuideScroll:Hide()

		FR.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
		FR.GuideImage:Hide()
		FR.GuideModel:Hide()

		-- In case a macro hid/mangled them
		FR.OKButton:Show()
		FR.GuideMacro:Hide()
		FR.MacroButton:Hide()
		FR.BarMacroButton:Hide()
		FR.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-95,-305)
		FR.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-15,-305)
		FR.GuideTitleBack:SetPoint("BOTTOMRIGHT",FR.GuideTitle,"BOTTOMRIGHT",5,0)
	end

	for i,but in ipairs(FR.LabelsSmall) do
		local gtype
		local guide,status
		if but.isguide then
			guide = ZGV:GetGuideByTitle(but.target)
			status = guide and guide:GetStatus() or "INVALID"
			gtype = GuideStatusColor[status]
		else
			gtype = GuideStatusColor["HEADER"]
		end

		if self.selectedguide and but.target==self.selectedguide.title then
			but.back:Show()
			but.back:SetVertexColor(gtype.r,gtype.g,gtype.b)
			but.label:SetTextColor(1,1,1)
			--but:SetNormalFontObject(GameFontHighlightLeft)
			--but:SetHighlightFontObject(GameFontHighlightLeft)
		else
			but.back:Hide()
			but.label:SetTextColor(gtype.r,gtype.g,gtype.b)
			--but:SetNormalFontObject(gtype.font)
			--but:SetHighlightFontObject(GameFontHighlightLeft)
		end
	end

	FR.ViewInFolderButton:EnableIf(self.path=="SUGGESTED" or self.path=="RECENT" or self.path=="SEARCH")
end

local DOUBLECLICK_TIME = 0.5
local lastclick = 0

function ZGV_GP_Button_OnClick(but,button)
	if button=="LeftButton" then
		if not but.target then return end
		if but.isguide then
			if GetTime()-lastclick<DOUBLECLICK_TIME and GP.selectedguide.title==but.target then
				ZGV_GP_OKButton_OnClick(but)
			else
				lastclick = GetTime()
				GP:SelectGuide(but.target)
			end
		else
			GP:NavigateTo(but.target)
		end
	else
		GP:NavigateBack()
	end
end

function ZGV_GP_MacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if GP.selectedguide and GP.selectedguide.type=="macro" then
			local mg=GP.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			else
				mg:DeleteMacro()
			end
			GP:Refresh()
		end
	end
end

function ZGV_GP_BarMacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if GP.selectedguide and GP.selectedguide.type=="macro" then
			local mg=GP.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			end
			mg:PlaceOnBar()
			GP:Refresh()
		end
	end
end

function ZGV_GP_MacroButton_UpdateDisplay(button)
	if GP.selectedguide and GP.selectedguide.type=="macro" then
		local mg=GP.selectedguide.macro
		local macroabsent=not mg:LocateMacro()
		if mg:LocateMacro() then
			button:SetText(L['guidepicker_button_macro_del'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_del_desc'])
		else
			button:SetText(L['guidepicker_button_macro_add'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
		end
	end
end

function ZGV_GP_OnMousewheel(self,delta)
	local offset = FauxScrollFrame_GetOffset(FR.Scroll)
	GP:UpdateScroll(offset-delta)
end

function GP:UpdateScroll(offset)
	if not offset then offset=FauxScrollFrame_GetOffset(FR.Scroll) end
	if offset>#self.flatgroup-10 then offset=#self.flatgroup-10 end
	if offset<0 then offset=0 end
	ZGV.GP.Frame.Scroll.ScrollBar:SetValue(offset*10)
end

function GP:SelectGuide(path)
	if type(path)=="table" and path.title then
		GP.selectedguide=path
	else
		GP.selectedguide=path and ZGV:GetGuideByTitle(path) or nil
	end
	GP:RefreshGuide()
end

function ZGV_GP_OKButton_OnClick(but)
	if GP.selectedguide and GP.selectedguide.type~="macro" then
		local ret = ZGV:SetGuide(GP.selectedguide.title,GP.path=="RECENT" and GP.selectedguide.CurrentStepNum or 1)
		GP:Hide()
	end -- TODO if macro
end

function GP:ClearSearch(nav)
	FR.SearchEdit:SetText("")
	FR.SearchEdit:ClearFocus()
	FR.SearchResetButton:Hide()
	if nav then
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
end