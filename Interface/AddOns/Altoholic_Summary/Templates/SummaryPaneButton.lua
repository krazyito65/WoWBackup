local addonName = "Altoholic"
local addon = _G[addonName]

local function EmptyFunc()
end

local function _SetColumnData(frame, character, column)
	-- Set basic properties
	frame:SetWidth(column.Width)
	frame.Text:SetWidth(column.Width)
	frame.Text:SetJustifyH(column.JustifyH)
	frame.Text:SetText(column.GetText(character))
	frame:Show()

	-- Set Scripts
	frame:SetScript("OnEnter", column.OnEnter)
	frame:SetScript("OnClick", column.OnClick)
end

local function _SetColumnTotal(frame, line, column)
	-- Set basic properties
	frame:SetWidth(column.Width)
	frame.Text:SetWidth(column.Width)
	
	if column.TotalJustifyH then
		frame.Text:SetJustifyH(column.TotalJustifyH)
	else
		frame.Text:SetJustifyH(column.JustifyH)
	end

	if column.GetTotal ~= EmptyFunc then
		frame.Text:SetText(column.GetTotal(line))
		frame:Show()
	else
		frame:Hide()
	end

	-- Set Scripts
	frame:SetScript("OnEnter", EmptyFunc)
	frame:SetScript("OnClick", EmptyFunc)
end

addon:RegisterClassExtensions("AltoSummaryPaneButton", {
	SetColumnData = _SetColumnData,
	SetColumnTotal = _SetColumnTotal,
})
