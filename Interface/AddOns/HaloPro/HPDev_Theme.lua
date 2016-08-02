local _, class = UnitClass("player")
if class ~= "PRIEST" then
	-- No point in running HP on non-priest
	HPDev_OnLoad = function() end
	return
end
			
local HP_DarkLight = "Light"					
local HP_Border_Theme = "solidBorder.tga"		-- "glowTex.tga" (another option)
local HP_Border_Background_Thickness = 0		
local HP_Border_Background = "background.tga"	

local function HPDev_Reset_Border()
	HP_f.Border:SetPoint("LEFT", HP_f, "LEFT", -(6+HPDev_Border_Thickness), 0)
	HP_f.Border:SetPoint("RIGHT", HP_f, "RIGHT", (6+HPDev_Border_Thickness), 0)
	HP_f.Border:SetPoint("BOTTOM", HP_f, "BOTTOM", 0, -(6+HPDev_Border_Thickness))
	HP_f.Border:SetPoint("TOP", HP_f, "TOP", 0, (6+HPDev_Border_Thickness))
	HP_f.Border:SetBackdrop({edgeFile = "Interface\\AddOns\\HaloPro\\HaloPro_Art\\Border\\"..HP_DarkLight.."\\"..HP_Border_Theme,
		tile = true, tileSize = 8, edgeSize = (8+HPDev_Border_Thickness),
		insets = { left = (2+HPDev_Border_Thickness), right = (2+HPDev_Border_Thickness), top = (2+HPDev_Border_Thickness), bottom = (2+HPDev_Border_Thickness) }});
	HP_f.Border:SetBackdropBorderColor(0,0,0,1)
	HPDev_Flash_Flag = 0
	--collectgarbage("collect") -- Force a collection
	if HP_Opt_f:IsVisible() then 
		HP_Theme_Preview.Border:SetPoint("LEFT", HP_Theme_Preview, "LEFT", -(6+HPDev_Border_Thickness), 0)
		HP_Theme_Preview.Border:SetPoint("RIGHT", HP_Theme_Preview, "RIGHT", (6+HPDev_Border_Thickness), 0)
		HP_Theme_Preview.Border:SetPoint("BOTTOM", HP_Theme_Preview, "BOTTOM", 0, -(6+HPDev_Border_Thickness))
		HP_Theme_Preview.Border:SetPoint("TOP", HP_Theme_Preview, "TOP", 0, (6+HPDev_Border_Thickness))
		HP_Theme_Preview.Border:SetBackdrop({edgeFile = "Interface\\AddOns\\HaloPro\\HaloPro_Art\\Border\\"..HP_DarkLight.."\\"..HP_Border_Theme,
			tile = true, tileSize = 8, edgeSize = (8+HPDev_Border_Thickness),
			insets = { left = (2+HPDev_Border_Thickness), right = (2+HPDev_Border_Thickness), top = (2+HPDev_Border_Thickness), bottom = (2+HPDev_Border_Thickness) }});
		HP_Theme_Preview.Border:SetBackdropBorderColor(0,0,0,1)
	end
	if HPDev_Border_Thickness == -7 then
		if HP_f.Border:IsVisible() then HP_f.Border:Hide() end
		if HP_Theme_Preview.Border:IsVisible() then HP_Theme_Preview.Border:Hide() end
	else 
		if not HP_f.Border:IsVisible() then HP_f.Border:Show() end
		if not HP_Theme_Preview.Border:IsVisible() then HP_Theme_Preview.Border:Show() end
	end
	HPDev_Func_Flag = "Recheck_Range"
	HPDev_Loader()
end

local function HPDev_Border()
		
	-- Create border frame for main bar
	HP_f.Border = CreateFrame("Frame","HPDev_MainFrame_Border",HP_f)
	--HP_f.Border:SetFrameStrata(HP_Strata)
	--HP_f.Border:SetFrameLevel(1)
	HP_f.Border:SetPoint("LEFT", HP_f, "LEFT", -(6+HPDev_Border_Thickness), 0)
	HP_f.Border:SetPoint("RIGHT", HP_f, "RIGHT", (6+HPDev_Border_Thickness), 0)
	HP_f.Border:SetPoint("BOTTOM", HP_f, "BOTTOM", 0, -(6+HPDev_Border_Thickness))
	HP_f.Border:SetPoint("TOP", HP_f, "TOP", 0, (6+HPDev_Border_Thickness))
	HP_f.Border:SetBackdrop({edgeFile = "Interface\\AddOns\\HaloPro\\HaloPro_Art\\Border\\"..HP_DarkLight.."\\"..HP_Border_Theme,
		tile = true, tileSize = 8, edgeSize = (8+HPDev_Border_Thickness),
		insets = { left = (2+HPDev_Border_Thickness), right = (2+HPDev_Border_Thickness), top = (2+HPDev_Border_Thickness), bottom = (2+HPDev_Border_Thickness) }});
	HP_f.Border:SetBackdropBorderColor(0,0,0,1)
	
	-- Create border for Preview bar
	HP_Theme_Preview.Border = CreateFrame("Frame","HPDev_PreviewFrame_Border",HP_Theme_Preview)
	HP_Theme_Preview.Border:SetPoint("LEFT", HP_Theme_Preview, "LEFT", -(6+HPDev_Border_Thickness), 0)
	HP_Theme_Preview.Border:SetPoint("RIGHT", HP_Theme_Preview, "RIGHT", (6+HPDev_Border_Thickness), 0)
	HP_Theme_Preview.Border:SetPoint("BOTTOM", HP_Theme_Preview, "BOTTOM", 0, -(6+HPDev_Border_Thickness))
	HP_Theme_Preview.Border:SetPoint("TOP", HP_Theme_Preview, "TOP", 0, (6+HPDev_Border_Thickness))
	HP_Theme_Preview.Border:SetBackdrop({edgeFile = "Interface\\AddOns\\HaloPro\\HaloPro_Art\\Border\\"..HP_DarkLight.."\\"..HP_Border_Theme,
		tile = true, tileSize = 8, edgeSize = (8+HPDev_Border_Thickness),
		insets = { left = (2+HPDev_Border_Thickness), right = (2+HPDev_Border_Thickness), top = (2+HPDev_Border_Thickness), bottom = (2+HPDev_Border_Thickness) }});
	HP_Theme_Preview.Border:SetBackdropBorderColor(0,0,0,1)
	
	
	if not HP_f.Border:IsVisible() then HP_f.Border:Show() end

end

function HPDev_Theme_Loader()
	if HPDev_Theme_Flag == "Apply_Border" then HPDev_Border() end
	if HPDev_Theme_Flag == "Reset_Border" then HPDev_Reset_Border() end
end