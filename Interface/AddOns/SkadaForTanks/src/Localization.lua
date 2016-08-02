-- To update a translation please use the localization utility at:
-- http://wow.curseforge.com/addons/skada-for-tanks/localization/

local addonName, a = ...
a.Localize = setmetatable({ }, { __index = function(_, key) return key end })
local L = a.Localize
local locale = GetLocale()
if locale == "ptBR" then -- Brazilian Portuguese
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "frFR" then -- French
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "deDE" then -- German
L["by"] = "von"
L["Healing done to"] = "Heilung auf"
L["Healing Required"] = "Heilung benötigt"
L["Source Details"] = "Quelldetails"
L["Spell Details"] = "Zauberdetails"

elseif locale == "itIT" then -- Italian
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "koKR" then -- Korean
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "esMX" then -- Latin American Spanish
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "ruRU" then -- Russian
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "zhCN" then -- Simplified Chinese
L["by"] = "来自 "
L["Healing done to"] = "受到治疗"
L["Healing Required"] = "需要治疗"
L["Source Details"] = "来源细节"
L["Spell Details"] = "技能细节"

elseif locale == "esES" then -- Spanish
-- L["by"] = ""
-- L["Healing done to"] = ""
-- L["Healing Required"] = ""
-- L["Source Details"] = ""
-- L["Spell Details"] = ""

elseif locale == "zhTW" then -- Traditional Chinese
L["by"] = "来自"
L["Healing done to"] = "已治療到"
L["Healing Required"] = "治療需求"
L["Source Details"] = "來源細節"
L["Spell Details"] = "法術細節"

end