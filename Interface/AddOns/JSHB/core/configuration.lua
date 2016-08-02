--
-- JSHB - configuration
--

-- This is the reconfiguration function that gets called when JSHB needs to be globally reconfigured.
function JSHB.ReconfigureJSHB()
	if(not JSHB.globalConfigs) then
		JSHB.globalConfigs = {};
		return
	end
	local key,val
	for key,val in pairs(JSHB.globalConfigs) do
		val()
	end
	collectgarbage("collect")
end

--	Registers a function that will be called when the addon needs to be	globally reconfigured because settings may have changed.
function JSHB.RegisterConfigFunction(name, func)
	if(not JSHB.globalConfigs) then
		JSHB.globalConfigs = {}
	end
	JSHB.globalConfigs[name] = func -- example: <JSHB.globalConfigs["MOD_FOCUSBAR"] = JSHB.SetupFocusBarModule> : SetupFocusBarModule is found in focusbar.lua
end

--	Removes a registered configuration function from the chain.
function JSHB.UnregisterConfigFunction(name)
	if(not JSHB.globalConfigs) then
		JSHB.globalConfigs = {};
		return
	end
	if(not tContains(JSHB.globalConfigs, name)) then
		return
	end
	tremove(JSHB.globalConfigs, name)
end