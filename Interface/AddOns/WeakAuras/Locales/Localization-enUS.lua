local L = WeakAuras.L

-- Options translation
--@localization(locale="enUS", format="lua_additive_table", namespace="WeakAuras", handle-subnamespaces="none")@


--@end-do-not-package@

-- Make missing translations available
setmetatable(WeakAuras.L, {__index = function(self, key)
	self[key] = (key or "")	
	return key
end})
