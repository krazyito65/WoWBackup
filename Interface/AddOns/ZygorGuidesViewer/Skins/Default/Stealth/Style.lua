-- Sanity checks, this should be run AFTER Skin.lua
local STYLE,SKIN,STYLEDIR,SKINSDIR
if not ZGV or type(ZGV.Skins)~="table" or not ZGV.Skins["default"]
	or type(ZGV.Skins["default"].styles)~="table" or not ZGV.Skins["default"].styles["stealth"] then
	ZGV:Debug("Trying to construct style at inappropriate time")
	return
else
	STYLE=ZGV.Skins["default"].styles["stealth"]
	SKIN=STYLE.skin
	STYLEDIR=ZGV:GetSkinPath(SKIN.id,STYLE.id)
	SKINSDIR=ZGV.DIR.."\\Skins\\"
end

STYLE.Backdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.BackdropColor={HTMLColor("#161616ff")}

STYLE.GuideBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.GuideBackdropColor={HTMLColor("#222222ff")}
STYLE.GuideBackdropBorderColor={0,0,0,1}

-- TODO perhaps we need to specifically unset the texture on those to improve performance, but it shouldn't be much of an issue
STYLE.TabBackdropColor={0,0,0,0.0} -- the splitter is invisible
STYLE.StepnumBackdropColor={0,0,0,0.0} -- so is stepnumber 

-- Customize as you wish but currently we're economizing
STYLE.CreatureBackdrop=STYLE.Backdrop
STYLE.CreatureBackdropColor=STYLE.BackdropColor
STYLE.CreatureBackdropBorderColor=STYLE.BackdropBorderColor
STYLE.MoneyBackdrop=STYLE.Backdrop
STYLE.MoneyBackdropColor=STYLE.BackdropColor
STYLE.MoneyBackdropBorderColor=STYLE.BackdropBorderColor

STYLE.GuideButtonSize=18

STYLE.StepBackdrop=STYLE.GuideBackdrop
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=4, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }} -- this is one step's background, needed when the main window controls are hidden
STYLE.StepBackdropColor=STYLE.GuideBackdropColor
STYLE.StepBackdropBorderColor=STYLE.GuideBackdropBorderColor 
STYLE.StepBackdropPersistentBorder=true

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", tile = true, tileSize = 6}
STYLE.StepLineBackBackdropColor={0,0,0,0}
STYLE.StepLineBackBackdropBorderColor=STYLE.StepLineBackBackdropColor
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop
STYLE.StepLineMarginX=1
STYLE.StepLineMarginY=1

STYLE.StepLineIcons = STYLEDIR.."stepicons"
STYLE.TitleButtons = STYLEDIR.."titlebuttons"
STYLE.TitleLogo = SKINSDIR.."zygorlogo2"

STYLE.ProgressBarBackdrop = {bgFile = SKINSDIR.."white", edgeFile=SKINSDIR.."white", tile = true, edgeSize=1, tileSize = 16, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.ProgressBarBackdropColor={0.3,0.3,0.3,0.8}
STYLE.ProgressBarBackdropBorderColor={0,0,0,1}
STYLE.ProgressBarTexture = {1,1,1,1}
STYLE.ProgressBarTextureHeight = 5
STYLE.ProgressBarHeight = 7
STYLE.ProgressBarInset = 0
STYLE.ProgressBarColor = {0,0.8,0,1}
STYLE.ProgressBarColor2 = {1/255,162/255,253/255,1.0}

STYLE.SectionTitleFontSize = 13

STYLE.StepLineIconSize = 1.1

STYLE.TitleButtonSize = 16
STYLE.TitleButtonStepPrevNextSize = 14

STYLE.StepNumFontSize = 14
STYLE.StepNumWidth = 32

STYLE.StepFontSizeMod = 1

STYLE.CreatureViewerLabelBackground = {0.2,0.2,0.2,1.0}
STYLE.CreatureViewerLabelColor = {1,1,1,1}
STYLE.CreatureViewerGap = {-10,0} 

-- TODO can't we rewrite this declaratively?
function STYLE:OnActivate()
	local iconsize = 16
	ZygorGuidesViewerFrame_HelpButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_TitleBar,"LEFT",39,0)
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetSize(110,110/4)
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_TitleBar,"CENTER",0,-2)
end
