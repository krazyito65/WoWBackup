-- Default localization - enUS
local ADDON_NAME = "RiggsBar";
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "enUS", true);

L.core = {
	name = "RiggsBar",
    load = "|cFFC41F3BRiggs|rBar by Seasecon: Loaded",	
	options = {
		name = "RiggsBar Options",
		desc = "A simple addon showing various shields on a player",
		appear = {
			name = "Appearance Options",
			width = "Frame Width",
			widthdesc = "Controls the width of the frame",
			height = "Frame Height",
			heightdesc = "Controls the height of the frame",
			fsize = "Font Size",
			fsizedesc = "Changes the font size. The largest here is as big as I could make it. I believe it to be a limitation from Blizzard.",
			isize = "Icon Size",
			isizedesc = "Changes the icon sizes",
			short = "Short Numbers",
			shortdesc = "Rounds the number so you're shown 354k rather than 354254",
			lock = "Lock the Frame",
			lockdesc = "Locks the frame so you're unable to move it. Really, what did you expect this to do?",
			texture = "Background Texture",
			texturedesc = "Texture to be used for the frame's background",
			fface = "Font Face",
			ffacedesc = "Font that is used",
			color = "Background Color",
			colordesc = "Frame's background color",
			fcolor = "Font Color",
		},
		toggles = {
			name = "Shield Toggles",
			bs = "Blood Shield",
			ams = "Anti-Magic Shell",
			sba = "Shield Barrier",
			guard = "Guard",
			guards = "Guard - Statue",
			guardsdesc = "Shield that you get from having a Brewmaster in your group use their statue.",
			pws = "Power Word: Shield",
			ss = "Spirit Shell",
			da = "Divine Aegis",
			ih = "Illuminated Healing",
		},
	},
}


