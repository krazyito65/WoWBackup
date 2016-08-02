-- These are the main viewer's lines.
local addonName,ZGV = ...

local COLOR_TIP_MOUSE = "|cffddff00"
local COLOR_TIP_HINT = "|cff99ff00"
local COLOR_TIP = "|cff00ff00"

ZygorGuidesViewer_L("Main", "ptBR", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor Guides Viewer",
	["desc"] = "Main settings for Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "%d guides are loaded.",

	["opt_guide"] = "Select a guide:",
	["opt_guide_steps"] = "Steps: %d",
	["opt_guide_author"] = "Author: %s",
	["opt_guide_next"] = "Next in series: %s",

	["opt_profiler"] = "Profiler (caution!)",
	["opt_profiler_desc"] = "Activate built-in WoW CPU profiler that allows to investigate which Zygor function may be causing slowdowns. This option requires the restart of the game or manual interface reset (/reload command) to take effect due to game engine mechanics.",
	["opt_report"] = "Create a bug report",
	["opt_report_desc"] = "Create a bug report containing the details of the currently displayed step. Copy/paste it and email to the guide authors.",

	--["opt_group_main"] = "Main window settings",

	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Upside-down",
	["opt_miniresizeup_desc"] = "Flips the window upside-down, with the title bar at bottom and expanding upwards. Useful if you're placing it at the bottom of your screen.",
	--["opt_opacitymini"] = "Background opacity",
	--["opt_opacitymini_desc"] = "Opacity of step window background.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_debug"] = "Debug",
	["opt_debug_desc"] = "Display debug info.",
	["opt_debugging"] = "Debugging",
	["opt_debugging_desc"] = "Debugging options.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	--["opt_autoskip"] = "Advance automatically",
	--["opt_autoskip_desc"] = "Automatically skip to the next step, when all conditions are completed. You might still have to manually skip some steps that have completion conditions too complex for the guide to detect reliably.",

		["opt_visible"] = "Show the Zygor Guides Viewer window",
		["opt_visible_desc"] = "",
	
		["opt_mapbutton"] = "Show minimap button",
		["opt_mapbutton_desc"] = "Show the Zygor Guides Viewer button next to your minimap",

	["opt_group_display"] = "Window settings",
	["opt_group_display_desc"] = "Main window display preferences and behaviour.",

		['opt_guidesinhistory'] = "Number of recent guides",
		['opt_guidesinhistory_desc'] = "Show this many recently used guides. Set to more especially if you're switching between reputation or daily guides often.",

		['opt_skin'] = "Window skin",
		['opt_skin_desc'] = "Choose a skin for the main window.",
		['opt_skinstyle'] = "Skin style",
		['opt_skinstyle_desc'] = "Each skin may have multiple sub-styles.",

		["opt_opacitymain"] = "Opacity",
		["opt_opacitymain_desc"] = "Opacity of the main Viewer window.",
		["opt_framescale"] = "Scale",
		["opt_framescale_desc"] = "You can resize the window to match your preferences.",
		["opt_fontsize"] = "Text scale",
		["opt_fontsize_desc"] = "Set your preferred text size. Note that the window scale affects this, too.",
		["opt_fontsecsize"] = "Secondary text scale",
		["opt_fontsecsize_desc"] = "Set your preferred secondary text size, used to display additional descriptions and notes.",

		['opt_windowlocked'] = "Lock window",
		['opt_windowlocked_desc'] = "Prevents the window from being dragged with the mouse.",
		["opt_hideincombat"] = "Hide in combat",
		["opt_hideincombat_desc"] = "Hide all guide windows during combat, if your screen gets too cramped.",

		["opt_prisecmodes"] = "Display modes",
		["opt_modes_desc"] = "The addon features two display modes, for easy switching between them.\nUsually one is compact and used for gameplay, and the other is more verbose for browsing the guides.",
		["opt_modepri"] = "Primary mode:",
		["opt_modesec"] = "Secondary mode:",

		["opt_showcountsteps"] = "Number of steps to show:",
		["opt_showcountsteps_desc"] = "|cffffffaaAll|r displays all steps in a scrollable list.\n|cffffffaa1-5|r shows the current step at the top, and auto-resizes the window to show several future steps only.",
		["opt_showcountsteps_all"] = "All",
		["opt_showbriefsteps"] = "Brief steps",
		["opt_showbriefsteps_desc"] = "Display only completable objectives of steps for a compact, TourGuide-like format.",
		["opt_hidecompletedinbrief"] = "-  Hide completed",
		["opt_hidecompletedinbrief_desc"] = "When checked, goals in incomplete steps will become hidden once completed.\nCompleted goals in completed steps will still be visible.",
		['opt_hideborder'] = "Hide controls",
		['opt_hideborder_desc'] = "Automatically hide the window's border and buttons, when the mouse is away from it.\nHover for a moment over the window's title to bring it back.",
		['opt_nevershowborder'] = "-  Completely",
		['opt_nevershowborder_desc'] = "When the border is hidden, by default it will reappear after 2 seconds of hovering your mouse over it.\nWhen this option is checked, you'll have to right-click the step and use the 'Show Controls' option there to display them again.",

		['opt_briefopentime'] = "Brief expansion delay",
		['opt_briefopentime_desc'] = "How long you have to hover your mouse over a brief step for it to expand.",
		['opt_briefclosetime'] = "Brief collapse delay",
		['opt_briefclosetime_desc'] = "How long an expanded brief step stays expanded before collapsing again.",

		['opt_resetwindow'] = "Reset window",
		['opt_resetwindow_desc'] = "If you accidentally move the guide window off-screen and can't move it back, this button resets it to the screen center.",

	["opt_group_step"] = "Guide step display",
	["opt_group_step_desc"] = "How guide steps are formatted and coloured.",

		['opt_showstepborders'] = "Step backgrounds",
		['opt_showstepborders_desc'] = "Show coloured backgrounds around whole steps.",
		['opt_stepbackopacity'] = "Background opacity",
		['opt_stepbackopacity_desc'] = "Opacity of the step's background.\nThe background's color matches the completion status.",
		['opt_stepnumber'] = "Show step numbers",
		['opt_stepnumber_desc'] = "Display step numbers and suggested levels for each step.\nTurn off to conserve screen space.",

		['opt_goaltotals'] = "Show goal totals",
		['opt_goaltotals_desc'] = "Show numeric goal completion:|n|cffff8888(5/10)|r",

		["opt_goalicons"] = "Objective icons",
		["opt_goalicons_desc"] = "Display icons for objective types and completion status.",
		["opt_goalcolorize"] = "Color completed objective text",
		["opt_goalcolorize_desc"] = "When completing step objectives, colorize them entirely green.",

		["opt_goalbackcolor_desc"] = "Completion colors:",
		["opt_goalbackgrounds"] = "Goal backgrounds",
		["opt_goalbackprogress"] = "Color progressively",
		["opt_goalbackprogress_desc"] = "Show progress as intermediary colors, from 'incomplete' through 'halfway' to 'complete'.|nIf unchecked, objectives are displayed only using 'incomplete' or 'complete' colors.",

		["opt_goalbackgrounds_desc"] = "Color step line backgrounds to reflect completion status.",
		["opt_goalbackcomplete"] = "Complete",
		["opt_goalbackcomplete_desc"] = "This color will indicate completed objectives or steps.",
		["opt_goalbackincomplete"] = "Incomplete",
		["opt_goalbackincomplete_desc"] = "This color will indicate incomplete objectives, currently in progress.",
		["opt_goalbackprogressing"] = "Halfway",
		["opt_goalbackprogressing_desc"] = "This color will indicate objectives at 50% completion.",
		["opt_goalbackimpossible"] = "Impossible",
		["opt_goalbackimpossible_desc"] = "Use this color to indicate objectives impossible to complete at this time.",
		["opt_goalbackwarning"] = "Warning",
		["opt_goalbackwarning_desc"] = "Use this color to indicate an objective that should be possible at this point, but is not.\nThis happens if you fail a quest or skip some important step, and need to backtrack a few steps.",

		["opt_progressbackcolor_desc"] = "Step colors:",
		["opt_goalbackaux"] = "Travel",
		["opt_goalbackaux_desc"] = "Use this color to indicate travel steps.",
		["opt_goalbackobsolete"] = "Obsolete",
		["opt_goalbackobsolete_desc"] = "Use this color to indicate obsolete objectives or steps.",

		['opt_tooltipsbelow'] = "Show extra information inline",
		['opt_tooltipsbelow_desc'] = "Extra information about certain step lines can be displayed either inline, or as tooltips shown on mouseover.",

	["opt_flash_desc"] = "Progress notification:",
	["opt_goalupdateflash"] = "Flash goal on progress",
	["opt_goalupdateflash_desc"] = "Use a visual 'flash' indication when a single goal is progressed.",
	["opt_goalcompletionflash"] = "Flash goal on completion",
	["opt_goalcompletionflash_desc"] = "Use a visual 'flash' indication when a single goal completes.",
	["opt_flashborder"] = "Flash window on step completion",
	["opt_flashborder_desc"] = "Flash the whole window whenever a step is completed.",

	["opt_group_map"] = "Waypoints",
	["opt_group_map_desc"] = "These settings govern how Zygor Guides Viewer interacts with map-handling addons.",
		["opt_group_map_waypointing"] = "Waypointing addon",
		["opt_group_map_waypointing_desc"] = "Select the addon that you'd like to handle the waypoints for Zygor Guides Viewer.",
		['opt_group_map_hidearrowwithguide'] = "Hide arrow when closing viewer",
		['opt_group_map_hidearrowwithguide_desc'] = "Select this to make the arrow follow the guide window's visibility.\nLeave unchecked if you want the arrow to stay visible when you hide the guides.",
		["opt_group_addons_internal"] = "Built-in waypointing",
		["opt_group_addons_tomtom"] = "TomTom",
		["opt_group_addons_carbonite"] = "Carbonite",
		["opt_group_addons_cart2"] = "Cartographer 2",
		["opt_group_addons_cart3"] = "Cartographer 3",
		["opt_group_addons_metamap"] = "MetaMap",
		["opt_group_addons_none"] = "none",

		["opt_corpsearrow"] = "Point towards corpse",
		["opt_corpsearrow_desc"] = "Use the waypointer arrow to point towards your corpse upon death - if your waypointer of choice doesn't by itself.",
		["opt_corpsearrowjokes"] = "Corpse humour",
		["opt_corpsearrowjokes_desc"] = "Having your demise mocked might teach you to be more careful next time. Or, it might strip you of your cares and make you accept death as a natural part of life. Your mileage may vary.",

	--[[	-- obsolete stuff

		['opt_backopacity'] = "Background opacity",
		['opt_backopacity_desc'] = "Opacity of the window's background.",

		['opt_trackchains'] = "Track chained quests",
		['opt_trackchains_desc'] = "Mark quest-accept steps as unavailable if a prerequisite quest wasn't completed.\n\nThe quest chain database includes \"loose chains\", quests that follow each other but don't actually need to be completed in proper order, so sometimes a quest-accept line might be displayed as unavailable even though the quest can be accepted. We'll appreciate your help in finding all quests that behave like that.",
		["opt_colorborder"] = "Color step window border",
		["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

		["opt_backcolor"] = "Background colour",
		["opt_backcolor_desc"] = "The background colour of the window.",

		["opt_group_window"] = "Window features",

		["opt_group_data"] = "Stored guides",
		["opt_group_data_desc"] = "Zygor Guides Viewer can internally store commercial guides that cannot (due to Blizz policy) be distributed as standalone addons.",
		["opt_group_data_guide"] = "Guides stored internally:",
		["opt_group_data_guide_desc"] = "Select a stored guide from this list to edit or delete it. This list does NOT show guides that are loaded as separate addons.",
		["opt_group_data_del"] = "Delete guide",
		["opt_group_data_del_desc"] = "Delete the selected guide from internal storage.",
		["opt_group_data_edit"] = "Edit guide",
		["opt_group_data_edit_desc"] = "Load the selected guide into the editor window below for hands-on fixes.",
		["opt_group_data_entry"] = "Guide data:",
		["opt_group_data_entry_desc"] = "Paste a new guide here (remember to wrap its steps in:|nguide Title Of Guide|nsteps...|nsteps...|nend\n); note that pasting and parsing of a large guide (>30kB) may take a few seconds.",
	--]]


	['opt_group_progress'] = "Step completion",
	--['opt_group_progress_desc'] = "To ensure optimal leveling progress, this addon will suggest moving to the next quest hub's section as soon as you outlevel your current area.",
	['opt_group_progress_desc'] = "This section governs how various types of guide steps are auto-completed.",

	['opt_skipnotify'] = "Obnoxious skipping popup",
	['opt_skipnotify_desc'] = "If checked, a popup window will appear each time a guide skip is available. If not, you'll just get a message and see the guide selection button flash.",
	['opt_skipnotify_none'] = "Message and .",
	['opt_skipauxsteps'] = "Skip travel steps",
	['opt_skipauxsteps_desc'] = "Automatically skip travel steps if they're followed by already completed or low-level steps.\nThis avoids sending you halfway across the world in vain.",
	['opt_skipflightsteps'] = "Assume flight paths known",
	['opt_skipflightsteps_desc'] = "Assume you are handling flight path discovery yourself, and automatically skip \"Learn flight path\" steps.\n\nUseful when trying to find a starting spot in the guides, but not very useful during normal gameplay.",
	['opt_skipimpossible'] = "Skip impossible steps",
	['opt_skipimpossible_desc'] = "Automatically skip impossible steps, if you don't want to be bothered with objectives belonging to quests you don't have.\n\nThis should only be turned off as an emergency measure if the guide skips steps it shouldn't be skipping, but such behaviour should be reported as a bug.",
	['opt_skipflysteps'] = "Hide flight path travel steps",
	['opt_skipflysteps_desc'] = "Skips steps instructing you to use a Flight Path to travel if you have a fast personal flying mount.",
	opt_suggestionpopup = "Pop-up guide suggestions",
	opt_suggestionpopup_desc = "Display a pop-up window suggesting switching to the next guide, when its requirements are met.",

	['opt_levelsahead'] = "Allow |cffccffcc%s|r levels ahead",
	['opt_levelsahead_desc'] = "This setting controls how far ahead of the guide do you want to be able to play, before quests are marked too low level for you.\n\nIt's not really practical to set it to more than 5, you'll probably be better off disabling Dynamic Progress completely instead.",
	['opt_chainskip'] = "Complete started quest chains%s",
	['opt_chainskip_desc'] = "Some quest chains have valuable items awarded when entirely completed. This setting forces Dynamic Progress not to break off a quest chain if it only has a few more quests to complete.",
	['opt_chainskip_count'] = "|cffffeecc  (unless more than %s quests left)",
	['opt_chainskip_compl'] = "|cffccffcc  (always)",
	['opt_chainskipcount'] = "  - Break off:",
	['opt_chainskipcount_desc'] = "Less means break off early. More means stick with longer remaining chains.",

	--[[
	['opt_group_progress_bottomdesc'] = "Dynamic progress works by skipping quests (or whole quest chains) that are meant to be completed below your current level, so that you're pushed onto higher-level sections of the guide. Quest chains are only skipped if the whole chain is low-level, however, so if you're level 30, a quest for level 20 that chains up to level 33 is still considered valid for you.\
\
This helps new guide users to find a proper starting spot, and ensures that the guide will never slow you down by giving you low-level quests, if you gain levels faster than the guide expects (if you run some dungeons, use heirlooms, or have the rested exp bonus).\
\
You can set by how many levels ahead of the guide you want to be able to go, before the guide starts skipping quests and pushing you forward.\
\
If you're new to the guides, or have only started using them on this character, you can use the |cffddff00Smart Injection System|r to automatically find a proper starting spot for you. It might turn out to be far below your current level, if you skipped some useful quest chains or flight points, but the guide will catch up once you complete them.",
	--]]
	['opt_group_progress_bottomdesc'] = "",

	['opt_group_mapinternal'] = "Internal waypointer",
		['opt_arrowshow'] = "Show rotating arrow",
		['opt_arrowshow_desc'] = "Display a rotating arrow, indicating the direction towards the waypoint.",
		['opt_arrowsmooth'] = "Smooth rotation",
		['opt_arrowsmooth_desc'] = "Add a slight drag to the arrow's rotation. Purely cosmetic.",
		['opt_arrowmeters'] = "Metric system",
		['opt_arrowmeters_desc'] = "Use meters and kilometers instead of yards and miles.",
		['opt_arrowfreeze'] = "Non-interactive",
		['opt_arrowfreeze_desc'] = "Make the pointer arrow transparent to mouse clicks.",
		['opt_arrowcam'] = "Arrow follows camera",
		['opt_arrowcam_desc'] = "Show directions basing on the direction the camera is turned. If unchecked, the pointer arrow shows directions basing only on where your character is facing.\n\nNote: in camera mode, the arrow might point in weird directions when using click-to-move.",
		['opt_arrowcolordist'] = "Colour by distance",
		['opt_arrowcolordist_desc'] = "Colour the arrow by distance, instead of by direction.",
		['opt_arrowscale'] = "Scale",
		['opt_arrowscale_desc'] = "Set the size of the waypointing arrow.",
		['opt_arrowalpha'] = "Opacity",
		['opt_arrowalpha_desc'] = "Set the opacity of the waypointing arrow.",
		['opt_arrowfontsize'] = "Arrow font size",
		['opt_arrowfontsize_desc'] = "Set the size of the labels under the arrow.",
		['opt_mapcoords'] = "Show coordinates",
		['opt_mapcoords_desc'] = "Display player and cursor coordinates on the world map.",

		['opt_map_extras'] = "Extra map features:",

		['opt_foglight'] = "Reveal whole map",
		['opt_foglight_desc'] = "Reveal unexplored areas on the map.",
		['opt_minimapzoom'] = "Automatic minimap zooming",
		['opt_minimapzoom_desc'] = "Automatically zoom in your minimap when approaching the destination.",
		['opt_audiocues'] = "Audible direction cues",
		['opt_audiocues_desc'] = "Provides audible navigation signals if you leave your character unattended.\n\nWith these, you can safely turn to precisely face the target waypoint, start flying forward, and Alt-Tab out or go make some coffee.\nWhen arriving at the destination, a 'boat bell' sound is played. When the destination is no longer straight ahead and you're going to fly past it, a 'warning zap' is played.",
		['opt_antspacing'] = "Map 'ants' spacing",
		['opt_antspacing_desc'] = "Sets the average distance between dots in 'ant trails' displayed on navigation paths.",
		['opt_antspacing_0'] = "Ants off",
		['opt_antspacing_yd'] = "%d yd",
		['opt_antspacing_yd_def'] = "%d yd (default)",

	['opt_group_convenience'] = "Extra features",
	['opt_group_convenience_desc'] = "Various things that we thought might be useful.",
		['opt_autoaccept'] = "Auto-accept quests",
		['opt_autoaccept_desc'] = "Automatically accept quests, if the current step instructs you to.\n|cffffaa88This makes questing very fast, but may be confusing.|r",
		['opt_autoturnin'] = "Auto-turn in quests",
		['opt_autoturnin_desc'] = "Automatically turn in quests, if the current step instructs you to.\nWorks only if there is no reward to choose.\n|cffffaa88This makes questing very fast, but may be confusing.|r",
		['opt_fixblizzardautoaccept'] = "'Fix' built-in auto-accepting",
		['opt_fixblizzardautoaccept_desc'] = "Since patch 3.2, quests for levels 1-3 get automatically accepted, but the quest window stays open, which confuses some players. This option changes the 'Accept' button into 'Accepted' to make it feel more natural.|r",
		['opt_analyzereps'] = "Detailed reputation gains",
		['opt_analyzereps_desc'] = "Display verbose reputation gain messages in chat, showing percentage gained and next standing.",
		['opt_autotaxi'] = "Take flights automatically",
		['opt_autotaxi_desc'] = "Automatically take taxi flights, when talking to a flightmaster, if a dynamic 'fly to' step is displayed.",
		['opt_collapsecompleted'] = "Hide completed groups",
		['opt_collapsecompleted_desc'] = "Hides completed goals together with the lines 'above' them in the step, following indentation order.|n|nWorks best with long, multiple-objective steps.|n|n|cffff3300Experimental feature.|r",

	opt_group_modelviewer = "Model Viewer",
	opt_group_modelviewer_desc = "View mentioned NPCs, monsters and objects",
	opt_group_modelviewer_desc2 = "Display NPCs, monsters or clickable objects mentioned by the guide in a small window attached to the guides.",
		opt_mv_enabled = "Enable Model Viewer",
		opt_mv_enabled_desc = nil,
		opt_mv_rotation = "Rotate objects",
		opt_mv_rotation_desc = "Slowly rotate displayed objects (unless their settings override that).",
		opt_mv_slideshow = "Slide show",
		opt_mv_slideshow_desc = "On steps referring to multiple creatures, display them in an automatic slide show.",

	opt_group_magickey = "Magic Key",
	opt_group_magickey_desc = "The 'Magic Key' is a dynamic do-it-all keybinding, doing its best to adapt itself to your current situation and provide the action you'll most likely want to perform.|n|cffff8888This is a 'beta' feature. It is still under development and may not work properly.|r",
		opt_magickey = "Magic Key keybinding",
		opt_magickey_desc = "Choose a convenient key binding, as you will likely use this one a lot.\n\nRemove the binding to disable this feature.",
		opt_magickey_actionsdesc = "Select the actions you want the Magic Key to perform for you:",
		opt_magickey_target = "Target NPCs and monsters",
		opt_magickey_target_desc = "Target quest NPCs mentioned in 'talk to' lines, or monsters mentioned in 'kill' objectives.",
		opt_magickey_talk = "Talk to quest NPCs",
		opt_magickey_talk_desc = "Run up to targeted quest NPCs and talk to them. This simulates a right-click on an NPC. You'll need to be within about 50 yards for the running to work.",
		opt_magickey_acceptturnin = "Accept / Turn in quests",
		opt_magickey_acceptturnin_desc = "Proceed through quest accept / turn in dialogue.",
		opt_magickey_attack = "Attack monsters",
		opt_magickey_attack_desc = "Start auto-attacking a targeted monster. This simulates a right-click on an NPC. Probably not very useful for casters...",
		opt_magickey_targetcorpse = "Target corpses",
		opt_magickey_targetcorpse_desc = "Quickly after killing a monster, target it again for looting.",
		opt_magickey_loot = "Loot corpses",
		opt_magickey_loot_desc = "Run and loot a targeted corpse.",
		opt_magickey_itemspell = "Use items/spells",
		opt_magickey_itemspell_desc = "Use the first item or spell mentioned in the current step.",
		opt_magickey_hint = "Show current function",
		opt_magickey_hint_desc = "Display the function the Magic Key is currently going to perform.",

	["opt_arrowskin"] = "Arrow skin",
	["opt_arrowskin_desc"] = "Select a skin for your rotating arrow.\nDifferent skins might not only look, but behave differently, too.",

	-- Gold Guide options

	['opt_group_gold'] = "Gold Guide",
	['opt_group_gold_desc'] = "These options control the behaviour of the map notes of the Zygor Alliance/Horde Gold Guide.",
		['opt_gold_detectiondist'] = "Detection distance",
		['opt_gold_detectiondist_desc'] = "Controls at what distance are the gold-making locations considered 'near'.",
		['opt_gold_reqmode'] = "Filter locations by profession",
		['opt_gold_reqmode_desc'] = "Decide whether to show all locations (mining areas, skinning, etc.) regardless of the character's professions, or only those that can really be used.",
		['opt_gold_reqmode_all'] = "Show all locations",
		['opt_gold_reqmode_future'] = "Current professions, but ignore level",
		['opt_gold_reqmode_current'] = "Current profession levels",

	['opt_configuration'] = "Show configuration",
	['opt_configuration_desc'] = "Open the Zygor Guides Viewer configuration screen.",

	--['opt_tweaks_desc'] = "Tweaks for some of the addon's functions. Handle with care.",
	--['opt_tweaks_domacros'] = "Allow to create macros",
	--['opt_tweaks_domacros_desc'] = "The addon might create macros for some of its scripted buttons. Turn off if you don't want the addon to create any macros at all.",



	-- Guide Right-click menu

		['qmenu_step'] = "Step %s (level %s)",
		['qmenu_step_skip'] = "Skip this step",
		['qmenu_step_skip_desc'] = "Skip to the next step, assuming this step as complete.",
		['qmenu_goal_creature_data'] = "View creature: %s",
		['qmenu_goal_creature'] = "View creature",
		['qmenu_goal_creature_desc'] = "See how '%s' looks like.",
		['qmenu_goal'] = "Goal: %s",
		['qmenu_goal_complete'] = "Mark as Complete",
		['qmenu_goal_complete_desc'] = "Click to mark this goal as complete (or incomplete).|n|cff998800Use this if the addon cannot properly detect completion.",
		['qmenu_quest'] = "Quest: %s",
		['qmenu_quest_info'] = "Show quest chain",
		['qmenu_quest_info_desc'] = "Display quest chain information and the level to which this quest belongs.|n|cffaaaaaaShift-click|cff998800 to view in text-copy mode.",
		--['qmenu_quest_complete'] = "Complete",
		--['qmenu_quest_complete_tip'] = "This quest is complete.",
		--['qmenu_quest_complete_desc'] = "Click to mark this quest as incomplete. This will be remembered until you log off, or the server sends a newly updated completion list.",
		--['qmenu_quest_complete_in_tip'] = "This quest is incomplete.",
		--['qmenu_quest_complete_in_desc'] = "Manually mark this quest as complete. This will be remembered until you log off, or the server sends a newly updated completion list.",
		['qmenu_quest_openmap'] = "Show quest on map",
		['qmenu_quest_openmap_desc'] = "Display the quest's location on the map.",
		['qmenu_quest_openlog'] = "Open log with quest",
		['qmenu_quest_openlog_desc'] = "Open the quest's description in your log.",
		['qmenu_quest_watched'] = "Watch quest",
		['qmenu_quest_watched_desc'] = "Toggle watching this quest using the built-in quest objective tracker.",
		['qmenu_quest_lightheaded'] = "View quest in LightHeaded",
		['qmenu_quest_lightheaded_desc'] = "View detailed quest information in the LightHeaded addon.|n|cffaaaaaaShift-click|cff998800 to view in text-copy mode.",

		['qmenu_goal_waypoint'] = "Waypoint: %s, %.1f;%.1f",
		['qmenu_goal_waypoint_desc'] = "Click to set your waypoint to these coordinates.",

		['qmenu_border_restore'] = "Show guide controls",
		['qmenu_border_restore_desc'] = "Switch to \"Browse Mode\", showing guide window controls.",

	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Press Ctrl+C to copy this report.|nThen, e-mail it to the author of |cffffffff%s|r,|nat |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(unnamed guide)|r",
	["report_noauthor"] = "|cffff8888(no address available)|r",


	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Click|r to toggle guide window|n"..COLOR_TIP_MOUSE.."Right-click|r to configure|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"
	["minimap_tooltip_ex1"] = COLOR_TIP_MOUSE.."Ctrl+Alt+Right-click|r to start profiling|n",
	["minimap_tooltip_ex2"] = COLOR_TIP_MOUSE.."Ctrl+Alt+Right-click|r to stop profiling|n",

	["waypointaddon_set"] = "Waypointing addon selected: %s",
	["waypointaddon_detecting"] = "Attempting to auto-detect waypointing addon...",
	--["waypointaddon_connecting"] = "Connecting to waypointing addon: %s",
	["waypointaddon_connected"] = "Connected to |cffddeeff%s|r for waypointing.",
	--["waypointaddon_disconnecting"] = "Disconnecting from waypointing addon: %s",
	["waypointaddon_disconnected"] = "Disconnected from |cffddeeff%s|r.",
	["waypointaddon_fail"] = "|cffffddddFailed to connect|r to |cffddeeff%s|r.",
	['waypoint_step'] = "Step %s",

	-- Corpse label + jokes
	 ['pointer_corpselabel'] = "Corpse",
	 ['pointer_corpselabel#'] = 7,
	 ['pointer_corpselabel1'] = "Ex you",
	 ['pointer_corpselabel2'] = "He who learns to run away...",
	 ['pointer_corpselabel3'] = "Bitten off more than you could chew, eh.",
	 ['pointer_corpselabel4'] = "Bucket Kicker - this way",
	 ['pointer_corpselabel5'] = "Try not to think about the repair bill.",
	 ['pointer_corpselabel6'] = "Hurry, crows are already pecking at your eyeballs.",
	 ['pointer_corpselabel7'] = "Thy cadaver lieth o'er yonder.",

	-- Pointer arrow right-click menu
	 ['pointer_arrowmenu_arrowheader'] = "Rotating arrow",
	 ['pointer_arrowmenu_removeway'] = "Remove waypoint",
	 ['pointer_arrowmenu_hide'] = "Hide",
	 ['pointer_arrowmenu_hide_desc'] = "You'll have to enable it again\nin the Zygor options screen,\nunder Waypoints/Internal waypointer.",
	 ['pointer_arrowmenu_freeze'] = "Non-interactive",
	 ['pointer_arrowmenu_freeze_desc'] = "You'll have to make it interactive again\nin the Zygor options screen,\nunder Waypoints/Internal waypointer.",
	 ['pointer_arrowmenu_scale'] = "Scale",
	 ['pointer_arrowmenu_scale_desc'] = "You can also hold |cff33ff00Ctrl|r and use your |cff33ff00mousewheel|r to scale the arrow.",
	 ['pointer_arrowmenu_opacity'] = "Opacity",
	 ['pointer_arrowmenu_options'] = "Options...",

	["checkmap"] = "Check your map.",

	["initialized"] = 'Initialized.',

	["miniframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	["miniframe_notselected"] = "No guide is currently selected.\nPlease click the blinking button above to select a guide.",
	["miniframe_loading"] = "Loading guides: %d%%",

	['guide_notselected'] = "- select a guide -",
	['guide_notloaded'] = "|cff0000ff- none loaded -",
	['loading_quests'] = "|c888888ff(loading quests: %d%%)",
	['loading_guides'] = "|c888888ff(loading guides: %d%%)",

	['frame_locked'] = "Window locked",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Click|r to unlock",
	['frame_unlocked'] = "Window unlocked",
	['frame_lock'] = COLOR_TIP_MOUSE.."Click|r to lock",
	['frame_settings'] = "Options",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Click|r to set options",
	--['frame_settings2'] = COLOR_TIP_MOUSE.."Right-click|r to enter configuration",
	['frame_dispprimary'] = "Primary display mode", --"Showing |cffffffff%d|r step(s)",
	['frame_dispsecondary'] = "Secondary display mode", --"Showing all steps",
	['frame_dispgoprimary'] = COLOR_TIP_MOUSE.."Click|r to switch to primary", --COLOR_TIP_MOUSE.."Click|r to show only |cffffffff%d|r",
	['frame_dispgosecondary'] = COLOR_TIP_MOUSE.."Click|r to switch to secondary",
	--['frame_minright'] = COLOR_TIP_MOUSE.."Right-click|r to set number of steps",
	['frame_stepnav_prev'] = "Previous step",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Click|r to backtrack one step",
	['frame_stepnav_prev_right'] = COLOR_TIP_MOUSE.."Right-click|r to rewind to last incomplete step",
	['frame_stepnav_next'] = "Next step",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Click|r to skip one step",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Right-click|r to fast-forward to next incomplete step",
	['frame_section'] = "Current guide",
	['frame_section_click'] = COLOR_TIP_MOUSE.."Click|r to select",

	['frame_helpbutton'] = "Help",
	['frame_helpbutton_desc'] = "Help and tutorial system coming soon.",
    ['frame_profilerbutton'] = "Profiler",
    ['frame_profilerbutton_desc'] = "Generate a CPU usage profile since last activation or startup.",
	--[[
	 ['frame_sisbutton_on'] = "Dynamic Progress is on",
	 ['frame_sisbutton_off'] = "Dynamic Progress is off",
	 ['frame_sisbutton_levelsahead'] = "(allowing %d levels ahead)",
	 ['frame_sisbutton_turnon'] = COLOR_TIP_MOUSE.."Left-click|r to activate dynamic progress",
	 ['frame_sisbutton_turnoff'] = COLOR_TIP_MOUSE.."Left-click|r to deactivate dynamic progress",
	 ['frame_sisbutton_wizard'] = COLOR_TIP_MOUSE.."Right-click|r to initiate |cffddff00Smart Injection System|r.",
	 ['frame_sisbutton_disabled'] = "Dynamic Progress not available",
	 ['frame_sisbutton_disabled_desc'] = "Only leveling guides support dynamic progress.\nIt wouldn't make sense to use it\nwith your currently selected guide.",
	--]]
	['frame_selectguide'] = "Select a guide",
	['frame_selectguide_left'] = COLOR_TIP_MOUSE.."Left-click|r to open the guide selection window.",
	['frame_selectguide_right2'] = COLOR_TIP_MOUSE.."Right-click|r to choose from %d guide suggestions.",
	['frame_selectguide_right1'] = COLOR_TIP_MOUSE.."Right-click|r to load the suggested guide:\n|cffffffff%s|r.",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."Click|r"..COLOR_TIP.." to set waypoint: |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Location: |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Error|r loading guide |cffaaffaa%s|r\nline: %d   step: %s\ncode: %s\nerror: %s",
	["message_errorloading_brief"] = "|cffff4444Error|r loading guide |cffaaffaa%s|r",
	["message_errorloading_critical"] = "|cffff4444CRITICAL Error|r loading guide |cffaaffaa%s|r\nError: %s\nLine: %d\nData: %s",
	["message_loadedguide"] = "Activated guide: |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Missing|r guide: |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (no guide loaded)",


	--["dialog_badnext_leveling"] = "You've reached the end of the current guide.\n\nThe next guide, |cffff8800%s|r, requires level %d and %d bars.\n\nFor some reason, you're missing %d levels and %d bars.\n\nYou should either go grind a bit, or restart the current guide (maybe you missed a step or two).",
	["dialog_endguide"] = "You've reached the end of the current guide.",


	-- Step formatting

	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaLevel: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (part %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Set home location to %s",
	["stepgoal_flightpath"] = "Get the %s flight path",
	
	["stepgoal_accept"] = "Accept %s",
	["stepgoal_accept_done"] = "Accepted %s",
	["stepgoal_turn in"] = "Turn in %s",
	["stepgoal_turn in_done"] = "Turned in %s",
	["stepgoal_talk to"] = "Talk to %s",
	["stepgoal_kill"] = "Kill %s",
	["stepgoal_kill #"] = "Kill %s %s",
	["stepgoal_kill_done"] = "Killed %s",
	["stepgoal_kill #_done"] = "Killed %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_goal_done"] = "Done: %s",
	["stepgoal_goal #_done"] = "Done: %s %s",
	["stepgoal_get"] = "Get %s",
	["stepgoal_get #"] = "Get %s %s",
	["stepgoal_get_done"] = "Got %s",
	["stepgoal_get #_done"] = "Got %s %s",
	["stepgoal_ding"] = "You should now be level %s.|n    If not, grind a little until you are.",
	["stepgoal_ding_brief"] = "Reach level %s",
	["stepgoal_go to"] = "Go to %s",
	["stepgoal_also at"] = "Also at %s",
	["stepgoal_fly"] = "Fly to %s",
	["stepgoal_arrive"] = "Arrive at %s",
	["stepgoal_hearth to"] = "Hearth to %s",
	["stepgoal_collect"] = "Collect %s",
	["stepgoal_collect #"] = "Collect %s %s",
	["stepgoal_collect_done"] = "Collected %s",
	["stepgoal_collect #_done"] = "Collected %s %s",
	["stepgoal_buy #"] = "Buy %s %s",
	["stepgoal_buy #_done"] = "Bought %s %s",
	["stepgoal_buy"] = "Buy %s",
	["stepgoal_buy_done"] = "Bought %s",
	["stepgoal_fpath"] = "Get the %s Flight Path",
	["stepgoal_fpath_done"] = "Got the %s Flight Path",
	["stepgoal_use"] = "Use %s",
	["stepgoal_home"] = "Make %s your home location",
	["stepgoal_rep"] = "Become %s with %s",
	["stepgoal_petaction"] = "Use pet action %s",
	["stepgoal_havebuff"] = "Gain buff/debuff '%s'",
	["stepgoal_nobuff"] = "Lose buff/debuff '%s'",
	["stepgoal_invehicle"] = "Enter vehicle",
	["stepgoal_outvehicle"] = "Leave vehicle",
	["stepgoal_equipped"] = "Equip %s",
	["stepgoal_at_suff"] = " (%s)",
	["stepgoal_achieve"] = "Gain achievement '%s'",
	["stepgoal_achievesub"] = "Complete '%s' for achievement '%s'",
	["stepgoal_skill"] = "Achieve %s level %s",
	["stepgoal_skillmax"] = "Raise %s to maximum level %s",
	["stepgoal_skillmax2"] = "Learn the %s skill",
	["stepgoal_learn"] = "Learn %s",
	["stepgoal_learnspell"] = "Learn %s",
	["stepgoal_learnpet"] = "Obtain pet %s",
	["stepgoal_learnmount"] = "Obtain mount %s",
	["stepgoal_confirm"] = "Click here to proceed",
	["stepgoal_create"] = "Create %s",
	["stepgoal_create #"] = "Create %d %s",
	["stepgoal_earn #"] = "Earn %s %s",
	["stepgoal_earn #_done"] = "Earned %s %s",
	["stepgoal_earn_done"] = "Earned %s %s",
	["stepgoal_click"] = "Click %s",
	["stepgoal_clicknpc"] = "Click %s",
	["stepgoal_click_done"] = "Click %s",
	["stepgoal_clicknpc_done"] = "Click %s",

	["stepgoal_perform_alchemy"] = "Create %s %s",
	["stepgoal_perform_enchanting"] = "Cast %s %s",
	["stepgoal_perform_blacksmithing"] = "Forge %s %s",
	["stepgoal_perform_engineering"] = "Construct %s %s",
	["stepgoal_perform_tailoring"] = "Sew %s %s",
	["stepgoal_perform_leatherworking"] = "Sew %s %s",
	["stepgoal_perform_mining"] = "Perform %s %s",
	["stepgoal_perform_inscription"] = "Inscribe %s %s",
	["stepgoal_perform_cooking"] = "Cook %s %s",
	["stepgoal_perform_jewelcrafting"] = "Craft %s %s",

	["stepgoal_or"] = "  - or -",

	["completion_goal"] = "(%s/%s)",
	["completion_count"] = "(%s)",
	["completion_ding"] = "(%s%%)",
	["completion_done"] = "(done)",
	["completion_rep"] = "(%s)",

--[[
	["stepgoalshort_complete"] = "done",
	["stepgoalshort_incomplete"] = "pending",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
--]]

	["step_req"] = "Step valid only for: %s",


	["map_highlight"] = "Highlight",

	["stepreq"] = "Step class/race requirement: ",
	["stepreqor"] = " or ",

	["opt_do_searchforgoal"] = "Find a completeable goal",
	["searching_for_goal_success"] = "A completeable goal has been found for you: %s. This may be a good starting point in the guide for you.",
	["searching_for_goal_failed"] = "No completeable goal has been found. Try another guide or section, pick up some quests, or search again from the start of the section (the search only goes forward).",

	["binding_togglewindow"] = "Show Guide Window",
	["binding_prev"] = "Previous Step",
	["binding_next"] = "Next Step",

	["req_not"] = "not %s",

	["menu_last"] = "Last guides:",
	["menu_last_entry"] = "%s |cffaaaaaastep|r %d",

	['gold_missing_nospotsinrange'] = "No gold spots within range.",
	['gold_missing_noguidesloaded'] = "No gold guides are loaded!",

	['gold_header_drop'] = "Drops from |cffffdddd%s|r:",
	['gold_header_ore'] = "Ore deposits:",
	['gold_header_herb'] = "Herbs:",
	['gold_header_skin'] = "Skins:",
	['gold_header_vendor'] = "Buy:", -- from |cffddffdd%s|r:",

	['questsloading_tooltip'] = "Retrieving completed quests.",
	['questsloading_tooltip2'] = "This might take a minute or two.",

	['stepcollapsed'] = "(step collapsed)",


	['static_caption'] = "|TInterface\\Addons\\"..addonName.."\\Skins\\zygorlogo:25:100|t\n \n",
	['static_help'] = "Help and tutorial system|ncoming soon.",
	--['static_sis'] = "|cffffff88Smart Injection System|r|n|nThis feature will attempt to find the best spot in the guides for you to start.|nIt will reset your dynamic progress settings, load the starting guide for level 1 of your race/class, and start skipping forward until it finds quests worth completing.|n|nIf your character is high-level, you'll mostly see the guide zip past |cff88ff88green|r (completed) or |cff88aaffblue|r (low-level) steps.|n|nIf it stops at a seemingly low-level quest, it's usually a good idea to trust the guide and complete the quest, as it might start a long chain reaching to your level.|n|nIt might stop at flight path pickups, it's up to you to verify if they're really unknown to your character.|n|nSo... Ready for the ride?",
	['static_abandonquests'] = "These quests are not continued in the current guide:\n\n%s\nYou're safe to abandon them in your Quest Log.",
	['static_abandonquests_none'] = "All your quests are dailies or valid for the current guide.\nThere is nothing to abandon.",
	--Do you want to:\n- Abandon them all now?\n- Return to the previous guide to complete them?\n- Ignore this warning?",
	['static_abandonquests_butabandon'] = "Abandon all",
	['static_abandonquests_butreturn'] = "Return",
	['static_abandonquests_butignore'] = "Ignore",
	['static_nextguide'] = "You're now ready to proceed to:\n\n%s",
	['static_error'] = "Oh no! ZygorGuides have crashed!\n\nIt's strongly recommended to generate a bug report now, and copy and paste it manually onto the zygorguides.com forum.\n\nWould you like to generate the report?",
	['static_badguide'] = "The selected guide:\n|cffffee00%s|r\n is |cffffbbaaimproper|r for your character.\n|cffff6644%s|r\n\nDo you really want to load it?",

	['guidepicker_suggested'] = "Suggested guides",
	['guidepicker_recent'] = "Recent guides",
	['guidepicker_button_viewinfolder'] = "View in folder",
	['guidepicker_button_viewinfolder_desc'] = "Open the selected guide's parent folder",
	['guidepicker_button_guides'] = "Guides",
	['guidepicker_button_guides_desc'] = "Choose from all available guides",
	['guidepicker_button_recent'] = "Recent",
	['guidepicker_button_recent_desc'] = "View recently loaded guides",
	['guidepicker_button_suggest'] = "Suggest",
	['guidepicker_button_suggest_desc'] = "See currently suggested guides, based on your progress.",
	['guidepicker_button_ok_desc'] = "Load the selected guide",
	['guidepicker_button_searchreset_desc'] = "Clear search",
	['guidepicker_button_searchlabel'] = "Find:",
	['guidepicker_searchresults'] = "Search results:",

	['guidepicker_selectaguide'] = "Select a guide type:",

	['guidepicker_status_SUGGESTED'] = "Suggested",
	['guidepicker_status_COMPLETE_lev'] = "Obsolete",
	['guidepicker_status_COMPLETE'] = "Complete",
	['guidepicker_status_INVALID'] = "Improper",
	['guidepicker_status_VALID'] = "Valid",

	['frame_questcleanupbutton'] = "Quest Log cleanup",
	['frame_questcleanupbutton_desc'] = COLOR_TIP_MOUSE.."Click|r"..COLOR_TIP.." to abandon irrelevant quests.|r",


	pointer_floors_321_1_2 = "Descend into Cleft of Shadow",
	pointer_floors_321_2_1 = "Leave Cleft of Shadow",
	pointer_floors_504_1_2 = "Enter sewers",
	pointer_floors_504_2_1 = "Leave sewers",
	pointer_floors_820 = "(use Time Transit Device)",
	pointer_floors_up = "upstairs",
	pointer_floors_down = "downstairs",
} end)

ZygorGuidesViewer_L("Faction", "enUS", function() return {
	["going"] = "%d%% to %s"
} end)


local plurals = {
	Ballista="Ballistae",
	Bark=1,
	Blood=1,
	Cargo=1,
	Dirt=1,
	Down=1,
	Dust=1,
	--Citizen="Citizens",
	Felsworn=1,
	Ferocious=1,
	Flesh=1,
	Harvest=1,
	Ichor=1,
	Infantry=1,
	Lumber=1,
	Lotus="Lotuses",
	Meat=1,
	Mojo=1,
	Nitroglycerin=1,
	Nitrate=1,
	Oil=1,
	Ore=1,
	Prey=1,
	Pulp=1,
	Sap=1,
	Silk=1,
	Snuff=1,
	Stuff=1,
	Talisman="Talismans",
	Tooth="Teeth",
	Venom=1,
	Vermin=1,
	Venison=1,
	Vrykul=1,
	Water=1,
	wildlife=1,
	Worgen=1,
	Wood=1,
	--Wolf="Wolves",

	drunk=1
}

local specials = {
	{'in a duel',1},
	{'Scarlet Crusader slain',"Scarlet Crusaders"},
	{'Citizen of Havenshire slain',"Citizens of Havenshire"},
	{'Garm Invader slain',"Garm Invaders"},
	{'En\'kilah Casualty',"En'kilah mobs"},
	{'(.*) [sS]lain$',"%1"},
	{'(.*) Weed$',"%1 Weeds"},
	{'Smelt ',1}
}

local wordspecials = {
	['haman$']="hamans",
	['(%a)man$']="%1men",
	['(%a)us$']="%1i",
	['%a*[fF]ish$']=1,
	['%a*[cC]loth$']=1,
}

local notverbs = { ['Seed']=1 }

ZygorGuidesViewer_L("Specials", "enUS", function() return {
	['plural'] = function (word)
			-- one-shot special cases
			for i,data in ipairs(specials) do
				if word:match(data[1]) then
					return data[2]==1 and word or word:gsub(data[1],data[2])
				end
			end

			-- breakdown.
			local rest=""
			local preof,postof = word:match("^(.-) of (.+)$")
			if preof then
				word=preof
				rest=" of "..postof
			else
				local obj,verb = word:match("^(.+)( %a-ed)$")
				if obj and not notverbs[verb:sub(2)] then
					word=obj
					rest=verb
				end
			end

			local notlastw,lastw = word:match("^(.+%s)(.-)$")
			if lastw then
				word=lastw
			else
				notlastw=""
			end

			-- got a proper exception for this word?
			if plurals[word] then
				return notlastw .. (plurals[word]==1 and word or plurals[word]) .. rest
			-- well, got a regexp for it?
			else
				for sing,plur in pairs(wordspecials) do
					if word:match(sing) then
						return notlastw .. (plur==1 and word or word:gsub(sing,plur)) .. rest
					end
				end

				--else...
				
				-- just use language defaults, I guess.
				local last = word:sub(-1)
				if (last=="y" and not word:sub(-2):match("[aeiou]y")) then
					return notlastw .. word:sub(1,-2).."ies" .. rest
				elseif word:sub(-2)=="ff" then
					return notlastw .. word:sub(1,-3).."ves" .. rest
				elseif last=="f" then
					return notlastw .. word:sub(1,-2).."ves" .. rest
				elseif word:sub(-2)=="fe" then
					return notlastw .. word:sub(1,-3).."ves" .. rest
				elseif word:sub(-3)=="ess" then
					return notlastw .. word.."es" .. rest
				elseif word:sub(-2)=="ch" then
					return notlastw .. word.."es" .. rest
				elseif last=="x" then
					return notlastw .. word.."es" .. rest
				elseif last=="s" then
					return notlastw .. word .. rest
				elseif last=="o" then
					return notlastw .. word .."es" .. rest
				else
					--print(notlastw.."..."..word.."..."..rest)

					return notlastw .. word.."s" .. rest
				end
			end
		end,

	['contract_mobs'] = function(mobs)
			local start,ending

			if not mobs[1].name and type(mobs)=="table" then
				local l=mobs
				mobs={}
				for i=1,#l do mobs[i]={name=l[i]} end
			end
			local common,lastcommon,all
			for i=1,5 do
				common = mobs[1].name:match("^([%a']+" .. (" [%a']+"):rep(i-1) .. ")")
				if not common then break end
				all=true
				for m=2,#mobs do
					if mobs[m].name:find(common)~=1 then
						all=false
						break
					end
				end
				if all then
					lastcommon=common
				else
					break
				end
			end

			if lastcommon then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_start'](lastcommon)
			end

			-- start failed? let's try end.
			lastcommon=nil
			for i=1,5 do
				common = mobs[1].name:match("([%a']+" .. (" [%a']+"):rep(i-1) .. ")$")
				if not common then break end
				all=true
				for m=2,#mobs do
					if mobs[m].name:sub(-#common)~=common then
						all=false
						break
					end
				end
				if all then
					lastcommon=common
				else
					break
				end
			end

			if lastcommon then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_end'](lastcommon)
			end

			--else
			return nil
		end,

	['contract_mobs_start'] = function(s) return s.." mobs" end,
	['contract_mobs_end'] = function(s) return ZygorGuidesViewer_L("Specials")['plural'](s) end,

	['plural_unittest'] = function()
		function test(s,p)
			local sp = ZygorGuidesViewer_L("Specials").plural(s)
			if sp~=p then print("Pluralization failed: '"..s.."' -> '"..sp.."', should be '"..p.."'") end
		end

		-- specials
		test("Meat","Meat")
		test("Oil of Olaz","Oil of Olaz")
		test("Big Crappers slain","Big Crappers")

		-- word specials
		test("Dead Shaman of Crap","Dead Shamans of Crap")
		test("Eric Cartman","Eric Cartmen")

		-- tails
		test("Knife","Knives")
		test("Flesh","Flesh")
		test("Staff of Doom","Staves of Doom")
		test("Ally of Crap","Allies of Crap")
		test("Dead Priestess","Dead Priestesses")
		test("Bitch","Bitches")
		test("Sex","Sexes")
		test("Kris","Kris")
		test("Jello","Jelloes")
		test("Dog","Dogs")

	end
} end)

ZGVLPL = ZygorGuidesViewer_L("Plurals")

ZygorGuidesViewer_L("Specials").plural_unittest()

-- Add lines for any translations needed for:

-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "ptBR", function() return {
--	["blabla"] = TRUE,
} end)

