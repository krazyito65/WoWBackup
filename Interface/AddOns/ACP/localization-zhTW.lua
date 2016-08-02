﻿if not ACP then return end

--@non-debug@

if (GetLocale() == "zhTW") then
	ACP:UpdateLocale(

{
	["ACP: Some protected addons aren't loaded. Reload now?"] = "ACP: 部分受保護的插件沒有被載入。現在重載介面?",
	["Active Embeds"] = "運行中的程式集",
	AddOns = "插件管理",
	["Addon <%s> not valid"] = "無效的插件: <%s>",
	["Addons [%s] Loaded."] = "插件清單[%s]已載入。",
	["Addons [%s] renamed to [%s]."] = "插件清單[%s]重新命名為[%s]。",
	["Addons [%s] Saved."] = "插件清單[%s]存檔完畢。",
	["Addons [%s] Unloaded."] = "插件清單[%s]已卸載。",
	["Add to current selection"] = "新增到現在的選擇",
	Author = "作者",
	Blizzard_AchievementUI = "Blizzard: Achievement",
	Blizzard_AuctionUI = "Blizzard: Auction",
	Blizzard_BarbershopUI = "Blizzard: Barbershop",
	Blizzard_BattlefieldMinimap = "Blizzard: Battlefield Minimap",
	Blizzard_BindingUI = "Blizzard: Binding",
	Blizzard_Calendar = "Blizzard: Calendar",
	Blizzard_CombatLog = "Blizzard: Combat Log",
	Blizzard_CombatText = "Blizzard: Combat Text",
	Blizzard_FeedbackUI = "Blizzard: Feedback",
	Blizzard_GlyphUI = "Blizzard: Glyph",
	Blizzard_GMSurveyUI = "Blizzard: GM Survey",
	Blizzard_GuildBankUI = "Blizzard: GuildBank",
	Blizzard_InspectUI = "Blizzard: Inspect",
	Blizzard_ItemSocketingUI = "Blizzard: Item Socketing",
	Blizzard_MacroUI = "Blizzard: Macro",
	Blizzard_RaidUI = "Blizzard: Raid",
	Blizzard_TalentUI = "Blizzard: Talent",
	Blizzard_TimeManager = "Blizzard: TimeManager",
	Blizzard_TokenUI = "Blizzard: Token",
	Blizzard_TradeSkillUI = "Blizzard: Trade Skill",
	Blizzard_TrainerUI = "Blizzard: Trainer",
	Blizzard_VehicleUI = "Blizzard: Vehicle",
	["Click to enable protect mode. Protected addons will not be disabled"] = "點擊啟用保護模式。受保護的插件",
	Close = "關閉",
	Default = "預設",
	Dependencies = "依賴插件",
	["Disable All"] = "全部停用",
	["Disabled on reloadUI"] = "重載介面後停用",
	Embeds = "函數庫",
	["Enable All"] = "全部啟用",
	["*** Enabling <%s> %s your UI ***"] = "*** 啟用<%s>，%s你的使用者介面 ***",
	["Enter the new name for [%s]:"] = "替[%s]重新取名:",
	Load = "載入",
	["Loadable OnDemand"] = "可隨需求載入",
	Loaded = "已載入",
	["Loaded on demand."] = "隨需求載入。",
	["LoD Child Enable is now %s"] = "隨需求載入子插件: %s",
	["Memory Usage"] = "記憶體用量",
	["No information available."] = "無可用的資訊。",
	Recursive = "遞迴",
	["Recursive Enable is now %s"] = "遞迴載入插件: %s",
	Reload = "重載",
	ReloadUI = "重載介面",
	["Reload your User Interface?"] = "重載你的使用者介面?",
	["Remove from current selection"] = "從現在的選擇中移除",
	Rename = "重新命名",
	["Resurse-ToolTip"] = "當啟用一個插件時，嘗試啟用此插件所依賴的插件。",
	Save = "存檔",
	["Save the current addon list to [%s]?"] = "儲存目前的插件清單為[%s]?",
	["Set "] = "設定: ",
	Sets = "設定",
	Status = "狀態",
	["*** Unknown Addon <%s> Required ***"] = "*** 需要未知的插件<%s> ***",
	["Use SHIFT to override the current enabling of dependancies behaviour."] = "使用Shift鍵來重寫目前啟用的依賴行為。",
	Version = "版本",
	["when performing a reloadui."] = "重載介面後不會被停用。",
}


    )
end

--@end-non-debug@