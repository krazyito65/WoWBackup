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

--[==========[
local locale = GetLocale()
if(locale == 'deDE') then
	L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = "|T%s:16|t%s wirklich von der Liste löschen?" -- Needs review
L["Darkmoon Faire: Automatically teleport"] = "Automatischer Teleport: Dunkelmond-Jahrmarkt"
L["Enable automating"] = "Automatisierung einschalten"
L["FilterDetailsTooltip"] = [=[Einfaches Hinzufügen von mehr Items zum Filtern durch Drag & Drop in das Feld unten

]=] -- Needs review
L["Items filtered from automation"] = "Gegestände die automatisch gefiltert wurden" -- Needs review
L["Less clicking, more action!"] = "Weniger klicken, mehr Action!"
L["Modifier to temporarly disable automation"] = "Modifikator zum temporären Ausschalten der Automatisierung" -- Needs review
L["Modifier to temporarly enable automation"] = "Modifikator zum temporären einschalten der Automatisierung"
L["Only select gossip option while not in a raid"] = "In Raidgruppe nicht autom. reden" -- Needs review
L["Reverse the behaviour of the modifier key"] = "Verhalten der Moditfikator-Taste umkehren"
L["Right-click to remove from list"] = "Rechts-klick zum entfernen von der Liste" -- Needs review
L["Select gossip option if there is only one"] = "Gesprächsoption automatisch wählen, wenn nur eine zur Wahl steht" -- Needs review
L["Slow down the automating"] = "Verlangsame Automatisierung"
L["Start quests from items"] = "Starte Quests von Questitems"
L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = "QuickQuest funktioniert möglicherweise nicht richtig, da es mit einem anderen Addon (%s) im konflikt steht." -- Needs review

elseif(locale == 'esES') then
	-- L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = ""
-- L["Darkmoon Faire: Automatically teleport"] = ""
-- L["Enable automating"] = ""
-- L["FilterDetailsTooltip"] = ""
-- L["Items filtered from automation"] = ""
-- L["Less clicking, more action!"] = ""
-- L["Modifier to temporarly disable automation"] = ""
-- L["Modifier to temporarly enable automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove from list"] = ""
-- L["Select gossip option if there is only one"] = ""
-- L["Slow down the automating"] = ""
-- L["Start quests from items"] = ""
-- L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = ""

elseif(locale == 'esMX') then
	-- L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = ""
-- L["Darkmoon Faire: Automatically teleport"] = ""
-- L["Enable automating"] = ""
-- L["FilterDetailsTooltip"] = ""
-- L["Items filtered from automation"] = ""
-- L["Less clicking, more action!"] = ""
-- L["Modifier to temporarly disable automation"] = ""
-- L["Modifier to temporarly enable automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove from list"] = ""
-- L["Select gossip option if there is only one"] = ""
-- L["Slow down the automating"] = ""
-- L["Start quests from items"] = ""
-- L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = ""

elseif(locale == 'frFR') then
	L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = "Êtes-vous sûr de vouloir enlever |T%s:16|t%s du filtre ?" -- Needs review
L["Darkmoon Faire: Automatically teleport"] = "Foire de Sombrelune : Téléportation automatique" -- Needs review
L["Enable automating"] = "Activer l'automatisation" -- Needs review
L["FilterDetailsTooltip"] = [=[Ajoutez facilement plus d'objets au filtre
en les prenant dans votre inventaire
pour les mettre dans le cadre ci-dessous.

Tout aussi facilement, vous pouvez enlever
un objet avec un clic-droit dessus.]=] -- Needs review
L["Items filtered from automation"] = "Objets ignorés par l'automatisation" -- Needs review
L["Less clicking, more action!"] = "Moins de clics, plus d'action !" -- Needs review
L["Modifier to temporarly disable automation"] = "Modificateur pour désactiver temporairement l'automatisation" -- Needs review
L["Modifier to temporarly enable automation"] = "Modificateur pour activer temporairement l'automatisation" -- Needs review
L["Only select gossip option while not in a raid"] = "Ne pas sélectionner le dialogue en raid" -- Needs review
L["Reverse the behaviour of the modifier key"] = "Inverser le comportement du modificateur" -- Needs review
L["Right-click to remove from list"] = "Clic-droit pour enlever de la liste" -- Needs review
L["Select gossip option if there is only one"] = "Sélectionner le dialogue s'il n'y a qu'un choix" -- Needs review
L["Slow down the automating"] = "Ralentir l'automatisation" -- Needs review
L["Start quests from items"] = "Commencer les quêtes venant d'objets" -- Needs review
L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = "Vous utilisez un addon qui crée un conflit (%s), tapez /reload pour le résoudre." -- Needs review

elseif(locale == 'itIT') then
	-- L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = ""
-- L["Darkmoon Faire: Automatically teleport"] = ""
-- L["Enable automating"] = ""
-- L["FilterDetailsTooltip"] = ""
-- L["Items filtered from automation"] = ""
-- L["Less clicking, more action!"] = ""
-- L["Modifier to temporarly disable automation"] = ""
-- L["Modifier to temporarly enable automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove from list"] = ""
-- L["Select gossip option if there is only one"] = ""
-- L["Slow down the automating"] = ""
-- L["Start quests from items"] = ""
-- L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = ""

elseif(locale == 'koKR') then
	-- L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = ""
-- L["Darkmoon Faire: Automatically teleport"] = ""
-- L["Enable automating"] = ""
-- L["FilterDetailsTooltip"] = ""
-- L["Items filtered from automation"] = ""
-- L["Less clicking, more action!"] = ""
-- L["Modifier to temporarly disable automation"] = ""
-- L["Modifier to temporarly enable automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove from list"] = ""
-- L["Select gossip option if there is only one"] = ""
-- L["Slow down the automating"] = ""
-- L["Start quests from items"] = ""
-- L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = ""

elseif(locale == 'ptBR') then
	-- L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = ""
-- L["Darkmoon Faire: Automatically teleport"] = ""
-- L["Enable automating"] = ""
-- L["FilterDetailsTooltip"] = ""
-- L["Items filtered from automation"] = ""
-- L["Less clicking, more action!"] = ""
-- L["Modifier to temporarly disable automation"] = ""
-- L["Modifier to temporarly enable automation"] = ""
-- L["Only select gossip option while not in a raid"] = ""
-- L["Reverse the behaviour of the modifier key"] = ""
-- L["Right-click to remove from list"] = ""
-- L["Select gossip option if there is only one"] = ""
-- L["Slow down the automating"] = ""
-- L["Start quests from items"] = ""
-- L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = ""

elseif(locale == 'ruRU') then
	L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = "Вы уверены что хотите удалить |T%s:16|t%s из фильтра?" -- Needs review
L["Darkmoon Faire: Automatically teleport"] = "Darkmoon Faire: Автоматический телепорт" -- Needs review
L["Enable automating"] = "Включить автоматизацию" -- Needs review
-- L["FilterDetailsTooltip"] = ""
L["Items filtered from automation"] = "Вещи от фильтрованы автоматически" -- Needs review
L["Less clicking, more action!"] = "Меньше кликов, больше действий! " -- Needs review
L["Modifier to temporarly disable automation"] = "Модификатор автоматически выключен" -- Needs review
L["Modifier to temporarly enable automation"] = "Модификатор автоматически включен" -- Needs review
L["Only select gossip option while not in a raid"] = "Выбрать опцию всегда, исключением является Рейд." -- Needs review
L["Reverse the behaviour of the modifier key"] = "Обратный поворот ключа модификатора" -- Needs review
L["Right-click to remove from list"] = "ПКМ для удаление со списка" -- Needs review
L["Select gossip option if there is only one"] = "Выбрать опцию если она одна" -- Needs review
L["Slow down the automating"] = "Уменьшение скорости автоматизации" -- Needs review
L["Start quests from items"] = "Начинайте задание с предметами" -- Needs review
L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = "Вы запустили конфликтующий аддон (%s), введите /reload для решения проблемы" -- Needs review

elseif(locale == 'zhCN') then
	L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = "您确认从过滤器删除 |T%s:16|t%s ?" -- Needs review
L["Darkmoon Faire: Automatically teleport"] = "暗月马戏团：自动传送" -- Needs review
L["Enable automating"] = "启用自动模式" -- Needs review
L["FilterDetailsTooltip"] = [=[很容易增加更多物品到过滤器
 从背包中拖放一个物品
 到下面的框体中即可.

就如右键点击一个已过滤物品
从过滤器中移除它一样简单.]=] -- Needs review
L["Items filtered from automation"] = "物品过滤自动完成" -- Needs review
L["Less clicking, more action!"] = "自动交接任务助手" -- Needs review
L["Modifier to temporarly disable automation"] = "使用辅助键时禁用自动执行" -- Needs review
L["Modifier to temporarly enable automation"] = "使用辅助键时允许自动执行" -- Needs review
L["Only select gossip option while not in a raid"] = "只有不在团队时选择闲聊选项" -- Needs review
L["Reverse the behaviour of the modifier key"] = "改变辅助键的行为" -- Needs review
L["Right-click to remove from list"] = "右键点击从列表中移除" -- Needs review
L["Select gossip option if there is only one"] = "只在单人时选择闲聊选项" -- Needs review
L["Slow down the automating"] = "放慢自动执行过程" -- Needs review
L["Start quests from items"] = "自动开启可接受任务的物品" -- Needs review
L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = "您正在使用一个有冲突的插件 (%s), 输入 /reload 去解决." -- Needs review

elseif(locale == 'zhTW') then
	L["Are you sure you want to delete |T%s:16|t%s from the filter?"] = "確定自列表移除|T%s:16|t%s？" -- Needs review
-- L["Darkmoon Faire: Automatically teleport"] = ""
L["Enable automating"] = "啟用自動交接" -- Needs review
L["FilterDetailsTooltip"] = "將背包中的任務物品拖曳至框體即可加入，對物品點擊右鍵即可移除" -- Needs review
L["Items filtered from automation"] = "自動完成的物品清單" -- Needs review
-- L["Less clicking, more action!"] = ""
L["Modifier to temporarly disable automation"] = "按住按鍵時禁用自動交接" -- Needs review
L["Modifier to temporarly enable automation"] = "按住按鍵時啟用自動交接" -- Needs review
-- L["Only select gossip option while not in a raid"] = ""
L["Reverse the behaviour of the modifier key"] = "反轉輔助鍵的行為" -- Needs review
L["Right-click to remove from list"] = "右鍵點擊從列表移除" -- Needs review
-- L["Select gossip option if there is only one"] = ""
L["Slow down the automating"] = "放慢自動執行的速度" -- Needs review
L["Start quests from items"] = "自動接受物品觸發的任務" -- Needs review
L["You\\'re running a conflicting addon (%s), type /reload to resolve"] = "插件衝突，輸入/reload重載" -- Needs review

end
--]==========]
