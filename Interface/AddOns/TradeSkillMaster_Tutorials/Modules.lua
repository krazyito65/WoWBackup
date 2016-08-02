local TSM = select(2,...)
TSM_TutsAPI = select(2,...)
TSM.Modules = {}

function TSM_TutsAPI:AddModule(Name,Page)
	TSM.Modules[Name] = Page
end