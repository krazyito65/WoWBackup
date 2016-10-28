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
L["Hold this key to to temporarily %s automation"] = "Halte diese Taste, um die Automatisierung vorübergehend zu %s "
L["Only select gossip option while not in a raid"] = "In Raidgruppe nicht autom. reden" -- Needs review
-- L["Quests starting with and/or containing these items will not be automated."] = ""
L["Reverse the behaviour of the modifier key"] = "Verhalten der Moditfikatortaste umkehren"
L["Right-click to remove item"] = "Rechtsklick, um Gegenstand zu entfernen"
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
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "노미의 일일 퀘스트는 저렙퀘라도 항상 자동 수락/완료"
L["Automatically pay Darkmoon Faire teleporting fees"] = "다크문 축제 순간이동 비용을 자동으로 지불"
L["Automatically select single gossip options"] = "대화 목록이 하나 뿐이면 자동 선택"
L["Automatically share quests when picked up"] = "획득시 자동으로 퀘스트 공유" -- Needs review
L["Disable while doing the withered training scenario in Suramar"] = "수라마르에서 메마른자 훈련시키기 퀘스트를 하는 동안에는 사용 안 함"
L["Drag items into the window below to add more."] = "더 추가하려면 아래 창에 아이템을 던져 넣으십시오"
L["Hold this key to to temporarily %s automation"] = "이 키를 누르고 있는 동안 임시적으로 자동 기능 %s"
L["Only select gossip option while not in a raid"] = "레이드가 아닐 때에만 대화 옵션 선택" -- Needs review
L["Quests starting with and/or containing these items will not be automated."] = "이 아이템들과 관련 있는 퀘스트는 자동화 안함"
-- L["Reverse the behaviour of the modifier key"] = ""
L["Right-click to remove item"] = "아이템을 삭제하려면 마우스 우클릭하십시오"
L["Soloing"] = "솔로잉"
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
