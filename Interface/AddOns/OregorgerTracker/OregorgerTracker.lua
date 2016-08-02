local OregorgerTracker,ot = ...;
OregorgerTrackerCore = ot;
local LMC = LibStub("LibMobCoords-1.0");

local tonumber = tonumber;
local tostring = tostring;
local UnitGUID = UnitGUID;
local UnitExists = UnitExists;
local UnitPosition = UnitPosition;
local GetPlayerFacing = GetPlayerFacing;
local PlaySoundFile = PlaySoundFile;
local min = math.min;
local max = math.max;
local cos = math.cos;
local sin = math.sin;
local pairs = pairs;
local ipairs = ipairs;
local tinsert = table.insert;
local wipe = wipe;

local updateDisplays,toggleDisplays,configVars;
local createMinimap,updateMinimap,configMinimap;
local createLight,updateLight,configLight;
local data = {};
ot.data = data;

local profile = {};
ot.profile = profile;
local defaults = {
	minimap = true,
	minimapSize = 320,
	minimapRotate = true,
	minimapRoom = 1,
	minimapPoint = "CENTER",
	minimapX = 0,
	minimapY = -170,
	
	light = true,
	lightSize = 50,
	lightSound = 2,
	lightSoundChannel = false,
	lightInterval = 0.1,
	lightPoint = "CENTER",
	lightX = 0,
	lightY = 35,
	
	color = 1,
	searchInterval = 0.35,
	interval = 0.75,
	decay = 1,
	accuracy = 7.5,
	broadcast = true,
	--hitbox = 13,
};

-- LMC:TrackMob(guid,interval,channel,channelTarget,accuracy,decay,hitbox,minPlayers,maxPlayers)
local tracker = LMC:TrackMob(nil,defaults.interval,"RAID",nil,defaults.accuracy,defaults.decay,13,2,10);
ot.tracker = tracker;

local function GetCreatureID(guid)
	return guid and tonumber(guid:match("^[^%-]+%-%d+%-%d+%-%d+%-%d+%-(%d+)"));
end

local function CheckUnitID(unit,id)
	if unit then
		local guid = UnitGUID(unit);
		if guid and (GetCreatureID(guid) == id) then
			return guid;
		end
	end
end

local function GetUnitX(unit,guid)
	local n = 1;
	while UnitExists(unit..n) do
		local test = UnitGUID(unit..n);
		if test == guid then
			return unit..n;
		end
		n = n + 1;
	end
end

local function bossCoords()
	if data.guid then
		local coords = tracker:GetCoords();
		if coords then
			coords.x = min(coords.x,ot.obj.Room.left);
			coords.x = max(coords.x,ot.obj.Room.right);
			coords.y = min(coords.y,ot.obj.Room.top);
			coords.y = max(coords.y,ot.obj.Room.bottom);
			return coords;
		end
	end
end

local function search(self)
	local coords = bossCoords();
	if coords then
		if data.rolling then -- Path
			data.path,data.overlap = ot.GetPath(coords.x,coords.y,nil,data.lastCrash and data.lastCrash.paths);
			if data.path then
				self:Hide();
				updateDisplays();
			else
				self.clock = self.interval;
				self:Show();
			end
		else -- Crash
			data.crash = ot.GetCrash(coords.x,coords.y,data.lastPath and data.lastPath.crash);
			if data.crash then
				self:Hide();
				updateDisplays();
			else
				self.clock = self.interval;
				self:Show();
			end
		end
	else
		self.clock = self.interval;
		self:Show();
	end
end

local colors = {
	[1] = {
		name = "Normal",
		[1] = {213/255,0/255,0/255,"D50000"}, -- Red
		[2] = {255/255,214/255,0/255,"FFD600"}, -- Yellow
		[3] = {0/255,200/255,83/255,"00C853"}, -- Green
		[4] = {41/255,98/255,255/255,"2962FF"}, -- Blue
	},
	[2] = {
		name = "Protanopia",
		[1] = {255/255,130/255,157/255,"ff829d"}, -- Red
		[2] = {255/255,255/255,0/255,"ffff00"}, -- Yellow
		[3] = {0/255,125/255,0/255,"007d00"}, -- Green
		[4] = {0/255,0/255,255/255,"0000ff"}, -- Blue
	},
	[3] = {
		name = "Deuteranopia",
		[1] = {255/255,51/255,132/255,"ff3384"}, -- Red
		[2] = {255/255,255/255,0/255,"ffff00"}, -- Yellow
		[3] = {0/255,204/255,0/255,"00cc00"}, -- Green
		[4] = {0/255,0/255,255/255,"0000ff"}, -- Blue
	},
	[4] = {
		name = "Tritanopia",
		[1] = {255/255,0/255,255/255,"ff00ff"}, -- Red
		[2] = {255/255,255/255,0/255,"ffff00"}, -- Yellow
		[3] = {0/255,255/255,0/255,"00ff00"}, -- Green
		[4] = {0/255,0/255,255/255,"0000ff"}, -- Blue
	},
	[5] = {
		name = "Black & White",
		--[1] = {0/255,0/255,0/255,"000000"}, -- Red (Black)
		[1] = {25/255,25/255,25/255,"191919"}, -- Red (Black/Grey)
		[2] = {127/255,127/255,127/255,"7f7f7f"}, -- Yellow (Dark Grey)
		[3] = {255/255,255/255,255/255,"ffffff"}, -- Green (White)
		[4] = {204/255,204/255,204/255,"cccccc"}, -- Blue (Light Grey)
	},
};

local function setColor(texture,style)
	local color = colors[profile.color or defaults.color][style];
	texture:SetVertexColor(color[1],color[2],color[3]);
end

-- Events
ot.frame = CreateFrame("Frame","OregorgerTrackerFrame");
ot.frame:Hide();
ot.frame:SetScript("OnEvent",function(self,event,...)
	if event == "ENCOUNTER_START" then
		local encounter = ...;
		if encounter == 1696 then
			wipe(data);
			data.encounter = true;
			data.safe = {};
			data.guid = CheckUnitID("BOSS1",77182);
			self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
			
			toggleDisplays();
			updateDisplays();
		end
	elseif event == "ENCOUNTER_END" then
		local encounter = ...;
		if encounter == 1696 then
			self:Hide();
			tracker:Disable();
			self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
			self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED");
			
			wipe(data);
			ot.config = false;
			toggleDisplays();
		end
	elseif event == "UNIT_SPELLCAST_SUCCEEDED" then
		local unit,_,_,_,spellID = ...;
		if spellID == 165127 then -- Hunger Drive started
			data.rolling = false;
			if data.guid then
				tracker:SetGUID(data.guid);
				tracker:Enable();
			end
			search(self);
			self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
		end
	elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
		local timestamp,subEvent,_,sourceGUID,sourceName,_,_,destGUID,destName,_,_,spellID = ...;
		if (not data.guid) then
			if (GetCreatureID(destGUID) == 77182) then
				data.guid = destGUID;
				tracker:SetGUID(data.guid);
				tracker:Enable();
			elseif (GetCreatureID(sourceGUID) == 77182) then
				data.guid = sourceGUID;
				tracker:SetGUID(data.guid);
				tracker:Enable();
			end
		end
		if sourceGUID == data.guid then
			if subEvent == "SPELL_CAST_SUCCESS" then
				if spellID == 155898 then -- Rolling Fury
					data.rolling = timestamp;
					data.lastCrash = data.crash;
					data.crash = nil;
					--search(self);
					self.clock = 0.2; --profile.rollDelay or defaults.rollDelay;
					self:Show();
				elseif spellID == 155897 then -- Earthshaking Collision
					data.rolling = false;
					data.lastPath = data.path;
					data.path = nil;
					data.lastOverlap = data.overlap;
					data.overlap = nil;
					search(self);
				end
			elseif subEvent == "SPELL_AURA_REMOVED" and spellID == 155819 then -- Hunger Drive ended
				local crash = data.crash or (data.path and data.path.crash) or (data.lastPath and data.lastPath.crash); 
				
				self:Hide();
				tracker:Disable();
				self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
				data.rolling = nil;
				data.path = nil;
				data.lastPath = nil;
				data.overlap = nil;
				data.crash = nil;
				data.lastCrash = nil;
				updateDisplays();
				
				if profile.minimap and crash then
					setColor(crash.texture,4);
					C_Timer.After(6,updateMinimap);
				end
			end
		end
		if subEvent == "SPELL_DAMAGE" and spellID == 155900 then -- Player hit by a roll
			if data.rolling and ((timestamp - data.rolling) >= 0.2) then
				local unit = (UnitExists(destName) and destName) or GetUnitX("RAID",destGUID);
				if unit then
					local y,x = UnitPosition(unit);
					if x and y then
						local path = ot.GetPath(x,y,data.path);
						if path and path ~= data.path then
							--data.rolling = true;
							data.path = path;
							data.overlap = nil;
							self:Hide();
							updateDisplays();
						end
					end
				end
			end
		end
	elseif event == "ADDON_LOADED" then
		local name = ...;
		if name == OregorgerTracker then
			self:UnregisterEvent("ADDON_LOADED");
			self:RegisterEvent("ENCOUNTER_START");
			self:RegisterEvent("ENCOUNTER_END");
			
			if OregorgerTrackerDB then
				profile = OregorgerTrackerDB;
				ot.profile = profile;
			else
				OregorgerTrackerDB = profile;
				for k,v in pairs(defaults) do
					profile[k] = v;
				end
			end
			configVars();
		end
	end
end);
ot.frame:RegisterEvent("ADDON_LOADED");

ot.frame.interval = defaults.searchInterval;
ot.frame:SetScript("OnUpdate",function(self,elapsed)
	self.clock = self.clock - elapsed;
	if self.clock <= 0 then
		search(self);
	end
end);

-- Display Data
updateDisplays = function()
	if data.safe then
		wipe(data.safe);
	else
		data.safe = {};
	end
	
	local junc;
	if data.rolling then
		if data.path then
			data.safe[data.path] = 1;
			data.safe[data.path.crash] = 1;
			if data.lastCrash then
				data.safe[data.lastCrash] = 1;
			end
			if data.overlap then
				data.safe[data.overlap] = 1;
			end
			for i,path in ipairs(data.path.crash.paths) do
				data.safe[path] = 2;
				data.safe[path.crash] = 2;
				if i==2 then
					data.safe[path.overlap] = 2;
				end
			end
		else
			junc = data.lastCrash or (data.lastPath and data.lastPath.crash);
		end
	elseif (data.rolling == false) then
		junc = data.crash or (data.lastPath and data.lastPath.crash);
	end
	
	if junc then
		data.safe[junc] = 1;
		for i,path in ipairs(junc.paths) do
			data.safe[path] = 1;
			data.safe[path.crash] = 1;
			if i==2 then
				data.safe[path.overlap] = 1;
			end
		end
	end
	
	if ot.minimap and ot.minimap:IsShown() then
		updateMinimap();
	end
	if ot.light and ot.light:IsShown() then
		updateLight();
	end
end
ot.updateDisplays = updateDisplays;

toggleDisplays = function()
	local show = data.encounter or ot.config;
	if show and profile.minimap then
		if (not ot.minimap) then
			createMinimap();
		end
		ot.minimap:Show();
	elseif ot.minimap then
		ot.minimap:Hide();
	end
	if show and profile.light then
		if (not ot.light) then
			createLight();
		end
		ot.light:Show();
	elseif ot.light then
		ot.light:Hide();
	end
end
ot.toggleDisplays = toggleDisplays;

configVars = function()
	ot.frame.interval = profile.searchInterval or defaults.searchInterval;
	tracker.accuracy = ((profile.accuracy or defaults.accuracy)*2)^2;
	tracker.channel = profile.broadcast and "RAID";
	tracker.interval = profile.interval or defaults.interval;
	tracker.decay = profile.decay or defaults.decay;
	--tracker.hitbox = profile.hitbox or defaults.hitbox;
	--if tracker.mob then
	--	tracker.mob.hitbox = tracker.hitbox;
	--end
end
ot.configVars = configVars;

-- Minimap Display
createMinimap = function()
	local minimap = CreateFrame("Frame","OregorgerTrackerMinimap",UIParent);
	ot.minimap = minimap;
	minimap:Hide();
	minimap.textures = {};

	--minimap:EnableMouse(true);
	minimap:SetMovable(true);
	minimap:SetDontSavePosition(true)
	minimap:RegisterForDrag("LeftButton");
	minimap:SetScript("OnDragStart", minimap.StartMoving);
	minimap:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing();
		profile.minimapPoint, profile.minimapX, profile.minimapY = select(3, self:GetPoint());
		configMinimap();
	end);
	minimap:SetScript("OnHide", minimap:GetScript("OnDragStop"));

	minimap:SetScript("OnMouseWheel",function(self,z)
		profile.minimapSize = profile.minimapSize + (10*z);
		configMinimap();
	end);

	minimap.room = minimap:CreateTexture(nil,"OVERLAY");
	tinsert(minimap.textures,minimap.room);

	minimap.arrow = minimap:CreateTexture(nil,"OVERLAY");
	minimap.arrow:SetTexture([[Interface\MINIMAP\MinimapArrow]]);
	minimap.arrow:SetDrawLayer("OVERLAY",1);

	for i,path in ipairs(ot.paths) do
		path.texture = minimap:CreateTexture(nil,"ARTWORK");
		path.texture:SetTexture([[Interface\AddOns\OregorgerTracker\Images\path]]..i);
		tinsert(minimap.textures,path.texture);
	end

	for i,crash in ipairs(ot.crashes) do
		crash.texture = minimap:CreateTexture(nil,"ARTWORK");
		crash.texture:SetTexture([[Interface\AddOns\OregorgerTracker\Images\crash]]..i);
		tinsert(minimap.textures,crash.texture);
	end

	minimap.left = 3640;
	minimap.right = 3520;
	minimap.top = 95;
	minimap.bottom = -25;

	minimap.width = minimap.left - minimap.right;
	minimap.height = minimap.top - minimap.bottom;

	--minimap.interval = 0.02;
	--minimap.clock = 0;
	minimap:SetScript("OnUpdate",function(self,elapsed)
		--self.clock = self.clock - elapsed;
		--if self.clock <= 0 then
		local playerY,playerX,playerZ,map = UnitPosition("PLAYER");
		playerX = (self.left - playerX)/self.width;
		playerY = (self.top - playerY)/self.height;
		local direction = GetPlayerFacing();
		
		if profile.minimapRotate then
			local playerY,playerX,playerZ,map = UnitPosition("PLAYER");
			playerX = (self.left - playerX)/self.width;
			playerY = (self.top - playerY)/self.height;
			local direction = GetPlayerFacing();
			local cosd,sind = cos(direction),sin(direction);
			for _,texture in ipairs(self.textures) do
				texture:SetPoint("TOPLEFT",self,"TOPLEFT",(cosd*(playerX))-(sind*(playerY)),(cosd*(playerY))-(sind*(playerX)));
				texture:SetRotation(0-direction,playerX,playerY);
			end
		else
			self.arrow:SetPoint("CENTER",self,"TOPLEFT",playerX*profile.minimapSize,-playerY*profile.minimapSize);
			self.arrow:SetRotation(direction);
		end
			--self.clock = self.interval;
		--end
	end);
	
	configMinimap();

	updateMinimap = function()
		for _,path in ipairs(ot.paths) do
			setColor(path.texture,(data.safe and data.safe[path]) or 3);
		end
		for _,crash in ipairs(ot.crashes) do
			setColor(crash.texture,(data.safe and data.safe[crash]) or 3);
		end
	end
	ot.updateMinimap = updateMinimap;
	
	--minimap:SetScript("OnShow",updateMinimap);
end

configMinimap = function()
	local minimap = ot.minimap;
	if minimap then
		minimap:ClearAllPoints();
		minimap:SetSize(profile.minimapSize,profile.minimapSize);
		minimap:SetPoint(profile.minimapPoint,profile.minimapX,profile.minimapY);
		
		minimap.room:SetTexture([[Interface\AddOns\OregorgerTracker\Images\room]]..(profile.minimapRoom or defaults.minimapRoom));
		minimap.room:SetSize(profile.minimapSize,profile.minimapSize);
		
		for _,path in ipairs(ot.paths) do
			path.texture:ClearAllPoints();
			path.texture:SetTexCoord(0,1,0,1);
			path.texture:SetSize(profile.minimapSize,profile.minimapSize);
		end
		for _,crash in ipairs(ot.crashes) do
			crash.texture:ClearAllPoints();
			crash.texture:SetTexCoord(0,1,0,1);
			crash.texture:SetSize(profile.minimapSize,profile.minimapSize);
		end
		
		minimap.arrow:ClearAllPoints();
		minimap.arrow:SetTexCoord(0,1,0,1);
		minimap.room:ClearAllPoints();
		minimap.room:SetTexCoord(0,1,0,1);
		if profile.minimapRotate then
			--minimap.arrow:SetRotation(0);
			minimap.arrow:SetPoint("CENTER",minimap,"CENTER",0,0);
		else
			--minimap.room:SetRotation(0);
			minimap.room:SetPoint("CENTER",minimap,"CENTER",0,0);
			for _,path in ipairs(ot.paths) do
				--path.texture:SetRotation(0);
				path.texture:SetPoint("CENTER",minimap,"CENTER",0,0);
			end
			for _,crash in ipairs(ot.crashes) do
				--crash.texture:SetRotation(0);
				crash.texture:SetPoint("CENTER",minimap,"CENTER",0,0);
			end
		end
		
		if profile.minimapArrow then
			minimap.arrow:SetSize(profile.minimapArrow,profile.minimapArrow);
		elseif profile.minimapRotate then
			minimap.arrow:SetSize(32,32);
		else
			minimap.arrow:SetSize(45,45);
		end
		-- OnUpdate?
	end
end
ot.configMinimap = configMinimap;

-- Traffic Light Display
createLight = function()
	local light = CreateFrame("Frame","OregorgerTrackerLight",UIParent);
	ot.light = light;
	light:Hide();

	--light:EnableMouse(true);
	light:SetMovable(true);
	light:SetDontSavePosition(true)
	light:RegisterForDrag("LeftButton");
	light:SetScript("OnDragStart", light.StartMoving);
	light:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing();
		profile.lightPoint, profile.lightX, profile.lightY = select(3, self:GetPoint());
		configLight();
	end);
	light:SetScript("OnHide", light:GetScript("OnDragStop"));

	light:SetScript("OnMouseWheel",function(self,z)
		profile.lightSize = profile.lightSize + (10*z);
		configLight();
	end);

	light.texture = light:CreateTexture(nil,"ARTWORK");
	light.texture:SetAllPoints(light);
	light.texture:SetTexture([[Interface\AddOns\OregorgerTracker\Images\light]]);

	--[=[
	light.counter = light:CreateFontString(nil,"OVERLAY");
	light.counter:SetFont([[Fonts\FRIZQT__.TTF]],32,"OUTLINE");
	light.counter:SetTextColor(1,1,1,1);
	light.counter:SetPoint("CENTER",light,"CENTER",1,-1);
	--]=]

	light.interval = defaults.lightInterval;
	light.clock = 0;
	light:SetScript("OnUpdate",function(self,elapsed)
		self.clock = self.clock - elapsed;
		if self.clock <= 0 then
			updateLight();
			--self.clock = self.interval;
		end
	end);
	
	configLight();

	updateLight = function()
		local y,x = UnitPosition("PLAYER");
		local safe = 3;
		if data.safe and x and y then
			for area,value in pairs(data.safe) do
				if ot.InBounds(x,y,area) then
					safe = value;
					break;
				end
			end
		end
		setColor(light.texture,safe);
		
		if profile.lightSound and (safe <= profile.lightSound) and (safe < (light.last or 3)) then
			PlaySoundFile([[Sound\Spells\PVPFlagTaken.ogg]],((not profile.lightSoundChannel) and "Master") or nil);
		end
		light.last = safe;
		--self.counter:SetText
		light.clock = light.interval;
	end
	ot.updateLight = updateLight;
	
	--light:SetScript("OnShow",updateLight);
end

configLight = function()
	local light = ot.light;
	if light then
		light:ClearAllPoints();
		light:SetSize(profile.lightSize,profile.lightSize);
		light:SetPoint(profile.lightPoint,profile.lightX,profile.lightY);
		light.interval = profile.lightInterval or defaults.lightInterval;
	end
end
ot.configLight = configLight;

-- Slash Commands
local function cmdHelp(str,desc)
	if desc then
		str = "/ot "..str.." - "..desc;
	end
	DEFAULT_CHAT_FRAME:AddMessage("[OT]: "..str);
end

SlashCmdList["OREGORGERTRACKER"] = function(str)
	local cmd,arg1,arg2 = str:lower():match("(%S+)%s*(%S*)%s*(%S*)");
	if (not cmd) or (cmd == "") or (cmd == "help") or (cmd == "commands") or (cmd == "options") then
		cmdHelp("OregorgerTracker commands:");
		cmdHelp("lock","Lock/Unlock the display positions");
		cmdHelp("minimap help","Displays the minimap options");
		cmdHelp("light help","Displays the light options");
		cmdHelp("color <number>","Changes the color palette: 1=Normal, 2=Protanopia, 3=Deuteranopia, 4=Tritanopia, 5=Black & White");
		cmdHelp("reset","Resets options to defaults");
	elseif (cmd == "lock") or (cmd == "unlock") or (cmd == "config") or (cmd == "move") then
		ot.config = not ot.config;
		toggleDisplays();
		if ot.minimap then
			ot.minimap:EnableMouse(ot.config);
			ot.minimap:EnableMouseWheel(ot.config);
		end
		if ot.light then
			ot.light:EnableMouse(ot.config);
			ot.light:EnableMouseWheel(ot.config);
		end
		cmdHelp("Displays "..(ot.config and "unlocked" or "locked"));
	elseif (cmd == "minimap") or (cmd == "mm") or (cmd == "map") then
		if (not arg1) or (arg1 == "") or (arg1 == "help") or (arg1 == "commands") or (arg1 == "options") then
			cmdHelp("minimap toggle","Show/Hide the minimap");
			cmdHelp("minimap size <number>","Set the minimap size to <number>. Can also be changed with the mouse scroll-wheel in config mode.");
			cmdHelp("minimap rotate","Toggle the minimap rotation");
			cmdHelp("minimap room <number>","Set the minimap room texture: 1=Simple, 2=Detailed");
		elseif (arg1 == "show") or (arg1 == "enable") or (arg1 == "on") or (arg1 == "toggle" and (not profile.minimap)) then
			profile.minimap = true;
			toggleDisplays();
			cmdHelp("Minimap enabled");
		elseif (arg1 == "hide") or (arg1 == "disable") or (arg1 == "off") or (arg1 == "toggle" and profile.minimap) then
			profile.minimap = false;
			toggleDisplays();
			cmdHelp("Minimap disabled");
		elseif (arg1 == "size") or (arg1 == "resize") or (arg1 == "scale") then
			profile.minimapSize = tonumber(arg2) or defaults.minimapSize;
			configMinimap();
			cmdHelp("Minimap size set to "..profile.minimapSize);
		elseif (arg1 == "rotate") then
			profile.minimapRotate = not profile.minimapRotate;
			configMinimap();
			cmdHelp("Minimap rotation set to "..tostring(profile.minimapRotate));
		elseif (arg1 == "arrow") then
			profile.minimapArrow = tonumber(arg2);
			configMinimap();
			cmdHelp("Minimap arrow size set to "..tostring(profile.minimapArrow));
		elseif (arg1 == "room") then
			profile.minimapRoom = tonumber(arg2) or defaults.minimapRoom;
			configMinimap();
			cmdHelp("Minimap room texture set to "..tostring(profile.minimapRoom));
		end
	elseif (cmd == "light") then
		if (not arg1) or (arg1 == "") or (arg1 == "help") or (arg1 == "commands") or (arg1 == "options") then
			cmdHelp("light toggle","Show/Hide the light");
			cmdHelp("light size <number>","Set the light size to <number>. Can also be changed with the mouse scroll-wheel in config mode.");
			cmdHelp("light sound <number>","Enable warning sound for: 1=Red areas, 2=Red and Yellow areas, Nothing=Disabled");
			cmdHelp("light volume","Sets whether the warning sound is played using the Master or Default volume setting");
		elseif (arg1 == "show") or (arg1 == "enable") or (arg1 == "on") or (arg1 == "toggle" and (not profile.light)) then
			profile.light = true;
			toggleDisplays();
			cmdHelp("Light enabled");
		elseif (arg1 == "hide") or (arg1 == "disable") or (arg1 == "off") or (arg1 == "toggle" and profile.light) then
			profile.light = false;
			toggleDisplays();
			cmdHelp("Light disabled");
		elseif (arg1 == "size") or (arg1 == "resize") or (arg1 == "scale") then
			profile.lightSize = tonumber(arg2) or defaults.lightSize;
			configLight();
			cmdHelp("Light size set to "..profile.lightSize);
		--elseif (arg1 == "counter") or (arg1 == "timer") then
			--
		elseif (arg1 == "sound") or (arg1 == "warning") then
			profile.lightSound = tonumber(arg2);
			cmdHelp("Light sound set to "..tostring(profile.lightSound));
		elseif (arg1 == "channel") or (arg1 == "volume") then
			profile.lightSoundChannel = not profile.lightSoundChannel;
			cmdHelp("Light sound channel set to "..((profile.lightSoundChannel and "Default") or "Master"));
		end
	elseif (cmd == "color") or (cmd == "colour") or (cmd == "colors") or (cmd == "colours") then
		local num = tonumber(arg1);
		profile.color = (colors[num] and num) or defaults.color;
		local color = colors[profile.color];
		updateDisplays();
		cmdHelp("Colors set to "..color.name..": \124cFF"..color[1][4].."Danger".."\124r, \124cFF"..color[2][4].."Caution".."\124r, \124cFF"..color[3][4].."Safe".."\124r, \124cFF"..color[4][4].."End".."\124r.");
	--elseif (cmd == "phase") or (cmd == "phase1") then
		--
	elseif (cmd == "accuracy") then
		profile.accuracy = tonumber(arg1) or defaults.accuracy;
		configVars();
		cmdHelp("Accuracy set to "..profile.accuracy);
	elseif (cmd == "decay") then
		profile.decay = tonumber(arg1) or defaults.decay;
		configVars();
		cmdHelp("Decay set to "..profile.decay);
	elseif (cmd == "interval") then
		profile.interval = tonumber(arg1) or defaults.interval;
		configVars();
		cmdHelp("Interval set to "..profile.interval);
	elseif (cmd == "search") then
		profile.searchInterval = tonumber(arg1) or defaults.searchInterval;
		configVars();
		cmdHelp("Search Interval set to "..profile.searchInterval);
	--elseif (cmd == "hitbox") then
		--profile.hitbox = tonumber(arg1) or defaults.hitbox;
		--configVars();
		--cmdHelp("Hitbox set to "..tracker.hitbox);
	elseif (cmd == "broadcast") then
		profile.broadcast = not profile.broadcast;
		configVars();
		cmdHelp("Broadcast set to "..tostring(profile.broadcast));
	elseif (cmd == "reset") then
		wipe(profile);
		for k,v in pairs(defaults) do
			profile[k] = v;
		end
		configVars();
		configMinimap();
		configLight();
		cmdHelp("Settings have been reset");
	end
end
SLASH_OREGORGERTRACKER1 = "/ot";
SLASH_OREGORGERTRACKER2 = "/oregorgertracker";