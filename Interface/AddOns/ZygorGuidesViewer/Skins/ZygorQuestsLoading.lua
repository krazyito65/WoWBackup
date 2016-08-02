local ZGV=ZygorGuidesViewer

function ZygorQuestsLoadingIcon_OnEvent(self,event)
	if event=="QUEST_QUERY_COMPLETE" then
		self.complete = true
		self:Hide()
		self:UnregisterEvent("QUEST_QUERY_COMPLETE")
		--ChatFrame1:AddMessage("quest query")
	end
end

function ZygorQuestsLoadingIcon_OnLoad(self)
	if ZGV.Expansion_Mists then self:Hide() return end
	self:RegisterEvent("QUEST_QUERY_COMPLETE")
	self.tooltip = ZGV.L["questsloading_tooltip"]
	self.tooltip2 = ZGV.L["questsloading_tooltip2"]
	self.Spinner:SetTexture(ZGV.DIR.."\\Skins\\loading")
end
