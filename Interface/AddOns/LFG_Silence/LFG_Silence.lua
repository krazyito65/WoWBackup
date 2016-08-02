local LFG_AI = {
	frame = CreateFrame("Frame","LFG_AutoInviteframe"),
	};
	
if not LFG_SilencePublic then LFG_SilencePublic = {} end



function LFG_AI.OnEvent(self, event, ...)
	if event == "ADDON_LOADED" then
		local name = ...	
		if name == "LFG_Silence" then
			-- Frame has done it's job, remove it
			LFG_AI.frame:UnregisterEvent("ADDON_LOADED");
			LFG_AI.frame:SetParent(nil)
			LFG_AI.frame = nil
			
			-- Even this function has done it's job...
			LFG_AI.OnEvent = nil
			
			--Remove the sound playing
			QueueStatusMinimapButton.EyeHighlightAnim:SetScript("OnLoop",nil)

			if not LFG_Silence_SV then
				LFG_SilencePublic.Default()
			end
			
			--Enable or disable the sound
			LFG_SilencePublic.SetSoundPlay(not LFG_Silence_SV["Mute"])
			
			InterfaceOptions_AddCategory(LFG_Silence_InterfaceOptions);
		end
		
		
	end

end

function LFG_SilencePublic.SetSoundPlay(willPlay)
	local f
	if willPlay then
		f = function() PlaySound("UI_GroupFinderReceiveApplication") end
	end
	QueueStatusMinimapButton.EyeHighlightAnim:SetScript("OnPlay",f)	
end

function LFG_SilencePublic.Default()
	LFG_Silence_SV = {}
	LFG_Silence_SV["Mute"]=nil
end

LFG_AI.frame:SetScript("OnEvent",LFG_AI.OnEvent);
LFG_AI.frame:RegisterEvent("ADDON_LOADED");