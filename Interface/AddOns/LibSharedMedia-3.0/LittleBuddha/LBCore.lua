function LittleBuddha_OnEvent(self, event, ...)
  local arg1, arg2 = ...;
  if (event == "ADDON_LOADED") and (arg1 == "LittleBuddha") then
	LittleBuddha_Defaults();
	LittleBuddhaConfig:Init();
	LittleBuddhaFrame:UnregisterEvent("ADDON_LOADED");
	print('|cff388E8ELittleBuddha |cffffcc00v'..LB_Version..' |cffffffffcreated by |cffFF4500Anwyll |cffffffffof Steamwheedle Cartel|cffffffff');
  	print('|cff388E8ELittleBuddha |cffffffffhas been fully loaded. Type |cffFF4500/lb |cfffffffffor help.');
  end
  
  LittleBuddha_SavedVariables();
end

function LittleBuddha_OnLoad()
	StaticPopupDialogs["LittleBuddha_ReloadUI"] = {
		text = "You need to reload your UI in order to enable or disable chat tab flashing for the tab. Would you like to do this now?",
		button1 = "Yes",
		button2 = "No",
		OnAccept = function()
			ReloadUI()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
	LittleBuddhaFrame:RegisterEvent("ADDON_LOADED");
end