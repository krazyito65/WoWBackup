local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Pointer = ZGV.Pointer

local arrow = ZGV.Pointer:AddArrowSkin("silversprite","Silver Sprite")

local arrowframeproto = {}

arrow.features={colordist=false}

local sprite_angles_base = {[0]=0,0.5,1.1,2.6,4.5,6.9,9.7,13.0,16.7,20.8,25.3,30.1,35.3,40.7,46.4,52.4,58.7,65.2,71.9,78.8,85.9,93.1,100.5,108.1,115.7,123.5,131.4,139.4,147.4,155.5,163.6,168,173,180}
local sprite_angles={}

DEBUGSPRITE1= sprite_angles_base
DEBUGSPRITE2= sprite_angles
function arrow:CreateFrame()
	if not self.frame then
		self.frame = CreateFrame("FRAME","ZygorGuidesViewerPointerArrow_SilverSprite",ZGV.Pointer.ArrowFrameCtrl,"ZygorGuidesViewerFrame_Arrow_template_silversprite")
		self.frame.style = self.id

		for f,fu in pairs(arrowframeproto) do self.frame[f] = fu end

		self.frame:OnLoad()
	end
	return self.frame
end

local function BetterTexCoord(obj,x,w,y,h)  -- aka  n,w,h
	if not h then  x,w,y,h=(x or 0),w,nil,y  y=math.floor(x/w)+1  x=(x%w)+1  end
	obj:SetTexCoord((x-1)/w,x/w,(y-1)/h,y/h)
end

local function CreateTexWithCoordsNum(obj,tx,x,w,y,h)
	return CreateTextureWithCoords(obj,tx,(x-1)/w,x/w-(w/h)*0.0004,(y-1)/h,y/h-(w/h)*0.0004)
end


------------ color
local ar,ag,ab = 0.60,0.60,0.60
local br,bg,bb = 0.95,0.95,0.95
local cr,cg,cb = 1.00,1.00,1.00

local msin,mcos,mabs,mfloor=math.sin,math.cos,math.abs,math.floor
local rad2deg = 180/math.pi

function arrowframeproto:OnLoad()
	local skindir = ZGV.DIR.."\\Arrows\\SilverSprite"
	self.arrow:SetTexture(true)
	self.arrow:SetTexture(skindir.."\\arrow",false)
	self.arrow.BetterTexCoord = BetterTexCoord
	local w,h,num = 8,24.094,8*24
	local step=360/num
	self.arrow.SetAngle = function(self,angle)
		angle=angle*rad2deg
		local frac_angle = angle%step
		if frac_angle>step*0.5 then frac_angle=frac_angle-step end
		local q=((angle<180) and angle or 360-angle)/180
		frac_angle=frac_angle*(1+q*0.7)
		self.turn.anim:SetRadians(frac_angle/rad2deg)  self.turn:Play()
		--angle=(angle+(step/2))%360  -- shift step/2 forward
		self:BetterTexCoord(math.round(angle/360*num)%num,w,h)
	end
	self.back:SetAlpha(0.8)
	self:Hide()
	self.here:SetTexture(skindir.."\\arrow-here",false)
	self.back:SetTexture(skindir.."\\arrow-back",false)
	self.precise:SetTexture(skindir.."\\arrow-precise",false)
end

function arrowframeproto:OnUpdate (elapsed)
end

function arrowframeproto:ShowArrived()
	self.arrow:Hide()
	self.precise:Hide()

	self.here:Show()
	self.here.zoomy:Play()
	self.back:SetTexCoord(0,0,0,1,1,0,1,1)

	self.arrow.upstairs:Stop()
	self.arrow.downstairs:Stop()
end

local precspan = 0.2

function arrowframeproto:ShowTraveling (elapsed,angle,dist)
	self.here:Hide()
	self.here.zoomy:Stop()

	self.arrow:Show()
	self.precise:Show()
	self.title:Show()

	self.arrow.upstairs:Stop()
	self.arrow.downstairs:Stop()

	local profile=ZGV.db.profile

	local perc,tier

	local spangood,spanperf=0.10,0.02
	--if dist<500 then local mul=1-(dist/500)  mul=mul*mul*mul*mul*mul  spangood,spanperf = spangood+spangood*mul,spanperf+spanperf*mul  end

	perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
	perc,tier = Pointer.CalculateDirectionTiers(perc,1-spangood,1-spangood+0.02,1-spanperf,1)

	local r,g,b = ZGV.gradient3(perc, ar,ag,ab, br,bg,bb, cr,cg,cb, 1)
	self.arrow:SetVertexColor(r,g,b)


	------------ rotation of elements

	self.arrow:SetAngle(angle)

	if perc>0.5 and self.precise.turn then
		-- precision dot
		local precangle = angle
		if precangle>3.141592 then precangle=precangle-6.283185 end
		precangle = precangle * 8  -- precision!
		while precangle>6.283185 do precangle=precangle-6.283185 end
		while precangle<0 do precangle=precangle+6.283185 end

		self.precise:SetAlpha((perc-0.5)*4)
		self.precise.turn.anim:SetRadians(precangle)
		self.precise.turn:Play()
	else
		self.precise:SetAlpha(0)
	end

	--[[
	local msin,mcos,mabs=msin,mcos,mabs

	local sin,cos = msin(angle + 2.356194)*0.85, mcos(angle + 2.356194)*0.85
	self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
	--]]

end

function arrowframeproto:ShowStairs(up)
	self.precise:Hide()
	self.here:Hide()
	self.arrow:Show()
	if up then
		self.arrow.downstairs:Stop()
		self.arrow.upstairs:Play()
	else
		self.arrow.upstairs:Stop()
		self.arrow.downstairs:Play()
	end
end

function arrowframeproto:ShowWaiting(phase)
	self.precise:Show()
	self.here:Hide()
	self.arrow:Hide()
	self.precise:SetAlpha(1)
	self.precise.turn.anim:SetRadians(phase*6.28)
	self.precise.turn:Play()
end

function arrowframeproto:ShowText (title,dist,eta)
	local etatxt = ""
	
	assert(self.waypoint,"Arrow with no waypoint")
	assert(self.waypoint.c,"Waypoint has no continent")
	assert(self.waypoint.m,"Waypoint has no map")

	self.stairs=false

	local disttxt
	if dist=="far" then disttxt = (self.waypoint.c>0 and (select(self.waypoint.c,GetMapContinents()) or "?")..", " or "") .. (GetMapNameByID(self.waypoint.m) or "(map "..self.waypoint.m..")")  eta=nil
	elseif type(dist)=="string" then disttxt = self.badfloortxt  eta=nil
	elseif dist>9999998 then disttxt = (self.waypoint.c>0 and (select(self.waypoint.c,GetMapContinents()) or "?")..", " or "") .. (GetMapNameByID(self.waypoint.m) or "(map "..self.waypoint.m..")")
	else  disttxt = ZGV.FormatDistance(dist)
	end
	

	if eta and eta<7200 and eta>0 then
		local time=GetTime()
		time=time-mfloor(time)
		local etacolor = (eta<10 and time>0.7) and "ffff7700" or "ffffbb00"
		etatxt = ("  |c"..etacolor.."%01d:%02d|r"):format(eta / 60, eta % 60)
	end

	local distcolor
	if type(dist)=="number" then
		if not Pointer.initialdist then Pointer.initialdist=dist end
		if Pointer.initialdist>500 then Pointer.initialdist=500 end
		if Pointer.initialdist<100 then Pointer.initialdist=100 end
		local perc=1-(dist/Pointer.initialdist)
		if perc<0 then perc=0 end
		local r,g,b = ZGV.gradient3(perc, 1.0,0.5,0.4, 1.0,0.9,0.5, 0.7,1.0,0.6, 0.7)
		distcolor = ("|cff%02x%02x%02x"):format(r*255,g*255,b*255)
	else
		distcolor = "|cffffff00"
	end

	self.title:SetText( (title and "|cffffffff"..title.."|r\n" or "") .. (disttxt and distcolor..disttxt.."|r" or "") .. etatxt )
end

function arrowframeproto:ShowWarning()
	UIFrameFlash(self.arrow,0.2,0.2,0.2, true,0,0)
end

function arrowframeproto:OnMouseWheel(delta)
	if IsControlKeyDown() then
		ZGV.db.profile.arrowscale = ZGV.db.profile.arrowscale + delta * 0.2
		if ZGV.db.profile.arrowscale<0.4 then ZGV.db.profile.arrowscale=0.4 end
		self:SetScale(ZGV.db.profile.arrowscale)
	end
end
