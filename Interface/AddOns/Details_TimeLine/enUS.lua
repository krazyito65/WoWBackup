local Loc = LibStub("AceLocale-3.0"):NewLocale ("Details_TimeLine", "enUS", true) 

if (not Loc) then
	return 
end 

Loc ["STRING_PLUGIN_NAME"] = "Time Line"
Loc ["STRING_TOOLTIP"] = "Show timeline data"

Loc ["STRING_TYPE"] = "Type:"
Loc ["STRING_SELECT_SEGMENT"] = "Segment:"
Loc ["STRING_SEARCH"] = "Filter:"

Loc ["STRING_TARGET"] = "Target"
Loc ["STRING_SOURCE"] = "Source"
Loc ["STRING_ELAPSED"] = "Time Elapsed"
Loc ["STRING_SECONDS"] = "Seconds"
Loc ["STRING_UNKNOWN"] = "unknown"
Loc ["STRING_TIME"] = "At"
Loc ["STRING_INCOMBAT"] = "Timeline is capturing data from current combat."
Loc ["STRING_NODATA"] = "Timeline have nothing to show at the moment."

Loc ["STRING_RESET"] = "Reset"

Loc ["STRING_TYPE_COOLDOWN"] = "Cooldown"
Loc ["STRING_TYPE_DEBUFF"] = "Debuff"