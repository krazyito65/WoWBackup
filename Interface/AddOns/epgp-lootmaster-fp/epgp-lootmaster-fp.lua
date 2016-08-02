LootMasterFP = LibStub("AceAddon-3.0"):NewAddon("EPGPLootMasterFramePosition", "AceConsole-3.0")
LootMasterFP:RegisterChatCommand("lmfp", "ResetFrames")

-- ********************* Player Select Frame ************************
local originalOnShow = LootMaster.CreateLootSelectFrame

function LootMasterFP:ResetFrames()
  EPGPLootMasterSelectFrameX = nil
  EPGPLootMasterSelectFrameY = nil
  EPGPLootMasterFrameX = nil
  EPGPLootMasterFrameY = nil
end

function LootMasterFP:SaveSelectFramePosition(frame)
  for i=1,frame:GetNumPoints() do
    local point, relativeTo, relativePoint, xOfs, yOfs = frame:GetPoint(i)
    if point ~= nil and point == "TOPLEFT" then      
      EPGPLootMasterSelectFrameX = xOfs
      EPGPLootMasterSelectFrameY = yOfs
      break
    end
  end
end

function LootMasterFP:SetSelectFramePosition(frame)
  if EPGPLootMasterSelectFrameX == nil or EPGPLootMasterSelectFrameY == nil then return end
  frame:SetPoint("TOPLEFT", nil, "TOPLEFT", EPGPLootMasterSelectFrameX, EPGPLootMasterSelectFrameY)
end

function LootMaster:CreateLootSelectFrame()    
    local frame = originalOnShow(self)
    local origOnMouseUp = self.frame:GetScript("OnMouseUp");
    local origTitleOnMouseUp = self.frame.titleFrame:GetScript("OnMouseUp")
    self.frame:SetScript("OnMouseUp", function(...)
    	LootMasterFP:SaveSelectFramePosition(self.frame)
   		origOnMouseUp(...)
   	end)
   	self.frame.titleFrame:SetScript("OnMouseUp", function(...)
   		LootMasterFP:SaveSelectFramePosition(self.frame)
   		origTitleOnMouseUp(...)
   	end)
    LootMasterFP:SetSelectFramePosition(self.frame)
    return frame
end


-- ********************* Master Looter Frame **********************

function LootMasterFP:SaveLMFramePosition(frame)
  for i=1,frame:GetNumPoints() do
    local point, relativeTo, relativePoint, xOfs, yOfs = frame:GetPoint(i)
    if point ~= nil and point == "TOPLEFT" then      
      EPGPLootMasterFrameX = xOfs
      EPGPLootMasterFrameY = yOfs
      break
    end
  end  
end

function LootMasterFP:SetLMFramePosition(frame)
  if EPGPLootMasterFrameX == nil or EPGPLootMasterFrameY == nil then return end  
  frame:SetPoint("TOPLEFT", nil, "TOPLEFT", EPGPLootMasterFrameX, EPGPLootMasterFrameY)
end


if LootMasterML ~= nil then
 local originalMLOnShow = LootMasterML.Show

  function LootMasterML:Show()
    local ret = originalMLOnShow(self)
    local frame = LootMasterML:GetFrame()  
    local origTitleOnMouseUp = frame.titleFrame:GetScript("OnMouseUp")
    self.frame.titleFrame:SetScript("OnMouseUp", function(...)
      LootMasterFP:SaveLMFramePosition(self.mainframe)
      origTitleOnMouseUp(...)
    end)
    LootMasterFP:SetLMFramePosition(self.mainframe)
    return ret
  end

end