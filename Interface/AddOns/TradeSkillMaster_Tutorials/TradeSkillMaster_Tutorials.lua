local TSM = select(2, ...)
local TSM = LibStub("AceAddon-3.0"):NewAddon(TSM,"TradeSkillMaster_Tutorials", "AceConsole-3.0")
local TSMEvents = TSM:NewModule("TSMEvents", "AceEvent-3.0")
local AceGUI = LibStub("AceGUI-3.0")
TSM.version = GetAddOnMetadata("TradeSkillMaster_Tutorials", "Version")

-- Initiate TSM Stuff so it recognizes it
function TSM:OnEnable()
	-- Register with TSMAPI
	TSM.icons = { { side = "module", desc = "Tutorials", slashCommand = "tutorials", callback = TSM.Load , icon = "Interface\\Icons\\INV_Misc_Note_05" } }
	TSMAPI:NewModule(TSM)	
	
	--- Default all saved variables to a default value on first run time.
	if not TradeSkillMaster_TutorialsDB then
		TradeSkillMaster_TutorialsDB = {}
	end
end


function TSM.Load(parent)
	
	TSM.treeGroup = AceGUI:Create("TSMTreeGroup")
	TSM.treeGroup:SetLayout("Fill")
	TSM.treeGroup:SetCallback("OnGroupSelected",function(...) TSM:SelectTree(...) end)
	parent:AddChild(TSM.treeGroup)
	
	TSM:UpdateTree()
end


function TSM:UpdateTree()
	local Saplings = {}
	
	for name,Page in pairs(TSM.Modules) do -- get the name from items in module
		tinsert(Saplings,{value=name,text=name}) -- Add items to Tree's sapling.
	end
	
	TSM.treeGroup:SetTree({{value = 1, text = "Options"},{value = 2, text = "Guides", children = Saplings}}) -- create basic tree
	
end

function TSM:SelectTree(treeGroup,_,selection)
	treeGroup:ReleaseChildren()
	
	local major, minor = ("\001"):split(selection)
	major = tonumber(major)
	
	if major == 1 then -- Options
		TSM:DrawOptionsScreen(treeGroup)
	elseif minor then		
		TSM:DrawSelectedMinor(treeGroup,minor)
	end
	
end

function TSM:DrawSelectedMinor(Parent, Name) -- Draw minoir
	Parent:ReleaseChildren()
	
	local page = TSM.Modules[Name]	-- Get minors Page from modules list
	TSMAPI:BuildPage(Parent, page) -- Send minors page to TSM's buildpage.
end


function TSM:DrawOptionsScreen(Parent) -- Draw options screen
	Parent:ReleaseChildren()
	
	local page = {
		{
			type = "ScrollFrame",
			layout="list",
			children = {
				{
				type = "InlineGroup",
				layout = "flow",
				title="Options",
				children = {

					},
				},
			},
		},
	}
					
	TSMAPI:BuildPage(Parent, page)
end