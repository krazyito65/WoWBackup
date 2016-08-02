-- my custom locale file - more streamlined than AceLocale and no lib dependency

-- To help with missing translations please go here:
-- http://www.wowace.com/addons/roleicons/localization/

local addonName, vars = ...
local Ld, La = {}, {}
local locale = GAME_LOCALE or GetLocale()

vars.L = setmetatable({},{
    __index = function(t, s) return La[s] or Ld[s] or rawget(t,s) or s end
})

Ld["Add class summary buttons to the Raid tab"] = "Add class summary buttons to the Raid tab"
Ld["Add role summary buttons to the Raid tab"] = "Add role summary buttons to the Raid tab"
Ld["Add server info frame to the Raid tab"] = "Add server info frame to the Raid tab"
Ld["Automatically set role and respond to role checks based on your spec"] = "Automatically set role and respond to role checks based on your spec"
Ld["Conqueror"] = "Conqueror"
Ld["Debug the addon"] = "Debug the addon"
Ld["Left-click to report in chat"] = "Left-click to report in chat"
Ld["Perform a role check (requires assist or leader)"] = "Perform a role check (requires assist or leader)"
Ld["Players"] = "Players"
Ld["Players:"] = "Players:"
Ld["Protector"] = "Protector"
Ld["/ri"] = "/ri"
Ld["/rolecheck"] = "/rolecheck"
Ld["Server"] = "Server"
Ld[" set to "] = " set to "
Ld["Show role icons in chat windows"] = "Show role icons in chat windows"
Ld["Show role icons in HealBot bars"] = "Show role icons in HealBot bars"
Ld["Show role icons in map tooltips"] = "Show role icons in map tooltips"
Ld["Show role icons in player tooltips"] = "Show role icons in player tooltips"
Ld["Show role icons in system messages"] = "Show role icons in system messages"
Ld["Show role icons in unit popup menus"] = "Show role icons in unit popup menus"
Ld["Show role icons on the focus frame (default Blizzard frames)"] = "Show role icons on the focus frame (default Blizzard frames)"
Ld["Show role icons on the Raid tab"] = "Show role icons on the Raid tab"
Ld["Show role icons on the target frame (default Blizzard frames)"] = "Show role icons on the target frame (default Blizzard frames)"
Ld["Tier token breakdown:"] = "Tier token breakdown:"
Ld["Trim server names in tooltips"] = "Trim server names in tooltips"
Ld["Unassigned"] = "Unassigned"
Ld["Vanquisher"] = "Vanquisher"


if locale == "frFR" then do end
-- La["Add class summary buttons to the Raid tab"] = ""
-- La["Add role summary buttons to the Raid tab"] = ""
-- La["Add server info frame to the Raid tab"] = ""
-- La["Automatically set role and respond to role checks based on your spec"] = ""
La["Conqueror"] = "Conquérant" -- Needs review
-- La["Debug the addon"] = ""
-- La["Left-click to report in chat"] = ""
-- La["Perform a role check (requires assist or leader)"] = ""
-- La["Players"] = ""
La["Players:"] = "Joueur:" -- Needs review
-- La["Protector"] = ""
-- La["/ri"] = ""
-- La["/rolecheck"] = ""
-- La["Server"] = ""
-- La[" set to "] = ""
La["Show role icons in chat windows"] = "Afficher les icônes de rôle dans la fenêtre de discussion" -- Needs review
-- La["Show role icons in HealBot bars"] = ""
-- La["Show role icons in map tooltips"] = ""
-- La["Show role icons in player tooltips"] = ""
-- La["Show role icons in system messages"] = ""
-- La["Show role icons in unit popup menus"] = ""
-- La["Show role icons on the focus frame (default Blizzard frames)"] = ""
-- La["Show role icons on the Raid tab"] = ""
-- La["Show role icons on the target frame (default Blizzard frames)"] = ""
-- La["Tier token breakdown:"] = ""
-- La["Trim server names in tooltips"] = ""
La["Unassigned"] = "Non-attribuée" -- Needs review
La["Vanquisher"] = "Vainqueur" -- Needs review

elseif locale == "deDE" then do end
La["Add class summary buttons to the Raid tab"] = "Buttons für Klassenzusammenfassung zum Schlachtzug-Tab hinzufügen"
La["Add role summary buttons to the Raid tab"] = "Buttons für Rollenzusammenfassung zum Schlachtzug-Tab hinzufügen"
La["Add server info frame to the Raid tab"] = "Server-Informationsfenster zum Schlachtzug-Tab hinzufügen"
La["Automatically set role and respond to role checks based on your spec"] = "Basierend auf deiner Spezialisierung automatisch Rolle festlegen und auf Rollenchecks reagieren"
La["Conqueror"] = "Eroberer"
La["Debug the addon"] = "Addon debuggen"
La["Left-click to report in chat"] = "Linksklick, um in den Chat zu berichten"
La["Perform a role check (requires assist or leader)"] = "Einen Rollencheck durchführen (benötigt Assistent oder Gruppenleiter)"
La["Players"] = "Spieler"
La["Players:"] = "Spieler:"
La["Protector"] = "Beschützer"
La["/ri"] = "/ri"
La["/rolecheck"] = "/rolecheck"
La["Server"] = "Server"
La[" set to "] = " setze zu "
La["Show role icons in chat windows"] = "Rollensymbole im Chatfenster anzeigen"
La["Show role icons in HealBot bars"] = "Rollensymbole in HealBot-Balken anzeigen"
La["Show role icons in map tooltips"] = "Rollensymbole im Tooltip auf der Karte anzeigen"
La["Show role icons in player tooltips"] = "Rollensymbole im Spielertooltip anzeigen"
La["Show role icons in system messages"] = "Rollensymbole in Systemmeldungen anzeigen"
La["Show role icons in unit popup menus"] = "Rollensymbole in Popup-Menüs anzeigen"
La["Show role icons on the focus frame (default Blizzard frames)"] = "Rollensymbole Focus-Fenster anzeigen (Standard-Blizzard-Fenster)"
La["Show role icons on the Raid tab"] = "Rollensymbole im Schlachtzug-Tab anzeigen"
La["Show role icons on the target frame (default Blizzard frames)"] = "Rollensymbole am Ziel-Fenster anzeigen (Standard-Blizzard-Fenster)"
La["Tier token breakdown:"] = "T-Token Übersicht:"
La["Trim server names in tooltips"] = "Servernamen in Tooltips kürzen"
La["Unassigned"] = "Unbestimmt"
La["Vanquisher"] = "Bezwinger"

elseif locale == "koKR" then do end
La["Add class summary buttons to the Raid tab"] = "공격대 탭에 직업 요약 버튼 추가"
La["Add role summary buttons to the Raid tab"] = "공격대 탭에 역할 요약 버튼 추가"
La["Add server info frame to the Raid tab"] = "공격대 탭에 서버 정보 프레임 추가"
La["Automatically set role and respond to role checks based on your spec"] = "자동으로 특성에 맞는 역할을 선택하고 역할확인에 응답함"
La["Conqueror"] = "정복자"
La["Debug the addon"] = "애드온 디버그"
La["Left-click to report in chat"] = "좌-클릭으로 대화창에 보고"
La["Perform a role check (requires assist or leader)"] = "역할 확인을 수행 (파티장 또는 (부)공격대장 필요)"
La["Players"] = "플레이어"
La["Players:"] = "플레이어:"
La["Protector"] = "수호자"
La["/ri"] = "/ri"
La["/rolecheck"] = "/역할확인"
La["Server"] = "서버"
La[" set to "] = " 설정: "
La["Show role icons in chat windows"] = "대화창에 역할 아이콘 표시"
La["Show role icons in HealBot bars"] = "HealBot 바에 역할 아이콘 표시"
La["Show role icons in map tooltips"] = "지도 툴팁에 역할 아이콘 표시"
La["Show role icons in player tooltips"] = "플레이어의 툴팁에 역할 아이콘 표시"
La["Show role icons in system messages"] = "시스템 메시지에 역할 아이콘 표시"
La["Show role icons in unit popup menus"] = "유닛 팝업 메뉴에 역할 아이콘 표시"
La["Show role icons on the focus frame (default Blizzard frames)"] = "주시 프레임에 역할 아이콘 표시(기본 블리자드 프레임)"
La["Show role icons on the Raid tab"] = "공격대 탭에 역할 아이콘 표시"
La["Show role icons on the target frame (default Blizzard frames)"] = "대상 프레임에 역할 아이콘 표시(기본 블리자드 프레임)"
La["Tier token breakdown:"] = "티어 토큰 분류: "
La["Trim server names in tooltips"] = "툴팁의 서버 이름 다듬기"
La["Unassigned"] = "할당되지 않음"
La["Vanquisher"] = "제압자"

elseif locale == "esMX" then do end
La["Add class summary buttons to the Raid tab"] = "Añadir al panel de banda los botones de resúmenes de clases"
La["Add role summary buttons to the Raid tab"] = "Añadir al panel de banda los botones de resúmenes de funciones"
-- La["Add server info frame to the Raid tab"] = ""
La["Automatically set role and respond to role checks based on your spec"] = "Automáticamente establecer el función y responder al comprobaciones de funciones de acuerdo a especialización"
La["Conqueror"] = "Conquistador"
La["Debug the addon"] = "Depurar el addon"
-- La["Left-click to report in chat"] = ""
La["Perform a role check (requires assist or leader)"] = "Realizar un comprobación de funciones (requiere Líder o Ayudante)"
-- La["Players"] = ""
La["Players:"] = "Jugadores:"
La["Protector"] = "Protector"
La["/ri"] = "/if"
La["/rolecheck"] = "/compfunciones"
-- La["Server"] = ""
La[" set to "] = " estableció a "
La["Show role icons in chat windows"] = "Mostrar iconos de función en la ventana de chat"
La["Show role icons in HealBot bars"] = "Mostrar iconos de función en las barras de HealBot"
-- La["Show role icons in map tooltips"] = ""
La["Show role icons in player tooltips"] = "Mostrar iconos de función en los tooltips de jugadores"
-- La["Show role icons in system messages"] = ""
-- La["Show role icons in unit popup menus"] = ""
La["Show role icons on the focus frame (default Blizzard frames)"] = "Mostrar iconos de función en el marco enfocado de Blizzard"
La["Show role icons on the Raid tab"] = "Mostrar iconos de función en el panel de banda"
La["Show role icons on the target frame (default Blizzard frames)"] = "Mostrar iconos de función en el marco de objetivo de Blizzard"
La["Tier token breakdown:"] = "Desglose de fichas de niveles:"
-- La["Trim server names in tooltips"] = ""
La["Unassigned"] = "Sin asignación"
La["Vanquisher"] = "Vencedor"

elseif locale == "ruRU" then do end
-- La["Add class summary buttons to the Raid tab"] = ""
-- La["Add role summary buttons to the Raid tab"] = ""
-- La["Add server info frame to the Raid tab"] = ""
-- La["Automatically set role and respond to role checks based on your spec"] = ""
-- La["Conqueror"] = ""
-- La["Debug the addon"] = ""
-- La["Left-click to report in chat"] = ""
-- La["Perform a role check (requires assist or leader)"] = ""
-- La["Players"] = ""
-- La["Players:"] = ""
-- La["Protector"] = ""
-- La["/ri"] = ""
-- La["/rolecheck"] = ""
-- La["Server"] = ""
-- La[" set to "] = ""
-- La["Show role icons in chat windows"] = ""
-- La["Show role icons in HealBot bars"] = ""
-- La["Show role icons in map tooltips"] = ""
-- La["Show role icons in player tooltips"] = ""
-- La["Show role icons in system messages"] = ""
-- La["Show role icons in unit popup menus"] = ""
-- La["Show role icons on the focus frame (default Blizzard frames)"] = ""
-- La["Show role icons on the Raid tab"] = ""
-- La["Show role icons on the target frame (default Blizzard frames)"] = ""
-- La["Tier token breakdown:"] = ""
-- La["Trim server names in tooltips"] = ""
-- La["Unassigned"] = ""
-- La["Vanquisher"] = ""

elseif locale == "zhCN" then do end
La["Add class summary buttons to the Raid tab"] = "增加职业统计按钮到团队标签"
La["Add role summary buttons to the Raid tab"] = "增加职责统计按钮到团队标签"
La["Add server info frame to the Raid tab"] = "增加服务器信息框到团队标签"
La["Automatically set role and respond to role checks based on your spec"] = "根据天赋自动设定和回应职责确认"
La["Conqueror"] = "征服者"
La["Debug the addon"] = "调试插件"
La["Left-click to report in chat"] = "左键单击发送报告到聊天栏"
La["Perform a role check (requires assist or leader)"] = "执行职责确认 (需要团队助理或团队领袖)"
La["Players"] = "玩家"
La["Players:"] = "玩家："
La["Protector"] = "保卫者"
La["/ri"] = "/ri"
La["/rolecheck"] = "/职责确认"
La["Server"] = "服务器"
La[" set to "] = "指定为"
La["Show role icons in chat windows"] = "在聊天窗口显示职责图标"
La["Show role icons in HealBot bars"] = "在HealBot条上显示职责图标"
La["Show role icons in map tooltips"] = "在地图的信息提示上显示职责图标"
La["Show role icons in player tooltips"] = "在玩家提示中显示职责图标"
La["Show role icons in system messages"] = "在系统消息中显示职责图标"
La["Show role icons in unit popup menus"] = "在框架单位菜单上显示职责图标"
La["Show role icons on the focus frame (default Blizzard frames)"] = "在焦点框体上显示职责图标 (默认暴雪框体)"
La["Show role icons on the Raid tab"] = "在团队标签上显示职责图标"
La["Show role icons on the target frame (default Blizzard frames)"] = "在目标框体上显示职责图标 (默认暴雪框体)"
La["Tier token breakdown:"] = "套装兑换物分配："
La["Trim server names in tooltips"] = "修整信息提示中的服务器名"
La["Unassigned"] = "未指定"
La["Vanquisher"] = "镇压者"

elseif locale == "esES" then do end
La["Add class summary buttons to the Raid tab"] = "Añadir al panel de banda los botones de resúmenes de clases"
La["Add role summary buttons to the Raid tab"] = "Añadir al panel de banda los botones de resúmenes de funciones"
La["Add server info frame to the Raid tab"] = "Añadir ventana de información del servidor a la pestaña de Banda" -- Needs review
La["Automatically set role and respond to role checks based on your spec"] = "Automáticamente establecer el función y responder al comprobaciones de funciones de acuerdo a especialización"
La["Conqueror"] = "Conquistador"
La["Debug the addon"] = "Depurar el addon"
La["Left-click to report in chat"] = "Clic-izquierdo para reportar en el chat" -- Needs review
La["Perform a role check (requires assist or leader)"] = "Realizar un comprobación de funciones (requiere Líder o Ayudante)"
La["Players"] = "Jugadores" -- Needs review
La["Players:"] = "Jugadores:"
La["Protector"] = "Protector"
La["/ri"] = "/if"
La["/rolecheck"] = "/compfunciones"
La["Server"] = "Servidor" -- Needs review
La[" set to "] = " estableció a "
La["Show role icons in chat windows"] = "Mostrar iconos de función en la ventana de chat"
La["Show role icons in HealBot bars"] = "Mostrar iconos de función en las barras de HealBot"
La["Show role icons in map tooltips"] = "Mostrar iconos de roles en los tooltips del mapa" -- Needs review
La["Show role icons in player tooltips"] = "Mostrar iconos de función en los tooltips de jugadores"
La["Show role icons in system messages"] = "Mostrar iconos de roles en los mensajes de sistema" -- Needs review
La["Show role icons in unit popup menus"] = "Mostrar iconos de roles en los menús emergentes de unidades" -- Needs review
La["Show role icons on the focus frame (default Blizzard frames)"] = "Mostrar iconos de función en el marco enfocado de Blizzard"
La["Show role icons on the Raid tab"] = "Mostrar iconos de función en el panel de banda"
La["Show role icons on the target frame (default Blizzard frames)"] = "Mostrar iconos de función en el marco de objetivo de Blizzard"
La["Tier token breakdown:"] = "Desglose de fichas de niveles:"
La["Trim server names in tooltips"] = "Acortar los nombres de los servidores en los tooltips" -- Needs review
La["Unassigned"] = "Sin asignación"
La["Vanquisher"] = "Vencedor"

elseif locale == "zhTW" then do end
La["Add class summary buttons to the Raid tab"] = "增加職業統計按鈕到團隊標籤"
La["Add role summary buttons to the Raid tab"] = "增加角色類型統計按鈕到團隊標籤"
La["Add server info frame to the Raid tab"] = "增加伺服器資訊框到團隊標籤"
La["Automatically set role and respond to role checks based on your spec"] = "基於您的天賦自動設定角色類型與回應角色確認。"
La["Conqueror"] = "征服者"
La["Debug the addon"] = "插件除錯"
La["Left-click to report in chat"] = "左鍵點擊在聊天中報告"
La["Perform a role check (requires assist or leader)"] = "執行角色類型檢查(需要助理或領隊)"
La["Players"] = "玩家"
La["Players:"] = "玩家："
La["Protector"] = "保衛者"
La["/ri"] = "/ri"
La["/rolecheck"] = "/rolecheck"
La["Server"] = "伺服器"
La[" set to "] = "設定為"
La["Show role icons in chat windows"] = "在聊天視窗中顯示角色類型圖示"
La["Show role icons in HealBot bars"] = "顯示角色類型圖標在HealBot條上"
La["Show role icons in map tooltips"] = "在地圖提示中顯示角色類型圖標"
La["Show role icons in player tooltips"] = "在玩家提示中顯示角色類型圖示"
La["Show role icons in system messages"] = "在系統訊息顯示角色類型圖標"
La["Show role icons in unit popup menus"] = "在單位彈出選單中顯示角色類型圖標"
La["Show role icons on the focus frame (default Blizzard frames)"] = "顯示角色類型圖示在焦點框體中(預設的暴雪框體)"
La["Show role icons on the Raid tab"] = "在團隊標籤中顯示角色類型圖示"
La["Show role icons on the target frame (default Blizzard frames)"] = "顯示角色類型圖示在目標框體中(預設的暴雪框體)"
La["Tier token breakdown:"] = "套裝兌換通貨分解："
La["Trim server names in tooltips"] = "整理工具提示中的伺服器名稱"
La["Unassigned"] = "未分配"
La["Vanquisher"] = "鎮壓者"

elseif locale == "ptBR" then do end
-- La["Add class summary buttons to the Raid tab"] = ""
-- La["Add role summary buttons to the Raid tab"] = ""
-- La["Add server info frame to the Raid tab"] = ""
-- La["Automatically set role and respond to role checks based on your spec"] = ""
-- La["Conqueror"] = ""
-- La["Debug the addon"] = ""
-- La["Left-click to report in chat"] = ""
-- La["Perform a role check (requires assist or leader)"] = ""
-- La["Players"] = ""
-- La["Players:"] = ""
-- La["Protector"] = ""
-- La["/ri"] = ""
-- La["/rolecheck"] = ""
-- La["Server"] = ""
-- La[" set to "] = ""
-- La["Show role icons in chat windows"] = ""
-- La["Show role icons in HealBot bars"] = ""
-- La["Show role icons in map tooltips"] = ""
-- La["Show role icons in player tooltips"] = ""
-- La["Show role icons in system messages"] = ""
-- La["Show role icons in unit popup menus"] = ""
-- La["Show role icons on the focus frame (default Blizzard frames)"] = ""
-- La["Show role icons on the Raid tab"] = ""
-- La["Show role icons on the target frame (default Blizzard frames)"] = ""
-- La["Tier token breakdown:"] = ""
-- La["Trim server names in tooltips"] = ""
-- La["Unassigned"] = ""
-- La["Vanquisher"] = ""

elseif locale == "itIT" then do end
-- La["Add class summary buttons to the Raid tab"] = ""
-- La["Add role summary buttons to the Raid tab"] = ""
-- La["Add server info frame to the Raid tab"] = ""
-- La["Automatically set role and respond to role checks based on your spec"] = ""
-- La["Conqueror"] = ""
-- La["Debug the addon"] = ""
-- La["Left-click to report in chat"] = ""
-- La["Perform a role check (requires assist or leader)"] = ""
-- La["Players"] = ""
-- La["Players:"] = ""
-- La["Protector"] = ""
-- La["/ri"] = ""
-- La["/rolecheck"] = ""
-- La["Server"] = ""
-- La[" set to "] = ""
-- La["Show role icons in chat windows"] = ""
-- La["Show role icons in HealBot bars"] = ""
-- La["Show role icons in map tooltips"] = ""
-- La["Show role icons in player tooltips"] = ""
-- La["Show role icons in system messages"] = ""
-- La["Show role icons in unit popup menus"] = ""
-- La["Show role icons on the focus frame (default Blizzard frames)"] = ""
-- La["Show role icons on the Raid tab"] = ""
-- La["Show role icons on the target frame (default Blizzard frames)"] = ""
-- La["Tier token breakdown:"] = ""
-- La["Trim server names in tooltips"] = ""
-- La["Unassigned"] = ""
-- La["Vanquisher"] = ""

end
