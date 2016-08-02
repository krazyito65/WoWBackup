--------------------------------------------------------
-- Blood Legion Raidcooldowns - Initialization --
--------------------------------------------------------
local name = "BL_Cooldown"
BLCD = LibStub("AceAddon-3.0"):NewAddon(name, "AceEvent-3.0", "AceConsole-3.0", "AceBucket-3.0", "AceComm-3.0", "AceSerializer-3.0", "AceTimer-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0") -- Also for options panel
local LGIST = LibStub:GetLibrary("LibGroupInSpecT-1.1")

if not BLCD then return end

if not BLCD.events then
	BLCD.events = LibStub("CallbackHandler-1.0"):New(BLCD)
end

local frame = BLCD.frame
if (not frame) then
	frame = CreateFrame("Frame", name .. "_Frame")
	BLCD.frame = frame
end

BLCD.frame:SetScript("OnEvent", function(this, event, ...)
	BLCD[event](BLCD, ...)
end)

BLCD.frame:UnregisterAllEvents()
BLCD.frame:RegisterEvent("GROUP_ROSTER_UPDATE")
BLCD.frame:RegisterEvent("ADDON_LOADED")
BLCD.frame:RegisterEvent("PLAYER_LOGOUT")
BLCD.frame:RegisterEvent("UNIT_HEALTH")
BLCD.frame:RegisterEvent("PLAYER_ENTERING_WORLD")

function BLCD:ADDON_LOADED(name)
	if (name == "BL_Cooldown") then
		print("|cffc41f3bBlood Legion Cooldown|r: version " .. GetAddOnMetadata(name, 'Version') .. " /blcd for options")
	end
end

function BLCD:CreateRaidTables()
	BLCD.cooldownRoster = {}
	BLCD.raidRoster = BLCDrosterReload or {}
	BLCD.curr = {}
	BLCD.dead = {}
	BLCD.frame_cache = {}
	BLCD.cooldownFrameicons = {}

	--Charge tables
	BLCD['charges'] = {
	['PAL_HAOFSA'] = {},
	['PAL_HAOFPR'] = {},
	['PAL_HAOFPU'] = {},
	['PAL_HAOFSAL'] = {},
	['SHA_SPLITO'] = {},
	}

	for guid, v in pairs(BLCD['raidRoster']) do -- Clean old GUIDs
		if not guid:find("%a+-%x+-%x+") then
			BLCD['raidRoster'][guid] = nil
		end
	end
end

function BLCD:SlashProcessor_BLCD(input)
	local v1, v2 = input:match("^(%S*)%s*(.-)$")
	v1 = v1:lower()

	if v1 == "" then
		print("|cffc41f3bBlood Legion Cooldown|r:")
		print("/blcd opt - Open BLCD Options")
		print("/blcd lock - Lock/Unlock Cooldown Frame")
		print("/blcd reset - Reset all running cooldowns")
		print("/blcd ext - Manually filter extras in raid")
		print("/blcd clrext - Remove extra filtering (track all players)")
		print("/blcd rescan - Rescan the raid for talents")
		print("/blcd who - See if anyone else in the raid is running BLCD (v3.51 and above)")
		print("---------------------------------------")
	elseif v1 == "lock" or v1 == "unlock" or v1 == "drag" or v1 == "move" or v1 == "l" then
		BLCD:ToggleMoversLock()
	elseif v1 == "show" then
		--BLCD:ToggleVisibility()
	elseif v1 == "raid" then
		BLCD:print_raid()
	elseif v1 == "config" or v1 == "opt" or v1 == "options" then
		if InCombatLockdown() then
			print("Can't open config during combat. Wait until afterwards.")
		else
			AceConfigDialog:Open("BLCD")
		end
	elseif v1 == "extra" or v1 == "ext" then
		BLCD:SetExtras(true)
	elseif v1 == "clearextra" or v1 == "clrext" then
		BLCD:SetExtras()
	elseif v1 == "reset" then
		BLCD:ResetAll()
	elseif v1 == "wipe" then
		BLCD:ResetWipe()
	elseif v1 == "rescan" then
		print("Rescan raid...")
		LGIST:Rescan()
	elseif v1 == "dev" then
		BLCD:DebugFunc()
	elseif v1 == "who" then
		BLCD:PrintVersions()
	else
		print("BLCD Unrecognised command")
		print("-------------------------")
	end
end
--------------------------------------------------------