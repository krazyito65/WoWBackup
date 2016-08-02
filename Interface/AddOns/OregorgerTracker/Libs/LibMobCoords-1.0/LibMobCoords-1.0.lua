-- Author: Aelobin - The Maelstrom (EU)

local MAJOR, MINOR = "LibMobCoords-1.0", 1
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

-- Libs
local LRC = LibStub("LibRangeCheck-2.0");
if not LRC then return end;

-- Vars
local playerName = UnitName("PLAYER");
local playerFullName = playerName.."-"..GetRealmName():gsub("%W","");
local SendAddonMessage = SendAddonMessage;
local UnitExists = UnitExists;
local UnitGUID = UnitGUID;
local GetTime = GetTime;
local UnitPosition = UnitPosition;
local tonumber = tonumber;
local sqrt = math.sqrt;
local floor = math.floor;
local abs = math.abs;
local min = math.min;
local max = math.max;
local pairs = pairs;
local ipairs = ipairs;
local tinsert = table.insert;
local tremove = table.remove;
local tsort = table.sort;

-- Geometry
local function Point(x,y)
	return {
		x = x,
		y = y,
	};
end

local function distance(pointA,pointB)
	return sqrt((pointA.x-pointB.x)^2 + (pointA.y-pointB.y)^2);
end

local function GetIntersections(playerA,playerB)
	local intersections = {};
	local maxOnMax;
	local dist = distance(playerA,playerB);
	for i=1,2 do
		local radiusA = ((i==1) and playerA.max) or ((i==2) and playerA.min);
		if radiusA then
			for j=1,2 do
				local radiusB = ((j==1) and playerB.max) or ((j==2) and playerB.min);
				if radiusB then
					if dist > (radiusA + radiusB) then
						--return -- circles are separate
					elseif dist < abs(radiusA - radiusB) then
						--return -- one circle within the other
					elseif (dist == 0) and (radiusA == radiusB) then
						--return -- indentical circles
					else
						local a = (radiusA^2 - radiusB^2 + dist^2) / (2 * dist);
						local h = sqrt(radiusA^2 - a^2);
						local p2x,p2y = playerA.x + a*(playerB.x - playerA.x)/dist, playerA.y + a*(playerB.y - playerA.y)/dist;
						tinsert(intersections,Point(p2x + h*(playerB.y - playerA.y)/dist, p2y - h*(playerB.x - playerA.x)/dist));
						if a ~= radiusA then
							tinsert(intersections,Point(p2x - h*(playerB.y - playerA.y)/dist, p2y + h*(playerB.x - playerA.x)/dist));
						end
						if (i==1) and (j==1) then
							maxOnMax = true;
						end
					end
				end
			end
		end
	end
	return intersections,maxOnMax;
end

local function ValidPoint(point,player)
	local dist = distance(point,player); --distsq vs rangesq?
	return ((not player.min) or (dist >= player.min)) and ((not player.max) or (dist <= player.max));
end

local function AverageCoords(points)
	local xMin,xMax,yMin,yMax;
	for _,point in ipairs(points) do
		xMin = min(xMin or point.x,point.x);
		xMax = max(xMax or point.x,point.x);
		yMin = min(yMin or point.y,point.y);
		yMax = max(yMax or point.y,point.y);
	end
	if xMin and xMax and yMin and yMax then
		return Point((xMin + xMax)/2, (yMin + yMax)/2), (xMax - xMin)^2 + (yMax - yMin)^2;
	end
end

local function EstimateCoords(playerData,accuracy,maxPlayers)
	local points = {};
	local totalPlayers = #playerData;
	if maxPlayers then
		totalPlayers = min(maxPlayers,totalPlayers);
	end
	local maxOnMax;
	for i=1,totalPlayers do
		local player = playerData[i];
		-- Check old points against this player
		for p=#points,1,-1 do
			if (not ValidPoint(points[p],player)) then
				tremove(points,p);
			end
		end
		
		-- Create intersections with previous players
		for j=1,(i-1) do
			local intersections,maxCheck = GetIntersections(player,playerData[j]);
			maxOnMax = maxOnMax or maxCheck;
			for _,intersection in ipairs(intersections) do
				local invalid;
				-- Check new points against previous players
				for c=1,(i-1) do
					if (c~=j) and (not ValidPoint(intersection,playerData[c])) then
						invalid = true;
						break;
					end
				end
				if (not invalid) then
					tinsert(points,intersection);
				end
			end
		end
		
		--local coords,acc = AverageCoords(points);
		--if accuracy and acc and (acc <= accuracy) then
		--	return coords,acc;
		--end
	end
	
	--if (not accuracy) then
	--	return AverageCoords(points);
	--end
	
	local coords,acc = AverageCoords(points);
	if (not accuracy) or (acc and (acc <= accuracy)) then
		return coords,acc;
	end
end

-- Tracker
local frame = CreateFrame("Frame");
local mobs = {};
local trackers = {};

local units = {
	{"BOSS%d",true,0},
	{"TARGET",false,2},
	{"FOCUS",false,2},
	{"MOUSEOVER",false,2},
	{"RAID%d",true,3},
	{"PARTY%d",true,3},
};

local function checkFunc(unit,id)
	local guid = UnitGUID(unit);
	if guid then
		return guid == id;
	end
end

function lib:GetMobUnit(id)
	for _,unit in ipairs(units) do
		if unit[2] then
			local n = 1;
			local str = unit[1]:format(n);
			while UnitExists(str) do
				if checkFunc(str,id) then
					return str;
				end

				for i=1,unit[3] do
					str = str.."TARGET";
					if checkFunc(str,id) then
						return str;
					end
				end
				
				n = n + 1;
				str = unit[1]:format(n);
			end
		else
			local str = unit[1];
			if checkFunc(str,id) then
				return str;
			end

			for i=1,unit[3] do
				str = str.."TARGET";
				if checkFunc(str,id) then
					return str;
				end
			end
		end
	end
end

local function roundCoord(num)
	return floor(num * 1000 + 0.5) / 1000;
	--return math.floor(num * 100000 + 0.5) / 1000;
end

RegisterAddonMessagePrefix("LibMobCoords")
frame:SetScript("OnEvent",function(self,event,...)
	if event == "CHAT_MSG_ADDON" then
		local pre,msg,chan,sender = ...;
		if pre == "LibMobCoords" and sender ~= playerFullName then
			local guid,map,x,y,min,max = msg:match("([%w%-]+):(%d+):([%d%.%-]+):([%d%.%-]+):([%d%.]*):([%d%.]*)");
			local time = GetTime();
			local mob = mobs[guid];
			if mob then
				mob.players[sender] = {
					map = tonumber(map),
					x = tonumber(x),
					y = tonumber(y),
					min = tonumber(min),
					max = tonumber(max),
					time = time,
				};
				--mob.update = time;
			end
		end
	end
end);
frame:RegisterEvent("CHAT_MSG_ADDON");

frame:SetScript("OnUpdate",function(self,elapsed)
	for _,tracker in ipairs(trackers) do
		if tracker.active then
			tracker.clock = tracker.clock - elapsed;
			if tracker.clock <= 0 then
				tracker:UpdatePlayerData();
			end
		end
	end
end);

local _tracker = {};
function _tracker.__index(tbl,key)
	return _tracker[key];
end

function _tracker.UpdatePlayerData(tracker)
	if (not tracker.mob.unit) or (UnitGUID(tracker.mob.unit) ~= tracker.guid) then
		tracker.mob.unit = lib:GetMobUnit(tracker.guid);
	end
	if not tracker.mob.unit then return end;
	
	local time = GetTime();
	
	local min,max = LRC:GetRange(tracker.mob.unit);
	if min then
		if min == 0 then
			min = nil;
		--elseif min ~= 5 then
		--	min = min + tracker.mob.hitbox;
		end
	end
	if max then
		max = max + tracker.mob.hitbox;
	end
	
	local y,x,z,map = UnitPosition("PLAYER");

	tracker.mob.players[playerFullName] = {
		map = map,
		x = roundCoord(x),
		y = roundCoord(y),
		min = min,
		max = max,
		time = time,
	};
	
	if tracker.channel then
		tracker:BroadcastPlayerData();
	end
	
	tracker.clock = tracker.interval;
	--tracker.mob.updated = time;
end

function _tracker.BroadcastPlayerData(tracker)
	local player = tracker.mob.players[playerFullName];
	if player then
		SendAddonMessage("LibMobCoords",tracker.guid..":"..(player.map or "")..":"..(player.x or "")..":"..(player.y or "")..":"..(player.min or "")..":"..(player.max or ""),tracker.channel,tracker.channelTarget);
	end
end

function lib:TrackMob(guid,interval,channel,channelTarget,accuracy,decay,hitbox,minPlayers,maxPlayers)
	if guid and (not mobs[guid]) then
		mobs[guid] = {
			guid = guid,
			hitbox = hitbox or 0,
			players = {},
		};
	end
	
	local tracker = {
		guid = guid,
		mob = mobs[guid],
		interval = interval or 0.5,
		channel = channel,
		channelTarget = channelTarget,
		accuracy = (accuracy and (accuracy*2)^2) or ((accuracy ~= false) and 100),
		decay = decay or ((decay ~= false) and ((interval and interval*3) or 1.5)),
		hitbox = hitbox or 0,
		minPlayers = minPlayers or ((minPlayers ~= false) and 2),
		maxPlayers = maxPlayers or ((maxPlayers ~= false) and 10),
		active = nil,
	};
	
	setmetatable(tracker,_tracker);
	--tracker:UpdatePlayerData();
	table.insert(trackers,tracker);
	return tracker;
end

function _tracker.SetGUID(tracker,guid)
	local old = tracker.guid;
	
	tracker.guid = guid;
	if not mobs[guid] then
		mobs[guid] = {
			guid = guid,
			players = {},
		};
	end
	mobs[guid].hitbox = tracker.hitbox;
	tracker.mob = mobs[guid];
	tracker.coords = nil;
	--tracker:UpdatePlayerData();
	
	if old then
		for _,other in ipairs(trackers) do
			if other.guid == old then
				return;
			end
		end
		mobs[old] = nil;
	end
end

function _tracker.Enable(tracker)
	tracker.active = true;
	tracker:UpdatePlayerData();
end

function _tracker.Disable(tracker)
	tracker.active = nil;
end

local function sortPlayers(a,b)
	if (a.min and a.max) and not (b.min and b.max) then
		return true;
	elseif not (a.min and a.max) and (b.min and b.max) then
		return false;
	elseif a.max and (not b.max) then
		return true;
	elseif b.max and (not a.max) then
		return false;
	elseif (a.max and b.max) and (a.max ~= b.max) then
		return a.max < b.max;
	elseif (a.min and b.min) and (a.min ~= b.min) then
		return a.min > b.min;
	else
		return a.time > b.time;
	end
end

function _tracker.GetCoords(tracker)
	-- cache?
	local time = GetTime();
	local y,x,z,map = UnitPosition("PLAYER");

	local playerData = {};
	for name,player in pairs(tracker.mob.players) do
		if (not tracker.decay) or ((time - player.time) <= tracker.decay) then
			if (player.min or player.max) and (player.map == map) and ((player.x > 0) or (player.y > 0)) then
				-- player.name = name
				tinsert(playerData,player);
			end
		end
	end
	if tracker.minPlayers and (#playerData < tracker.minPlayers) then
		return
	end
	tsort(playerData,sortPlayers);
	
	tracker.coords = EstimateCoords(playerData,tracker.accuracy,tracker.maxPlayers);
	return tracker.coords;
end