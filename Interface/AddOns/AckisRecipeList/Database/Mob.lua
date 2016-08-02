--[[
************************************************************************
Mob.lua
************************************************************************
File date: 2016-07-30T23:25:18Z
File hash: 24f0022
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
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-----------------------------------------------------------------------
-- Imports.
-----------------------------------------------------------------------
local BN = private.BOSS_NAMES
local Z = private.ZONE_NAMES

function addon:InitMob()
	local function AddMob(npcID, npcName, zoneName, coordX, coordY)
		private.AcquireTypes.MobDrop:AddEntity(addon, {
			coord_x = coordX,
			coord_y = coordY,
			faction = nil,
			identifier = npcID,
			item_list = {},
			location = zoneName,
			name = npcName,
		})
	end

	AddMob(9264,	L["Firebrand Pyromancer"],		Z.BLACKROCK_SPIRE,		0, 0) -- Alchemy, Tailoring
	AddMob(9736,	BN.QUARTERMASTER_ZIGRIS,		Z.BLACKROCK_SPIRE,		0, 0) -- Blacksmithing, Jewelcrafting
	AddMob(10813,	BN.BALNAZZAR,				Z.STRATHOLME,			0, 0) -- Alchemy, Tailoring
	AddMob(19168,	L["Sunseeker Astromage"],		Z.THE_MECHANAR,			0, 0) -- Alchemy, Blacksmithing
	AddMob(19755,	L["Mo'arg Weaponsmith"],		Z.SHADOWMOON_VALLEY_OUTLAND,	25.5, 31.5) -- Alchemy, Engineering
	AddMob(20878,	L["Deathforge Guardian"],		Z.SHADOWMOON_VALLEY_OUTLAND,	39.0, 47.0) -- Alchemy, Blacksmithing
	AddMob(23385,	L["Simon Unit"],			Z.BLADES_EDGE_MOUNTAINS,	33.5, 51.5) -- Enchanting, Engineering
	AddMob(24664,	BN.KAELTHAS_SUNSTRIDER,			Z.MAGISTERS_TERRACE,		0, 0) -- Alchemy, Blacksmithing, Enchanting, Engineering, Jewelcrafting, Leatherworking, Tailoring
	AddMob(50005,	L["Poseidus"],				Z.SHIMMERING_EXPANSE,		46.5, 50.0) -- Tailoring, Jewelcrafting
	AddMob(50009,	L["Mobus"],				Z.ABYSSAL_DEPTHS,		73.2, 19.2) -- Tailoring, Jewelcrafting
	AddMob(50056,	L["Garr"],				Z.MOUNT_HYJAL,			37.8, 77.2) -- Tailoring, Jewelcrafting
	AddMob(50061,	L["Xariona"],				Z.DEEPHOLM,			57.3, 62.6) -- Tailoring, Jewelcrafting
	AddMob(50063,	L["Akma'hat"],				Z.ULDUM,			38.0, 60.2) -- Tailoring, Jewelcrafting
	AddMob(50089,	L["Julak-Doom"],			Z.TWILIGHT_HIGHLANDS,		55.0, 11.4) -- Tailoring, Jewelcrafting

	self.InitMob = nil
end
