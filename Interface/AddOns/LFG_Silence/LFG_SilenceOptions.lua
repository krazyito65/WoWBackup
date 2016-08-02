if not LFG_SilencePublic then LFG_SilencePublic = {} end

function LFG_SilencePublic.OptionsRefresh()
	LFG_Silence_InterfaceOptionsPlaySound:SetChecked(LFG_Silence_SV["Mute"]);
end


function LFG_SilencePublic.OptionsOkay()
	local mute = ((LFG_Silence_InterfaceOptionsPlaySound:GetChecked() and true) or nil);
	LFG_Silence_SV["Mute"] = mute
	LFG_SilencePublic.SetSoundPlay(not mute)
end

function LFG_SilencePublic.OptionsDefault()
	LFG_SilencePublic.Default()
end