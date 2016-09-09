
local addon_name, addon = ...

local module = addon:NewModule("Broker", "AceEvent-3.0")

local LDB = LibStub("LibDataBroker-1.1", true)
local LibPetJournal = LibStub("LibPetJournal-2.0")
local L	= LibStub("AceLocale-3.0"):GetLocale("PetLeash")

-- GLOBALS: ToggleDropDownMenu, UIDropDownMenu_Initialize, UIDropDownMenu_CreateInfo,
-- UIDropDownMenu_AddButton

local _G = _G
local assert, C_PetJournal, ceil, CreateFrame, floor, format, hooksecurefunc,
    IsControlKeyDown, strsplit, string, tinsert, tonumber, UIParent, wipe
    = assert, C_PetJournal, ceil, CreateFrame, floor, format, hooksecurefunc,
    IsControlKeyDown, strsplit, string, tinsert, tonumber, UIParent, wipe
local sort = table.sort

--
--
--

local BrokerMenu_InitalizeMenu, BrokerMenu_SummonPet, BrokerMenu_PetRangeString

function module:OnInitialize()
    if not LDB then
        return
    end
    
    self.broker = LDB:NewDataObject("PetLeash", {
        label = "PetLeash",
        type = "launcher",
        icon = "Interface\\Icons\\INV_Box_PetCarrier_01",
        iconR = 1,
        iconG = addon:IsEnabledSummoning() and 1 or 0.3,
        iconB = addon:IsEnabledSummoning() and 1 or 0.3,
        OnClick = function(...) self:Broker_OnClick(...) end,
        OnTooltipShow = function(...) self:Broker_OnTooltipShow(...) end
    })
    
    LibStub("LibDBIcon-1.0"):Register("PetLeash", self.broker, addon.db.profile.minimap)

    self:RegisterMessage("PetLeash-EnableState", "OnEnableState")
end

function module:InitializeDropDown()
    self.sorted_petlist = {}
    self.brokerMenu = CreateFrame("FRAME", "PetLeashBrokerMenu",
                                    UIParent, "UIDropDownMenuTemplate")
    UIDropDownMenu_Initialize(self.brokerMenu, BrokerMenu_InitalizeMenu, "MENU")
    
    LibPetJournal.RegisterCallback(self, "PetsUpdated")
    hooksecurefunc(C_PetJournal, "SetCustomName", function() self:PetsUpdated() end)
    
    self.InitializeDropDown = function() end
end

function module:PetsUpdated()
    wipe(self.sorted_petlist)
end

local function pet_cmp(ida, idb)
    return addon:GetPetName(ida) < addon:GetPetName(idb)
end

function module:LoadSortPets()
    assert(#self.sorted_petlist == 0)
    for i,petid in LibPetJournal:IteratePetIds() do
        tinsert(self.sorted_petlist, petid)
    end
    sort(self.sorted_petlist, pet_cmp)
end

function module:OnEnableState(event, state)
    local notR = state and 1 or 0.3
    self.broker.iconG = notR
    self.broker.iconB = notR
end

function module:Broker_OnTooltipShow(tt)
    tt:AddLine("PetLeash")
    tt:AddLine(" ")
    tt:AddDoubleLine(("|cffeeeeee%s|r "):format(L["Auto Summon:"]),
                    addon:IsEnabledSummoning() and ("|cff00ff00%s|r"):format(L["Enabled"])
                                                or ("|cffff0000%s|r"):format(L["Disabled"]))
                                                
    local curpetID = C_PetJournal.GetSummonedPetGUID()
    if curpetID ~= 0 and curpetID ~= nil then
        local name = addon:GetPetName(curpetID)
        tt:AddDoubleLine(format("|cffeeeeee%s|r ", L["Current Pet:"]),
                         format("|cffeeeeee%s|r", name))
    end

    local set = addon:GetCurrentSet()
    if set then
        tt:AddDoubleLine(format("|cffeeeeee%s|r ", L["Active Set:"]),
                         format("|cffeeeeee%s|r", set.name))
    end
    
    tt:AddLine(" ")
    tt:AddLine(("|cff69b950%s|r |cffeeeeee%s|r"):format(L["Left-Click:"], L["Toggle Non-Combat Pet"]))
    tt:AddLine(("|cff69b950%s|r |cffeeeeee%s|r"):format(L["Right-Click:"], L["Pet Menu"]))
    tt:AddLine(("|cff69b950%s|r |cffeeeeee%s|r"):format(L["Ctrl + Click:"], L["Open Configuration Panel"]))
    
    tt:AddLine(" ")
    
    local numpets = LibPetJournal:NumPets()
    if numpets > 0 then
        tt:AddLine(("|cff00ff00%s|r"):format(L["You have %d pets"]:format(numpets)))
    else
        tt:AddLine(("|cff00ff00%s|r"):format(L["You have no pets"]))
    end
end

function module:Broker_OnClick(frame, button)
    self:InitializeDropDown()
    
    if(IsControlKeyDown()) then
        addon:OpenOptions()
    elseif(button == "LeftButton") then
        if addon:IsEnabledSummoning() then
            addon:DismissPet(true)
        else
            addon:ResummonPet(true)
        end
    else
        ToggleDropDownMenu(1, nil, self.brokerMenu, frame, 0, 0)
    end
end

local function iter_utf8(s)
    -- Src: http://lua-users.org/wiki/LuaUnicode
    return string.gmatch(s, "([%z\1-\127\194-\244][\128-\191]*)")
end

local function str_range_diff(a,b)
    if(not b) then return iter_utf8(a)() end
    if(not a) then return nil, iter_utf8(b)() end

    local iter_a = iter_utf8(a)
    local iter_b = iter_utf8(b)
    local char_a, char_b = iter_a(), iter_b()
    local r = ""
    while char_a and char_b do
        if(char_a ~= char_b) then
            return r..char_a, r..char_b
        end

        r = r .. char_a

        char_a = iter_a()
        char_b = iter_b()
    end
  
    return r, r
end

local function safe_GetCritterName(id)
    local petid = module.sorted_petlist[id]
    if petid then
        return addon:GetPetName(petid)
    end
end

-- for two pet ids, forming a span from "a" to "b", generate a string
-- representing this span.  For example:  A - Z
function BrokerMenu_PetRangeString(a, b)
    local _, part_a = str_range_diff(safe_GetCritterName(a-1), safe_GetCritterName(a))
    local part_b = str_range_diff(safe_GetCritterName(b), safe_GetCritterName(b+1))
    return string.format("%s - %s", part_a, part_b)
end

function BrokerMenu_InitalizeMenu(frame,level, menuList)
    local ncritters = LibPetJournal:NumPets()
    
    if ncritters > 0 and #module.sorted_petlist == 0 then
        module:LoadSortPets()
    end
    
    -- If we have more than 25 critters, then split into equal
    -- groups of no more than 25 each
    if(not level or level == 1) then
        if(ncritters == 0) then
            -- Nothing to do!
        elseif(ncritters <= 25) then
            -- don't have to split :)
            local info = UIDropDownMenu_CreateInfo()
            info.text = L["Pets"]
            info.notCheckable = true
            info.hasArrow = true
            info.menuList = "1-"..ncritters
            UIDropDownMenu_AddButton(info, level) 
        else
            -- Split
            local numlines = ceil(ncritters/25)
            local generic_linesz = ncritters/numlines       -- average size
            
            for line = 1,numlines do
                -- start to finish are inclusive
                local start = floor(generic_linesz*(line-1)+1)
                local finish = floor(generic_linesz*line)
                local linesize = finish-start+1
            
                local info = UIDropDownMenu_CreateInfo()
                info.text = string.format(L["Pets"].." (%s)",BrokerMenu_PetRangeString(start, finish))
                info.notCheckable = true
                info.hasArrow = true
                info.menuList = string.format("%d-%d", start, finish)
                UIDropDownMenu_AddButton(info, level) 
            end
        end
    elseif(level == 2) then
        local start,finish = strsplit("-",menuList)     -- decode
        start, finish = tonumber(start), tonumber(finish)
        for i = start, finish do
            local petid = module.sorted_petlist[i]
            local _, customName, _, _, _, _, _, petName, petIcon = C_PetJournal.GetPetInfoByPetID(petid)

            local info = UIDropDownMenu_CreateInfo()
            info.text = customName or petName
            info.icon = petIcon
            info.value = petid
            info.notCheckable = true
            info.func = BrokerMenu_SummonPet

            UIDropDownMenu_AddButton(info, level)            
        end
    end
end

function BrokerMenu_SummonPet(info)
    C_PetJournal.SummonPetByGUID(info.value)
end
