------------------------------------------------
--                 CT_Library                 --
--                                            --
-- A shared library for all CTMod addons to   --
-- simplify simple, yet time consuming tasks  --
-- Please do not modify or otherwise          --
-- redistribute this without the consent of   --
-- the CTMod Team. Thank you.                 --
------------------------------------------------

-----------------------------------------------
-- Initialization

local LIBRARY_VERSION = 6.02002;
local LIBRARY_NAME = "CT_Library";

local _G = getfenv(0);
local lib = _G[LIBRARY_NAME];

-- Abort if we have this version installed already
if ( lib and lib.version >= LIBRARY_VERSION ) then
	return;
end

local modules, movables, frame, eventTable;
local timerRepeatedTimes, timerRepeatedFuncs, timerRepeatedStarts, timerTimes, timerFuncs;
local numSlashCmds, localizations, tableList, defaultValues;
local frameCache;
---- Clear the lib if necessary, otherwise create it
if ( lib ) then
	-- Use the existing lib table.
	-- Get the data to preserve from the earlier version of CT_Library.
	-- Note: Previous versions of CT_Library may not have handled all of these values,
	-- so they will be nil after the call to the earlier CT_Library's lib:getData().
		modules, movables, eventTable, timerRepeatedTimes, timerRepeatedFuncs,
		timerRepeatedStarts, timerTimes, timerFuncs, frame,
		-- Added handling of the following in 5.0002
		numSlashCmds, localizations, tableList, defaultValues, frameCache = lib:getData();
	-- Clear the existing lib table.
	lib:unload();
else
	-- Create a new lib table.
	lib = { };
	_G[LIBRARY_NAME] = lib;
end

-- Set the variables used
lib.name = LIBRARY_NAME;
lib.version = LIBRARY_VERSION;

-- End Initialization
-----------------------------------------------

-----------------------------------------------
-- Local Copies

local ChatFrame1 = ChatFrame1;

local floor = floor;
local format = format;
local gsub = gsub;
local ipairs = ipairs;
local match = string.match;
local math = math;
local maxn = table.maxn;
local min = min;
local pairs = pairs;
local print = print;
local select = select;
local setmetatable = setmetatable;
local sort = sort;
local string = string;
local strlen = strlen;
local strlower = strlower;
local strmatch = strmatch;
local strsub = strsub;
local strupper = strupper;
local tinsert = tinsert;
local tonumber = tonumber;
local tostring = tostring;
local tremove = tremove;
local type = type;
local unpack = unpack;

-- For spell database
local getNumSpellTabs = GetNumSpellTabs;
local getSpellTabInfo = GetSpellTabInfo;
local getSpellName = GetSpellBookItemName;


-- End Local Copies
-----------------------------------------------

-----------------------------------------------
-- Generic Functions

local function printText(frame, r, g, b, text)
	frame:AddMessage(text, r, g, b);
end

-- Local function to print text with a given color
local function getPrintText(...)
	local str = "";
	local num = select("#", ...);
	for i = 1, num, 1 do
		str = str .. tostring(select(i, ...)) .. ( (i < num and "  " ) or "" );
	end
	return str;
end

-- Clears a table
local emptyMeta = { };
function lib:clearTable(tbl, clearMeta)
	for key, value in pairs(tbl) do
		tbl[key] = nil;
	end
	
	if ( clearMeta ) then
		setmetatable(tbl, emptyMeta);
	end
end

-- Print a formatted message in yellow to ChatFrame1
function lib:printformat(...)
	printText(ChatFrame1, 1, 1, 0, format(...));
end

-- Print a formatted error message in red to ChatFrame1
function lib:errorformat(...)
	printText(ChatFrame1, 1, 0, 0, format(...));
end

-- Print a message in yellow to ChatFrame1
function lib:print(...)
	printText(ChatFrame1, 1, 1, 0, getPrintText(...));
end

-- Print an error message in red to ChatFrame1
function lib:error(...)
	printText(ChatFrame1, 1, 0, 0, getPrintText(...));
end

-- Print a message in a color of your choice to ChatFrame1
function lib:printcolor(r, g, b, ...)
	printText(ChatFrame1, r, g, b, getPrintText(...));
end

-- Print a formatted message in a color of your choice to ChatFrame1
function lib:printcolorformat(r, g, b, ...)
	printText(ChatFrame1, r, g, b, format(...));
end

-- Display a tooltip at cursor
function lib:displayTooltip(obj, text, defaultAnchor)
	local tooltip = GameTooltip;
	if ( defaultAnchor ) then
		GameTooltip_SetDefaultAnchor(tooltip, obj);
	else
		tooltip:SetOwner(obj, "ANCHOR_CURSOR");
	end
	tooltip:SetText(text);
end

-- Hide the tooltip
function lib:hideTooltip()
	GameTooltip:Hide();
end

-- Display a tooltip using predefined text
local predefinedTexts = {
	DRAG = "Left click to drag\nRight click to reset",
	RESIZE = "Click and drag to resize"
};

function lib:displayPredefinedTooltip(obj, text)
	self:displayTooltip(obj, predefinedTexts[text]);
end

-- Register a slash command
if (not numSlashCmds) then
	numSlashCmds = 0;
	-- In case the player is using an earlier version of CT_Library.lua
	-- that did not preserve the 'numSlashCmds' value, determine the
	-- current value for numSlashCmds.
	local cmd = true;
	while (cmd) do
		local count = numSlashCmds + 1;
		cmd = _G["SLASH_CT_SLASHCMD" .. count .. "1"];
		if (not cmd) then
			break;
		end
		numSlashCmds = count;
	end
end

function lib:setSlashCmd(func, ...)
	-- Add one or more CTMod slash commands.
	-- func == The function to be called when one of the slash command is used.
	-- ... == One or more slash command strings.
	numSlashCmds = numSlashCmds + 1;
	local id = "CT_SLASHCMD" .. numSlashCmds;
	SlashCmdList[id] = func;
	for i = 1, select('#', ...), 1 do
		_G["SLASH_" .. id .. i] = select(i, ...);
	end
end

function lib:updateSlashCmd(func, ...)
	-- Update existing CTMod slash commands, else add slash commands.
	-- Matching is done based on the slash command text, not the function value.
	-- func == The function to be called when one of the slash command is used.
	-- ... == One or more slash command strings.
	local found;
	local count = 1;
	local id = "CT_SLASHCMD" .. count;
	local oldFunc = SlashCmdList[id];
	while (oldFunc) do
		local i = 1;
		local cmd = _G["SLASH_" .. id .. i];
		while (cmd) do
			-- Compare the existing slash command to the ones we're trying to find.
			for k = 1, select('#', ...), 1 do
				if (cmd == select(i, ...)) then
					-- We found one of the slash commands we were looking for.
					-- Assume the rest of them match as well.
					found = true;
					break;
				end
			end
			if (found) then
				break;
			end
			i = i + 1;
			cmd = _G["SLASH_" .. id .. i];
		end
		if (found) then
			-- Delete each of the existing slash commands.
			local i = 1;
			local cmd = _G["SLASH_" .. id .. i];
			while (cmd) do
				_G["SLASH_" .. id .. i] = nil;
				i = i + 1;
				cmd = _G["SLASH_" .. id .. i];
			end
			-- Temporarily change numSlashCmds so that we will overwrite
			-- the existing entry in the list when we call :setSlashCmd().
			local save = numSlashCmds;
			numSlashCmds = count - 1;
			self:setSlashCmd(func, ...);
			numSlashCmds = save;
			break;
		end
		count = count + 1;
		id = "CT_SLASHCMD" .. count;
		oldFunc = SlashCmdList[id];
	end
	if (not found) then
		-- There were no existing slash commands to update,
		-- so just call the normal function to add these ones.
		self:setSlashCmd(func, ...);
	end
end

-- Add localizations for a given text string
local num_locales = 3; -- EN, DE, FR
function lib:setText(key, ...)
	local count = select('#', ...);	
	if ( count == 0 ) then
		return;
	end
	
	if ( not localizations ) then
		localizations = { };
	end
	
	local retVal = maxn(localizations)+1;
	for i = 1, min(count, num_locales), 1 do
		tinsert(localizations, (select(i, ...)));
	end
	self[key] = retVal;
end

-- Get a localized text string
function lib:getText(key)
	local localeOffset;
	if ( localizations ) then
	
		key = self[key];
		if ( not key ) then
			return;
		end
		
		if ( not localeOffset ) then
			local locale = strsub(GetLocale(), 1, 2);
			if ( locale == "en" ) then
				localeOffset = 0;
			elseif ( locale == "de" ) then
				localeOffset = 1;
			elseif ( locale == "fr" ) then
				localeOffset = 2;
			else
				localeOffset = 0;
			end
		end
		
		local value = localizations[key+localeOffset];
		if ( not value and localeOffset > 0 ) then
			value = localizations[key];
		end
		if ( not value ) then
			value = "";
		end
		return value;
	end
end

-- Get an empty table
if (not tableList) then
	tableList = { };
end
setmetatable(tableList, { __mode = 'v' });

function lib:getTable()
	return tremove(tableList) or { };
end

-- Free a table
function lib:freeTable(tbl)
	if ( tbl ) then
		self:clearTable(tbl, true);
		tinsert(tableList, tbl);
	end
end

-- Copy table
function lib:copyTable(source, dest)
	if (type(dest) ~= "table") then
		dest = {};
	end
	if (type(source) == "table") then
		for k, v in pairs(source) do
			if (type(v) == "table") then
				v = self:copyTable(v, dest[k]);
			end
			dest[k] = v;
		end
	end
	return dest;
end

function lib:abbreviateLargeNumbers(value, breakup)
	-- This abbreviates large numbers by reducing the number of digits
	-- and appending some abbreviation text. The breakup parameter
	-- controls whether or not the number will be broken up using separators.
	--
	-- This is a modified version of AbbreviateLargeNumbers() from UIParent.lua
	-- as of WoW 5.0.4.
	-- This modified version handles negative numbers, adds the breakup parameter,
	-- and is capable of breaking up numbers before adding the abbreviation text.
	--
	-- Parameters:
	-- value == value to be abbreviated (very large values may not display properly).
	-- breakup == Should the number be broken up using seperators.
	--            nil == yes, true == yes, false == no
	local negative = "";
	if (value < 0) then
		negative = "-";
		value = -value;
	end
	
	local retString = value;
	local strLen = strlen(value);
	if ( strLen > 8 ) then
		-- Drop the last 6 digits and add the abbreviation text.
		value = tonumber(string.sub(value, 1, -7));
		retString = self:breakUpLargeNumbers(value, breakup);
		retString = retString .. SECOND_NUMBER_CAP;
	elseif ( strLen > 5 ) then
		-- Drop the last 3 digits and add the abbreviation text.
		value = tonumber(string.sub(retString, 1, -4));
		retString = self:breakUpLargeNumbers(value, breakup);
		retString = retString .. FIRST_NUMBER_CAP;
	elseif (strLen > 3 ) then
		retString = self:breakUpLargeNumbers(value, breakup);
	end
	return negative .. retString;
end

function lib:breakUpLargeNumbers(value, breakup)
	-- Break up large numbers using separators, and if the number contains
	-- decimals then the returned string will have two decimals.
	-- 
	-- This is a modified version of BreakUpLargeNumbers() from UIParent.lua
	-- as of WoW 5.0.4.
	-- This modified version handles negative numbers, adds the breakup parameter,
	-- and drops the use of GetCVarBool("breakUpLargeNumbers").
	--
	-- Parameters:
	-- value == value to be abbreviated (very large values may not display properly).
	-- breakup == Should the number be broken up using seperators.
	--            nil == yes, true == yes, false == no
	local negative = "";
	if (value < 0) then
		negative = "-";
		value = -value;
	end
	if (breakup == nil) then
		breakup = true;
	end

	local retString = "";
	
	if ( value < 1000 ) then
		if ( (value - math.floor(value)) == 0) then
			-- Return a string with no decimals.
			return negative .. value;
		end
		-- Return a string with two decimals.
		local decimal = (math.floor(value*100));
		retString = string.sub(decimal, 1, -3);
		retString = retString .. DECIMAL_SEPERATOR;
		retString = retString .. string.sub(decimal, -2);
		return negative .. retString;
	end

	-- Don't allow any decimals.
	value = math.floor(value);
	local strLen = strlen(value);
	if (breakup) then
		-- Use seperators to break the value up.
		if ( strLen > 6 ) then
			retString = string.sub(value, 1, -7) .. LARGE_NUMBER_SEPERATOR;
		end
		if ( strLen > 3 ) then
			retString = retString .. string.sub(value, -6, -4) .. LARGE_NUMBER_SEPERATOR;
		end
		retString = retString .. string.sub(value, -3, -1);
	else
		-- Do not use seperators.
		retString = value;
	end
	return negative .. retString;
end

-----------------------------------------------
-- Initializing

local function loadAddon(self, event, addon)
	if ( modules ) then
		-- Scan our modules to see if we have a matching addon
		local updateFunc;
		for key, value in ipairs(modules) do
			if ( value.name == addon ) then
				-- Initialize options
				value.options = _G[addon.."Options"];
				
				-- Run any update function we might have
				updateFunc = value.update;
				if ( updateFunc ) then
					updateFunc(value, "init");
				end
				return;
			end
		end
	end
end

-----------------------------------------------
-- Actions requiring frames

-- Register events
if ( not frame ) then
	frame = CreateFrame("Frame");
end

function lib:regEvent(event, func)
	event = strupper(event);
	frame:RegisterEvent(event);
	
	if ( not eventTable ) then
		eventTable = { };
	end
	
	local oldFunc = eventTable[event];
	if ( not oldFunc ) then
		eventTable[event] = func;
	elseif ( type(oldFunc) == "table" ) then
		tinsert(oldFunc, func);
	else
		eventTable[event] = { oldFunc, func };
	end
end

function lib:unregEvent(event, func)
	if ( not eventTable ) then
		return;
	end
	
	event = strupper(event);
	local eventFuncs = eventTable[event];
	if ( not eventFuncs ) then
		return;
	end
	
	if ( type(eventFuncs) == "table" ) then
		for key, value in ipairs(eventFuncs) do
			if ( value == func ) then
				tremove(eventFuncs, key);
				break;
			end
		end
		if ( #eventFuncs == 0 ) then
			frame:UnregisterEvent(event);
		end
	else
		eventTable[event] = nil;
		frame:UnregisterEvent(event);
	end
end

local function eventHandler(self, event, ...)
	if ( event == "ADDON_LOADED" ) then
		loadAddon(self, event, ...);
	end
	
	local eventFuncs = eventTable[event];
	if ( type(eventFuncs) == "table" ) then
		for key, value in ipairs(eventFuncs) do
			value(event, ...);
		end
	elseif ( eventFuncs ) then
		eventFuncs(event, ...);
	end
end

frame:RegisterEvent("ADDON_LOADED");
frame:SetScript("OnEvent", eventHandler);

-- Schedule timers
 -- Usage:	schedule(time, func) for one-time
 --		schedule(time, true, func) for repeated
function lib:schedule(time, func, repeatFunc)
	if ( not time or not func or ( type(func) ~= "function" and not repeatFunc ) ) then
		return;
	end
	
	if ( repeatFunc ) then
		if ( not timerRepeatedTimes ) then
			timerRepeatedTimes, timerRepeatedFuncs, timerRepeatedStarts = { }, { }, { };
		end
		tinsert(timerRepeatedTimes, time);
		tinsert(timerRepeatedStarts, time);
		tinsert(timerRepeatedFuncs, repeatFunc);
	else
		if ( not timerTimes ) then
			timerTimes, timerFuncs = { }, { };
		end
		tinsert(timerTimes, time);
		tinsert(timerFuncs, func);
	end
	frame:Show();
end

function lib:unschedule(func, isRepeat)
	if ( not func ) then
		return;
	end
	
	if ( isRepeat ) then
		if ( timerRepeatedFuncs ) then
			for key, value in ipairs(timerRepeatedFuncs) do
				if ( value == func ) then
					tremove(timerRepeatedTimes, key);
					tremove(timerRepeatedStarts, key);
					tremove(timerRepeatedFuncs, key);
					break;
				end
			end
		end
	else
		if ( timerFuncs ) then
			for key, value in ipairs(timerFuncs) do
				if ( value == func ) then
					tremove(timerTimes, key);
					tremove(timerFuncs, key);
					break;
				end
			end
		end
	end
end

frame:Hide();
frame:SetScript("OnUpdate", function(self, elapsed)
	-- Normal times
	local found = false;
	local val;
	
	if ( timerTimes ) then
		for i = #timerTimes, 1, -1 do
			val = timerTimes[i] - elapsed;
			timerTimes[i] = val;
			if ( val <= 0 ) then
				tremove(timerFuncs, i)(val);
				tremove(timerTimes, i);
			else
				found = true;
			end
		end
	end
	
	if ( timerRepeatedTimes ) then
		for key, value in ipairs(timerRepeatedTimes) do
			found = true;
			value = value - elapsed;
			if ( value <= 0 ) then
				timerRepeatedFuncs[key](value);
				timerRepeatedTimes[key] = timerRepeatedStarts[key];
			else
				timerRepeatedTimes[key] = value;
			end
		end
	end
	
	if ( not found ) then
		frame:Hide();
	end
end);

function lib:unload()
	self:clearTable(self);
end

-- End Generic Functions
-----------------------------------------------

-----------------------------------------------
-- Spell Database

-- Local variables used
local spellRanks, spellIds;

-- Update a tab
local function updateSpellTab(tabIndex)
	local spellName, rankName, rank, oldRank, spellId;
	local _, _, offset, numSpells = getSpellTabInfo(tabIndex);
	for spellIndex = 1, numSpells, 1 do

		spellId = offset + spellIndex;
		spellName, rankName = getSpellName(spellId, "spell");

		_, _, rank = string.find(rankName or "", "(%d+)$");
		oldRank = spellRanks[spellName];
		rank = tonumber(rank);

		-- print("tab=", tabIndex, "off=", offset, "idx=", spellIndex, "name=", spellName, "rname=", rankName, "rold=", oldRank, "rnk=", rank, "sid=", spellId)

		if ( not oldRank or ( rank and rank > oldRank ) ) then
			-- Need to update our listing
			spellRanks[spellName] = rank;
			spellIds[spellName] = spellId;
		end

	end
end

-- Update the database
local function updateSpellDatabase(event, arg1, arg2)
	-- print(event, arg1, arg2)
	if ( (not spellRanks) or (event == "PLAYER_TALENT_UPDATE") ) then
		spellRanks = {};
		spellIds = {};
	end
	if ( (event == "LEARNED_SPELL_IN_TAB") and arg2 ) then
		-- arg1 == spell number
		-- arg2 == tab number that spell was added to
		updateSpellTab(arg2);
	else
		for tabIndex = 1, getNumSpellTabs(), 1 do
			updateSpellTab(tabIndex);
		end
	end
end

-- Returns spell id and spell rank (if applicable)
function lib:getSpell(name)
	if ( not spellRanks ) then
		updateSpellDatabase();
	end
	
	return spellIds[name], spellRanks[name];
end

lib:regEvent("LEARNED_SPELL_IN_TAB", updateSpellDatabase);
lib:regEvent("PLAYER_TALENT_UPDATE", updateSpellDatabase);

-- End Spell Database
-----------------------------------------------

-----------------------------------------------
-- Module Handling

-- Register a module with the library
local module_meta = { __index = lib };

local function registerMeta(module)
	-- Set the module's metatable
	setmetatable(module, module_meta);
end

local function registerModule(module, position)
	for k, v in ipairs(modules) do
		if (v.name == module.name) then
			-- Module is already registered.
			return;
		end
	end
	if ( position ) then
		module.ctposition = position;
		tinsert(modules, position, module);
	else
		tinsert(modules, module);
	end
	registerMeta(module);
	sort(modules, function(a, b)
		if (a.ctposition and not b.ctposition) then
			return true;
		elseif (not a.ctposition and b.ctposition) then
			return false;
		elseif (a.ctposition and b.ctposition) then
			if (a.ctposition == b.ctposition) then
				return a.name < b.name;
			else
				return a.ctposition < b.ctposition;
			end
		else
			return a.name < b.name;
		end
	end);
end

function lib:registerModule(module)
	registerModule(module);
end

-- Return values that need to be preserved when a newer version of CT_Library is encountered.
function lib:getData()
	return modules, movables, eventTable, timerRepeatedTimes, timerRepeatedFuncs,
		timerRepeatedStarts, timerTimes, timerFuncs, frame,
		numSlashCmds, localizations, tableList, defaultValues,
		frameCache;
end

if ( modules ) then
	-- Re-register already loaded modules
	for key, value in ipairs(modules) do
		registerMeta(value);
	end
else
	modules = { };
end

-- End Module Handling
-----------------------------------------------

-----------------------------------------------
-- Option Handling

local charKey;
local function getCharKey()
	if ( not charKey ) then
		charKey = "CHAR-"..(UnitName("player") or "Unknown").."-"..(GetRealmName() or "Unknown");
	end
	return charKey;
end
lib.getCharKey = getCharKey;

-- Set an option's value (optionally character specific)
function lib:setOption(option, value, charSpecific, callUpdate)
	-- callUpdate
	--	false: Do not call the update function.
	--	true, nil: Call the update function.
	if (not option) then
		return;
	end
	local options = self.options;
	if ( not options or not option ) then
		options = { };
		self.options = options;
		local optionKey = self.name.."Options";
		if ( not _G[optionKey] ) then
			_G[optionKey] = options;
		end
	end
	if ( charSpecific ) then
		local key = getCharKey();
		local charOptions = options[key];
		if ( not charOptions ) then
			charOptions = { };
			options[key] = charOptions;
		end
		charOptions[option] = value;
	else
		options[option] = value;
	end
	if (callUpdate ~= false) then
		local updateFunc = self.update;
		if ( updateFunc ) then
			updateFunc(self, option, value);
		end
	end
end

-- 04/18/2011
--
-- The problem with the defaultValues table is that it is not
-- populated until an addon's module.frame function is run and the
-- results are parsed. That usually only happens when the user opens
-- the addon's options window. Until then all default values are nil.
-- It has been this way for quite a long time.
--
-- Most (all?) of the existing addons are aware of this and do not
-- rely on the default values in this table. Instead default values
-- are hard coded at various points in the addon, as well as being
-- specified in the widget strings that make up the addon's options
-- frame.
-- 
-- Note that if CT_Library is ever changed to populate the defaultValues
-- table earlier in an addon's life, this may cause problems with addons
-- that explicitly test an option's value for nil to test if it has ever been
-- modified by the user. If a default value is returned from :getOption()
-- instead of nil, then the addon cannot know if the option was never
-- modified. These sorts of tests would need to be changed first.

if (not defaultValues) then
	defaultValues = { };
end

-- Reads an option. Prioritizes char-specific options over global copies
function lib:getOption(option, useDefault)
	-- useDefault
	--	false: Do not return default value if option is nil.
	--	true, nil: Return default value if option is nil.
	local options = self.options;
	if ( not option ) then
		return;
	elseif ( not options ) then
		if (useDefault ~= false) then
			return defaultValues[self.name.."-"..option];
		end
		return;
	end
	
	local key = getCharKey();
	
	local charOptions = options[key];
	local val;
	if ( charOptions ) then
		val = charOptions[option];
		if ( val == nil ) then
			val = options[option];
			if ( val == nil ) then
				if (useDefault ~= false) then
					val = defaultValues[self.name.."-"..option];
				end
			end
		end
		return val;
	else
		val = options[option];
		if ( val == nil ) then
			if (useDefault ~= false) then
				val = defaultValues[self.name.."-"..option];
			end
		end
		return val;
	end
end

function lib:getOptionDefault(option)
	if ( not option ) then
		return;
	end
	return defaultValues[self.name.."-"..option];
end

function lib:setOptionDefault(option, value)
	if ( not option ) then
		return;
	end
	defaultValues[self.name.."-"..option] = value;
end

-- End Option Handling
-----------------------------------------------

-----------------------------------------------
-- Movable Handling

function lib:registerMovable(id, frame, clamped)
	if ( not movables ) then
		movables = { };
	end
	
	id = "MOVABLE-"..id;
	movables[id] = frame;
	frame:SetMovable(true);
	frame:SetClampedToScreen(clamped);
	
	-- See if we have a saved position already...
	local option = self:getOption(id);
	if ( option ) then
		frame:ClearAllPoints();
		
		local scale = option[6];
		if ( scale ) then
			frame:SetScale(scale);
			frame:SetPoint(option[1], option[2], option[3], option[4] / scale, option[5] / scale);
		else
			frame:SetPoint(option[1], option[2], option[3], option[4], option[5]);
		end
	end
end

function lib:moveMovable(id)
	movables["MOVABLE-"..id]:StartMoving();
end

function lib:stopMovable(id)
	id = "MOVABLE-"..id;
	local frame = movables[id];
	frame:StopMovingOrSizing();
	frame:SetUserPlaced(false); -- Since we're storing the position manually, don't save it in layout-cache
	
	local pos = self:getOption(id);
	if ( pos ) then
		self:clearTable(pos);
		
		local a, b, c, d, e = frame:GetPoint(1);
		local scale = frame:GetScale();
		if string.upper(a) == "BOTTOMLEFT" or string.upper(a) == "BOTTOMRIGHT" then
			a = "BOTTOM";
			c = "BOTTOM";
			d = math.floor(frame:GetLeft() + (frame:GetWidth() - UIParent:GetWidth()) / 2 + 0.5) * scale;
			e = math.floor(frame:GetTop() - frame:GetHeight() + 0.5) * scale;
		end

		pos[1], pos[2], pos[3], pos[4], pos[5], pos[6] = a, b, c, d, e, scale;
		frame:ClearAllPoints();
		frame:SetPoint(a, b, c, d, e);
	else
		local a, b, c, d, e = frame:GetPoint(1);
		local scale = frame:GetScale();
		d, e = d * scale, e * scale;
		
		pos = { a, b, c, d, e, scale };
		self:setOption(id, pos, true);
	end
	
	local rel = pos[2];
	if ( rel ) then
		pos[2] = rel:GetName();
	end
end

function lib:resetMovable(id)
	self:setOption("MOVABLE-"..id, nil, true);
end

-- End Movable Handling
-----------------------------------------------

-----------------------------------------------
-- Frame Misc

function lib:createMultiLineEditBox(name, width, height, parent, bdtype)
	-- Create a multi line edit box
	-- Param: bdtype -- nil==No backdrop, 1=Tooltip backdrop, 2==Dialog backdrop
	local frame, scrollFrame, editBox;
	local backdrop;

	if (bdtype == 1) then
		backdrop = {
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true,
			tileSize = 16,
			edgeSize = 16,
			insets = { left = 5, right = 5, top = 5, bottom = 5 },
		};
	elseif (bdtype == 2) then
		backdrop = {
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			tile = true,
			tileSize = 32,
			edgeSize = 32,
			insets = { left = 5, right = 5, top = 5, bottom = 5 },
		};
	end

	frame = CreateFrame("Frame", name, parent);
	frame:SetHeight(height);
	frame:SetWidth(width);
	frame:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0);
	frame:SetPoint("BOTTOMRIGHT", parent, "TOPLEFT", width, -height);
	if (backdrop) then
		frame:SetBackdrop(backdrop);
		frame:SetBackdropBorderColor(0.4, 0.4, 0.4);
		frame:SetBackdropColor(0, 0, 0);
	end
	frame:EnableMouse(true);
	frame:Hide();

	local sfname;
	if (name) then
		sfname = name .. "ScrollFrame";
	end
	scrollFrame = CreateFrame("ScrollFrame", sfname, frame, "UIPanelScrollFrameTemplate");
	scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 7, -5);
	scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -28, 5);

	width = scrollFrame:GetWidth() - 6;

	local ebname;
	if (name) then
		ebname = name .. "EditBox";
	end

	editBox = CreateFrame("EditBox", ebname, frame);
	editBox:SetWidth(width);
	editBox:SetMultiLine(true);
	editBox:EnableMouse(true);
	editBox:SetAutoFocus(false);
	editBox:SetFontObject(ChatFontNormal);

	-- Note:
	--
	-- ScrollingEdit_OnUpdate (in UIPanelTemplates.lua) will cause
	-- an error if the editBox.cursorOffset or editBox.cursorHeight
	-- variables are nil. This can happen if ScrollingEdit_OnTextChanged
	-- gets called before ScrollingEdit_OnCursorChanged.
	--
	-- To avoid this error:
	--    1) Initialize those variables to zero ourself.
	-- or 2) Assign a non-empty string to the editBox. This will
	--       force the OnCursorChanged script to get called
	--       just prior to the OnTextChanged script. As a result,
	--       the ScrollingEdit_OnCursorChanged function will
	--       initialize the variables before they are accessed
	--       by ScrollingEdit_OnUpdate.

	editBox.cursorOffset = 0;
	editBox.cursorHeight = 0;
	editBox:SetText(" ");  -- Assign initial non-empty string.

	editBox:SetScript("OnCursorChanged",
		function(self, x, y, w, h)
			ScrollingEdit_OnCursorChanged(self, x, y-10, w, h);
		end
	);
	editBox:SetScript("OnTextChanged",
		function(self, userInput)
			ScrollingEdit_OnTextChanged(self, scrollFrame);
		end
	);
	editBox:SetScript("OnUpdate",
		function(self, elapsed)
			ScrollingEdit_OnUpdate(self, elapsed, scrollFrame);
		end
	);
	editBox:SetScript("OnEscapePressed",
		function(self)
			self:ClearFocus();
		end
	);
	editBox:SetScript("OnTabPressed",
		function(self)
			self:ClearFocus();
		end
	);

	scrollFrame:SetScrollChild(editBox);
	scrollFrame:Show();
	editBox:Show();

	-- Button that allows clicking anywhere over the scroll frame
	-- to set the focus to the editbox. Without this the player has
	-- to click on a line that has text, which is not obvious when
	-- the editbox is empty.
	local textButton = CreateFrame("Button", nil, frame);
	textButton:ClearAllPoints();
	textButton:SetPoint("TOPLEFT", scrollFrame);
	textButton:SetPoint("BOTTOMRIGHT", scrollFrame);
	textButton:SetScript("OnClick",
		function(self, button)
			self:GetParent().editBox:SetFocus();
		end
	);

	frame.scrollFrame = scrollFrame;
	frame.editBox = editBox;

	return frame;
end

function lib:setRadioButtonTextures(checkbutton)
	-- Makes a check button look like a radio button by changing its textures.
	local tex = "Interface\\Buttons\\UI-RadioButton";

	checkbutton:SetNormalTexture(tex);
	checkbutton:GetNormalTexture():SetTexCoord(0, 0.25, 0, 1);

	checkbutton:SetDisabledTexture(tex);
	checkbutton:GetDisabledTexture():SetTexCoord(0, 0.25, 0, 1);

	checkbutton:SetPushedTexture(tex);
	checkbutton:GetPushedTexture():SetTexCoord(0.25, 0.5, 0, 1);

	checkbutton:SetHighlightTexture(tex);
	checkbutton:GetHighlightTexture():SetTexCoord(0.51, 0.75, 0, 1);
	checkbutton:GetHighlightTexture():SetBlendMode("ADD");

	checkbutton:SetCheckedTexture(tex);
	checkbutton:GetCheckedTexture():SetTexCoord(0.25, 0.5, 0, 1);

	checkbutton:SetDisabledCheckedTexture(tex);
	checkbutton:GetDisabledCheckedTexture():SetTexCoord(0.25, 0.5, 0, 1);
end

-- End Frame Misc
-----------------------------------------------

-----------------------------------------------
-- Frame Creation

-- Thanks to Iriel for this iterator code
	local numberSeparator = "#";
	local colonSeparator = ":";
	local commaSeparator = ",";
	local pipeSeparator = "|";
	
	local numberMatch = "^(.-)"..numberSeparator.."(.*)$";
	local colonMatch = "^(.-)"..colonSeparator.."(.*)$";
	local commaMatch = "^(.-)"..commaSeparator.."(.*)$";
	local pipeMatch = "^(.-)"..pipeSeparator.."(.*)$";

	local function splitNext(re, body)
	    if (body) then
		local pre, post = match(body, re);
		if (pre) then
		    return post, pre;
		end
		return false, body;
	    end
	end
	local function iterator(str, match) return splitNext, match, str; end

-- Takes a string and returns its subcomponents
local function splitString(str, match)
	if ( str and match ) then
		return match:split(str);
	end
	return str;
end

-- Cache for storing str->function maps
if (not frameCache) then
	frameCache = { };
end

-- Short-notion to real-notation point map
local points = {
	tl = "TOPLEFT",
	tr = "TOPRIGHT",
	bl = "BOTTOMLEFT",
	br = "BOTTOMRIGHT",
	l = "LEFT",
	r = "RIGHT",
	t = "TOP",
	b = "BOTTOM",
	mid = "CENTER",
	all = "all" -- for SetAllPoints
};

-- Object Handlers
local objectHandlers = { };

-- Frame
objectHandlers.frame = function(self, parent, name, virtual, option)
	local frame = CreateFrame("Frame", name, parent, virtual);
	return frame;
end

-- Button
objectHandlers.button = function(self, parent, name, virtual, option, text)
	local button = CreateFrame("Button", name, parent, virtual);
	if ( text ) then
		local str = self:getText(text) or _G[text];
		if ( type(str) ~= "string" ) then
			str = text;
		end
		button:SetText(str);
	end
	return button;
end

-- CheckButton
local function checkbuttonOnClick(self)
	local checked = self:GetChecked() or false;
	local option = self.option;
	
	if ( option ) then
		self.object:setOption(option, checked, not self.global);
	end
	if ( checked ) then
		PlaySound("igMainMenuOptionCheckBoxOn");
	else
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
end

objectHandlers.checkbutton = function(self, parent, name, virtual, option, text, textColor)
	local checkbutton = CreateFrame("CheckButton", name, parent, virtual or "InterfaceOptionsBaseCheckButtonTemplate");
	local textObj = checkbutton:CreateFontString(nil, "ARTWORK", "ChatFontNormal");
	textObj:SetPoint("LEFT", checkbutton, "RIGHT", 4, 0);
	checkbutton.text = textObj;
	
	-- Text Color
	local r, g, b = splitString(textColor, colonSeparator);
	if ( r ) then
		textObj:SetTextColor(tonumber(r) or 1, tonumber(g) or 1, tonumber(b) or 1);
	end
	
	-- Text
	if ( text ) then
		local str = _G[text];
		if ( type(str) ~= "string" ) then
			str = text;
		end
		textObj:SetText(str);
	end
	
	if ( not virtual or not checkbutton:GetScript("OnClick") ) then
		checkbutton:SetScript("OnClick", checkbuttonOnClick);
	end
	checkbutton:SetChecked(self:getOption(option) or false);
	
	return checkbutton;
end

-- Backdrop
local dialogBackdrop = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true, tileSize = 32, edgeSize = 32,
	insets = { left = 11, right = 12, top = 12, bottom = 11 }
};
local tooltipBackdrop = {
	bgFile="Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
objectHandlers.backdrop = function(self, parent, name, virtual, option, backdropType, bgColor, borderColor)
	-- Convert short-notation names to the appropriate tables
	if ( backdropType == "dialog" ) then
		parent:SetBackdrop(dialogBackdrop);
	elseif ( backdropType == "tooltip" ) then
		parent:SetBackdrop(tooltipBackdrop);
	end
	
	-- BG Color
	local r, g, b, a;
	if ( bgColor ) then
		r, g, b, a = splitString(bgColor, colonSeparator);
	end
	parent:SetBackdropColor(tonumber(r) or 0, tonumber(g) or 0, tonumber(b) or 0, tonumber(a) or 0.25);
	
	-- BG Color
	if ( borderColor ) then
		r, g, b, a = splitString(borderColor, colonSeparator);
		parent:SetBackdropBorderColor(tonumber(r) or 1, tonumber(g) or 1, tonumber(b) or 1, tonumber(a) or 1);
	end
end

-- FontString
objectHandlers.font = function(self, parent, name, virtual, option, text, data, layer)
	-- Data
	local r, g, b, justify;
	local a, b, c, d = splitString(data, colonSeparator);
	
	-- Parse our attributes
	r = tonumber(a);
	if ( r ) then
		g, b = tonumber(b), tonumber(c);
		justify = d;
	else
		justify = a;
	end
	
	-- Create FontString
	local fontString = parent:CreateFontString(name, layer or "ARTWORK", virtual or "GameFontNormal");
	
	-- Justify
	if ( justify ) then
		local h = match(justify, "[lLrR]");
		local v = match(justify, "[tTbB]");
		
		if ( h == "l" ) then
			fontString:SetJustifyH("LEFT");
		elseif ( h == "r" ) then
			fontString:SetJustifyH("RIGHT");
		end
		
		if ( v == "t" ) then
			fontString:SetJustifyV("TOP");
		elseif ( v == "b" ) then
			fontString:SetJustifyV("BOTTOM");
		end
	end
	
	-- Color
	if ( r and g and b ) then
		fontString:SetTextColor(tonumber(r) or 1, tonumber(g) or 1, tonumber(b) or 1);
	end
	
	-- Text
	fontString:SetText(self:getText(text) or _G[text] or text);
	
	return fontString;
end

-- Texture
objectHandlers.texture = function(self, parent, name, virtual, option, texture, layer)
	-- Texture & Layer
	local r, g, b, a = splitString(texture, colonSeparator);
	local tex = parent:CreateTexture(name, layer or "ARTWORK", virtual);
	
	-- Color
	if ( r and g and b ) then
		tex:SetTexture(tonumber(r) or 1, tonumber(g) or 1, tonumber(b) or 1, tonumber(a) or 1);
	else
		tex:SetTexture(texture);
	end
	
	return tex;
end

-- Option Frame
local optionFrameOnMouseUp = function(self) self:GetParent():StopMovingOrSizing(); end
local optionFrameOnEnter = function(self) lib:displayPredefinedTooltip(self, "DRAG"); end
local optionFrameOnLeave = function(self) lib:hideTooltip(); end
local optionFrameOnMouseDown = function(self, button)
	if ( button == "LeftButton" ) then
		self:GetParent():StartMoving();
	elseif ( button == "RightButton" ) then
		local parent = self:GetParent();
		parent:ClearAllPoints();
		parent:SetPoint("CENTER", "UIParent", "CENTER");
	end
end

objectHandlers.optionframe = function(self, parent, name, virtual, option, headerName)
	-- MainFrame
	local frame = CreateFrame("Frame", name, parent, virtual);
	frame:SetBackdrop(dialogBackdrop);
	frame:SetMovable(true);
	frame:SetToplevel(true);
	frame:SetFrameStrata("DIALOG");
	
	-- DragFrame
	local dragFrame = CreateFrame("Button", nil, frame);
	dragFrame:SetWidth(150); dragFrame:SetHeight(32);
	dragFrame:SetPoint("TOP", -12, 12);
	dragFrame:SetScript("OnMouseDown", optionFrameOnMouseDown);
	dragFrame:SetScript("OnMouseUp", optionFrameOnMouseUp);
	dragFrame:SetScript("OnEnter", optionFrameOnEnter);
	dragFrame:SetScript("OnLeave", optionFrameOnLeave);
	
	-- HeaderTexture
	local headerTexture = frame:CreateTexture(nil, "ARTWORK");
	headerTexture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header");
	headerTexture:SetWidth(256); headerTexture:SetHeight(64);
	headerTexture:SetPoint("TOP", 0, 12);
	
	-- HeaderText
	local headerText = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	headerText:SetText(headerName);
	headerText:SetPoint("TOP", headerTexture, 0, -14);
	
	return frame;
end

-- DropDown
local function dropdownSetWidth(self, width)
	-- Ugly, ugly hack.
	self.SetWidth = self.oldSetWidth;
	UIDropDownMenu_SetWidth(self, width);
	self.SetWidth = dropdownSetWidth;
end

local function dropdownClick(self)
	local dropdown;
	if ( type(UIDROPDOWNMENU_OPEN_MENU) == "string" ) then
		-- Prior to the 3.0.8 patch UIDROPDOWNMEN_OPEN_MENU was a string (name of the object).
		dropdown = _G[UIDROPDOWNMENU_OPEN_MENU];
	else
		-- As of the 3.0.8 patch UIDROPDOWNMEN_OPEN_MENU is an object.
		dropdown = UIDROPDOWNMENU_OPEN_MENU;
	end
	if ( dropdown ) then
		local value = self.value;
		local option = dropdown.option;
		
		UIDropDownMenu_SetSelectedValue(dropdown, value);
		if ( option ) then
			dropdown.object:setOption(option, value, not dropdown.global);
		end
	end
end

local dropdownEntry = { };
objectHandlers.dropdown = function(self, parent, name, virtual, option, ...)
	local frame = CreateFrame("Frame", name, parent, virtual or "UIDropDownMenuTemplate");
	frame.oldSetWidth = frame.SetWidth;
	frame.SetWidth = dropdownSetWidth;
	frame.ctDropdownClick = dropdownClick;
	
	-- Make the slider smaller
	local left, right, mid, btn = _G[name.."Left"], _G[name.."Middle"], _G[name.."Right"], _G[name.."Button"];
	local setHeight = left.SetHeight;
	
	btn:SetPoint("TOPRIGHT", right, "TOPRIGHT", 12, -12);
	setHeight(left, 50);
	setHeight(right, 50);
	setHeight(mid, 50);
	
	local entries = { ... };
	
	UIDropDownMenu_Initialize(frame, function()
		for i = 1, #entries, 1 do
			dropdownEntry.text = entries[i];
			dropdownEntry.value = i;
			dropdownEntry.checked = nil;
			dropdownEntry.func = dropdownClick;
			UIDropDownMenu_AddButton(dropdownEntry);
		end
	end);
	
	UIDropDownMenu_SetSelectedValue(frame, self:getOption(option) or 1);
	UIDropDownMenu_JustifyText(frame, "LEFT");
	return frame;
end

-- Slider
local function updateSliderText(slider, value)
	slider.title:SetText(gsub(slider.titleText, "<value>", floor( ( value or slider:GetValue() )*100+0.5)/100));
end

local function updateSliderValue(self, value)
	local valueStep = self:GetValueStep()
	value = floor(value / valueStep  + 0.5) * valueStep
	updateSliderText(self, value);
	
	local option = self.option;
	if ( option ) then
		self.object:setOption(option, value, not self.global);
	end
end

objectHandlers.slider = function(self, parent, name, virtual, option, text, values)
	local slider = CreateFrame("Slider", name, parent, virtual or "OptionsSliderTemplate");
	local title, low, high = select(10, slider:GetRegions()); -- Hack to allow for unnamed sliders
	local titleText, lowText, highText = splitString(text, colonSeparator);
	local minValue, maxValue, step = splitString(values, colonSeparator);
	
	minValue, maxValue, step = tonumber(minValue), tonumber(maxValue), tonumber(step);
	slider.title, slider.titleText, slider.object, slider.option = title, titleText, self, option;
	low:SetText(lowText or minValue);
	high:SetText(highText or maxValue);
	
	slider:SetMinMaxValues(minValue, maxValue);
	slider:SetValueStep(step);

	slider:SetValue(self:getOption(option) or (maxValue-minValue)/2);
	slider:SetScript("OnValueChanged", updateSliderValue);
	
	updateSliderText(slider);
	return slider;
end

-- Color Swatch
local function colorSwatchCancel()
	local self = ColorPickerFrame.object;
	local r, g, b = self.r or 1, self.g or 1, self.b or 1;
	local a = self.opacity or 1;
	local object, option = self.object, self.option;
	
	local colors = object:getOption(option);
	colors[1], colors[2], colors[3] = r, g, b;
	colors[4] = a;
	object:setOption(option, colors, not self.global);
	self.normalTexture:SetVertexColor(r, g, b);
end

local function colorSwatchColor()
	local self = ColorPickerFrame.object;
	local r, g, b = ColorPickerFrame:GetColorRGB();
	local object, option = self.object, self.option;
	
	local colors = object:getOption(option);
	colors[1], colors[2], colors[3] = r, g, b;
	object:setOption(option, colors, not self.global);
	self.normalTexture:SetVertexColor(r, g, b);
end

local function colorSwatchOpacity()
	local self = ColorPickerFrame.object;
	local a = OpacitySliderFrame:GetValue();
	local object, option = self.object, self.option;
	
	local colors = object:getOption(option);
	colors[4] = a;
	object:setOption(option, colors, not self.global);
end

local function colorSwatchShow(self)
	local r, g, b, a;
	local color = self.object:getOption(self.option);
	if ( color ) then
		r, g, b, a = unpack(color);
	else
		r, g, b, a = 1, 1, 1, 1;
	end
	
	self.r, self.g, self.b, self.opacity = r, g, b, a;
	self.opacityFunc = colorSwatchOpacity;
	self.swatchFunc = colorSwatchColor;
	self.cancelFunc = colorSwatchCancel;
	self.hasOpacity = self.hasAlpha;
	
	ColorPickerFrame.object = self;
	UIDropDownMenuButton_OpenColorPicker(self);
	ColorPickerFrame:SetFrameStrata("TOOLTIP");
	ColorPickerFrame:Raise();
end

local function colorSwatchOnClick(self)
	CloseMenus();
	colorSwatchShow(self);
end

local function colorSwatchOnEnter(self)
	self.bg:SetVertexColor(1, 0.82, 0);
end

local function colorSwatchOnLeave(self)
	self.bg:SetVertexColor(1, 1, 1);
end

objectHandlers.colorswatch = function(self, parent, name, virtual, option, alpha)
	local swatch = CreateFrame("Button", name, parent, virtual);
	local bg = swatch:CreateTexture(nil, "BACKGROUND");
	local normalTexture = swatch:CreateTexture(nil, "ARTWORK");
	
	normalTexture:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch");
	normalTexture:SetAllPoints(swatch);
	swatch:SetNormalTexture(normalTexture);
	bg:SetTexture(1, 1, 1);
	bg:SetPoint("TOPLEFT", swatch, 1, -1);
	bg:SetPoint("BOTTOMRIGHT", swatch, 0, 1);
	
	local color = self:getOption(option);
	if ( color ) then
		normalTexture:SetVertexColor(color[1], color[2], color[3]);
	end
	
	swatch.bg, swatch.normalTexture = bg, normalTexture;
	swatch.object, swatch.option, swatch.hasAlpha = self, option, alpha;
	
	swatch:SetScript("OnLeave", colorSwatchOnLeave);
	swatch:SetScript("OnEnter", colorSwatchOnEnter);
	swatch:SetScript("OnClick", colorSwatchOnClick);
	return swatch;
end

-- Set an anchor based on frame and anchor string
local function setAnchor(frame, str)
	local rel, pt, xoff, yoff, relpt = "";
	local tmpVal, found;
	
	for key, value in iterator(str, colonMatch) do
		-- Offsets
		if ( not yoff ) then
			tmpVal = tonumber(value);
			if ( tmpVal ) then
				if ( xoff ) then
					yoff = tmpVal;
				else
					xoff = tmpVal;
				end
				found = true;
			end
		end
		
		-- Points
		if ( not found and not relpt ) then
			tmpVal = points[value];
			if ( tmpVal ) then
				if ( not pt ) then
					pt = tmpVal;
				else
					relpt = tmpVal;
				end
				found = true;
			end
		end
		
		-- Relative object
		if ( not found ) then
			rel = value;
		end
		found = nil;
	end
	
	if ( not relpt ) then
		relpt = pt;
	end
	
	local parent = frame:GetParent();
	if ( pt == "all" ) then
		frame:SetAllPoints( ( parent and parent[rel] ) or _G[rel] or parent);
	else
		frame:SetPoint(pt, ( parent and parent[rel] ) or _G[rel] or parent, relpt, xoff, yoff);
	end
end

-- Sets a few predefined attributes; abstracted for easier caching
local function setAttributes(self, parent, frame, identifier, option, global, strata, width, height, movable, clamped, hidden, anch1, anch2, anch3, anch4)

	-- Object
	frame.object = self;
	
	-- Parent
	frame.parent = parent;
	
	-- Identifier
	if ( identifier ) then
	
		if ( parent ) then
			parent[identifier] = frame;
		end
		
		if ( tonumber(identifier) ) then
			local setID = frame.SetID;
			if ( setID ) then
				setID(frame, identifier);
			end
		end
	end
	
	-- Option
	frame.option = option;
	frame.global = global;
	
	-- Strata
	if ( strata ) then
		frame:SetFrameStrata(strata);
	end
	
	-- Width & Height
	if ( width ) then
		frame:SetWidth(width);
		frame:SetHeight(height);
	end
	
	-- Movable
	if ( movable ) then
		frame:SetMovable(true);
	end
	
	-- Clamped
	if ( clamped ) then
		frame:SetClampedToScreen(true);
	end
	
	-- Hidden
	if ( hidden ) then
		frame:Hide();
	end
	
	-- Anchors
	if ( anch1 ) then
		frame:ClearAllPoints();
		setAnchor(frame, anch1);
		if ( anch2 ) then
			setAnchor(frame, anch2);
			if ( anch3 ) then
				setAnchor(frame, anch3);
				if ( anch4 ) then
					setAnchor(frame, anch4);
				end
			end
		end
	end
end

-- Converts a string value to proper lua values
local getConversionTable;
local function convertValue(str)
	if ( not str ) then
		return;
	elseif ( str == "true" ) then
		return true;
	elseif ( str == "false" ) then
		return false;
	elseif ( strlen(str) > 0 ) then
		local tmp = tonumber(str);
		if ( not tmp ) then
			return getConversionTable(splitString(str, commaSeparator));
		end
		return tmp;
	else
		return "";
	end
end

-- Takes a bunch of values, converts them and stores them in a table
getConversionTable = function(...) -- local (see declaration above convertValue)
	local num = select('#', ...);
	if ( num > 1 ) then
		local tbl = { };
		for i = 1, num, 1 do
			tinsert(tbl, convertValue(select(i, ...)));
		end
		return tbl;
	end
	return ...;
end

-- General object handler for doing the most basic work
local specialAttributes = { };
local function generalObjectHandler(self, specializedHandler, str, parent, initialValue, overrideName)
	-- See if we have this cached
	if ( frameCache[str] ) then
		return frameCache[str]();
	end
	
	-- Make sure we don't have any saved attributes from before
	lib:clearTable(specialAttributes);
	
	-- Parse the things we want first of all
	-- Any object handler can have up to 6 special, object-specific attributes
	local identifier, name, explicitParent, option, defaultValue, global, strata, width, 
		height, movable, clamped, hidden, cache, virtual, localInherit;
	local anch1, anch2, anch3, anch4, specFound;
	local found;
	for key, value in iterator(str, numberMatch) do
	
		-- Movable
		if ( value == "movable" ) then
			movable = true;
		-- Clamped
		elseif ( value == "clamped" ) then
			clamped = true;
		-- Hidden
		elseif ( value == "hidden" ) then
			hidden = true;
		-- Cache
		elseif ( value == "cache" ) then
			cache = true;
		else
			-- Identifier
			if ( not found and not identifier ) then
				local i, id = splitString(value, colonSeparator);
				if ( i == "i" and id ) then
					identifier = id;
					found = true;
				end
			end
			
			-- Option
			if ( not found and not option ) then
				local o, opt, def, glb = splitString(value, colonSeparator);
				if ( o == "o" and opt ) then
					option = opt;
					if ( def ) then
						defaultValue = convertValue(def);
					end
					if ( glb ) then
						global = true;
					end
					found = true;
				end
			end
			
			-- Strata
			if ( not found and not strata ) then
				local st, strta = splitString(value, colonSeparator);
				if ( st == "st" and strta ) then
					strata = strta;
					found = true;
				end
			end
			
			-- Virtual (inherit)
			if ( not found and not virtual ) then
				local v, inherit = splitString(value, colonSeparator);
				if ( v == "v" and inherit ) then
					virtual = inherit;
					found = true;
				end
			end
			
			-- Local Virtual (inherit from table)
			if ( not found and not localInherit ) then
				local li, inherit = splitString(value, colonSeparator);
				if ( li == "li" and inherit ) then
					localInherit = inherit;
					found = true;
				end
			end
			
			-- Name
			if ( not found and not name ) then
				local n, frameName = splitString(value, colonSeparator);
				if ( n == "n" and frameName ) then
					name = frameName;
					found = true;
				end
			end
			
			-- Parent
			if ( not found and not explicitParent ) then
				local p, parentName = splitString(value, colonSeparator);
				if ( p == "p" and parentName ) then
					if ( parentName == "nil" ) then
						explicitParent = "nil";
					else
						explicitParent = _G[parentName];
					end
					found = true;
				end
			end
			
			-- Width & Height
			if ( not found and not width ) then
				local s, w, h = splitString(value, colonSeparator);
				w, h = tonumber(w), tonumber(h);
				if ( s == "s" and w and h ) then
					width, height = w, h;
					found = true;
				end
			end
			
			-- Anchors
			if ( not found and not anch4 and not specFound ) then
				local a = splitString(value, colonSeparator) or value;
				if ( points[a] ) then
					if ( not anch1 ) then
						anch1 = value;
					elseif ( not anch2 ) then
						anch2 = value;
					elseif ( not anch3 ) then
						anch3 = value;
					elseif ( not anch4 ) then
						anch4 = value;
					end
					found = true;
				end
			end
			
			-- Special attributes
			if ( not found ) then
				tinsert(specialAttributes, value);
				specFound = true;
			end
		end
		found = nil;
	end
	
	-- Make sure we have valid values
	if ( explicitParent == "nil" ) then
		parent = nil;
	else
		parent = explicitParent or parent or UIParent;
	end
	
	-- Check override name
	name = overrideName or name;
	
	anch1 = anch1 or "mid";
	
	-- Set default value
	if ( option and defaultValue ) then
		defaultValues[self.name.."-"..option] = defaultValue;
	end
	
	-- Create our frame
	local frame = specializedHandler(self, parent, name, virtual, option, unpack(specialAttributes));
	
	-- Grab any local inherits
	if ( localInherit ) then
		lib:getFrame(initialValue[localInherit], frame);
	end
	
	if ( not frame ) then
		-- Return if we don't have a frame - useful for backdrops etc.
		return;
		
	elseif ( cache ) then
		-- Cache if requested
		local cacheAttributes = {};
		for k, v in ipairs(specialAttributes) do
			tinsert(cacheAttributes, v);
		end
		local cacheFunc = function()
			local frame = specializedHandler(self, parent, name, virtual, option, unpack(cacheAttributes));
			if ( localInherit ) then
				lib:getFrame(initialValue[localInherit], frame);
			end
			setAttributes(self, parent, frame, identifier, option, global, strata, width, height, movable, clamped, hidden, anch1, anch2, anch3, anch4);
			return frame;
		end
		frameCache[str] = cacheFunc;
	end
	
	-- Apply our attributes
	setAttributes(self, parent, frame, identifier, option, global, strata, width, height, movable, clamped, hidden, anch1, anch2, anch3, anch4);
	
	return frame;
	
end

-- Parse attributes from a string
local function parseStringAttributes(self, str, parent, initialValue, overrideName)
	local objectType, remStr = strmatch(str, numberMatch);
	local handler = objectHandlers[objectType or str];
	if ( handler ) then
		return generalObjectHandler(self, handler, remStr, parent, initialValue, overrideName);
	end
end

local function getFrame(self, value, origParent, initialValue, overrideName)
	local parent = origParent;
	local valueType = type(value);
	if ( valueType == "function" ) then
		-- We have a function; parse its two return values instead
		local key, val = value();
		parent = parseStringAttributes(self, key, parent, val, overrideName);
		if ( parent ) then
			getFrame(self, val, parent, val);
		end
		return parent;
	elseif ( valueType == "table" ) then
		-- We have a table, iterate through it
		local lower;
		for key, value in pairs(value) do
			lower = strlower(key);
			if ( lower == "postclick" or lower == "preclick" or match(key, "^on") ) then
				if ( parent ) then
					parent:SetScript(key, value);
					if ( lower == "onload" ) then
						parent.execOnLoad = true;
					end
				end
			else
				local parent = parent;
				if ( tonumber(key) == nil ) then
					parent = parseStringAttributes(self, key, parent, initialValue, overrideName);
				end
				getFrame(self, value, parent, initialValue);
			end
		end
	elseif ( valueType == "string" ) then
		-- Parse it directly
		local found;
		for key, val in iterator(value, pipeMatch) do
			-- We have more than one value, parse each bit
			found = true;
			parseStringAttributes(self, val, parent, initialValue, overrideName);
		end
		if ( not found ) then
			-- We have only one value, parse it all at once
			parseStringAttributes(self, value, parent, initialValue, overrideName);
		end
		return parent;
	end
	
	-- Call any OnLoad/OnShow we might have after having recursed through all parents
	if ( parent ) then
		local getScript = parent.GetScript;
		if ( getScript ) then
--			local oldThis = this;
--			this = parent;
			local onLoad = getScript(parent, "OnLoad");
			if ( parent.execOnLoad and type(onLoad) == "function" ) then
				onLoad(parent);
			end
			
			if ( parent:IsVisible() ) then
				local onShow = getScript(parent, "OnShow");
				if ( type(onShow) == "function" ) then
					onShow(parent);
				end
			end
--			this = oldThis;
		end
		parent.execOnLoad = nil;
	end
	return parent;
end

function lib:getFrame(value, parent, name)
	return getFrame(self, value, parent, value, name);
end

-- Functions for building frames with object details strings.
-- These functions keep track of the yoffsets and the frame sizes.
--
-- These are not required, but they can make it easier for you
-- to reorganize the object details strings in your source code
-- without having to manually recalculate the yoffset values
-- and frame sizes, and then update each detail string.
--
-- By using the following macros, you can have certain values
-- inserted into object details strings:
-- %%s == size of the UI object or frame.
-- %%y == y offset of the top of the UI object or frame.
-- %%b == y offset below the UI object or frame.
--
-- 1) Call lib:framesInit() to get a table that will be passed to each of the other functions.
-- 2) Call the other functions as needed.
-- 3) Call lib:framesGetData() to get the final table of data to use.

function lib:framesInit()
	-- Initialize and return a table used with the other functions below.
	-- This should be the first function to be called.
	local framesList = {};

	-- Dummy frame representing a master frame.
	local frame = {};
	frame.offset = 0;
	frame.size = 0;
	frame.details = "";
	frame.yoffset = 0;
	frame.top = 0;
	frame.data = {};

	tinsert(framesList, frame);

	return framesList;
end

function lib:framesGetData(framesList)
	-- Get the frame data table.
	-- This should be the last function to be called.
	--
	-- framesList == Value returned from lib:framesInit() (required).
	--
	-- The frame.data table contains the data needed to build a set of frames.
	-- Each element's key is a details string used to build a frame.
	-- Each element's value is a table of details strings that will become children of the frame.
	if (#framesList > 1) then
		print(self.name .. ": framesEndFrame missing.");
	end
	local frame = framesList[#framesList];
	return frame.data;
end

function lib:framesAddFrame(framesList, offset, size, details, data)
	-- Begin and end adding a frame.
	self:framesBeginFrame(framesList, offset, size, details, data);
	self:framesEndFrame(framesList);
end

function lib:framesAddObject(framesList, offset, size, details)
	-- Add a UI object to the current frame.
	--
	-- framesList == Value returned from lib:framesInit() (required).
	-- offset == Offset relative to the previous frame or object (can be positive or negative) (required).
	-- size == Size of this object (required).
	-- details == Object details string used to build the object (required).
	local frame = framesList[#framesList];
	local yoffset = frame.yoffset + offset;

	details = gsub(details, "%%y", yoffset);
	details = gsub(details, "%%b", yoffset - size);
	details = gsub(details, "%%s", size);
	tinsert(frame.data, details);

	frame.yoffset = yoffset - size;
end

function lib:framesAddScript(framesList, name, func)
	-- Add a script to the current frame.
	--
	-- framesList == Value returned from lib:framesInit() (required).
	-- name == Script name (for example: "onload") (required).
	-- func == Function to call (required).
	local frame = framesList[#framesList];
	frame.data[name] = func;
end

function lib:framesBeginFrame(framesList, offset, size, details, data)
	-- Begin adding a frame.
	-- Remember to call lib:framesEndFrame() when you are finished adding items to the frame.
	--
	-- framesList == Value returned from lib:framesInit() (required).
	-- offset == Offset relative to the previous frame or object (can be positive or negative) (required).
	-- size == Size of this frame (0 == Size will be calculated during lib:framesEndFrame()) (required).
	-- details == Object details string used to build the frame (required).
	-- data == Table of object details strings that will become the children of the frame (optional).
	local yoffset;
	local prevFrame = framesList[#framesList];
	if (prevFrame) then
		yoffset = prevFrame.yoffset;
	else
		yoffset = 0;
	end
	yoffset = yoffset + offset;

	local frame = {};
	frame.offset = offset;
	frame.size = size;
	frame.details = details;
	frame.yoffset = 0;
	frame.top = yoffset;
	frame.data = data or {};

	tinsert(framesList, frame);
end

function lib:framesEndFrame(framesList)
	-- End adding a frame.
	--
	-- framesList == Value returned from lib:framesInit() (required).
	if (#framesList <= 1) then
		print(self.name .. ": framesEndFrame found with no matching framesBeginFrame.");
		return;
	end
	local frame = tremove(framesList);

	local size = frame.size;
	local top = frame.top;
	local below;
	if (size == 0) then
		below = top + frame.yoffset;
		size = top - below;
	else
		below = top - size;
	end

	local details = frame.details;

	details = gsub(details, "%%y", top);
	details = gsub(details, "%%b", below);
	details = gsub(details, "%%s", size);

	local prevFrame = framesList[#framesList];
	prevFrame.yoffset = below;
	prevFrame.data[details] = frame.data;
end

-- End Frame Creation
-----------------------------------------------

-----------------------------------------------
-- Control Panel

CT_LIBRARY_THANKYOU = "Thank You!";
CT_LIBRARY_INTRODUCTION = "Thank you for using CTMod. You can open this window with /ct or /ctmod. Below is a listing of mods that have registered "..
	"themselves. Click a mod to bring up a list of its available options.";

local controlPanelFrame;
local selectedModule;
local previousModule;

-- Resizes the frame smoothly
local function resizer(self, elapsed)
	local width = self.width;
	if ( width < 630 ) then
		-- Set Width
		local newWidth = min(width + 705 * elapsed, 635); -- Resize to 620 over ~0.9 sec
		self:SetWidth(newWidth);
		self.width = newWidth;
	else
		-- Set Alpha
		local alpha = self.alpha;
		if ( alpha < 1 ) then
			local newAlpha = min(alpha + 1.25 * elapsed, 1); -- Set to 100% opacity over 0.8 sec
						
			self.options:SetAlpha(newAlpha);
			self.alpha = newAlpha;
		else
			-- We're done, disable the function
			self:SetScript("OnUpdate", nil);
		end
	end
end

local function selectControlPanelModule(self)
	local parent = self.parent;
	local newModule = self:GetID();
	PlaySound("UChatScrollButton");
	
	local module = modules[newModule];
	local optionsFrame = module.frame;
	local isExternal = module.external;
	
	if ( not module or not optionsFrame ) then
		return;
	end
	
	if ( not isExternal ) then
		-- Highlight the correct bullet
		self.bullet:SetVertexColor(1, 0, 0);
		local obj, module;
		local num = 0;
		for key, value in ipairs(modules) do
			if ( value.frame ) then
				num = num + 1;
				obj = parent[tostring(num)];
				if ( obj ~= self ) then
					if ( value.external ) then
						obj.bullet:SetVertexColor(1, 0.41, 0);
					else
						obj.bullet:SetVertexColor(1, 0.82, 0);
					end
				end
			end
		end
	end
	
	local frameType = type(optionsFrame);
	local options = controlPanelFrame.options;
	
	-- Check if this is a function. If so, parse it.
	if ( frameType == "function" ) then
		if ( not isExternal ) then
			optionsFrame = module:getFrame(optionsFrame, options.scrollchild);
			options.scroll:UpdateScrollChildRect();
			module.frame = optionsFrame;
			if ( selectedModule ) then
				optionsFrame:Hide(); -- To call the OnShow/OnHide methods in proper order
			end
		else
			optionsFrame = module:getFrame(optionsFrame, UIParent);
			module.frame = optionsFrame;
		end
	elseif ( frameType == "string" ) then
		optionsFrame = _G[optionsFrame];
	end

	parent = parent.parent;
	local title = module.optionsName or (module.name .. " Options");
	if ( not selectedModule ) then
		-- First selection, resize the window smoothly
		if ( not isExternal ) then
			parent.width = 300;
			parent.alpha = 0;
			parent:SetScript("OnUpdate", resizer);

			local options = parent.options;
			options:SetAlpha(0);
			options:Show();
			options.title:SetText(title);
		end
	elseif ( not isExternal ) then
		parent.options.title:SetText(title);
		-- Hide the current frame
		local frame = parent.selectedModuleFrame;
		if ( frame ) then
			frame:Hide();
		end
	end
	
	optionsFrame:Show();
	if ( not isExternal ) then
		parent.selectedModuleFrame = optionsFrame;
		options.scroll:UpdateScrollChildRect();
		selectedModule = newModule;
		-- Reset options window scrollbar thumb position when user selects a different module.
		if (previousModule ~= selectedModule) then
			local scrollbar = _G[options.scroll:GetName().."ScrollBar"];
			scrollbar:SetValue(0);
			previousModule = selectedModule;
		end
	else
		optionsFrame:Raise();
		controlPanelFrame:Hide();
	end
end

local function controlPanelSkeleton()
	local modListButtonTemplate = {
		"font#i:text#v:ChatFontNormal#l:17:0",
		"font#i:version#r:-5:0##0.65:0.65:0.65",
		"texture#i:bullet#l:4:-1#s:7:7#1:1:1",
		["onload"] = function(self)
			self.bullet:SetVertexColor(1, 0.82, 0);
			self:SetFontString(self.text);
		end,
		["onenter"] = function(self)
			local hover = self.parent.hover;
			hover:ClearAllPoints();
			hover:SetPoint("RIGHT", self);
			hover:Show();
		end,
		["onleave"] = function(self)
			self.parent.hover:Hide();
		end,
		["onclick"] = selectControlPanelModule,
	};
	return "frame#st:DIALOG#n:CTCONTROLPANEL#clamped#movable#t:mid:0:400#s:300:495", {
		"backdrop#tooltip#0:0:0:0.75",
		["onshow"] = function(self)
			local module, obj;
			
			-- Prepare the frame
			local selectedModuleFrame = self.selectedModuleFrame;
			selectedModule = nil;
			
			self:SetWidth(300);
			self.options:Hide();
			self.selectedModuleFrame = nil;
			
			-- Show/Hide our bullets
			local listing = self.listing;
			local num = 0;
			local version;
			for i = 1, #modules, 1 do
				module = modules[i];
				if ( module.frame ) then
					num = num + 1;
					version = module.version;
					obj = listing[tostring(num)];
					obj:SetID(i);
					obj:Show();
					obj:SetText(module.name);
					
					if ( version and version ~= "" ) then
						obj.version:SetText("|c007F7F7Fv|r"..module.version);
					end
					if ( module.external ) then
						obj.bullet:SetVertexColor(1, 0.41, 0);
					else
						obj.bullet:SetVertexColor(1, 0.82, 0);
					end
					
					if ( num == 14 ) then
						break;
					end
				end
			end
			for i = num + 1, 14, 1 do
				listing[tostring(i)]:Hide();
			end
			PlaySound("UChatScrollButton");
			eventHandler(lib, "CONTROL_PANEL_VISIBILITY", true);
		end,
		["onhide"] = function(self)
			PlaySound("UChatScrollButton");
			local selectedModuleFrame = self.selectedModuleFrame;
			if ( selectedModuleFrame ) then
				selectedModuleFrame:Hide();
			end
			eventHandler(lib, "CONTROL_PANEL_VISIBILITY");
		end,
		["button#tl:4:-5#br:tr:-4:-25"] = {
			"font#tl#br:bl:296:0#CTMod Control Panel v"..LIBRARY_VERSION,
			"texture#i:bg#all#1:1:1:0.25#BACKGROUND",
			["button#tr:3:6#v:UIPanelCloseButton"] = {
				["onclick"] = function(self) HideUIPanel(self.parent.parent); end
			},
			["onenter"] = function(self)
				lib:displayPredefinedTooltip(self, "DRAG");
				self.bg:SetVertexColor(1, 0.9, 0.5);
			end,
			["onleave"] = function(self)
				lib:hideTooltip();
				self.bg:SetVertexColor(1, 1, 1);
			end,
			["onmousedown"] = function(self, button)
				if ( button == "LeftButton" ) then
					self.parent:StartMoving();
				end
			end,
			["onmouseup"] = function(self, button)
				if ( button == "LeftButton" ) then
					self.parent:StopMovingOrSizing();
				elseif ( button == "RightButton" ) then
					local parent = self.parent;
					parent:ClearAllPoints();
					parent:SetPoint("CENTER", UIParent);
				end
			end,
		},
		["frame#s:300:0#tl:15:-30#b:0:15#i:listing"] = {
			"font#tl:-6:0#s:285:60#CT_LIBRARY_INTRODUCTION#tl",
			"texture#tl:0:-64#br:tr:-25:-65#1:1:1",
			"font#tl:-3:-69#v:GameFontNormalLarge#Mod Listing:",
			"texture#i:hover#l:5:0#s:290:25#hidden#1:1:1:0.125",
			"texture#i:select#l:5:0#s:290:25#hidden#1:1:1:0.25",
			"font#b:-10:-5#CTMod - www.ctmod.net#0.72:0.36:0",
			["button#i:1#hidden#s:263:25#tl:17:-85"] = modListButtonTemplate,
			["button#i:2#hidden#s:263:25#tl:17:-110"] = modListButtonTemplate,
			["button#i:3#hidden#s:263:25#tl:17:-135"] = modListButtonTemplate,
			["button#i:4#hidden#s:263:25#tl:17:-160"] = modListButtonTemplate,
			["button#i:5#hidden#s:263:25#tl:17:-185"] = modListButtonTemplate,
			["button#i:6#hidden#s:263:25#tl:17:-210"] = modListButtonTemplate,
			["button#i:7#hidden#s:263:25#tl:17:-235"] = modListButtonTemplate,
			["button#i:8#hidden#s:263:25#tl:17:-260"] = modListButtonTemplate,
			["button#i:9#hidden#s:263:25#tl:17:-285"] = modListButtonTemplate,
			["button#i:10#hidden#s:263:25#tl:17:-310"] = modListButtonTemplate,
			["button#i:11#hidden#s:263:25#tl:17:-335"] = modListButtonTemplate,
			["button#i:12#hidden#s:263:25#tl:17:-360"] = modListButtonTemplate,
			["button#i:13#hidden#s:263:25#tl:17:-385"] = modListButtonTemplate,
			["button#i:14#hidden#s:263:25#tl:17:-410"] = modListButtonTemplate,
		},
		["frame#s:315:0#tr:-15:-30#b:0:15#i:options#hidden"] = {
			["onload"] = function(self)
				local child = CreateFrame("Frame", nil, self);
				child:SetPoint("TOPLEFT", self);
				child:SetWidth(300);
				child:SetHeight(450);
				self.scrollchild = child;
				
				local scroll = CreateFrame("ScrollFrame", "CT_LibraryOptionsScrollFrame", self, "UIPanelScrollFrameTemplate");
				scroll:SetPoint("TOPLEFT", self, 0, 4);
				scroll:SetPoint("BOTTOMRIGHT", self, -12, -10);
				scroll:SetScrollChild(child);
				self.scroll = scroll;

				local tex = scroll:CreateTexture(scroll:GetName() .. "Track", "BACKGROUND");
				tex:SetTexture(0, 0, 0, 0.3);
				tex:ClearAllPoints();
				tex:SetPoint("TOPLEFT", _G[scroll:GetName().."ScrollBar"], -1, 17);
				tex:SetPoint("BOTTOMRIGHT", _G[scroll:GetName().."ScrollBar"], 0, -17);
			end,
			"texture#tl:-5:0#br:bl:-4:0#1:1:1",
			"font#t:0:20#i:title",
		},
	};
end

local function displayControlPanel()
	if ( not controlPanelFrame ) then
		controlPanelFrame = lib:getFrame(controlPanelSkeleton);
		tinsert(UISpecialFrames, controlPanelFrame:GetName());
	end
	controlPanelFrame:Show();
end

function lib:showControlPanel(show)
	if ( show == "toggle" ) then
		if ( controlPanelFrame and controlPanelFrame:IsVisible() ) then
			show = false;
		end
	end
	
	if ( show ~= false ) then
		displayControlPanel();
	elseif ( controlPanelFrame ) then
		controlPanelFrame:Hide();
	end
end

-- Show the CTMod control panel options for the specified addon name.
function lib:showModuleOptions(modname)
	-- Show the control panel
	self:showControlPanel(true);
	-- Look up the addon name to deterine which button to click.
	local listing = CTCONTROLPANEL.listing;
	local button;
	local num = 0;
	for i, v in ipairs(modules) do
		if (v.frame) then
			num = num + 1;
			if (v.name == modname) then
				button = listing[tostring(num)];
				break;
			end
		end
	end
	if (button) then
		-- Click the addon's button to open the options
		button:Click();
	end
end

-- We don't want multiple copies of the control panel slash commands
-- when we have multiple versions of CT_Library.
-- We need to search for and replace the existing slash commands from
-- earlier versions of CT_Library, with the ones for this version of
-- CT_Library.
-- If there were no existing slash commands that match, then these
-- new ones will get added.
lib:updateSlashCmd(displayControlPanel, "/ct", "/ctmod");

-- End Control Panel
-----------------------------------------------

-----------------------------------------------
-- Importing

-- Initialization
local module = { };
module.name = "|c00FFFFCCSettings Import|r";
module.optionsName = "Settings Import";
module.version = "";
-- Register as module 1 only, since this will code will get executed once per different
-- version of CT_Library. We don't want multiple copies showing up in the
-- control panel.
registerModule(module, 1);

local optionsFrame, addonsFrame, fromChar;

-- Dropdown Handling
local dropdownEntry, flaggedCharacters;
local importRealm, importSetPlayer;
local importRealm2;
local importPlayerCount;

local function populateAddonsList(char)
	local importButton, num, obj, options;
	local deleteButton;
	local numAddons;
	importButton = optionsFrame.importButton;
	deleteButton = optionsFrame.deleteButton;
	num = 0;
	for key, value in ipairs(modules) do
		if ( value ~= module ) then
			options = value.options;
			if ( options and options[char] ) then
				num = num + 1;
				obj = addonsFrame[tostring(num)];
				obj:Show();
				obj:SetChecked(false);
				obj.text:SetText(value.name);
			end
		end
	end

	numAddons = num;
	num = num + 1;

	-- Position action frame
	obj = optionsFrame.actions;
	obj:ClearAllPoints();
	obj:SetPoint("TOPLEFT", optionsFrame, "TOPLEFT", 0, -105 + (-20 * num));
	obj:SetWidth(300)
	obj:SetHeight(150)
	--obj:SetPoint("RIGHT", optionsFrame);
	obj:Show()

	-- Hide unused addon objects
	while ( true ) do
		obj = addonsFrame[tostring(num)];
		if ( not obj ) then
			break;
		end
		
		obj:Hide();
		num = num + 1;
	end

	fromChar = char;
	addonsFrame:Show();

	return numAddons;
end

local function populateCharDropdownInit()
	local players = {};
	local name, realm, options;

	if ( not dropdownEntry ) then
		dropdownEntry = { };
		flaggedCharacters = { };
	else
		lib:clearTable(dropdownEntry);
		lib:clearTable(flaggedCharacters);
	end
	
	-- Prevent ourself from being added
	flaggedCharacters[getCharKey()] = true;

	for key, value in ipairs(modules) do
		options = value.options;
		if ( options ) then
			for k, v in pairs(options) do
				if ( not flaggedCharacters[k] ) then
					name, realm = k:match("^CHAR%-([^-]+)%-(.+)$");
					if ( name and realm and realm == importRealm ) then
						flaggedCharacters[k] = true;
						tinsert(players, k);
					end
				end
			end
		end
	end
	sort(players);

	importPlayerCount = 0;

	for key, value in ipairs(players) do
		name, realm = value:match("^CHAR%-([^-]+)%-(.+)$");
		if ( name and realm ) then
			dropdownEntry.text = name; -- .. ", " .. realm;
			dropdownEntry.value = value;
			dropdownEntry.checked = nil;
			dropdownEntry.func = dropdownClick;
			UIDropDownMenu_AddButton(dropdownEntry);

			importPlayerCount = importPlayerCount + 1;
		end
	end

	if (importSetPlayer) then
		if (importRealm) then
			local value = players[1];
			UIDropDownMenu_SetSelectedValue(CT_LibraryDropdown1, value);
			populateAddonsList(value);
		end
	end

	if (importPlayerCount == 0) then
		CT_LibraryDropdown1:Hide();
		CT_LibraryDropdown1Label:SetText("No characters found.");
	else
		CT_LibraryDropdown1:Show();
		CT_LibraryDropdown1Label:SetText("Character:");
	end
end

local function populateCharDropdown()
	UIDropDownMenu_Initialize(CT_LibraryDropdown1, populateCharDropdownInit);
end

local function populateServerDropdownInit()
	local servers = {};
	local serversort = {};
	local name, realm, options;

	if ( not dropdownEntry ) then
		dropdownEntry = { };
		flaggedCharacters = { };
	else
		lib:clearTable(dropdownEntry);
		lib:clearTable(flaggedCharacters);
	end
	
	-- Prevent ourself from being added
	flaggedCharacters[getCharKey()] = true;

	for key, value in ipairs(modules) do
		options = value.options;
		if ( options ) then
			for k, v in pairs(options) do
				if ( not flaggedCharacters[k] ) then
					name, realm = k:match("^CHAR%-([^-]+)%-(.+)$");
					if ( name ) then
						flaggedCharacters[k] = true;
						if (not servers[realm]) then
							servers[realm] = 1;
						else
							servers[realm] = servers[realm] + 1;
						end
					end
				end
			end
		end
	end
	for k, v in pairs(servers) do
		tinsert(serversort, k);
	end
	sort(serversort);

	for key, value in ipairs(serversort) do
		dropdownEntry.text = value .. " (" .. servers[value] .. ")";
		dropdownEntry.value = value;
		dropdownEntry.checked = nil;
		dropdownEntry.func = dropdownClick;
		UIDropDownMenu_AddButton(dropdownEntry);
	end

	importPlayerCount = 0;

	if (not importRealm) then
		local value = serversort[1];
		if (importRealm2) then
			value = importRealm2;
		end
		UIDropDownMenu_SetSelectedValue(CT_LibraryDropdown0, value);
		module:update("char", value);
		-- CT_LibraryDropdown1Label:Hide();
		-- CT_LibraryDropdown1:Hide();
	end

	if (#serversort == 0) then
		CT_LibraryDropdown0:Hide();
		CT_LibraryDropdown0Label:SetText("No servers found.");
	else
		CT_LibraryDropdown0:Show();
		CT_LibraryDropdown0Label:SetText("Server:");
	end
end

local function populateServerDropdown()
	UIDropDownMenu_Initialize(CT_LibraryDropdown0, populateServerDropdownInit);
end

local function hideAddonsList()
	local num, obj, options;

	optionsFrame.actions:Hide();

	num = 1;
	while ( true ) do
		obj = addonsFrame[tostring(num)];
		if ( not obj ) then
			break;
		end
		
		obj:Hide();
		num = num + 1;
	end
	addonsFrame:Hide();
end

local function addonIsChecked(name)
	local num, obj;
	num = 1;
	while ( true ) do
		obj = addonsFrame[tostring(num)];
		if ( not obj or not obj:IsVisible() ) then
			return false;
		end
		
		if ( obj.text:GetText() == name ) then
			return obj:GetChecked();
		end
		num = num + 1;
	end
end

local function clearUserSettings(key, addon)
	local options = addon.options[key];
	if ( options ) then
		lib:clearTable(options);
	end
end

local function import()
	if ( fromChar ) then
		if (not module:getOption("canImport")) then
			return;
		end
		local charKey = getCharKey();
		local options, success;
		local fromOptions;
		
		for modnum, addon in ipairs(modules) do
			options = addon.options;
			if ( options and addon ~= module ) then
				fromOptions = options[fromChar];
				if ( fromOptions and addonIsChecked(addon.name) and module:getOption("canImport") ) then
					options[charKey] = {};
					lib:copyTable(fromOptions, options[charKey]);
					success = true;
				end
			end
		end
		
		module:setOption("canImport", nil, true);

		if ( success ) then
			ConsoleExec("reloadui");
		else
			print("No addons are selected.");
		end
	end
end

local function delete()
	if ( fromChar ) then
		if (not module:getOption("canDelete")) then
			return;
		end
		local charKey = getCharKey();
		local options, success;
		local fromOptions;
		
		for modnum, addon in ipairs(modules) do
			options = addon.options;
			if ( options and addon ~= module ) then
				fromOptions = options[fromChar];
				if ( fromOptions and addonIsChecked(addon.name) and module:getOption("canDelete") ) then
					options[fromChar] = nil;
					success = true;
				end
			end
		end
		
		module:setOption("canDelete", nil, true);

		if ( success ) then
			local count;
			count = populateAddonsList(fromChar);
			if (count == 0) then
				-- No addons left for the character.
				importRealm = nil;
				importRealm2 = UIDropDownMenu_GetSelectedValue(CT_LibraryDropdown0);
				populateServerDropdown();
				importRealm2 = nil;
				if (importPlayerCount == 0) then
					-- No players with options left on the server.
					importRealm = nil;
					populateServerDropdown();
				end
			end
		else
			print("No addons are selected.");
		end
	end
end

module.update = function(self, type, value)
	if ( type == "char" and value ) then
		local name, realm = value:match("^CHAR%-([^-]+)%-(.+)$");
		if (name and realm) then
			self:setOption("char", nil, true);
			populateAddonsList(value);
		else
			-- Server drop down
			importRealm = value;
			hideAddonsList();
			self:setOption("char", nil, true);
			-- Re initialize character pull down so it only has players from selected server.
			importSetPlayer = 1;
			populateCharDropdown();
			importSetPlayer = nil;
			CT_LibraryDropdown1Label:Show();
			CT_LibraryDropdown1:Show();
		end
	elseif (type == "canDelete") then
		local actions = optionsFrame.actions;
		if (value) then
			actions.deleteButton:Enable();
			module:setOption("canImport", nil, true);
		else
			actions.deleteButton:Disable();
		end
		actions.confirmDelete:SetChecked(value);
	elseif (type == "canImport") then
		local actions = optionsFrame.actions;
		if (value) then
			actions.importButton:Enable();
			module:setOption("canDelete", nil, true);
		else
			actions.importButton:Disable();
		end
		actions.confirmImport:SetChecked(value);
	end
end

module.frame = function()
	local addonsTable = { };
	local optionsTable = {
		"font#tl:5:-5#v:GameFontNormalLarge#Import From",

		"font#tl:20:-30#n:CT_LibraryDropdown0Label#v:ChatFontNormal#Server:",
		"dropdown#s:175:20#tl:80:-31#o:char#n:CT_LibraryDropdown0#i:serverDropdown",
		
		"font#tl:20:-55#n:CT_LibraryDropdown1Label#v:ChatFontNormal#Character:",
		"dropdown#s:175:20#tl:80:-56#o:char#n:CT_LibraryDropdown1#i:charDropdown",
		
		["onload"] = function(self)
			optionsFrame, addonsFrame = self, self.addons;

			populateServerDropdown();
			populateCharDropdown();
			
			module:setOption("canImport", nil, true);
			module:setOption("canDelete", nil, true);
		end,
		
		["frame#tl:0:-85#r#i:addons#hidden"] = addonsTable,

		["frame#i:actions#hidden"] = {
			"font#tl:5:0#i:title#v:GameFontNormalLarge#Select Action",

			"checkbutton#tl:20:-25#i:confirmImport#s:25:25#o:canImport#I want to IMPORT the selected settings.",
			["button#t:0:-50#s:155:30#i:importButton#v:UIPanelButtonTemplate#Import Settings"] = {
				["onclick"] = import
			},
			"font#t:0:-80#i:note#s:0:20#l#r#(Note: Importing settings will reload your UI)#0.5:0.5:0.5",

			"checkbutton#tl:20:-110#i:confirmDelete#s:25:25#o:canDelete#I want to DELETE the selected settings.",
			["button#t:0:-135#s:155:30#i:deleteButton#v:UIPanelButtonTemplate#Delete Settings"] = {
				["onclick"] = delete
			},
		},
	};
	
	-- Fill in our addons table
	tinsert(addonsTable, "font#tl:5:0#v:GameFontNormalLarge#Import Settings For");
	
	-- Populate with addons
	local num = 0;
	for key, value in ipairs(modules) do
		if ( value ~= module and value.options ) then
			num = num + 1;
			tinsert(addonsTable, "checkbutton#i:"..num.."#tl:20:-"..(num * 20));
		end
	end
	
	return "frame#all", optionsTable;
end
