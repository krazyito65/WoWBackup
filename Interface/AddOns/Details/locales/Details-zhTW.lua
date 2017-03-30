local L = LibStub("AceLocale-3.0"):NewLocale("Details", "zhTW") 
if not L then return end 

L["ABILITY_ID"] = "技能id"
L["STRING_ABSORBED"] = "吸收"
L["STRING_ACTORFRAME_NOTHING"] = "沒有資料可報告"
L["STRING_ACTORFRAME_REPORTAT"] = "在"
L["STRING_ACTORFRAME_REPORTOF"] = "的"
L["STRING_ACTORFRAME_REPORTTARGETS"] = "報告的對象"
L["STRING_ACTORFRAME_REPORTTO"] = "報告給"
L["STRING_ACTORFRAME_SPELLDETAILS"] = "法術細節"
L["STRING_ACTORFRAME_SPELLUSED"] = "所有使用的法術"
L["STRING_AGAINST"] = "相反"
L["STRING_ALIVE"] = "存活"
L["STRING_ANCHOR_BOTTOM"] = "下"
L["STRING_ANCHOR_BOTTOMLEFT"] = "左下"
L["STRING_ANCHOR_BOTTOMRIGHT"] = "右下"
L["STRING_ANCHOR_LEFT"] = "左"
L["STRING_ANCHOR_RIGHT"] = "右"
L["STRING_ANCHOR_TOP"] = "上"
L["STRING_ANCHOR_TOPLEFT"] = "左上"
L["STRING_ANCHOR_TOPRIGHT"] = "右上"
L["STRING_ATACH_DESC"] = "視窗#%d編制群組為視窗 #%d。"
L["STRING_ATTRIBUTE_CUSTOM"] = "自訂"
L["STRING_ATTRIBUTE_DAMAGE"] = "傷害"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS"] = "光環 & 虛空領域"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS_REPORT"] = "減益傷害與持續時間"
L["STRING_ATTRIBUTE_DAMAGE_DONE"] = "造成傷害"
L["STRING_ATTRIBUTE_DAMAGE_DPS"] = "每秒傷害"
L["STRING_ATTRIBUTE_DAMAGE_ENEMIES"] = "敵方承受傷害"
L["STRING_ATTRIBUTE_DAMAGE_FRAGS"] = "造成傷害目標"
L["STRING_ATTRIBUTE_DAMAGE_FRIENDLYFIRE"] = "隊友誤傷"
L["STRING_ATTRIBUTE_DAMAGE_TAKEN"] = "承受傷害"
L["STRING_ATTRIBUTE_ENERGY"] = "能量"
L["STRING_ATTRIBUTE_ENERGY_ENERGY"] = "能量生成"
L["STRING_ATTRIBUTE_ENERGY_MANA"] = "法力恢復"
L["STRING_ATTRIBUTE_ENERGY_RAGE"] = "怒氣生成"
L["STRING_ATTRIBUTE_ENERGY_RUNEPOWER"] = "符能生成"
L["STRING_ATTRIBUTE_HEAL"] = "治療"
L["STRING_ATTRIBUTE_HEAL_DONE"] = "造成治療"
L["STRING_ATTRIBUTE_HEAL_ENEMY"] = "敵方的治療"
L["STRING_ATTRIBUTE_HEAL_HPS"] = "每秒治療"
L["STRING_ATTRIBUTE_HEAL_OVERHEAL"] = "過量治療"
L["STRING_ATTRIBUTE_HEAL_PREVENT"] = "傷害預防"
L["STRING_ATTRIBUTE_HEAL_TAKEN"] = "承受治療"
L["STRING_ATTRIBUTE_MISC"] = "雜項"
L["STRING_ATTRIBUTE_MISC_BUFF_UPTIME"] = "增益覆蓋時間"
L["STRING_ATTRIBUTE_MISC_CCBREAK"] = "控場破除"
L["STRING_ATTRIBUTE_MISC_DEAD"] = "死亡"
L["STRING_ATTRIBUTE_MISC_DEBUFF_UPTIME"] = "減益覆蓋時間"
L["STRING_ATTRIBUTE_MISC_DEFENSIVE_COOLDOWNS"] = "冷卻"
L["STRING_ATTRIBUTE_MISC_DISPELL"] = "驅散"
L["STRING_ATTRIBUTE_MISC_INTERRUPT"] = "打斷"
L["STRING_ATTRIBUTE_MISC_RESS"] = "恢復"
L["STRING_AUTO"] = "自動"
L["STRING_AUTOSHOT"] = "自動射擊"
L["STRING_BLOCKED"] = "格檔"
L["STRING_BOTTOM"] = "底部"
L["STRING_CAUGHT"] = "捕捉"
L["STRING_CCBROKE"] = "控場移除"
L["STRING_CENTER"] = "中央"
L["STRING_CHANGED_TO_CURRENT"] = "片段已改變:  |cFFFFFF00目前|r"
L["STRING_CLOSEALL"] = "所有Details視窗已關閉，登打 '/details show'來重啟。"
L["STRING_COMMAND_LIST"] = "指令列表"
L["STRING_COOLTIP_NOOPTIONS"] = "無選項"
L["STRING_CRITICAL_HITS"] = "致命一擊"
L["STRING_CURRENT"] = "當前"
L["STRING_CURRENTFIGHT"] = "當前片段"
L["STRING_CUSTOM_ACTIVITY_ALL"] = "活躍時間"
L["STRING_CUSTOM_ACTIVITY_ALL_DESC"] = "顯示此團隊中每個玩家的活躍度報告。"
L["STRING_CUSTOM_ATTRIBUTE_DAMAGE"] = "傷害"
L["STRING_CUSTOM_ATTRIBUTE_HEAL"] = "治療"
L["STRING_CUSTOM_ATTRIBUTE_SCRIPT"] = "自訂腳本"
L["STRING_CUSTOM_AUTHOR"] = "作者:"
L["STRING_CUSTOM_AUTHOR_DESC"] = "是誰創造此展列。"
L["STRING_CUSTOM_CANCEL"] = "取消"
L["STRING_CUSTOM_CREATE"] = "建立"
L["STRING_CUSTOM_CREATED"] = "新視窗已建立"
L["STRING_CUSTOM_DESCRIPTION"] = "說明:"
L["STRING_CUSTOM_DESCRIPTION_DESC"] = "視窗描述"
L["STRING_CUSTOM_DONE"] = "完畢"
L["STRING_CUSTOM_EDIT"] = "編輯"
L["STRING_CUSTOM_EDIT_SEARCH_CODE"] = "編輯搜尋代碼"
L["STRING_CUSTOM_EDIT_TOOLTIP_CODE"] = "編輯提示代碼"
L["STRING_CUSTOM_EDITCODE_DESC"] = "這是個進階功能，其中用戶可以創建自己的顯示用代碼。"
L["STRING_CUSTOM_EDITTOOLTIP_DESC"] = "這是使用在此視窗運作在一行之後使用懸停的代碼。"
L["STRING_CUSTOM_ENEMY_DT"] = "承受傷害"
L["STRING_CUSTOM_EXPORT"] = "匯出"
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT"] = "治療藥水與治療石"
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT_DESC"] = "顯示誰在你的團隊中使用了治療石或治療藥水。"
L["STRING_CUSTOM_ICON"] = "圖標:"
L["STRING_CUSTOM_IMPORT"] = "匯入"
L["STRING_CUSTOM_IMPORT_ALERT"] = "視窗已載入，點擊匯入來確認。"
L["STRING_CUSTOM_IMPORT_BUTTON"] = "匯入"
L["STRING_CUSTOM_IMPORT_ERROR"] = "匯入失敗，無效的字串。"
L["STRING_CUSTOM_IMPORTED"] = "此視窗已成功匯入。"
L["STRING_CUSTOM_LONGNAME"] = "名稱太長，最大允許32字元(換算中文16字元)。"
L["STRING_CUSTOM_MYSPELLS"] = "我的法術"
L["STRING_CUSTOM_MYSPELLS_DESC"] = "在視窗中顯示你的法術。"
L["STRING_CUSTOM_NAME"] = "名稱:"
L["STRING_CUSTOM_NAME_DESC"] = "在你新的自訂視窗中插入名稱。"
L["STRING_CUSTOM_NEW"] = "管理自訂視窗"
L["STRING_CUSTOM_PASTE"] = "這裡貼上:"
L["STRING_CUSTOM_POT_DEFAULT"] = "有使用藥水"
L["STRING_CUSTOM_POT_DEFAULT_DESC"] = "顯示在你的團隊中誰在戰鬥中使用了藥水。"
L["STRING_CUSTOM_REMOVE"] = "移除"
L["STRING_CUSTOM_REPORT"] = "(自訂)"
L["STRING_CUSTOM_SAVE"] = "儲存變更"
L["STRING_CUSTOM_SAVED"] = "此視窗已被儲存。"
L["STRING_CUSTOM_SHORTNAME"] = "名稱需要至少5個字元。"
L["STRING_CUSTOM_SOURCE"] = "來源:"
L["STRING_CUSTOM_SOURCE_DESC"] = [=[是誰觸發的效果。
在右側的按鈕顯示團隊會遭遇的NPC名單。]=]
L["STRING_CUSTOM_SPELLID"] = "法術Id:"
L["STRING_CUSTOM_SPELLID_DESC"] = "可選的，是由來源在目標上應用效果使用的法術。"
L["STRING_CUSTOM_TARGET"] = "目標:"
L["STRING_CUSTOM_TARGET_DESC"] = [=[這是來源的目標。
右側的按鈕顯示團隊會遭遇的NPC名單。]=]
L["STRING_CUSTOM_TEMPORARILY"] = "(|cFFFFC000暫時|r)"
L["STRING_DAMAGE"] = "傷害"
L["STRING_DAMAGE_DPS_IN"] = "接收的DPS來自"
L["STRING_DAMAGE_FROM"] = "取得傷害來自"
L["STRING_DAMAGE_TAKEN_FROM"] = "承受傷害來自"
L["STRING_DAMAGE_TAKEN_FROM2"] = "施加傷害在"
L["STRING_DEFENSES"] = "防禦"
L["STRING_DETACH_DESC"] = "分離視窗群組"
L["STRING_DISPELLED"] = "移除 增益/減益"
L["STRING_DODGE"] = "閃避"
L["STRING_DOT"] = "(DoT)"
L["STRING_DPS"] = "每秒傷害"
L["STRING_EMPTY_SEGMENT"] = "空的片段"
L["STRING_EQUILIZING"] = "分享首領戰數據"
L["STRING_ERASE"] = "刪除"
L["STRING_ERASE_DATA"] = "重置所有數據"
L["STRING_ERASE_DATA_OVERALL"] = "重置總體數據"
L["STRING_ERASE_IN_COMBAT"] = "當前戰鬥結束後重置數據"
L["STRING_EXPLOSION"] = "爆炸"
L["STRING_FAIL_ATTACKS"] = "攻擊失敗"
L["STRING_FIGHTNUMBER"] = "戰鬥 #"
L["STRING_FREEZE"] = "這個階段此片段不可用"
L["STRING_FROM"] = "從"
L["STRING_GERAL"] = "一般"
L["STRING_GLANCING"] = "擦過"
L["STRING_HEAL"] = "治療"
L["STRING_HEAL_ABSORBED"] = "吸收"
L["STRING_HEAL_CRIT"] = "治療暴擊"
L["STRING_HEALING_FROM"] = "受到治療來自"
L["STRING_HEALING_HPS_FROM"] = "每秒治療來自"
L["STRING_HITS"] = "命中"
L["STRING_HPS"] = "每秒治療量"
L["STRING_INSTANCE_CHAT"] = "副本頻道"
L["STRING_INSTANCE_LIMIT"] = "已達視窗數量上限，你可以在選單修改上限數量或重啟視窗選單"
L["STRING_INTERFACE_OPENOPTIONS"] = "打開選項面板"
L["STRING_ISA_PET"] = "這是一隻寵物"
L["STRING_KEYBIND_BOOKMARK"] = "加到書籤"
L["STRING_KILLED"] = "擊殺"
L["STRING_LAST_COOLDOWN"] = "冷卻時間尚未結束"
L["STRING_LEFT"] = "左"
L["STRING_LEFT_CLICK_SHARE"] = "左鍵點擊報告"
L["STRING_LOCK_DESC"] = "鎖定或解鎖視窗"
L["STRING_LOCK_WINDOW"] = "鎖定"
L["STRING_MASTERY"] = "精通"
L["STRING_MAXIMUM"] = "最大化"
L["STRING_MEDIA"] = "媒體"
L["STRING_MELEE"] = "近戰"
L["STRING_MEMORY_ALERT_BUTTON"] = "我的理解"
L["STRING_MEMORY_ALERT_TEXT1"] = "Details! 使用了大量的內存，但是，|cFFFF8800流行的看法相反|r，內存使用率插件|cFFFF8800不影響|r在任何比賽中的表現或你的FPS。"
L["STRING_MEMORY_ALERT_TEXT2"] = "所以，如果你看到 Details! 使用大量內存，不要驚慌 :D！|cFFFF8800這是所有罰款|r，和，這種記憶的一部分，甚至|cFFFF8800用於成緩存|r，使插件更加快捷。"
L["STRING_MEMORY_ALERT_TEXT3"] = "但是，如果你想知道|cFFFF8800該插件是更多的'重'|r或會減少大部分的FPS，安裝插件：“|cFFFFFF00AddOns Cpu Usage|r”。"
L["STRING_MEMORY_ALERT_TITLE"] = "請仔細閱讀！"
L["STRING_MENU_CLOSE_INSTANCE"] = "關閉視窗"
L["STRING_MENU_CLOSE_INSTANCE_DESC"] = "關閉窗口無效，可隨時從控制選單重開"
L["STRING_MENU_CLOSE_INSTANCE_DESC2"] = "To fully destroy a window，檢查選單內的雜項設定"
L["STRING_MINIMAP_TOOLTIP1"] = "|cFFCFCFCFleft click|r: 打開選單面板"
L["STRING_MINIMAP_TOOLTIP11"] = "|cFFCFCFCFleft click|r: 清除所有階段資料"
L["STRING_MINIMAP_TOOLTIP2"] = "|cFFCFCFCFright click|r: 快速選單"
L["STRING_MINIMAPMENU_LOCK"] = "鎖定"
L["STRING_MINIMAPMENU_NEWWINDOW"] = "新增視窗"
L["STRING_MINIMAPMENU_REOPENALL"] = "全部重開"
L["STRING_MINIMAPMENU_UNLOCK"] = "解鎖"
L["STRING_MINIMUM"] = "最小化"
L["STRING_MINITUTORIAL_BOOKMARK1"] = "右鍵點擊視窗任何區域中打開書籤！"
L["STRING_MINITUTORIAL_BOOKMARK2"] = "書籤是快速訪問最喜歡頁面的捷徑。"
L["STRING_MINITUTORIAL_BOOKMARK3"] = "右鍵點擊關閉書籤面板。"
L["STRING_MINITUTORIAL_BOOKMARK4"] = "不再顯示"
L["STRING_MINITUTORIAL_CLOSECTRL1"] = "|cFFFFFF00Ctrl + 右鍵點擊|r 關閉視窗！"
L["STRING_MINITUTORIAL_CLOSECTRL2"] = "如果你想重新打開它，去模式菜單->窗口控制或選項面板。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL1"] = "哪個視窗正在編輯。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL2"] = "勾選後，該組中的所有視窗也將改變。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL3"] = [=[要創建一個群組，拖動視窗＃2到視窗＃1附近。

點擊 |cFFFFFF00取消|r 按钮拆分群组]=]
L["STRING_MINITUTORIAL_OPTIONS_PANEL4"] = "創建測試計量條來測試你的配置。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL5"] = "當編輯組啟用時，群組中的所有視窗都改變了。"
L["STRING_MINITUTORIAL_OPTIONS_PANEL6"] = "在此選擇你想改變哪個視窗的外觀。"
L["STRING_MIRROR_IMAGE"] = "鏡像"
L["STRING_MISS"] = "未命中"
L["STRING_MODE_ALL"] = "所有的"
L["STRING_MODE_PLUGINS"] = "插件"
L["STRING_MODE_RAID"] = "插件: 副本"
L["STRING_MODE_SELF"] = "插件: 自己"
L["STRING_MORE_INFO"] = "查看右邊方框檢視更多資訊"
L["STRING_MUSIC_DETAILS_ROBERTOCARLOS"] = [=[你無法試著遺忘，我將與你同在
Details as small of us]=]
L["STRING_NEWROW"] = "正在等待更新"
L["STRING_NEWS_REINSTALL"] = "在更新之後發現問題?試著輸入 '/details reinstall' 命令"
L["STRING_NEWS_TITLE"] = "此版更新事項"
L["STRING_NO"] = "沒有"
L["STRING_NO_DATA"] = "數據已被清除"
L["STRING_NO_SPELL"] = "沒有可使用的法術"
L["STRING_NO_TARGET"] = "沒有發現目標"
L["STRING_NO_TARGET_BOX"] = "沒有獲取目標"
L["STRING_NOCLOSED_INSTANCES"] = "沒有可關閉視窗，請打開一個新的"
L["STRING_NOLAST_COOLDOWN"] = "沒有可使用的冷卻時間"
L["STRING_NORMAL_HITS"] = "普攻命中率"
L["STRING_OPTIONS_ADVANCED"] = "進階"
L["STRING_OPTIONS_ALPHAMOD_ANCHOR"] = "自動隱藏:"
L["STRING_OPTIONS_ALWAYS_USE"] = "使用在所有角色"
L["STRING_OPTIONS_ALWAYS_USE_DESC"] = "當啟用後，所有角色會使用此選擇的設定檔，否則，會顯示一個詢問要使用哪個設定檔的面板。"
L["STRING_OPTIONS_ANCHOR"] = "側"
L["STRING_OPTIONS_ANIMATEBARS"] = "動畫計量條"
L["STRING_OPTIONS_ANIMATEBARS_DESC"] = "套用動畫到所有計量條"
L["STRING_OPTIONS_ANIMATESCROLL"] = "滾動條動畫化"
L["STRING_OPTIONS_ANIMATESCROLL_DESC"] = "當啟用時，當出現或隱藏滾動條時使用動畫效果"
L["STRING_OPTIONS_APPEARANCE"] = "外觀"
L["STRING_OPTIONS_ATTRIBUTE_TEXT"] = "標題列文字設定"
L["STRING_OPTIONS_ATTRIBUTE_TEXT_DESC"] = "這些選項為視窗標題列的設定"
L["STRING_OPTIONS_AUTO_SWITCH"] = "所有角色 |cFFFFAA00(in combat)|r"
L["STRING_OPTIONS_AUTO_SWITCH_COMBAT"] = "|cFFFFAA00(戰鬥中)|r"
L["STRING_OPTIONS_AUTO_SWITCH_DAMAGER_DESC"] = "當為傷害專精時，這視窗顯示選定的屬性或插件"
L["STRING_OPTIONS_AUTO_SWITCH_DESC"] = [=[當你進入戰鬥時，這視窗顯示選定的屬性或插件
|cFFFFFF00重要|r: 選定的個別角色屬性將會覆蓋已選擇的屬性]=]
L["STRING_OPTIONS_AUTO_SWITCH_HEALER_DESC"] = "當為治療專精時，這視窗顯示選定的屬性或插件"
L["STRING_OPTIONS_AUTO_SWITCH_TANK_DESC"] = "當為坦克專精時，這視窗顯示選定的屬性或插件"
L["STRING_OPTIONS_AUTO_SWITCH_WIPE"] = "清除後"
L["STRING_OPTIONS_AUTO_SWITCH_WIPE_DESC"] = "在團隊首領戰鬥後，這視窗會自動顯示該屬性"
L["STRING_OPTIONS_AVATAR"] = "選擇頭像"
L["STRING_OPTIONS_AVATAR_ANCHOR"] = "身分:"
L["STRING_OPTIONS_AVATAR_DESC"] = "頭像也傳給公會成員，並顯示在玩家視窗的工具提示上"
L["STRING_OPTIONS_BAR_BACKDROP_ANCHOR"] = "邊框:"
L["STRING_OPTIONS_BAR_BACKDROP_COLOR_DESC"] = "改變邊框顏色"
L["STRING_OPTIONS_BAR_BACKDROP_ENABLED_DESC"] = "啟用或禁用行的邊框"
L["STRING_OPTIONS_BAR_BACKDROP_SIZE_DESC"] = "調整邊框大小"
L["STRING_OPTIONS_BAR_BACKDROP_TEXTURE_DESC"] = "改變邊框外觀"
L["STRING_OPTIONS_BAR_BCOLOR"] = "背景顏色"
L["STRING_OPTIONS_BAR_BTEXTURE_DESC"] = "在頂部紋理下方的紋理總是和視窗寬度一樣"
L["STRING_OPTIONS_BAR_COLOR_DESC"] = [=[該纹理的顏色和透明度

|cFFFFFF00重要|r: 當使用職業顏色時，颜色選擇將被忽略。]=]
L["STRING_OPTIONS_BAR_COLORBYCLASS"] = "使用職業顏色"
L["STRING_OPTIONS_BAR_COLORBYCLASS_DESC"] = "當啟用時，總是使用玩家職業顏色的紋理"
L["STRING_OPTIONS_BAR_HEIGHT"] = "高度"
L["STRING_OPTIONS_BAR_HEIGHT_DESC"] = "增加或減少計量條高度"
L["STRING_OPTIONS_BAR_ICONFILE"] = "圖標檔案"
L["STRING_OPTIONS_BAR_ICONFILE_DESC"] = [=[自定義圖標路徑
圖檔副檔名需要是.tag，256*256畫素with alpha channel.]=]
L["STRING_OPTIONS_BAR_SPACING"] = "間距"
L["STRING_OPTIONS_BAR_SPACING_DESC"] = "每個計量條的間隙"
L["STRING_OPTIONS_BAR_TEXTURE_DESC"] = "使用在頂部計量條的紋理"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM"] = "可自定文字"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM_DESC"] = "當啟用時，以方框中的規則格式化左邊的文本"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM2_DESC"] = [=[|cFFFFFF00{數據1}|r: 通常代表了玩家的位置編號。

|cFFFFFF00{數據2}|r: 總是玩家名字。

|cFFFFFF00{數據3}|r: 在某些情况下，此值代表玩家的聲望或角色標誌。

|cFFFFFF00{func}|r: 執行一個自定義的Lua函数來增加回傳值到語法中
例如: 
{func return 'hello azeroth'}

|cFFFFFF00轉義序列|r: 用它来改變颜色或添加紋理。搜索“UI轉義序列”以獲取更多信息]=]
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM"] = "啟用自定義text"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM_DESC"] = "當啟用時，以方框中的規則格式化右邊的文本"
L["STRING_OPTIONS_BARS_DESC"] = "這些選項設定計量條外觀"
L["STRING_OPTIONS_BARSTART_DESC"] = [=[讓顶部纹理一開始出現在圖標的左邊而不是右邊
使用帶有透明區域的圖標集時，這是非常有用的]=]
L["STRING_OPTIONS_BARUR_ANCHOR"] = "快速更新:"
L["STRING_OPTIONS_BARUR_DESC"] = "當啟用以後，DPS與HPS值會更新的比一般要快一點。"
L["STRING_OPTIONS_CAURAS"] = "獲得光環"
L["STRING_OPTIONS_CAURAS_DESC"] = [=[啟用獲得:

- |cFFFFFF00增益持續時間|r
- |cFFFFFF00减益持續時間|r
- |cFFFFFF00空白區|r
-|cFFFFFF00 冷卻|r]=]
L["STRING_OPTIONS_CDAMAGE"] = "獲得傷害"
L["STRING_OPTIONS_CDAMAGE_DESC"] = [=[啟用獲得:

- |cFFFFFF00造成傷害|r
- |cFFFFFF00每秒傷害|r
- |cFFFFFF00隊友誤傷|r
- |cFFFFFF00承受傷害|r]=]
L["STRING_OPTIONS_CENERGY"] = "獲得能源"
L["STRING_OPTIONS_CENERGY_DESC"] = [=[啟用獲得:

- |cFFFFFF00法力恢復|r
- |cFFFFFF00怒氣生成|r
- |cFFFFFF00能量生成|r
- |cFFFFFF00符文能量生成|r]=]
L["STRING_OPTIONS_CHANGELOG"] = "版本註釋"
L["STRING_OPTIONS_CHART_ADD"] = "增加數據"
L["STRING_OPTIONS_CHART_ADD2"] = "增加"
L["STRING_OPTIONS_CHART_ADDAUTHOR"] = "作者:"
L["STRING_OPTIONS_CHART_ADDCODE"] = "編碼:"
L["STRING_OPTIONS_CHART_ADDICON"] = "圖標:"
L["STRING_OPTIONS_CHART_ADDNAME"] = "名子:"
L["STRING_OPTIONS_CHART_ADDVERSION"] = "版本:"
L["STRING_OPTIONS_CHART_AUTHOR"] = "作者"
L["STRING_OPTIONS_CHART_AUTHORERROR"] = "作者名稱無效"
L["STRING_OPTIONS_CHART_CANCEL"] = "刪除"
L["STRING_OPTIONS_CHART_CLOSE"] = "關閉"
L["STRING_OPTIONS_CHART_CODELOADED"] = "編碼已被載入但無法顯示"
L["STRING_OPTIONS_CHART_EDIT"] = "編輯編碼"
L["STRING_OPTIONS_CHART_EXPORT"] = "匯出"
L["STRING_OPTIONS_CHART_FUNCERROR"] = "無效的功能"
L["STRING_OPTIONS_CHART_ICON"] = "圖標"
L["STRING_OPTIONS_CHART_IMPORT"] = "匯入"
L["STRING_OPTIONS_CHART_IMPORTERROR"] = "無效的匯入字串"
L["STRING_OPTIONS_CHART_NAME"] = "名稱"
L["STRING_OPTIONS_CHART_NAMEERROR"] = "無效的名稱"
L["STRING_OPTIONS_CHART_PLUGINWARNING"] = "載入圖表視窗顯示自訂圖表"
L["STRING_OPTIONS_CHART_REMOVE"] = "移除"
L["STRING_OPTIONS_CHART_SAVE"] = "儲存"
L["STRING_OPTIONS_CHART_VERSION"] = "版本"
L["STRING_OPTIONS_CHART_VERSIONERROR"] = "版本無效"
L["STRING_OPTIONS_CHEAL"] = "獲得治療"
L["STRING_OPTIONS_CHEAL_DESC"] = [=[啟用獲得:

- |cFFFFFF00造成治療|r
- |cFFFFFF00吸收|r
- |cFFFFFF00每秒治療|r
- |cFFFFFF00過量治療|r
- |cFFFFFF00承受治療|r
- |cFFFFFF00敵方治療|r
- |cFFFFFF00減傷|r]=]
L["STRING_OPTIONS_CLEANUP"] = "自動刪除垃圾片段"
L["STRING_OPTIONS_CLEANUP_DESC"] = "當啟用時，超出兩個片段後，垃圾片段會被自動移除"
L["STRING_OPTIONS_CLOUD"] = "雲端捕獲"
L["STRING_OPTIONS_CLOUD_DESC"] = "當啟用時，the data of disabled collectors are collected among others raid members."
L["STRING_OPTIONS_CMISC"] = "收集雜項"
L["STRING_OPTIONS_CMISC_DESC"] = [=[啟用捕獲：

- |cFFFFFF00人群控制中断|r
- |cFFFFFF00驅散|r
- |cFFFFFF00打斷|r
- |cFFFFFF00復生|r
- |cFFFFFF00死亡|r]=]
L["STRING_OPTIONS_COLORANDALPHA"] = "顏色和透明度"
L["STRING_OPTIONS_COLORFIXED"] = "顏色修正"
L["STRING_OPTIONS_COMBAT_ALPHA"] = "當"
L["STRING_OPTIONS_COMBAT_ALPHA_1"] = "None"
L["STRING_OPTIONS_COMBAT_ALPHA_2"] = "戰鬥中"
L["STRING_OPTIONS_COMBAT_ALPHA_3"] = "脫離戰鬥"
L["STRING_OPTIONS_COMBAT_ALPHA_4"] = "退出隊伍"
L["STRING_OPTIONS_COMBAT_ALPHA_DESC"] = [=[選擇戰鬥時的視窗透明度

|cFFFFFF00不變|r: 不修改透明度。

|cFFFFFF00戰鬥中|r: 當進入戰鬥時，顯示在視窗上的效果

|cFFFFFF00脫離戰鬥|r: 只要是在非戰鬥中的視窗效果

|cFFFFFF00離開隊伍|r: 當不在團隊或隊伍中,所顯示的視窗效果

|cFFFFFF00重要|r: Auto Transparency feature會覆蓋目前的設定]=]
L["STRING_OPTIONS_COMBATTWEEKS"] = "戰鬥微調"
L["STRING_OPTIONS_COMBATTWEEKS_DESC"] = "設定Details!如何調整一些戰鬥數據的細節。"
L["STRING_OPTIONS_CONFIRM_ERASE"] = "您想要刪除數據嗎？"
L["STRING_OPTIONS_CUSTOMSPELL_ADD"] = "增加法術"
L["STRING_OPTIONS_CUSTOMSPELLTITLE"] = "編輯法術設定"
L["STRING_OPTIONS_CUSTOMSPELLTITLE_DESC"] = "這面板允許擬修改法術名稱跟圖標"
L["STRING_OPTIONS_DATABROKER"] = "Data Broker:"
L["STRING_OPTIONS_DATABROKER_TEXT"] = "文字"
L["STRING_OPTIONS_DATACHARTTITLE"] = "建立定時數據的圖表"
L["STRING_OPTIONS_DATACHARTTITLE_DESC"] = "這面板允許你增加創建圖表的自訂資料"
L["STRING_OPTIONS_DATACOLLECT_ANCHOR"] = "資料形式:"
L["STRING_OPTIONS_DESATURATE_MENU"] = "將低飽和度"
L["STRING_OPTIONS_DESATURATE_MENU_DESC"] = "啟用這個選項，所有工具列上的選單圖標會變成黑跟白"
L["STRING_OPTIONS_DISABLE_ALLDISPLAYSWINDOW"] = [=[關閉'全部顯示'選單
選單面板->標題列:一般->關閉全部顯示選單且打開書籤]=]
L["STRING_OPTIONS_ED"] = "刪除數據"
L["STRING_OPTIONS_ED_DESC"] = [=[|cFFFFFF00手動|r: 使用者需要點擊重置按鈕。

|cFFFFFF00提示|r: 進入新副本時詢問是否重置。

|cFFFFFF00自動|r: 進入新副本時清除數據。]=]
L["STRING_OPTIONS_ED1"] = "手動"
L["STRING_OPTIONS_ED2"] = "提示"
L["STRING_OPTIONS_ED3"] = "自動"
L["STRING_OPTIONS_EDITIMAGE"] = "編輯圖片"
L["STRING_OPTIONS_EDITINSTANCE"] = "編輯視窗:"
L["STRING_OPTIONS_ERASECHARTDATA"] = "刪除圖表"
L["STRING_OPTIONS_ERASECHARTDATA_DESC"] = "登出時，所有戰鬥中收集的圖表資料會被刪除"
L["STRING_OPTIONS_EXTERNALS_TITLE"] = "外部小工具"
L["STRING_OPTIONS_EXTERNALS_TITLE2"] = "這些選項控制許多外部小工具的作用"
L["STRING_OPTIONS_GENERAL"] = "一般設定"
L["STRING_OPTIONS_GENERAL_ANCHOR"] = "一般:"
L["STRING_OPTIONS_HIDE_ICON"] = "隱藏圖標"
L["STRING_OPTIONS_HIDE_ICON_DESC"] = [=[當啟用時，不顯示目前所選擇的圖標

|cFFFFFF00重要|r: 啟用圖標後，强烈建議調整標題文字的位置]=]
L["STRING_OPTIONS_HIDECOMBATALPHA_DESC"] = [=[你的角色符合對應的規則時改變透明度

|cFFFFFF00無|r: 完全隱藏，無法在視窗內動作。

|cFFFFFF001 - 100|r: 不隐藏，您可以在視窗內改變透明度]=]
L["STRING_OPTIONS_HOTCORNER"] = "顯示按鈕"
L["STRING_OPTIONS_HOTCORNER_ACTION"] = "左鍵點擊"
L["STRING_OPTIONS_HOTCORNER_ACTION_DESC"] = "當左鍵點擊後選擇Hotcorner bar要做甚麼"
L["STRING_OPTIONS_HOTCORNER_ANCHOR"] = "Hotcorner:"
L["STRING_OPTIONS_HOTCORNER_DESC"] = "顯示或隱藏Hotcorner面板的按鈕"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK"] = "啟用快速點擊"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_DESC"] = [=[啟用或禁用Hotcorners快速點擊功能

Quick button is localized at the further top left pixel，並從任一處移動你的滑鼠到這, 點擊後設定左上角的動作將可被執行]=]
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC"] = "Quick Click On Click"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC_DESC"] = "當Hotcorner的快速按钮被點擊時選擇做甚麼"
L["STRING_OPTIONS_INSTANCE_ALPHA2"] = "背景顏色"
L["STRING_OPTIONS_INSTANCE_ALPHA2_DESC"] = "這選項可讓你改變時窗背景顏色"
L["STRING_OPTIONS_INSTANCE_BACKDROP"] = "背景紋理"
L["STRING_OPTIONS_INSTANCE_BACKDROP_DESC"] = "選擇這個視窗使用的背景紋理"
L["STRING_OPTIONS_INSTANCE_COLOR"] = "視窗顏色"
L["STRING_OPTIONS_INSTANCE_COLOR_DESC"] = [=[變更視窗的顏色和透明度

|cFFFFFF00重要|r: 這裡選擇的透明值會被複寫，當|cFFFFFF00Auto Transparency|r 值啟用時

|cFFFFFF00重要|r:  選擇的窗口颜色會覆盖任何自訂的狀態欄]=]
L["STRING_OPTIONS_INSTANCE_CURRENT"] = "自動轉換到目前"
L["STRING_OPTIONS_INSTANCE_CURRENT_DESC"] = "不管何時進入戰鬥，這個視窗會自動切換到目前的片段"
L["STRING_OPTIONS_INSTANCES"] = "視窗:"
L["STRING_OPTIONS_MENU_AUTOHIDE_DESC"] = "當滑鼠經過或離開視窗時會自動顯現或隱藏按鈕"
L["STRING_OPTIONS_TABEMB_ANCHOR"] = "嵌入對話標籤"
L["STRING_OPTIONS_TABEMB_ENABLED_DESC"] = "當勾選時，一個或多數視窗會附著於聊天標籤"
L["STRING_OPTIONS_TABEMB_SINGLE"] = "單一視窗"
L["STRING_OPTIONS_TABEMB_SINGLE_DESC"] = "當勾選，僅會附著一個視窗"
L["STRING_OPTIONS_TABEMB_TABNAME"] = "標籤名稱"
L["STRING_OPTIONS_TABEMB_TABNAME_DESC"] = "視窗將會附著於這個標籤名稱"
L["STRING_OPTIONS_TEXT"] = "列文字設定"
L["STRING_OPTIONS_TOOLS_ANCHOR"] = "工具:"
L["STRING_OPTIONSMENU_LEFTMENU"] = "標題列:一般"
L["STRING_RAIDCHECK_PLUGIN_DESC"] = "當進入團隊副本時，在Details!的標題列顯示一個圖示表示精練、食物、預用藥水的使用狀態。"
L["STRING_RAIDCHECK_PLUGIN_NAME"] = "團隊確認"
L["STRING_SLASH_CAPTUREOFF"] = "已關閉所有捕捉。"
L["STRING_SLASH_RESET"] = "重置"
L["STRING_SLASH_RESET_ALIAS1"] = "清除"
L["STRING_SLASH_RESET_DESC"] = "清除所有片段"
L["STRING_TRANSLATE_LANGUAGE"] = "幫助翻譯Details!"
L["STRING_WAVE"] = "波"
