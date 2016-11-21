local _, ns = ...

-------------------------------------------------------------------------------
-- Module Declaration
--

local plugin = BigWigs:NewPlugin("HeroesVoices")
if not plugin then return end

-------------------------------------------------------------------------------
-- Locale
--

local L = {}
L["Voice: Heroes of the Storm"] = "Voice: Heroes of the Storm"
L["Language"] = "Language"
L["You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."] = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

ns.L = L

-------------------------------------------------------------------------------
-- Options
--

local loaded = {}
local localeMap = {
	enUS = "English",
	deDE = "Deutsch",
	esES = "Español (es)",
	esMX = "Español (mx)",
	frFR = "Français",
	ruRU = "Русский",
	koKR = "한국어",
	itIT = "Italiano",
	ptBR = "Português",
	zhCN = "简体中文",
	zhTW = "繁體中文",
}

do
	local locale = GetLocale()
	plugin.defaultDB = {
		locale = localeMap[locale] and locale or "enUS"
	}
end

plugin.subPanelOptions = {
	key = "Big Wigs: Voice: Heroes of the Storm",
	name = L["Voice: Heroes of the Storm"],
	options = {
		name = L["Voice: Heroes of the Storm"],
		type = "group",
		args = {
			--[[
			header = {
				name = L["Voice: Heroes of the Storm"],
				type = "description",
				fontSize = "medium",
				order = 1,
			},
			--]]
			locale = {
				name = L["Language"],
				type = "select",
				values = localeMap,
				get = function() return plugin.db.profile.locale end,
				set = function(_, value)
					plugin.db.profile.locale = value
					plugin:RegisterVoices()
				end,
				order = 2,
			},
			notice = {
				name = "\n"..L["You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."],
				type = "description",
				hidden = function()
					local count = 0
					for k,v in next, loaded do 
						count = count + 1
					end
					if count == 1 then
						return true
					end
				end,
				order = 3,
			},
		},
	},
}

-------------------------------------------------------------------------------
-- Initialization
--

function plugin:OnRegister()
	self:RegisterVoices()
end

-------------------------------------------------------------------------------
-- Event Handlers
--

function plugin:RegisterVoices()
	local locale = self.db.profile.locale
	if loaded[locale] then return end

	loaded[locale] = true

	local lang = localeMap[locale]
	-- could localize all of the string, but changes would break sound settings so meh

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Blackheart"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Blackheart_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Blackheart_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Blackheart_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Blackheart_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Blackheart_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Queen Nightshade"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\GardensDayAnnouncer_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\GardensDayAnnouncer_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\GardensDayAnnouncer_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\GardensDayAnnouncer_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\GardensDayAnnouncer_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Lady of Thorns"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\LadyofThorns_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\LadyofThorns_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\LadyofThorns_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\LadyofThorns_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\LadyofThorns_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Necromancer"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Necromancer_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Necromancer_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Necromancer_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Necromancer_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Necromancer_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Raven Lord"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\RavenLord_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\RavenLord_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\RavenLord_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\RavenLord_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\RavenLord_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Snake God"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SnakeGod_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SnakeGod_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SnakeGod_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SnakeGod_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SnakeGod_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Spider Queen"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SpiderQueen_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SpiderQueen_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SpiderQueen_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SpiderQueen_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\SpiderQueen_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Angel"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Angel_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Angel_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Angel_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Angel_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Angel_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Demon"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Demon_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Demon_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Demon_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Demon_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Demon_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Adjutant"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Adjutant_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Adjutant_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Adjutant_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Adjutant_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Adjutant_Countdown5sec00.ogg",
	})

	BigWigsAPI:RegisterCountdown(("%s: Heroes of the Storm: %s"):format(lang, "Arena Announcer"), {
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Arena_Countdown1sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Arena_Countdown2sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Arena_Countdown3sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Arena_Countdown4sec00.ogg",
		"Interface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\"..locale.."\\Arena_Countdown5sec00.ogg",
	})
end
