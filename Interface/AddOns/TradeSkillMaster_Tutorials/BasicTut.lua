local TSM = select(2,...)
TSM.Modules = {}

local TUTPARA1 = "Welcome to the TSM Guides Addon, this is a demonstration tutorial that will teach you how to use and create guides for TSM, more info can be posted on the curse page that links to this item."
local TUTPARA2 = "More info to come soon..."

local page = {
	{
		type = "ScrollFrame",
		layout="list",
		children = {
			{
			type = "InlineGroup",
			layout = "list",
			title="Tutorial-Guide Creation",
			children = {
					{
					type = "Label",
					text = TUTPARA1,
					relativeWidth = 1,
					},
					{
					type="Spacer",
					quantity = 1,
					},
					{
					type = "Label",
					text = TUTPARA2,
					relativeWidth = 1,
					},
					{
					type = "Icon",
					label = "Test image",
					image="Interface\\ICONS\\INV_Misc_Note_05",
					imageWidth = 300,
					imageHeight = 300,
					width = 300, --Icon + text - Optional.
					disabled=true,
					},
				},
			},
		},
	},
}
				
TSM_TutsAPI:AddModule("Tutorial-Guide Creation",page)