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
L["Hold this key to to temporarily %s automation"] = "Halte diese Taste, um die Automatisierung vorübergehend zu %s "
L["Only select gossip option while not in a raid"] = "In Raidgruppe nicht autom. reden"
L["Reverse the behaviour of the modifier key"] = "Verhalten der Moditfikatortaste umkehren"
L["Right-click to remove item"] = "Rechtsklick, um Gegenstand zu entfernen"
elseif(locale == 'esES') then
elseif(locale == 'esMX') then
elseif(locale == 'frFR') then
L["Only select gossip option while not in a raid"] = "Ne pas sélectionner le dialogue en raid"
L["Reverse the behaviour of the modifier key"] = "Inverser le comportement du modificateur"
elseif(locale == 'itIT') then
elseif(locale == 'koKR') then
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "노미의 일일 퀘스트는 퀘스트 레벨이 낮더라도 항상 자동으로 수락/완료"
L["Automatically pay Darkmoon Faire teleporting fees"] = "다크문 축제 순간이동 비용을 자동으로 지불"
L["Automatically select single gossip options"] = "대화 목록이 하나 뿐이면 자동 선택"
L["Automatically share quests when picked up"] = "자동으로 퀘스트 공유"
L["Disable while doing the withered training scenario in Suramar"] = "수라마르에서 메마른 자 훈련시키기 시나리오를 진행하는 동안에는 사용 안 함"
L["Drag items into the window below to add more."] = "더 추가하려면 아래 창에 아이템을 끌어다 놓으십시오."
L["Hold this key to to temporarily %s automation"] = "이 키를 누르고 있는 동안 임시적으로 자동 기능 %s"
L["Only select gossip option while not in a raid"] = "공격대가 아닐 때에만 대화 선택"
L["Quests starting with and/or containing these items will not be automated."] = "이 아이템들과 관련 있는 퀘스트는 자동화 안함"
L["Reverse the behaviour of the modifier key"] = "변환키 작동 방식 반대로 하기"
L["Right-click to remove item"] = "아이템을 삭제하려면 오른쪽 마우스 버튼을 클릭하십시오"
L["Soloing"] = "솔로잉"
L["The Collapse"] = "붕괴지"
L["When to select gossip while in a raid"] = "공격대 상태에서 대화 자동 선택"
elseif(locale == 'ptBR') then
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Sempre aceitar e completar as missões diárias de Nomi, apesar de serem de nível baixo."
L["Automatically pay Darkmoon Faire teleporting fees"] = "Pagar automaticamente as taxas de teletransporte de Darkmoon Faire"
L["Automatically select single gossip options"] = [=[
Selecionar automaticamente opções simples de conversas fúteis]=]
L["Automatically share quests when picked up"] = "Compartilhar missões automaticamente quando pegá-las"
L["Disable while doing the withered training scenario in Suramar"] = "Desativar ao fazer o cenário de treinamento em Suramar"
L["Drag items into the window below to add more."] = "Arraste os itens na janela abaixo para adicionar mais."
L["Hold this key to to temporarily %s automation"] = "Segure esta tecla para %s temporariamente a automação."
L["Only select gossip option while not in a raid"] = "Somente selecionar opções de conversas fúteis enquanto não estiver em RAID"
L["Quests starting with and/or containing these items will not be automated."] = "Missões começando e/ou contendo esses itens não serão automatizadas."
L["Reverse the behaviour of the modifier key"] = "Inverter o comportamento da tecla modificadora"
L["Right-click to remove item"] = "Clicar com botão direito para remover item"
L["Soloing"] = "Solando"
L["The Collapse"] = "Recolher"
L["When to select gossip while in a raid"] = "Quando selecionar conversas fúteis durante uma raid"
elseif(locale == 'ruRU') then
L["Only select gossip option while not in a raid"] = "Выбрать опцию всегда, исключением является Рейд."
L["Reverse the behaviour of the modifier key"] = "Обратный поворот ключа модификатора"
elseif(locale == 'zhCN') then
L["Only select gossip option while not in a raid"] = "只有不在团队时选择闲聊选项"
L["Reverse the behaviour of the modifier key"] = "改变辅助键的行为"
elseif(locale == 'zhTW') then
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "總是接受並完成糯米的每日任務，儘管是低級別。"
L["Automatically pay Darkmoon Faire teleporting fees"] = "自動支付暗月馬戲團傳送費。"
L["Automatically select single gossip options"] = "自動選擇單一閒聊選項。"
L["Automatically share quests when picked up"] = "拾取後自動分享任務。"
L["Disable while doing the withered training scenario in Suramar"] = "當在蘇拉瑪爾的凋萎者訓練場時將禁用。"
L["Drag items into the window below to add more."] = "將物品拖動到下面的視窗中可以增加更多。"
L["Hold this key to to temporarily %s automation"] = "按住這個按鍵可以臨時自動化。目前：%s"
L["Only select gossip option while not in a raid"] = "當不在團隊中只選擇閒聊選項。"
L["Quests starting with and/or containing these items will not be automated."] = "有下列物品的任務將不會自動執行。"
L["Reverse the behaviour of the modifier key"] = "反轉輔助鍵的行為"
L["Right-click to remove item"] = "右鍵點擊刪除物品"
L["Soloing"] = "獨自"
L["The Collapse"] = "折疊"
L["When to select gossip while in a raid"] = "當在團隊中選擇閒聊"
end
