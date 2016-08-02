local ZGV=_G['ZygorGuidesViewer']
if not ZGV then return end

function TableKeys (tab)
	local t={},k,v
	for k,v in pairs(tab) do table.insert(t,k) end
	return t
end

table.zygor_join = function (tab1,tab2)
	for k,v in pairs(tab2) do tab1[k]=v end
end

function MOVE(frame)
	if not frame then
		frame = GetMouseFocus()
		print("Moving: "..(frame:GetName() or tostring(frame)))
	end
	if frame.origonupdate then
		frame:StopMovingOrSizing()
		frame:SetScript("OnUpdate",frame.origonupdate)
		frame.origonupdate = nil
	else
		frame:SetMovable(1)
		frame:StartMoving()
		frame.origonupdate = frame:GetScript("OnUpdate")
		frame:SetScript("OnUpdate",function(self,...) if self.origonupdate then self.origonupdate(self,...) end print(self:GetPoint(1)) end)
	end
end

function RotatePair(x,y,ox,oy,a,asp)
	y=y/asp
	oy=oy/asp
	return ox + (x-ox)*math.cos(a) - (y-oy)*math.sin(a),
	      (oy + (y-oy)*math.cos(a) + (x-ox)*math.sin(a))*asp
end

function RotateTex(self, angle)
	local s,c
	s = sin(angle-225)
	c = cos(angle-225)
	self:SetTexCoord(0.5-s*0.7, 0.5+c*0.7,
			 0.5+c*0.7, 0.5+s*0.7,
			 0.5-c*0.7, 0.5-s*0.7,
			 0.5+s*0.7, 0.5-c*0.7)
end

function AnimRotOnUpdate(self,step)
	if not self:GetParent():GetParent().angle then self:GetParent():GetParent().angle=0 end
	self.step=step
	RotateTex(self:GetParent():GetParent(),self:GetParent():GetParent().angle+self:GetSmoothProgress()*self.step)
end

function AnimRotOnUpdate2(self)
	local tex = self.tex
	if not tex.angle then tex.angle=0 end
	tex.curangle = tex.angle+self:GetSmoothProgress()*(tex.targetangle-tex.angle)
	RotateTex(tex,tex.curangle)
end

function CreateTextureWithCoords(parent,texture,l,r,u,d,blend)
	local tex = parent:CreateTexture(nil)
	tex:SetTexture(texture)
	tex:SetTexCoord(l,r,u,d)
	tex:SetAllPoints()
	if blend then tex:SetBlendMode(blend) end
	return tex
end

-- Ported from Skins.lua
-- set textures in a button that has its normal/pushed/hilite textures named ntx,ptx,htx  - this was more useful some time ago...
function SetNPHtx(but,n,p,h)
	assert(but,"How am I to set textures in a nil!?")
	but.ntx:SetTexture(n)
	but.ptx:SetTexture(p or n)
	but.htx:SetTexture(h or n)
end

function BetterTexCoord(obj,x,w,y,h)
	obj:SetTexCoord((x-1)/w,x/w,(y-1)/h,y/h)
end

function CreateTexWithCoordsNum(obj,tx,x,w,y,h)
	return CreateTextureWithCoords(obj,tx,(x-1)/w,x/w-(w/h)*0.0004,(y-1)/h,y/h-(w/h)*0.0004)
end

function AssignButtonTexture(obj,tx,num,total)
	ZGV.ChainCall(obj):SetNormalTexture(CreateTexWithCoordsNum(obj,tx,num,total,1,4))
		:SetPushedTexture(CreateTexWithCoordsNum(obj,tx,num,total,2,4))
		:SetHighlightTexture(CreateTexWithCoordsNum(obj,tx,num,total,3,4))
		:SetDisabledTexture(CreateTexWithCoordsNum(obj,tx,num,total,4,4))
end
ZGV.AssignButtonTexture = AssignButtonTexture

-- Blizzard UIDropDownMenu has a nasty bug: it sets all buttons' initial FrameLevel to 2,
-- which causes problems when more buttons are created.

--[[
function FixDropDownMenuFrameLevelBug()
	for g=1,4 do
		local list = _G['DropDownList'..g]
		if list and not list.hookedfix then
			list:HookScript("OnShow",FixDropDownMenuFrameLevelBug_List_OnShow)
			list.hookedfix=true
		end
	end
end

function FixDropDownMenuFrameLevelBug_List_OnShow(self)
	local lev = self:GetFrameLevel()
	local id = self:GetID()
	for i=1,50 do
		local button = _G['DropDownList'..id..'Button'..i]
		if button then 
			print('DropDownList'..id..'Button'..i)
			button:SetFrameLevel(lev+2)
		end
	end
end
--]]

function BigFixDropDownMenuFrameLevelBug()
	for g=1,4 do
		local list = _G['DropDownList'..g]
		if list then
			local lev = list:GetFrameLevel()
			for i=1,50 do
				local button = _G['DropDownList'..g..'Button'..i]
				if button and not button.hookedfix then 
					button:SetFrameLevel(lev+2)
					button.hookedfix=true
				end
			end
		end
	end
end
hooksecurefunc("ToggleDropDownMenu",BigFixDropDownMenuFrameLevelBug) -- should this become slow, make it fire once and hope for the best...


-- This, is, evil. But allows for one-liner creation of UI widgets.
-- Usage:  local obj = CHAIN(CreateFrame(...)) :SetPoint(...) :SetSize(...) .__END
function ZGV.ChainCall(obj)  local T={}  setmetatable(T,{__index=function(self,fun)  if fun=="__END" then return obj end  return function(self,...) assert(obj[fun],fun.." missing in object") obj[fun](obj,...) return self end end})  return T  end

-- Theoretically shouldn't EVER do this. But what the heck.
local function ShowIf(self,b) if b then self:Show() else self:Hide() end end
local function EnableIf(self,b) if b then self:Enable() else self:Disable() end end

local framemeta = getmetatable(MinimapCluster) -- frame
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf

local framemeta = getmetatable(ChannelListScrollFrame) -- scrollframe
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf

local framemeta = getmetatable(ConsolidatedBuffs) -- button
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf


function ZGV.GetTargetId()
	return tonumber((UnitGUID("target") or ""):sub(7,10),16)
end

function ZGV:GetPlayerPreciseLevel()
	if self.db.char.fakelevel and self.db.char.fakelevel>0 then
		return self.db.char.fakelevel
	else
		return UnitLevel("player") + UnitXP("player")/max(UnitXPMax("player"),1)
	end
end

function ZGV:IsPlayerInCombat()
	return self.db.profile.fakecombat or UnitAffectingCombat("player")
end

function ZGV.FormatLevel(l)
	local int = math.floor(l)
	local frac = l-int
	frac=math.round(frac*20)
	if frac>0 then
		return ("%d |cffbbbbbb(+%d bars)|r"):format(int,frac)
		--return ("%d |cffbbbbbb+%d|r|T"..ZGV.DIR.."\\Skins\\levelbar:8:16|t"):format(int,frac)
	else
		return tostring(int)
	end
end

-- I probably shouldn't be doing this. But being naughty feels so gooood.
function string:nformat(...)
	local args={...}
	local t = {}
	local s = self:gsub("{(%d-)}",function(cap) table.insert(t,args[tonumber(cap)]) return "" end)
	return s:format(unpack(t))
end

-- MORE EVIL.
function GameTooltip:ZGV_ShowManyLines(lines)
	if type(lines)=="string" then
		self:SetText(lines)
	elseif type(lines)=="table" then
		self:SetText(lines[1])
		for i=2,#lines do self:AddLine(lines[i]) end
	end
	self:Show()
end

-- HAR HAR we can into hexaccurate colors não
-- at least we're as precise as WoW lua allows us to
function HTMLColor(code)
	assert(code:match("#[0-9A-Fa-f]+$") and (#code==7 or #code==9),"Bogus code given: \""..code.."\")")
	local r,g,b,a=tonumber("0x"..code:sub(2,3))/0xff,
				  tonumber("0x"..code:sub(4,5))/0xff,
				  tonumber("0x"..code:sub(6,7))/0xff,
				  #code==9 and tonumber("0x"..code:sub(8,9))/0xff
	return r,g,b,a
end
