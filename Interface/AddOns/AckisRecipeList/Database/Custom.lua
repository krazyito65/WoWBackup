--[[
************************************************************************
Custom.lua
************************************************************************
File date: 2016-07-10T18:25:40Z
File hash: 20c1e4b
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
local addon		= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L			= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-----------------------------------------------------------------------
-- Imports.
-----------------------------------------------------------------------
local Z			= private.ZONE_NAMES

function addon:InitCustom()
	local function AddCustom(identifier, zoneName, coordX, coordY, faction)
		return private.AcquireTypes.Custom:AddEntity(addon, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = identifier,
			item_list = {},
			location = zoneName,
			name = L[identifier],
		})
	end

	AddCustom("DAILY_COOKING_MEAT", 	Z.SHATTRATH_CITY)
	AddCustom("DAILY_COOKING_FISH", 	Z.SHATTRATH_CITY)
	AddCustom("DAILY_FISHING_SHATT", 	Z.SHATTRATH_CITY)
	AddCustom("DEFAULT_RECIPE")
	AddCustom("CRAFTED_ENGINEERS")
	AddCustom("ONYXIA_HEAD_QUEST", 		Z.ONYXIAS_LAIR)
	AddCustom("ENG_FLOOR_ITEM_BRD", 	Z.BLACKROCK_DEPTHS)
	AddCustom("BRD_MAIL",			Z.BLACKROCK_DEPTHS)
	AddCustom("BRD_SHOULDERS", 		Z.BLACKROCK_DEPTHS)
	AddCustom("STRATH_BS_PLANS", 		Z.STRATHOLME)
	AddCustom("DM_TRIBUTE", 		Z.DIRE_MAUL, 			59.0, 48.8)
	AddCustom("OGRI_DRAGONS", 		Z.BLADES_EDGE_MOUNTAINS)
	AddCustom("NORMAL")
	AddCustom("HEROIC")
	AddCustom("MYTHIC")
	AddCustom("KUNG")
	AddCustom("DAILY_COOKING_DAL", 		Z.DALARAN_NORTHREND)
	AddCustom("ARCH_DROP_ULD", 		Z.ULDUM)
	AddCustom("PREREQ")
	AddCustom("BANANA_INFUSED_RUM", 	Z.KRASARANG_WILDS, 		52.3, 88.7)
	AddCustom("FOUR_SENSES_BREW", 		Z.KUN_LAI_SUMMIT, 		44.7, 52.3)
	AddCustom("LEARNT_BY_ACCEPTING_QUEST")
	AddCustom("TIMELESS_ISLE_COOKING", 	Z.TIMELESS_ISLE, 		52.1, 46.1)
	AddCustom("ANCIENT_GUO-LAI_CACHE", 	Z.VALE_OF_ETERNAL_BLOSSOMS)
	AddCustom("DRAENOR_DEFAULT", 		Z.DRAENOR)
	AddCustom("WORLD_QUEST")
	AddCustom("RATED_PVP")
	AddCustom("WATERLOGGED_CACHE", 		Z.HELMOUTH_CLIFFS)
	AddCustom("SPOILS_OF_THE_WORTHY",	Z.HALLS_OF_VALOR)

	self.InitCustom = nil
end

