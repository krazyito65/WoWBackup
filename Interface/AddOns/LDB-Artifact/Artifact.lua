local _
local _G = _G

local artifactXP = _G.LibStub("LibDataBroker-1.1"):NewDataObject("Artifact", {
	type = "data source",
	icon = "Interface\\Icons\\Icon_UpgradeStone_legendary",
	label = "Artifact",
	title = "Artifact"
})

local function artifactXP_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, artifactXP)
  local numPoints = 0;
  local xpForNextPoint = C_ArtifactUI.GetCostForPointAtRank(pointsSpent);
	
  while artifactXP >= xpForNextPoint and xpForNextPoint > 0 do
		artifactXP = artifactXP - xpForNextPoint;
		
		pointsSpent = pointsSpent + 1;
		numPoints = numPoints + 1;
		
		xpForNextPoint = C_ArtifactUI.GetCostForPointAtRank(pointsSpent);
  end
	
  return numPoints, artifactXP, xpForNextPoint;
end

local function artifactXP_PopulateValues()
  local itemID, altItemID, name, icon, totalXP, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop = C_ArtifactUI.GetEquippedArtifactInfo();
  
  local numPointsAvailableToSpend, xp, xpForNextPoint = artifactXP_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalXP)
  
  artifactXP.icon = icon
  
	xpLeft = xpForNextPoint - xp
	
  if ( xpForNextPoint > 0 ) then
	
		if xpForNextPoint >= 100000 then
			xpForNextPoint = string.format("%.1f|cff696969k|r", xpForNextPoint / 1000)
			if xp > 1000 then
				xp = string.format("%.1f|cff696969k|r", xp / 1000)
			end
		end
		
		if xpLeft >= 10000 then
			xpLeft = string.format("-%.1f|cff696969k|r", xpLeft / 1000)
		end
		
		if ( numPointsAvailableToSpend > 0 ) then
			artifactXP.text = string.format("%s/%s AP (|cffff0000+%d|r)", xp, xpForNextPoint, numPointsAvailableToSpend)
		else
			artifactXP.text = string.format("%s/%s AP", xp, xpForNextPoint)
			artifactXP.value = string.format("|cffffff00%s|r", xpLeft)
			artifactXP.suffix = "AP"
		end
  end
  
end

artifactXP.OnTooltipShow = function(tooltip)
  if ( HasArtifactEquipped() ) then
	  local itemID, altItemID, name, icon, totalXP, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop = C_ArtifactUI.GetEquippedArtifactInfo();
	  local numPointsAvailableToSpend, xp, xpForNextPoint = artifactXP_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalXP)
	  local spentXP = totalXP;
	  local i = 0;
	  while i < pointsSpent do
	    spentXP = spentXP + C_ArtifactUI.GetCostForPointAtRank(i);
		i = i + 1;
	  end
	  spentXP = spentXP - 100;
	  
	  local _, _, _, earnedXP = GetAchievementCriteriaInfo(11158, 1)
	  
	  tooltip:SetText(name, HIGHLIGHT_FONT_COLOR:GetRGB())
	  tooltip:AddLine(" ");
	  tooltip:AddLine(ARTIFACT_POWER_TOOLTIP_TITLE:format(BreakUpLargeNumbers(totalXP), BreakUpLargeNumbers(xp), BreakUpLargeNumbers(xpForNextPoint)));
	  tooltip:AddLine(" ");
	  tooltip:AddLine(ARTIFACT_POWER_TOOLTIP_BODY:format(numPointsAvailableToSpend), nil, nil, nil, true);
	  tooltip:AddLine(" ");
		if earnedXP ~= 100000 then
	    tooltip:AddLine(string.format("Earned AP: |cff00ff00%d|r", earnedXP), HIGHLIGHT_FONT_COLOR:GetRGB());
		end
	  if earnedXP ~= spentXP then
		  tooltip:AddLine(string.format("Artifact AP: |cff00ff00%d|r", spentXP), HIGHLIGHT_FONT_COLOR:GetRGB());
	  end
	  tooltip:AddLine(" ");
	  tooltip:AddLine("Use Shift+Click to send the current Artifact Power to the chat box", nil, nil, nil, true)
	else
	  tooltip:SetText("No artifact equipped.", HIGHLIGHT_FONT_COLOR:GetRGB())
	end
end

artifactXP.OnClick = function(frame, button)
	if button == "LeftButton" then
		if IsShiftKeyDown() then
			-- do stuff to send ArtifactXP to chat
			local itemID, altItemID, name, icon, totalXP, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop = C_ArtifactUI.GetEquippedArtifactInfo();
			local numPointsAvailableToSpend, xp, xpForNextPoint = artifactXP_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalXP)
			local artifactLink = GetInventoryItemLink("player", 16)
			if ( numPointsAvailableToSpend > 0 ) then
				DEFAULT_CHAT_FRAME.editBox:SetText(string.format("%s: %d/%d (Rank %d+%d)", artifactLink, xp, xpForNextPoint, pointsSpent, numPointsAvailableToSpend))
			else 
				DEFAULT_CHAT_FRAME.editBox:SetText(string.format("%s: %d/%d (Rank %d)", artifactLink, xp, xpForNextPoint, pointsSpent))
			end
		else
			ArtifactFrame_LoadUI()
			if ( ArtifactFrame:IsVisible() ) then
				HideUIPanel(ArtifactFrame)
			else
				SocketInventoryItem(16);
			end
		end
	end
end

local ldbArtifactFrame = CreateFrame("Frame", "LDBArtifact")
ldbArtifactFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
ldbArtifactFrame:RegisterEvent("ARTIFACT_XP_UPDATE")
ldbArtifactFrame:RegisterEvent("ARTIFACT_CLOSE")
ldbArtifactFrame:RegisterEvent("ARTIFACT_RESPEC_PROMPT")
ldbArtifactFrame:RegisterEvent("UNIT_INVENTORY_CHANGED")

local function eventHandler(self, event, ...)

  if ( HasArtifactEquipped() ) then
    artifactXP_PopulateValues()
  end
  
end

ldbArtifactFrame:SetScript("OnEvent", eventHandler)
