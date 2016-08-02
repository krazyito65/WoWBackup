
local history = {}

local dataObj = LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("Broker_BattleRes", {
	type = "data source",
	icon = "Interface\\Icons\\spell_nature_reincarnation",
	label = "BattleRes",
	text = "0",
	OnTooltipShow = function(tooltip)
		local name, instanceType, _, difficultyName, _, _, _, _, instanceGroupSize = GetInstanceInfo()
		if instanceType == "raid" then
			tooltip:AddLine(("%s (%s)"):format(name, difficultyName))
			local _, _, _, duration = GetSpellCharges(20484) -- Rebirth
			if not duration then -- not in an encounter
				duration = 90 / instanceGroupSize * 60
			end
			tooltip:AddLine(("%s recharge (%d players)"):format(SecondsToTime(duration), instanceGroupSize))
			tooltip:AddLine(" ")
		end
		if next(history) then
			tooltip:AddLine("Recently ressed:")
			for i, name in ipairs(history) do
				local line = ("%d) %s"):format(i, name)
				tooltip:AddLine(line, 1, 1, 1)
			end
		else
			tooltip:AddLine("No recent battle resses")
		end
		tooltip:Show()
	end,
})

local frame = CreateFrame("Frame")
frame:Hide()

local total = 0
frame:SetScript("OnUpdate", function(self, elapsed)
	total = total + elapsed
	if total > 0.3 then
		total = 0

		local charges, _, started, duration = GetSpellCharges(20484) -- Rebirth
		if not charges then
			self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			self:Hide()
			dataObj.text = "0"
			frame:RegisterEvent("SPELL_UPDATE_CHARGES")
			return
		end

		local color = charges > 0 and GREEN_FONT_COLOR_CODE or RED_FONT_COLOR_CODE
		local time = duration - (GetTime() - started)
		local m = floor(time / 60)
		local s = mod(time, 60)

		dataObj.text = ("%s%d|r |cffffffff(%02d:%02d)|r"):format(color, charges, m, s)
	end
end)

function frame:COMBAT_LOG_EVENT_UNFILTERED(_, event, _, srcGUID, srcName, _, _, dstGUID, dstName, _, _, spellId, spellName)
	if event == "SPELL_RESURRECT" then
		local _, class = UnitClass(dstName)
		local c = class and RAID_CLASS_COLORS[class] or GRAY_FONT_COLOR
		local name = ("|cff%02x%02x%02x%s|r"):format(c.r * 255, c.g * 255, c.b * 255, dstName:gsub("%-.+", ""))
		tinsert(history, name)
	end
end

function frame:SPELL_UPDATE_CHARGES()
	local charges = GetSpellCharges(20484) -- Rebirth
	if charges then
		self:UnregisterEvent("SPELL_UPDATE_CHARGES")
		wipe(history)
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:Show()
	end
end

function frame:ZONE_CHANGED_NEW_AREA()
	self:UnregisterEvent("SPELL_UPDATE_CHARGES")
	self:Hide()
	wipe(history)
	dataObj.text = "0"

	local _, instanceType = IsInInstance()
	if instanceType == "raid" then
		frame:RegisterEvent("SPELL_UPDATE_CHARGES")
	end
end
frame.PLAYER_LOGIN = frame.ZONE_CHANGED_NEW_AREA

frame:SetScript("OnEvent", function(self, event, ...)
	self[event](self, ...)
end)
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:RegisterEvent("PLAYER_LOGIN")

