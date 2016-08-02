--[[
************************************************************************
Quest.lua
************************************************************************
File date: 2015-06-05T04:59:47Z
File hash: a9ce692
Project hash: 7bd4a74
Project version: 7.0.3.4
************************************************************************
Please see http://www.wowace.com/addons/arl/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]]--

-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private	= ...

local LibStub = _G.LibStub
local addon	= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

-----------------------------------------------------------------------
-- Imports
-----------------------------------------------------------------------
local Z = private.ZONE_NAMES

-----------------------------------------------------------------------
-- Memoizing table for quest names.
-----------------------------------------------------------------------
private.quest_names = _G.setmetatable({}, {
	__index = function(t, id_num)
		_G.GameTooltip:SetOwner(_G.UIParent, _G.ANCHOR_NONE)
		_G.GameTooltip:SetHyperlink(("quest:%s"):format(_G.tostring(id_num)))

		local quest_name = _G["GameTooltipTextLeft1"]:GetText()
		_G.GameTooltip:Hide()

		if not quest_name then
			return _G.SEARCHING
		end
		t[id_num] = quest_name
		return quest_name
	end,
})

function addon:InitQuest()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		private.AcquireTypes.Quest:AddEntity(addon, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			location = zoneName,
			name = nil, -- Handled by memoizing table above.
		})
	end

	AddQuest(8323,	Z.SILITHUS,			67.1,	69.7,	"Neutral") -- Blacksmithing, Tailoring

	self.InitQuest = nil
end
