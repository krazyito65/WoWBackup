local OregorgerTracker,ot = ...;

-- Boss Starting Coords = 3617.267484062, 53.131813016169
-- Boss Hitbox = 12.997892562743
local margin = 0;

local obj = {
	Room = {
		left = 3635.4001464844,
		right = 3530.9001464844,
		top = 88.700004577637,
		bottom = -21.300001144409,
	},
	TopLeftCorner = {
		left = 3635.4001464844,
		right = 3623.9001464844,
		top = 88.700004577637,
		bottom = 59.600002288818,
	},
	TopRightCorner = {
		left = 3557.8000488281,
		right = 3530.9001464844,
		top = 88.700004577637,
		bottom = 76.099998474121,
	},
	BottomRightCorner = {
		left = 3541.5,
		right = 3530.9001464844,
		top = 8.1999998092651,
		bottom = -21.300001144409,
	},
	BottomLeftCorner = {
		left = 3635.4001464844,
		right = 3606,
		top = -4.4000000953674,
		bottom = -21.300001144409,
	},
	TopBlock = {
		left = 3609.1000976563,
		right = 3572.6000976563,
		top = 76.200004577637,
		bottom = 59.900001525879,
	},
	RightBlock = {
		left = 3557.8000488281,
		right = 3543.1000976563,
		top = 60.799999237061,
		bottom = 24.5,
	},
	BottomBlock = {
		left = 3593.8000488281,
		right = 3557.1000976563,
		top = 9.6999998092651,
		bottom = -6.3000001907349,
	},
	LeftBlock = {
		left = 3624.5,
		right = 3609.1999511719,
		top = 45.600002288818,
		bottom = 8.9000005722046,
	},
	MiddleBlock = {
		left = 3594,
		right = 3572.5,
		top = 45.400001525879,
		bottom = 23.89999961853,
	},
};
ot.obj = obj;

local paths = {
	{ -- Path 1: Outer Top
		{ -- Horizontal
			left = obj.TopBlock.left,
			right = obj.TopRightCorner.left,
			top = obj.Room.top,
			bottom = obj.TopRightCorner.bottom + margin,
			direction = "left",
		},
		{ -- Vertical
			left = obj.TopLeftCorner.right,
			right = obj.TopBlock.left,
			top = obj.Room.top,
			bottom = obj.TopBlock.bottom + margin,
			direction = "down",
		},
	},
	{ -- Path 2: Outer Right
		{ -- Vertical
			left = obj.RightBlock.right - margin,
			right = obj.Room.right,
			top = obj.RightBlock.top,
			bottom = obj.BottomRightCorner.top,
			direction = "up",
		},
		{ -- Horizontal
			left = obj.TopRightCorner.left - margin,
			right = obj.Room.right,
			top = obj.TopRightCorner.bottom,
			bottom = obj.RightBlock.top,
			direction = "left",
		},
	},
	{ -- Path 3: Outer Bottom
		{ -- Horizontal
			left = obj.BottomLeftCorner.right,
			right = obj.BottomBlock.right,
			top = obj.BottomLeftCorner.top - margin,
			bottom = obj.Room.bottom,
			direction = "right",
		},
		{ -- Vertical
			left = obj.BottomBlock.right,
			right = obj.BottomRightCorner.left,
			top = obj.BottomRightCorner.top - margin,
			bottom = obj.Room.bottom,
			direction = "up",
		},
	},
	{ -- Path 4: Outer Left
		{ -- Vertical
			left = obj.Room.left,
			right = obj.TopLeftCorner.right + margin,
			top = obj.TopLeftCorner.bottom,
			bottom = obj.LeftBlock.bottom,
			direction = "down",
		},
		{ -- Horizontal
			left = obj.Room.left,
			right = obj.LeftBlock.right + margin,
			top = obj.LeftBlock.bottom,
			bottom = obj.BottomLeftCorner.top,
			direction = "right",
		},
	},
	{ -- Path 5: Inner Top
		{ -- Horizontal
			left = obj.MiddleBlock.left - margin,
			right = obj.TopBlock.right + margin,
			top = obj.TopBlock.bottom,
			bottom = obj.MiddleBlock.top,
			direction = "right",
		},
	},
	{ -- Path 6: Inner Right
		{ -- Vertical
			left = obj.MiddleBlock.right,
			right = obj.RightBlock.left,
			top = obj.MiddleBlock.top - margin,
			bottom = obj.RightBlock.bottom + margin,
			direction = "down",
		},
	},
	{ -- Path 7: Inner Bottom
		{ -- Horizontal
			left = obj.BottomBlock.left - margin,
			right = obj.MiddleBlock.right + margin,
			top = obj.MiddleBlock.bottom,
			bottom = obj.BottomBlock.top,
			direction = "left",
		},
	},
	{ -- Path 8: Inner Left
		{ -- Vertical
			left = obj.LeftBlock.right,
			right = obj.MiddleBlock.left,
			top = obj.MiddleBlock.top - margin,
			bottom = obj.MiddleBlock.bottom + margin,
			direction = "up",
		},
	},
};
ot.paths = paths;

local crashes = {
	{ -- Crash 1 = End of Path 1
		{
			left = obj.TopLeftCorner.right - margin,
			right = obj.TopBlock.left + margin,
			top = obj.TopBlock.bottom - margin,
			bottom = obj.LeftBlock.top,
		},
	},
	{ -- Crash 2 = End of Path 2
		{
			left = obj.TopBlock.right,
			right = obj.TopRightCorner.left + margin,
			top = obj.TopRightCorner.bottom - margin,
			bottom = obj.RightBlock.top + margin,
		},
	},
	{ -- Crash 3 = End of Path 3
		{
			left = obj.BottomBlock.right - margin,
			right = obj.RightBlock.right + margin,
			top = obj.RightBlock.bottom,
			bottom = obj.BottomRightCorner.top + margin,
		},
	},
	{ -- Crash 4 = End of Path 4
		{
			left = obj.LeftBlock.right - margin,
			right = obj.BottomBlock.left,
			top = obj.LeftBlock.bottom - margin,
			bottom = obj.BottomLeftCorner.top + margin,
		},
	},
	{ -- Crash 5 = End of Path 5
		{
			left = obj.TopBlock.right - margin,
			right = obj.RightBlock.left,
			top = obj.RightBlock.top - margin,
			bottom = obj.MiddleBlock.top + margin,
		},
	},
	{ -- Crash 6 = End of Path 6
		{
			left = obj.MiddleBlock.right - margin,
			right = obj.BottomBlock.right + margin,
			top = obj.RightBlock.bottom - margin,
			bottom = obj.BottomBlock.top,
		},
	},
	{ -- Crash 7 = End of Path 7
		{
			left = obj.LeftBlock.right,
			right = obj.BottomBlock.left + margin,
			top = obj.MiddleBlock.bottom - margin,
			bottom = obj.LeftBlock.bottom + margin,
		},
	},
	{ -- Crash 8 = End of Path 8
		{
			left = obj.TopBlock.left - margin,
			right = obj.MiddleBlock.left + margin,
			top = obj.TopBlock.bottom,
			bottom = obj.MiddleBlock.top + margin,
		},
	},
};
ot.crashes = crashes;

-- Path -> Crash
for i,path in ipairs(paths) do
	path.crash = crashes[i];
end

-- Crash -> Paths
for i,crash in ipairs(crashes) do
	if i < 5 then
		crash.paths = {paths[(i==1 and 4) or (i-1)],paths[i+4]};
	else
		crash.paths = {paths[(i==8 and 5) or (i+1)],paths[i-4]};
	end
end

-- Overlaps
for i,path in ipairs(paths) do
	if i < 5 then
		path.overlap = crashes[(i==4 and 1) or (i+1)];
	else
		path.overlap = crashes[(i==5 and 8) or (i-1)];
	end
end

-- Functions
local function InBounds(x,y,object)
	for _,bounds in ipairs(object) do
		if (x <= bounds.left) and (x >= bounds.right) and (y <= bounds.top) and (y >= bounds.bottom) then
			return true;
		end
	end
end
ot.InBounds = InBounds;

function ot.GetPath(x,y,path,options)
	if path and InBounds(x,y,path) then
		return path;
	end
	
	local list = options or paths;
	for i,path in ipairs(list) do
		if InBounds(x,y,path) then
			return path,(options and i==2 and path.overlap);
		end
		if options and i==2 and InBounds(x,y,path.overlap) then
			return path,(options and i==2 and path.overlap);
		end
	end
end

function ot.GetCrash(x,y,crash)
	if crash and InBounds(x,y,crash) then
		return crash;
	end
	
	for i,crash in ipairs(crashes) do
		if InBounds(x,y,crash) then
			return crash;
		end
	end
end