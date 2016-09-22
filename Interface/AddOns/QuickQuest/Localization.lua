local _, L = ...

setmetatable(L, {__index = function(L, key)
	local value = tostring(key)
	L[key] = value
	return value
end})

L['ALT key'] = ALT_KEY
L['CTRL key'] = CTRL_KEY
L['SHIFT key'] = SHIFT_KEY

L['Never'] = NEVER
L['Always'] = ALWAYS

L['enable'] = string.lower(ENABLE)
L['disable'] = string.lower(DISABLE)

local locale = GetLocale()
if(locale == 'deDE') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
L["Only select gossip option while not in a raid"] = "In Raidgruppe nicht autom. reden" -- Needs review
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "Verhalten der Moditfikatortaste umkehren"
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'esES') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'esMX') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'frFR') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
L["Only select gossip option while not in a raid"] = "Ne pas sélectionner le dialogue en raid" -- Needs review
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "Inverser le comportement du modificateur" -- Needs review
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'itIT') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'koKR') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'ptBR') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'ruRU') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
L["Only select gossip option while not in a raid"] = "Выбрать опцию всегда, исключением является Рейд." -- Needs review
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "Обратный поворот ключа модификатора" -- Needs review
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'zhCN') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
L["Only select gossip option while not in a raid"] = "只有不在团队时选择闲聊选项" -- Needs review
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "改变辅助键的行为" -- Needs review
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

elseif(locale == 'zhTW') then
	-- L["Always accept and complete Nomi's daily quest, despite being low-level"] = ""
-- L["Automatically pay Darkmoon Faire teleporting fees"] = ""
-- L["Automatically select single gossip options"] = ""
-- L["Automatically share quests when picked up"] = ""
-- L["Disable while doing the withered training scenario in Suramar"] = ""
-- L["Drag items into the window below to add more."] = ""
-- L["Hold this key to to temporarily %s automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "反轉輔助鍵的行為" -- Needs review
-- L["Right-click to remove item"] = ""
-- L["Soloing"] = ""
-- L["The Collapse"] = ""
-- L["When to select gossip while in a raid"] = ""

end
