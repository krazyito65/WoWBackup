local ZGV = ZygorGuidesViewer
if not ZGV then return end
if ZGV.DEV then return end

local skin = ZGV:AddSkin("midnight","Midnight (default)")
skin:AddStyle("black","Black (default)")

skin.CreateFrame = function(self)
	if not self.frame then
		self.frame = CreateFrame("FRAME","ZygorGuidesViewerFrame",ZygorGuidesViewerFrameMaster,"ZygorGuidesViewerFrame_template_default")
		self.frame.style = self.id

		self.frame.UpdateSkin = skin.UpdateSkin
		self.frame.UpdateLocking = skin.UpdateLocking
		self.frame.AlignFrame = skin.AlignFrame
	end

	assert(self.frame,"Skin "..skin.name.." cannot create its frame!")

	ZGV.Frame = self.frame

	self.frame:UpdateSkin()

	self.frame:EnableKeyboard(true)

	return self.frame
end

local CHAIN = ZGV.ChainCall

-- set textures in a button that has its normal/pushed/hilite textures named ntx,ptx,htx  - this was more useful some time ago...
local function SetNPHtx(but,n,p,h)
	assert(but,"How am I to set textures in a nil!?")
	but.ntx:SetTexture(n)
	but.ptx:SetTexture(p or n)
	but.htx:SetTexture(h or n)
end

local function BetterTexCoord(obj,x,w,y,h)
	obj:SetTexCoord((x-1)/w,x/w,(y-1)/h,y/h)
end

local function CreateTexWithCoordsNum(obj,tx,x,w,y,h)
	return CreateTextureWithCoords(obj,tx,(x-1)/w,x/w-(w/h)*0.0004,(y-1)/h,y/h-(w/h)*0.0004)
end

local function AssignButtonTexture(obj,tx,num,total)
	CHAIN(obj):SetNormalTexture(CreateTexWithCoordsNum(obj,tx,num,total,1,4))
		:SetPushedTexture(CreateTexWithCoordsNum(obj,tx,num,total,2,4))
		:SetHighlightTexture(CreateTexWithCoordsNum(obj,tx,num,total,3,4))
		:SetDisabledTexture(CreateTexWithCoordsNum(obj,tx,num,total,4,4))
end
ZGV.AssignButtonTexture = AssignButtonTexture


function skin:UpdateSkin()
	SKINDIR = ZGV.SkinDir

	local Frame = self

	self.Border:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=SKINDIR.."border",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }})
	self.Border:SetBackdropColor(0,0,0,0.50)
	self.Border:SetBackdropBorderColor(0,0,0,1)

	local count=16
	AssignButtonTexture(ZygorGuidesViewerFrame_CloseButton,SKINDIR.."titlebuttons",6,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_LockButton,SKINDIR.."titlebuttons",4,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_HelpButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_SettingsButton,SKINDIR.."titlebuttons",5,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Guides_PrevButton,SKINDIR.."titlebuttons",9,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Guides_NextButton,SKINDIR.."titlebuttons",10,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Guides_MiniButton,SKINDIR.."titlebuttons",2,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Guides_GuideButton,SKINDIR.."titlebuttons",11,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Guides_QuestCleanupButton,SKINDIR.."titlebuttons",12,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_ScrollScrollBarScrollUpButton,SKINDIR.."titlebuttons",7,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_ScrollScrollBarScrollDownButton,SKINDIR.."titlebuttons",8,count)

	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterAllButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterDropButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterOreButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterSkinButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterHerbButton,SKINDIR.."titlebuttons",1,count)
	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_FilterBuyButton,SKINDIR.."titlebuttons",1,count)

	AssignButtonTexture(ZygorGuidesViewerFrame_Border_Gold_RangeButton,SKINDIR.."titlebuttons",1,count)

	ZygorGuidesViewerFrame_Border_Guides_GuideButton.blink = CHAIN(ZygorGuidesViewerFrame_Border_Guides_GuideButton:GetHighlightTexture():CreateAnimationGroup()) :SetLooping("BOUNCE") .__END
	local a = CHAIN(ZygorGuidesViewerFrame_Border_Guides_GuideButton.blink:CreateAnimation("Alpha")) :SetChange(1) :SetDuration(0.2) :SetScript("OnPlay",function(self) CHAIN(self:GetRegionParent()):SetAlpha(0):Show() end) .__END

	-- deco
	ZygorGuidesViewerFrame_Border_Gold.FilterBack:SetTexture(SKINDIR.."filterback")
	ZygorGuidesViewerFrame_Border_Gold.RangeBack:SetTexture(SKINDIR.."rangeback")

	if not ZygorGuidesViewerFrame_Border_Guides.GuideBack then
		ZygorGuidesViewerFrame_Border_Guides.GuideBack = CreateFrame("FRAME","ZygorGuidesViewerFrame_Border_Guides_GuideBack",ZygorGuidesViewerFrame_Border_Guides)
	end
	CHAIN(ZygorGuidesViewerFrame_Border_Guides.GuideBack)
		:SetBackdrop({bgFile = ZGV.DIR.."\\Skins\\white", edgeFile=SKINDIR.."roundcorners", tile = true, edgeSize=10, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }})
		:SetBackdropColor(0,0,0,0.5)
		:SetBackdropBorderColor(0,0,0,0.5)
		:ClearAllPoints()
		:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Border_Guides,"TOPLEFT",70,0)
		:SetPoint("BOTTOMRIGHT",ZygorGuidesViewerFrame_Border_Guides,"BOTTOMRIGHT",-52,0)
		:SetFrameLevel(1)
		:Show()

	if not ZygorGuidesViewerFrame_Border_Guides.StepnumBack then
		ZygorGuidesViewerFrame_Border_Guides.StepnumBack = CreateFrame("FRAME","ZygorGuidesViewerFrame_Border_Guides_StepnumBack",ZygorGuidesViewerFrame_Border_Guides)
	end
	CHAIN(ZygorGuidesViewerFrame_Border_Guides.StepnumBack)
		:SetBackdrop({bgFile = ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(0,0,0,0.5)
		:ClearAllPoints()
		:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Border_Guides,"TOPLEFT",20,0)
		:SetPoint("BOTTOMRIGHT",ZygorGuidesViewerFrame_Border_Guides,"TOPLEFT",50,-20)
		:SetFrameLevel(1)
		:Show()

	if not ZygorGuidesViewerFrame_Border.TabBack then
		ZygorGuidesViewerFrame_Border.TabBack = CreateFrame("FRAME","ZygorGuidesViewerFrame_Border_TabBack",ZygorGuidesViewerFrame_Border)
	end
	CHAIN(ZygorGuidesViewerFrame_Border.TabBack)
		:SetBackdrop({bgFile = ZGV.DIR.."\\Skins\\white"})
		:SetFrameLevel(1)
		.__END :GetRegions():SetTexture(0,0,0,0.5)

	ZygorGuidesViewerFrame_ScrollScrollBarScrollUpButton:SetSize(16,16) -- they're 18x16 by default now, the silly things.
	ZygorGuidesViewerFrame_ScrollScrollBarScrollDownButton:SetSize(16,16)


	SetNPHtx(ZygorGuidesViewerMapIcon,ZGV.DIR.."\\Skins\\zglogo")
	ZygorGuidesViewerMapIcon.back:SetTexture(ZGV.DIR.."\\Skins\\zglogo-back")
	SetNPHtx(ZygorDetectorButton,ZGV.DIR.."\\Skins\\guideicons-big")
	ZygorDetectorButton.ntx:SetTexCoord(2/4,3/4,1/4,2/4)
	ZygorDetectorButton.ptx:SetTexCoord(2/4,3/4,1/4,2/4) -- TODO different textures for this
	ZygorDetectorButton.htx:SetTexCoord(2/4,3/4,1/4,2/4)
	ZygorDetectorButton.back:SetTexture(ZGV.DIR.."\\Skins\\zglogo-back")


	--SetNPHtx(ZygorGuidesViewerFrame_Border_Guides_GuideButton,SKINDIR.."\\leavesofsteel_dropdown_up",SKINDIR.."\\leavesofsteel_dropdown_down",SKINDIR.."\\leavesofsteel_dropdown_hi")

	--ZygorGuidesViewerFrame_Border_Top:SetTexture(SKINDIR.."\\leavesofsteel_top")

	ZygorGuidesViewerFrame_Border_Guides_SectionTitle:SetTextColor(1,1,1,1)

	ZygorGuidesViewerFrame_ScrollScrollBarThumbTexture:SetTexture(SKINDIR.."scrollbutton")
	--ZygorGuidesViewerFrame_ScrollScrollBarTrackerTexture:SetTexture(SKINDIR.."\\leavesofsteel")

	ZGV:UpdateLocking()
	ZGV:AlignFrame()
end

function skin:UpdateLocking()
	-- remove mouse activity in lock mode
	local locked = ZGV.db.profile["windowlocked"]
	--self:Debug("lock mode: "..tostring(locked))

	--ZygorGuidesViewerFrame_Border_TitleBar:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottom:EnableMouse(not locked)

	ZygorGuidesViewerFrame_Scroll:EnableMouseWheel(not locked)

	--[=[
	if ZGV.stepframes then
		for s,st in ipairs(ZGV.stepframes) do
			st:EnableMouse(not locked)
		--[[
			for l,ln in ipairs(st.lines) do
				ln.clicker:EnableMouse(not locked)
			end
		]]
		end
	end
	--]=]

	-- lock button
	local lockbut = ZygorGuidesViewerFrame_LockButton
	if ZGV.db.profile["windowlocked"] then
		AssignButtonTexture(ZygorGuidesViewerFrame_LockButton,ZGV.SkinDir.."titlebuttons",4,16)
	else
		AssignButtonTexture(ZygorGuidesViewerFrame_LockButton,ZGV.SkinDir.."titlebuttons",3,16)
	end
end

function skin:AlignFrame()
	--self:Debug("aligning frame")
	--print("align")
	local frame=self
	local framemaster = self:GetParent()

	--[[
	if not frame.aligned then return end
	--if ZGV.stepframes[1].slideup:IsPlaying() then self.delayedalign=true return end

	local scale = frame:GetScale()

	local left,top,bottom,right = frame:GetLeft(),frame:GetTop(),frame:GetBottom(),frame:GetRight()
	--self:Debug(table.concat({math.floor(left),math.floor(right),math.floor(top),math.floor(bottom)},","))
	local width = frame:GetWidth()

	self:Debug(("%.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	-- regain 100% scale
	left=left*scale  right=right*scale  bottom=bottom*scale  top=top*scale  width=width*scale

	self:Debug(("Scaled: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(left,top,bottom,right))

	--]]
	local scale = ZGV.db.profile.framescale

	local width = frame:GetWidth()
	local height = frame:GetHeight()

	-- enter local scale
	--left=left/scale  right=right/scale  bottom=bottom/scale  top=top/scale  width=width/scale

	--self:Debug(("Now %.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	--self.temp_scansize=true

	--[[
	if not self.temp_aligncounter then self.temp_aligncounter=0 end
	self.temp_aligncounter=self.temp_aligncounter+1
	if self.temp_aligncounter==1 then a=1/nil end
	--]]

	frame:SetAlpha(ZGV.db.profile.opacitymain)

	local upsideup = not ZGV.db.profile.resizeup

	local UP_TOPLEFT = upsideup and "TOPLEFT" or "BOTTOMLEFT"
	local UP_BOTTOMLEFT = upsideup and "BOTTOMLEFT" or "TOPLEFT"
	local UP_BOTTOM = upsideup and "BOTTOM" or "TOP"
	local UP_TOPRIGHT = upsideup and "TOPRIGHT" or "BOTTOMRIGHT"
	local UP_BOTTOMRIGHT = upsideup and "BOTTOMRIGHT" or "TOPRIGHT"
	local UP = upsideup and 1 or -1

	local UPcoords = function(x1,x2,y1,y2)
		if upsideup then
			return x1,x2,y1,y2
		else
			return x1,x2,y2,y1
		end
	end

	local minimized = ZGV.db.profile.hideborder and ZGV.borderfadedout

	local tabbar_height = 2
	if #ZGV.registeredmapspotsets>0 then
		tabbar_height = 20
	end

	if upsideup then
		framemaster:SetClampRectInsets(0,(width-40)*scale,(-45-tabbar_height)*scale,(-height+55)*scale)
	else
		framemaster:SetClampRectInsets(0,(width-40)*scale,-height*scale,(40+tabbar_height)*scale)
	end


	--[[
	ZygorGuidesViewerFrame_Border:SetBackdrop({
		--bgFile=ZGV.DIR.."\\Skins\\leavesofsteel_bgr",  -- 3.3.3 BLIZZARD TEXTURE FAIL
		bgFile = "Interface/Tooltips/UI-Tooltip-Background", --instead
		edgeFile = ZGV.DIR.."\\Skins\\default\\midnight\\border",
		edgeSize = 20,
		tileSize=128,
		tile=true,
		insets={top=upsideup and 20 or 0,right=0,left=0,bottom=upsideup and 0 or 0}
	})

	-- fix for evil background... wtf.

	ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)
	--]]

	CHAIN(frame.Border.TitleBar)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border,UP_TOPLEFT,0,0)
		:SetPoint(UP_TOPRIGHT,frame.Border,UP_TOPRIGHT,0,0)

	--ZygorGuidesViewerFrame_HelpButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPLEFT,8,-13*UP)
	--ZygorGuidesViewerFrame_SettingsButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_TitleBar,UP_TOPLEFT,40,-15*UP)

	CHAIN(frame.Border.Tab1)
		:ClearAllPoints()
		:SetPoint("LEFT",frame.Border.TitleBar,UP_BOTTOMLEFT,5,-10*UP)

	CHAIN(frame.Border.Guides)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border.TitleBar,UP_BOTTOMLEFT,0,-tabbar_height*UP)
		:SetPoint("RIGHT",frame.Border.TitleBar,"RIGHT",0,0)

	CHAIN(frame.Border.Gold)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border.TitleBar,UP_BOTTOMLEFT,0,-tabbar_height*UP)
		:SetPoint("RIGHT",frame.Border.TitleBar,"RIGHT",0,0)


	--ntx:SetTexCoord(731/1024,850/1024,76/512,145/512)
	--ptx:SetTexCoord(731/1024,850/1024,211/512,280/512)
	--htx:SetTexCoord(731/1024,850/1024,346/512,415/512)
	frame.Border.Guides.GuideButton.upsideup = upsideup

	if minimized then
		ZygorGuidesViewerFrame_Border:Hide()
	else
		if ZGV.db.profile.displaymode=="guide" then
			ZygorGuidesViewerFrame_Border_Guides:Show()
			ZygorGuidesViewerFrame_Border_Gold:Hide()
		elseif ZGV.db.profile.displaymode=="gold" then
			ZygorGuidesViewerFrame_Border_Gold:Show()
			ZygorGuidesViewerFrame_Border_Guides:Hide()
		end
		ZygorGuidesViewerFrame_Border:Show()
	end


	ZygorGuidesViewerFrame_Border.TabBack:ClearAllPoints()
	ZygorGuidesViewerFrame_Border.TabBack:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border,UP_TOPLEFT,2,-27*UP)
	ZygorGuidesViewerFrame_Border.TabBack:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,-2,(-tabbar_height-27)*UP)


	-- first line according to up/down orientation, the rest follows
	CHAIN(ZygorGuidesViewerFrame_Scroll)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border,UP_TOPLEFT,10,(-tabbar_height-55)*UP)
		:SetPoint(UP_BOTTOMRIGHT,frame.Border,UP_BOTTOMRIGHT,-10,10*UP)

	-- resizers
	CHAIN(ZygorGuidesViewerFrame_ResizerBottom) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,10,0) :SetPoint(UP_TOPRIGHT,frame,UP_BOTTOMRIGHT,-10,10*UP)
	CHAIN(ZygorGuidesViewerFrame_ResizerBottomLeft) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,0,0)
	CHAIN(ZygorGuidesViewerFrame_ResizerBottomRight) :ClearAllPoints() :SetPoint(UP_BOTTOMRIGHT,0,0)

	--local back=ZygorGuidesViewerFrame_Border:GetRegions()

	-- textures



	-- flash stuff... this is a royal PITA.
	CHAIN(ZygorGuidesViewerFrame_Border_Flash_Top) :ClearAllPoints()
		:SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMLEFT,10,-8*UP)
		:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMRIGHT,0,-8*UP)
		:SetHeight(80)

	local tx = ZygorGuidesViewerFrame_Border_Flash_Top:GetTexture()
	CHAIN(ZygorGuidesViewerFrame_Border_Flash_Top) :SetTexture(1) :SetTexture(tx,true) :SetTexCoord(UPcoords(0,1,0,1))

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_TopLeft) :SetSize(125,139) :ClearAllPoints() :SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_TopLeft,UP_BOTTOMRIGHT,7,3*UP) :SetTexCoord(UPcoords(62/1024,311/1024,23/512,300/512))

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_TopRight) :SetSize(130,90) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_TopRight,UP_BOTTOMLEFT,-13,51*UP) :SetTexCoord(UPcoords(505/1024,760/1024,28/512,200/512))

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_BottomLeft) :SetSize(64,64) :ClearAllPoints() :SetPoint(UP_TOPRIGHT,ZygorGuidesViewerFrame_Border_BottomLeft,UP_TOPRIGHT,20,20*UP) :SetTexCoord(UPcoords(121/1024,244/1024,345/512,468/512))

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_BottomRight) :SetSize(64,64) :ClearAllPoints() :SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border_BottomRight,UP_TOPLEFT,-20,20*UP) :SetTexCoord(UPcoords(244/1024,121/1024,345/512,468/512))

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_Left) :ClearAllPoints() :SetPoint(UP_TOPLEFT,-17,-85*UP) :SetPoint(UP_BOTTOMRIGHT,frame,UP_BOTTOMLEFT,9,10*UP)

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_Right) :ClearAllPoints() :SetPoint(UP_TOPLEFT,frame,UP_TOPRIGHT,-10,-35*UP) :SetPoint(UP_BOTTOMRIGHT,frame,UP_BOTTOMRIGHT,16,10*UP) :SetTexCoord(1,0, 1,1, 0,0, 0,1)

	CHAIN(ZygorGuidesViewerFrame_Border_Flash_Bottom) :ClearAllPoints() :SetPoint(UP_TOPLEFT,frame,UP_BOTTOMLEFT,13,9*UP) :SetPoint(UP_BOTTOMRIGHT,frame,UP_BOTTOMRIGHT,-13,-15*UP)
	--	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(UPcoords(1,0,0,0,1,1,0,1))
	if upsideup then
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(1,0,0,0,1,1,0,1)
	else
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(0,0,1,0,0,1,1,1)
	end
end