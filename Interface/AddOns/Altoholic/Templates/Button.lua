local addonName = ...
local addon = _G[addonName]

local function _SetIcon(frame, icon)
	if icon then
		frame.Icon:SetTexture(icon)
	end
end

local function _SetIconSize(frame, width, height)
	local icon = frame.Icon

	if width then
		icon:SetWidth(width)
	end
	
	if height then
		icon:SetHeight(height)
	end
end

addon:RegisterClassExtensions("AltoButton", {
	SetIcon = _SetIcon,
	SetIconSize = _SetIconSize,
})
