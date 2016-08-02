
-- GLOBALS: ToggleDropDownMenu, UIDropDownMenu_Initialize, UIDropDownMenu_CreateInfo,
-- UIDropDownMenu_AddButton,  UIDropDownMenu_GetCurrentDropDown, HideDropDownMenu,
-- SearchBoxTemplate_OnEditFocusLost, SearchBoxTemplate_OnTextChanged

local C_PetJournal, CreateFrame, format, floor, GameTooltip, ipairs,
    IsControlKeyDown, max, pairs, PlaySound,
    strfind, strlower, table, tinsert, UIParent, unpack, wipe
    = C_PetJournal, CreateFrame, format, floor, GameTooltip, ipairs,
    IsControlKeyDown, max, pairs, PlaySound,
    strfind, strlower, table, tinsert, UIParent, unpack, wipe

local L = LibStub("AceLocale-3.0"):GetLocale("PetLeash")

do
    -- Based on AceGUIWidget-CheckBox
    local Type, Version = "PetLeash_WeightedCheckbox", 1
    local AceGUI = LibStub("AceGUI-3.0")

    local function Control_OnEnter(frame)
        frame.obj:Fire("OnEnter")
    end

    local function Control_OnLeave(frame)
        frame.obj:Fire("OnLeave")
    end

    local function CheckBox_OnMouseDown(frame)
        local self = frame.obj
        if not self.disabled then
            AceGUI:ClearFocus()
        end
    end

    local function CheckBox_OnMouseUp(frame, button)
        local self = frame.obj
        if not self.disabled then
            if IsControlKeyDown() or button == "RightButton" then
                ToggleDropDownMenu(1, nil, self.menu, self.frame, 0, 0)
            else
                if UIDropDownMenu_GetCurrentDropDown() == self.menu then
                    HideDropDownMenu(1)
                end

                if self.value then
                    PlaySound("igMainMenuOptionCheckBoxOff")
                else -- for both nil and false (tristate)
                    PlaySound("igMainMenuOptionCheckBoxOn")
                end
                if self.value == self.falseValue then
                    self:SetValue(self.trueValue)
                    self:Fire("OnValueChanged", self.trueValue)
                else
                    self:SetValue(self.falseValue)
                    self:Fire("OnValueChanged", self.falseValue)
                end
            end
        end
    end

    local function Menu_Click(frame, self, value)
        self:SetValue(value)
        self:Fire("OnValueChanged", value)
    end

    local function Menu_Initialize(frame, menuLevel, menuList)
        local self = frame.obj
        if self and self.values then
            for _, item in ipairs(self.values) do
                local v, short, long = unpack(item)

                local info = UIDropDownMenu_CreateInfo()
                info.text = long
                info.checked = v == self.value
                info.func = Menu_Click
                info.arg1 = self
                info.arg2 = v
                UIDropDownMenu_AddButton(info, menuLevel) 
            end
        end

        local info = UIDropDownMenu_CreateInfo()
        info.text = CANCEL
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, menuLevel) 
    end

    local methods = {
        OnAcquire = function(self)
            self:SetWidth(24)
            self:SetHeight(24)
            self:SetDisabled(false)
            self:SetLabel()
            self:SetWeightValues()
            self:SetValue()
        end,

        OnRelease = function(self)

        end,

        SetDisabled = function(self, disabled)
            self.disabled = disabled
            if disabled then
                self.frame:Disable()
                self.text:SetTextColor(0.5, 0.5, 0.5)
                self.check:SetDesaturated(true)
            else
                self.frame:Enable()
                self.text:SetTextColor(1, 1, 1)
                if self.tristate and self.checked == nil then
                    self.check:SetDesaturated(true)
                else
                    self.check:SetDesaturated(false)
                end
            end
        end,

        SetLabel = function(self, label)
            self.text:SetText(label)
        end,

        SetWeightValues = function(self, values)
            self.values = values
            self.falseValue = 0
            self.trueValue = 1
            if values then
                for _, item in ipairs(values) do
                    local v, short, long = unpack(item)
                    if short == false then
                        self.falseValue = v
                    elseif short == true then
                        self.trueValue = v
                    end
                end
            end
        end,

        SetValue = function(self, value)
            value = value or self.falseValue
            self.value = value
            if value == self.trueValue then
                self.check:SetDesaturated(true)
                self.check:Show()
                self.short:Hide()
            elseif value == self.falseValue then
                self.check:SetDesaturated(false)
                self.check:Hide()
                self.short:Hide()
            elseif self.values then
                for _, item in ipairs(self.values) do
                    local v, short, long = unpack(item)
                    if v == value then
                        self.short:Show()
                        self.short:SetText(short)
                        self.check:Hide()
                    end
                end
            end
            self:SetDisabled(self.disabled)
        end,

        GetValue = function(self)
            return self.value
        end,
    }

    local function Constructor()
        local num = AceGUI:GetNextWidgetNum(Type)
        local frame = CreateFrame("Button", nil, UIParent)
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetScript("OnEnter", Control_OnEnter)
        frame:SetScript("OnLeave", Control_OnLeave)
        frame:SetScript("OnMouseDown", CheckBox_OnMouseDown)
        frame:SetScript("OnMouseUp", CheckBox_OnMouseUp)

        local checkbg = frame:CreateTexture(nil, "ARTWORK")
        checkbg:SetWidth(24)
        checkbg:SetHeight(24)
        checkbg:SetPoint("TOPLEFT")
        checkbg:SetTexture("Interface\\Buttons\\UI-CheckBox-Up")

        local check = frame:CreateTexture(nil, "OVERLAY")
        check:SetAllPoints(checkbg)
        check:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")

        local short = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        short:SetAllPoints(checkbg)
        short:Hide()

        local text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        text:SetJustifyH("LEFT")
        text:SetHeight(18)
        text:SetWidth(255)
        text:SetPoint("LEFT", checkbg, "RIGHT")
        text:SetPoint("RIGHT", frame)

        local highlight = frame:CreateTexture(nil, "HIGHLIGHT")
        highlight:SetTexture("Interface\\Buttons\\UI-CheckBox-Highlight")
        highlight:SetBlendMode("ADD")
        highlight:SetAllPoints(checkbg)

        local menu = CreateFrame("FRAME", Type.."_Menu"..num, UIParent, "UIDropDownMenuTemplate")
        UIDropDownMenu_Initialize(menu, Menu_Initialize)

        local widget = {
            frame       = frame,
            type        = Type,
            checkbg     = checkbg,
            check       = check,
            short       = short,
            text        = text,
            menu        = menu
        }
        for method, func in pairs(methods) do
            widget[method] = func
        end
        check.obj, menu.obj = widget, widget

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

--
--
--

do 
    local Type, Version = "PetLeash_PetSelectItem", 1
    local AceGUI = LibStub("AceGUI-3.0")
    local LibPetJournal = LibStub("LibPetJournal-2.0")

    local function frame_OnEnter(frame)
        local petID = frame.widget.petID
        if petID ~= nil then
            local _, customName, level, _, _, _, _, name, _, petType = C_PetJournal.GetPetInfoByPetID(petID)
            local _, _, _, _, quality = C_PetJournal.GetPetStats(petID)
            local name = customName or name

            GameTooltip:SetOwner(frame, "ANCHOR_TOPRIGHT")
            GameTooltip:AddLine(format("|cff%02x%02x%02x%s|r",
                                        ITEM_QUALITY_COLORS[quality-1].r*255,
                                        ITEM_QUALITY_COLORS[quality-1].g*255,
                                        ITEM_QUALITY_COLORS[quality-1].b*255,
                                        name))
            GameTooltip:AddLine(format(TOOLTIP_WILDBATTLEPET_LEVEL_CLASS, level, PET_TYPE_SUFFIX[petType]))
            GameTooltip:Show()
        end
    end

    local function frame_OnLeave(frame)
        if GameTooltip:GetOwner() == frame then
            GameTooltip:Hide()
        end
    end

    local function check_OnEnter(checkBox)
        GameTooltip:SetOwner(checkBox.frame, "ANCHOR_TOPRIGHT")
        GameTooltip:AddLine(L["EXPLAIN_WEIGHTED_CHECKBOX"])
        GameTooltip:Show()
    end

    local function check_OnLeave(checkBox)
        GameTooltip:Hide()
    end

    local function check_OnValueChanged(checkBox, event, value)
        local self = checkBox:GetUserData("self")
        self:Fire("OnValueChanged", value)
    end

    local function GetPetTypeTexture(petType) 
        if PET_TYPE_SUFFIX[petType] then
            return "Interface\\PetBattles\\PetIcon-"..PET_TYPE_SUFFIX[petType]
        else
            return "Interface\\PetBattles\\PetIcon-NO_TYPE"
        end
    end

    local methods = {
        OnAcquire = function(self)
            self.check = AceGUI:Create("PetLeash_WeightedCheckbox")
            self.check:SetPoint("RIGHT", self.frame)
            self.check:SetUserData("self", self)
            self.check:SetCallback("OnValueChanged", check_OnValueChanged)
            self.check:SetCallback("OnEnter", check_OnEnter)
            self.check:SetCallback("OnLeave", check_OnLeave)
            self.check:SetWeightValues(self.values)
            self.check.frame:SetParent(self.frame)
            self.check.frame:Show()

            self.name:SetPoint("TOPLEFT", self.icon, "TOPRIGHT", 2, 2)
            self.name:SetPoint("RIGHT", self.check.frame, "LEFT")
            self.name:SetHeight(18)

            self.subName:SetPoint("BOTTOMLEFT", self.icon, "BOTTOMRIGHT", 2, 0)
            self.subName:SetPoint("RIGHT", self.check.frame, "LEFT")
            self.subName:SetHeight(16)

            self:SetWidth(200)
            self:SetHeight(30)
            self:SetValue()
            self:SetPetID()
        end,

        OnRelease = function(self)
            self.subName:ClearAllPoints()
            self.name:ClearAllPoints()

            self.check:Release()
            self.check = nil
        end,

        OnHeightSet = function(self, height)
            self.icon:SetSize(height-4, height-4)
            self.petType:SetSize((height-2)*(45/22), (height-2))
        end,

        SetValue = function(self, value)
            self.check:SetValue(value)
        end,

        GetValue = function(self)
            return self.value
        end,

        SetWeightValues = function(self, values)
            self.values = values
            if self.check then
                self.check:SetWeightValues(values)
            end
        end,

        SetPetID = function(self, petID)
            self.petID = petID

            if petID then
                local _, customName, _, _, _, _, _, name, icon, petType = C_PetJournal.GetPetInfoByPetID(petID)
                self.name:SetText(name)
                self.subName:SetText(customName)
                self.icon:SetTexture(icon)
                self.icon:Show()
                self.petType:SetTexture(GetPetTypeTexture(petType))
                self.petType:Show()

                local _, _, _, _, quality = C_PetJournal.GetPetStats(petID)
                self.iconBorder:SetVertexColor(ITEM_QUALITY_COLORS[quality-1].r,
                                               ITEM_QUALITY_COLORS[quality-1].g,
                                               ITEM_QUALITY_COLORS[quality-1].b)
            else
                self.name:SetText("")
                self.subName:SetText("")
                self.iconBorder:SetVertexColor(1,1,1)
                self.icon:Hide()
                self.petType:Hide()
            end
        end,

        GetPetID = function(self)
            return self.petID
        end
    }

    local function Constructor()
        local num = AceGUI:GetNextWidgetNum(Type)
        local frame = CreateFrame("Frame", nil, UIParent)

        frame:SetScript("OnEnter", frame_OnEnter)
        frame:SetScript("OnLeave", frame_OnLeave)

        local background = frame:CreateTexture(nil, "BACKGROUND")
        background:SetTexture("Interface\\PetBattles\\PetJournal")
        background:SetTexCoord(0.49804688, 0.90625000, 0.12792969, 0.17285156)
        background:SetPoint("TOPLEFT")
        background:SetPoint("BOTTOMRIGHT")

        local icon = frame:CreateTexture(nil, "BORDER")
        icon:SetPoint("TOPLEFT", 3, -3)
        icon:SetTexture("Interface\\Icons\\INV_Misc_Gear_03")

        local petType = frame:CreateTexture(nil, "BORDER")
        petType:SetPoint("BOTTOMRIGHT", -1, 1)
        petType:SetSize(45, 22)
        petType:SetTexCoord(0.00781250, 0.71093750, 0.74609375, 0.91796875)

        local iconBorder = frame:CreateTexture(nil, "ARTWORK")
        iconBorder:SetTexture("Interface\\Common\\WhiteIconFrame")
        iconBorder:SetPoint("TOPLEFT", icon, "TOPLEFT")
        iconBorder:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT")

        local name = frame:CreateFontString(nil, "ARTWORK")
        name:SetFontObject(GameFontNormalSmall)
        name:SetJustifyH("LEFT") 

        local subName = frame:CreateFontString(nil, "ARTWORK")
        subName:SetFontObject(SystemFont_Tiny)
        subName:SetJustifyH("LEFT")
        subName:SetVertexColor(1,1,1,1)

        local widget = {
            frame       = frame,
            type        = Type,
            name        = name,
            subName     = subName,
            icon        = icon,
            petType     = petType,
            iconBorder  = iconBorder
        }
        for method, func in pairs(methods) do
            widget[method] = func
        end

        frame.widget = widget

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

--
--
--

do 
    local Type, Version = "PetLeash_PetSelectList", 1
    local AceGUI = LibStub("AceGUI-3.0", true)
    local LibPetJournal = LibStub("LibPetJournal-2.0")

    local itemHeight = 30

    local function PetListUpdated(self)
        self:Update()
    end

    local function defaultCheck_OnValueChanged(self, event, value)
        self:GetUserData("list"):SetDefault(value)
    end

    local function clearButton_OnClick(self, event, value)
        self:GetUserData("list"):Clear()
    end

    local function item_OnValueChanged(self, event, value)
        local tbl = self:GetUserData("list").lookupTable
        if tbl then
            tbl[self:GetPetID()] = value
        end
    end

    local function updateScroll(self)
        if not self.offset or not self.pageHeight then
            self.scrollFrame:SetScript("OnUpdate", updateScroll)
            return
        end
        self.scrollFrame:SetScript("OnUpdate", nil)

        local lastItem
        local i = 0
        while i <= floor((self.pageHeight+1)*self.cols) do
            local off = i + self.offset*self.cols
            local petID = self.petIDs[off+1]
            if not petID then
                break
            end

            local item = self.items[i]
            if not item then
                item = AceGUI:Create("PetLeash_PetSelectItem")
                item:SetParent(self)
                item:SetWidth(self.colwidth)
                item:SetHeight(itemHeight)
                if i % self.cols == 0 then
                    item:SetPoint("TOPLEFT", self.content, 0, -(floor(i)/self.cols)*(itemHeight + 1))
                else
                    item:SetPoint("TOPLEFT", lastItem.frame, "TOPRIGHT", 4, 0)
                end
                item:SetUserData("list", self)
                item:SetWeightValues(self.values)

                self.items[i] = item
            end

            item:SetCallback("OnValueChanged", nil)
            item:SetPetID(petID)
            if self.lookupTable then
                local v = self.lookupTable[petID]
                if v == nil then
                    v = self.defaultValue
                end
                item:SetValue(v)
            else
                item:SetValue(self.defaultValue)
            end
            item:SetCallback("OnValueChanged", item_OnValueChanged)
            item.frame:Show()

            lastItem = item
            i = i + 1
        end
        
        while self.items[i] do
            self.items[i].frame:Hide()
            i = i + 1
        end

        local listHeight = floor(#self.petIDs/self.cols)
        if listHeight > self.pageHeight then
            self.scrollFrame:SetPoint("TOPRIGHT", self.filterBox, "BOTTOMRIGHT", -16, -5)
            self.scrollbar:Show()
            self.scrollbar:SetMinMaxValues(0, floor(listHeight - self.pageHeight + 2))
        else
            self.scrollFrame:SetPoint("TOPRIGHT", self.filterBox, "BOTTOMRIGHT", 0, -5)
            self.scrollbar:Hide()
        end
    end

    local function scrollbar_OnValueChanged(scrollbar, value)
        if scrollbar.obj then
            scrollbar.obj.offset = floor(value)
            updateScroll(scrollbar.obj)
        end
    end

    local function filterBox_OnTextChanged(filterBox)
        filterBox.obj:SetScroll()
        filterBox.obj:Update()
    end

    local function scrollFrame_OnMouseWheel(scrollFrame, value)
        scrollFrame.obj:MoveScroll(value)
    end

    local function scrollFrame_OnSizeChanged(self, width, height)
        if not self.obj then
            return
        end

        self.obj.pageHeight = (height-25)/itemHeight
        self.obj.cols = max(floor((width+4)/170), 1)
        self.obj.colwidth = width/self.obj.cols-4

        for _,i in pairs(self.obj.items) do
            i:Release()
        end
        wipe(self.obj.items)

        updateScroll(self.obj)
    end

    local function petCmp(a, b)
        local _, customNameA, levelA, _, _, _, _, nameA = C_PetJournal.GetPetInfoByPetID(a)
        local _, customNameB, levelB, _, _, _, _, nameB = C_PetJournal.GetPetInfoByPetID(b)
        local customNameA = customNameA or nameA or ""
        local customNameB = customNameB or nameB or ""

        if nameA == nameB then
            if customNameA == customNameB then
                if levelA == levelB then
                    return a < b
                end
                return levelA < levelB
            end
            return customNameA < customNameB
        end
        return nameA < nameB
    end

    local methods = {
        OnAcquire = function(self)
            self.defaultCheck = AceGUI:Create("PetLeash_WeightedCheckbox")
            self.defaultCheck:SetLabel(DEFAULT)
            self.defaultCheck:SetCallback("OnValueChanged", defaultCheck_OnValueChanged)
            self.defaultCheck:SetUserData("list", self)
            self.defaultCheck.frame:SetParent(self.frame)
            self.defaultCheck.frame:Show()

            self.clearButton = AceGUI:Create("Button")
            self.clearButton:SetText(L["Clear"])
            self.clearButton:SetCallback("OnClick", clearButton_OnClick)
            self.clearButton:SetUserData("list", self)
            self.clearButton.frame:SetParent(self.frame)
            self.clearButton.frame:Show()

            self.frozen = true
            self:SetWidth(200)
            self:SetHeight(200)
            self:SetFilter()
            self:SetScroll()
            self:SetTable()
            self:SetWeightValues()
            self.frozen = false

            self:Update()

            LibPetJournal.RegisterCallback(self, "PetListUpdated", PetListUpdated, self)
        end,

        OnRelease = function(self)
            for _,item in pairs(self.items) do
                item:Release()
            end
            wipe(self.items)
            wipe(self.petIDs)

            self.defaultCheck:Release()
            self.defaultCheck = nil

            self.clearButton:Release()
            self.clearButton = nil

            self.lookupTable = nil

            LibPetJournal.UnregisterCallback(self, "PetListUpdated")
        end,

        OnWidthSet = function(self, width)
            self.defaultCheck:ClearAllPoints()
            self.clearButton:ClearAllPoints()
            self.filterBox:ClearAllPoints()

            self.defaultCheck:SetPoint("TOPLEFT")
            if width < 340 then
                -- 2 or more rows
                if width < 240 then
                    -- 3 rows
                    self.defaultCheck:SetWidth(width)
                    self.clearButton:SetPoint("TOPRIGHT", self.defaultCheck.frame, "BOTTOMRIGHT")
                else
                    -- 2 rows
                    self.defaultCheck:SetWidth(width-120)
                    self.clearButton:SetPoint("LEFT", self.defaultCheck.frame, "RIGHT")
                end
                self.clearButton:SetWidth(120)

                local filterBoxWidth = width
                if filterBoxWidth > 200 then
                    filterBoxWidth = 200
                end
                self.filterBox:SetPoint("TOPRIGHT", self.clearButton.frame, "BOTTOMRIGHT")
                self.filterBox:SetWidth(filterBoxWidth)
            else
                -- one row
                local filterBoxWidth = width - 240
                if filterBoxWidth > 200 then
                    filterBoxWidth = 200
                end
                self.defaultCheck:SetWidth(120)
                self.clearButton:SetPoint("LEFT", self.defaultCheck.frame, "RIGHT")
                self.clearButton:SetWidth(120)
                self.filterBox:SetPoint("TOPRIGHT")
                self.filterBox:SetWidth(filterBoxWidth)
            end
        end,

        SetScroll = function(self, value)
            self.scrollbar:SetValue(value or 0)
            self.offset = floor(value or 0)
            updateScroll(self)
        end,

        MoveScroll = function(self, value)
            self.scrollbar:SetValue(floor(self.scrollbar:GetValue()) - value)
        end,

        SetDefault = function(self, value)
            if self.defaultValue ~= value then
                self.defaultValue = value
                self:Fire("OnDefaultChanged", value)
                self:Update()
            end
        end,

        GetDefault = function(self)
            return self.defaultValue
        end,

        Clear = function(self)
            if self.lookupTable then
                wipe(self.lookupTable)
            end
            self:Fire("OnClear")
            self:Update()
        end,

        SetFilter = function(self, text)
            self.filterBox:SetText(text or "")

            -- XXX only do this if we're empty or already don't have focus?
            self.filterBox:ClearFocus()
            SearchBoxTemplate_OnEditFocusLost(self.filterBox)
        end,

        SetTable = function(self, tbl)
            self.lookupTable = tbl
            self:Update()
        end,

        SetWeightValues = function(self, vals)
            self.values = vals
            if self.defaultCheck then
                self.defaultCheck:SetWeightValues(vals)
            end
            self:Update()
        end,

        Update = function(self)
            if self.frozen then
                return
            end

            self.defaultCheck:SetValue(self.defaultValue)

            local filter = strlower(self.filterBox:GetText())
            SearchBoxTemplate_OnTextChanged(self.filterBox)
            
            wipe(self.petIDs)
            for _,petID in LibPetJournal:IteratePetIDs() do
                if not C_PetJournal.PetNeedsFanfare(petID) then
                    local _, customName, _, _, _, _, _, name, icon, petType = C_PetJournal.GetPetInfoByPetID(petID)
                    if filter == "" or (customName and strfind(strlower(customName), filter, nil, true)) or strfind(strlower(name), filter, nil, true) then
                        tinsert(self.petIDs, petID)
                    end
                end
            end

            table.sort(self.petIDs, petCmp)

            updateScroll(self)
        end
    }

    local function Constructor()
        local num = AceGUI:GetNextWidgetNum(Type)
        local frame = CreateFrame("Frame", nil, UIParent)

        local filterBox = CreateFrame("EditBox", Type.."_Filter"..num, frame, "SearchBoxTemplate")
        filterBox:SetAutoFocus(false)
        filterBox:SetFontObject(ChatFontNormal)
        filterBox:SetHeight(20)
        filterBox:SetScript("OnTextChanged", filterBox_OnTextChanged)

        -- we currently only use scrollframe to provide clipping
        local scrollFrame = CreateFrame("ScrollFrame", nil, frame)
        scrollFrame:SetPoint("TOPRIGHT", filterBox, "BOTTOMRIGHT", -16, -5)
        scrollFrame:SetPoint("BOTTOMLEFT", frame)
        scrollFrame:EnableMouseWheel(true)
        scrollFrame:SetScript("OnMouseWheel", scrollFrame_OnMouseWheel)
        scrollFrame:SetScript("OnSizeChanged", scrollFrame_OnSizeChanged)

        local content = CreateFrame("Frame", nil, scrollFrame)
        content:SetHeight(100)
        scrollFrame:SetScrollChild(content)
        content:SetPoint("TOPLEFT", 0, 0)
        content:SetPoint("TOPRIGHT", 0, 0)
        scrollFrame:SetHorizontalScroll(0)

        local scrollbar = CreateFrame("Slider", format("%s_Scroll%d", Type, num), scrollFrame, "UIPanelScrollBarTemplate")
        scrollbar.scrollStep = 1
        scrollbar:SetScript("OnValueChanged", scrollbar_OnValueChanged)
        scrollbar:SetPoint("TOPLEFT", scrollFrame, "TOPRIGHT", 4, -16)
        scrollbar:SetPoint("BOTTOMLEFT", scrollFrame, "BOTTOMRIGHT", 4, 16)
        scrollbar:SetMinMaxValues(0, 1000)
        scrollbar:SetValueStep(1)
        scrollbar:SetValue(0)
        scrollbar:SetWidth(16)

        local widget = {
            frame       = frame,
            type        = Type
        }
        for method, func in pairs(methods) do
            widget[method] = func
        end

        widget.items, widget.petIDs = {}, {}
        widget.content, widget.scrollFrame, widget.filterBox, widget.scrollbar = content, scrollFrame, filterBox, scrollbar
        filterBox.obj, scrollFrame.obj, scrollbar.obj = widget, widget, widget

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end