
local addon_name, addon = ...

local module = addon:NewModule("SpecialItems", "AceEvent-3.0")

local L = LibStub("AceLocale-3.0"):GetLocale("PetLeash")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

local CreateFrame, GetItemCount, GetItemInfo, GetLocale, GetMapNameByID,
    GetNumQuestLogEntries, GetQuestLink, GetQuestLogTitle, GetSpellInfo,
    GetZoneText, IsEquippedItem, ipairs, pairs, print, setmetatable, strfind,
    strsub, tinsert, tonumber, tostring, wipe
    = CreateFrame, GetItemCount, GetItemInfo, GetLocale, GetMapNameByID,
    GetNumQuestLogEntries, GetQuestLink, GetQuestLogTitle, GetSpellInfo,
    GetZoneText, IsEquippedItem, ipairs, pairs, print, setmetatable, strfind,
    strsub, tinsert, tonumber, tostring, wipe

--
-- Item Entries
--

local SpecialItems = {}

-- Orcish Orphan Whistle
SpecialItems["item:18597"] = function(item)
    item:RegisterEvent("BAG_EVENT")
    function item:Check()
        return GetItemCount(18597) > 0
    end
end

-- Human Orphan Whistle
SpecialItems["item:18598"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(18598) > 0
    end
end

-- Bloodsail Hat
SpecialItems["item:12185"] = function(item)
    item:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    item:RegisterEvent("EQUIPMENT_SWAP_FINISHED")
    function item:Check()
        return IsEquippedItem(12185)
    end
end

-- Felhound Whistle (TODO TEST ME)
SpecialItems["item:30803"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(30803) > 0
    end
end

-- Zeppit's Crystal (Bloody Imp-ossible!)
SpecialItems["item:31815"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(31815) > 0
    end
end

-- Blood Elf Orphan Whistle
SpecialItems["item:31880"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(31880) > 0
    end
end

-- Draenei Orphan Whistle
SpecialItems["item:31881"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(31881) > 0
    end
end

-- Nether Ray Cage (TODO CHECK ME)
SpecialItems["item:32834"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(32834) > 0
    end
end

-- Warsong Flare Gun (Alliance Deserter) (TODO TEST ME)
SpecialItems["item:34971"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(34971) > 0
    end
end

-- Golem Control Unit (TODO TEST ME)
SpecialItems["item:36936"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(36936) > 0
    end
end

-- Don Carlos' Famous Hat
SpecialItems["item:38506"] = function(item)
    item:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    item:RegisterEvent("EQUIPMENT_SWAP_FINISHED")
    function item:Check()
        return IsEquippedItem(38506)
    end
end

-- Venomhide Hatchling (20day Raptor Mount quest)
SpecialItems["item:46362"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    item:RegisterEvent("ZONE_CHANGED")
    item:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    function item:Check()
        local mapname = GetZoneText()
        return GetItemCount(46362) > 0 and
               (mapname == GetMapNameByID(201) or
                mapname == GetMapNameByID(161) or
                mapname == GetMapNameByID(261))
    end
end

-- Wolvar Orphan Whistle
SpecialItems["item:46396"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(46396) > 0
    end
end

-- Oracle Orphan Whistle
SpecialItems["item:46397"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(46397) > 0
    end
end

-- TODO check me
SpecialItems["item:46831"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    function item:Check()
        return GetItemCount(46831) > 0
    end
end

-- Winterspring Cub (20day Winterspring Frostsaber quest) 
SpecialItems["item:68646"] = function(item)
    item:RegisterEvent("BAG_UPDATE")
    item:RegisterEvent("ZONE_CHANGED")
    item:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    function item:Check()
        local mapname = GetZoneText()
        return GetItemCount(68646) > 0 and mapname == GetMapNameByID(281)
    end
end

SpecialItems["item:71137"] = function(item)
    item:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    
    function item:TimerFinished()
        self.timer = nil
        self:Update(false)
    end

    function item:Check(event, ...)
        if event == "UNIT_SPELLCAST_SUCCEEDED" then
            local unit, name, _, _, spellid = ...
            if unit == "player" and spellid == 100959 then
                self.timer = self:ScheduleTimer("TimerFinished", 180)
                return true
            end
        end
        return self.timer ~= nil
    end
end

-- TODO check me
SpecialItems["quest:11878"] = function(item)
    item:RegisterQuestEvent()
    function item:Check()
        return self:PlayerHasQuest(11878)
    end
end

-- TODO check me
SpecialItems["quest:26831"] = function(item)
    item:RegisterQuestEvent()
    function item:Check()
        return self:PlayerHasQuest(26831)
    end
end

-- TODO check me
SpecialItems["quest:25371"] = function(item)
    item:RegisterQuestEvent()
    function item:Check()
        return self:PlayerHasQuest(25371)
    end
end

-- Various Nagrand Quests
SpecialItems["quest:35396"] = function(item)
    item:RegisterQuestEvent()
    function item:Check()
        return self:PlayerHasQuest(25371) 
            or self:PlayerHasQuest(35317)
            or self:PlayerHasQuest(35331)
            or self:PlayerHasQuest(34965)
    end
end

--
--
--

local defaults = {
    profile = {
        enable = true,
        items = {
            ["*"] = true
        }
    },
    global = {
        localeCache = {
            ["*"] = {}
        }
    }
}

local options = {
    type = "group",
    name = L["Special Items"],
    order = 11,
    cmdHidden = true,
    args = {
        explain = {
            type = "description",
            name = L["EXPLAIN_SPECIAL_ITEMS"],
            order = 0,
        },
        enable = {
            type = "toggle",
            name = ENABLE,
            order = 1,
            get = function()
                return module.db.profile.enable
            end,
            set = function(info, val)
                module.db.profile.enable = val
                module:UpdateReadyEnabled()
            end,
        },
        itemsGroup = {
            type = "group",
            name = ITEMS,
            inline = true,
            order = 2,
            get = function(info)
                return module.db.profile.items[info[#info]]
            end,
            set = function(info, val)
                module.db.profile.items[info[#info]] = val
                module:UpdateReadyEnabled()
            end,
            args = {},
        },
    }
}


--
--
--

function module:OnInitialize()
    self.items = {}
    self.event_item_map = {}
    self.event_handler = CreateFrame("FRAME")
    self.event_handler:SetScript("OnEvent", function(f, ev, ...)
        self:HandleEvent(ev, ...)
    end)

    self.ready = addon:GetModule("Ready")
    self.db = addon.db:RegisterNamespace("SpecialItems", defaults)

    self.currentQuests = {}
    self:RegisterEvent("QUEST_LOG_UPDATE", "UpdateQuestList")
    self:RegisterEvent("QUEST_ACCEPTED", "UpdateQuestList")
    self:RegisterEvent("QUEST_FINISHED", "UpdateQuestList")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "UpdateQuestList")
    self:UpdateQuestList()

    self:InitWatchers()
    self:UpdateReadyEnabled()
end

function module:SetupOptions(setup)
    AceConfig:RegisterOptionsTable(self.name, options)
    setup(self.name, L["Special Items"])
end

function module:UpdateReadyEnabled()
    for item in pairs(SpecialItems) do
        self.ready:EnableCheck(item, module.db.profile.enable and module.db.profile.items[item])
    end
end

local function config_localize_string(info)
    return module:LocalizeString(info[#info])
end

function module:InitWatchers()
    local args = options.args.itemsGroup.args

    for itemName, func in pairs(SpecialItems) do
        if not args[itemName] then
            args[itemName] = {
                type = "toggle",
                name = config_localize_string,
            }
        end

        local item = self.items[itemName] or self:InitItem(itemName, func)
        item:Update(item:Check("Init"))
    end
end

function module:SI_RegisterEvent(item, event)
    if not self.event_item_map[event] then
        self.event_item_map[event] = {}
        self.event_handler:RegisterEvent(event)
    end

    tinsert(self.event_item_map[event], item)
end

function module:HandleEvent(event, ...)
    if self.event_item_map[event] then
        for _,item in ipairs(self.event_item_map[event]) do
            item:Update(item:Check(event, ...))
        end
    end
end

function module:UpdateQuestList()
    wipe(self.currentQuests)
    for i = 1, (GetNumQuestLogEntries() or 0) do
        local link = GetQuestLink(i)
        if link ~= nil then
            local _,_,qid = strfind(link, "|Hquest:(%d+):(%d+)|")
            if qid ~= nil then
                self.currentQuests[tonumber(qid)] = true
            end
       end
    end

    self:HandleEvent("UpdateQuestList")
end

function module:LocalizeString(s)
    local cache = self.db.global.localeCache[GetLocale()]
    if cache[s] then
        return cache[s]
    end

    local name = self:AskClientForName(s)
    if name then
        cache[s] = name
        return name
    end

    return s
end

function module:AskClientForName(item)
    if strsub(item, 1,5) == "item:" then
        return (GetItemInfo(item))
    elseif strsub(item, 1,6) == "spell:" then
        return (GetSpellInfo(strsub(item,7)))
    elseif strsub(item, 1,6) == "quest:" then
        local questid = strsub(item,7)
        for i = 1, (GetNumQuestLogEntries() or 0) do
            local link = GetQuestLink(i)
            if link ~= nil then
                local _,_,qid = strfind(link, "|Hquest:(%d+):(%d+)|")
                if qid == questid then
                    return (GetQuestLogTitle(i))
                end
           end
        end
    end
end

--
-- SpecialItem construction
--

local SpecialItemMeta = {}
SpecialItemMeta.__index = SpecialItemMeta

LibStub("AceTimer-3.0"):Embed(SpecialItemMeta)

function SpecialItemMeta:RegisterEvent(event)
    module:SI_RegisterEvent(self, event)
end

function SpecialItemMeta:RegisterQuestEvent()
    self:RegisterEvent("UpdateQuestList")
end

function SpecialItemMeta:PlayerHasQuest(questID)
    return module.currentQuests[questID]
end

function SpecialItemMeta:Check()
    print("WARNING: Check not implemented for "..tostring(self.name))
end

function SpecialItemMeta:Update(value)
    module.ready:SetReady(self.name, not value)
end

function module:InitItem(name, func)
    local item = setmetatable({}, SpecialItemMeta)
    item.name = name
    item:RegisterEvent("PLAYER_ENTERING_WORLD")
    self.items[name] = item
    func(item)
    return item
end
