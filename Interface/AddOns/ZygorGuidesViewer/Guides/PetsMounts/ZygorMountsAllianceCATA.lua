local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsA") then return end
ZygorGuidesViewer:RegisterInclude("hearth_hub",[[
'Hearth to the Trade District |goto Stormwind City |use Hearthstone##6948 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("hearth2_hub",[[
'_Hearth_ to the _Valley of Honor_ |goto Orgrimmar,70.6,49.2,0.5 |use Hearthstone##6948 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("hearth_dalaran",[[
'_Hearth_ to _A Hero's Welcome, Dalaran_  |goto Dalaran |use Hearthstone##6948 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("trainTailoring",[[
goto Orgrimmar,60.8,59.1
.talk 3363
]])
ZygorGuidesViewer:RegisterInclude("TailorSupplies",[[
goto 53.1,81.8
.talk 1347
]])
ZygorGuidesViewer:RegisterInclude("trainEngineering",[[
goto Stormwind City,62.8,32.0
.talk 5518
]])
ZygorGuidesViewer:RegisterInclude("EngSupplies",[[
goto Stormwind City 63.1,32.0
.talk 5519
]])
ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
goto 52.8,74.3
.talk 1318
]])
ZygorGuidesViewer:RegisterInclude("SWDP",[[
goto Stormwind City,49.0,87.3
.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
step
goto Blasted Lands,55.0,54.1 |n
.' Enter the huge green portal
.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
]])
ZygorGuidesViewer:RegisterInclude("hyjal",[[
step
goto Stormwind City,76.2,18.7
.' Click the Portal to Hyjal |tip It's a swirling blue and green portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
]])
ZygorGuidesViewer:RegisterInclude("vashjir",[[
step
goto Stormwind City,73.3,16.8
.' Click the Portal to Vashj'ir |tip It's a big swirling portal.
.' Teleport to Vashj'ir |goto Kelp'thar Forest |noway |c
]])
ZygorGuidesViewer:RegisterInclude("deepholm",[[
step
goto Stormwind City,73.2,19.7
.' Click the Portal to Deepholm |tip It's a pink and purple swirling portal.
.' Teleport to Deepholm |goto Deepholm |noway |c
]])
ZygorGuidesViewer:RegisterInclude("twilight",[[
step
goto Stormwind City,75.3,16.4
.' Click the Portal to Twilight Highlands |tip It's a big swirling portal.
.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
]])
ZygorGuidesViewer:RegisterInclude("shatport_sw",[[
step
goto Shattrath City,57.2,48.2
.' Click the Portal to Stormwind |goto Stormwind City,49.6,86.5,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("darkportal",[[
goto Stormwind City,49.0,87.3
.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
step
goto Blasted Lands,55.0,54.1 |n
.' Enter the huge green portal
.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
]])
ZygorGuidesViewer:RegisterInclude("ratchet",[[
|fly Booty Bay
step
goto The Cape of Stranglethorn,39.0,67.0 |n
.' Ride the boat to Ratchet, Northern Barrens |goto Northern Barrens |noway |c
]])
ZygorGuidesViewer:RegisterInclude("borean",[[
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
]])
ZygorGuidesViewer:RegisterInclude("howlingfjord",[[
|fly Menethil Harbor
step
goto Wetlands,5.1,55.8 |n
'Ride the boat to Howling Fjord|goto Howling Fjord |noway |c
]])
ZygorGuidesViewer:RegisterInclude("ruttheranvillage",[[
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
]])
ZygorGuidesViewer:RegisterInclude("theramoreisle",[[
goto Wetlands,6.5,62.1 |n
.' Ride the boat to Theramore Isle, Dustwallow Marsh |goto Dustwallow Marsh |noway |c
]])
ZygorGuidesViewer:RegisterInclude("SWTabard",[[
goto Stormwind City,67.6,72.8  |only if rep("Stormwind")<Exalted
.talk 49877 |only if rep("Stormwind")<Exalted
.buy 1 Stormwind Tabard##45574 |only if rep("Stormwind")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("DarnTabard",[[
goto Darnassus,36.6,49.0 |only if rep("Darnassus")<Exalted
.talk 50305 |only if rep("Darnassus")<Exalted
.buy 1 Darnassus Tabard##45579 |only if rep("Darnassus")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("ExTabard",[[
goto The Exodar,54.6,36.8 |only if rep("Exodar")<Exalted
.talk 50306 |only if rep("Exodar")<Exalted
.buy 1 Exodar Tabard##45580 |only if rep("Exodar")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GnomTabard",[[
goto Ironforge,56.2,49.0 |only if rep("Gnomeregan")<Exalted
.talk 50308 |only if rep("Gnomeregan")<Exalted
.buy 1 Gnomeregan Tabard##45578 |only if rep("Gnomeregan")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("IFTabard",[[
goto Ironforge,55.8,47.8 |only if rep("Ironforge")<Exalted
.talk 50309 |only if rep("Ironforge")<Exalted
.buy 1 Ironforge Tabard##45577 |only if rep("Ironforge")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GilTabard",[[
goto Darnassus,37.0,47.8 |only if rep("Gilneas")<Exalted
.talk 50307 |only if rep("Gilneas")<Exalted
.buy 1 Gilneas Tabard##64882 |only if rep("Gilneas")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("WATabard",[[
goto Dragonblight,59.8,53.0 |only if rep("The Wyrmrest Accord")<Exalted
.talk 32533 |only if rep("The Wyrmrest Accord")<Exalted
.buy 1 Tabard of the Wyrmrest Accord##43156 |only if rep("The Wyrmrest Accord")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("RamkahenTabard",[[
goto Uldum,54.1,33.3 |only if rep("Ramkahen")<Exalted
.talk 48617 |only if rep("Ramkahen")<Exalted
.buy 1 Tabard of Ramkahen##65904 |only if rep("Ramkahen")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("main_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
#include %tabard%
.' Use this _tabard_ and _complete dungeons_ with _friends_ or in the _random dungeon finder_ to get to _exalted_ |only if rep("%rep%")<Exalted
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("misc_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
]])
ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
.' Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13667
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13667
..accept 13828
step
goto 76.5,19.4
.talk 33646
..accept 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13835
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13828
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13835/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13837/1
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13828/1
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13828/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13837/2
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13835/2
step
'Click the red arrow on your hotbar to stop riding the steed mount|outvehicle|q 13828
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13828
step
goto 76.5,19.4
.talk 33646
..turnin 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13835
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
daily
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13672
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13666 |daily |or
..accept 13669 |daily |or
..accept 13670 |daily |or
step
goto 76.5,19.4
.talk 33646
..accept 13671 |daily
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13625 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
..talk 33220
..get Ashwood Brand |q 13666/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13669
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13669/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13670
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13670/1
step
goto Icecrown,71.3,37.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13671/1
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13625
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13625/1
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13625/3
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13625/2
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13666
..turnin 13669
..turnin 13670
step
goto 76.5,19.4
.talk 33646
..turnin 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13625
step
goto 76.5,19.4
.talk 33625
..turnin 13672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13679|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
goto 71.8,20.0
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle |q 13679
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13679/1
step
goto 76.5,19.4
.talk 33625
..turnin 13679
..accept 13684 |only Human
..accept 13689 |only NightElf
..accept 13685 |only Dwarf
..accept 13688 |only Gnome
..accept 13690 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13684
..accept 13718
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13689
..accept 13717
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13685
..accept 13714
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13688
..accept 13715
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13690
..accept 13716
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |daily |or
..accept 13753 |daily |or
..accept 13754 |daily |or
only Draenei
step
goto 76.1,19.2
.talk 33655
..accept 13755 |daily
only Draenei
step
goto 76.2,19.1
.talk 33656
..accept 13756 |daily
..accept 13854 |daily
only Draenei
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
only Draenei
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
only Draenei
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
only Draenei
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
only Draenei
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
only Draenei
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
only Draenei
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
only Draenei
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
only Draenei
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
only Draenei
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
only Draenei
step
goto 76.1,19.2
.talk 33655
..turnin 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
only Draenei
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |daily |or
..accept 13742 |daily |or
..accept 13743 |daily |or
only Dwarf
step
goto 76.7,19.4
.talk 33315
..accept 13744 |daily
only Dwarf
step
goto 76.6,19.6
.talk 33309
..accept 13745 |daily
..accept 13851 |daily
only Dwarf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
only Dwarf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
only Dwarf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
only Dwarf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
only Dwarf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
only Dwarf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
only Dwarf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
only Dwarf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
only Dwarf
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
only Dwarf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
only Dwarf
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
only Dwarf
step
goto 76.7,19.4
.talk 33315
..turnin 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
only Dwarf
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |daily |or
..accept 13600 |daily |or
..accept 13616 |daily |or
only Human
step
goto 76.5,19.1
.talk 33222
..accept 13592 |daily
only Human
step
goto 76.6,19.2
.talk 33223
..accept 13665 |daily
..accept 13847 |daily
only Human
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
only Human
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
only Human
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
only Human
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
only Human
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
only Human
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
only Human
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
only Human
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
only Human
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
only Human
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
only Human
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
only Human
step
goto 76.5,19.1
.talk 33222
..turnin 13592
only Human
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
only Human
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |daily |or
..accept 13758 |daily |or
..accept 13759 |daily |or
only NightElf
step
goto 76.3,19.0
.talk 33652
..accept 13760 |daily
only NightElf
step
goto 76.4,19.0
.talk 33654
..accept 13761 |daily
..accept 13855 |daily
only NightElf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
only NightElf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
only NightElf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
only NightElf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
only NightElf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
only NightElf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
only NightElf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
only NightElf
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
only NightElf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
only NightElf
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
only NightElf
step
goto 76.3,19.0
.talk 33652
..turnin 13760
only NightElf
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
only NightElf
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |daily |or
..accept 13747 |daily |or
..accept 13748 |daily |or
only Gnome
step
goto 76.6,19.8
.talk 33648
..accept 13749 |daily
only Gnome
step
goto 76.5,19.9
.talk 33649
..accept 13750 |daily
..accept 13852 |daily
only Gnome
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
only Gnome
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
only Gnome
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
only Gnome
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
only Gnome
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
only Gnome
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
only Gnome
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
only Gnome
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
only Gnome
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
only Gnome
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
only Gnome
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
only Gnome
step
goto 76.6,19.8
.talk 33648
..turnin 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
only Gnome
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13714
..accept 13713
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
only Draenei
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
only Human
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
only NightElf
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
only Dwarf
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
only Gnome
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
only Draenei
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1 |only Human
.' Defeat the Argent Valiant |q 13725/1 |only NightElf
.' Defeat the Argent Valiant |q 13713/1 |only Dwarf
.' Defeat the Argent Valiant |q 13723/1 |only Gnome
.' Defeat the Argent Valiant |q 13724/1 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13699
..accept 13702
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13725
..accept 13735
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13713
..accept 13732
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13723
..accept 13733
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13724
..accept 13734
only Draenei
step
goto 69.7,22.9
.talk 33817
..turnin 13702 |only Human
..turnin 13735 |only NightElf
..turnin 13732 |only Dwarf
..turnin 13733 |only Gnome
..turnin 13734 |only Draenei
..accept 13795 |only DeathKnight
..accept 13794 |only !DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13795
only DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13794
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,73.8,19.4
.talk 33769
..accept 13791 |daily
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864 |daily
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793 |daily
only DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,69.9,23.3
.talk 33771
..accept 13790 |daily
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861 |daily
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789 |daily
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan.
description Also, you must have already become a Champion with each of those factions,
description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
daily
step
goto Icecrown,69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |daily |or
..accept 14101 |daily |or
..accept 14102 |daily |or
..accept 14104 |daily |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |daily |or
..accept 14107 |daily |or
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 6 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Dwarf.
.' Skip to the next step of the guide
step
goto Dun Morogh,36.9,70.0
.talk 37081
..accept 24469
step
goto 36.2,71.9
.kill 6 Rockjaw Invaders |q 24469/1
step
goto 36.9,70.0
.talk 37081
..turnin 24469
..accept 24470
step
goto 36.6,70.4
.talk 658
..accept 24471
step
goto 37.3,72.8
.kill 3 Rockjaw Goon |q 24470/1
.' Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
.' Aid 4 Wounded Coldridge Mountaineers |q 24471/1
step
goto 36.9,70.0
.talk 37081
..turnin 24470
step
goto 36.6,70.2
.talk 658
..turnin 24471
step
goto 36.9,70.0
.talk 37081
..accept 24473
step
goto 35.8,66.3
.talk 37087 |tip She walks around the forge at the center of the room
..turnin 24473
..accept 24474
step
goto 35.8,66.3
.talk 1104
..accept 24477
step
goto 37.1,67.4
.' Click the Keg of Gnomenbrau |tip It looks like a huge barrel next to a tree.
.get Cask of Gnomenbrau |q 24474/3
step
goto 34.8,67.4
.' Click the Keg of Stonehammer Stout |tip It looks like a huge barrel next to a tree.
.get Cask of Stormhammer Stout |q 24474/1
step
goto 31.5,67.6
.' Click the Keg of Theramore Pale Ale |tip It looks like a huge barrel next to a tree.
.get Cask of Theramore Pale Ale |q 24474/2
step
goto 32.4,68.0
.' Click Forgotten Dwarven Artifacts |tip They look like small mounds of snow on the ground around this area.
.get 5 Forgotten Dwarven Artifact |q 24477/1
.' You can find more around [38.0,66.8]
step
goto 35.8,66.3
.talk 1104
..turnin 24477
..accept 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24474
..accept 24475
step
goto 33.8,71.3
.from Rockjaw Scavenger##37105+
.get 5 Priceless Rockjaw Artifact |q 24486/1
step
goto 33.4,73.3
.from Ragged Young Wolf##705+
.get 4 Ragged Wolf Hide |q 24475/2
.from Small Crag Boar##708+
.get 3 Boar Haunch |q 24475/1
step
goto 35.8,66.3
.talk 1104
..turnin 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24475
..accept 3107 |only Dwarf Paladin
..accept 3106 |only Dwarf Warrior
..accept 3109 |only Dwarf Rogue
..accept 3110 |only Dwarf Priest
..accept 3115 |only Dwarf Warlock
..accept 3108 |only Dwarf Hunter
..accept 3115 |only Dwarf Mage
..accept 24494 |only Dwarf Shaman
..accept 24487
step
goto 35.8,66.8
.talk 926
..turnin 3107
..accept 24528
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
.' Learn Judgement |q 24528/1
.' Learn Seal of Righteousness |q 24528/3
only Dwarf Paladin
step
goto 35.9,67.7
.' Cast Seal of Righteousness on yourself, then cast Judgement on the Target Dummy
.' Practice using Judgement one time |q 24528/2
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
..turnin 24528
only Dwarf Paladin
step
goto 35.8,65.6
.talk 912
..turnin 3106
..accept 24531
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
.' Learn Charge |q 24531/2
only Dwarf Warrior
step
goto 35.7,67.7
.' Use Charge on a Target Dummy on the opposite side of the wall
.' Practice using Charge one time |q 24531/1
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
..turnin 24531
only Dwarf Warrior
step
goto 35.4,65.9
.talk 916
..turnin 3109
..accept 24532
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
.' Learn Eviscerate |q 24532/2
only Dwarf Rogue
step
goto 35.9,67.7
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24532/1
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
..turnin 24532
only Dwarf Rogue
step
goto 35.6,64.8
.talk 837
..turnin 3110
..accept 24533
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
.' Learn Flash Heal |q 24533/2
only Dwarf Priest
step
goto 36.0,64.8
.' Use Flash Heal on the Wounded Militia
.' Practice using Flash Heal 5 times |q 24533/1
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
..turnin 24533
only Dwarf Priest
step
goto 35.7,65.3
.talk 43455
..turnin 3115
..accept 26904
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
.' Learn Immolate |q 26904/2
only Dwarf Warlock
step
goto 35.9,67.7
.' Use Immolate 5 times on the Training Dummy
.' Practice Immolate 5 times |q 26904/1
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
..turnin 26904
only Dwarf Warlock
step
goto 36.2,65.9
.talk 895
..turnin 3108
..accept 24530
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
.' Learn Steady Shot |q 24530/2
only Dwarf Hunter
step
goto 35.7,67.7
.' Use the Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 24530/1
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
..turnin 24530
only Dwarf Hunter
step
goto 35.7,64.8
.talk 37121
..turnin 3115
..accept 24526
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
.' Learn Arcane Missiles |q 24526/2
only Dwarf Mage
step
goto 35.7,67.7
.' Use Arcane Missiles on the target dummies
.' Practise using Arcane Missiles 2 times |q 24526/1
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
..turnin 24526
only Dwarf Mage
step
goto 35.7,64.6
.talk 37115
..turnin 24494
..accept 24527
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
.' Learn Primal Strike |q 24527/2
only Dwarf Shaman
step
goto 35.7,67.7
.' Use Primal Strike on the training dummies
.' Practise Primal Strike 2 times |q 24527/1
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
..turnin 24527
only Dwarf Shaman
step
goto 32.1,74.2
.talk 786
..turnin 24487
..accept 182
step
goto 32.2,74.3
.talk 1354
..accept 24489
step
goto 31.9,74.4
.talk 8416
..accept 3361
step
goto 27.8,74.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Box |tip It looks like a toolbox next to the campfire.
.get Felix Box##10438 |q 3361/1
step
goto 27.8,75.2
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Mirim'koa talk
.' Scout Soothsayer Mirim'koa |q 24489/3
step
goto 29.8,78.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Chest |tip It looks like a toolbox next to the campfire.
.get Felix Chest##16313 |q 3361/2
step
goto 29.6,78.8
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Rikkari talk
.' Scout Soothsayer Rikkari |q 24489/2
step
goto 33.3,77.8
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Bucket of Bolts |tip It looks like a toolbox next to the campfire.
.get Felix's Bucket of Bolts##16314 |q 3361/3
step
goto 33.3,78.0
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Shi'kala talk
.' Scout Soothsayer Shi'kala |q 24489/1
step
goto 33.6,77.5
.kill 10 Frostmane Troll Whelp |q 182/1
step
goto 32.2,74.3
.talk 1354
..turnin 24489
step
goto 32.1,74.2
.talk 786
..turnin 182
..accept 218
step
goto 31.9,74.4
.talk 8416
..turnin 3361
step
goto 33.8,78.3 |n
.' Enter the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 36.9,78.1
.kill Wayward Fire Elemental |q 218/3
step
goto 37.4,78.4
.kill Grik'nir the Cold |q 218/1
step
goto 34.0,78.8
.from Frostmane Blade##37507+, Frostmane Novice##946+
.kill 10 Grik'nir's Servant |q 218/2
step
goto 33.8,78.3 |n
.' Leave the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 32.1,74.2
.talk 786
..turnin 218
..accept 24490
step
'Hearth to Coldridge Valley |goto 36.9,70.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.9,70.7
.talk 6782
..turnin 24490
..accept 24491
step
goto 37.4,70.6
.talk 37113
..turnin 24491
..accept 24492
step
goto 35.8,66.3
.talk 37087
..accept 24493
step
goto 35.4,66.0
.' Click the Leftover Boar Meat |tip They look like golden brown turkey legs on this small square table.
.get Leftover Boar Meat##49756 |q 24492/3
step
goto 35.5,65.2
.' Click the Beer Barrel |tip It looks like a wooden barrel sitting on the ground in the corner.
.get Coldridge Beer Flagon##49754 |q 24492/1
step
goto 35.8,64.5
.' Click the Wolf-Hide Cloaks |tip It looks like a wooden crate on its side, upstairs next to some barrels of explosives.
.get Ragged Wolf-Hide Cloak##57541 |q 24492/2
step
goto 37.4,70.6
.talk 37113
..turnin 24492
.' You will fly to Kharanos |goto 53.3,49.8,0.5 |noway |c
step
goto 53.1,50.0
.talk 1872
..turnin 24493
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Gnome",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Gnome.
.' Skip to the next step of the guide
step
goto Dun Morogh,25.8,32.0
.talk 45966
..accept 27670
step
goto 27.1,32.1
.kill 6 Crazed Leper Gnome |q 27670/1
step
goto 25.8,32.0
.talk 45966
..turnin 27670
..accept 28167
step
goto 27.7,31.9
.talk 47250
..turnin 28167
..accept 27671
step
goto 28.7,31.4
.' Use your Teleport Beacon on Survivors |use Teleport Beacon##62057 |tip They look like scared gnomes around this area.
.' Rescue 6 Survivors |q 27671/1
step
goto 27.7,31.9
.talk 47250
..turnin 27671
..accept 28169
step
goto 28.0,37.8
.talk 46274
..turnin 28169
..accept 27635
step
goto 28.6,37.7
.' Click a Sanitron 500 |tip They look like little helicopters flying on this spot.
.' Complete Decontamination Process |q 27635/1
step
goto 29.5,37.7
.talk 46255
..turnin 27635
..accept 27674
step
goto 29.6,38.0
.talk 46293
..' Tell him to send you to the surface |goto 33.9,38.6,0.5 |noway |c
step
goto 33.9,38.6
.talk 42396
..turnin 27674
..accept 26202 |only Gnome Warlock
..accept 26197 |only Gnome Mage
..accept 26203 |only Gnome Warrior
..accept 26206 |only Gnome Rogue
..accept 26199 |only Gnome Priest
step
goto 33.9,34.8
.talk 42323
..turnin 26199
..accept 26422
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26206
..accept 26423
only Gnome Rogue
step
goto 34.3,37.5
..turnin 26203
..accept 26425
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..turnin 26197
..accept 26421
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..turnin 26202
..accept 26424
only Gnome Warlock
step
goto 33.7,36.4
.talk 42317
..turnin 26424 |only Gnome Warlock
..turnin 26421 |only Gnome Mage
..turnin 26425 |only Gnome Warrior
..turnin 26423 |only Gnome Rogue
..turnin 26422 |only Gnome Priest
..accept 26208
.' Watch the dialogue
.' Learn about Operation: Gnomeregan |q 26208/1
step
goto 33.7,36.5
.talk 26208
..turnin 26208
..accept 26566
step
goto 34.3,34.6
.talk 42553
..turnin 26566
..accept 26222
step
goto 33.2,35.7
.' Click Spare Parts |tip They look like big pieces of metal on the ground around this area.
.get 7 Spare Part |q 26222/1
step
goto 34.3,34.6
.talk 42553
..turnin 26222
..accept 26205
step
goto 33.8,34.1
.talk 42611
..accept 26264
step
goto 33.4,39.3
.talk 42630
..accept 26265
step
goto 33.0,43.2
.kill 6 Living Contamination |q 26265/1
.from Toxic Sludge##42184+
.get 6 Recovered Possession |q 26264/1
.' Stand next to Toxic Pools |tip They look like green spots on the ground that spew liquid around this area.
.' Clean 5 Toxic Pools |q 26205/1
step
goto 33.4,39.3
.talk 42630
..turnin 26265
step
goto 33.9,34.8
.talk 42323
..accept 26200
only Gnome Priest
step
goto 33.9,34.8
.talk 42323
.' Learn Flash Heal |q 26200/2
only Gnome Priest
step
goto 33.9,34.6
.' Use your Flash Heal ability on the Wounded Infantry
.' Practice casting Flash Heal 5 times |q 26200/1
only Gnome Priest
step
goto 33.4,36.8
.talk 42366
..accept 26207
only Gnome Rogue
step
goto 33.4,36.8
.talk 42366
.' Learn Eviscerate |q 26207/2
only Gnome Rogue
step
goto 34.5,37.2
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice using Eviscerate 3 times |q 26207/1
only Gnome Rogue
step
goto 34.3,37.5
.talk 42324
..accept 26204
only Gnome Warrior
step
goto 34.3,37.5
.talk 42324
.' Learn Charge |q 26204/2
only Gnome Warrior
step
goto 34.3,37.5
.' Use your Charge ability on the Training Dummy
.' Practice using Charge 1 time |q 26204/1
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..accept 26198
only Gnome Mage
step
goto 34.5,35.1
.talk 42331
.' Learn Arcane Missiles |q 26198/2
only Gnome Mage
step
goto 34.4,37.5
.' Use your Fireball ability on the Training Dummy to trigger Arcane Missiles, then use Arcane Missiles on the Training Dummy
.' Practice casting Arcane Missiles 2 times |q 26198/1
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..accept 26201
only Gnome Warlock
step
goto 33.3,38.4
.talk 460
.' Learn Immolate |q 26201/2
only Gnome Warlock
step
goto 34.4,37.5
.' Use your Immolate ability on a Training Dummy
.' Practice Casting Immolate 5 Times |q 26201/1
only Gnome Warlock
step
goto 34.3,34.6
.talk 42553
..turnin 26205
step
goto 33.8,34.1
.talk 42611
..turnin 26264
step
goto 33.5,36.7
.talk 42489
..accept 26316
step
goto 33.9,34.8
.talk 42323
..turnin 26200
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26207
only Gnome Rogue
step
goto 34.5,35.1
.talk 42331
..turnin 26198
only Gnome Mage
step
goto 33.2,38.4
.talk 460
..turnin 26201
only Gnome Warlock
step
goto 34.3,37.5
.talk 42324
..turnin 26204
only Gnome Warrior
step
goto 33.1,48.7
.talk 42708
..turnin 26316
..accept 26285
..accept 26284
step
goto 32.9,49.9
.from Rockjaw Marauder##42222+, Rockjaw Bonepicker##42221+
.get 7 Stolen Powder Keg |q 26285/1
.' Attack Makeshift Cages to destroy them |tip They look like bone cages with brown animal hides layong on them around this area.
.' Rescue 6 Captured Demolitionists |q 26284/1
step
goto 33.1,48.7
.talk 42708
..turnin 26285
..turnin 26284
..accept 26318
step
goto 31.9,49.2 |n
.' Enter the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 28.8,49.0
.' Follow the path to the back of the cave
.kill Boss Bruggor |q 26318/2
step
goto 29.2,48.5
.' Click the Detonator |tip It looks like a small metal box with a handle on, sitting on the ground inside the cave.
.' Detonate the Trogg Tunnel |q 26318/1
step
goto 31.9,49.2 |n
.' Leave the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 33.1,48.7
.talk 42708
..turnin 26318
..accept 26329
step
goto 33.7,36.4
.talk 42317
..turnin 26329
..accept 26331
step
goto 33.4,36.8
.talk 42491
..accept 26333
step
goto 39.1,33.1
.from Irradiated Technician##42223+
.' Kill 8 Crushcog's Minions |q 26331/1
.' Use your Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200 |tip They look like yellow crab machines around this area.
.' Destroy 5 Repaired Mechano-Tanks |q 26333/1
step
goto 33.7,36.4
.talk 42317
..turnin 26331
step
goto 33.4,36.8
.talk 42491
..turnin 26333
step
goto 33.4,36.8
.talk 42366
..accept 26339
step
goto 37.4,44.0
.talk 42353
..turnin 26339
..accept 26342
step
goto 39.2,41.4
.' Use your Paintinator on Crushcog Sentry-Bots |use Paintinator##58203 |tip They look like small robots with red light heads running around on the frozen lake.
.' Blind 5 Crushcog's Sentry-Bots |q 26342/1
step
goto 37.4,44.0
.talk 42353
..turnin 26342
..accept 26364
step
goto 40.6,42.0
.talk 42849
..' Tell him you're ready to start the assault
.' Use your Orbital Targeting Device to target on Razlo Crushcog |use Orbital Targeting Device##58253
.' Defeat Razlo Crushcog |q 26364/1
step
goto 37.4,44.0
.talk 42353
..turnin 26364
..accept 26373
step
goto Dun Morogh,49.9,45.0
.talk 42933
..accept 26380
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Dun Morogh,53.9,50.7
.talk 1267
..accept 384
step
goto 54.5,50.8
.talk 1247
..turnin 26380
only Gnome
step
goto 54.5,50.8
.talk 1247
.buy Rhapsody Malt##2894 |q 384/2
step
goto 54.5,50.8
.talk 1247
.home Kharanos
step
goto 54.2,51.2
.talk 1374
..accept 315
step
goto 53.7,52.2
.talk 40950
..turnin 26373 |only Gnome
..accept 25724
step
goto 53.8,52.8
.talk 43701
.fpath Kharanos
step
goto 56.0,48.4
.from Crag Boar##1125+
.get 4 Tender Boar Rib |q 384/1
step
goto 53.9,50.7
.talk 1267
..turnin 384
step
goto 49.9,45.0
.talk 42933
..accept 26380
only Dwarf
step
goto 51.5,40.7 |n
.' Follow the path up |goto 51.5,40.7,0.5 |noway |c
step
goto 48.6,38.0
.kill 5 Frostmane Seer |q 25724/1
.kill 7 Frostmane Snowstrider |q 25724/2
.' Click Shimmerweed Baskets |tip They look like small wooden woven baskets on the ground around this area.
.get 7 Shimmerweed |q 315/1
step
'Hearth to Kharanos |goto 54.5,50.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.5,50.9
.talk 1247
..turnin 26380
only Dwarf
step
goto 54.2,51.2
.talk 1374
..turnin 315
step
goto 53.7,52.2
.talk 40950
..turnin 25724
..accept 25667
..accept 313
step
goto 53.7,52.1
.talk 40951
..accept 25668
step
goto 49.5,52.1 |n
.' Enter the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 48.3,47.0
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40991
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Dunstand |q 313/1
step
goto 49.2,47.8
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40994
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Lewin |q 313/2
step
goto 49.3,44.3
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 41056
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Valgrum |q 313/3
step
goto 48.3,47.0
.kill 10 Wendigo |q 25667/1
.' Click Pilfered Supplies |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.get 6 Pilfered Supplies |q 25668/1
step
goto 49.5,52.1 |n
.' Leave the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 50.5,52.5 |n
.' Follow the path up |goto 50.5,52.5,0.5 |noway |c
step
goto 53.7,52.1
.talk 40951
..turnin 25668
step
goto 53.7,52.2
.talk 40950
..turnin 25667
..turnin 313
..accept 25792
step
goto 53.3,51.9
.talk 1269
..accept 412
step
goto 57.3,56.8
.from Frostmane Scavenger##41146+
.get 8 Gyromechanic Gear |q 412/1
.' Use the Rune of Fire in your bags next to Constriction Totems |use Rune of Fire##56009 |tip They look like wooden spiked rods with green orbs at the top of them around this area.
.' 4 Constriction Totems Burned |q 25792/1
step
goto 53.7,52.2
.talk 40950
..turnin 25792
step
goto 53.3,51.9
.talk 1269
..turnin 412
step
goto 53.7,52.2
.talk 40950
..accept 25838
step
goto 56.8,47.1
.talk 41363
..turnin 25838
..accept 25839
step
goto 56.7,46.5
.' Click the Ultrasafe Personnel Launcher |tip They look like balls of lightning on a metal machine.
.' Use the Ultrasafe Personnel Launcher to deploy to Frostmane Retreat |q 25839/1
step
goto 62.5,53.7
.talk 41298
..turnin 25839
..accept 25840
..accept 25841
step
goto 62.5,53.8
.talk 50601
..accept 28868
step
goto 64.4,54.4
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Northern Frostmane Retreat |q 25841/1
step
goto 63.8,55.7
.kill Battok the Berserker |q 25840/1
step
goto 63.3,57.3
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Southern Frostmane Retreat |q 25841/2
step
goto 62.7,55.1
.kill 4 Frostmane Warrior |q 25840/2
.' Use your Viewpoint Equalizer to shrink Frostmane Builders |use Viewpoint Equalizer##67249
.' Shrink 5 Frostmane Builders |q 28868/1
step
goto 62.5,53.8
.talk 50601
..turnin 28868
step
goto 62.5,53.7
.talk 41298
..turnin 25840
..turnin 25841
..accept 25882
step
goto 69.2,51.3 |n
.' Follow the path up |goto 69.2,51.3,0.5 |noway |c
step
goto 70.4,48.9
.talk 41578
..turnin 25882
..accept 25932
.' Help Sergeant Flinthammer and his mountaineers fight off the Frostmane Raiders
.' Defend Amberstill Ranch |q 25932/1
step
goto 70.4,48.9
.talk 41578
..turnin 25932
step
goto 70.7,48.9
.talk 1261
..accept 25905
step
goto 70.3,48.1
.talk 1265
..accept 314
step
goto 69.3,49.6 |n
.' Follow the path up |goto 69.3,49.6,0.5 |noway |c
step
goto 69.7,44.4
.from Vagash##1388
.get Fang of Vagash |q 314/1
step
goto 70.3,48.1
.talk 1265
..turnin 314
step
goto 67.6,55.0
.' Whistle while standing next to Stolen Rams |script DoEmote("WHISTLE") |tip They look like different colored rams around this area.
.' Recover 6 Stolen Rams |q 25905/1
step
goto 70.7,48.9
.talk 1261
..turnin 25905
step
goto 70.4,48.9
.talk 41578
..accept 25933
step
goto 69.9,53.2 |n
.' Go to the road |goto 69.9,53.2,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..accept 433
step
goto 75.9,54.5
.talk 43702
.fpath Gol'Bolar Quarry
step
goto 76.3,54.7
.talk 1254
..turnin 25933
..accept 432
step
goto 76.2,53.0
.talk 1255
..accept 25937
step
goto 77.7,55.0 |n
.' Enter the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 78.2,53.3
.kill 8 Rockjaw Skullthumper |q 432/1
.kill 8 Rockjaw Bonesnapper |q 432/2
.' Click Frozen Artifacts |tip They look like crystals made of ice, generally along the walls of the cave.
.get 8 Frozen Artifact |q 25937/1
.' Use Runes of Return on Trapped Miners |use Runes of Return##56222 |tip They look like scared dwarves along the walls inside the cave.
.' Rescue 7 Trapped Miners |q 433/1
step
goto 77.7,55.0 |n
.' Leave the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 75.1,55.9 |n
.' Follow the path up |goto 75.1,55.9,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..turnin 433
step
goto 76.3,54.7
.talk 1254
..turnin 432
step
goto 76.2,53.0
.talk 1255
..turnin 25937
step
goto 75.9,54.3
.talk 1977
..accept 25986
step
goto 75.0,53.5 |n
.' Follow the path up to the road |goto 75.0,53.5,0.5 |noway |c
step
goto 82.6,48.3
.talk 41804
..accept 25979
step
goto 82.8,48.4
.talk 41786
..turnin 25986
..accept 25978
step
goto 83.0,51.5
.kill 6 Helm's Bed Surger |q 25979/1
.' Attack Icy Tombs |tip They look like big green chunks of ice around this area.
.' Free 6 Frozen Mountaineers |q 25978/1
step
goto 82.9,48.4
.talk 41786
..turnin 25978
step
goto 82.6,48.3
.talk 41804
..turnin 25979
step
goto 82.9,48.4
.talk 41786
..accept 25997
step
goto 85.2,60.6
.from Captain Beld##6124 |tip He's inside of the house at the bottom of the stairs
.get Dark Iron Attack Plans |q 25997/2
step
goto 84.0,58.1
.kill 5 Dark Iron Spy |q 25997/1
step
goto 82.9,48.4
.talk 41786
..turnin 25997
..accept 25998
step
goto 75.2,52.8
.' Click Mathel's Flying Machine |tip It looks like a helicopter flying in place on a wooden platform.
.' You will fly to Ironforge Airfield |goto 76.0,16.8,0.5 |noway |c
step
goto 78.3,20.5
.talk 41853
..turnin 25998
..accept 26078
step
goto 78.3,24.6
.' Use the Firefighting Gear next to the burning airplanes |use Firefighting Gear##56803
.' Extinquish 6 Fires |q 26078/1
step
goto 78.3,20.5
.talk 41853
..turnin 26078
..accept 26085
step
goto 77.7,30.1
.' Use the Ironforge Banner while standing next to Loose Snow |use Ironforge Banner##56809 |tip They look like piles of white snow on the ground around this area.
.' Plant 8 Ironforge Banners |q 26085/1
step
goto 78.3,20.5
.talk 41853
..turnin 26085
..accept 26094
step
goto 77.1,18.5
.' Click the Repaired Bomber |tip It looks like an airplane parked at the end of the runway, ready to take off.
.' Use Iron Hammer Bomb on the Dark Iron forces below |use Iron Hammer Bomb##56814
.' Kill 30 Dark Iron Attackers |q 26094/1
step
goto 78.3,20.5
.talk 41853
..turnin 26094
..accept 26102
step
goto 78.5,34.4
.kill Dark Iron Golem |n
.kill General Grimaxe |q 26102/1
step
goto 78.3,20.5
.talk 41853
..turnin 26102
..accept 26112
step
'Hearth to Thunderbrew Distillery |goto 54.5,50.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.8,52.8
.talk 43701
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,41.4,52.3
.talk 1959
..accept 26131
step
goto 39.8,57.4
.talk 26131
..turnin 26112
..accept 26118
step
goto 36.6,43.2
.' Use the Sturdy Manacles on Ambassador Slaghammer|use Sturdy Manacles##56837
.' Take Ambassaddor Slaghammer to 43.6,50.6
.' Arrest Ambassador Slaghammer and bring him to the High Seat |q 26118/1
step
goto 39.1,56.1
.talk 42129
..turnin 26118
step
goto 55.5,47.7
.talk 6388
..' Tell him Mountaineer Barleybrew said he could help you get to Loch Modan
.' You will fly to Thelsamar |goto Loch Modan,13.9,56.7,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26131
..accept 26854
step
goto 12.7,58.5 |n
.' Enter the tunnel |goto 12.7,58.5,0.5 |noway |c
step
goto Dun Morogh,87.6,50.1
.' Click the Dwarven Corpse
..turnin 26854
..accept 26855
step
goto 87.5,50.2
.from Mangeclaw##1961
.get Mangy Claw |q 26855/1
step
goto 89.6,51.8 |n
.' Enter the tunnel |goto 89.6,51.8,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26855
..accept 13635
step
goto 16.4,58.5 |n
.' Enter the tunnel |goto 16.4,58.5,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 13635
..accept 26146
step
goto 23.3,74.9
.talk 1089
..accept 26145
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 31.5,74.6
.kill 12 Stonesplinter Trogg##1161 |q 26146/1
.get 8 Trogg Stone Tooth##2536 |q 26145/1
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26146
..accept 26148
step
goto 23.3,74.9
.talk 1089
..turnin 26145
step
goto 23.3,75.1
.talk 1090
..accept 26147
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 33.1,69.3 |n
.' Enter the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 34.3,61.0
.' Follow the path in the cave down, around, and then up again
.kill Grawmug |q 26148/1
step
goto 35.5,64.9
.kill 8 Stonesplinter Bonesnapper |q 26147/2
.kill 8 Stonesplinter Shaman |q 26147/1
step
goto 33.1,69.3 |n
.' Leave the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26148
..accept 26176
step
goto 23.3,75.1
.talk 1090
..turnin 26147
step
goto 33.9,51.0
.talk 1572
.fpath Thelsamar
step
goto 35.1,46.6
.talk 1340
..turnin 26176
..accept 26842
..accept 13636
step
goto 35.5,48.4
.talk 6734
.home Stoutlager Inn
step
goto 34.8,49.3
.talk 1963
..accept 26860
step
goto 35.4,42.8
.talk 1777
..accept 25118
step
goto 37.3,46.5
.' Click the Wanted! Poster |tip It looks like a wooden sign with pictures on it next to a well.
..accept 13648
step
goto 41.4,39.0
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground under this small wooden platform.
..accept 13655
step
goto 34.6,29.6
.from Black Bear##1129+
.get 8 Bear Rumps |q 26860/1
.kill 8 Forest Lurker |q 25118/1
.' You can find more:
.' at [29.8,17.3]
.' at [39.8,52.3]
step
goto 26.9,56.3
.from Mosshide Scout##44161+, Mosshide Basher##44162+
.get 12 Mosshide Ear |q 26842/1
.' You can find more around [27.3,43.8]
step
goto 35.1,46.6
.talk 1340
..turnin 26842
step
goto 34.8,49.3
.talk 1963
..turnin 26860
step
goto 35.4,42.8
.talk 1777
..turnin 25118
step
goto 37.3,47.8
.talk 1153
..turnin 13655
step
goto 40.7,58.4 |n
.' Follow the path up |goto 40.7,58.4,0.5 |noway |c
step
goto 36.8,61.1
.kill Gorick Guzzledraught |q 13648/1
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground inside the small cave, next to the campfire.
..accept 13656
step
goto 37.3,47.8
.talk 1153
..turnin 13656
step
goto 34.6,44.5
.talk 1139
..turnin 13648
step
goto 25.4,18.0
.talk 1343
..turnin 13636
..accept 26843
step
goto 26.2,31.8
.kill "Commander" Nazrim |q 26843/1
step
goto 25.4,18.0
.talk 1343
..turnin 26843
..accept 26844
step
goto 35.5,12.5
.kill 5 Tunnel Rat Forager |q 26844/2
.kill 5 Tunnel Rat Surveyor |q 26844/1
.' There are more deeper in, around 35.3,16.1
step
goto 25.4,18.0
.talk 1343
..turnin 26844
..accept 26845
..accept 26863
step
goto 25.4,17.8
.talk 44200
..accept 26846
step
goto 35.4,18.6 |n
.' Enter the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 34.7,27.2
.' Click Miner's League Crates and get Miners' Gear
.from Foreman Sharpsneer##44198
.get Foreman Sharpsneer's Head |q 26845/1
step
goto 35.5,27.8
.kill 5 Tunnel Rat Geomancer |q 26846/1
.' Click the Miner's League Crates |tip They look like piles of wooden boxes inside the cave.
.get 6 Miners' Gear |q 26863/1
step
goto 35.4,18.6 |n
.' Leave the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 25.4,18.0
.talk 1343
..turnin 26845
..accept 26864
..turnin 26863
step
goto 25.4,17.8
.talk 44200
..turnin 26846
step
'Hearth to Stoutlager Inn |goto 35.5,48.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 35.1,46.6
.talk 1340
..turnin 26864
..accept 26927
step
map Ironforge
'To continue gaining reputation with the Ironforge faction:
.' You can buy an Ironforge Tabard from Captain Stonehelm at [Ironforge 55.9,47.9] |tip Wear the Ironforge Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
.'
.'
'To continue gaining reputation with the Gnomeregan faction:
.' You can buy a Gnomeregan Tabard from Master Tinker Trini at [Ironforge 56.2,48.5] |tip Wear the Gnomeregan Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Stormwind\\Human",[[
description This guide will help you to get Exalted
description reputation with the Stormwind faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Human.
.' Skip to the next step of the guide
step
goto Elwynn Forest,48.2,42.1
.talk 197
..accept 28757 |only Human Mage
..accept 28762 |only Human Paladin
..accept 28763 |only Human Priest
..accept 28764 |only Human Rogue
..accept 28765 |only Human Warlock
..accept 28766 |only Human Warrior
..accept 28767 |only Human Hunter
step
goto 46.9,39.3
.kill 6 Blackrock Battle Worg |q 28757/1 |only Human Mage
.kill 6 Blackrock Battle Worg |q 28762/1 |only Human Paladin
.kill 6 Blackrock Battle Worg |q 28763/1 |only Human Priest
.kill 6 Blackrock Battle Worg |q 28764/1 |only Human Rogue
.kill 6 Blackrock Battle Worg |q 28765/1 |only Human Warlock
.kill 6 Blackrock Battle Worg |q 28766/1 |only Human Warrior
.kill 6 Blackrock Battle Worg |q 28767/1 |only Human Hunter
step
goto 48.2,42.1
.talk 197
..turnin 28757 |only Human Mage
..accept 28769 |only Human Mage
..turnin 28762 |only Human Paladin
..accept 28770 |only Human Paladin
..turnin 28763 |only Human Priest
..accept 28771 |only Human Priest
..turnin 28764 |only Human Rogue
..accept 28772 |only Human Rogue
..turnin 28765 |only Human Warlock
..accept 28773 |only Human Warlock
..turnin 28766 |only Human Warrior
..accept 28774 |only Human Warrior
..turnin 28767 |only Human Hunter
..accept 28759 |only Human Hunter
step
goto 45.4,43.3
.kill 8 Blackrock Spy |q 28769/1 |only Human Mage |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28770/1 |only Human Paladin |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28771/1 |only Human Priest |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28772/1 |only Human Rogue |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28773/1 |only Human Warlock |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28774/1 |only Human Warrior |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28759/1 |only Human Hunter |tip They creep around near the trees around this area.
step
goto 48.2,42.0
.talk 197
..turnin 28769 |only Human Mage
..accept 3104 |only Human Mage
..turnin 28770 |only Human Paladin
..accept 3101 |only Human Paladin
..turnin 28771 |only Human Priest
..accept 3103 |only Human Priest
..turnin 28772 |only Human Rogue
..accept 3102 |only Human Rogue
..turnin 28773 |only Human Warlock
..accept 3105 |only Human Warlock
..turnin 28774 |only Human Warrior
..accept 3100 |only Human Warrior
..turnin 28759 |only Human Hunter
..accept 26910 |only Human Hunter
step
goto 49.7,39.4
.talk 198
..turnin 3104
..accept 26916
only Human Mage
step
goto 49.7,39.4
.talk 198
.' Learn Arcane Missiles |q 26916/2
only Human Mage
step
goto 48.6,44.2
.' Use your Arcane Missiles ability on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26916/1
only Human Mage
step
goto 49.7,39.4
.talk 198
..turnin 26916
..accept 28784
only Human Mage
step
goto 50.3,39.9
.talk 915
..turnin 3102
..accept 26915
only Human Rogue
step
goto 50.3,39.9
.talk 915
.' Learn Eviscerate |q 26915/2
only Human Rogue
step
goto 48.7,44.2
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 26915/1
only Human Rogue
step
goto 50.3,39.9
.talk 915
..turnin 26915
..accept 28787
only Human Rogue
step
goto 49.9,42.6
.talk 459
..turnin 3105
..accept 26914
only Human Warlock
step
goto 49.9,42.6
.talk 459
.' Learn Immolate |q 26914/2
only Human Warlock
step
goto 48.7,44.2
.' Use your Immolate ability on the Training Dummy
.' Practice using Immolate 5 times |q 26914/1
only Human Warlock
step
goto 49.9,42.6
.talk 459
..turnin 26914
..accept 28788
only Human Warlock
step
goto 48.6,42.6
.talk 43278
..turnin 26910
..accept 26917
only Human Hunter
step
goto 48.6,42.6
.talk 43278
.' Learn Steady Shot |q 26917/2
only Human Hunter
step
goto 48.6,44.2
.' Use your Steady Shot ability on the Target Dummy
.' Practice Steady Shot 5 times |q 26917/1
only Human Hunter
step
goto 48.6,42.6
.talk 43278
..turnin 26917
..accept 28780
only Human Hunter
step
goto 49.8,39.5
.talk 375
..turnin 3103
..accept 26919
only Human Priest
step
goto 49.8,39.5
.talk 375
.' Learn Flash Heal |q 26919/2
only Human Priest
step
goto 49.9,39.7
.' Use your Flash Heal ability on the Wounded Trainee
.' Practice Flash Heal 5 times |q 26919/1
only Human Priest
step
goto 49.8,39.5
.talk 375
..turnin 26919
..accept 28786
only Human Priest
step
goto 50.4,42.1
.talk 925
..turnin 3101
..accept 26918
only Human Paladin
step
goto 50.4,42.1
.talk 925
.' Learn Judgement |q 26918/1
.' Learn Seal of Righteousness |q 26918/3
only Human Paladin
step
goto 48.8,44.3
.' Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy
.' Practice Judgement 1 time |q 26918/2
only Human Paladin
step
goto 50.4,42.1
.talk 925
..turnin 26918
..accept 28785
only Human Paladin
step
goto 50.2,42.3
.talk 911
..turnin 3100
..accept 26913
only Human Warrior
step
goto 50.2,42.3
.talk 911
.' Learn Charge |q 26913/2
only Human Warrior
step
goto 48.5,44.3
.' Use your Charge ability on a Target Dummy
.' Practice Charge 1 time |q 26913/1
only Human Warrior
step
goto 50.2,42.3
.talk 911
..turnin 26913
..accept 28789
only Human Warrior
step
goto 48.8,38.4
.talk 823
..turnin 28789 |only Human Warrior
..accept 28797 |only Human Warrior
..turnin 28785 |only Human Paladin
..accept 28793 |only Human Paladin
..turnin 28780 |only Human Hunter
..accept 28791 |only Human Hunter
..turnin 28786 |only Human Priest
..accept 28794 |only Human Priest
..turnin 28788 |only Human Warlock
..accept 28796 |only Human Warlock
..turnin 28784 |only Human Mage
..accept 28792 |only Human Mage
..turnin 28787 |only Human Rogue
..accept 28795 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..accept 28813 |only Human Warrior
..accept 28809 |only Human Paladin
..accept 28806 |only Human Hunter
..accept 28810 |only Human Priest
..accept 28812 |only Human Warlock
..accept 28808 |only Human Mage
..accept 28811 |only Human Rogue
step
goto Elwynn Forest,47.4,35.4
.kill 8 Goblin Assassin |q 28797/1 |only Human Warrior
.kill 8 Goblin Assassin |q 28793/1 |only Human Paladin
.kill 8 Goblin Assassin |q 28791/1 |only Human Hunter
.kill 8 Goblin Assassin |q 28794/1 |only Human Priest
.kill 8 Goblin Assassin |q 28796/1 |only Human Warlock
.kill 8 Goblin Assassin |q 28792/1 |only Human Mage
.kill 8 Goblin Assassin |q 28795/1 |only Human Rogue
.' Click Injured Stormwind Infantry |tip They look like Alliance soldiers laying on the ground around this area.
.' Revive 4 Injured Soldiers |q 28813/1 |only Human Warrior
.' Revive 4 Injured Soldiers |q 28809/1 |only Human Paladin
.' Revive 4 Injured Soldiers |q 28806/1 |only Human Hunter
.' Revive 4 Injured Soldiers |q 28810/1 |only Human Priest
.' Revive 4 Injured Soldiers |q 28812/1 |only Human Warlock
.' Revive 4 Injured Soldiers |q 28808/1 |only Human Mage
.' Revive 4 Injured Soldiers |q 28811/1 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..turnin 28813 |only Human Warrior
..turnin 28809 |only Human Paladin
..turnin 28806 |only Human Hunter
..turnin 28810 |only Human Priest
..turnin 28812 |only Human Warlock
..turnin 28808 |only Human Mage
..turnin 28811 |only Human Rogue
step
goto 48.8,38.4
.talk 823
..turnin 28797 |only Human Warrior
..turnin 28793 |only Human Paladin
..turnin 28791 |only Human Hunter
..turnin 28794 |only Human Priest
..turnin 28796 |only Human Warlock
..turnin 28792 |only Human Mage
..turnin 28795 |only Human Rogue
..accept 28823 |only Human Warrior
..accept 28819 |only Human Paladin
..accept 28817 |only Human Hunter
..accept 28820 |only Human Priest
..accept 28822 |only Human Warlock
..accept 28818 |only Human Mage
..accept 28821 |only Human Rogue
step
goto 48.2,42.1
.talk 197
..turnin 28823 |only Human Warrior
..turnin 28819 |only Human Paladin
..turnin 28817 |only Human Hunter
..turnin 28820 |only Human Priest
..turnin 28822 |only Human Warlock
..turnin 28818 |only Human Mage
..turnin 28821 |only Human Rogue
..accept 26389
step
goto 48.1,42.5
.talk 9296
..accept 26391
step
goto 54.0,49.2
.from Blackrock Invader##42937+
.get 8 Blackrock Orc Weapon |q 26389/1
.' Use Milly's Fire Extinguisher on the fires in the area |use Milly's Fire Extinguisher##58362
.' Extinguish 8 Vineyard fires |q 26391/1
step
goto 48.1,42.5
.talk 9296
..turnin 26391
step
goto 48.2,42.1
.talk 197
..turnin 26389
..accept 26390
step
goto 57.0,40.7
.kill Kurtok the Slayer |q 26390/1
step
goto 48.2,42.1
.talk 197
..turnin 26390
..accept 54
step
goto 45.6,47.7
.talk 6774
..accept 2158
step
goto 41.7,64.6
.talk 42983
.fpath Goldshire
step
goto 42.1,65.9
.talk 240
..turnin 54
..accept 62
step
goto 42.1,67.3
.talk 241
..accept 47
step
goto 43.3,65.7
.talk 253
..accept 60
step
goto 43.8,65.8
.talk 295
..turnin 2158
step
goto 43.8,65.8
.talk 295
.home Goldshire
step
goto 41.7,65.5
.talk 514
..accept 26393
only Human
step
goto 41.7,64.6
.talk 42983
..turnin 26393
..accept 26394
only Human
step
goto 41.7,64.6
.talk 42983
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only Human
step
goto Stormwind City,77.2,61.0
.talk Osric Strang
..turnin 26394
..accept 26395
only Human
step
goto 70.9,72.5
.talk 352
..turnin 26395
..accept 26396
only Human
step
goto 70.9,72.5
.talk 352
.' Fly to Goldshire, Elwynn |goto Elwynn Forest,41.8,64.6,0.5 |noway |c
only Human
step
goto Elwynn Forest,41.7,65.5
.talk 514
..turnin 26396
only Human
step
goto 39.0,82.4 |n
.' Enter the mine |goto 39.0,82.4,0.5 |noway |c
step
goto 39.9,80.0
.' Go to this spot inside the mine
.' Explore the Fargodeep Mine |q 62/1
step
goto 38.1,82.9
.from Kobold Tunneler##475+, Kobold Miner##40+
.get 10 Gold Dust |q 47/1
.get 8 Large Candle |q 60/1
step
'Hearth to Goldshire |goto 43.8,65.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,65.7
.talk 253
..turnin 60
..accept 26150
step
goto 42.1,65.9
.talk 240
..turnin 62
..accept 76
step
goto 42.1,67.3
.talk 241
..turnin 47
step
goto 43.1,89.6
.talk 251
..turnin 26150
..accept 106
step
goto 34.5,84.3
.talk 246
..accept 85
step
goto 29.8,86.0
.talk 252
..turnin 106
..accept 111
step
goto 34.9,83.9
.talk 248
..turnin 111
..accept 107
step
goto 43.1,85.7
.talk 247
..turnin 85
..accept 86
step
goto 42.1,86.6
.from Stonetusk Boar##113+
.get 4 Chunk of Boar Meat |q 86/1
step
goto 34.5,84.3
.talk 246
..turnin 86
..accept 84
step
goto 43.1,85.7
.talk 247
..turnin 84
..accept 87
step
goto 40.1,80.6
.from Goldtooth##327
.get Bernice's Necklace |q 87/1
step
goto 34.5,84.3
.talk 246
..turnin 87
step
goto 34.7,84.5
.talk 244
..accept 88
step
goto 33.0,84.7
.from Princess##330
.get Brass Collar |q 88/1
step
goto 34.7,84.5
.talk 244
..turnin 88
step
goto 42.1,67.3
.talk 241
..accept 40
step
goto 42.1,65.9
.talk 240
..turnin 40
..accept 35
step
goto 43.3,65.7
.talk 253
..turnin 107
..accept 112
step
goto 49.5,66.3
.from Murloc##285+, Murloc Streamrunner##735+
.get 4 Crystal Kelp Frond |q 112/1
step
goto 43.3,65.7
.talk 253
..turnin 112
..accept 114
step
goto 43.1,89.6
.talk 251
..turnin 114
step
goto 42.1,65.9
.talk 240
..' Tell him you wish to ride the Stormwind charger
.' Ride the horse to the east side of Elwynn Forest |goto 73.9,72.5,0.5 |noway |c
step
goto 74.0,72.2
.talk 261
..turnin 35
..accept 37
..accept 52
step
goto 74.0,72.3
.' Click the Bounty Board |tip It's a wooden sign to the left of the wooden bridge.
..accept 46
..accept 26152
step
goto 79.5,68.7
.talk 278
..accept 83
step
goto 78.7,67.1
.kill James Clark |q 26152/1
.collect Gold Pickup Schedule##1307 |n
.' Click the Gold Pickup Schedule in your bags |use Gold Pickup Schedule##1307
..accept 123
step
goto 81.4,66.1
.talk 10616
..accept 5545
step
goto 81.8,66.6
.talk 43000
.fpath Eastvale Logging Camp
step
goto 81.8,66.0
.talk 42256
..turnin 26152
..turnin 123
..accept 147
step
goto 72.7,60.3
.' Click the Half-Eaten body |tip On the ground next to some big rocks by the river and a tree.
..turnin 37
..accept 45
step
goto 75.1,56.3
.from Rogue Wizard##474+
.get 6 Linen Scrap |q 83/1
step
goto 79.8,55.5
.' Click Rolf's Corpse |tip On the ground next to a murloc hut.
..turnin 45
..accept 71
step
goto 77.6,59.0
.from Murloc Lurker##732+, Murloc Forager##46+
.get 8 Torn Murloc Fin |q 46/1
step
goto 80.9,61.5
.kill 8 Prowler or Forest Wolf |q 52/1
.kill 5 Young Forest Bear |q 52/2
.' Click Bundles of Wood |tip They look like little stacks of 3 firewood at the base of trees in this area.
.get 8 Bundle of Wood |q 5545/1
step
goto 81.4,66.1
.talk 10616
..turnin 5545
step
goto 79.5,68.7
.talk 278
..turnin 83
step
goto 74.0,72.2
.talk 261
..turnin 71
..accept 59
..turnin 52
..turnin 46
step
goto 71.0,80.8
.from Morgan the Collector##473
.get The Collector's Ring |q 147/1
step
goto 79.5,68.7
.talk 278
..turnin 59
step
goto 81.8,66.0
.talk 42256
..turnin 147
..accept 26378
step
goto 61.7,53.9 |n
.' Enter the Jasperlode Mines |goto 61.7,53.9 |noway |c
step
goto 60.4,49.8
.' Go to this spot inside the mine
.' Explore the Jasperlode Mine |q 76/1
step
'Hearth to Goldshire |goto 43.8,65.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 42.1,65.9
.talk 240
..turnin 76
..accept 239
step
goto 24.6,78.2
.' Click the Wanted Poster |tip It's a sign next to the road.
..accept 176
step
goto 24.2,74.5
.talk 963
..turnin 239
..accept 11
step
goto 24.9,95.0
.from Hogger##448 |tip Don't worry that he's elite, he is pretty easy to kill.
.' Deal with "The Hogger Situation" |q 176/1
step
goto 24.8,95.3
.' Click the Westfall Deed |tip It's a rolled up scroll in the hand of a dead body on the ground.
..accept 184
step
goto 25.2,92.9
.from Riverpaw Outrunner##478+, Riverpaw Runt##97+
.get 8 Painted Gnoll Armband |q 11/1
step
goto 42.1,65.9
.talk 240
..turnin 176
step
goto 24.2,74.5
.talk 963
..turnin 11
step
goto Westfall,60.1,19.3
.talk 42308
..turnin 26378
..accept 26209
..turnin 184
step
goto 59.0,18.2
.talk 42384
.talk 42391
..' Offer them a couple copper and ask them who killed the Furbrowls
.' Obtain Clue #1 |q 26209/1
.' Obtain Clue #2 |q 26209/2
.' Obtain Clue #3 |q 26209/3
.' Obtain Clue #4 |q 26209/4
step
goto 60.1,19.3
.talk 42308
..turnin 26209
..accept 26213
..accept 26214
step
goto 56.5,15.4
.from Riverpaw Gnoll##725+, Riverpaw Scout##500+
.get Riverpaw Gnoll Clue |q 26213/1
step
goto 54.5,11.6
.from Murloc Raider##515+, Murloc Coastrunner##126+
.get Murloc Clue |q 26214/1
step
goto 60.1,19.3
.talk 42308
..turnin 26213
..turnin 26214
..accept 26215
step
goto 49.8,18.7
.talk 42406
.fpath Furlbrow's Pumpkin Farm
step
goto 49.6,19.4
.talk 42405
..turnin 26215
..accept 26228
step
goto 49.6,19.6
.talk 42498
..accept 26229
step
goto 49.5,19.1
.talk 42497
..accept 26230
step
goto 50.4,21.1
.from Coyote##834+
.get 6 Coyote Tail |q 26230/1
.' Click Fresh Dirt |tip They look like mounds of dirt on the ground around this area.
.get 5 Fresh Dirt |q 26230/2
step
goto 44.5,25.0 |n
.' Enter the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 46.3,19.0
.' Use Two-Shoed Lou's Old House at the back of Jangolode Mine |use Two-Shoed Lou's Old House##57761
.' Learn about Livin' the Life |q 26228/1
step
goto 44.5,25.0 |n
.' Leave the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 44.8,25.8
.kill 12 Kobold Digger |q 26229/1
step
goto 49.6,19.6
.talk 42498
..turnin 26229
step
goto 49.6,19.4
.talk 42405
..turnin 26228
..accept 26232
step
goto 49.5,19.1
.talk 42497
..turnin 26230
step
goto 48.2,19.6
.' Stand next to the 4 Thugs behind the barn
.from Thug##42387+
.' Eavesdrop on Thugs |q 26232/1
step
goto 49.7,19.5
.talk 42558
..turnin 26232
..accept 26236
step
goto 56.0,31.2
.talk 233
..turnin 26236
..accept 26237
step
goto 56.4,30.5
.talk 235
..accept 26241
step
goto 50.6,35.7
.from Goretusk##157+, Young Goretusk##454+
.get 6 Goretusk Flank |q 26241/2
.from Fleshripper##1109+ |tip They are spread out and rare around this area, so you will need to search a little for them.
.get 6 Stringy Fleshripper Meat |q 26241/3
.' You can find more Fleshrippers around [59.1,32.5]
step
goto 55.5,32.0
.kill 10 Harvest Watcher##114+ |q 26237/1
.collect Harvest Watcher Heart##57935 |n
.' Click the Harvest Watcher Heart in your bags |use Harvest Watcher Heart##57935
..accept 26252
.' Click Okra |tip They look like big blue and green bushes on the ground around this area.
.get 6 Okra |q 26241/1
step
goto 56.0,31.2
.talk 233
..turnin 26237
..turnin 26252
..accept 26257
step
goto 56.4,30.5
.talk 235
..turnin 26241
step
goto 56.0,31.2
.talk 233
..accept 26270
step
goto 56.4,30.5
.talk 235
..turnin 26270
..accept 26266
step
goto 49.8,34.4
.' Use Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
.' Enable an Overloaded Harvest Golem |q 26257/1
step
goto 47.5,35.0
.' Use the abilities on your action bar to do the following:
.kill 25 Energized Harvest Reaper |q 26257/2
step
goto 50.1,33.8 |n
.' Click the red arrow on your hotbar to stop controlling the Harvest Watcher |outvehicle |q 26257
step
goto 56.0,31.2
.talk 233
..turnin 26257
step
goto 56.6,49.4
.talk 523
.fpath Sentinel Hill
step
goto 57.0,47.1
.talk 42575
..turnin 26266
..accept 26271
step
goto 56.3,47.5
.talk 234
..accept 26286
step
goto 56.5,47.6
.talk 821
..accept 26287
step
goto 52.9,53.7
.talk 8931
.home Sentinel Hill
step
goto 53.9,50.0
.from Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
.' Slay 12 attacking Riverpaw Gnolls |q 26287/1
.get Gnoll Attack Orders |q 26286/1
step
goto 56.9,57.6
.' Use Westfall Stew next to Homeless Stormwind Citizens, West Plains Drifters, and Transients |use Westfall Stew##57991
.' Feed 20 Westfall Homeless |q 26271/1
.' You can find more at [58.2,40.2]
step
goto 56.3,47.5
.talk 234
..turnin 26286
step
goto 56.5,47.6
.talk 821
..turnin 26287
..accept 26288
step
goto 57.0,47.1
.talk 42575
..turnin 26271
step
goto 56.3,47.5
.talk 234
..accept 26289
step
goto 62.3,76.4
.kill Jango Spothide  |q 26288/3
step
goto 63.4,76.2
.kill 5 Riverpaw Mystic |q 26288/1
.kill 5 Riverpaw Taskmaster |q 26288/2
step
goto 68.3,70.4
.talk 7024
..turnin 26289
..accept 26290
step
goto 70.5,74.5
.' You can safely attack the elite mobs, Agent Kearnen will kill them for you.
.' Use your Potion of Shrouding inside the tower |use Potion of Shrouding##58112
.' Become Invisible |havebuff Interface\Icons\Ability_Mage_Invisibility |q 26290
step
goto 70.6,74.1
.' Go to the top of the tower
.' Reveal Helix's Secret |q 26290/1
step
goto 68.3,70.4
.talk 7024
..turnin 26290
..accept 26291
step
'Hearth to Sentinel Hill |goto 52.9,53.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.3,47.5
.talk 234
..turnin 26291
..accept 26292
step
goto 56.5,47.6
.talk 821
..turnin 26288
step
goto 56.4,47.3
.talk 878
..accept 26371
step
goto 42.1,64.1
.talk 42425
..turnin 26292
..accept 26295
step
goto 42.1,63.3
.talk 42426
.fpath Moonbrook
step
goto 41.5,67.5
.from Moonbrook Thug##42677
.collect Red Bandana##58117 |n
.' Click the Red Bandana in your bags |use Red Bandana##58117
..accept 26296
step
goto 41.6,66.4
.' Click the Informational Pamphlet |tip It looks like a small brown book sitting on a busted barrel.
.get Informational Pamphlet |q 26295/1
step
goto 41.3,66.5
.' Click the Mysterious Propaganda |tip It looks like a crumbled scroll nailed to the wall.
.get Mysterious Propaganda |q 26295/4
step
goto 43.3,69.9
.' Click The Moonbrook Times |tip It looks like a long scroll laying flat on the ground next to the big fountain in the middle of Moonbrook.
.get Issue of the Moonbrook Times |q 26295/2
step
goto 43.5,66.6
.' Click the Secret Journal |tip It looks like a small blue book laying on the floor, upstairs in the very back room, in the building that looks like an inn.
.get Secret Journal |q 26295/3
step
goto 42.5,69.5
.from Moonbrook Thug##42677+ |tip They are found inside the buildings around Moonbrook.
.get 6 Red Bandana |q 26296/1
step
goto 42.1,64.1
.talk 42425
..turnin 26295
..accept 26297
..turnin 26296
step
goto 43.6,69.5
.' Stand in the crowd
.' Gather information from the Moonbrook Rally |q 26297/1
step
goto 42.1,64.1
.talk 42425
..turnin 26297
..accept 26319
step
goto 43.0,65.0
.talk 42651
..turnin 26319
..accept 26320
step
goto Westfall,38.3,77.5 |n
.' Enter the Defias Hideout and follow the trail of homeless people to this spot
.' Go through the swirling portal into the Deadmines
.' Skip to the next step in the guide
step
'Inside the Deadmines, right at the entrance, do the following:
.' Use your Incense Burner |use Incense Burner##58147
.' Uncover a vision of the past |q 26320/1
step
'Go back through the dungeon portal out of the Deadmines dungeon
.' Skip to the next step in the guide
step
goto Westfall,42.6,71.7
.' Follow the trail of homeless people to leave The Deadmines
.' Go outside to Westfall |goto Westfall |noway |c
step
goto 30.5,85.6
.talk 392
..turnin 26371
..accept 26348
..accept 26347
..accept 26349
step
goto 32.8,82.6
.from Old Murk-Eye##391 |tip He's a gray murloc that walks along this beach, so you may need to search for him.
.get Scale of Old Murk-Eye |q 26349/1
..kill 7 Murloc Tidehunter |q 26348/1
..kill 7 Murloc Oracle |q 26348/2
.collect Captain Sanders' Treasure Map##1357 |n
.' Click Captain Sanders' Treasure Map in your bags |use Captain Sanders' Treasure Map##1357
..accept 26353
.' You can find more Murloc Tidehunters and Murloc Oracles at [28.9,73.9]
step
goto 25.9,47.8
.' Click the Captain's Footlocker |tip It's a rectangle wooden box half-buried in the sand.
..turnin 26353
..accept 26354
step
goto 40.5,47.8
.' Click the Broken Barrel |tip It looks like a busted barrel sitting on the ground.
..turnin 26354
..accept 26355
step
goto 40.2,45.8
.from Chasm Slime##42669+
.get 5 Chasm Ooze |q 26347/1
step
goto 40.6,17.0
.' Click the Old Jug |tip It looks like a blue bottle sitting on the ground next to a log and a wooden windmill.
..turnin 26355
..accept 26356
step
goto 26.0,16.9
.' Click the Locked Chest |tip It looks like a brown treasure chest sitting next to a small wooden shack on this tiny island.
..turnin 26356
step
'Hearth to Sentinel Hill |goto 52.9,53.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.3,47.5
.talk 234
..turnin 26320
..accept 26322
step
goto 56.3,47.5
.' Watch the dialogue
.' Witness the Rise of the Brotherhood |q 26322/1
step
goto 56.6,49.5
.talk 523
.' Fly to Moonbrook, Westfall |goto 42.1,63.3,0.5 |noway |c
step
goto 30.5,85.6
.talk 392
..turnin 26348
..turnin 26347
..turnin 26349
step
goto 42.1,63.3
.talk 42426
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto 85.8,31.7
.talk 29611
..turnin 26322
..accept 26370
step
goto 70.9,72.5
.talk 352
.' Fly to Sentinel Hill, Westfall |goto Westfall,56.6,49.4,0.5 |noway |c
step
goto Westfall,56.4,49.6
.talk 234
..turnin 26370
..accept 26761 |only Human
step
goto 56.4,49.5
.talk 821
..accept 26365
only Human
step
goto 56.6,49.4
.talk 523
.' Fly to Eastvale Logging Camp, Elwynn |goto Elwynn Forest,81.9,66.4,0.5 |noway |c
step
'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
step
goto Redridge Mountains,16.1,64.6
.' Click the Wanted Poster |tip It looks like a wooden sign with a tan scroll in it, next to the tower entrance.
..accept 26504
step
goto 15.6,65.3
.talk 379
..accept 26506
step
goto 15.3,64.6
.talk 464
..turnin 26365
..accept 26503
step
goto 17.4,65.1
.from Tarantula##442+
.get 4 Tarantula Eye |q 26506/1
.from Dire Condor##428+ |tip You can find them resting on rocks and flying around in the sky.
.get 4 Condor Giblet |q 26506/2
step
goto 16.2,55.3
.' Click the Gnoll Battle Plan |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Battle Plans |q 26503/1
step
goto 30.6,62.7
.' Click the Gnoll Strategy Guide |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Strategy Guide |q 26503/3
step
goto 31.0,63.2
.from Great Goretusk##547
.get 4 Goretusk Kidney##58893 |q 26506/3
step
goto 28.0,74.9
.' Click the Gnoll Orders |tip It's a small scroll laying flat on top of a small barrel, next to a small tent.
.get Gnoll Orders |q 26503/2
step
goto 28.3,73.2
.from Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
.kill 15 Redridge Gnoll |q 26504/1
step
goto 15.6,65.3
.talk 379
..turnin 26506
step
goto 15.3,64.6
.talk 464
..turnin 26504
..turnin 26503
..accept 26505
step
goto 29.4,53.8
.talk 931
.fpath Lakeshire
step
goto 28.7,41.0
.talk 900
..accept 26511
step
goto 28.9,41.1
.talk 344
..turnin 26505
..accept 26510
..turnin 26761 |only Human
step
goto 26.4,41.4
.talk 6727
.home Lakeshire
step
goto 22.1,42.7
.talk 342
..accept 26509
step
goto 17.2,45.0
.from Bellygrub##345
.get Bellygrub's Tusk |q 26509/1
step
goto 22.1,42.7
.talk 342
..turnin 26509
step
goto 28.4,48.9
.talk 8965
..accept 26508
step
goto 32.1,50.3
.' Click the Glinting Mud |tip It looks like a mound of dirt on the ground underwater.  It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
.get Nida's Necklace |q 26508/1
step
goto 37.8,42.1
.' Click the Gnomecorder |tip It looks like a metal control console with some levers and a tan scroll on it, on this tiny island.
.get Gnomecorder |q 26510/1
.from Murloc Scout##578+, Murloc Flesheater##422+
.kill 10 Lake Everstill Murloc |q 26511/1
step
goto 28.3,48.9
.talk 8962
..turnin 26508
step
goto 28.7,41.0
.talk 900
..turnin 26511
step
goto 28.9,41.1
.talk 344
..turnin 26510
..accept 26512
step
goto 31.9,44.9
.talk 382
..accept 26513
step
goto 32.3,39.5
.' Go to this spot
.' Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26512
..accept 26514
step
goto 30.8,38.4
.from Redridge Basher##446+, Redridge Alpha##445+, Redridge Mystic##430+
.get 10 Redridge Gnoll Collar |q 26514/1
.' More Redridge Gnolls can be found around [22.7,33.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26514
..accept 26544
.collect Dirt-Stained Scroll##58898 |n
.' Click the Dirt-Stained Scroll in your bags |use Dirt-Stained Scroll##58898
..accept 26519
.' Click Redridge Supply Crates |tip They look like tan wooden boxes on the ground around this area.
.get 8 Redridge Supply Crate |q 26513/1
.' You can find more crates around [36.5,27.7]
step
goto 21.0,27.3 |n
.' Enter the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 20.2,26.0
.from Blackrock Overseer##43185
.get Blackrock Orc Missive |q 26544/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26544
..accept 26545
step
goto 18.0,18.6
.kill Ardo Dirtpaw |q 26519/1 |tip Follow the path in the cave to the left.  He's at the very back of the cave on top of a rock platform.
step
goto 17.9,18.6
.' Click the Ettin Control Orb |tip It looks like a green glowing orb in a metal stand with 2 wings on it, next to Ardo Dirtpaw.
..turnin 26519
..accept 26520
step
goto 21.0,27.3 |n
.' Leave the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 24.1,32.2
.' Use your Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895 |tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
.' While controlling the Subdued Canyon Ettin, go to 31.5,44.3
.' Use your Ettin Control Orb to make the Ettin pick up the Huge Boulder |use Ettin Control Orb##58895
.' Save Foreman Oslow |q 26520/1
step
goto 31.9,44.9
.talk 382
..turnin 26513
step
goto 39.5,34.3 |n
.' The path to Yowler starts here |goto 39.5,34.3,0.5 |noway |c
step
goto 26.9,21.9
.kill Yowler |q 26545/1 |tip He is a level 16 elite, so you should be able to kill him easily.
.get Blackrock Invasion Plans |q 26545/2
step
'Hearth to Lakeshire |goto 26.4,41.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.9,41.1
.talk 344
..turnin 26520
..turnin 26545
step
goto 28.9,40.9
.talk 43221
..accept 26567
step
goto 26.3,40.1
.talk 43184
..turnin 26567
..accept 26568
step
goto 28.6,40.7
.talk 43221
..turnin 26568
..accept 26571
..accept 26586
step
goto 29.7,44.5
.talk 43194
..accept 26569
step
goto 29.7,44.5
.talk 382
..accept 26570
step
goto 47.5,41.9
.talk 43270
..turnin 26586
..accept 26587
step
goto 50.4,39.9 |n
.' The path to the Blackrock Key Pouch starts here |goto 50.4,39.9,0.5 |noway |c
step
goto 49.2,38.0
.' Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs |tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
.' Click the Blackrock Key Pouch |tip It looks like a light brown bag hanging on the side of this small stump.
.get Messner's Cage Key |q 26587/1
step
goto 51.5,41.3
.from Murduck##43327
.get Keeshan's Bow |q 26571/1
.from Homurk##43329
.get Keeshan's Survial Knife |q 26571/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26571
..accept 26573
step
goto 47.5,41.9
.talk 43270
..turnin 26587
step
'Next to you:
.talk 43300
..accept 26560
step
goto 43.5,10.9
.from Utroka the Keymistress##43350
.get Jorgensen's Cage Key |q 26560/1
step
goto 38.0,16.2 |n
.' The path to Jorgensen starts here |goto 38.0,16.2,0.5 |noway |c
step
goto 33.6,11.8
.talk 43272
..turnin 26560
step
'Next to you:
.talk 43305
..accept 26561
step
goto 31.7,9.4 |n
.' Enter the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 26.0,10.5
.kill Ritualist Tarak |q 26561/1
step
goto 26.6,10.5
.' Click the Blackrock Coffer |tip It looks like a big gray metal chest sitting on the ground inside the cave.
.get Keeshan's Red Headband |q 26573/1
.get Keeshan's Jade Amulet |q 26573/2
step
goto 25.9,10.5
.talk 43274
..turnin 26561
step
'Next to you:
.talk 43303
..accept 26562
step
goto 27.7,18.1
.' Follow the path back and around inside the cave.
.kill Overlord Barbarius |q 26562/1
.get Blackrock Lever Key |q 26562/2
step
goto 27.8,17.9
.' Click the Chain Lever |tip It looks like a small lever on the ground with a tiny skull at the top of it.
.' Swim out to Danforth in middle of the pool of water at [28.3,17.0]
.talk 43275
..turnin 26562
step
'Next to you:
.talk 43302
..accept 26563
step
goto 31.7,9.4 |n
.' Leave the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 32.8,9.9
.from Blackrock Tracker##615+, Blackrock Summoner##4463+
.kill 25 Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1
.get 5 Blackrock Spyglass |q 26569/1
step
'Hearth to Lakeshire |goto 26.4,41.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.7,40.7
.talk 43221
..turnin 26573
..turnin 26563
..accept 26607
step
goto 26.3,40.1
.talk 43184
..turnin 26607
..accept 26616
step
goto 29.6,44.5
.talk 43194
..turnin 26569
step
goto 29.7,44.5
.talk 382
..turnin 26570
step
goto 34.4,46.0
.' Click Keeshan's Riverboat |tip It looks like a small wooden boat with a few people sitting in it, next to the shore.
.' Complete Keeshan's Riverboat Ride |q 26616/1
step
goto 52.9,54.6
.talk 43371
.fpath Camp Everstill
step
goto 52.5,55.4
.talk 43458
..turnin 26616
..accept 26639
step
goto 52.5,55.6
.talk 43462
..accept 26638
step
goto 52.4,55.5
.talk 43459
..accept 26637
step
goto 52.4,55.4
.talk 43461
..accept 26636
step
goto 48.9,58.4
.from Muckdweller##43532+ |tip They are underwater and found throughout the entire lake.
..get 8 Muckdweller Gland |q 26637/1
step
goto Redridge Mountains,52.4,55.5
.talk 43459
..turnin 26637
step
goto 53.1,67.8
.talk 43508
..turnin 26639
..accept 26640
step
goto 49.8,66.8
.kill 8 Blackrock Hunter |q 26638/1
.' Click Piles of Leaves |tip They look like piles of orange leaves on the ground around this area.
.get 5 Pile of Leaves |q 26636/1
.' Click Fox Poop |tip They look like dark mounds on the ground around this area.
.get 5 Fox Poop |q 26636/2
step
goto 52.5,55.6
.talk 43462
..turnin 26638
step
goto 52.5,55.4
.talk 43458
..turnin 26640
step
goto 52.4,55.4
.talk 43461
..turnin 26636
step
goto 52.5,55.4
.talk 43458
..accept 26646
step
goto 53.9,57.7
.' Use your Bravo Company Field Kit |use Bravo Company Field Kit##60384
.' Activate your Bravo Company Field Kit |havebuff Interface\Icons\INV_Misc_EngGizmos_20 |q 26646
step
'Use the Camouflage ability on your hotbar
.' Hide your party from sight |havebuff Interface\Icons\Spell_Nature_ProtectionformNature |q 26646
step
goto 69.5,76.3
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click the Blackrock Key Pouch |tip It looks like a small tan bag hanging on the wall in the back of this small cave.
.collect Blackrock Holding Pen Key##59261 |q 26646
step
goto 69.3,59.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click a Blackrock Holding Pen |tip They look like 3 huge round cages.
.' Free the Prisoners of War |q 26646/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26646
..accept 26651
step
goto 66.4,71.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability in the small room at the top of the tower
.' Plant Seaforium at the Blackrock Tower |q 26651/2
step
goto 63.8,70.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability inside this hut, next to all the Blackrock Explosive Devices
.' Plant Seaforium at the Munitions Hut |q 26651/1
step
goto 72.7,64.4 |n
.' The path up to John J. Keeshan starts here |goto 72.7,64.4,0.5 |noway |c
step
goto 77.7,65.5
.talk 43611
..turnin 26651
step
map Stormwind City
'To continue gaining reputation with the Stormwind faction:
.' You can buy a Stormwind Tabard from Captain Lancy Revshon at [Stormwind City 67.7,72.8] |tip Wear the Stormwind Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\The Exodar\\Draenei",[[
description This guide will help you to get Exalted
description reputation with the Exodar faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Draenei.
.' Skip to the next step of the guide
step
goto Azuremyst Isle,84.2,43.0
.talk 16475
..accept 9279
step
goto 80.4,45.9
.talk 16477
..turnin 9279
..accept 9280
step
goto 78.6,45.4
.from Vale Moth##16520+
.get 6 Vial of Moth Blood |q 9280/1
step
goto Azuremyst Isle,80.4,45.9
.talk 16477
..turnin 9280
..accept 9409
step
goto 80.1,48.8
.talk 16502
..turnin 9409
..accept 9283
step
goto 80.4,45.9
.talk 16477
..accept 9371
step
goto 79.1,46.5
.talk 16514
..turnin 9371
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..accept 10302
step
goto 78.4,43.5
.kill 8 Volatile Mutation |q 10302/1
step
goto 79.8,39.2
.' Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru |tip They are Draeneis that are laying on the ground around this area.  They spawn in random locations, so you may have to search for one.
.' Save a Draenei Survivor |q 9283/1
step
goto 79.1,46.5
.talk 16514
..turnin 10302
..accept 9293
step
goto 79.1,46.6
.talk 20233
..accept 9799
step
goto Azuremyst Isle,80.1,48.8
.talk 16502
..turnin 9283
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..accept 26966
.' Learn Spell: Seal of Righteousness |q 26966/3
.' Learn Spell: Judgement |q 26966/1
only Draenei Paladin
step
goto 79.9,46.3
.' Cast Seal of Righteousness, then use Judgement on the Training Dummy
.' Practice Judgement 1 time |q 26966/2
only Draenei Paladin
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..turnin 26966
only Draenei Paladin
step
goto 79.9,49.7
.talk 16499
..accept 26963
.' Learn Steady Shot |q 26963/2
only Draenei Hunter
step
goto 79.8,45.8
.' Use your Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 26963/1
only Draenei Hunter
step
goto 79.9,49.7
.talk 16499
..turnin 26963
only Draenei Hunter
step
goto 79.6,49.5
.talk 16503
..accept 26958
.' Learn Charge |q 26958/2
only Draenei Warrior
step
goto 79.7,45.9
.' Practice using Charge on the Target Dummy
.' Practice Charge 1 time |q 26958/1
only Draenei Warrior
step
goto 79.6,49.5
.talk 16503
..turnin 26958
only Draenei Warrior
step
goto 79.4,51.2
.talk 17071
..accept 9305
step
goto 79.5,51.6
.talk 16535
..accept 9303
step
goto Azuremyst Isle,74.9,50.4
.from Mutated Root Lasher##16517+
.get 10 Lasher Sample |q 9293/1
.' Click the Corrupted Flowers |tip The Corrupted Flowers are tall red flowers around this area.
.get 3 Corrupted Flower |q 9799/1
step
goto 79.1,46.6
.talk 20233
..turnin 9799
step
goto 79.1,46.5
.talk 16514
..turnin 9293
..accept 9294
step
goto Azuremyst Isle,77.3,58.7
.' Click the Irradiated Power Crystal |tip It's a huge purple crystal sitting in the lake.
.' Disperse the Neutralizing Agent |q 9294/1
step
goto Azuremyst Isle,78.4,60.4
.' Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
.' Inoculate 6 Nestlewood Owlkins |q 9303/1
step
goto Azuremyst Isle,84.7,65.6
.' Go through the tunnel into the small clearing
.' Click the Emitter Spare Parts |tip They look like purple crystal guns sitting on the ground.
.get 4 Emitter Spare Part |q 9305/1
step
'Hearth to Ammen Vale |goto Azuremyst Isle,84.3,43.0,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..turnin 9294
step
goto 79.4,51.2
.talk 17071
..turnin 9305
step
goto 79.5,51.6
.talk 16535
..turnin 9303
..accept 9309
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 9309
..accept 10303
step
goto Azuremyst Isle,71.3,60.7
.kill 10 Blood Elf Scout |q 10303/1
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 10303
..accept 9311
step
goto Azuremyst Isle,69.3,65.7
.kill Surveyor Candress |q 9311/1
.collect Blood Elf Plans##24414 |n
.' Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
..accept 9798
step
goto 79.5,51.6
.talk 16535
..turnin 9311
..turnin 9798
..accept 9312
step
goto 79.4,51.2
.talk 17071
..turnin 9312
..accept 9313
step
goto 68.3,53.9 |n
.' The path through the mountains starts here |goto 68.3,53.9,0.5 |noway |c
step
goto Azuremyst Isle,64.5,54
.talk 16554
..accept 9314
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..accept 9452
step
goto Azuremyst Isle,61.9,51.6
.' Use your Draenei Fishing Net next to Schools of Red Snapper |use Draenei Fishing Net##23654 |tip They look like little round schools of fish in the water.
.get 10 Red Snapper |q 9452/1
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..turnin 9452
..accept 9453
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9453
..accept 9454
step
goto Azuremyst Isle,48.4,51.8
.talk 17214
..accept 9463
step
goto Azuremyst Isle,48.7,50.3
.talk 16551
..turnin 9313
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9314
.home Azure Watch
step
goto 49.7,49.1
.talk 43991
.fpath Azure Watch
step
goto Azuremyst Isle,50.3,56.6
.from Moongraze Stag##17200+
.get 6 Moongraze Stag Tenderloin|q 9454/1
.from Root Trapper##17196+
.get 8 Root Trapper Vine|q 9463/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..accept 9506
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..accept 9512
step
goto Azuremyst Isle,47.6,73
.from Skittering Crawler##17216+
.get 6 Skittering Crawler Meat|q 9512/1
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..turnin 9512
step
goto Azuremyst Isle,47,70.2
.talk 17241
..accept 9513
step
goto Azuremyst Isle,47.2,70
.talk 17242
..accept 9523
step
goto Azuremyst Isle,58.6,66.4
.' Click the Nautical Map |tip It's sitting on a box under a green canopy.
.get Nautical Map##23739 |q 9506/2
step
goto Azuremyst Isle,59.6,67.6
.' Click the Nautical Compass |tip It's sitting on a box under the blue canopy with a green stripe on it
.get Nautical Compass##23738 |q 9506/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9506
..accept 9530
step
goto Azuremyst Isle,45.9,65.7
.' Click a Hollowed Out Tree |tip They look like tall, skinny tree stumps around this area.
.get Hollowed Out Tree |q 9530/1
.' Click Piles of Leaves |tip They look like small piles of purple leaves on the ground around this area.
.get 5 Pile of Leaves |q 9530/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9530
..accept 9531
step
goto Azuremyst Isle,36.1,77
.' Click Ancient Relics |tip They look like white glowing orbs on small stands around this area.
.get 8 Ancient Relic |q 9523/1
.kill 5 Wrathscale Myrmidon |q 9513/1
.kill 5 Wrathscale Naga |q 9513/2
.kill 5 Wrathscale Siren |q 9513/3
.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
.collect Rune Covered Tablet##23759 |n
.' Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
..accept 9514
step
goto Azuremyst Isle,18.5,84.3
.' Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |tip It's a red flag on a metal pole on the beach.
.' Watch the conversation
.' Uncover the Traitor |q 9531/1
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.4,51.8
.talk 17214
..turnin 9463
step
goto 48.4,51.5
.talk 17215
..accept 9473
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9454
..accept 10324
step
goto Azuremyst Isle,50.6,46.2
.from Moongraze Buck##17201+
.get 6 Moongraze Buck Hide |q 10324/1
.from Infected Nightstalker Runt##17202+
.collect Faintly Glowing Crystal##23678 |n
.' Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
..accept 9455
step
goto Azuremyst Isle,50.4,37.1
.' Click Azure Snapdragons |tip They are tall flowers with big bulbs that puff smoke at the base of trees.
.get 5 Azure Snapdragon Bulb |q 9473/1
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 10324
step
goto Azuremyst Isle,48.4,51.8
.talk 17215
..turnin 9473
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9455
..accept 9456
step
goto Azuremyst Isle,49,51.1
.talk 17488
..accept 10428
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..accept 9603
step
goto 49.7,49.1
.talk 43991
..turnin 9603
..accept 9604
step
goto 49.7,49.1
.talk 43991
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto 57.0,50.1
.talk 16768
..turnin 9604
..accept 9605
step
goto 54.5,36.3
.talk 17555
..turnin 9605
..accept 9606
step
goto 54.5,36.3
.talk 17555
.' Fly to Azure Watch, Azuremyst Isle |goto Azuremyst Isle,49.6,49.2,0.5 |noway |c
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9606
step
goto Azuremyst Isle,45.7,43.9
.kill 8 Infected Nightstalker Runt|q 9456/1
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9456
step
goto 47.0,70.2
.talk 17240
..turnin 9531
..accept 9537
step
goto 47.1,70.3
.talk 17241
..turnin 9513
..turnin 9514
step
goto Azuremyst Isle,47.2,70
.talk 17242
..turnin 9523
step
goto 47.1,70.3
.talk 17241
..accept 9515
step
goto Azuremyst Isle,48.2,72.5
.talk 17243
..' Tell him it's over
.from Engineer "Spark" Overgrind##17243
.get Traitor's Communication |q 9537/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9537
..accept 9602
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9602
step
goto Azuremyst Isle,49.40,51.0
.talk 17232
..accept 9538
.' Click the Stillpine Furbolg Language Primer in your bags |use Stillpine Furbolg Language Primer##23818
.' Read the Stillpine Furbolg Language Primer |q 9538/1
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..turnin 9538
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..accept 9539
step
goto 55.2,41.7
.' Follow the ghost furbolg as he runs up the hill
.' Click the Totem of Coo
..turnin 9539
..accept 9540
step
goto 55.6,41.6
.' Follow the ghost furbolg to the edge of the cliff
.' He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540
step
goto Azuremyst Isle,64.5,39.8
.' Click the Totem of Tikti
..turnin 9540
..accept 9541
step
goto 63.8,40.2
.' Follow the ghost furbolg to the river
.' He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541
step
goto Azuremyst Isle,63,67.9
.' Click the Totem of Yor underwater
..turnin 9541
..accept 9542
step
goto 61.0,69.5
.' Follow the ghost furbolg out of the water
.' He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542
step
goto Azuremyst Isle,28.1,62.4
.' Follow the panther as he runs
.' Click the Totem of Vark
..turnin 9542
..accept 9544
step
goto Azuremyst Isle,28.5,66.4
.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
.collect Bristlelimb Key##23801 |n
.' Click Bristlelimb Cages |tip They look like yellow cages around this area.
.' Free 8 Stillpine Captives |q 9544/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Enter the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,25.2,74.2
.' Follow the path to the bottom of the cave
.kill Warlord Sriss'tiz |q 9515/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Leave the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 10428
..accept 9527
step
goto Azuremyst Isle,14.8,92
.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
.get Remains of Cowlen's Family |q 9527/1
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 9527
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,49.41,51.0
.talk 17114
..turnin 9544
..accept 9559
step
goto Azuremyst Isle,47,70.2
.talk 17241
..turnin 9515
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..accept 9562
step
goto 44.8,23.9
.talk 17442
..accept 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9559
step
goto 53.1,20.8
.from Ravager Specimen##17199+
.get 8 Ravager Hide |q 9560/1
step
goto Azuremyst Isle,33.8,25.7
.' Follow the road around
.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
.' Click Stillpine Grain |tip They look like bags near the murloc huts along the beach.
.get 5 Stillpine Grain |q 9562/1
.from Murgurgala##17475
.collect Gurf's Dignity##23850 |n
.' Click Gurf's Dignity in your bags |use Gurf's Dignity##23850
..accept 9564
step
goto 34.0,26.5
.from Blood Elf Bandit##17591+
..collect Blood Elf Communication##23910
.' Click the Blood Elf Communication in your bags |use Blood Elf Communication##23910
..accept 9616
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..turnin 9562
..turnin 9564
step
goto 44.8,23.9
.talk 17442
..turnin 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9565
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..accept 9573
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,47.4,14.1
.' Go to the upper level of the cave
.kill Chieftain Oomooroo |q 9573/1
step
goto Azuremyst Isle,50.5,11.5
.' Click the Blood Crystal |tip It's a huge red crystal on a little dirt island in the water.
..turnin 9565
..accept 9566
step
goto Azuremyst Isle,47.4,16.0
.kill 9 Crazed Wildkin |q 9573/2
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9566
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..turnin 9573
step
goto 47.0,22.3
.talk 17443
..accept 9570
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 49.9,13.0
.from The Kurken##17447
..get The Kurken's Hide |q 9570/1
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 47.0,22.3
.talk 17443
..turnin 9570
..accept 9571
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9622
..turnin 9616
step
goto Azuremyst Isle,44.8,23.9
.talk 17442
..turnin 9571
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9622
..accept 9623
step
goto 49.7,49.1
.talk 43991
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto Azuremyst Isle,35.1,43.4
.' Follow the ramp up and outside The Exodar
.talk 17584
..turnin 9623
..accept 9625
step
goto The Exodar,54.5,36.3
.talk 17555
.' Fly to Azure Watch, Azuremyst Isle |goto Azuremyst Isle,49.6,49.2,0.5 |noway |c
step
'Go North to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,63.0,87.9
.talk 17586
..turnin 9625
..accept 9634
step
goto 63.0,87.5
.talk 17649
..accept 9663
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
.' Warn High Chief Stillpine |q 9663/1
step
goto 47.1,50.6
.talk 17116
.' Warn Exarch Menelaous |q 9663/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
.' Warn Admiral Odesyus |q 9663/3
step
'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,63.0,87.5
.talk 17649
..turnin 9663
..accept 9666
step
goto 63.4,88.8
.talk 17599
..accept 9624
step
goto 57.4,89.8
.kill 10 Bloodmyst Hatchling |q 9634/1
.' Click Sand Pears |tip They look like light brown pears at the base of trees around this area.
.get 10 Sand Pear |q 9624/1
step
goto 63.0,87.9
.talk 17586
..turnin 9634
step
goto 63.4,88.8
.talk 17599
..turnin 9624
step
goto 68.3,81.1
.talk 17682
..accept 9667
step
goto 64.5,77.7
.' Kill furbolgs in this camp until High Chief Bristlelimb appears
.from High Chief Bristlelimb##17702
.collect The High Chief's Key##24099 |q 9667
step
goto 68.8,68.1
.kill Lord Xiz |q 9666/2
.' Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
.' Declare your Power |q 9666/1
step
goto 68.2,81.1
.' Click Princess Stillpine's Cage
.' Save Princess Stillpine |q 9667/1
step
goto 63.0,87.5
.talk 17649
..turnin 9666
..accept 9668
step
goto 55.2,56.0
.talk 18803
..turnin 9667
step
goto 55.2,59.1
.' Click the Wanted Poster
..accept 9646
step
goto 55.9,59.8
.talk 17553
.home Blood Watch
step
goto 53.3,57.8
.talk 17434
..accept 9629
step
goto 56.4,56.8
.talk 17663
..accept 9648
step
goto 57.7,53.9
.talk 17554
.fpath Bloodmyst Isle
step
goto 52.7,53.2
.talk 17658
..turnin 9668
..accept 9693
step
goto 52.6,53.2
.talk 17423
..accept 9581
step
goto 55.4,55.3
.talk 17684
..turnin 9693
..accept 9694
step
goto 62.3,53.0
.' Click a Blood Mushroom |tip They can be found at the base of trees in this area.
.get Blood Mushroom |q 9648/2
step
goto 59.7,71.0
.from Stinkhorn Striker##17673
.get Aquatic Stinkhorn |q 9648/1
step
goto 60.7,42.0
.' Click a Ruinous Polyspore
.get Ruinous Polyspore |q 9648/3
step
goto 58.1,83.3
.' Use the Crystal Mining Pick on Impact Site Crystal|use Crystal Mining Pick##23875
.get Impact Site Crystal Sample##23878 |q 9581/1
step
goto 47.8,94.4
.' Use the Murloc Tagger on Blacksilt Scout|use Murloc Tagger##23995
.' Tag 6 Blacksilt Scouts |q 9629/1
step
goto 44.4,82.4
.' Click a Fel Cone Fungus
.get Fel Cone Fungus |q 9648/4
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 53.3,57.8
.talk 17434
..turnin 9629
..accept 9574
step
goto 56.4,56.8
.talk 17663
..turnin 9648
step
goto 52.6,53.2
.talk 17423
..turnin 9581
..accept 9620
step
goto 55.4,55.3
.talk 17684
..accept 9641
step
goto 55.1,58.0
.talk 17433
..accept 9567
step
goto 49.5,47.4
.kill 10 Sunhawk Spy |q 9694/1
step
goto 55.4,55.3
.talk 17684
..turnin 9694
step
goto 61.3,48.4
.' Click the Draenei Cartographer lying on the ground
..turnin 9620
..accept 9628
step
goto 61.6,43.6
.from Wrathscale Marauder##17334, Wrathscale Sorceress##17336
.get Survey Data Crystal |q 9628/1
step
goto 36.4,74.6
.from Corrupted Treant##17352
.get 6 Crystallized Bark |q 9574/1
step
goto 36.5,71.5
.' Click the Nazzivus Monument Glyphs
.get Nazzivus Monument Glyph##23859 |q 9567/1
.from Tzerak##17528
.collect Tzerak's Armor Plate##23900 |n
..accept 9594
step
goto 37.7,76.7
.kill 8 Nazzivus Satyr |q 9594/1
.kill 8 Nazzivus Felsworn |q 9594/2
.get 10 Irradiated Crystal Shard |q 9641/1
step
'Hearth to Blood Watch |goto 55.8,59.8 |use Hearthstone##6948 |noway |c
step
goto 55.1,58.0
.talk 17433
..turnin 9594
..turnin 9567
..accept 9569
step
goto 53.2,57.8
.talk 17434
..turnin 9629
..turnin 9574
step
goto 55.9,57.0
.talk 17642
..accept 9643
..accept 9580
step
goto 55.4,55.3
.talk 17684
..turnin 9641
..accept 9779
step
goto 56.3,54.2
.talk 18804
..accept 10063
step
goto 52.6,53.2
.talk 17423
..turnin 9628
..accept 9584
step
goto 48.8,45.9
.from Sunhawk Spy##17604+
.get Sunhawk Missive##24399 |q 9779/1
step
goto 45.7,47.7
.' Use the Crystal Mining Pick on Altered Bloodmyst Crystal|use Crystal Mining Pick##23876
.get Altered Crystal Sample##23879 |q 9584/1
step
goto 46.6,35.2
.from Elder Brown Bear##17348
.get 8 Elder Brown Bear Flank |q 9580/1
.from Mutated Constrictor##17344
.get 6 Thorny Constrictor Vine |q 9643/1
.' More can be found at [46.6,35.2]
step
goto 55.4,55.3
.talk 17684
..turnin 9779
..accept 9696
step
goto 55.9,57.0
.talk 17642
..turnin 9643
..turnin 9580
..accept 9647
step
goto 54.4,54.5
.talk 17825
..turnin 9696
..accept 9698
step
goto 52.6,53.2
.talk 17423
..turnin 9584
..accept 9585
step
goto 44.5,50.4
.kill 10 Royal Blue Flutterer |q 9647/1
.' More can be found:
.' Around [47.3,32.2]
.' Around [44.6,38.0]
.' Around [44.9,56.0]
step
goto 42.1,21.2
.talk 17421
..turnin 10063
..accept 9548
..accept 9549
step
goto 40.4,20.1
.collect Clopper's Equipment##23830
.' Copper's Equipment spawns around the murloc buildings.
step
goto 38.7,21.2
.from Blacksilt Seer##17330+
.get 3 Crude Murloc Idol |q 9549/1
.from Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+,
.get 6 Crude Murloc Knife |q 9549/2
step
goto 37.1,30.3
.from Deathclaw##17661
.get Deathclaw's Paw##24025 |q 9646/1
step
goto 42.1,21.2
.talk 17421
..turnin 9548
..turnin 9549
.' Click the Weathered Teasure Map|use Weathered Treasure Map##23837
..accept 9550
step
goto 38.2,37.4
.kill 5 Axxarien Shadowstalker |q 9569/2
.kill 5 Axxarien Helcaller |q 9569/3
.' Click the Corrupted Crystals around Axxarien
.get 5 Corrupted Crystal |q 9569/4
step
goto 41.9,29.5
.kill Zevrax##17494 |q 9569/1
step
goto 41.3,30.9
'Use the Crystal Mining Pick on the Axxarien Crystal|use Crystal Mining Pick##23877
.get Axxarien Crystal Sample##23880 |q 9585/1
step
goto 61.2,41.9
.' Click Battered Ancient Book
..turnin 9550
..accept 9557
step
goto 54.7,53.9
.talk 17424
..turnin 9557
..accept 9561
step
goto 52.6,53.2
.talk Harbinger Mikolaas
..turnin 9646
..turnin 9585
step
goto 56.4,56.8
.talk 17663
..accept 9649
step
goto 55.9,57.0
.talk 17642
..turnin 9647
step
goto 56.0,56.5
.talk 17703 |tip He patrols around camp.
..accept 9671 |instant
step
goto 55.1,58.0
.talk 17433
..turnin 9569
step
goto 55.2,59.2
'Go to your mailbox and retrieve the letter from Admiral Odesyus
.collect A Letter from the Admiral##24132 |n
'Click the Leter from the Admiral in your bags |use A Letter from the Admiral##24132
..accept 9672
step
goto 53.3,57.7
.talk 17434
..accept 9578
step
goto 61.1,49.7
'Click the Mound of Dirt
..turnin 9561
step
goto 74.2,33.5
.talk 17674
.' He Patrols along the bottom of the island
..accept 9687
step
goto 56.8,34.0
'Click the Dragon Bones around Ragefeather Ridge
.get 8 Dragon Bone |q 9687/1
step
goto 74.2,33.5
.talk 17674
..turnin 9687
..accept 9688
step
goto 75.4,29.6
.kill 5 Veridian Whelp |q 9688/1
.kill 5 Veridian Broodling |q 9688/2
step
goto 74.2,33.5
.talk 17674
..turnin 9688
step
goto 75.7,28.5
'Click Ysera's Tears around Wyrmscar Island
.get 2 Ysera's Tear##24049 |q 9649/1
step
goto 79.2,22.6
.talk 17712
..turnin 9672
..accept 9674
step
goto 82.4,26.2
.kill 10 Bloodcursed Naga |q 9674/1
step
goto 79.1,22.6
.talk 17712
..turnin 9674
..accept 9682
step
goto 85.7,14.3
.from Bloodcursed Voyager##17714
.get 4 Bloodcursed Soul |q 9682/1
step
goto 79.1,22.6
.talk 17712
..turnin 9682
..accept 9683
step
goto 85.9,54.3
'Click the Statue of Queen Azshara
.kill Atoph the Bloodcursed |q 9683/1
step
goto 79.1,22.6
.talk 17712
..turnin 9683
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 56.4,56.8
.talk 17663
..turnin 9649
step
goto 37.5,61.2
'Click Galaen's Corpse
..turnin 9578
..accept 9579
'Click Galaen's Journal
..accept 9706
step
goto 39.6,58.9
.from Sunhawk Reclaimer##17606
.get Galaen's Amulet |q 9579/1
.' The Reclaimers spawn all around the Cryo-Core
step
goto 53.3,57.7
.talk 17434
..turnin 9579
step
goto 53.3,57.0
.talk 17676
..accept 9669
step
goto 52.6,53.2
.talk 17423
..accept 10064
step
goto 55.6,55.2
.talk 17843
..turnin 9706
step
goto 30.8,46.9
.talk 17986
..accept 10067
..accept 10066
step
goto 30.2,45.9
.talk 17927
..turnin 10064
..accept 10065
step
goto 30.3,45.9
.talk 17926
..accept 9741
step
goto 31.5,55.8
.kill 8 Mutated Tangler##17346 |q 10066/1
.kill 10 Enraged Ravager##17527 |q 10065/1
.' There are more around [31.4,61.7]
step
goto 20.4,63.3
.kill 12 Void Critter |q 9741/1
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 55.5,55.4
.talk 17844
..turnin 9741
step
goto 30.8,46.9
.talk 17986
..turnin 10066
step
goto 30.3,45.9
.talk 17927
..turnin 10065
step
goto 30.7,40.3
.kill 6 Fouled Water Spirit##17358+ |q 10067/1
step
goto 30.8,46.9
.talk 17986
..turnin 10067
step
goto 24.9,34.4
.talk 17686
..accept 9670
step
goto 18.1,36.2
.kill 8 Myst Leecher |q 9669/1
.kill 8 Myst Spinner |q 9669/2
.kill Zarakh |q 9669/3
..goal 5 Expedition Researcher Freed |q 9670/1
.' There will be webbed creatures along the mountainside.
step
goto Bloodmyst Isle,24.9,34.4
.talk 17686
..turnin 9670
step
goto 53.2,57.0
.talk Achelus
..turnin 9669
step
goto 54.6,53.9
.talk 17424
..accept 9632
step
goto 57.7,53.9
.talk 17554
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto 32.9,54.4
.talk 17468
..turnin 9698
..accept 9699
step
'Go outside of the Exodar |goto Azuremyst Isle| noway |c
step
goto 24.2,54.3
.talk 17614
..turnin 9632
step
map The Exodar
'To continue gaining reputation with the Exodar faction:
.' You can buy an Exodar Tabard from Kadu at [The Exodar 69.6,61.7] |tip Wear the Exodar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Home Cities Reputation\\Darnassus\\Night Elf",[[
description This guide will help you to get Exalted
description reputation with the Darnassus faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Teldrassil,58.0,39.2
.talk 2079
..accept 28713
step
goto 57.9,40.7
.kill 6 Young Nightsaber |q 28713/1
step
goto 58.0,39.2
.talk 2079
..turnin 28713
..accept 28714
step
goto 58.0,38.8
.talk 2077
..accept 28715
step
goto 55.8,40.1
.from Grell##1988+
.get 6 Fel Moss |q 28714/1
.' Click Melithar's Stolen Bags |tip They look like tan sacks sitting on the ground around this area.
.get 5 Melithar's Stolen Bags |q 28715/1
.' You can find more around [54.6,38.7]
step
goto 58.1,39.0
.talk 2079
..turnin 28714
..accept 28734
step
goto 58.0,38.8
.talk 2077
..turnin 28734
..turnin 28715
..accept 26841 |only NightElf Mage
..accept 3116 |only NightElf Warrior
..accept 3117 |only NightElf Hunter
..accept 3118 |only NightElf Rogue
..accept 3119 |only NightElf Priest
..accept 3120 |only NightElf Druid
step
goto 58.4,35.5
.talk 43006
..turnin 26841
..accept 26940
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
.' Learn Arcane Missiles |q 26940/2
only NightElf Mage
step
goto 58.4,35.4
.' Use Arcane Missiles on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26940/1
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
..turnin 26940
..accept 28723
only NightElf Mage
step
goto Teldrassil,58.9,33.7
.talk 3593
..turnin 3116
..accept 26945
only NightElf Warrior
step
goto Teldrassil,58.9,33.7
.talk 3593
.' Learn Charge |q 26945/2
only NightElf Warrior
step
goto 58.5,35.2
.' Use Charge on the Training Dummy
.' Practice Charge 1 time |q 26945/1
only NightElf Warrior
step
goto 58.9,33.7
.talk 3593
..turnin 26945
..accept 28723
only NightElf Warrior
step
goto 58.9,35.7
.talk 3596
..turnin 3117
..accept 26947
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
.' Learn Steady Shot |q 26947/2
only NightElf Hunter
step
goto 58.4,35.1
.' Use Steady Shot on the Training Dummies
.' Practice Steady Shot 5 times |q 26947/1
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
..turnin 26947
..accept 28723
only NightElf Hunter
step
goto Teldrassil,58.9,33.9
.talk 3594
..turnin 3118
..accept 26946
only NightElf Rogue
step
goto Teldrassil,58.9,33.9
.talk 3594
.' Learn Eviscerate |q 26946/2
only NightElf Rogue
step
goto 58.4,35.5
.' Use Eviscerate on the Training Dummy
.' Practice Eviscerate 3 times |q 26946/1
only NightElf Rogue
step
goto 58.9,33.9
.talk 3594
..turnin 26946
..accept 28723
only NightElf Rogue
step
goto 58.5,35.5
.talk 3595
..turnin 3119
..accept 26949
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
.' Learn Flash Heal |q 26949/2
only NightElf Priest
step
goto 58.5,35.4
.' Use Flash Heal on Wounded Sentinels
.' Practice Flash Heal 5 times |q 26949/1
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
..turnin 26949
..accept 28723
only NightElf Priest
step
goto Teldrassil,58.2,34.8
.talk 3597
..turnin 3120
..accept 26948
only NightElf Druid
step
goto Teldrassil,58.2,34.8
.talk 3597
.' Learn Healing Touch |q 26948/2
only NightElf Druid
step
goto 58.7,36.5
.' Use Healing Touch on Wounded Sentinels
.' Practice Healing Touch 5 times |q 26948/1
only NightElf Druid
step
goto 58.2,34.8
.talk 44617
..turnin 26948
..accept 28723
only NightElf Druid
step
goto 57.2,33.3
.talk 49479
..turnin 28723
..accept 28724
step
goto 56.6,33.8
.' Click Moonpetal Lilies |tip They look like pink flowers along the edge of the ponds around this area.
.get 7 Moonpetal Lily |q 28724/1
step
goto 57.2,33.3
.talk 49479
..turnin 28724
..accept 28725
step
goto 56.3,28.1
.from Webwood Spider##1986 |tip Killing a spider will make Tarindrella appear.
.talk 49480
..turnin 28725
..accept 28726
step
goto 56.5,24.4
.kill 12 Webwood Spider |q 28726/1
step
'Next to you:
.talk 49480
..turnin 28726
..accept 28727
step
goto 56.3,23.1
.kill Githyiss the Vile |q 28727/1
step
'Next to you:
.talk 49480
..turnin 28727
..accept 28728
step
goto 57.2,33.3
.talk 49479
..turnin 28728
..accept 28729
step
goto 59.1,29.1
.' Use your Crystal Phial while standing in the water |use Crystal Phial##5185
.get Filled Crystal Phial |q 28729/1
step
goto 57.2,33.3
.talk 49479
..turnin 28729
..accept 28730
step
goto 57.1,36.5 |n
.' Follow the ramp up |goto 57.1,36.5,0.5 |noway |c
step
goto 58.4,34.6
.talk 3514
..turnin 28730
..accept 28731
step
goto 60.2,41.7
.talk 6780
..accept 2159
step
goto 59.4,49.2
.talk 2150
..accept 488
step
goto 60.5,52.5
.from Nightsaber##2042+
.get 2 Nightsaber Fang |q 488/1
.from Strigid Owl##1995+
.get 2 Strigid Owl Feather |q 488/2
.from Webwood Lurker##1998+
.get 2 Webwood Spider Silk |q 488/3
.' There are more around [57.7,52.5]
step
goto 59.5,49.2
.talk 2150
..turnin 488
step
goto 55.8,50.4
.talk 2083
..accept 489
step
goto 55.5,50.4
.talk 40553
.fpath Dolanaar
step
goto 55.5,50.0
.talk 3567
..accept 2438
step
goto 55.7,52.0
.talk 2078
..accept 475
step
goto 55.4,52.2
.talk 6736
..turnin 2159
step
goto 55.4,52.2
.talk 6736
.home Dolanaar
step
goto 55.8,53.9
.talk 3515
..turnin 28731
..accept 929
step
goto 53.9,57.0
.' Click Fel Cones |tip They look like brown pine cones with green smoke coming out of them on the ground around this area.
.get 3 Fel Cone |q 489/1
step
goto 59.5,49.2
.talk 2150
..turnin 489
step
goto 62.1,50.8
.' Use your Jade Phial while standing in the water |use Jade Phial##5619
.get Filled Jade Phial |q 929/1
step
goto 64.6,51.2
.' Go upstairs in the house
.talk 2107
..turnin 475
..accept 476
step
goto 66.1,52.1
.' Click Tallonkai's Dresser |tip It's a wooden piece of furniture with 2 doors on it inside this small house.
.get Emerald Dreamcatcher |q 2438/1
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.7,52.0
.talk 2078
..turnin 476
..accept 483
step
goto Teldrassil,55.6,52.0
.talk 2081
..accept 13945
step
goto 55.8,53.9
.talk 3515
..turnin 929
step
goto 55.8,50.4
.talk 2083
..accept 13946
step
goto 55.5,50.0
.talk 3567
..turnin 2438
..accept 2459
..accept 932
step
goto 66.9,46.6
.from Ferocitas the Dream Eater##7234
.get Tallonkai's Jewel |q 2459/2
.kill 7 Gnarlpine Mystic |q 2459/1
step
goto 55.5,50.0
.talk 3567
..turnin 2459
step
goto 53.6,47.2 |n
.' Follow this small path to the cave |goto 53.6,47.2,0.5 |noway |c
step
goto 54.5,46.0 |n
.' Enter the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 52.9,43.9
.' Take the path to the right side of the cave
.' Use your Ireroot Seeds on Shadow Sprites |use Ireroot Seeds##46716
.' Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1
.from Lord Melenas##2038
.get Melenas' Head |q 932/1
step
goto 54.5,46.0 |n
.' Leave the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 55.8,50.5
.talk 2083
..turnin 13946
step
goto 55.5,50.0
.talk 3567
..turnin 932
step
goto 45.6,50.6 |n
.' Enter the Den |goto Teldrassil,45.6,50.6 |noway |c
step
goto 45.0,53.5
.talk 7317
..accept 2541
step
'Next to you:
.talk 34249
..' Ask her where the Rune of Nesting is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of Nesting |tip It's a small gray chest.
.get Rune of Nesting |q 483/4
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Black Feather Quill is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Black Feather |tip It's a small gray chest.
.get Black Feather Quill |q 483/2
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Sapphire of Sky is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Sky |tip It's a small gray chest.
.get Sapphire of Sky |q 483/3
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Raven Claw Talisman is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Raven Claw |tip It's a small gray chest.
.get Raven Claw Talisman |q 483/1
.from Gnarlpine Shaman##2009+
.get Shaman Voodoo Charm |q 2541/1
step
'Next to you:
.talk 34249
..' Ask her where the exit is |tip You can ask her as many times as you need.
.' Follow the green mist until you see an area with 2 bridges |tip Don't actually leave the cave.
.talk 7317
..turnin 2541
..accept 2561
step
goto 45.7,52.8
.from Rageclaw##7318 |tip He's through the doors in the room immediately next to you and Oben Rageclaw.  Just walk up to the door, even though it is locked, it will automatically open for you.
.' Use your Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
.' Release Oben Rageclaw's Spirit |q 2561/1
step
goto 45.0,53.5
.talk 7317
..turnin 2561
step
'Inside of the Den:
.from Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+,
.kill 20 Ban'ethil Gnarlpine |q 13945/1
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.7,52.0
.talk 2078
..turnin 483
..accept 486
step
goto 55.6,52.0
.talk 2081
..turnin 13945
step
goto 56.7,53.5
.talk 4265
..accept 6344
step
goto 55.5,50.4
.talk 40553
..turnin 6344
..accept 6341
step
goto 55.5,50.4
.talk 40553
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,36.1,53.5
.talk 7316
..turnin 6341
..accept 6342
step
goto 36.6,47.9
.talk 40552
..turnin 6342
..accept 6343
step
goto 36.6,47.9
.talk 40552
.' Fly to Dolanaar, Teldrassil |goto Teldrassil,55.5,50.4,0.5 |noway |c
step
goto Teldrassil,56.7,53.5
.talk 4265
..turnin 6343
step
goto 49.4,44.7
.talk 2151
..accept 487
step
goto 49.4,43.2 |n
.' Follow the path up |goto 49.4,43.2,0.5 |noway |c
step
goto 51.7,39.4
.' Take the first path to the right that you come to
.kill Ursal the Mauler |q 486/1
.kill 8 Gnarlpine Ambusher |q 487/1
step
goto 49.4,44.6
.talk 2151
..turnin 487
step
goto 55.7,52.0
.talk 2078
..turnin 486
step
goto 55.8,50.5
.talk 2083
..accept 997
step
goto 60.0,59.8
.talk 2080
..turnin 997
..accept 918
..accept 919
step
goto 57.6,62.9
.' Click the Strange Fruited Plant |tip It's a big pink-glowing plants.
..accept 930
step
goto 59.7,60.4
.from Timberling##2022+
.get 6 Timberling Seed |q 918/1
.' Click Timberling Sprouts |tip They look like green plant bulbs sitting on the ground around this area.
.get 10 Timberling Sprout |q 919/1
step
goto 59.9,59.8
.talk 2080
..turnin 918
..accept 922
..turnin 919
..turnin 930
step
goto 55.8,53.9
.talk 3515
..accept 7383
step
goto 44.0,44.2
.talk 3517
..turnin 922
..accept 923
step
goto 43.6,37.4
.' Follow the river north
.from Timberling Trampler##+, Timberling Mire Beast##+ |tip Follow the water north.
.get 5 Mossy Tumor |q 923/1
step
goto 40.5,29.9
.' Use your Amethyst Phial while standing in the water|use Amethyst Phial##18152
.get Filled Amerthyst Phial |q 7383/1
step
goto 39.5,29.9
.talk 3519
..accept 937
step
goto 39.2,29.8
.talk 7313
..accept 2518
step
goto 37.3,25.5
.' Click the Strange Fronded Plant |tip It's a big pink-glowing plants.
..accept 931
step
goto 40.7,22.1
.from Lady Sathrah##7319
.get Silvery Spinnerets |q 2518/1
step
goto 37.2,29.9
.from Bloodfeather Fury##2019+, Bloodfeather Matriarch##2021+, Bloodfeather Wind Witch##2020+
.get 6 Bloodfeather Belt |q 937/1
step
goto 39.3,29.7
.talk 7313
..turnin 2518
step
goto 39.5,29.9
.talk 3519
..turnin 937
step
goto 40.9,45.7
.talk 3515
..turnin 7383
..accept 933
step
goto 43.9,44.2
.talk 2080
..turnin 931
step
goto 44.0,44.2
.talk 3517
..turnin 923
step
goto 43.9,44.2
.talk 2080
..accept 2499
step
goto 43.9,44.1
.' Click a Sprouted Frond |tip They are 3 bushes in a long wooden planter.
..accept 2399 |instant
step
goto 43.9,58.5
.' Use your Tourmaline Phial while standing in the water |use Tourmaline Phial##5621
.get Filled Tourmaline Phial |q 933/1
step
goto 42.5,58.2
.talk 1992
..turnin 933
..accept 14005
step
goto 40.7,69.3
.' Use the abilities on your hotbar to fight Bough of Corruption
.kill Bough of Corruption |q 14005/1
step
goto 42.5,58.2
.talk 1992
..turnin 14005
..accept 935
step
goto 41.0,45.6
.talk 3515
..turnin 935
..accept 14039
step
goto 47.4,35.2
.from Oakenscowl##2166 |tip He's a red and green elemental that walks around this area.
.get Gargantuan Tumor |q 2499/1
step
goto 43.9,44.2
.talk 2080
..turnin 2499
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,50.4
.talk 40553
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,45.0,49.9
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28490
only Draenei,Dwarf,Gnome Human
step
goto 43.9,76.1
.talk 42936
..accept 26383
only NightElf
step
goto 48.2,14.7
.talk 48736
..accept 26385
only Worgen
step
goto 43.0,78.1
.talk 7999
..turnin 14039
step
goto 36.9,50.5 |n
.' Go inside the pink portal |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.fpath Rut'theran Village
step
goto 55.4,88.4
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7,0.5 |noway |c
step
goto Darkshore,51.8,18.0
.talk 32973
..turnin 28490 |only Draenei,Dwarf,Gnome Human
..turnin 26383 |only NightElf
..turnin 26385 |only Worgen
..accept 13518
step
goto 51.0,18.6
.talk 43420
.home Lor'danel
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13522
step
goto 45.0,18.2
.talk 33094
.' Rescue Volcor |q 13518/4
step
goto 44.1,17.8
.talk 32911
.' Rescue Gershala Nightwhisper |q 13518/2
step
goto 44.6,19.9
.talk 33093
.' Rescue Cerellean Whiteclaw |q 13518/1
step
goto 42.9,21.5
.talk 33095
.' Rescue Shaldyn |q 13518/3
step
goto 43.1,20.6
.kill 8 Vile Spray |q 13522/1
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13522
step
goto 51.8,18.0
.talk 32973
..turnin 13518
step
goto 50.9,18.1
.talk 32972
..accept 13520
step
goto 51.1,19.7
.talk 32977
..accept 13521
step
goto 52.4,18.8
.' Click Encrusted Clams |tip They looks like clams underwater around this area.
.get 16 Encrusted Clam Muscle |q 13520/1
step
goto 53.4,19.5
.from Corrupted Tide Crawler##32935+
.get 4 Corrupted Tide Crawler Flesh |q 13521/1
step
goto 53.3,19.6
.' Click Buzzbox 413 |tip It's a metal box with gears on it, sitting on the beach next to a hill.
..turnin 13521
..accept 13527
step
goto 55.1,21.0
.' Click the Decomposing Thistle Bear |tip It looks like a dead bear laying on the ground.
.get Foul Bear Carcass Sample |q 13527/1
step
goto 51.1,19.7
.talk 32977
..turnin 13527
..accept 13528
step
goto 50.8,18.1
.talk 32972
..turnin 13520
step
goto 55.0,24.1
.from Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+ |tip The green ones won't drop loot.
.get 6 Corrupted Thistle Bear Guts |q 13528/1
step
goto 54.2,29.3
.' Click Buzzbox 723 |tip It's a metal box with gears on it, sitting on a hill.
..turnin 13528
..accept 13554
step
goto 56.2,27.2 |n
.' Follow the path up |goto 56.2,27.2,0.5 |noway |c
step
goto 56.8,30.1
.talk 32978
..accept 13529
step
goto 56.9,31.3 |n
.' Enter the cave |goto 56.9,31.3,0.5 |noway |c
step
goto 58.2,33.0
.' Go to the lower level of the cave
.kill Zenn Foulhoof |q 13529/1
.collect Corruptor's Master Key##44927 |n
.' Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
..accept 13557
step
goto 57.4,33.8
.' Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |tip They look like metal cages all around inside the cave.
.' Click the Disgusting Workbench |tip It looks like a wooden table with chemistry equipment on it.
..accept 13831
step
goto 57.0,33.2
.from Vile Corruptor##33022+, Vile Grell##33021+
.get 6 Foul Ichor |q 13554/1
.kill 8 Vile Grell |q 13529/2
.' Click Secure Bear Cages and Secure Duskrat Cages |tip They look like metal cages all around inside the cave.
.' Free 8 Uncorrupted Animals |q 13557/1
step
'Hearth to Lor'danel |goto 51.0,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.1,19.7
.talk 32977
..turnin 13554
step
goto 51.1,19.7
.talk 32978
..turnin 13529
..turnin 13557
..turnin 13831
step
goto 50.9,18.0
.talk 32960
..accept 13564
step
goto 50.8,17.9
.talk 32959
..accept 13563
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13562
step
goto 46.8,33.3
.talk 33177
..accept 13561
step
goto 45.9,34.2
.' Click The Final Flame of Bashal'Aran |tip It looks like a brazier with fire in it, up on a hill in blue light.
.' Extinguish the Final Flame of Bashal'Aran |q 13562/1
step
goto 48.5,36.6
.kill Anaya Dawnrunner |q 13563/1
.get Anaya's Pendant |q 13563/2
step
goto 48.2,36.4
.kill 6 Cursed Highborne |q 13561/1
.kill 6 Writhing Highborne |q 13561/2
step
goto 46.8,33.3
.talk 33177
..turnin 13561
step
goto 42.9,39.0
.' Go to this spot
.' Locate Grimclaw |q 13564/1 |tip He's a dead white bear laying on the ground.
step
goto 43.0,39.0
.talk 33048
..turnin 13564
..accept 13598
..accept 13566
step
goto 42.9,39.0
.talk 33126
..accept 13565
step
goto 42.4,39.8
.' Click Moonstalkers |tip They look like blue tigers laying on the ground.  Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
.get 3 Moonstalker Whisker |q 13566/1
step
goto 44.1,40.8
.' Click Mottled Does |tip They look like small deer around this area.
.get 3 Tuft of Mottled Doe Hair |q 13566/2
step
goto 46.6,38.9
.' Click Hungry Thistle Bears |tip Only click them when they are neutral, or they will attack you.
.get 3 Thistle Bear Fur |q 13566/3
step
goto 48.6,40.4
.kill Lady Janira |q 13565/1
step
goto 47.7,39.7
.from Darkscale Scout##33206+
.' Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
.' Call 6 Withered Ents |q 13565/2
.' Click Fuming Toadstools |tip They look like yellow mushrooms on the ground around this area.
.get 6 Fuming Toadstool |q 13598/1
step
goto 43.0,39.0
.talk 33048
..turnin 13598
..turnin 13566
step
goto 42.9,39.0
.talk 33126
..turnin 13565
step
goto 43.0,39.0
.talk 33048
..accept 13569
step
goto 42.9,39.0
.' Click the Grovekeeper's Incense |tip It's a small bowl on the ground in front of Keeper Karithus with red smoke coming out of it.
..' Breathe in the smoke to entice visions of the great animal spirits |havebuff Interface\Icons\Spell_Nature_Sleep |q 13569
step
goto 43.8,40.2
.talk 33133 |tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
..accept 13567 |instant
step
goto 43.0,39.0
.talk 33048
..turnin 13569
..accept 13599
step
'Hearth to Lor'danel |goto 51.0,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.9,18.2
.talk 32972
..turnin 13599
step
goto 50.8,17.9
.talk 32959
..turnin 13563
step
goto 50.7,19.4
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13562
..accept 13589
step
goto 51.0,19.2
.talk 32979
..accept 13560
step
goto 53.0,11.0
.' Click the Decoy Bot Control Console |tip It looks like a silver and yellow rectangular metal box sitting on a very tiny island.
.' As the robot, walk north underwater to get near a group of murlocs
.' Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
.kill 50 Scavenging Greymist Murlocs |q 13560/1
step
goto 51.0,19.2
.talk 32979
..turnin 13560
step
goto 58.9,19.4
.talk 32963
..turnin 13589
step
goto 58.9,19.4
.talk 32965
..accept 13504
step
goto 58.9,19.5
.talk 32966
..accept 13505
step
goto 60.5,21.3
.kill 10 Shatterspear Laborer |q 13504/1
.' Click Highborne Relics |tip They look like small white objects on the ground around this area.
.get 8 Highborne Relic |q 13505/1
.from Shatterspear Overseer##32863
.collect Overseer's Orders##44979 |n
.' Click the Overseer's Orders in your bags |use Overseer's Orders##44979
..accept 13506
step
goto 58.9,19.4
.talk 32965
..turnin 13504
step
goto 58.9,19.5
.talk 32966
..turnin 13505
step
goto 58.9,19.4
.talk 32963
..turnin 13506
..accept 13508
..accept 13509
step
goto 58.9,19.4
.talk 32965
..accept 13507
step
goto 61.6,11.6
.kill 6 Horde Enforcer |q 13507/1
.kill 6 Shatterspear Mystic |q 13507/2
.' Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999 |tip They look like brown wooden crates around this area.
.' Burn 12 Shatterspear Armaments |q 13509/1
step
goto 63.8,6.0
.talk 33055
..turnin 13508
..accept 13511
step
goto 64.1,5.3
.kill Rit'ko |q 13511/1
.collect Shatterspear Torturer's Cage Key##45040 |q 13510 |future
step
goto 64.5,5.5
.' Click the Shatterspear Cage |tip It looks like a yellow cage with a night elf kneeling inside it.
.talk 32964
..accept 13510
step
goto 60.2,7.0
.' Follow Sentinel Aynasha as she runs |tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
.' Escort Sentinel Aynasha to the Dock |q 13510/1
step
goto 58.9,19.4
.talk 32965
..turnin 13507
step
goto 58.9,19.4
.talk 32963
..turnin 13511
..turnin 13509
..turnin 13510
..accept 13512
step
goto 58.9,19.5
.talk 32966
..accept 13513
step
goto 59.1,19.6
.talk 34041
..accept 13844
step
goto 61.2,20.4
.' Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995 |tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
.kill Sheya Stormweaver |q 13512/2
step
goto 58.2,23.9
.kill Teegan Holloway |q 13844/1 |tip He's an undead that walks around in this broken tower.
step
goto 58.3,24.0
.' Click the Charred Book |tip It looks like a small black book laying on the floor upstairs in this broken tower.
.get Narassin's Tome |q 13844/2
step
goto 56.8,25.9
.' Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995 |tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
.kill Lorenth Thundercall |q 13512/1
step
goto 57.2,25.1
.from Shatterspear Shaman##32860+
.get 6 Shatterspear Amulet |q 13513/1
step
goto 58.9,19.4
.talk 32963
..turnin 13512
step
goto 58.9,19.5
.talk 32966
..turnin 13513
step
goto 58.9,19.4
.talk 32963
..accept 13590
step
goto 59.1,19.6
.talk 34041
..turnin 13844
step
goto 63.6,20.0 |n
.' Follow the path up |goto 63.6,20.0,0.5 |noway |c
step
goto 67.5,18.7 |n
.' Enter the tunnel |goto 67.5,18.7,0.5 |noway |c
step
goto 69.1,19.3
.talk 33176
..accept 13514
step
goto 69.5,18.8
.' Click the Vengeful Protector to ride on it |invehicle |q 13514 |tip it looks like a big purple tree ent.
step
goto 70.3,20.1
.' Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
.' Kill 30 Shatterspear Vale Trolls |q 13514/1
.' Destroy 6 Shatterspear Structures |q 13514/2
step
goto 69.5,18.8
.' Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514
step
goto 69.1,19.3
.talk 33176
..turnin 13514
step
goto 72.3,19.1
.talk 33178
..turnin 13590
..accept 13515
step
goto 72.3,19.1
.talk 33178
..' Tell you are ready, begin the attack
.kill Jor'kil the Soulripper |q 13515/1 |tip Make sure to loot his corpse.
.collect Hellscream's Missive##46318 |n
.' Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
..accept 13591
step
goto 72.4,18.8
.talk 33178
..turnin 13515
step
'Hearth to Lor'danel |goto 50.9,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.7,19.7
.talk 32971
..turnin 13591
step
goto 50.1,19.5
.talk 32959
..accept 13570 |instant
step
goto 50.3,20.4
.talk 32912
..accept 13519
..accept 13596
step
goto 44.6,30.8
.talk 32932
..accept 13523
step
goto 43.7,31.4
.kill High Cultist Azerynn |q 13519/1
step
goto 44.3,30.1
.from Enraged Tidal Spirit##32890+
.' Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
.' Sooth 6 Tidal Spirits |q 13523/1
step
goto 44.6,30.8
.talk 32932
..turnin 13523
step
goto 44.7,31.1
.kill 10 Twilight Fanatic |q 13519/2
.' Click Twilight Plans |tip They look like small scrolls on the ground around this area.
.get 6 Twilight Plans |q 13596/1
.' You can find more around [43.9,32.5]
step
goto 50.3,20.4
.talk 32912
..turnin 13519
..turnin 13596
..accept 13601
step
goto 42.5,45.0
.talk 33107
..turnin 13601
step
goto 42.5,45.2
.talk 3694
..accept 13542
step
goto 42.7,45.1
.talk 32987
..accept 13543
..accept 13573
step
goto 39.1,43.2
.talk 6887
..accept 13547
step
goto 38.1,44.0
.talk 33037 |tip She's laying on the dock.
..' Coax the spirit out of Caylais Moonfeather's still corpse
.' Coax Caylais Moonfeather's spirit |q 13547/4
step
goto 37.8,42.8
.kill Windmaster Tzu-Tzu |q 13543/2
step
goto 38.5,41.9
.talk 33035
..' Coax Taldan's corpse to give up its spirit
.' Coax Taldan's spirit |q 13547/3
step
goto 41.0,41.4
.talk 33033 |tip She's laying on the ground on the bottom floor of this building.
..' Coax the spirit out of Sentinel Elissa Stareeze's corpse
.' Coax Sentinel Elissa Starbreeze's spirit |q 13547/2
step
goto 40.8,41.5
.kill Cloudtamer Wildmane |q 13543/1
step
goto 39.3,38.9
.talk 33001 |tip He's laying on the ground inside this building.
..' Coax Thundris Windweaver's spirit
.' Coax Thundris Windweaver's spirit |q 13547/1
step
goto 39.1,38.3
.kill Skylord Braax |q 13543/3
step
goto 40.1,41.6
.from Frenzied Cyclone##32985+
.collect 8 Frenzied Cyclone Bracers##44868 |q 13542
step
goto 39.5,42.1
.' Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
.' Destroy 8 Frenzied Cyclone Bracers |q 13542/1
step
goto 39.1,43.2
.talk 6887
..turnin 13547
..accept 13558
step
goto 36.6,41.0
.' Click the Aetherion Ritual Orb |tip It looks like a floating purple ball with pink and blue electricity coming off of it on the docks.
.from Aetherion##33041
.get Aetherion's Essence |q 13558/2
step
goto 38.6,42.5
.talk 33232
..accept 13605
.' Follow her around and protect her
.' Escort Archaeologist Hollee to safety |q 13605/1
step
goto 42.5,45.1
.talk 3694
..turnin 13542
step
goto 42.6,45.3
.talk 33231
..turnin 13605
step
goto 42.7,45.1
.talk 32987
..turnin 13543
..turnin 13558
step
goto 43.5,51.5 |n
.' Follow the path up |goto 43.5,51.5,0.5 |noway |c
step
goto 43.7,53.4
.talk 33091
..turnin 13573
..accept 13575
..accept 13577
..accept 13579
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13577
..accept 13578
step
goto 44.1,48.5
.' Click Slain Wildkin Feathers |tip They look like small brown and white feathers on the ground around this area.
.get 8 Slaim Wildkin Feather |q 13578/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13578
..accept 13582
step
goto 46.6,50.7
.from Horoo the Flamekeeper##34385 |tip He's a white owlkin spirit that walks around this area.
.get Elune's Torch |q 13582/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13582
..accept 13583
step
goto 41.0,56.5
.talk 33117
..turnin 13575
..accept 13576
step
goto 40.6,59.2
.from Unbound Fire Elemental##32999+
.' Use your Soothing Totem on their corpses |use Soothing Totem##44959
.' Absorb 8 Unbound Fire Elemental |q 13576/1
step
goto 40.9,56.5
.talk 33117
..turnin 13576
..accept 13580
step
goto 39.7,62.4
.' Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
.' Defend the Energized Soothing Totem
.' Complete the Ritual of Soothing |q 13580/1
step
goto 40.9,56.5
.talk 33117
..turnin 13580
..accept 13581
step
goto 44.4,56.8
.talk 33112
..turnin 13579
..accept 13584
step
goto 44.3,55.8
.kill 8 Enraged Earth Elemental |q 13584/1
step
goto 44.4,56.8
.talk 33112
..turnin 13584
..accept 13585
step
goto 43.6,55.1 |n
.' Follow the path up |goto 43.6,55.1,0.5 |noway |c
step
goto 43.6,53.4
.talk 33091
..turnin 13581
..turnin 13583
..turnin 13585
..accept 13586
step
goto 46.5,54.3 |n
.' Follow the path up |goto 46.5,54.3,0.5 |noway |c
step
goto 47.2,56.0 |n
.' Enter the cave |goto 47.2,56.0,0.5 |noway |c
step
goto 49.0,57.1
.' Follow the path to the end of the cave
.' Click the Nightmare Portal |tip It's a swirling purple, green and black portal in the cave.
.' Enter the Nightmare World |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 13586
step
goto 49.2,56.9
.talk 33166
..turnin 13586
..accept 13587
step
goto 49.6,55.3
.from Nightmare Guardian##34398 |tip The Nightmare Guardian walks along this path.
.get Emerald Scroll |q 13587/1
step
goto 49.2,56.9
.talk 33166
..turnin 13587
..accept 13940
step
goto 43.7,53.5
.talk 33091
..turnin 13940
..accept 13588
step
goto 43.5,53.7
.' Click Thessera to ride on her |tip She's a big green dragon.
.' While flying, use the Emerald Barrage ability on your hotbar to do the following:
.kill Twilight Portal |q 13588/1
.kill 12 Twilight Rider |q 13588/2
step
'Use the Land Thessera ability on your hotbar
.' Thessera will take you back to the ground |outvehicle |q 13588
step
goto 43.7,53.5
.talk 33091
..turnin 13588
..accept 13902
step
goto 44.4,75.5
.talk 33253
.fpath Grove of the Ancients
step
goto 45.1,75.2
.talk 33250
..accept 13525
step
goto 45.3,75.1
.talk 34402
..turnin 13902
..accept 13892
step
goto 45.2,74.6
.talk 34301
..accept 13881
step
goto 45.0,79.2
.' Go to this spot underwater
.' Investigate the Watering Hole |q 13881/1
step
goto 44.7,79.4
.kill 6 Consumed Thistle Bear |q 13881/2
step
goto 43.5,81.0
.talk 32967
..turnin 13525
..accept 13526
step
goto 44.0,81.6
.' Click Bear's Paws |tip They look like green leafy plants on the ground around this area.
.get 8 Bear's Paw |q 13526/1
step
goto 43.5,81.0
.talk 32967
..turnin 13526
..accept 13544
step
goto 44.8,78.5
.from Fleetfoot##32997 |tip He's a plainstrider that walks around this pond area.
.collect Fleetfoot's Tailfeathers##44886 |q 13544
step
goto 45.3,76.8
.' Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888 |tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
.get Blessed Herb Bundle |q 13544/1
step
goto 45.2,74.6
.talk 34301
..turnin 13881
..accept 13882
step
goto 45.4,74.8
.talk 33072
..' Ask him where you may find a Seed of the Earth
.get Seed of the Earth |q 13882/1
step
goto 42.1,79.0
.' Click the Darkshore Wisp |tip It's a blue-ish floating ball of light.  Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
.get Seed of the Sky |q 13882/3
step
goto 43.5,81.0
.talk 32967
..turnin 13544
..accept 13545
step
goto 43.6,81.0
.talk 32968
..accept 13572
step
goto 44.1,82.5
.' Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
.from Spirit of Corruption##33000+
.' Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
.' Click Jadefire Brazier to destroy them |tip They look like bowls with green flames in them on the ground around this area.
.' Destroy 8 Jadefire Brazier |q 13572/1
step
goto 43.5,81.0
.talk 32967
..turnin 13545
..accept 13546
step
goto 43.6,81.0
.talk 32968
..turnin 13572
step
goto 46.3,83.7 |n
.' Enter the cave |goto 46.3,83.7,0.5 |noway |c
step
goto 46.8,84.0
.kill Sharax the Defiler |q 13546/1
step
goto 43.5,81.0
.talk 32967
..turnin 13546
step
goto 42.4,82.3
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13892
step
goto 40.6,84.5
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Stand in this spot and listen to Foreman Balsoth
.' Complete the Twilight's Hammer surveillance |q 13892/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 13892
..accept 13948
step
goto 38.6,78.2
.' Click a Glittering Shell |tip They look like white clam shells along the beach around this area.
.get Seed of the Sea |q 13882/2
step
goto 39.2,85.1
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13948
step
goto 39.8,86.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 39.8,86.4,0.5 |noway |c
step
goto 41.1,85.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 41.1,85.4,0.5 |noway |c
step
goto 39.9,84.8
.' Go to this spot
.' Watch the dialogue
.' Complete the Master's Glaive Surveillance |q 13948/1
step
'Hearth to Lor'danel |goto 50.9,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.7,17.6
.talk 3841
.' Fly to the Grove of the Ancients, Darkshore |goto 44.4,75.5,0.5 |noway |c
step
goto 45.2,74.6
.talk 34301
..turnin 13882
..accept 13925
step
goto 45.3,75.1
.talk 34402
..turnin 13948
step
goto 45.3,75.1
.talk 34404
..accept 13896
step
goto 42.3,76.7
.' Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
.' Test the Lifebringer Sapling |q 13925/1
step
goto 45.2,74.6
.talk 34301
..turnin 13925
..accept 13885
step
goto 44.5,75.3
.talk 34392
..' Tell him Kathrena sent you to borrow one of his Hippogryphs
.' From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
.' Protect 8 Grizzled Thistle Bears |q 13885/1
.' Protect 8 Moonstalkers |q 13885/2
.' Protect 8 Whitetail Deers |q 13885/3
step
goto 45.2,74.6
.talk 34301
..turnin 13885
..accept 13891
step
goto 45.1,78.7
.' Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
.from Yoth'al the Devourer##34331
.' Destroy the Devouring Artifact |q 13891/1
step
goto 45.2,74.6
.talk 34301
..turnin 13891
step
map Darnassus
'To continue gaining reputation with the Darnassus faction:
.' You can buy a Darnassus Tabard from Moon Priestess Lasara at [Darnassus 36.5,48.5] |tip Wear the Darnassus Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Human Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Human.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Human.
step
goto Icecrown,76.6,19.1
.talk 33225
..accept 13593
..turnin 13593
..accept 13718
step
goto Icecrown,76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |daily |or
..accept 13600 |daily |or
..accept 13616 |daily |or
step
goto 76.5,19.1
.talk 33222
..accept 13592 |daily
step
goto 76.6,19.2
.talk 33223
..accept 13665 |daily
..accept 13847 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
step
goto 76.5,19.1
.talk 33222
..turnin 13592
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13699
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1
step
goto 76.6,19.2
.talk 33225
..turnin 13699
step
'Congratulations, you are now a Champion of Stormwind! |tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Night Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Night Elf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Night Elf.
step
goto Icecrown,76.3,19.0
.talk 33592
..accept 13706
..turnin 13706
..accept 13717
step
goto Icecrown,76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |daily |or
..accept 13758 |daily |or
..accept 13759 |daily |or
step
goto 76.3,19.0
.talk 33652
..accept 13760 |daily
step
goto 76.4,19.0
.talk 33654
..accept 13761 |daily
..accept 13855 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
step
goto 76.3,19.0
.talk 33652
..turnin 13760
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13725/1
step
goto 76.3,19.1
.talk 33592
..turnin 13725
step
'Congratulations, you are now a Champion of Darnassus! |tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Dwarf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Dwarf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Dwarf.
step
goto Icecrown,76.3,19.0
.talk 33312
..accept 13703
..turnin 13703
..accept 13714
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |daily |or
..accept 13742 |daily |or
..accept 13743 |daily |or
step
goto 76.7,19.4
.talk 33315
..accept 13744 |daily
step
goto 76.6,19.6
.talk 33309
..accept 13745 |daily
..accept 13851 |daily
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
step
goto 76.7,19.4
.talk 33315
..turnin 13744
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13714
..accept 13713
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion
info The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
info When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
info Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13713/1
step
goto 76.3,19.1
.talk 33592
..turnin 13713
step
'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Gnome Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Gnome.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Gnome.
step
goto Icecrown,76.5,19.8
.talk 33335
..accept 13704
..turnin 13704
..accept 13715
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |daily |or
..accept 13747 |daily |or
..accept 13748 |daily |or
step
goto 76.6,19.8
.talk 33648
..accept 13749 |daily
step
goto 76.5,19.9
.talk 33649
..accept 13750 |daily
..accept 13852 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
step
goto 76.6,19.8
.talk 33648
..turnin 13749
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13723/1
step
goto 76.5,19.8
.talk 33335
..turnin 13723
step
'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title Guide\\Draenei Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Draenei.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Draenei.
step
goto Icecrown,76.1,19.1
.talk 33593
..accept 13705
..turnin 13705
..accept 13716
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |daily |or
..accept 13753 |daily |or
..accept 13754 |daily |or
step
goto 76.1,19.2
.talk 33655
..accept 13755 |daily
step
goto 76.2,19.1
.talk 33656
..accept 13756 |daily
..accept 13854 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
step
goto 76.1,19.2
.talk 33655
..turnin 13755
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13724/1
step
goto 76.1,19.2
.talk 33593
..turnin 13724
step
'Congratulations, you are now a Champion of The Exodar! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Darnassus Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63637) and hasmount(65638)
model 29256
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Darnassus in the Argent Tournament
.' Become a _Champion of Darnassus_ |achieve 2777
.earn 105 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,19.2
.talk 33653
.buy 1 Darnassian Nightsaber##45591
.buy 1 Swift Moonsaber##46744
'|modeldisplay 29256
'|modeldisplay 14333
step
.learnmount Darnassian Nightsaber##63637 |use Darnassian Nightsaber##45591
.learnmount Swift Moonsaber##65638 |use Swift Moonsaber##46744
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Gnomeregan Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63638) and hasmount(65642)
model 35224
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Gnomeregan in the Argent Tournament
.' Become a _Champion of Gnomeregan_ |achieve 2779
.earn 105 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.4,19.6
.talk 33650
.buy 1 Gnomergan Mechanostrider##45589
.buy 1 Turbostrider##46747
'|modeldisplay 35224
'|modeldisplay 14375
step
.learnmount Gnomeregan Mechanostrider##63638 |use Gnomeregan Mechanostrider##45589
.learnmount Turbostrider##65642 |use Turbostrider##46747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Ironforge Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63636) and hasmount(65643)
model 29258
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Ironforge in the Argent Tournament
.' Become a _Champion of Ironforge_ |achieve 2780
.earn 105 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.4,19.4
.talk 33310
.buy 1 Ironforge Ram##45586
.buy 1 Swift Violet Ram##46748
'|modeldisplay 29258
'|modeldisplay 28612
step
.learnmount Ironforge Ram##63636 |use Ironforge Ram##45586
.learnmount Swift Violet Ram##65643 |use Swift Violet Ram##46748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Exodar Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63639) and hasmount(65637)
model 29255
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Exodar in the Argent Tournament
.' Become a _Champion of Exodar_ |achieve 2778
.earn 105 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,19.2
.talk 33657
.buy 1 Exodar Elekk##45590
.buy 1 Great Red Elekk##46745
'|modeldisplay 29255
'|modeldisplay 28606
step
.learnmount Exodar Elekk##63639 |use Exodar Elekk##45590
.learnmount Great Red Elekk##65637 |use Great Red Elekk##46745
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Stormwind Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63232) and hasmount(65640)
model 29976
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_. |tip Be sure to choose to represent Stormwind in the Argent Tournament
.' Become a _Champion of Stormwind_ |achieve 2781
.earn 105 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.4,19.2
.talk 33307
.buy 1 Stormwind Steed##45125
.buy 1 Swift Gray Steed##46752
'|modeldisplay 29976
'|modeldisplay 29043
step
.learnmount Stormwind Steed##63232 |use Stormwind Steed##45125
.learnmount Swift Gray Steed##65640 |use Swift Gray Steed##46752
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Quel'dorei Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(66090)
model 28888
step
'Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Exalted_ with _The Silver Covenant_ |condition rep("The Silver Covenant")>=Exalted
.earn 100 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,19.6
.talk 34881
.buy 1 Quel'dorei Steed##46815
'|modeldisplay 28888
step
.learnmount Quel'dorei Steed##66090 |use Quel'dorei Steed##46815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(67466)
model 28918
step
'Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Earn_ the title _"Crusader"_ |achieve 2816 |tip To do this you must become a Champion and have exalted reputation for all of the factions of the Alliance.
.earn 100 Champion's Seal##241 |only if default
.earn 200 Champion's Seal##241 |only Paladin
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,69.4,23.2
.talk 34885
.buy 1 Argent Charger##47179 |only Paladin
.buy 1 Argent Warhorse##47180
'|modeldisplay 28918
step
.learnmount Argent Charger##66906 |use Argent Charger##47179 |only Paladin
.learnmount Argent Warhorse##67466 |use Argent Warhorse##47180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(63844)
model 31714
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
.earn 150 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.4,19.2 |only Human
.talk 33307 |only Human
goto Icecrown,76.2,19.2 |only NightElf,Worgen
.talk 33653 |only NightElf,Worgen
goto Icecrown,76.4,19.4 |only Dwarf
.talk 33310 |only Dwarf
goto Icecrown,76.2,19.2 |only Draenei
.talk 33657 |only Draenei
goto Icecrown,76.4,19.6 |only Gnome
.talk 33650 |only Gnome
.buy 1 Argent Hippogryph##45725
'|modeldisplay 31714
step
.learnmount Argent Hippogryph##63844 |use Argent Hippogryph##45725
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Silver Covenant Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(66087)
model 27561
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent_ _Tournament_ _Grounds_ and _The Silver Covenant pre-quests_ and _dailies_.
.' _Exalted_ with _The Silver Covenant_ |condition rep("The Silver Covenant")>=Exalted
..earn 150 Champion's Seal##241
step
#include borean
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,19.6
.talk 34881
.buy 1 Silver Covenant Hippogryph##46813
'|modeldisplay 27561
step
.learnmount Silver Covenant Hippogryph##66087 |use Silver Covenant Hippogryph##46813
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Winterspring Frostsaber",[[
description This guide will walk you through obtaining
description the ground mounts that require special quests to
description purchase.
condition end hasmount(17229)
model 10426
step
'This mount will take _20 days_ to earn.
#include ruttheranvillage
step
|fly Everlook
step
goto 46.6,17.6
.talk 10618
..accept 29032
step
goto 46.6,17.6
.clicknpc Frostsaber Cub##51681
.get 8 Frostsaber Cub##68638 |q 29032/1
step
goto 46.6,17.6
.talk 10618
..turnin 29032
..accept 29034
step
label "dailies"
'Go to _Winterspring_ |goto Winterspring |noway |c
step
title +Winterspring Frostsaber Dailies
|use Winterspring Cub##68646
.talk 51677
..accept 29040 |or |only NightElf,Gnome,Draenei
..accept 29051 |or |only Dwarf,Worgen
..accept 29035 |or |only NightElf,Gnome,Draenei
..accept 29052 |or |only Dwarf,Worgen
..accept 29038 |or |only NightElf,Gnome,Draenei
..accept 29039 |or |only Dwarf,Worgen
..accept 29037 |or |only NightElf,Gnome,Draenei
..accept 29053 |or |only Dwarf,Worgen
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29040
|only NightElf,Gnome,Draenei
|onlyif havequest(29040)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29040
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hides_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29040/1
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hide_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29051/1
|only Dwarf,Worgen
|only if havequest(29051)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29035
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29035/1
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29052
|only Dwarf,Worgen
|only if havequest(29052)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29052/1
|only Dwarf,Worgen
|only if havequest(29052)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29038/1
|only NightElf,Gnome,Draenei
'|modelnpc 51711
|only if havequest(29038)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29039/1
|only Dwarf,Worgen
'|modelnpc 51711
|only if havequest(29039)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29037
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29037/1
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29053
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29053/1
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.talk 51677
..turnin 29040 |or |only NightElf,Gnome,Draenei |only if havequest(29040)
..turnin 29051 |or |only Dwarf,Worgen |only if havequest(29051)
..turnin 29035 |or |only NightElf,Gnome,Draenei |only if havequest(29035)
..turnin 29052 |or |only Dwarf,Worgen |only if havequest(29052)
..turnin 29038 |or |only NightElf,Gnome,Draenei |only if havequest(29038)
..turnin 29039 |or |only Dwarf,Worgen |only if havequest(29039)
..turnin 29037 |or |only NightElf,Gnome,Draenei |only if havequest(29037)
..turnin 29053 |or |only Dwarf,Worgen |only if havequest(29053)
.' _Click here_ to return to the _ beginning_ of the _daily quests_ |script ZGV:GotoStep("dailies")
.get 20 Cub Whisker##68644 |q 29034/1
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 20 Runecloth##14047
.collect 20 Rugged Leather##8170
step
goto 46.6,17.6
.talk 10618
..turnin 29034
.collect 1 Reins of the Winterspring Frostsaber##13086
'|modeldisplay 10426
step
.learnmount Winterspring Frostsaber##17229 |use Reins of the Winterspring Frostsaber##13086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\White Polar Bear",[[
description This guide will walk you through obtaining
description the ground mounts that require special quests to
description purchase.
condition end hasmount(54753)
model 28428
step
'This mount _requires_ you to have _The Sons of Hodir_ pre-quests completed
|confirm
step
label "dailies"
goto The Storm Peaks,50.9,65.6
.talk 29796
..accept 13424 |or
..accept 13423 |or
..accept 13422 |or
..accept 13425 |or
step
goto 49.4,67.6
'Use the Reins of the Warbear Matriarch in your bags |use Reins of the Warbear Matriarch##42499
'Use the _abilities_ on your _hotbar_ to kill the _Hyldsmeet Warbears_
.kill 6 Hyldsmeet Warbear##30174 |q 13424/1
|only if havequest(13424)
step
goto 48.2,70.1
'Talk to Victorious Challengers
.' _Challenge_ them to a fight
.kill 6 Victorious Challenger##30012 |q 13423/1
|only if havequest(13423)
step
goto 25.0,60.0
.from Valkyrion Apirant##29569
.collect Vial of Frost Oil##41612 |n
.' Use the _Vial of Frost Oils_ to destroy the _Plauged Proto-Drake Eggs_ |use Vial of Frost Oil##41612
.'Destroy Plagued Proto-Drake Egg |q 13425/1
|modeldisplay Plagued Proto Drake Egg##7398
|only if havequest(13425)
step
goto 46.5,68.3
'Use your _Disciplining Rod_ on the _Exhausted Vrykuls_ |use Disciplining Rod##42837 |tip They are located all throughout this mine
.' Exhausted Vrykul Disciplined |q 13422/1
|only if havequest(13422)
step
goto The Storm Peaks,50.9,65.6
.talk 29796
..turnin 13424
..turnin 13423
..turnin 13422
..turnin 13425
.collect 1 Hyldinr Spoils##44751
step
|use Hyldinr Spoils##44751
.collect 1 Reins of the White Polar Bear##43962 |tip This has a 2% drop rate from these bags. Do these dailies every day to have a higher chance of obtaining it!
.' _Click here_ to return to the _beginning_ of the _daily quests_ |next "dailies" |confirm
'|modeldisplay 28428
step
.learnmount White Polar Bear##54753 |use Reins of the White Polar Bear##43962
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Darkmoon Faire Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require daily quests to
description purchase.
condition end hasmount(103081)
model 39060
step
'This mount requires Darkmoon Island to be accessible.
|confirm
step
|fly Goldshire
step
goto Mulgore,36.8,35.8
.click the Portal to Darkmoon Island
.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
step
goto Darkmoon Island,56.0,52.9 |n
.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
step
'Complete daily quests on Darkmoon Island until you have 360 Darkmoon Prize Tickets
.earn 360 Darkmoon Prize Ticket##515
step
goto 48.6,69.8
.talk 14846
.buy Darkmoon Dancing Bear##73766
.buy Swift Forest Strider##72140
|modeldisplay 39060
|modeldisplay 1281
step
.learnmount Darkmoon Dancing Bear##103081 |use Darkmoon Dancing Bear##73766
.learnmount Swift Forest Strider##102346 |use Swift Forest Strider##72140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Amani Battle Bear",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(98204)
model 38261
step
'How do you want to enter this dungeon:
.' Take me to the dungeon entrance |confirm
.' I will use the Dungeon Finder |confirm |next "start"
step
goto Ghostlands 82.0,64.3 |n
'Enter the swirling portal to Zul'Aman. |goto Zul'Aman |noway|c
step
label "start"
.' In order to get the Amani Battle Bear you will need to save all 4 sacrifices in the time you are given.
.' In order to do this kill the bosses in the following order: Akil'zon, Nalorakk, Jan'alai, and finally Halazzi.
.' Both Akil'zon and Nalorakk grant you 5 minutes of extra time to complete your task, this means you have 25 minutes at most to kill all 4 bosses.
|confirm
step
.' Once Halazzi has died free Kasha from her cage and wait for her to blow up pots around the room, the final pot will hold Kasha's bag.
|modelnpc Halazzi##23577
|modelnpc Kasha##52945
|model Kasha's Bag##323
|confirm
step
.click Kasha's Bag##323
.collect 1 Amani Battle Bear##69747 |tip As long as you saved all 4 sacrifices this is a guaranteed drop.
|modeldisplay 38261
step
.learnmount Amani Battle Bear##98204 |use Amani Battle Bear##69747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Rivendare's Deathcharger",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(17481)
model 16937
step
|fly Northpass Tower
step
goto Eastern Plaguelands,43.4,19.5 |n
.' _Click_ on this _gate_, then, run in further to enter _Stratholme_ |goto Stratholme |noway |c
step
'_Traverse_ though the _Stratholme_ instance
goto Stratholme,37.1,19.9 |tip To get to this point you must kill all the bosses and all of the mobs inside the buildings behind the bosses to get to the Slaughterhouse.
.from Lord Aurius Rivendare##45412
.collect 1 Deathcharger's Reins##13335 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
|tip If you want, you can go outside the instance and reset it. To reset an instance, right click your portrait and click "Reset all instances". You can then kill this boss again for another chance at the mount.
'|modeldisplay 16937
step
.learnmount Rivendare's Deathcharger##17481 |use Deathcharger's Reins##13335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Raven Lord",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(41252)
model 21427
step
#include SWDP
step
|fly Allerian Stronghold
step
goto Terokkar Forest,44.9,65.6 |n
.' Enter _Heroic Sethekk Halls_ here |goto Sethekk Halls |noway |c |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
'Traverse through Sethekk Halls
goto Sethekk Halls,48.7,95.0 |n
.' Go up the stairs here |goto Sethekk Halls,48.7,95.0,0.5 |noway |c
step
goto 32.1,54.8
.from Anzu##23035
.collect 1 Reins of the Raven Lord##32768 |tip This has a 1.8% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 21427
step
.learnmount Raven Lord##41252 |use Reins of the Raven Lord##32768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift White Hawkstrider",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(46628)
model 19483
step
#include darkportal
step
|fly Shattrath
step
goto Shattrath City,49.0,42.1 |n
.' Click on the portal to the Isle of Quel'Danas |goto Isle of Quel'Danas |noway |c
step
goto Isle of Quel'Danas,61.1,30.8 |n
.' Enter _Heroic Magisters' Terrace_ here |goto Magisters' Terrace |noway |c |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
'Traverse through Magisters' Terrace
goto Magisters' Terrace,84.3,46.0 |n
.' Go down the ramp here |goto Magisters' Terrace,84.3,46.0,0.5 |noway |c
step
goto 6.9,51.0
.from Kael'thas Sunstrider##24664
.collect 1 Reins of the Swift White Hawkstrider##35513 |tip This has a 4% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 19483
step
.learnmount Swift White Hawkstrider##46628 |use Reins of the Swift White Hawkstrider##35513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Wooly Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(59791)
model 26424
step
'Use the _Dungeon Finder_ to complete _Normal Difficulty Dungeons_ and _Heroic Difficulty Dungeons_ to obtain _Justice Points_
.earn 2175 Justice Point##395
step
#include borean
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Wooly Mammoth##44230
'|modeldisplay 26424
step
.learnmount Wooly Mammoth##59791 |use Reins of the Wooly Mammoth##44230
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift Zulian Panther and Armored Razzashi Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(96499) and hasmount(96491)
model 37799
step
label "start0"
'You can either use the Dungeon Finder or get a group of friends to complete Heroic Difficulty Zul'Gurub.
'Click here for the Swift Zulian Panther |next "panther0" |confirm
'Click here for the Armored Razzashi Raptor |next "raptor0" |confirm
step
label "panther0"
'Traverse Zul'Gurub and kill High Priestess Kilnara
.collect 1 Swift Zulian Panther##68824 |tip This has an incredibly low chance of dropping. (Less than 1%)
.' Click here to return to the beginning |next "start0" |confirm
.' Click here if you have both mounts |next "end0" |confirm
|modelnpc 52059
|modeldisplay 37799
step
label "raptor0"
'Traverse Zul'Gurub and kill Bloodlord Mandokir
.collect 1 Armored Razzashi Raptor##68823 |tip This has an incredibly low chance of dropping. (Less than 1%)
.' Click here to return to the beginning |next "start0" |confirm
.' Click here if you have both mounts |next "end0" |confirm
|modelnpc 52151
|modeldisplay 14341
step
label "end0"
.learnmount Swift Zulian Panther##96499 |use Swift Zulian Panther##68824
.learnmount Armored Razzashi Raptor##96491 |use Armored Razzashi Raptor##68823
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Armored Brown Bear",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through gold farming.
condition end hasmount(60114)
model 27821
step
'This _mount_ costs _750_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include borean
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Armored Brown Bear##44225
'|modeldisplay 27821
step
.learnmount Armored Brown Bear##60116 |use Reins of the Armored Brown Bear##44225
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Traveler's Tundra Mammoth",[[
description This guide will walk you through obtaining
description the gorund mounts that can be obtained
description through gold farming.
condition end hasmount(61425)
model 25451
step
'This _mount_ costs _20,000_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include borean
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Traveler's Tundra Mammoth##44235
'|modeldisplay 25451
step
.learnmount Traveler's Tundra Mammoth##61425 |use Reins of the Traveler's Tundra Mammoth##44235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Mekgineer's Chopper",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(60424)
model 25870
step
'You will need at least _12,500 gold_ to obtain this _mount_ |tip This will cost more gold if you do not farm for the required materials
.' Click this line to skip to the next step |confirm
|next "engineer" |only if skill("Engineering")>=450
|next "levelengineer" |only if skill("Engineering")<450 and skill("Engineering")>1
|next "auctionhouse" |only if skill("Engineering")<1
step
label "levelengineer"
'Use the _Engineering Profession_ section of this guide to level your _Engineering_ skill to _450_
.skill Engineering,450
..' Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
label "engineer"
'This will require you to be _exalted_ with _Alliance Expedition_
.' _Exalted_ with _Alliance Vanguard_ |condition rep("Alliance Vanguard")>=Exalted |tip To get to exalted with this faction: make sure you don't have a Wrath of the Lich King faction tabard on and then complete heroic and normal dungeons in Northrend (this is much easier to do with friends).
..' Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
goto Borean Tundra,57.6,66.2
.talk 32564
.buy 1 Schematic: Mekgineer's Chopper##44503
step
.learnmount Mekgineer's Chopper##60867 |use Schematic: Mekgineer's Chopper##44503
step
label "auctionhouse"
'You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
.collect 12 Titansteel Bar##37663
.collect 40 Handful of Cobalt Bolts##39681
.collect 2 Arctic Fur##44128
step
'Have an _Engineer friend_, or find an _Engineer_, to _buy_ these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")<450
'Buy these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")>=450
goto The Storm Peaks,40.6,84.8
.talk 31247
.buy 8 Goblin-Machined Piston##44501 |only if skill("Engineering")>=450
.buy 1 Salvaged Iron Golem Parts##44499 |only if skill("Engineering")>=450
.buy 1 Elementium-Plated Exhaust Pipe##44500 |only if skill("Engineering")>=450
.collect 8 Goblin-Machined Piston##44501 |only if skill("Engineering")<450
.collect 1 Salvaged Iron Golem Parts##44499 |only if skill("Engineering")<450
.collect 1 Elementium-Plated Exhaust Pipe##44500 |only if skill("Engineering")<450
|tip Remember these items cost 12500 gold all together
step
'Have the _Engineer_ create the _Mekgineer's Chopper_ for you |only if skill("Engineering")<450
.create Mekgineer's Chopper##60867,Engineering,1 total |only if skill("Engineering")>=450
.collect 1 Mekgineer's Chopper##44413
'|modeldisplay 25870
step
.learnmount Mekgineer's Chopper##60424 |use Mekgineer's Chopper##44413 |tip Get to the Choppa!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Horse Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(23229) and hasmount(23227)and hasmount(23228)and hasmount(458)and hasmount(6648)and hasmount(472)
model 14338
step
title + Horse Mounts
#include main_rep_mount,rep="Stormwind",tabard="SWTabard"
|only Dwarf,NightElf,Gnome,Draenei,Worgen
step
'Go to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City 77.0,67.8
.talk 43694
.buy 1 Swift Brown Steed##18777
.buy 1 Swift Palomino##18776
.buy 1 Swift White Steed##18778
.buy 1 Black Stallion Bridle##2411
.buy 1 Brown Horse Bridle##5656
.buy 1 Chestnut Mare Bridle##5655
.buy 1 Pinto Bridle##2414
'|modeldisplay 14583
'|modeldisplay 14582
'|modeldisplay 14338
'|modeldisplay 2402
'|modeldisplay 2404
'|modeldisplay 2405
'|modeldisplay 2409
step
.learnmount Swift Brown Steed##23229 |use Swift Brown Steed##18777
.learnmount Swift Palomino##23227 |use Swift Palomino##18776
.learnmount Swift White Steed##23228 |use Swift White Steed##18778
.learnmount Black Stallion##470 |use Black Stallion Bridle##2411
.learnmount Brown Horse##458 |use Brown Horse Bridle##5656
.learnmount Chestnut Mare##6648 |use Chestnut Mare Bridle##5655
.learnmount Pinto##472 |use Pinto Bridle##2414
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Tiger Mounts",[[
description This guide will walk you through obtaining the ground mounts that require reputation to purchase.
condition end hasmount(23221) and hasmount(23219) and hasmount(23338) and hasmount(10789) and hasmount(66847) and hasmount(8394) and hasmount(10793)
model 14332
step
title +Tiger Mounts
#include main_rep_mount,rep="Darnassus",tabard="DarnTabard"
|only Dwarf,Human,Gnome,Draenei,Worgen
step
Go to Darnassus |goto Darnassus |noway |c
step
goto 42.4,32.8
.talk 4730
.buy 1 Reins of the Swift Frostsaber##18766
.buy 1 Reins of the Swift Mistsaber##18767
.buy 1 Reins of the Swift Stormsaber##18902
.buy 1 Reins of the Spotted Frostsaber##8632
.buy 1 Reins of the Striped Dawnsaber##47100
.buy 1 Reins of the Striped Frostsaber##8631
.buy 1 Reins of the Striped Nightsaber##8629
'|modeldisplay 14331
'|modeldisplay 14332
'|modeldisplay 14632
'|modeldisplay 6444
'|modeldisplay 29755
'|modeldisplay 6080
'|modeldisplay 6448
step
.learnmount Swift Frostsaber##23221 |use Reins of the Swift Frostsaber##18766
.learnmount Swift Mistsaber##23219 |use Reins of the Swift Mistsaber##18767
.learnmount Swift Stormsaber##23338 |use Reins of the Swift Stormsaber##18902
.learnmount Spotted Frostsaber##10789 |use Reins of the Spotted Frostsaber##8632
.learnmount Striped Dawnsaber##66847 |use Reins of the Striped Dawnsaber##47100
.learnmount Striped Frostsaber##8394 |use Reins of the Striped Frostsaber##8631
.learnmount Striped Nightsaber##10793 |use Reins of the Striped Nightsaber##8629
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Mechanostrider Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(23225) and hasmount(23223) and hasmount(23222) and hasmount(10969) and hasmount(17453) and hasmount(10873) and hasmount(17454)
model 31670
step
title +Mechanostrider Mounts
#include main_rep_mount,rep="Gnomeregan",tabard="GnomTabard"
|only NightElf,Human,Dwarf,Draenei,Worgen
step
|fly Kharanos
step
goto Dun Morogh,56.2,46.2
.talk 7955
.buy 1 Swift Green Mechanostrider##18772
.buy 1 Swift White Mechanostrider##18773
.buy 1 Swift Yellow Mechanostrider##18774
.buy 1 Blue Mechanostrider##8595
.buy 1 Green Mechanostrider##13321
.buy 1 Red Mechanostrider##8563
.buy 1 Unpainted Mechanostrider##13322
'|modeldisplay 14374
'|modeldisplay 14376
'|modeldisplay 14377
'|modeldisplay 6569
'|modeldisplay 10661
'|modeldisplay 9473
'|modeldisplay 9476
step
.learnmount Swift Green Mechanostrider##23225 |use Swift Green Mechanostrider##18772
.learnmount Swift White Mechanostrider##23223 |use Swift White Mechanostrider##18773
.learnmount Swift Yellow Mechanostrider##23222 |use Swift Yellow Mechanostrider##18774
.learnmount Blue Mechanostrider##10969 |use Blue Mechanostrider##8595
.learnmount Green Mechanostrider##17453 |use Green Mechanostrider##13321
.learnmount Red Mechanostrider##10873 |use Red Mechanostrider##8563
.learnmount Unpainted Mechanostrider##17454 |use Unpainted Mechanostrider##13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ram Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(6898) and hasmount(6777) and hasmount(6899) and hasmount(23240) and hasmount(23239) and hasmount(23238)
model 14347
step
title +Ram Mounts
#include main_rep_mount,rep="Ironforge",tabard="IFTabard"
|only NightElf,Human,Gnome,Draenei,Worgen
step
'Go to Dun Morogh |goto Dun Morogh |noway |c
step
goto 70.6,48.8
.talk 1261
.buy 1 Swift Brown Ram##18786
.buy 1 Swift Gray Ram##18787
.buy 1 Swift White Ram##18785
.buy 1 Brown Ram##5872
.buy 1 Gray Ram##5864
.buy 1 White Ram##5873
'|modeldisplay 14347
'|modeldisplay 14576
'|modeldisplay 14346
'|modeldisplay 2785
'|modeldisplay 2736
'|modeldisplay 2786
step
.learnmount Swift Brown Ram##23238 |use Swift Brown Ram##18786
.learnmount Swift Gray Ram##23239 |use Swift Gray Ram##18787
.learnmount Swift White Ram##23240|use Swift White Ram##18785
.learnmount Brown Ram##6899 |use Brown Ram##5872
.learnmount Gray Ram##6777 |use Gray Ram##5864
.learnmount White Ram##6898 |use White Ram##5873
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Elekk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(35711) and hasmount(35710) and hasmount(35714) and hasmount(34406) and hasmount(35712) and hasmount(35713)
model 19873
step
title +Elekk Mounts
#include main_rep_mount,rep="Exodar",tabard="ExTabard"
|only Dwarf,Human,Gnome,NightElf,Worgen
step
Go to The Exodar |goto The Exodar |noway |c
step
goto 81.6,51.8
.talk 17584
.buy 1 Great Blue Elekk##29745
.buy 1 Great Green Elekk##29746
.buy 1 Great Purple Elekk##29747
.buy 1 Brown Elekk##28481
.buy 1 Gray Elekk##29744
.buy 1 Purple Elekk##29743
'|modeldisplay 19871
'|modeldisplay 19873
'|modeldisplay 19872
'|modeldisplay 17063
'|modeldisplay 19869
'|modeldisplay 19870
step
.learnmount Great Blue Elekk##35713 |use Great Blue Elekk##29745
.learnmount Great Green Elekk##35712 |use Great Green Elekk##29746
.learnmount Great Purple Elekk##35714 |use Great Purple Elekk##29747
.learnmount Brown Elekk##34406 |use Brown Elekk##28481
.learnmount Gray Elekk##35710 |use Gray Elekk##29744
.learnmount Purple Elekk##35711 |use Purple Elekk##29743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Mountain Horse Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(103196) and hasmount(103195)
model 65
step
#include main_rep_mount,rep="Gilneas",tabard="GilTabard"
goto Darnassus 37.2,47.0
.talk 50307
.buy 1 Gilneas Tabard##64882
|only Dwarf,Human,Gnome,NightElf,Worgen
step
#include "rideto_darnassus"
step
goto 48.1,21.8
.talk 55285
.buy 1 Swift Mountain Horse##73839
.buy 1 Mountain Horse##73838
|modeldisplay 65
|modeldisplay 229
step
.learnmount Swift Mountain Horse##103196 |use Swift Mountain Horse##73839
.learnmount Mountain Horse##103195 |use Mountain Horse##73838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Talbuk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(39315) and hasmount(34896) and hasmount(39317) and hasmount(34898) and hasmount(39318) and hasmount(34899) and hasmount(39319) and hasmount(34897)
model 19377
step
#include misc_rep_mount,rep="Kurenai"
.' Click here to continue to earn reputation with the Mag'har |confirm always |only if rep("Kurenai")<=Revered
|next "quest" |only if rep("Kurenai")<=Revered
|next "buy" |only if rep("Kurenai")==Exalted
step
label "quest"
#include "darkportal"
step
|fly Orebor Harborage
step
goto Zangarmarsh,41.9,27.2
.talk 18008
..accept 9835
..accept 10115
step
goto 41.7,27.3
.' Click the Wanted Poster|tip On a pink crystal post.
..accept 10116
step
goto 26.4,22.8
.' Click the Daggerfen Poison Vial|tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
.get Daggerfen Poison Vial|q 9848/2
.' It can also be at [25.4,25.0]
step
goto 24.4,27
.' Click the Daggerfen Poison Manual|tip At the top of the big tower, to the right as you reach the top, on the floor.
.get Daggerfen Poison Manual|q 9848/1
step
goto 23.8,26.8
.from Chieftain Mummaki##19174
.get Chieftain Mummaki's Totem|q 10116/1
step
goto 28.2,22.1
.kill 3 Daggerfen Assassin|q 10115/1
.kill 15 Daggerfen Muckdweller|q 10115/2
step
goto 34.6,29.7
.kill 5 Ango'rosh Shaman slain |q 9835/1
.kill 10 Ango'rosh Ogre slain |q 9835/2
step
goto 42.0,27.2
.talk 18008
..turnin 10116
..turnin 9835
..turnin 9835
..turnin 10115
..accept 9839
step
goto 40.8,28.7
.talk 18009
..accept 9830
..accept 9833
..accept 9902
step
goto 41.6,27.3
.talk 18010
..accept 9834
step
goto 48.1,38.4
.kill Fenclaw Thrashers|n
.get 8 Fenclaw Hide|q 9834/1
step
goto 50.4,40.8
.' Locate the drain in Serpent Lake|q 9731/1|tip Swim straight down at this spot.
step
goto 35.9,58.6
.kill 12 Marshfang Slicer|q 9833/1
step
goto 22.4,46.1
.kill Terrorclaw|q 9902/1|tip On a little island.
step
goto 17.3,38.4
.kill Marshlight Bleeders|n|tip They are all around this area on the land, to the north and south.
.get 6 Marshlight Bleeder Venom|q 9830/1
.' You'll be able to find more around [Zangarmarsh,19.6,33.3]
step
goto 17.3,10.2
.kill 10 Ango'rosh Mauler|q 9839/2
.' Click the brown crates and kill ogres around this area
step
goto 18.3,7.7
.kill 1 Overlord Gorefist|q 9839/1|tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
step
goto 40.8,28.7
.talk 18009
..turnin 9830
..turnin 9833
..turnin 9902
step
goto 41.6,27.3
.talk 18010
..turnin 9834
..accept 9905
step
goto 42.2,41.4
.kill Mragesh|q 9905/1|tip He is a big brown hydra underwater.
step
goto 41.6,27.3
.talk 18010
..turnin 9905
step
|fly Telaar
step
goto 54.2,70
.talk 18416
..accept 9956
step
goto 55.5,68.8
.talk 18233
..accept 9869
step
goto 55,70.5
.talk 18353
..accept 9917
step
goto 54.6,70.7
.' Click the Telaar Bulletin Board|tip To the left of a big tree in a little circle island section in the road.
..accept 9936
..accept 9940
step
goto 54.7,70.9
.talk 18408
..accept 10476
step
goto 54.5,72.1
.talk 18222
..accept 9874
step
goto 54.5,72.3
.talk 18224
..accept 9878
step
goto 63.1,73.2
.' Kill Boulderfist Hunters
.get Boulderfist Plans|q 9917/1
step
goto 67.9,79.3
.kill 10 Kil'sorrow Agent|q 9936/2
step
goto 71.1,82.4
.kill Giselda the Crone##18391|q 9936/1
step
goto 72.6,70.7
.talk 18369
..accept 9923
.' Kill Boulderfist ogres
.collect Boulderfist Key##25490 |q 9923 |sticky
.' Free Corki |q 9923/1 |tip Click his cage to free him.
step
goto 60.7,22.1
.talk 18072
..turnin 9869
step
goto 48.3,21.5
.kill 5 Warmaul Shaman|q 9940/2
.kill 5 Warmaul Reaver|q 9940/3
.' Kill Warmaul mobs
.get 10 Obsidian Warbeads|q 10476/1
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413|q 9940/1
step
goto 27.9,29.7
.get 10 Telaar Supply Crate|q 9956/1|tip They look like little grey boxes on the ground.
step
goto 29.5,43.5
.kill 10 Murkblood Scavenger|q 9878/1
.kill 5 Murkblood Raider|q 9878/2
step
goto 33.2,47.7
.' Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water|use Torch of Liquid Fire##24560
.' Burn 10 Sunspring Villager Corpses |q 9874/1
step
goto 54.5,72.3
.talk 18224
..turnin 9878
step
goto 54.5,72.1
.talk 18222
..turnin 9874
step
goto 54.2,70
.talk 18416
..turnin 9956
step
goto 55.5,68.8
.talk 18183
..turnin 9923
..accept 9924
step
goto 55,70.5
.talk 18353
..turnin 9917
..accept 9918
step
goto 54.8,71
.talk 18408
..turnin 9936
..turnin 9940
..turnin 10476
step
goto 62.7,71.4
.' Fight Lump until he's almost dead|tip Sleeping on the hill.
.'Talk to Lump to interrogate him |q 9918/1
step
goto 55,70.5
.talk 18353
..turnin 9918
..accept 9920
step
goto 54.6,72.2
.talk 18223
..turnin 9920
..accept 9921
step
goto 72.9,69.8
.kill 8 Boulderfist Crusher|q 9921/1
.kill 8 Boulderfist Mystic|q 9921/2
step
goto 54.6,72.2
.talk 18223
..turnin 9921
..accept 9922
step
goto 40.7,35.6
.kill 10 Boulderfist Warrior |q 9922/1
.kill 10 Boulderfist Mage |q 9922/2
.collect 1 Northwind Cleft Key##25509 |q 9924 |sticky
step
goto 39.3,27.5
.' Free Corki inside the cave |q 9924/1|tip Inside the cave, way in the back, in a yellow cage again.
step
'Go outside to 54.5,72.2|goto 54.6,72.2
.talk 18223
..turnin 9922
..accept 10108
step
goto 55.5,68.8
.talk 18183
..turnin 9924
step
goto 73.8,68.1|n
'The path up to Lantresor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c
step
goto 73.8,62.6
.talk 18261
..'Listen to his story
..turnin 10108
..accept 9928
..accept 9927
step
goto 71.4,79.4
.' Click the Kil'sorrow Armaments on the ground|tip The Kil'sorrow Armaments look like skinny, square, tan boxes with a red axe logo on them.
.get 10 Kil'sorrow Armaments|q 9928/1
.' Kill Kil'sorrow mobs
.' Use your Warmaul Ogre Banners on their corpses|use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 46.5,24.3
.kill 10 Warmaul ogres|n
.' Use your Kil'sorrow Banners on their corpses|use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners|goal 10 Kil'sorrow Banner Planted|q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre|use Damp Woolen Blanket##25658
.' Defend the 2 ogres that appear until they are done placing the corpses|goal Kil'sorrow Bodies Planted|q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9933
step
goto 55.5,68.8
.talk 18183
..turnin 9933
step
goto 55.5,68.7
.talk 18183
..accept 9954
step
goto 54.7,70.9
.talk 18408
..accept 9938
step
goto Nagrand,54.8,70.5
.talk 18416
..accept 9982
step
.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
.' Click here to proceed |confirm
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
.' Follow the path around this are to look for _Durn the Hungerer_
.kill Durn the Hungerer |q 9938/1
step
goto 27.3,43.1
.talk 18417
..turnin 9982
..accept 9991 |tip You will fly around on a drake to view The Twilight Ridge.
..turnin 9991
..accept 9999
step
goto 24.5,37.9
.kill 2 Felguard Legionnaire |q 9999/1
.kill 3 Mo'arg Engineer |q 9999/2
.kill 8 Gan'arg Tinkerer |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto Nagrand,17.5,50.3
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
.' You can also find the Mater Planner around [23.3,35.4]
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto 27.0,23.7 |n
.' Enter the Cave here |goto 27.0,23.7,0.5 |noway |c
step
goto 29.5,26.1
.talk 18445
|tip You may have to fight the _65 Elite_ standing next to the cage.
..turnin 9954
..accept 9955
step
goto 27.0,23.7 |n
.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 27.2,18.7 |n
.' Enter the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto Nagrand,25.8,13.8
.' Follow the path up and around
.from Cho'war the Pillager##18423+
.collect Cho'war's Key##25648 |q 9955
step
goto 27.2,18.7 |n
.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto 27.0,23.7 |n
.' Enter the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 29.5,26.1
.' Click _Corki's_ cage to unlock it
.' Free Corki |q 9955/1 |tip You may have to fight the _65 Elite_ standing next to the cage.
step
goto 27.0,23.7 |n
.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
step
goto 54.7,70.9
.talk 18408
..turnin 9938
step
goto 55.5,68.7
.talk 18183
..turnin 9955
step
|fly Shattrath
step
goto Shattrath City,77.3,34.9
.talk 18584
.' Tell him "Altruis sent me. He said that you could help me." |tip He will immediately start attacking you!
.' Persuad Sal'salabim |q 10004/1
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.5
.talk 18585
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.9,91.1
.talk 18586
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.2,58.1
.talk 18588
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Floon's Debt |q 10009/3
step
goto 77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
|fly Telaar
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto Nagrand,25.0,36.1
.from "Demos, Overseer of Hate##18535"
.collect Fel Cannon Activator##25770 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from "Xirkos, Overseer of Fear##18536"
.collect Fel Cannon Activator##25771 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
.' Destoy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
.' Once you have completed the above quests, you will have to grind your way to exalted.
.' Click to proceed. |confirm
step
label	"bead_grind"
goto Nagrand,48.9,22.7
.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
..collect Obsidian Warbeads##25433 |n
.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
.' Collect beads in sets of 10.
.' Click here when you're ready to turn in. |confirm
step
label	"turn_in"
goto Nagrand,54.7,70.9
.talk 18408
..accept 10477 |instant |repeatable
.' Click here to go back to farming. |next "bead_grind" |confirm |only if rep("Kurenai")<=Revered
.' Congratulations, you are now Exalted with The Kurenai! |condition rep("Kurenai")>=Exalted |only if rep("Kurenai")>=Exalted
step
label "buy"
goto Nagrand,54.6,75.0
.talk 20240
.buy 1 Reins of the Cobalt Riding Talbuk##31830
.buy 1 Reins of the Cobalt War Talbuk##29227
.buy 1 Reins of the Silver Riding Talbuk##31832
.buy 1 Reins of the Silver War Talbuk##29229
.buy 1 Reins of the Tan Riding Talbuk##31834
.buy 1 Reins of the Tan War Talbuk##29230
.buy 1 Reins of the White Riding Talbuk##31836
.buy 1 Reins of the White War Talbuk##29231
'|modeldisplay 21073
'|modeldisplay 19375
'|modeldisplay 21075
'|modeldisplay 19378
'|modeldisplay 21077
'|modeldisplay 19376
'|modeldisplay 21076
'|modeldisplay 19377
step
.learnmount Cobalt Riding Talbuk##39315 |use Reins of the Cobalt Riding Talbuk##31830
.learnmount Cobalt War Talbuk##34896 |use Reins of the Cobalt War Talbuk##29227
.learnmount Silver Riding Talbuk##39317 |use Reins of the Silver Riding Talbuk##31832
.learnmount Silver War Talbuk##34898 |use Reins of the Silver War Talbuk##29229
.learnmount Tan Riding Talbuk##39318 |use Reins of the Tan Riding Talbuk##31834
.learnmount Tan War Talbuk##34899 |use Reins of the Tan War Talbuk##29230
.learnmount White Riding Talbuk##39319 |use Reins of the White Riding Talbuk##31836
.learnmount White War Talbuk##34897 |use Reins of the White War Talbuk##29231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Camel Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88748) and hasmount(88749)
model 37492
step
title +Camel Mounts
#include main_rep_mount,rep="Ramkahen",tabard="RamkahenTabard"
step
#include uldum_port
step
goto Uldum,54.0,33.3
.talk 48617
.buy 1 Reins of the Brown Riding Camel##63044
.buy 1 Reins of the Tan Riding Camel##63045
'|modeldisplay 35136
'|modeldisplay 35134
step
.learnmount Brown Riding Camel##88748 |use Reins of the Brown Riding Camel##63044
.learnmount Tan Riding Camel##88749 |use Reins of the Tan Riding Camel##63045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Spectral Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(92231)
model 37259
daily
step
' This will require that you be exalted with the Baradin Wardens.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' Spectral Steed costs 165 Tol Barad Commendations.
.earn 165 Tol Barad Commendation##391
.' _Exalted_ with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted
.' Click here to move on to the daillies. |confirm
step
goto Stormwind City,73.2,18.4
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to continue |confirm
step
goto Tol Barad Peninsula,72.9,60.9
.talk 48254
..accept 28275 |daily
..accept 27987 |daily
..accept 27978 |daily
..accept 27991 |daily
..accept 27975 |daily
..accept 27973 |daily
step
goto 73.4,59.2
.talk 47240
..accept 28059 |daily
..accept 28063 |daily
..accept 28130 |daily
..accept 28137 |daily
..accept 28065 |daily
step
goto 73.7,57.6
.talk 48255
..accept 27948 |daily
..accept 27972 |daily
..accept 27970 |daily
..accept 27971 |daily
..accept 28050 |daily
..accept 27944 |daily
step
goto 74.8,59.6
.talk 48250
..accept 28046 |daily
..accept 27967 |daily
..accept 27992 |daily
..accept 27966 |daily
..accept 27949 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 27978/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 27987/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28137/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28130/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+ |q 27944/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 27948/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 27972/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28063/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 27975/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28275/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 27973/1
step
goto 40.2,57.9
.kill 5 Restless Infantry##46823 |q 28046/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 27992/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 27967/1
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 27966/1
.click Forgotten Soldier's Tombstone##2452
.' Release 6 Tortured Souls |q 27949/1
step
goto 72.9,60.9
.talk 48254
..turnin 28275
..turnin 27987
..turnin 27978
..turnin 27991
..turnin 27975
..turnin 27973
step
goto 73.4,59.2
.talk 47240
..turnin 28059
..turnin 28063
..turnin 28130
..turnin 28137
..turnin 28065
step
goto 73.7,57.6
.talk 48255
..turnin 27948
..turnin 27972
..turnin 27970
..turnin 27971
..turnin 28050
..turnin 27944
step
goto 74.8,59.6
.talk 48250
..turnin 28046
..turnin 27967
..turnin 27992
..turnin 27966
..turnin 27949
step
.' The quests below will only be able to be done if your faction currently controls Tol Barad.
.' Click here to proceed to the daillies. |confirm
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to proceed. |confirm
step
goto Tol Barad,50.9,49.7
.talk 48066
..accept 28122 |daily
..accept 28162 |daily
..accept 28163 |daily
step
goto 51.4,49.6
.talk 48061
..accept 28165 |daily
..accept 28185 |daily
..accept 28186 |daily
step
goto 51.5,49.5
.talk 48039
..accept 28117 |daily
..accept 28120 |daily
..accept 28118 |daily
step
goto 51.5,49.6
.talk 48074
..accept 28232 |daily
..accept 28188 |daily
..accept 28223 |daily
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28185/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28165/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28186/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28162/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28223/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28188/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28232/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28118/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28117/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28120/1
step
goto 51.1,29.7
.from Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
.kill 12 Horde Infantry |q 28163/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28122/1 |tip He patrols around Baradin Hold.  Some searching may be required.
step
goto Tol Barad,50.9,49.7
.talk 48066
..turnin 28122
..turnin 28162
..turnin 28163
step
goto 51.4,49.6
.talk 48061
..turnin 28165
..turnin 28185
..turnin 28186
step
goto 51.5,49.5
.talk 48039
..turnin 28117
..turnin 28120
..turnin 28118
step
goto 51.5,49.6
.talk 48074
..turnin 28232
..turnin 28188
..turnin 28223
step
.' Go North to Tol Barad Peninsula |goto Tol Barad Peninsula|noway |c
step
goto Tol Barad Peninsula,72.6,62.6
.talk 47328
.buy 1 Reins of the Spectral Steed##64998
'|modeldisplay 37259
step
.learnmount Spectral Steed##92231 |use Reins of the Spectral Steed##64998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ice Mammoth & Grand Ice Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(59799)
model 27242
step
' Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
.' Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
.' Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
.' Proceeding to Exalted Mounts |next "BuyMount" |only if rep('The Sons of Hodir')==Exalted
step
.' The Ice Mammoth costs a base price of 1,000 gold and requires Revered reputation to buy.
.' The Grand Ice Mammoth costs a base price of 10,000 gold, and requires Exalted Reputation to buy.
.' Click here to proceed to the Pre-Quests. |confirm
step
#include borean
step
goto The Storm Peaks,41,86.4
.talk 29431
..turnin 12853
..accept 12818
step
home K3
step
goto 41.1,86.1
.talk 29473
..accept 12843
..accept 12844
step
goto 40.9,85.3
.talk 29428
..accept 12827
..accept 12836
step
goto 40.8,84.5
.talk 29721
..fpath K3
step
goto 39.8,86.4
.click Charred Wreckage##6866
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.from Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
.click Dried Gnoll Rations##335
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill Gnarlhide##30003|q 12836/1
step
goto 41,86.4
.talk 29431
..turnin 12818
..accept 12819
step
goto 40.9,85.3
.talk 29428
..turnin 12827
..turnin 12836
..accept 12828
step
goto 35.1,87.8
.click Sparksocket's Tools##1209
.get Sparksocket's Tools|q 12819/1
step
goto 41,86.4
.talk 29431
..turnin 12819
..accept 12826
step
goto 40.9,85.3
.talk 29428
..turnin 12826
..accept 12820
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Attackers|q 12820/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.click the U.D.E.D. Dispenser##2029
.' Retrieve a bomb from the dispenser
.collect U.D.E.D.##40686|q 12828
step
'Go to [43.9,79.0] quickly
.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
.click  Mammoth Meat##2951
.get 8 Hearty Mammoth Meat|q 12828/1
step
.' Go into the cave |goto 40.4,77.8 |noway|c
.kill 12 Crystalweb Spiders |q 12829/1
'|modelnpc 29412
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Diggers##29413 |n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.from Icetip Crawler##29461
.get 1 Icetip Venom Sac|q 12831/1
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1
step
'Fly up to [39.8,73.3]
.kill Sifreldar Storm Maiden##29323+ |n
.collect 5 Cold Iron Key##40641|n
.click Rusty Cage##7469+
.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
.click K3 Equipment##335
.get 8 K3 Equipment|q 12844/1
step
goto 41.7,80
.talk 29430
..turnin 12829
..turnin 12830
step
goto 40.9,85.3
.talk 29428
..turnin 12820
..turnin 12828
..turnin 12832
..accept 12821
step
goto 41.1,86.1
.talk 29473
..turnin 12843
..accept 12846
..turnin 12844
step
goto 45.1,82.4
.click Transporter Power Cell##8099
.get Transporter Power Cell|q 12821/2
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter|goal Garm Teleporter Activated|q 12821/1
step
goto 40.9,85.3
.talk 29428
..turnin 12821
..accept 12822
step
goto 50.0,81.8
.talk 29432
..accept 12823
step
'Go inside the cave to [50.5,77.8]
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut##29626 |q 12823/2
step
goto 48.1,81.9
.kill 6 Garm Watcher##29409+ |q 12822/1
.kill 8 Snowblind Devotee##29407+ |q 12822/2
step
'Go outside and go to [50.0,81.8]
.talk 29432
..turnin 12823
..accept 12824
step
Fly up into the cave to [42.8,68.9]
.talk 29481
..turnin 12846
..accept 12841
step
goto 44.2,68.9
.from Overseer Syra##29518
.get 1 Runes of the Yrkvinn|q 12841/1
step
goto 42.8,68.9
.talk 29481
..turnin 12841
..accept 12905
step
goto 44.4,68.9
.talk 29885
..turnin 12905
..accept 12906
step
goto 44.8,70.3
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul|goal 6 Exhausted Vrykul Disciplined|q 12906/1
'|modelnpc 30146
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal##30147 |q 12907/1
step
goto 44.4,68.9
.talk 29885
..turnin 12907
..accept 12908
step
goto 42.8,68.9
.talk 29481
..turnin 12908
..accept 12921
step
.' Follow the path in the mine east out to the other side to [47.5,69.1]
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
.' Tell her to skip the warmup
.kill 1 Agnetta Tyrsdottar##30154 |q 12969/1
step
goto 47.5,69.1
.talk 29975
..turnin 12969
..accept 12970
step
goto 47.5,69.1
.talk 29975
..'Ask her about her proposal
.' Listen to Lok'lira's proposal|goal Listen to Lok'lira's proposal|q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
.talk 30012
.kill 6 Victorious Challenger##30012+ |q 12971/1
step
goto 47.5,69.1
.talk 29975
..turnin 12971
..accept 12972
step
goto 48.4,72.1
.talk 29997
..accept 12942
..accept 12968
step
goto 48.4,72.1
.talk 30041
..accept 12925
step
goto 53.1,65.7
.talk 29592
..turnin 12972
..accept 12851
step
goto 53.1,65.7
.clicknpc Icefang##29598
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
'|modelnpc 29358
'|modelnpc 29351
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.click Captive Proto-Drake##29708
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
'|modelnpc 29639
step
goto 53.1,65.7
.talk 29592
..turnin 12856
..accept 13063
step
goto 49.7,71.8
.talk 29839
..turnin 13063
..accept 12900
step
goto 47.9,74.7
.kill Icemane Yeti##29875+|n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar##29605+ |q 12989/1 |tip They are inside the cave.
step
goto 54.8,60.4
.clicknpc Injured Icemaw Matriarch##29563
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |goal Icemaw Matriarch Rescued|q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
'|modelnpc 29352
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
goto 49.1,69.4
.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear##30174+ |q 12997/1
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12997
..accept 13061
step
goto 47.5,69.1
.talk 29975
..turnin 13061
..accept 13062
step
goto 50.9,65.6
.talk 29796
..turnin 13062
..accept 12886
step
'You fly off on a drake and start flying in circles around a tower:
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
.kill Hyldsmeet Drakerider##29694+ |n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders |goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
step
goto 33.4,58
.talk 29445
..turnin 13064
..accept 12915
step
goto 27.3,63.7
.kill 12 Nascent Val'kyr##29570+ |q 12942/1
.kill Valkyrion Aspirant##29569+ |n
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
'|model 3891
step
goto 24,61.8
.kill Yulda the Stormspeaker##30046 |q 12968/1
.click Harpoon Crate##8217
..accept 12953
step
goto 26,59.8
.clicknpc Valkyrion Harpoon Gun##30066
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
.' Start 6 Fires|goal 6 Fires Started|q 12953/1
step
'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
'Hearth to K3|goto The Storm Peaks,41.0,85.9,0.5|use Hearthstone##6948|noway|c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader|q 12833/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 48.4,72.1
.talk 30041
..turnin 12925
step
goto 48.4,72.1
.talk 29997
..turnin 12942
..turnin 12968
..turnin 12953
step
goto 75.8,63
.click Granite Boulder##7750+
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giant##29375+  |q 12915/2
.collect Slag Covered Metal##41556 |q 12922 |future |n
.use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.from Seething Revenant##29504+
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.click Granite Boulder##7750
.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill Fjorn##29503 |q 12915/1
step
goto 77.2,62.9
.click Fjorn's Anvil##7481
..turnin 12922
..accept 12956
step
goto 33.4,58
.talk 29445
..turnin 12956
..turnin 12915
..accept 12924
step
goto 62.6,60.9
.talk 32571
..fpath Dun Niffelem
step
goto 65.4,60.2
.talk 30105
..accept 12966
step
goto 75.4,63.6
.talk 30099
..turnin 12966
..accept 12967
step
goto 75.7,63.9
.clicknpc Snorri##30123 |invehicle |c
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
.kill 10 Seething Revenant##30120+ |q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
step
goto 75.4,63.6
.talk 30099
..turnin 12967
step
goto 63.2,63.2
.talk 30127
..turnin 12924
..accept 13009
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.kill Brittle Revenant##30160+ |n
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
.click  Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.click Horn Fragment##8222+
.get 8 Horn Fragment|q 12975/1
step
goto 65.4,60.2
.talk 30105
..turnin 12975
..accept 12976
step
goto 63.2,63.2
.talk 30127
..turnin 12976
step
goto 63.2,62.9
.click Fjorn's Anvil##7481+
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 72.1,51.8
.kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+ |n
.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
.kill Stormforged Ambusher##30208+ |n
.get 8 Stormforged Eye|q 12985/1
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.click Hodir's Helm##8221+
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oil##30325+ |n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
'|modelnpc 30292
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
.kill 1 Jormuttar##30340 |q 13011/1
step
goto 33.4,58
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.click Small Proto-Drake Egg##7398+
.get 5 Small Proto-Drake Egg|q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.' use the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus|goal Veranus Lured|q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 65.4,60.2
.talk 30105
..turnin 13011
step
goto 65.4,60.2
.talk 30105
..'Ask him what has become of Krolmir
.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
step
goto 71.4,48.8
.talk 30390
..turnin 13010
..accept 13057
step
goto 56.3,51.4
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel##29984+ |q 13005/1
.kill 20 Iron Dwarf Assailant##29978+ |q 13005/2
step
goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Eisenfaust##30341 |q 13035/1
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Halefnir the Windborn##30376 |q 13035/2
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Duronn the Runewrought##30353 |q 13035/3
step
goto 56.3,51.4
.talk 30295
..turnin 13005
..turnin 13035
..accept 13047
step
goto 35.9,31.5
.talk 30399
..'Tell him you are with him
.' Witness the Reckoning|goal Witness the Reckoning|q 13047/1
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 40.9,85.3
.talk 29428
..accept 12862
step
goto 40.9,85.3
.talk 29428
..'Tell her you are ready to head further into Storm Peaks
.'You will fly to Frosthold|goto 28.6,74.6,0.5|noway|c
step
goto 29.5,74.3
.talk 29750
..fpath Frosthold
step
goto 29.5,74.1
.talk 29650
..accept 12854
step
goto 29.4,73.8
.talk 29743
..accept 12863
step
goto 28.8,74.1
.talk 29744
..turnin 12862
..accept 12870
step
goto 28.7,74.4
home Frosthold
step
goto 29.2,74.9
.talk 29727
..turnin 12863
..accept 12864
step
goto 29.8,75.7
.talk 29732
..accept 12865
step
goto 36.4,77.3
.talk 29811
..'Ask him if he is okay
.' Locate the Missing Scout|goal Locate Missing Scout|q 12864/1
step
goto 46.5,68.3
.kill Vrykuls |n
.' Get 10 Relics of Ulduar|goal 10 Relic of Ulduar|q 12870/1
step
'Go outside to 44.5,60.4|goto 44.5,60.4
.kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
.collect 8 Fresh Ice Rhino Meat##41340|q 12865
step
goto 36.1,64.1
.click Disturbed Snow##5333
.get Burlap-Wrapped Note|q 12854/1
step
goto 33.2,73.7
.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain|use Fresh Ice Rhino Meat##41340
.' Feed 8 Stormcrest Eagles|goal 8 Stormcrest Eagles fed|q 12865/1
'|modelnpc 29854
step
goto 29.5,74.1
.talk 29650
..turnin 12854
..accept 12855
step
goto 28.8,74.1
.talk 29744
..turnin 12870
step
goto 29.2,74.9
.talk 29727
..turnin 12864
..accept 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12865
..accept 12867
step
goto 33,66.8
.click Eagle Egg##1867+
.get 15 Stormcrest Eagle Egg|q 12867/1
.kill 8 Frostfeather Screecher##29792+ |q 12866/1
.kill 8 Frostfeather Witch##29793+ |q 12866/2
step
goto 36.4,64.1
.' Use the Frosthound's Collar in your bags next to this broken down tent|use Frosthound's Collar##41430
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track down the thief|goal Track down thief|q 12855/1
step
goto 48.5,60.8
.kill Tracker Thulin##29695 |q 12855/2
.collect Brann's Communicator##40971|q 12871
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12855
..accept 12858
step
goto 37.6,43.5
.kill Library Guardian##29724 |n
.collect 6 Inventor's Disk Fragment##41130|n
.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
.get The Inventor's Disk|q 12858/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12858
..accept 12860
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12860/1
'|modelnpc 29746
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12860
..accept 13415
step
goto 37.4,46.8
.click Inventor's Library Console##8177
..turnin 13415
..accept 12872
step
'Click the Charged Disk in your bags|use Charged Disk##44704
.from Archivist Mechaton##29775
.get Norgannon's Shell|q 12872/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12872
..accept 12871
..accept 12885
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12885
..accept 12930
step
'Hearth to Frosthold|goto The Storm Peaks,28.7,74.4,0.5|use Hearthstone##6948|noway|c
step
goto 29.4,73.8
.talk 29743
..turnin 12871
..accept 12873
step
goto 29.2,74.9
.talk 29727
..turnin 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12867
step
goto 30.31,74.8
.talk 29593
..turnin 12873
..accept 12874
step
goto 29.8,75.7
.talk 29732
..'Tell him you are ready for your test|goto The Storm Peaks,53.5,35.1,0.5|c
step
goto 53.6,35.1
.click Battered Storm Hammer##1107
.collect Battered Storm Hammer##42624|q 12874
step
goto 53.5,37.9
.' Use your Battered Storm Hammer on The Iron Watcher repeatedly|use Battered Storm Hammer##42624
.' While he is stunned, run away so the Hammer can recharge
.' When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
.kill The Iron Watcher##30142 |q 12874/1
step
goto 30.31,74.8
.talk 29593
..turnin 12874
..accept 12875
step
goto 29.8,75.7
.talk 29732
..accept 12876
step
goto 27.0,66.9|n
.' The path to An Experienced Guide and Unwelcome Guests starts here|goto The Storm Peaks,27.0,66.9,0.2|noway|c
step
goto 26.3,66.7
.kill 10 Stormforged Invaders|q 12876/1
.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
.get 5 Frostweave Cloth|q 12930/2
step
goto 25.2,68.5
.talk 29751
..turnin 12875
..accept 12877
step
goto 27.1,67.3
.from the Stormforged Monitor##29862
.get Frostgrip's Signet Ring|q 12877/1
step
goto 39.6,59.8
.talk 30052
..turnin 12877
..accept 12986
step
goto 52.6,56.9
.' Use Creteus's Mobile Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Winter|goal Temple of Winter Investigated|q 12986/2
step
goto 64.3,46.7
.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Life|goal Temple of Life Investigated|q 12986/3
step
goto 53.5,42.3
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Order|goal Temple of Order Investigated|q 12986/4
step
goto 45.6,49.2
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Invention|goal Temple of Invention Investigated|q 12986/1
step
goto 39.6,59.8
.talk 30052
..turnin 12986
..accept 12878
step
goto 41.5,62.1|n
.' The path to The Hidden Relic starts here|goto The Storm Peaks,41.5,62.1,0.2|noway|c
step
goto 44.5,64.5
.click The Guardian's Charge##1387
..turnin 12878
..accept 12879
step
goto 38.2,61.7
.talk 30082
..turnin 12879
..accept 12880
step
goto 39.6,56.4
.talk 30382
..turnin 12880
..accept 12973
step
.click Brann's Flying Machine##34120
.kill the dwarves that jump on the plane as you fly|n
.' Accompany Brann Bronzebeard to Frosthold|goal Accompany Brann Bronzebeard to Frosthold. |q 12973/1
step
goto 30.3,74.8
.talk 30401
..turnin 12973
step
goto 29.8,75.7
.talk 29732
..turnin 12876
..accept 12869
step
goto 44.6,59.8
.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
.kill 16 Stormpeak Wyrm##29753+ |q 12869/1
step
goto 29.8,75.7
.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
.talk 29732
..turnin 12869
step
goto 28.3,29.4
.click Enchanted Earth##8194
.get 7 Enchanted Earth|q 12930/1
step
goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
home Bouldercrag's Refuge
step
goto 28.1,36.7
.from Stormforged Raider##29377+, Stormforged Reaver##29382+ |n
.kill 10 Stormforged Attacker|q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders|goal 8 Fallen Earthen Defenders healed|q 12937/1
'|modelnpc 30035
step
goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7|goto 27.5,49.7
.kill 3 Stormforged Taskmaster##29369+ |q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
.clicknpc Ore Cart##25986
.get 5 Dark Ore Sample|q 12964/1
step
goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
step
goto 25,42.9
.from Stormforged Champion##29370+, Stormforged Magus##29374+, Stormforged War Golem##29380+
.kill 10 Nidavelir Stormforged|q 12978/1
step
goto 24,42.6
.click Loken's Fury##8224
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.click Loken's Power##8224
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.click Loken's Favor##8224
.' Destroy Loken's Favor |q 12965/3
step
goto 25,42.9
.from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
.kill 10 Nidavelir Stormforged|q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
goto 31.4,38.1
.talk 29801
..turnin 12965
step
goto 31.3,38.2
.talk 30152
..turnin 12978
..turnin 12979
..accept 12980
step
'The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c
step
goto 32.0,40.7
.talk 30190
.' Tell him you found a strange armor plate
.' Investigate the Armor Plate |q 12980/1
step
'Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c
step
goto 31.3,38.2
.talk 30152
..turnin 12980
step
goto 31.4,38.1
.talk 29801
..accept 12984
step
goto 24.4,52.1
.' Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
.' Help fight Valduran the Stormborn
.kill Valduran the Stormborn##29368 |q 12984/1
step
goto 31.4,38.1
.talk 29801
..turnin 12984
..accept 12988
step
goto 31.3,38.2
.talk 30152
..accept 12991
step
goto 29.0,45.8
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the North Lightning Forge |q 12988/1
step
goto 29.5,45.9
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the Central Lightning Forge |q 12988/2
step
goto 30.2,46.1
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the South Lightning Forge |q 12988/3
step
goto 30.0,46.3
.kill 10 Stormforged Artificer##29376 |q 12991/1
step
goto 31.4,38.1
.talk 29801
..turnin 12988
step
goto 31.3,38.2
.talk 30152
..turnin 12991
step
goto 31.4,38.1
.talk 29801
..accept 12993
step
goto 28.9,44.1
.click Colossus Attack Specs##210
.get Click the Colossus Attack Specs |q 12993/1
step
goto 29.9,45.8
.click Colossus Defense Specs##210
.get Click the Colossus Defense Specs |q 12993/2
step
goto 31.4,38.1
.talk 29801
..turnin 12993
..accept 12998
step
'The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 36.2,60.9
.click Heart of the Storm##7800
.' Attempt to Secure the Heart of the Storm |q 12998/1
step
'Go outside |goto 32.4,63.9,0.5 |c
step
goto 31.4,38.1
.talk 29801
..turnin 12998
..accept 13007
step
goto 27.2,35.9
.click Jormungar Control Orb##7951
.' Start controlling a Jormungar |invehicle |c |q 13007
step
goto 27.2,42.0
.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
.kill Iron Colossus##30300 |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
step
label "Daily"
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006 |daily
step
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
only if rep ('The Sons of Hodir')>=Honored
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981 |daily
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977 |daily
step
goto 55.6,63.4
.from Viscous Oil##30325+
.get 5 Viscous Oil |q 13006/1
step
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
only if rep ('The Sons of Hodir')>=Honored
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
only if rep ('The Sons of Hodir')>=Honored
step
'Leave the cave |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
only if rep ('The Sons of Hodir')>=Honored
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.click Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' Click here to reset the daily quests. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
' Become honored with The Sons of Hodir |condition rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
' Become Revered with The Sons of Hodir |condition rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 56.4,65.0
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
' Become Exalted with The Sons of Hodir |condition rep('The Sons of Hodir')==Exalted |next "BuyMount"
step
label "BuyMount"
goto 66.0,61.4
.talk 32540
.buy 1 Reins of the Ice Mammoth##44080
.buy 1 Reins of the Grand Ice Mammoth##43961
'|modeldisplay 27242
'|modeldisplay 27239
step
.learnmount Ice Mammoth##59799 |use Reins of the Ice Mammoth##43958
.learnmount Grand Ice Mammoth##61470 |use Reins of the Grand Ice Mammoth##43961
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden King",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(90621)
model 36213
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs to be _level 25_
.' _Guild Level 25_ |achieve 4912
step
goto Stormwind City,64.6,76.8
.talk 46602
.buy 1 Reins of the Golden Lion King##62298
'|modeldisplay 36213
step
.learnmount Golden King##90621 |use Reins of the Golden Lion King##62298
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Fossilized Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(84751)
model 34410
step
'This mount is a _rare Archaeology "Fossil"_ solve
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
.talk 44238 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
|confirm |only if default
step
'Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Raptor"_. Solve this Archaeology puzzle
.collect 1 Fossilized Raptor##60954
'|modeldisplay 34410
step
.learnmount Fossilized Raptor##84751 |use Fossilized Raptor##60954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Ultramarine Qiraji Battle Tank",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(92155)
model 15678
step
'This mount is a _rare Archaeology "Tol'vir"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
.talk 44238 |only if skillmax("Archaeology")<1
'Use the _Archaeology profession_ section of this guide to reach _450 Archaeology_ |only if skill("Archaeology")<450
.skill Archarology,450
step
'Open your _world map_, find dig sites in _Kalimdor_ and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Scepter of Azj'Aqir"_. _Solve_ this Archaeology puzzle |tip This is a very rare Archaeology solve. You might be doing archeology for a while.
.collect 1 Scepter of Azj'Aqir##64883
'|modeldisplay 15678
step
.learnmount Ultramarine Qiraji Battle Tank##92155 |use Scepter of Azj'Aqir##64883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22717)
model 14337
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black War Steed Bridle##29468
'|modeldisplay 14337
step
.learnmount Black War Steed##22717 |use Black War Steed Bridle##29468
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Ram",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22720)
model 14577
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black War Ram##29467
'|modeldisplay 14577
step
.learnmount Black War Ram##22720 |use Black War Ram##29467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Elekk",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(48027)
model 23928
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Reins of the Black War Elekk##35906
|modeldisplay 23928
step
.learnmount Black War Elekk##48027 |use Reins of the Black War Elekk##35906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Tiger",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22723)
model 14330
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Reins of the Black War Tiger##29471
'|modeldisplay 14330
step
.learnmount Black War Tiger##22723 |use Reins of the Black War Tiger##29471
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black Battlestrider",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22719)
model 14372
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Stormwind City,76.2,65.6
.talk 12783
.buy 1 Black Battlestrider##29465
'|modeldisplay 14372
step
.learnmount Black Battlestrider##22719 |use Black Battlestrider##29465
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Stormpike Battle Charger",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(23510)
model 14777
step
.' In order to earn this mount, you will need to run Alterac Valley and become Exalted with the Frostwolf Clan.
.' Click here to move to the next step of the guide. |confirm
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
|fly Refuge Pointe
step
'Go _west_ to _Hillsbrad Foothills_ |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,44.6,46.6
.talk 13217
.buy 1 Stormpike Battle Charger##19030
'|modeldisplay 14777
step
.learnmount Stormpike Battle Charger##23510 |use Stormpike Battle Charger##19030
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(59785)
model 25450
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
.' You cannot buy this mount unless your faction owns Wintergrasp.
|confirm
step
#include borean
step
|fly Wintergrasp
step
goto 51.6,17.6
.talk 32294
.buy 1 Reins of the Black War Mammoth##43956
'|modeldisplay 25450
step
.learnmount Black War Mammoth##59785 |use Reins of the Black War Mammoth##43956
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark Talbuk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(34790) and hasmount(39316)
model 19303
step
'In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
|confirm
step
'Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 350 total but can only have 100 at a time.
'When you get 100 Samples complete the quest _"Oshu'gun Crystal Powder"_ until you have 35 Halaa Research Tokens.
|confirm
step
goto Nagrand 41.2,44.2
.talk 18816
..accept 10075 |daily
..turnin 10075 |daily
.collect 35 Halaa Research Token##26044
step
'In order to obtain Halaa Battle Tokens you will need to defeat enemy players within or around Halaa
.collect 170 Halaa Battle Token##26045
step
goto 42.8,42.6
.talk 21474
.buy 1 Reins of the Dark War Talbuk##29228
.buy 1 Reins of the Dark Riding Talbuk##28915
|modeldisplay 19303
|modeldisplay 21074
step
.learnmount Dark War Talbuk##34790 |use Reins of the Dark War Talbuk##29228
.learnmount Dark Riding Talbuk##39316 |use Reins of the Dark Riding Talbuk##28915
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Bear",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(60119)
model 27819
step
'This mount is a reward for completing the _"For The Alliance!"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect 1 Black War Bear##44224
|modeldisplay 27819
step
.learnmount Black War Bear##60119 |use Black War Bear##44224
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Steed",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(100332)
model 38668
step
'This mount is a reward for completing the _"Veteran of the Alliance"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect 1 Vicious War Steed##70909
|modeldisplay 38668
step
.learnmount Vicious War Steed##100332 |use Vicious War Steed##70909
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Qiraji Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(25953) and hasmount(26056) and hasmount(26054) and hasmount(26055)
model 15681
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
.' You can easily acquire these mounts with _2-3 other level 85_ people in your group
|confirm
step
|fly Menethil Harbor
step
#include theramoreisle
step
|fly Cenarion Hold
step
goto Ahn'Qiraj: The Fallen Kingdom,46.9,7.7 |n
.' Enter _Temple of Ahn'Qiraj_ here |goto Ahn'Qiraj |noway |c
step
'Traverse through Temple of Ahn'Qiraj
.' Kill any and all mobs in the instance
.collect 1 Blue Qiraji Resonating Crystal##21218
.collect 1 Green Qiraji Resonating Crystal##21323
.collect 1 Red Qiraji Resonating Crystal##21321 |tip Why? Because It's Red!
.collect 1 Yellow Qiraji Resonating Crystal##21324
'|modeldisplay 15672
'|modeldisplay 15679
'|modeldisplay 15681
'|modeldisplay 15680
step
.learnmount Blue Qiraji Battle Tank##25953 |use Blue Qiraji Resonating Crystal##21218
.learnmount Green Qiraji Battle Tank##26056 |use Green Qiraji Resonating Crystal##21323
.learnmount Red Qiraji Battle Tank##26054 |use Red Qiraji Resonating Crystal##21321
.learnmount Yellow Qiraji Battle Tank##26055 |use Yellow Qiraji Resonating Crystal##21324
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Fiery Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(36702)
model 19640
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
.' You can easily acquire this mount with _2-3 other level 85_ people in your group
|confirm
step
|fly Darkshire
step
'Go _east_ to _Deadwind Pass_ |goto Deadwind Pass |noway |c
step
goto Deadwind Pass,47.0,74.8 |n
.' Enter _Karazhan_ here |goto Karazhan |noway |c
step
'_Traverse_ through _Karazhan_ |tip Make sure you kill every mob here, as they will attack you if they're are not dead and you engage Attumen
goto Karazhan,45.7,83.3
.from Attumen the Huntsman##16152+
.collect 1 Fiery Warhorse's Reins##30480 |tip This has a .9% drop rate, be sure to come back here every week to have a better chance of obtaining it!
'|modeldisplay 19640
step
.learnmount Fiery Warhorse##36702 |use Fiery Warhorse's Reins##30480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Ashes of Al'ar",[[
author support@zygorguides.com
condition end hasmount(40192)
model 17890
step
'This mount is dropped by Kael'thas Sunstrider in the Eye raid.
.from Kael'thas Sunstrider |n
.collect 1 Ashes of Al'ar##32458
|modeldisplay 17890
step
.learnmount Ashes of Al'ar##40192 |use Ashes of Al'ar##32458
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Grand Black War Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(61467)
model 27241
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
.' You can easily aquire this mount with _5-6 other level 85_ people in your group
.' You cannot obtain this mount unless your faction owns Wintergrasp.
|confirm
step
#include "rideto_borean"
step
|fly Warsong Camp
step
goto Wintergrasp
step
'_Traverse_ through _Vault of Archavon_
.from Archavon the Stone Watcher##31125
.from Toravon the Ice Watcher##38433
.from Emalon the Storm Watcher##33993
.from Koralon the Flame Watcher##35013
.collect 1 Reins of the Grand Black War Mammoth##44083 |tip This has an extremely low drop rate off each boss (Less than 1%)
|modeldisplay 27241
step
.learnmount Grand Black War Mammoth##61467 |use Reins of the Grand Black War Mammoth##44083
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Spectral Tigers",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(42777)
model 21974
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 21974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Big Battle Bear",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(51412)
model 25335
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 25335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Wooly White Rhino",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74918)
model 31721
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Savage Raptor",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(97581)
model 38048
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Swift Shorestrider",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(101573)
model 17011
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Magic Rooster",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(65917)
model 29344
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 29344
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\White Riding Camel",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102488)
model 35899
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 35899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Riding Turtle",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(30174)
model 17158
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17158
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket X-TREME",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46199)
model 23647
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23647
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46197)
model 23656
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23656
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Mottled Drake",[[
description These mounts can only be obtained be
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(93623)
model 37231
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Amani Dragonhawk",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(96503)
model 37800
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Blazing Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74856)
model 31803
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31803
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Trading Card Game\\Corrupted Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102514)
model 38972
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38972
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Grey Riding Camel",[[
condition end hasmount(88750)
model 35135
step
'This mount drops off a rare spawn called Dormus the Camel-Hoarder. You get to him by clicking the Mysterious Camel Figurines around Uldum. They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
'Go to Uldum |goto Uldum |noway |c
step
.from Dormus the Camel-Hoarder |n
.collect 1 Reins of the Grey Riding Camel##63046
|modeldisplay 35135
step
.learnmount Grey Riding Camel##88750 |use Reins of the Grey Riding Camel##63046
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Proto Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59996)
model 28041
step
#include howlingfjord
step
goto Howling Fjord,57.3,46.6 |n
.' Enter _Heroic Utgarde Pinnacle_ here |goto Utgarde Pinnacle |noway |c |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
goto Utgarde Pinnacle,68.3,35.5
.from Skadi the Ruthless##26693
.collect 1 Reins of the Blue Protodrake##44151 |tip This has a 1.2% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 28041
step
.learnmount Blue Protodrake##59996 |use Reins of the Blue Protodrake##44151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59569)
model 27812
step
'Obtaining this mount is much easier with a group
|fly Menethil Harbor
step
#include theramoreisle
step
|fly Gadgetzan
step
goto 65.1,49.9 |n
.' Enter the _Caverns of Time_ here |goto Tanaris,65.1,49.9,0.5 |noway |c
step
goto 60.8,62.0 |n
.' Enter _Heroic The Culling of Stratholme_ here |goto The Culling of Stratholme |noway |c |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
goto The Culling of Stratholme,86.5,61.6
.talk 26527
.' Tell her you know what's going on and to skip ahead to the real action
..' Say "Yes, please!" |goto The Culling of Stratholme,47.4,18.6,0.5 |noway |c |tip This will start the timed event
step
'Traverse through The Culling of Stratholme instance |tip Make sure you make it to this next point with the timer still on, otherwise you will not receive the bronze drake.
goto 51.6,41.6
.from Infinite Corruptor##32273
.collect 1 Reins of the Bronze Drake##43951
'|modeldisplay 27812
step
.learnmount Bronze Drake##59569 |use Reins of the Bronze Drake##43951
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Drake of the North Wind",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(88742)
model 35755
step
'Use the _dungeon finder_ to take you to _The Vortex Pinnacle_ |tip It is much easier to obtain this mount with friends that will let you have it
.' Go to The Vortex Pinnacle |goto The Vortex Pinnacle |noway |c
step
'_Traverse_ through _The Vortex Pinnacle_ instance
goto 52.2,80.2
.from Altairus##43873
.collect 1 Reins of the Drake of the North Wind##63040 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 35755
step
.learnmount Drake of the North Wind##88742 |use Reins of the Drake of the North Wind##63040
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Vitreous Stone Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(88746)
model 35751
step
'Use the _dungeon finder_ to take you to _The Stonecore_ |tip It is much easier to obtain this mount with friends that will let you have it
.' Go to _The Stonecore_ |goto The Stonecore |noway |c
step
'_Traverse_ through _The Stonecore_ instance
goto The Stonecore,36.6,45.8
.from Slabhide##43214
.collect 1 Reins of the Vitreous Stone Drake##63043 |tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
'|modeldisplay 35751
step
.learnmount Vitreous Stone Drake##88746 |use Reins of the Vitreous Stone Drake##63043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59568)
model 25256
step
'Gather up 3 friends and run to the Oculus on Heroic Difficulty |tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
.' Go to _The Oculus_ |goto The Oculus |noway |c
step
'_Traverse_ through _The Oculus_ instance
.from Ley-Guardian Eregos##27656
.click Cache of Eregos##51
.collect Cache of the Ley-Guardian
.' Open up the Cache of the Ley-Guardian in your bags |use Cache of the Ley-Guardian##52676 |tip This has a very low chance of dropping the mount. (About 1.4%)
.collect 1 Reins of the Blue Drake##43953
|modeldisplay 25256
step
.learnmount Blue Drake##59568 |use Reins of the Blue Drake##43953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Gryphons",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(32240) and hasmount(32235) and hasmount(32239) and hasmount(32289) and hasmount(32292) and hasmount(32290) and hasmount(32242)
model 35521,36787,35534,35548,34878,34879,35358
step
goto Stormwind City,71.4,72.2
.talk 43768
.buy 1 Swift Blue Gryphon##25473
.buy 1 Swift Green Gryphon##25528
.buy 1 Swift Purple Gryphon##25529
.buy 1 Swift Red Gryphon##25527
.buy 1 Ebon Gryphon##25471
.buy 1 Golden Gryphon##25470
.buy 1 Snowy Gryphon##25472
'|modeldisplay 17759
'|modeldisplay 17703
'|modeldisplay 17717
'|modeldisplay 17718
'|modeldisplay 17694
'|modeldisplay 17697
'|modeldisplay 17696
step
.learnmount Swift Blue Gryphon##32242 |use Swift Blue Gryphon##25473
.learnmount Swift Green Gryphon##32290 |use Swift Green Gryphon##25528
.learnmount Swift Purple Gryphon##32292 |use Swift Purple Gryphon##25529
.learnmount Swift Red Gryphon##32289 |use Swift Red Gryphon##25527
.learnmount Ebon Gryphon##32239 |use Ebon Gryphon##25471
.learnmount Golden Gryphon##32235 |use Golden Gryphon##25470
.learnmount Snowy Gryphon##32240 |use Snowy Gryphon##25472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Armored Snowy Gryphon",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(61229)
model 34889
step
'This _mount_ costs _2000_ gold. ||tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include borean
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Armored Snowy Gryphon##44689
'|modeldisplay 34889
step
.learnmount Armored Snowy Gryphon##61229 |use Armored Snowy Gryphon##44689
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Vial of the Sands",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(93326)
model 35750
step
'You will need at least 29,000 gold to obtain this mount
.' Click this line to skip to the next step |confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")==525
|next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label "AlchemistVialoftheSandsLearn"
'Since you're an Alchemist you can make this item yourself:
.' Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
.' Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
.collect Canopic Jar##64657 |n
.' Click the Canopic Jars |use Canopic Jar##64657
.collect 1 Recipe: Vial of the Sands##67538
.' Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")==525
step
'Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
.learn Vial of the Sands##93328
next "FarmVialoftheSands" |only if skill("Alchemy")==525
only if skill("Alchemy")==525
step
label "AHVialoftheSands"
goto Stormwind City,61.1,70.6
.talk 8719
.buy 1 Vial of the Sands##65891 |next "learn"
.' Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label "FarmVialoftheSands"
goto 61.1,70.6
.talk 8719
.buy 12 Truegold##58480
.buy 8 Flask of the Winds##58087
.buy 8 Flask of Titanic Strength##58088
.buy 8 Deepstone Oil##56850
.' If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
goto Stormwind City,75.2,20.5 |n
.' Click the Portal to Uldum |tip It looks like a big yellow swirling portal in front of some big stone slabs.
.' Teleport to Uldum |goto Uldum |noway |c
step
goto Uldum,26.6,7.2
.talk 49406
.buy 8 Sands of Time##65893
.buy 1 Pyrium-Laced Crystalline Vial##65892
step
#include hearth_hub
step
.create Vial of the Sands##93328,Alchemy,1 total |only if skill("Alchemy")>=525
'Find an Alchemist to make your Vial of the Sands |tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
.collect 1 Vial of the Sands##65891
'|modeldisplay 35750
step
label "learn"
.learnmount Sandstone Drake##93326 |use Vial of the Sands##65891
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Pre-Quests(Do-First)",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
condition end hasmount(39803) and hasmount(39798) and hasmount(39801) and hasmount(39800) and hasmount(39802)
step
#include "darkportal"
step
|fly Shattrath
step
goto Shattrath City,64.3,42.3
.talk 23449
..accept 11096
step
|fly Allerian Stronghold
step
goto Terokkar Forest,21.8,16.1
.from 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1
.' You can find more around here [24.4,8.9]
step
goto Shattrath City,64.3,42.3
.talk 23449
..turnin 11096
..accept 11098
step
|fly Allerian Stronghold
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto 63.5,65.8
.talk 23415
..accept 11093
step
goto 64.0,66.9
.talk 23042
..accept 11004
step
goto 61.4,81.8
.' Use your Nether Ray Cage |use Nether Ray Cage##32834 |tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
.from Blackwind Warp Chaser##23219+
.' You can find more Warp Chasers here [64.5,84.4]
.get 10 Nether Ray Meal |q 11093/1
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.get 6 Shadow Dust |q 11004/1
.' You can find more here [69.5,85.5]
.' Here[73.2,87.9]
.' Here[75.2,81.3]
.' And here [69.2,74.1]
step
goto Terokkar Forest,64.0,66.9
.talk 23042
..turnin 11004
step
goto 63.5,65.8
.talk 23415
..turnin 11093
step
goto 64.1,66.9
.talk 23038
..accept 11005
step
goto 69.7,74.7
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto 70.1,74.5
.kill Talonpriest Zellek##23068 |q 11005/3
step
goto 69.3,78.1
.kill Talonpriest Ishaal##23066+ |q 11005/1
.collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
..accept 11021
step
goto 69.8,81.8
.kill Talonpriest Skizzik##23067+ |q 11005/2
step
goto 64.1,66.9
.talk 23038
..turnin 11005
..turnin 11021
..accept 11024
step
|fly Shattrath
step
goto 52.5,21.0
.talk 22292
..turnin 11024
..accept 11028
step
|fly Allerian Stronghold
step
goto Terokkar Forest,64.1,66.9
.talk 18940
..turnin 11028
step
goto 64.2,66.9
.talk 23306
..accept 11056
step
goto 74.8,80.1
.click Hazzik's Package##6396
.get Hazzik's Package |q 11056/1
step
goto 64.3,66.9
.talk 23306
..turnin 11056
..accept 11029
step
goto 66.2,77.5
.' Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
.' Wear the Shabby Arakkoa Disguise |havebuff Interface\Icons\INV_Misc_Birdbeck_01
step
goto 67.0,79.7
.talk 23363
.buy Adversarial Bloodlines##32742 |q 11029
step
goto 64.3,66.9
.talk 23306
..turnin 11029
..accept 11885
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388 |q 11885 |future
.' You can find more here [69.5,85.5]
.' Here[73.2,87.9]
.' Here[75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant
..collect 2 Elixir of Shadows##32446+ |q 11885 |future
step
' This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
|confirm always
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' Here[73.2,87.9]
.' Here[75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.kill Darkscreecher Akkarai##23161 |q 11885/1
.collect Akkarai's Talons##32715
.kill Karrog##23165 |q 11885/2
.collect Karrog's Spine##32717
.kill Gezzarak the Huntress##23163 |q 11885/3
.collect Gezzarak's Claws##32716
.kill Vakkiz the Windrager##23204 |q 11885/4
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto 64.2,66.9
.talk 23306
..turnin 11885
..accept 11074 |instant
step
goto 64.1,66.9
.talk 23038
..accept 11073
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
goto 64.1,66.9
.talk 23038
..turnin 11073
step
' This is the end of the Pre-quests. You can do the Daily Quests and you should be friendly, or close to it by now.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Dailies",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
condition end hasmount(39803) and hasmount(39798) and hasmount(39801) and hasmount(39800) and hasmount(39802)
step
label	"menu"
'You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
.' Click here to do the Dailys and then grind |confirm always |next "dailies" |or
.' or
.' Click here to grind for reputation |confirm always |next "grind" |or
step
label	"dailies"
goto Terokkar Forest,64.5,66.7
.talk 23048
..accept 11008 |daily
step
goto 63.1,80.0
.' Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
.' Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
.Destroy 20 Monstrous Kaliri Eggs |q 11008/1
.' You can find more eggs here:  goto [61.3,79.9]
.' Here [67.5,79.3]
.' Here [68.0,85.6]
.' and here [70.3,84.5]
'|model 378
step
goto 64.5,66.7
.talk 23048
..turnin 11008 |daily
step
goto 61.0,75.6
.talk 23383
..accept 11085 |daily
.' He can also be found here: [68.4,74.0]
.' and here: [75.0,86.5]
step
.' Escort the Skyguard Prisoner to the bottom of the bridge |tip Help him kill any mobs on the way down.
.' Rescue the Skyguard Prisoner. |q 11085/1 |daily
'|modelnpc 23383
step
goto 64.5,66.7
.talk 23048
..turnin 11085
step
label	"grind"
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388
.' You can find more here [69.5,85.5]
.' Here[73.2,87.9]
.' Here[75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant |n
..collect 2 Elixir of Shadows##32446
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' Here[73.2,87.9]
.' Here[75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.from Darkscreecher Akkarai##23161
.collect Akkarai's Talons##32715
.from Karrog##23165
.collect Karrog's Spine##32717
.from Gezzarak the Huntress##23163
.collect Gezzarak's Claws##32716
.from Vakkiz the Windrager##23204
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto Terokkar Forest,64.3,66.9
.talk 23306
..accept 11074 |instant |n
.collect Time-Lost Offering##32720
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
|next "menu" |only if rep("Sha'tari Skyguard")<=Revered
|next |only if rep("Sha'tari Skyguard")==Exalted
step
goto 64.3,66.2
.talk 23367
.buy Green Riding Nether Ray##32314
.buy Red Riding Nether Ray##32317
.buy Blue Riding Nether Ray##32319
.buy Purple Riding Nether Ray##32316
.buy Silver Riding Nether Ray##32318
'|modeldisplay 21152
'|modeldisplay 21158
'|modeldisplay 21156
'|modeldisplay 21157
'|modeldisplay 21155
step
.learnmount Green Riding Nether Ray##39798 |use Green Riding Nether Ray##32314
.learnmount Red Riding Nether Ray##39800 |use Red Riding Nether Ray##32317
.learnmount Blue Riding Nether Ray##39803 |use Blue Riding Nether Ray##32319
.learnmount Purple Riding Nether Ray##39801 |use Purple Riding Nether Ray##32316
.learnmount Silver Riding Nether Ray##39802 |use Silver Riding Nether Ray##32318
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518)
model 21524
step
'Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
step
goto Shadowmoon Valley,62.9,59.5
.talk 22113
..accept 10804
step
goto 60.5,57.7
.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
.collect Rocknail Flayer Giblets##31373 |n
.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 60.5,57.7
.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
.' Feed 8 Netherwing Drakes |q 10804/1
step
goto 62.9,59.5
.talk 22113
..turnin 10804
..accept 10811
step
goto 68.2,60.4
.talk 21657
..turnin 10811
..accept 10814
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
.kill 15 Dragonmaw Orc |q 10836/1
step
goto 68.2,60.4
.talk 21657
..turnin 10836
..accept 10837
step
goto 64.1,80.7
.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
.get 12 Nethervine Crystal |q 10837/1
step
goto 68.2,60.4
.talk 21657
..turnin 10837
..accept 10854
step
goto 67.4,59.3
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
..' Free 5 Enslaved Netherwing Drakes |q 10854/1
step
goto 68.2,60.4
.talk 21657
..turnin 10854
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
goto 62.9,59.5
.talk 22113
..turnin 10870
..accept 11012 |instant
..accept 11013
step
goto 66.2,85.7
.talk 23139
..turnin 11013
..accept 11014
step
goto 66.1,86.4
.talk 23140
..turnin 11014
step
goto 66.0,86.5
.talk 23141
..accept 11019 |instant
..accept 11049
step
goto 68.5,61.2
.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
.get 1 Netherwing Egg |q 11049/1
step
goto 66.0,86.5
.talk 23141
..turnin 11049
step
label "Daily"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.3,90.2 |n
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
.' Click here to go back to the first daily for tomorrow. |confirm |next "Daily"
' Become Friendly with the Netherwing. |condition rep('Netherwing')>=Friendly |next "F_PreQuest"
step
label "F_PreQuest"
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11053
step
goto 66.2,85.7
.talk 23139
..turnin 11053
step
goto 66.1,86.4
.talk 23140
..accept 11075
step
goto 66.8,86.1
.talk 23291
..accept 11054
step
goto 65.4,90.2
.talk 23149
..turnin 11075
step
'Go inside the mine to 71.6,87.6
.talk 23166
..accept 11083
step
goto 73.7,88.1
.kill 1 Crazed Murkblood Foreman |q 11083/1
.kill 5 Crazed Murkblood Miner |q 11083/2
step
goto 71.6,87.6
.talk 23166
..turnin 11083
step
goto 64.8,85.6
.from Black Blood of Draenor##23286+
.collect Sludge-covered Object##32724+ |n
.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
.collect Murkblood Escape Plans##32726 |n
.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
..accept 11081
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11081
..accept 11082
step
'Go inside the mine and follow the path to 73.0,82.2
.talk 23309
..' Tell him you are here for him
.' Gather Murkblood Information |q 11082/1
.get Hand of the Overseer |q 11082/2
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around 60.4,45.2
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
step
label "Daily2"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if yu have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
.' Click here to go back to the daillies for tomorrow. |confirm |next "Daily2"
' Become Honored with the Netherwing. |condition rep('Netherwing')>=Honored |next "H_PreQuest"
step
label "H_PreQuest"
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11084
step
goto 66.2,85.7
.talk 23139
..turnin 11084
step
goto 65.9,87.2
.talk 22433
..accept 11063 |instant
step
goto 65.2,85.7
.talk 23340
..accept 11064
.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
.' Defeat Murg "Oldie" Muckjaw |q 11064/1
step
goto 65.9,87.2
.talk 22433
..turnin 11064
step
goto 65.2,85.5
.talk 23342
..accept 11067
.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
.' Defeat Trope the Filth-Belcher |q 11067/1
step
goto 65.9,87.2
.talk 22433
..turnin 11067
step
goto 65.2,85.2
.talk 23344
..accept 11068
.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
.' Defeat Corlok the Vet |q 11068/1
step
goto 65.9,87.2
.talk 22433
..turnin 11068
step
goto 65.2,85.0
.talk 13437
..accept 11069
.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
.' Defeat Wing Commander Ichman |q 11069/1
step
goto 65.9,87.2
.talk 22433
..turnin 11069
step
goto 65.2,84.9
.talk 13181
..accept 11070
.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
.' Defeat Wing Commander Mulverick |q 11070/1
step
goto 65.9,87.2
.talk 22433
..turnin 11070
step
goto 65.5,85.3
.talk 23348
..accept 11071
.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
.' Defeat Captain Skyshatter |q 11071/1
step
goto 65.9,87.2
.talk 22433
..turnin 11071
step
label "Daily3"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 66.2,85.7
.talk 23139
..accept 11086 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
step
.' Click here to go back to the daillies for tomorrow. |confirm |next "Daily3"
' Become Revered with the Netherwing. |condition rep('Netherwing')>=Revered |next "R_PreQuest"
step
label "R_PreQuest"
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11092
step
goto 66.2,85.7
.talk 23139
..turnin 11092
..accept 11094 |only if rep ('The Scryers') >= Friendly
..accept 11099 |only if rep ('The Aldor') >= Friendly
step
goto 74.5,86.3
.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
.collect Partially Digested Hand##32621 |n
.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
..accept 11041
step
goto 70.2,84.3
.kill Barash the Den Mother |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer |q 11041/1
step
goto 66.2,85.7
.talk 23139
..turnin 11041
step
goto 56.3,59.6
.talk 21955
..turnin 11094
..accept 11095
only if rep ('The Scryers') >= Friendly
step
goto 56.5,58.7
.talk 23434
..turnin 11095
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 11099
..accept 11100
only if rep ('The Aldor') >= Friendly
step
goto 62.4,29.3
.talk 23452
..turnin 11100
only if rep ('The Aldor') >= Friendly
step
label "Daily4"
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
..' You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 66.2,85.7
.talk 23139
..accept 11086 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 56.5,58.7
.talk 23434
..accept 11097
.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
.' Protect Commander Hobb, he must survive
.' Defeat the Dragonmaw Forces |q 11097/1
only if rep ('The Scryers') >= Friendly
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 62.4,29.3
.talk 23452
..accept 11101
.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
.' Protect Commander Arcus, he must survive
.' Defeat the Dragonmaw Forces |q 11101/1
only if rep ('The Aldor') >= Friendly
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
..turnin 11097 |only if rep ('The Scryers') >= Friendly
..turnin 11101 |only if rep ('The Aldor') >= Friendly
step
.' Click here to go back to the daillies for tomorrow. |confirm |next "Daily4"
' Become Exalted with the Netherwing. |condition rep('Netherwing')==Exalted |next "E_PreQuest"
step
label "E_PreQuest"
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
step
goto Shattrath City,66.6,16.4
.talk 23433
..turnin 11108
step
goto 66.8,17.6
.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
..accept 11113 |instant |or
..accept 11114 |instant |or
..accept 11112 |instant |or
..accept 11111 |instant |or
..accept 11110 |instant |or
..accept 11109 |instant |or
step
goto Shadowmoon Valley,65.7,86.0
.talk 23489
.buy 1 Reins of the Azure Netherwing Drake##32858
.buy 1 Reins of the Cobalt Netherwing Drake##32859
.buy 1 Reins of the Violet Netherwing Drake##32862
.buy 1 Reins of the Purple Netherwing Drake##32860
.buy 1 Reins of the Veridian Netherwing Drake##32861
.buy 1 Reins of the Onyx Netherwing Drake##32857
'|modeldisplay 21521
'|modeldisplay 21525
'|modeldisplay 21524
'|modeldisplay 21523
'|modeldisplay 21522
'|modeldisplay 21520
step
.learnmount Azure Netherwing Drake##41514 |use Reins of the Azure Netherwing Drake##32858
.learnmount Cobalt Netherwing Drake##41515 |use Reins of the Cobalt Netherwing Drake##32859
.learnmount Violet Drake##41518 |use Reins of the Violet Netherwing Drake##32862
.learnmount Purple Netherwing Drake##41516 |use Reins of the Purple Netherwing Drake##32860
.learnmount Veridian Netherwing Drake##41517 |use Reins of the Veridian Netherwing Drake##32861
.learnmount Oynx Netherwing Drake##41513 |use Reins of the Onyx Netherwing Drake##32857
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Drake of the West Wind",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88741)
model 35754
daily
step
' This will require that you be exalted with the Baradin Wardens.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' Spectral Steed costs 200 Tol Barad Commendations.
.earn 200 Tol Barad Commendation##391
.' _Exalted_ with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted
.' Click here to move on to the daillies. |confirm
step
goto Stormwind City,73.2,18.4
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to continue |confirm
step
goto Tol Barad Peninsula,72.9,60.9
.talk 48254
..accept 28275 |daily
..accept 27987 |daily
..accept 27978 |daily
..accept 27991 |daily
..accept 27975 |daily
..accept 27973 |daily
step
goto 73.4,59.2
.talk 47240
..accept 28059 |daily
..accept 28063 |daily
..accept 28130 |daily
..accept 28137 |daily
..accept 28065 |daily
step
goto 73.7,57.6
.talk 48255
..accept 27948 |daily
..accept 27972 |daily
..accept 27970 |daily
..accept 27971 |daily
..accept 28050 |daily
..accept 27944 |daily
step
goto 74.8,59.6
.talk 48250
..accept 28046 |daily
..accept 27967 |daily
..accept 27992 |daily
..accept 27966 |daily
..accept 27949 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 27978/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 27987/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28137/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28130/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+ |q 27944/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 27948/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 27972/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28063/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 27975/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28275/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 27973/1
step
goto 40.2,57.9
.kill 5 Restless Infantry##46823 |q 28046/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 27992/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 27967/1
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 27966/1
.click Forgotten Soldier's Tombstone##2452
.' Release 6 Tortured Souls |q 27949/1
step
goto 72.9,60.9
.talk 48254
..turnin 28275
..turnin 27987
..turnin 27978
..turnin 27991
..turnin 27975
..turnin 27973
step
goto 73.4,59.2
.talk 47240
..turnin 28059
..turnin 28063
..turnin 28130
..turnin 28137
..turnin 28065
step
goto 73.7,57.6
.talk 48255
..turnin 27948
..turnin 27972
..turnin 27970
..turnin 27971
..turnin 28050
..turnin 27944
step
goto 74.8,59.6
.talk 48250
..turnin 28046
..turnin 27967
..turnin 27992
..turnin 27966
..turnin 27949
step
.' The quests below will only be able to be done if your faction currently controls Tol Barad.
.' Click here to proceed to the daillies. |confirm
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to proceed. |confirm
step
goto Tol Barad,50.9,49.7
.talk 48066
..accept 28122 |daily
..accept 28162 |daily
..accept 28163 |daily
step
goto 51.4,49.6
.talk 48061
..accept 28165 |daily
..accept 28185 |daily
..accept 28186 |daily
step
goto 51.5,49.5
.talk 48039
..accept 28117 |daily
..accept 28120 |daily
..accept 28118 |daily
step
goto 51.5,49.6
.talk 48074
..accept 28232 |daily
..accept 28188 |daily
..accept 28223 |daily
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28185/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28165/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28186/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28162/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28223/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28188/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28232/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28118/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28117/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28120/1
step
goto 51.1,29.7
.from Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
.kill 12 Horde Infantry |q 28163/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28122/1 |tip He patrols around Baradin Hold.  Some searching may be required.
step
goto Tol Barad,50.9,49.7
.talk 48066
..turnin 28122
..turnin 28162
..turnin 28163
step
goto 51.4,49.6
.talk 48061
..turnin 28165
..turnin 28185
..turnin 28186
step
goto 51.5,49.5
.talk 48039
..turnin 28117
..turnin 28120
..turnin 28118
step
goto 51.5,49.6
.talk 48074
..turnin 28232
..turnin 28188
..turnin 28223
step
.' Go North to Tol Barad Peninsula |goto Tol Barad Peninsula|noway |c
step
goto Tol Barad Peninsula,72.6,62.6
.talk 47328
.buy 1 Reins of the Drake of the West Wind##63039
'|modeldisplay 35754
step
.learnmount Drake of the West Wind##88741 |use Reins of the Drake of the West Wind##63039
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Netherwing Egg Hunting",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
goto Shadowmoon Valley,69.4,63.6 |n
.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
step
goto 70.1,62.0 |n
.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.7 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 70.9,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 71.3,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.8 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
goto 70.0,60.3 |n
.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 69.7,58.5 |n
.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
goto 68.1,59.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.3,59.8 |n
.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
step
goto 68.5,61.2 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
step
goto 67.2,61.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
step
goto 67.2,62.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.9,62.5 |n
.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
step
goto 76.0,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
step
goto 75.2,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
step
goto 73.7,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
step
goto 73.0,84.0 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
goto 71.0,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 68.2,81.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 66.2,83.8 |n
.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.7,84.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.4,76.5 |n
.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.2,75.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.2,74.2 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
step
goto 61.7,73.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
step
goto 63.0,71.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 61.3,70.7 |n
.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.6,73.4 |n
.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.3,74.1 |n
.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.0,76.7 |n
.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.6,78.3 |n
.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 61.2,77.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 62.2,77.8 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.0,83.7 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.5,84.8 |n
.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 66.0,86.5
.talk 23141
.' Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506
step
goto 64.0,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
goto 62.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 60.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.1,89.5 |n
.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 64.9,90.8 |n
.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
step
'Go inside the mine to 64.8,87.2 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
goto 68.3,84.0 |n
.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
step
goto 68.8,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
goto 72.3,87.3 |n
.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
goto 69.9,85.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.0,89.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 68.5,81.6 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 64.8,83.0 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 65.2,84.2 |n
.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
step
goto 65.3,90.2 |n
.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
goto 65.5,94.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 68.0,94.9 |n
.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 69.6,91.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 70.9,89.2 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 71.4,86.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
goto 72.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 73.4,90.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 75.8,91.6 |n
.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
step
goto 77.6,92.6 |n
.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.4,95.7 |n
.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.3,85.9 |n
.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 76.5,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
goto 78.9,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
goto 78.1,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
goto 78.8,79.6 |n
.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
autoscript ZGV:FocusStep(1)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Corrupted Fire Hawk",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(97560)
model 38046
step
'This mount is a reward for completing the _"Glory of the Firelands Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Corrupted Egg of Millagazor##69230
|modeldisplay 38046
step
.learnmount Corrupted Fire Hawk##97560 |use Corrupted Egg of Millagazor##69230
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Green Proto Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(61294)
model 28053
step
.' You must be exalted with the Oracles to get this mount.
.' Click here to confirm |confirm
step
goto Sholazar Basin 54.6,56.2
.talk 31910
.buy Mysterious Egg##39878
step
.' You will have to wait a week for the egg to hatch
.' Click the Cracked Egg in your bags |use Cracked Egg##39883
.collect Reins of the Green Proto-Drake##44707
step
.learnmount Green Proto-Drake##61294 |use Reins of the Green Proto-Drake##44707
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Bloodbathed Frostbrood Vanquisher",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(72808)
model 31156
step
'This mount is a reward for completing the _"Glory of the Icecrown Raider (10 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Bloodbathed Frostbrood Vanquisher##51954
step
.learnmount Bloodbathed Frostbrood Vanquisher##72808 |use Reins of the Bloodbathed Frostbrood Vanquisher##51954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Icebound Frostbrood Vanquisher",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(72807)
model 31154
step
'This mount is a reward for completing the _"Glory of the Icecrown Raider (25 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Icebound Frostbrood Vanquisher##51955
|modeldisplay 31154
step
.learnmount Icebound Frostbrood Vanquisher##72807 |use Reins of the Icebound Frostbrood Vanquisher##51955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Cenarion War Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(43927)
model 31542
step
label "start"
#include misc_rep_mount,rep="Cenarion Expedition"
.' Click here to gain reputation by doing quests. |next "quests" |confirm always
.' Click here to gain reputation by turning in Unidentified Plant Parts in Zangarmarsh. |next "plants" |confirm always
.' Click here to gain reputation by turning in Nesingwary Lackey Ears in Borean Tundra |next "ears" |confirm always
.' Click here to gain reputation by running heroic dungeons. |next "dungeons" |confirm always
step
label "quests"
goto Hellfire Peninsula,47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.collect Eroded Leather Case##23338 |n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 15.7,52
.talk 16991
..turnin 9373
..accept 9372
step
goto 24.9,54.3
.from Hulking Helboar##16880+
.get 6 Helboar Blood Sample##23336 |q 9372/1
step
goto 15.7,52
.talk 16991
..turnin 9372
..accept 10255
step
goto 15.7,52
.talk 16888
..accept 10159
step
goto 25,54
.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
.from Dreadtusk##16992
.' Administer the Antidote |q 10255/1
step
goto 15.7,52
.talk 16991
..turnin 10255
step
goto 12.3,49.9
.kill 8 Thornfang Ravager |q 10159/1
.kill 8 Thornfang Venomspitter |q 10159/2
step
goto Hellfire Peninsula,15.7,52
.talk 16888
..turnin 10159
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus |q 10132/1
.collect Crimson Crystal Shard##29476 |n
.' Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
..accept 10134
step
goto 15.6,52.0
.talk 19293
..turnin 10132
..turnin 10134
..accept 10349
step
goto 16.0,51.6
.talk 19294
..turnin 10349
..accept 10351
step
goto 13.6,39.1
.' Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478 |tip It's a bright green symbol on the ground.
.from Goliathon##19305
.' Revitalize Fallen Sky Ridge |q 10351/1
step
goto 16.0,51.6
.talk 19294
..turnin 10351
step
goto Zangarmarsh,80.4,64.2
.talk 17909
..accept 9802
.talk 17956
..accept 9747
step
goto 79.1,65.3
.talk 17858
..accept 9728
step
goto 78.5,63.1
.talk 17834
..accept 9895
step
goto 78.4,62
.talk 17841
..turnin 9912
..accept 9716
step
goto 80.1,73.3
'Kill all mobs in this area
.get 10 Unidentified Plant Parts |q 9802/1
step
goto 81,72.2
.kill Boglash |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
step
goto 82.6,72.3
.from Boglash##18281, Fen Strider##18134+ |tip It's easier if you just run around in the water all around the east part of Zangarmarsh.
.collect 6 Fertile Spores##24449 |q 9806 |future
step
goto 80.4,64.2
.talk 17909
..turnin 9802
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 84.8,84.4
.kill 6 Umbrafen Oracle |q 9747/2
.kill 8 Umbrafen Seer |q 9747/3
.kill 6 Umbrafen Witchdoctor |q 9747/4
step
goto 85.3,90.9
.kill Kataru |q 9747/1 |tip In the big building, all the way at the top.
step
goto 83.4,85.5
.talk 17969
..accept 9752
.' Escort Kayra Longmane to safety |q 9752/1
step
goto 80.4,64.2
.talk 17956
..turnin 9747
..accept 9788
.talk 17909
..accept 10096
step
goto 80.4,64.7
.talk 18070
..accept 9894
step
goto 78.4,62
.talk 17841
..turnin 9752
step
goto 75.7,90.2
.kill 10 Marsh Lurker |q 10096/2
.kill 10 Marsh Dredger |q 10096/1
step
'Go southwest inside the cave to 70.5,97.9
.' Click Ikeyen's Belongings |tip A little tan metal chest sitting on a beg flat rock
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to 72.5,94
.kill Lord Klaq |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 70.9,82.1
'Stand here to Investigate Umbrafen Lake |q 9716/1
.' Kill nagas
.get 30 Naga Claw##24280 |q 9728/1
step
goto 80.4,64.7
.talk 18070
..turnin 9894
step
goto 80.4,64.2
.talk 17956
..turnin 9788
.talk 17909
..turnin 10096
.' Turn in any stacks of 10 Unidentified Plant Parts you have
.' If you found an Uncatalogued Species, turn that in also
step
goto 79.1,65.3
.talk 17858
..turnin 9728
step
goto 78.5,63.1
.talk 17834
..accept 9697
..accept 9957
step
goto 78.4,62
.talk 17841
..turnin 9716
..accept 9718
step
'Use your Stormcrow Amulet |use Stormcrow Amulet##25465
.' Watch yourself fly as a crow.
.' Explore the Lakes of Zangarmarsh |q 9718/1
step
goto 78.4,62
.talk 17841
..turnin 9718
..accept 9720
step
goto 80.4,64.7
.talk 18070
..accept 9785
step
goto 78.1,63.8
.talk 17901
.' Get the Mark of War |q 9785/2
step
goto 81.1,63.9
.talk 17900
.' Get the Mark of Lore |q 9785/1
step
goto 80.4,64.7
.talk 18070
..turnin 9785
step
goto 70.6,80.3
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/1 |tip The pump controls look like a little box with some levers on it
step
goto 63.1,64.1
.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
.' Disable the Lagoon Pump Controls |q 9720/4 |tip The pump controls look like a little box with some levers on it
step
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
.' Disable the Serpent Lake Controls |q 9720/3
.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
.' Get a Drain Schematics
.' Click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 50.4,40.8
.' Swim straight down into the big bubbling pipe opening below until you discover the drain
.' Locate the drain in Serpent Lake |q 9731/1
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto 78.5,63.1
.talk 17834
..accept 9697
..accept 9957
step
goto Hellfire Peninsula,16,52.2
.talk 16885
.turning Warning the Cenarion Circle##9724
..accept 9732
step
goto Zangarmarsh,78.4,62
.talk 17841
.turnin 9732
..accept 9876
step
goto Zangarmarsh 54.2,34.4 |n
.' Enter The Underbog |goto The Underbog |noway |c
step
goto The Underbog 29.5,64.7
.talk 54678
..accept 29568
step
goto 42.5,62.0 |n
.' Keep following this straight path |goto 42.5,62.0,0.5 |noway |c
step
goto 57.4,82.9 |n
.' Follow this path up and around |goto 57.4,82.9,0.5 |noway |c
step
goto 70.0,90.0
.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
.' Keep moving him so that doesn't happen.
.kill Hungarfen##17770 |q 29568/1
step
goto The Underbog 29.5,64.5
.talk 54678
..turnin 29568
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 9957
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424
..accept 9951
step
goto 45.1,21.8
.' Click the Strange Object |tip Inside the building, looks like a white ball on the floor next to a dead guy.
.' Examine the Strange Object |q 9971/1
step
goto 43.4,22.1
.kill Naphthal'ar |q 9951/1 |tip At the top of the big tower.
step
goto 45,22.5
.talk 18424
..turnin 9951
step
goto 44.3,26.3
.talk 18446
..turnin 9971
step
goto 44.1,23.8
.from Vicious Teromoth##18437+
.get 4 Vicious Teromoth Sample |q 9968/2
step
goto 45.8,29.8
.from Teromoth##18468+
.get 4 Teromoth Sample |q 9968/1
step
goto 44.3,26.3
.talk 18446
..turnin 9968
..accept 9978
step
goto 47.1,27
.talk 18482
.' Fight Empoor until he's almost dead
..turnin 9978
..accept 9979
step
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
..accept 9990
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 9990
..accept 9995
step
goto 57.0,53.5
.talk 18459
..turnin 9994
..accept 10444
step
goto 69.7,44.2
.talk 21006
..turnin 10444
..accept 9996
step
goto 68.1,36.5
.kill 10 Firewing Defender |q 9997/1
.kill 10 Firewing Bloodwarder |q 9997/2
.kill 10 Firewing Warlock |q 9997/3
step
goto 69.7,44.2
.talk 21006
..turnin 9997
..accept 10446
step
goto 57.0,53.5
.talk 18459
..turnin 10446
..accept 10005
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 10005
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
goto 35.2,48.8
.from Infested Root-walker##22095+
.' Kill the Wood Mites that come out of their corpses
.kill 25 Wood Mite |q 10896/1
.' You can find more Infested Root-walkers at [39.1,47.0]
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
|fly Evergrove
step
goto 62.2,39.1
.talk 21782
..accept 10567
step
goto 62.0,39.5
.talk 22007
..accept 10682
step
goto 62.5,38.2
.talk 22133
..accept 10753
step
goto 61.3,38.4
.talk 22053
..accept 10771
..accept 10770
step
goto 58.8,39.1
.talk 21981 |tip He wanders around the Wyrmcult camps.
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
step
goto 61.8,39.6
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net |q 10717/1
.collect Meeting Note##31120 |n
.' Click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
step
goto 63.9,31.5
.from Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
.collect 6 Ruuan'ok Claw##30704 |q 10567
step
goto 64.5,33.1
.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
.from Harbinger of the Raven##21767 |tip On the little island in the pond.
.get Harbinger's Pendant##30706 |q 10567/1
step
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
step
goto 62,39.5
.talk 21983
..turnin 10717
step
goto 62.0,39.6
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
goto 46.7,32.9
.kill Draaca Longtail |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
goto 40.9,20.4
.kill arakkoas |n
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
.' Must be within melee range to receive the buff
.' The buff lasts for 2 minutes
.' Anytime the buff wears off, kill arakkoas again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the Third Prophecy |q 10607/3 |tip On the ground, next to a pond with basilisks in it. It looks like a wooden totem.
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the First Prophecy |q 10607/1 |tip Up the left ramp, then left across the hanging bridge. It looks like a wooden totem.
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the Second Prophecy |q 10607/2 |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left. It looks like a wooden totem.
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on |tip On the ground, in front of a hut. It looks like a wooden totem.
.' Receive the Fourth Prophecy |q 10607/4
step
goto 32.3,34.9
.' Go inside the cave
.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121 |q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 62.0,39.5
.talk 22007
..turnin 10722
..accept 10748
step
'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 33.9,35.4
.kill 1 Maxnar the Ashmaw |q 10748/1 |tip Follow the cave path until it dead ends into him.
step
'Leave the cave. |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 62,39.5
.talk 22007
..turnin 10748
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 68.9,35.6
.kill 2 Fel Corrupter |q 10753/3
.kill 4 Felsworn Scalewing |q 10753/1
.kill 4 Felsworn Daggermaw |q 10753/2
.from Fel Corrupter##21300
.collect Damaged Mask##31384 |n
.' Click the Damaged Mask in your bags |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.' Click the Fertile Volcanic Soil |tip Looks like a dirt mound.
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.' Click the Fertile Volcanic Soil |tip Looks like a dirt mound.
.' Plant the Ironroot Seeds |q 10771/2
step
goto 71.6,18.5
.' Click the Fertile Volcanice Soil |tip Looks like a dirt mound.
.' Plant the Ironroot Seeds |q 10771/3
step
goto 70.7,20.2
.kill 8 Scorch Imp##21021+ |q 10770/1
step
goto 62.7,40.4
.talk 22020
..turnin 10810
..accept 10812
step
goto 62.2,40.1
.talk 22127
..turnin 10812
..accept 10819
step
goto 62.6,38.2
.talk 22133
..turnin 10753
step
goto 61.2,38.4
.talk 22053
..turnin 10770
..turnin 10771
step
'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
.' It has a 60 minute timer on it
.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
.' Click here to continue. |confirm
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.' Click the Legion Communicator |tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant |q 10820/1
.kill 4 Doomforge Engineer |q 10820/2
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.' Click the Legion Communicator
..turnin 10820 |tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm
step
goto 75.3,41.7
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm
step
goto 73.8,41.0
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm
step
goto 75.4,40.6
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm
step
goto 74.0,39.9
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm
step
goto 74.3,42.5
.kill Doomcryer |q 10821/1
step
goto 62.4,38.4
.talk 22127
..turnin 10821
..accept 10910
step
goto 63.2,65.5
.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10910
..accept 10904
step
goto 63.8,66.5
.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
.get 5 Fel Cannonball |q 10904/1
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10904
..accept 10911
step
goto 64.8,68.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the South Warp-Gate |q 10911/1
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master |q 10912/1
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
|fly The Stormspire
step
goto Netherstorm,42.3,32.6
.talk 20871
..accept 10426
step
goto 41.2,32.2
.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
.from Mutated Farahlon Lasher##20774+
.' Test Energy Modulator 10 times |q 10426/1
step
goto 42.3,32.6
.talk 20871
..turnin 10426
..accept 10427
step
goto 40.4,35.5
.from Talbuk Doe##20610+, Talbuk Sire##20777
.' Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
.' Tag 12 Talbuk |q 10427/1
step
goto 42.3,32.6
.talk 20871
..turnin 10427
..accept 10429
step
goto 44.3,28.5
.from Markaru##20775+
..get Hulking Hydra Heart |q 10429/1
step
goto 42.3,32.6
.talk 20871
..turnin 10429
step
|fly Shattrath
step
goto Shattrath City,57.2,48.2
.click Stormwind Portal##04396
.' Teleport to Stormwind |goto Stormwind City |noway |c
step
#include "rideto_borean"
step
goto Borean Tundra 57.0,44.3
.talk 25809 |tip this is a test
..accept 11864 |instant
..accept 11866
..accept 11876
step
goto 57.3,44.1
.talk 25810
..accept 11869
step
goto 57,44
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
.' Free 8 Mammoth Calves |q 11876/1 |modelnpc 24613
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1 |modelnpc 25835
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
.' After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.' Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
'|from Mammoth Calf##24613, Khu'nok the Behemoth##25862
step
goto 59.5,30.4
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull|n |modelnpc 25743
.' Click it to ride it|invehicle|c
step
'Go north on the Wooly Mammoth Bull to 53.7,23.9|goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.' Click Kaw's War Halberd on the ground
.get Kaw's War Halberd|q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thugs##25843 |n
.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill 1 Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 43.5,14
.talk 25197
..accept 11571
step
'Go southwest underwater to 42.5,15.9|goto 42.5,15.9
.kill Scalder##25226 |n |tip He is a water elemental that walks back and forth on the pink trench underwater.
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch|q 11571/1
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
step
goto 41.5,13.4
.click Winterfin Clam##261 |tip They are on the ground underwater.
.get 5 Winterfin Clam|q 11559/1
step
goto 43,13.8
.talk 25206
..turnin 11559
step
goto 42.8,13.7
.talk 25199
..accept 11561
step
goto 43.5,14
.talk 25197
..accept 11560
step
goto 40.6,17.5
.kill 15 Winterfin murlocs|q 11561/1
.click the yellow cage##1787+
.' Rescue 20 Winterfin Tadpoles|goal 20 Winterfin Tadpole rescued|q 11560/1
'|from Winterfin Oracle##25216, Winterfin Shorestriker##25215
step
goto 42.8,13.7
.talk 25199
..turnin 11561
step
goto 43.5,14
.talk 25197
..turnin 11560
..accept 11562
step
goto 42,12.8
.talk 25205
..turnin 11562
..accept 11563
step
goto 42,13.2
.talk 25211
..accept 11564
step
goto 40.3,12.4
.kill Glimmer Bay Orcas##25204+ |n
.get 7 Succulent Orca Blubber|q 11564/1
step
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head|q 11563/1
step
goto 42,12.8
.talk 25205
..turnin 11563
..accept 11565
step
goto 42,13.2
.talk 25211
..turnin 11564
step
goto 43.5,14
.talk 25197
..turnin 11565
..accept 11566
step
'Go southwest to Winterfin Village|n
.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
step
'Go inside the cave to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to [38.4,22.7]|goto 38.4,22.7
.from Keymaster Urmgrgl##25210
.get Urmgrgl's Key|q 11569/1
step
'Follow the path up and to the back of the cave to [37.6,27.4]|goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
'Go back up the path to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..turnin 11569
step
goto 37.8,23
.talk 25208
..accept 11570
.' Escort Lurgglbr to safety|goal Escort Lurgglbr to safety|q 11570/1
step
goto 43.5,14
.talk 25197
..turnin 11566
..turnin 11570
|next "start"
step
label "plants"
goto Zangarmarsh 80.1,73.3
'Kill all mobs in this area
.collect 10 Unidentified Plant Parts |n
.' You can collect more, but you will need at least 10 to turn in.
.' Click here to turn in plant parts |next "plants_turnin" |confirm
step
label "plants_turnin"
goto 80.4,64.2
.talk 17909
..accept 9802 |instant |repeatable
.' Click here to go back to farming plant parts. |confirm |next "-plants"
.' Earn _Exalted_ with Cenarion Expedition. |condition rep('Cenarion Expedition')==Exalted |next "mount"
.' Click here to see more options for gaining reputation |next "start" |confirm
step
label "ears"
goto Borean Tundra 53.0,45.4
.from Loot Crazed Diver##25836+, Loot Crazed Poached##25806+, Loot Crazed Hunter##25979+, Northsea Thug##25843+, Northsea Mercenary##25839+, Loot Crazed Poacher##25806+
.collect 15 Nesingwary Lackey Ear##35188 |n
.' You can collect more, but you will need at least 15 to turn in.
.' Click here to turn in ears |next "ears_turnin" |confirm
step
label "ears_turnin"
goto Borean Tundra 57.0,44.3
.talk 25809
.accept 11867 |instant |repeatable
.' Click here to go back to farming Ears. |confirm |next "-ears"
.' Earn _Exalted_ with Cenarion Expedition. |condition rep('Cenarion Expedition')==Exalted |next "mount"
.' Click here to see more options for gaining reputation |next "start" |confirm
step
label "dungeons"
.' Run the Steamvault, Slave Pens and The Underbog dungeons on heroic mode everyday to eventually reach exalted with this faction.
.' Earn _Exalted_ with Cenarion Expedition. |condition rep('Cenarion Expedition')==Exalted |next "mount"
.' Click here to see more options for gaining reputation |next "start" |confirm
step
label "mount"
#include SWDP
step
goto Zangarmarsh,79.2,63.8
.talk 17904
.buy 1 Cenarion War Hippogryph##33999
'|modeldisplay 31542
step
.learnmount Cenarion War Hippogryph##43927 |use Cenarion War Hippogryph##33999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(59570)
model 23522
step
'This will require you to be _exalted_ with _The Wyrmrest Accord_
#include WATabard
.' Use this tabard and complete dungeons in _Northrend_ to reach _exalted_ |only if rep("The Wyrmrest Accord")<Exalted
.' _Exalted_ with _The Wyrmrest Accord_ |condition rep("The Wyrmrest Accord")>=Exalted
step
goto Dragonblight,59.8,53.0
.talk 32533
.buy 1 Reins of the Red Drake##43955
'|modeldisplay 23522
step
.learnmount Red Drake##59570 |use Reins of the Red Drake##43955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Dark Phoenix",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(88990)
model 37145
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs to have the achievement _"Guild Glory of the Cataclysm Raider"_ completed
.' _Guild Glory of the Cataclysm Raider_ |achieve 4988
step
goto Stormwind City,64.6,76.8
.talk 46602
.buy 1 Reins of the Dark Phoenix##63125
'|modeldisplay 37145
step
.learnmount Dark Pheonix##88990 |use Reins of the Dark Phoenix##63125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61451)
model 28060
step
'Use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if skill("Tailoring")>1 and skill("Tailoring")<300
'Use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if skill("Tailoring")<1
goto Stormwind City,53.1,81.3
.talk 1346
.learn Flying Carpet##60969
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 6 Bolt of Netherweave##21840
.collect 4 Golden Draenite##23112
.collect Arcane Dust##22445
step
#include TailorSupplies
.buy 5 Heavy Silken Thread##8343
step
.create Flying Carpet##60969,Tailoring,1 total
.collect 1 Flying Carpet##44554
'|modeldisplay 28060
step
.learnmount Flying Carpet##61451 |use Flying Carpet##44554
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Magnificent Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61309)
model 28064
step
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")>1 and skill("Tailoring")<425
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")<1
goto Stormwind City,53.1,81.3
.talk 1346
.learn Magnificent Flying Carpet##60971
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 12 Bolt of Imbued Frostweave##41511
.collect 4 Monarch Topaz##36930
.collect 4 Iceweb Spider Silk##42253
step
#include TailorSupplies
.buy 4 Red Dye##2604
.buy 2 Yellow Dye##4341
step
.create Magnificent Flying Carpet##60971,Tailoring,1 total
.collect 1 Magnificent Flying Carpet##44558
'|modeldisplay 28064
step
.learnmount Magnificent Flying Carpet##61309 |use Magnificent Flying Carpet##44558
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Frosty Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(75596)
model 31837
step
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")>1 and skill("Tailoring")<425
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")<1
.collect 4 Frozen Orb##43102 |tip To get these, kill bosses in Heroic Difficulty Northrend instances, or you can buy them on the Auction House
step
'Go to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,40.0,28.3
.talk 40160
.buy 1 Pattern: Frosty Flying Carpet##54798
.learn Frosty Flying Carpet##75597 |use Pattern: Frosty Flying Carpet##54798
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 1 Moonshroud##41594
.collect 1 Spellweave##41595
.collect 1 Ebonweave##41593
.collect 4 Frozen Orb##43102
step
.create Frosty Flying Carpet##75597,Tailoring,1 total
.collect 1 Frosty Flying Carpet##54797
'|modeldisplay 31837
step
.learnmount Frost Flying Carpet##75596 |use Frosty Flying Carpet##54797
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Flying Machine",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(44153)
model 22719
step
'Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
'Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")<1
#include trainEngineering
.learn Flying Machine##44155
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 2 Fel Iron Casing##23782
.collect 20 Elemental Blasting Powder##23781
.collect 20 Handful of Fel Iron Bolts##23783
step
#include vendor_Enchanting
.buy 8 Star Wood##11291
step
.create Flying Machine##44155,Engineering,1 total
.collect 1 Flying Machine##34060
'|modeldisplay 22719
step
.learnmount Flying Machine##44153 |use Flying Machine##34060
.' _Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Turbo-Charged Flying Machine",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(44151)
model 22720
step
'Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
'Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")<1
#include trainEngineering
.learn Turbo-Charged Flying Machine##44157
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 4 Adamantite Frame##23784
.collect 8 Khorium Power Core##23786
.collect 8 Felsteel Stabilizer##23787
step
#include darkportal
step
|fly Shattrath
step
goto 65.6,68.8
.talk 19227
.buy 1 Hula Girl Doll##34249
step
.create Turbo-Charged Flying Machine##44157,Engineering,1 total
.collect 1 Turbo-Charged Flying Machine##34061
'|modeldisplay 22720
step
.learnmount Turbo-Charged Flying Machine##44151 |use Turbo-Charged Flying Machine##34061
.' _Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Albino Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(60025)
model 6372
step
'Obtain _50 mounts_, you can use our guide to achieve these |achieve 2143
.' Check your _mailbox_ for your _prize_!
.collect 1 Reins of the Albino Drake##44178
'|modeldisplay 6372
step
.learnmount Albino Drake##60025 |use Reins of the Albino Drake##44178
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Blue Dragonhawk",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(61996)
model 27525
step
'Obtain _100 mounts_ you can use our guide to achieve this |achieve 2536
.' Check your _mailbox_ for your _prize_!
.collect 1 Blue Dragonhawk##44843
'|modeldisplay 27525
step
.learnmount Blue Dragonhawk##61996 |use Blue Dragonhawk##44843
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Flameward Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(97359)
model 38018
step
'This mount is a reward for completing the _"The Molten Front Offensive"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Flameward Hippogryph##69213
|modeldisplay 38018
step
.learnmount Flameward Hippogryph##97359 |use Flameward Hippogryph##69213
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Instructions",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(60024)
model 28043
step
'This _mount requires_ you to have the achievement _"What A Long, Strange Trip It's Been"_ completed
.' Use the _Event guides provided to complete this achievement.
.' What a Long, Strange, Trip It's Been |achieve 2144
step
.' Check your _mailbox_ for your _prize_!
.collect 1 Violet Proto-Drake##44177
'|modeldisplay 28043
step
.learnmount Violet Proto-Drake##60024 |use Violet Proto-Drake##44177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
startlevel 80
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Trade District
step
goto Stormwind City,61.7,74.2
.talk 189276
..accept 11970
step
goto 49.5,72.3
.talk 16817
..accept 11964
step
goto 49.3,72.3
.talk 26221
..accept 11886
step
goto Stormwind City,50.0,72.3
.talk 25975
..accept 11731
step
'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them. You will have 40 seconds to complete this before the quest fails.
.' Hit 8 braziers |q 11731/1
step
goto Stormwind City,50.0,72.3
.talk 25975
..turnin 11731
..accept 11657
step
goto 49.8,72.4
.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
.' As soon as you light torch, it will fly in the air.  There will be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
.' Catch 4 torches in a row. |q 11657/1
step
goto 50.1,72.3
.talk 25975
..turnin 11657
step
goto Elwynn Forest,43.5,62.5
.talk 26401
..turnin 11964
step
goto 43.5,62.6
.talk 25898
..accept 11816 |instant
step
goto Elwynn Forest,43.7,62.2
.talk 25962
..accept 11882
step
goto Stormwind City,50.0,72.3
.talk 25975
..turnin 11882
step
goto 22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
'Go through the pink portal into Darnassus |goto Darnassus |noway |c
step
'Take the east exit out of Darnassus to Teldrassil |goto Teldrassil |noway |c
step
goto 54.9,52.8
.talk 25906
..accept 11824 |instant
step
'Go to Darnassus |goto Darnassus |noway |c
step
.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto 52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto Azuremyst Isle,44.5,52.5
.talk 25888
..accept 11806 |instant
step
'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,55.8,67.9
.talk 25891
..accept 11809 |instant
step
goto 57.7,53.9
.talk 17554
.' Fly to The Exodar |goto The Exodar,54.4,36.6,0.5 |noway |c
step
goto Azuremyst Isle,20.4,54.2 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7 |noway |c
step
goto 48.7,22.6
.talk 25893
..accept 11811 |instant
step
goto Darkshore,51.7,17.6
.talk 3841
.' Fly to Everlook, Winterspring |goto Winterspring,61.0,48.7,0.5 |noway |c
step
goto Winterspring,61.2,47.3
.talk 25917
..accept 11834 |instant
step
goto 58.1,47.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11803 |instant
step
goto Winterspring,61.0,48.6
.talk 11138
.' Fly to Forest Song, Ashenvale |goto Ashenvale,85.0,43.5,0.5 |noway |c
step
'Go east to Azshara |goto Azshara |noway |c
step
goto Azshara,60.4,53.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 28919 |instant
step
goto Ashenvale,85.0,43.5
.talk 11138
.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
step
goto Ashenvale,15.1,18.4
.from Twilight Firesworn##25863+
.get Twilight Correspondence |q 11886/1
step
goto 15.2,21.2
.' Use the Totemic Beacon in your bags |use Totemic Beacon##35828
.talk 25324
..turnin 11886
..accept 11891
step
goto Ashenvale,15.3,20.1
.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
.get Twilight Correspondence |q 11886/1
step
goto Ashenvale,15.7,20.3
.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
.talk 25324
..turnin 11886
..accept 11891
step
goto Ashenvale,9.6,13.2
.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
step
'While in the crab disguise, go to 9.2,12.6 |goto Ashenvale,9.2,12.6
.' Listen to the plan of the Twilight Cultists |q 11891/1
step
goto Ashenvale,9.7,13.3
.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
.talk 25324
..turnin 11891
..accept 29092
step
goto Ashenvale,34.4,48.0
.talk 4267
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
'Go through the pink portal into Darnassus |goto Darnassus |noway |c
step
goto Darnassus,62.1,49.1
.talk 26221
..turnin 29092
step
.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
step
goto 51.6,66.6
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11765 |instant
step
goto Ashenvale,86.9,41.9
.talk 25883
..accept 11805 |instant
step
goto 85.0,43.6
.talk 22935
.' Fly to Fort Triumpth, Southern Barrens |goto Southern Barrens,49.1,67.9,0.5 |noway |c
step
goto Southern Barrens,48.3,72.2
.talk 51586
..accept 28926
step
goto Southern Barrens,40.7,67.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 28914 |instant
step
goto Southern Barrens,49.2,67.8
.talk 39211
.' Fly to Ratchet, The Barrens |goto Northern Barrens,69.2,70.6,0.5 |noway |c
step
'Go northeast to Durotar |goto Durotar |noway |c
step
goto 52.1,47.1
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11770 |instant
step
'Go north to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,46.5,37.0
.' Click the Flame of Orgrimmar |tip It's a huge blue bonfire.
.collect Flame of Orgrimmar##23179 |n
.' Click the Flame of Orgrimmar in your bags |use Flame of Orgrimmar##23179
..accept 9324 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
step
'Go southwest to Northern Barrens|goto Northern Barrens |noway |c
step
goto Northern Barrens,49.9,54.4
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11783 |instant
step
goto Northern Barrens,69.1,70.7
.talk 16227
.' Fly to Mirkfallon Post, Stonetalon Mountains |goto Stonetalon Mountains,48.6,51.5,0.5 |noway |c
step
goto 49.3,51.3
.talk 51588
..accept 28928 |instant
step
goto Stonetalon Mountains,53.0,62.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11780 |instant
step
'Go southwest to Desolace |goto Desolace |noway |c
step
goto 66.1,17.1
.talk 25894
..accept 11812 |instant
step
goto 26.1,77.2
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11769 |instant
step
'Go southeast to Feralas |goto Feralas |noway |c
step
goto Feralas,43.4,42.8 |n
.' Ride the boat to Feathermoon |goto Feralas,31.0,39.9,4 |noway |c
step
goto Feralas,46.8,43.7
.talk 25899
..accept 11817 |instant
step
goto Feralas,30.2,43.3
.talk 8019
.' Fly to Thalanaar, Feralas |goto Feralas,89.5,45.9,0.5 |noway |c
step
goto 72.5,47.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11773 |instant
step
goto 77.3,56.8
.talk 40367
.' Fly to Cenarion Hold, Silithus |goto Silithus,50.7,34.6,0.5 |noway |c
step
goto Silithus,60.3,33.5
.talk 25914
..accept 11831 |instant
step
goto 50.9,41.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11800 |instant
step
goto 54.4,32.7
.talk 15177
.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.4,29.4,0.5 |noway |c
step
goto Tanaris,49.8,28.1
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11802 |instant
step
goto Tanaris,52.6,30.3
.talk 25916
..accept 11833 |instant
step
goto 51.4,29.5
.talk 7823
.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
step
goto Dustwallow Marsh,61.8,40.5
.talk 25897
..accept 11815 |instant
step
goto 33.3,30.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11771 |instant
step
'Go southwest to Southern Barrens |goto Southern Barrens |noway |c
step
'Go northwest to Mulgore |goto Mulgore |noway |c
step
goto Mulgore,52.0,59.4
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11777 |instant
step
'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,21.7,27.5
.' Click the Flame of Thunder Bluff |tip It's a huge blue bonfire.
.collect Flame of Thunder Bluff##23180 |n
.' Click the Flame of Thunder Bluff in your bags |use Flame of Thunder Bluff##23180
..accept 9325 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Mulgore |goto Mulgore |noway |c
step
'Go to Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,70.2,73.1 |n
.' Ride the boat to Booty Bay |goto The Cape of Stranglethorn |noway |c
step
goto The Cape of Stranglethorn,52.0,67.6
.talk 25915
..accept 11832 |instant
step
goto 50.5,70.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11801 |instant
step
goto 41.7,74.5
.talk 2859
.' Fly to Fort Livingston, Northern Stranglethorn |goto 52.6,66.3,0.5 |noway |c
step
goto Northern Stranglethorn,52.0,63.5
.talk 51574
..accept 28922
step
goto 40.7,51.9
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 28911 |instant
step
goto 47.9,11.9
.talk 43045
.' Fly to Nethergarde Keep, Blasted Lands |goto Blasted Lands,61.2,21.7,0.5 |noway |c
step
goto Blasted Lands,55.5,14.9
.talk 25890
..accept 11808 |instant
step
'Go northwest to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
goto 70.3,15.7
.talk 51602
..accept 28929
step
goto Swamp of Sorrows,76.7,14.0
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11781 |instant
step
'Go west to Duskwood |goto Duskwood |noway |c
step
goto 73.7,54.6
.talk 25896
..accept 11814 |instant
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Moonbrook, Westfall |goto Westfall |noway |c
step
goto Westfall,44.8,62.1
.talk 25910
..accept 11583
step
goto 42.1,63.3
.talk 42426
.' Fly to Lakeshire, Redridge |goto Redridge Mountains,29.3,53.4,0.5 |noway |c
step
goto Redridge Mountains,24.9,53.4
.talk 25904
..accept 11822 |instant
step
goto 29.4,53.8
.talk 931
.' Fly to Morgan's Vigil, Burning Steppes |goto Burning Steppes,72.1,65.7,0.5 |noway |c
step
goto Burning Steppes,68.3,60.6
.talk 25892
..accept 11810 |instant
step
goto 51.5,29.2
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11768 |instant
step
'Go northeast to the Badlands |goto Badlands |noway |c
step
goto Badlands,19.0,56.2
.talk 51585
..accept 28925
step
goto 24.1,37.2
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11766 |instant
step
'Go northeast to Loch Modan |goto Loch Modan |noway |c
step
goto Loch Modan,32.6,41.0
.talk 25902
..accept 11820 |instant
step
goto Loch Modan,33.9,51.0
.talk 1572
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,63.8,25.3
.talk 16817
..turnin 9324
..turnin 9325
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,53.8,45.2
.talk 25895
..accept 11813 |instant
step
'Go northeast to Ironforge |goto Ironforge |noway |c
step
goto Ironforge,55.5,47.7
.talk 1573
.' Fly to Menethil Harbor, Wetlands |goto Wetlands,9.5,59.7,0.5 |noway |c
step
goto 13.5,47.1
.talk 25911
..accept 11828 |instant
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Refuge Pointe, Arathi |goto Arathi Highlands,39.9,47.4,0.5 |noway |c
step
goto Arathi Highlands,44.3,46.0
.talk 25887
..accept 11804 |instant
step
goto 69.2,43.0
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11764 |instant
step
'Go west to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,54.6,49.8
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11776 |instant
step
'Go northeast to Western Plaguelands |goto Western Plaguelands |noway |c
step
goto Western Plaguelands,43,82
.talk 25909
..accept 11827 |instant
step
goto Western Plaguelands,42.9,85.1
.talk 12596
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
step
goto The Hinterlands,14.3,50.1
.talk 25908
..accept 11826 |instant
step
goto 76.6,74.6
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11784 |instant
step
'Go west to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
'Go west to Silverpine Forest |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,49.6,38.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11580 |instant
step
'Go northeast to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,57.0,51.8
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11786 |instant
step
'Go south to Undercity |goto Undercity |noway |c
step
goto Undercity,67.9,8.3
.' Click the Flame of Undercity |tip It's a huge blue bonfire.
.collect Flame of Undercity##23181 |n
.' Click the Flame of Undercity in your bags |use Flame of Undercity##23181
..accept 9326 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
step
'Fly east to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
step
goto Eastern Plaguelands,54.8,8.5 |n
.' Go inside the huge swirling portal to the Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,47,26
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11774 |instant
step
'Go north to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,46,50
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11772 |instant
step
'Go east to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,69.0,43.4
.' Click the Flame of Silvermoon |tip It's a huge blue bonfire.
.collect Flame of Silvermoon##35568 |n
.' Click the Flame of Silvermoon in your bags |use Flame of Silvermoon##35568
..accept 11935 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
'Go south to the Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,52.0,97.8 |n
.' Go inside the huge swirling portal to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
step
goto Eastern Plaguelands,75.8,53.4
.talk 12617
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,63.8,25.3
.talk 16817
..turnin 9326
..turnin 11935
..accept 9365 |instant
step
goto Ironforge,27.3,7.0 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
step
'Go inside the big green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,62.2,58.3
.talk 25900
..accept 11818 |instant
step
goto Hellfire Peninsula,57.2,41.8
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11775 |instant
step
goto Netherstorm,32.3,68.2
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11799 |instant
step
goto Netherstorm,31.2,62.7
.talk 25913
..accept 11830 |instant
step
goto Blade's Edge Mountains,50.0,59.0
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11767 |instant
step
goto Blade's Edge Mountains,41.6,65.9
.talk 25889
..accept 11807 |instant
step
goto Zangarmarsh,35.6,51.8
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11787 |instant
step
goto Zangarmarsh,68.8,52.0
.talk 25912
..accept 11829 |instant
step
goto Nagrand,51.1,34.0
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11778 |instant
step
goto Nagrand,49.6,69.5
.talk 25903
..accept 11821 |instant
step
goto Terokkar Forest,51.9,43.2
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11782 |instant
step
goto Terokkar Forest,54.1,55.5
.talk 25907
..accept 11825 |instant
step
goto Shadowmoon Valley,33.5,30.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 11779 |instant
step
goto Shadowmoon Valley,39.6,54.6
.talk 25905
..accept 11823 |instant
step
goto Shattrath City,55.8,36.6 |n
.' Click the Shattrath Portal to Stormwind |goto Stormwind City |noway |c
step
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,55.1,20.0
.talk 32801
..accept 13485 |instant
step
goto Borean Tundra,51.1,11.8
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13441 |instant
step
goto Sholazar Basin,48.1,66.4
.talk 32802
..accept 13486 |instant
step
goto Sholazar Basin,47.3,61.5
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13450 |instant
step
goto Dragonblight,38.5,48.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13451 |instant
step
goto Dragonblight,75.3,43.8
.talk 32803
..accept 13487 |instant
step
goto Crystalsong Forest,78.2,75.0
.talk 32807
..accept 13491 |instant
step
goto Crystalsong Forest,80.4,52.7
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13457 |instant
step
goto The Storm Peaks,40.4,85.6
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13455 |instant
step
goto The Storm Peaks,41.4,86.7
.talk 32806
..accept 13490 |instant
step
goto Zul'Drak,40.4,61.3
.talk 32808
..accept 13492 |instant
step
goto Zul'Drak,43.3,71.3
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13458 |instant
step
goto Grizzly Hills,19.1,61.5
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13454 |instant
step
goto Grizzly Hills,33.9,60.5
.talk 32805
..accept 13489 |instant
step
goto Howling Fjord,48.4,13.4
.' Click the Horde Bonfire |tip It's a huge bonfire.
..accept 13453 |instant
step
goto Howling Fjord,57.8,16.1
.talk 32804
..accept 13488 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
startlevel 80
step
#include "Midsummer Fire Festival Quests"
step
#include "Midsummer Fire Festival Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
step
goto Ironforge,30.9,61.6
.talk 15892
..accept 8870
step
goto Ironforge,28.8,16.2
.talk 15895
..turnin 8870
..accept 8867
step
goto 29.9,14.2
.talk 15898
..buy 8 Small Blue Rocket+
..buy 2 Blue Rocket Cluster+
step
goto 30.6,17.8
.' Use Small Blue Rockets |use Small Blue Rocket##21558
.' Use Blue Rocket Clusters |use Blue Rocket Cluster##21571
.' Fire 8 Lunar Fireworks |q 8867/1
.' Fire 2 Lunar Fireworks Clusters |q 8867/2
step
goto 28.9,16.2
.talk 15895
..turnin 8867
..accept 8883
step
goto 30.6,17.8
.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711 |q 8883
step
goto Moonglade,53.6,35.3
.talk 15864
..turnin 8883
step
goto Moonglade,36.4,59.9
.' Use the Lunar Festival Invitation while standing in Ironforge Revelers beam of light |use Lunar Festival Invitation##21711 |goto Ironforge |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path for honoring the elders
description that are spread out all over Azeroth for the Lunar Festival event.
description The 13 elders that are inside instances are not included in this guide section.
description Using this guide section, you will collect 62 of the total 75 Coins of Ancestry.
step
goto Silverpine Forest,45.0,41.1
.talk 15561
..accept 8645 |instant
step
goto Tirisfal Glades,61.9,53.9
.talk 15568
..accept 8652 |instant
step
'Go south to Undercity |goto Undercity |noway |c
step
goto Undercity,66.6,38.2
.talk 15564
..accept 8648 |instant |tip If you die trying to leave Undercity, just resurrect at the spirit healer you get sent to.
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Western Plaguelands,69.0,73.0
.talk 15594
..accept 8714 |instant
step
goto 63.5,36.1
.talk 15602
..accept 8722 |instant
step
goto Eastern Plaguelands,35.6,68.8
.talk 15592
..accept 8688 |instant
step
goto 75.7,54.6
.talk 15566
..accept 8650 |instant
step
goto The Hinterlands,50.0,48.0
.talk Elder Highpeak
.accept 8643 |instant
step
goto Loch Modan,33.3,46.5
.talk 15558
..accept 8642 |instant
step
goto Ironforge,28.1,17.0
.talk 15871
..accept 8866 |instant
step
goto Dun Morogh,53.9,49.9
.talk 15569
..accept 15569 |instant
step
goto Searing Gorge,21.3,79.1
.talk 15567
..accept 8651 |instant
step
goto Burning Steppes,53.6,24.5
.talk 15585
..accept 8683 |instant
step
goto 70.1,45.4
.talk 15557
..accept 8636 |instant
step
goto Elwynn Forest,39.8,63.7
.talk 15565
..accept 8649 |instant
step
goto 34.4,51.8
.talk 15562
..accept 8646 |instant
step
goto Westfall,56.6,47.1
.talk 15577
..accept 8675 |instant
step
goto Blasted Lands,54.3,49.5
.talk 15563
..accept 8647 |instant
step
goto Northern Stranglethorn,71.0,34.3
.talk 15596
..accept 8716 |instant
step
goto The Cape of Stranglethorn,40.0,72.5
.talk 15576
..accept 15576 |instant
step
goto 39.3,67.2 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
step
goto Northern Barrens,68.4,70.0
.talk 15582
..accept 8680 |instant
step
goto 48.5,59.3
.talk 15597
..accept 8717 |instant
step
goto Southern Barrens,41.5,47.5
.talk 15588
..accept 8686 |instant
step
goto Mulgore,48.5,53.2
.talk 15575
..accept 8673 |instant
step
goto Northern Barrens,68.4,70.0
.talk 15582
..accept 8680 |instant
step
goto 48.5,59.3
.talk 15597
..accept 8717 |instant
step
goto Southern Barrens,41.5,47.5
.talk 15588
..accept 8686 |instant
step
goto Mulgore,48.5,53.2
.talk 15575
..accept 8673 |instant
step
goto Thunder Bluff,73.0,23.3
.talk 15580
..accept 8678 |instant |tip If you die trying to leave Thunder Bluff, just resurrect at the spirit healer you get sent to.
step
goto Feralas,76.7,37.9
.talk 15581
..accept 8679 |instant
step
goto 62.6,31.1
.talk 15587
..accept 8685 |instant
step
goto Silithus,53.0,35.5
.talk 15599
..accept 8719 |instant
step
goto 30.8,13.3
.talk 15570
..accept 8654 |instant
step
goto Un'Goro Crater,50.4,76.2
.talk 15583
..accept 8681 |instant
step
goto Tanaris,37.2,79.1
.talk 15573
..accept 8671 |instant
step
goto 51.4,28.8
.talk 15586
..accept 8684 |instant
step
goto Thousand Needles,77.1,75.6
.talk 15604
..accept 8724 |instant
step
goto 46.3,51.0
.talk 15584
..accept 8682 |instant
step
goto Durotar,53.2,43.6
.talk 15572
..accept 8670 |instant
step
goto Orgrimmar,52.3,60.0
.talk 15579
..accept 8677 |instant |tip If you die trying to leave Thunder Bluff, just resurrect at the spirit healer you get sent to.
step
goto Azshara,64.7,79.3
.talk 15600
..accept 8720 |instant
step
goto Winterspring,60.0,49.9
.talk 15574
..accept 8672 |instant
step
goto 53.2,56.6
.talk 15606
..accept 8726 |instant
step
goto Ashenvale,35.4,48.9
.talk 15605
..accept 8725 |instant
step
goto Felwood,38.4,52.9
.talk 15603
..accept 8723 |instant
step
goto Darkshore,49.5,18.9
.talk 15601
..accept 8721 |instant
step
goto Teldrassil,56.9,53.1
.talk 15595
..accept 8715 |instant
step
goto Darnassus,38.8,32.3
.talk 15598
..accept 8718 |instant
step
goto Darnassus,38.0,30.5
.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
.' Go to Moonglade |goto Moonglade |noway |c
step
goto Moonglade,35.7,58.9
.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
.' Go to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,18.1,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,59.1,65.6
.talk 30348
..accept 13012 |instant
step
goto 57.4,43.7
.talk 30364
..accept 13033 |instant
step
goto 42.9,49.6
.talk 30371
..accept 13029 |instant
step
goto 33.8,34.4
.talk 30360
..accept 13016 |instant
step
'Go northeast to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,49.8,63.6
.talk 30362
..accept 13018 |instant
step
goto 63.8,49.0
.talk 30365
..accept 13024 |instant
step
'Go southeast to Wintergrasp |goto Wintergrasp |noway |c
step
goto Wintergrasp,50.5,16.4
.' Click the Defender's Portal
.' Go to the upper level of the Wintergrasp Fortress |goto Wintergrasp,50.4,15.9,0.1 |noway |c
step
goto 49.0,13.9
.talk 30368
..accept 13026 |instant
step
goto 49.6,15.9
.' Click the Defender's Portal
.' Go to outside of the Wintergrasp Fortress |goto Wintergrasp,49.6,16.3,0.1 |noway |c
step
'Leave Wintergrasp and get back on your flying mount
.' Skip to the next step of the guide once you are back on your flying mount
step
'Go southeast to Dragonblight |goto Dragonblight |noway |c
step
goto Dragonblight,35.1,48.3
.talk 30373
..accept 13031 |instant
step
goto 29.7,55.9
.talk 30358
..accept 13014 |instant
step
goto 48.8,78.2
.talk 30363
..accept 13019 |instant
step
'Go east to Grizzly Hills |goto Grizzly Hills |noway |c
step
goto Grizzly Hills,64.2,47.0
.talk 30372
..accept 13030 |instant
step
goto 80.5,37.1
.talk 30367
..accept 13025 |instant
step
goto 60.6,27.7
.talk 30357
..accept 13013 |instant
step
'Go northwest to Zul'Drak |goto Zul'Drak |noway |c
step
goto Zul'Drak,58.9,56.0
.talk 30369
..accept 13027 |instant
step
'Go northwest to The Storm Peaks |goto The Storm Peaks |noway |c
step
goto The Storm Peaks,41.2,84.7
.talk 30370
..accept 13028 |instant
step
goto 28.9,73.7
.talk 30359
..accept 13015 |instant
step
goto 31.3,37.6
.talk 30375
..accept 13020 |instant
step
goto 64.6,51.3
.talk 30374
..accept 13032 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
next Zygor's Alliance Event Guides\\Love is in the Air (February 7th - 20th)\\Love is in the Air Dailies
step
goto Ironforge,35.3,69.0
.talk 38293
..accept 24804
step
goto Ironforge,55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24804
..accept 24655
step
goto 62.4,76.9
.' Find Stormwind Guards that have the Heavily Perfumed buff on them|tip They are all over Stormwind and will have a glowing pink aura around them
.' Use Snagglebolt's Air Analyzer on Stormwind Guards|use Snagglebolt's Air Analyzer##50131
.' Analyze 6 Perfumed Guards|q 24655/1
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24655
..accept 24656
step
' While disguised as a package-runner, RUN to the Crown Chemical Company's stockpile outside the gates of Stormwind|goto Elwynn Forest,34.0,47.4,0.3
.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24656
step
' Quickly return the package they toss you to Inspector Snip Snagglebolt in Stormwind.|goto Stormwind City,61.6,75.3,0.3
' Deliver the package in time |condition ZGV.questsbyid[24656] and ZGV.questsbyid[24656].complete |q 24656
.' If you lose your disguise, ask the Inspector for another one and repeat the run.
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24656
..accept 24848
step
goto Stormwind City,60.6,76.4
.talk 38325
..turnin 24848
..accept 24849
step
goto Stormwind City,63.2,79.1
.' Search the Stormwind Counting House|q 24849/1
step
goto Stormwind City,61.2,70.9
.' Search the Stormwind Auction House|q 24849/2
step
goto Stormwind City,61.3,65.0
.' Search the Stormwind Barber Shop|q 24849/3
step
goto Stormwind City,60.6,76.4
.talk 38325
..turnin 24849
..accept 24657
step
goto Stormwind City,27.43,34.8
.talk 37715
.' Talk to him until he gives you Snivel's Ledger
..collect Snivel's Ledger##49915|q 24657/1
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24657
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air even daily quests.
daily
step
goto Ironforge,33.5,65.6
.talk 16075
..accept 24609 |daily
step
goto 55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,61.6,75.3
.talk 38066
..' You have to be at least level 5 to accept a quest from him
..accept 24658 |daily |only if level >= 5 and level < 14
..accept 24659 |daily |only if level >= 14 and level < 23
..accept 24660 |daily |only if level >= 23 and level < 32
..accept 24662 |daily |only if level >= 32 and level < 41
..accept 24663 |daily |only if level >= 41 and level < 51
..accept 24664 |daily |only if level >= 51 and level < 61
..accept 24665 |daily |only if level >= 61 and level < 71
..accept 24666 |daily |only if level >= 71
step
goto 62.4,75.4
.talk 37675
..accept 24629 |daily |or
..accept 24635 |daily |or
..accept 24636 |daily |or
step
goto Stormwind City,62.5,75.0
.talk 16075
..accept 24597 |daily
step
'Run around Stormwind and:
.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
.' Give 10 Cologne Samples |q 24635/1
step
'Run around Stormwind and:
.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
.' Give 10 Perfume Samples |q 24629/1
step
'Run around Stormwind and:
.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
.' Give 10 Chocolate Samples |q 24636/1
step
'Go outside Stormwind to Elwynn Forest |goto Elwynn Forest |noway |c
only if level >= 5 and level < 14
step
goto Elwynn Forest,29.3,65.4
.kill 5 Crown Lackey |q 24658/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24658/1
only if level >= 5 and level < 14
step
'This step depends on your character's level and what you want to do.
.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
..collect 40 Lovely Charm##49655 |n
.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
.collect 4 Lovely Charm Bracelet##49916
step
'Go to Stormwind City |goto Stormwind City |noway |c
only if level >= 5 and level < 14
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24658 |daily
only if level >= 5 and level < 14
step
goto 62.4,75.4
.talk 37675
..turnin 24629
..turnin 24635
..turnin 24636
step
goto 80,38.4
.talk 29611
..turnin 24597
step
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Grove of the Ancients, Darkshore |goto Darkshore,44.4,75.5,0.5 |noway |c
step
goto Darkshore,44.2,78.0
.kill 5 Crown Thugs |q 24659/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24659/1
only if level >= 14 and level < 23
step
goto 44.4,75.5
.talk 33253
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,45.4,57.8
.talk 16075
..accept 24610 |daily
step
goto 37.0,50.5
.' Go into the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto The Exodar,73.6,57.0
.talk 16075
..accept 24611 |daily
..turnin 24611
step
goto 54.5,36.3
.talk 17555
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
goto Teldrassil,55.0,93.7 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,70.9,72.5
.talk 352
.'Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,40.0,55.1
.talk 2784
..turnin 24609
step
goto 55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,80,38.4
.talk 29611
..turnin 24610
step
goto 61.6,75.3
.talk 38066
..turnin 24659 |daily
only if level >= 14 and level < 23
step
goto Stormwind City,70.9,72.5
.talk 352
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
only if level >= 23 and level < 32
step
'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
only if level >= 23 and level < 32
step
goto Hillsbrad Foothills,34.5,58.4
.kill 5 Crown Duster |q 24660/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24660/1
only if level >= 23 and level < 32
step
'Go northeast to The Hinterlands |goto The Hinterlands |noway |c
only if level >= 23 and level < 32
step
goto The Hinterlands,11.1,46.2
.talk 8018
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 23 and level < 32
step
goto Ironforge,55.5,47.8
.talk 1573
.' Fly to Menethil Harbor |goto Wetlands,9.4,59.5,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Wetlands,6.4,62.3 |n
.' Ride the boat to Theramore |goto Dustwallow Marsh |noway |c
only if level >= 32 and level < 41
step
goto Dustwallow Marsh,60.8,38.2
.kill 5 Crown Hoodlum |q 24662/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24662/1
only if level >= 32 and level < 41
step
goto 71.5,56.3|n
.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
only if level >= 32 and level < 41
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Stormwind City,70.9,72.5
.talk 352
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
only if level >= 41 and level < 51
step
goto The Hinterlands,23.6,53.7
.kill 5 Crown Agent |q 24663/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24663/1
only if level >= 41 and level < 51
step
goto The Hinterlands,11.1,46.2
.talk 8018
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 41 and level < 51
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24660 |only if level >= 23 and level < 32
..turnin 24662 |only if level >= 32 and level < 41
..turnin 24663 |only if level >= 41 and level < 51
only if level >= 23 and level < 51
step
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
only if level >= 51 and level < 61
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Everlook |goto Winterspring,61.0,48.7,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Winterspring,63.6,49.4
.kill 5 Crown Sprinkler |q 24664/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24664/1
only if level >= 51 and level < 61
step
goto 61.0,48.6
.talk 11138
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Teldrassil,55.0,93.7 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
only if level >= 51 and level < 61
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24664
only if level >= 51 and level < 61
step
goto Stormwind City,49.0,87.4 |n
.' Click the Portal to Blasted Lands |tip It's a blue portal at the top of the mage tower.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,58.7,59.7 |n
.' Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
only if level >= 61 and level < 71
step
goto Hellfire Peninsula,87.4,52.4
.talk 18931
.' Fly to Shattrath City |goto Shattrath City,63.8,41.7,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
only if level >= 61 and level < 71
step
goto Terokkar Forest,41.4,22.5
.kill 5 Crown Underling |q 24665/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24665/1
only if level >= 61 and level < 71
step
'Go inside Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
goto Shattrath City,64.1,41.1
.talk 18940
.' Fly to Hellfire Peninsula, The Dark Portal, Alliance |goto Hellfire Peninsula,87.5,52.5,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,61.3,21.6
.talk 8609
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 61 and level < 71
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24665
only if level >= 61 and level < 71
step
goto 18.2,25.5 |n
.'Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
only if level >= 71
step
'Fly to Dalaran|goto Dalaran|noway|c
only if level >= 74
step
.' Follow the road northeast to Dragonblight|goto Dragonblight|noway|c
only if level >= 71 and level < 74
step
.' We recommend the following route to get through Dragonblight
.' Follow the road north east to this point: 50.1,55.6
.' Head towards Wyrmrest temple to this point: 57.9,51.2
.' Travel north up the Path of the Titans starting at: 60.0,42.3
.' Continue up through the Crystal Vice starting here 64.6,23.9|tip Avoid the elite giants the best you can
.' Go north to Crystalsong Forest|goto Crystalsong Forest|noway|c
only if level >= 71 and level < 74
step
goto Crystalsong Forest,49.0,47.8
.kill 5 Crown Sprayer |q 24666/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24666/1
only if level >= 71
step
'Go south to Dragonblight|goto Dragonblight|noway|c
only if level >= 71 and level < 74
step
'Go to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
only if level >= 74
step
goto Dragonblight,64.6,23.9
.' We recommend the following route to get through Dragonblight
.' Follow The Crystal Vice to this point 64.6,23.9|tip Avoid the elite giants the best you can
.' Travel south down the Path of the Titans to this point: 60.0,42.3
.' Head towards Wyrmrest temple to this point: 57.9,51.2
.' Follow the road west to this point: 50.1,55.6
.' Go west to Borean Tundra|goto Borean Tundra|noway|c
only if level >= 71 and level < 74
step
'Fly to Valiance Keep|goto Borean Tundra,58.9,68.4,0.5|noway|c
only if level >= 74
step
'Ride the boat to Stormwind City|goto Stormwind City|noway|c
only if level >= 71
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24666
only if level >= 71
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
step
'You will need Love Tokens in order to purchase items from vendors in this guide section. |tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section.
.' Skip to the next step in the guide
step
goto Ironforge,34.0,66.1
.talk 37674
.buy Bag of Heart Candies##21813 |n
.' Get the 8 different types of Heart Candy:
.' Be Mine! |collect 1 Heart Candy##21816
.' I'll follow you all around Azeroth. |collect 1 Heart Candy##21818
.' All yours. |collect 1 Heart Candy##21819
.' I'm all yours! |collect 1 Heart Candy##21821
.' Hot Lips. |collect 1 Heart Candy##21823
.' You're Mine! |collect 1 Heart Candy##21822
.' You're the best! |collect 1 Heart Candy##21820
.' I LOVE YOU |collect 1 Heart Candy##21817
step
'Eat the 8 different type of Heart Candy:
.' Be Mine! |use 1 Heart Candy##21816 |achieve 1701/1
.' I'll follow you all around Azeroth. |use 1 Heart Candy##21818 |achieve 1701/2
.' All yours. |use 1 Heart Candy##21819 |achieve 1701/3
.' I'm all yours! |use 1 Heart Candy##21821 |achieve 1701/4
.' Hot Lips. |use 1 Heart Candy##21823 |achieve 1701/5
.' You're Mine! |use 1 Heart Candy##21822 |achieve 1701/6
.' You're the best! |use 1 Heart Candy##21820 |achieve 1701/7
.' I LOVE YOU |use 1 Heart Candy##21817 |achieve 1701/8
step
goto 34.0,66.1
.talk 37674
.buy 10 Silver Shafted Arrow##22200 |n
.' Use your Silver Shafted Arrows on 10 players inside Ironforge |use Silver Shafted Arrow##22200
.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
step
goto 34.0,66.1
.talk 37674
.buy 1 Box of Chocolates##49909 |n
.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
.' Eat each type of chocolate:
.' Sweet Surprise |use Sweet Surprise##22239 |achieve 1702/3
.' Very Berry Cream |use Very Berry Cream##22238 |achieve 1702/4
.' Buttermilk Delight |use Buttermilk Delight##22236 |achieve 1702/1 |tip Save the remaining Buttermilk Delights for a later achievement.
.' Dark Desire |use Dark Desire##22237 |achieve 1702/2
step
goto 34.0,66.1
.talk 37674
.buy 10 Love Rocket##34258 |n
.' Spam use your Love Rockets |use Love Rocket##34258
.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
step
goto 34.0,66.1
.talk 37674
.buy 15 Handful of Rose Petals##22218 |achieve 1699
.buy 1 Romantic Picnic Basket##34480 |achieve 1291
.buy 1 "VICTORY" Perfume##49856 |achieve 1279
.buy 5 Love Fool##22261 |achieve 1704
step
goto 18.7,51.8
.talk 5112
.buy 6 Flagon of Mead##2594 |achieve 1279
step
'Go to Dalaran |goto Dalaran |noway |c
step
'All around Dalaran:
.' Use your Handful of Rose Petals on the follow race/class combinations: |use Handful of Rose Petals##22218 |tip Save any extra Handfuls of Rose Petals you have, you'll need one later.
.' Gnome Warlock |achieve 1699/1
.' Orc Death Knight |achieve 1699/2
.' Human Death Knight |achieve 1699/3
.' Night Elf Priest |achieve 1699/4
.' Orc Shaman |achieve 1699/5
.' Tauren Druid |achieve 1699/6
.' Undead Warrior |achieve 1699/7
.' Troll Rogue |achieve 1699/8
.' Blood Elf Mage |achieve 1699/9
.' Draenei Paladin |achieve 1699/10
.' Dwarf Hunter |achieve 1699/11
step
'In Dalaran:
.' Find a player to have a picnic with you
.' Use your Romantic Picnic Basket |use Romantic Picnic Basket##34480
.' While having a picnic, use your Buttermilk Delight |use Buttermilk Delight##22236
.' Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic |achieve 1291
step
'Go to Wintergrasp in Northrend:
.' Use your Love Fool anywhere inside Wintergrasp |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/1
step
'Go to Ironforge |goto Ironforge |noway |c
step
goto 42.4,35.7
.' Find Sraaz |tip He's a gnome that walks around the circle around The Great Forge.
.' Do the following exactly in order from top to bottom in the step:
.' Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
.' Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
.' Use your Handful of Rose Petals on Sraaz |use Handful of Rose Petals##22218 |achieve 1279/1
.' Kiss Sraaz |script DoEmote("KISS") |achieve 1279/2
step
'Go to the Gurubashi Arena in The Cape of Stranglethorn: |tip The Cape of Stranglethorn is the southern-most zone on the Eastern Kingdoms continent.
.' Use your Love Fool anywhere inside the Gurubashi Arena |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/2
step
'Enter the Arathi Basin PvP Battleground:
.' Use your Love Fool inside the Blacksmith subzone inside Arathi Basin |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/3
step
'Enter the Culling of Stratholme dungeon:
.' Use your Love Fool anywhere inside the Culling of Stratholme dungeon |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/4
step
'Enter the Naxxramas raid:
.' Use your Love Fool anywhere inside the Naxxramas raid |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/5
step
'Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.
.' Kill the mobs until you collect 120 Lovely Charms.  |tip You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
.collect 120 Lovely Charm##49655 |n
.' Use your Lovely Charms to create 12 Lovely Charm Bracelets |use Lovely Charm##49655
.' Create 12 Lovely Charm Bracelets |achieve 260
step
'Kill these certain bosses in any of the following dungeons: |tip You can enter either Normal or Heroic difficulty, it doesn't matter.
.' Maiden of Grief in the Halls of Stone dungeon
.' Prince Keleseth in the Utgarde Keep dungeon
.' Prince Taldaram in the Ahn'kahet: The Old Kingdom dungeon
.' Drahga Shadowburner in the Grim Batol Dungeon
.' Corla, Herald of Twilight in the Blackrock Caverns
.' High Priestess Azil in The Stonecore Dungeon
.' Lord Godfrey in the Shadowfang Keep Dungeon
.' Get either of these 2 items as a random drop from these bosses:
.collect 1 Bouquet of Red Roses##22206 |n
.collect 1 Bouquet of Ebon Roses##44731 |n
.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703
step
'Congratulations, you are a Fool For Love!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
step
goto Darnassus,44.7,52.9
.talk 19173
..accept 13484
step
'Leave out of the east exit of Darnassus to go outside to Teldrassil |goto Teldrassil |noway |c
step
goto Teldrassil,55.6,51.4
.talk 32799
..turnin 13484
..accept 13480 |daily
step
goto 55.7,51.3
.talk 32836
..accept 13502
step
'Search around Dolanaar for Brightly Colored Eggs and click them:
.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
.collect Brightly Colored Egg##45072+ |n
.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
.get 20 Brightly Colored Shell Fragment |q 13480/1
.get 10 Noblegarden Chocolate |q 13502/1
step
goto 55.7,51.3
.talk 32836
..turnin 13502
step
goto 55.6,51.4
.talk 32799
..turnin 13480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
step
'You may be unable to complete some of the achievements if you are lower level.  So, if you find you cannot do something in this guide, simply skip it and do what you can.
step
goto Teldrassil,55.5,51.0
.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
.collect Brightly Colored Egg##45072+ |n
.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
.collect 100 Noblegarden Chocolate##44791+ |n
.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249
step
'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Vendor at [55.7,51.3]:
.collect Noblegarden Egg##44818 |achieve 2421 |tip It costs 5 Noblegarden Chocolates.
.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
.collect Spring Rabbit's Foot##44794 |achieve 2419 |tip It costs 100 Noblegarden Chocolates.
step
goto Teldrassil,55.5,51.0
.' Use your Spring Rabbit's Foot in your bags to get a Spring Rabbit companion |use Spring Rabbit's Foot##44794
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Dolanaar |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Dolanaar |achieve 2419/2
step
'Go west to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,36.9,50.5 |n
.' Go inside the pink portal to Teldrassil |goto Teldrassil |noway |c
step
goto Teldrassil,52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto Azuremyst Isle,49.1,52.0
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Azure Watch |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Azure Watch |achieve 2419/1
step
goto 21.4,54.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Thunk's Abode, Desolace |goto Desolace,70.7,32.9,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Desolace |achieve 2436/2
step
goto Desolace,70.7,32.9
.talk 35556
.' Fly to Fizzle and Pozzik's Speedbarge, Thousand Needles |goto Thousand Needles,79.1,71.9,0.5 |noway |c
step
goto Thousand Needles,90.3,72.8
.' Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Thousand Needles |achieve 2436/5
step
goto 79.2,72.0
.talk 40768
.' Fly to Cenarion Hold, Silithus |goto Silithus,54.5,32.9,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Silithus |achieve 2436/3
step
goto Silithus,54.4,32.7
.talk 15177
.' Fly to Mossy Pile, Un'Goro Crater |goto Un'Goro Crater,44.0,40.2,0.5 |noway |c
step
goto Un'Goro Crater,35.8,50.7
.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
.' Stand in this spot until you lay an egg
.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
step
goto 44.1,40.3
.talk 39175
.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.4,29.4,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Tanaris |achieve 2436/4
step
goto Tanaris,51.4,29.5
.talk 7823
.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
step
goto Dustwallow Marsh,71.5,56.3 |n
.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Dustwind Dig, Badlands |goto Badlands,48.8,36.2,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in The Badlands |achieve 2436/1
step
goto Badlands,49.0,36.2
.talk 44409
.' Fly to Kharanos, Dun Morogh |goto Dun Morogh,53.7,52.7,0.5 |noway |c
step
goto Dun Morogh,53.5,51.2
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Kharanos |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Kharanos |achieve 2419/4
step
goto 53.8,52.8
.talk 43701
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
'Use your Noblegarden Egg anywhere in Stormwind City |use Noblegarden Egg##44818
.' Hide a Brightly Colored Egg in Stormwind City |achieve 2421
step
goto Stormwind City,70.9,72.5
.talk 352
.' Fly to Goldshire, Elwynn |goto Elwynn Forest,41.8,64.6,0.5 |noway |c
step
goto Elwynn Forest,43.1,67.6
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Goldshire |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Goldshire |achieve 2419/3
step
'Equip your Black Tuxedo Pants and White Tuxedo Shirt
.' Find another player who is wearing the Elegant Dress and perform the Kiss emote on them |script DoEmote("KISS") |tip The Elegant Dress looks like a long pink dress when worn.
.' Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
step
'Find a female character of every race that are at least level 18 and do the following: |tip The best place, by far, to find them is in Dalaran.  You could also try Shattrath.
.' Use your Spring Flowers on them |use Spring Flowers##45073
.' Place bunny ears on a Blood Elf |achieve 2422/1
.' Place bunny ears on a Human |achieve 2422/5
.' Place bunny ears on a Troll |achieve 2422/9
.' Place bunny ears on a Draenei |achieve 2422/2
.' Place bunny ears on a Night Elf |achieve 2422/6
.' Place bunny ears on a Undead |achieve 2422/10
.' Place bunny ears on a Dwarf |achieve 2422/3
.' Place bunny ears on a Orc |achieve 2422/7
.' Place bunny ears on a Gnome |achieve 2422/4
.' Place bunny ears on a Tauren |achieve 2422/8
step
'Congratulations, you are now a Noble Gardener!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Stormwind Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Stormwind questline for the Children's Week event.
startlevel 60
step
goto Stormwind City,56.3,54.0
.talk 14450
..accept 1468
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 1468
..accept 29093
..accept 29106
..accept 29107
step
goto Stormwind City,71.0,72.5
.talk 352
.' Fly to Sentinel Hill, Westfall |goto Westfall,56.6,49.4,0.5 |noway |c
step
goto Westfall,57.8,53.0
.' Click a Rental Chopper |tip They look like motorcycles with luggage on the back of them.
.' Give Your Orphan a Chopper Tour of the Raging Chasm |q 29093/1
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 29093
step
goto 56.6,49.4
.talk 523
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.6,47.7,0.5 |noway |c
step
goto Ironforge,44.2,51.8 |n
.' Follow the path down |goto Ironforge,44.2,51.8,0.5 |noway |c
step
goto 33.2,47.8
.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.' Take Your Orphan to Visit King Magni in Old Ironforge |q 29106/1
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 29106
step
goto 42.2,46.7 |n
.' Follow the path up |goto 42.2,46.7,0.5 |noway |c
step
goto 55.5,47.7
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,22.6,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.1,88.5 |n
.' Enter the pink portal to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,43.1,78.1
.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.' Take Your Orphan to Visit Malfurion Stormrage |q 29107/1
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 29107
..accept 29117
..accept 29119
step
goto 37.0,50.5 |n
.' Enter the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.0,93.6 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,58.8,64.1
.talk 52358
.buy Dragon Kite 2-Pack##68890 |q 29117
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.' When your orphan is next to you:
.' Use your Dragon Kite 2-Pack |use Dragon Kite 2-Pack##68890
.' Fly Dragon Kites with Your Orphan |q 29117/1
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 29117
step
goto 49.0,89.7
.talk 52421
.buy Cone of Cold##69027 |q 29119
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.' When your orphan is next to you:
.' Use your Cone of Cold |use Cone of Cold##69027
.' Take Your Orphan Out for Ice Cream |q 29119/1
step
'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
.talk 14305
..turnin 29119
..accept 171
step
goto 58.8,64.1
.talk 52358
.get Foam Sword Rack |q 171/1 |tip Buy this from Craggle Wobbletop.
step
goto 56.3,54.0
.talk 51988
..turnin 171 |tip You will be able to choose from 4 pet companions or a 5 gold reward.  If you already have all 4 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 4 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
startlevel 60
step
goto Shattrath City,74.9,47.9
.talk 22819
..accept 10943
step
'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.talk 22818
..turnin 10943
..accept 10950
..accept 10952
..accept 10954
step
goto Nagrand,31.5,57.6
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa taken to Aeris Landing |q 10954/1
step
goto Nagrand,31.5,57.6
.talk 22836
..turnin 10954
step
goto Terokkar Forest,39.8,64.7
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa to the Ring of Observance |q 10950/1
step
'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.talk 22818
..turnin 10950
step
goto Hellfire Peninsula,89.6,50.2
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa to the Dark Portal |q 10952/1
step
'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.talk 22818
..turnin 10952
..accept 10956
..accept 10962
step
'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
step
goto Blasted Lands,61.3,21.6
.talk 8609
..' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,27.5,77.7,0.5 |noway |c
step
goto The Cape of Stranglethorn,39.1,67.0 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
step
goto Northern Barrens,69.1,70.7
.talk 16227
..' Fly to Gadgetzan, Tanaris |goto Tanaris,51.4,29.4,0.5 |noway |c
step
goto Tanaris,61.5,50.6 |n
.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
step
goto Tanaris,64.9,50.0 |n
.' Enter the Caverns of Time here |goto Tanaris,64.9,50.0,0.5 |noway |c
step
'Follow the path down to 59.9,57.2 |goto Tanaris,59.9,57.2 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa to the Caverns of Time |q 10962/1
step
goto 63.0,57.3
.talk 21643
.get Toy Dragon##31951 |q 10962/2
step
'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.talk 22818
..turnin 10962
step
'Go outside to 51.4,29.5 |goto 51.4,29.5
.talk 7823
..' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.4,0.5 |noway |c
step
goto Teldrassil,55.2,88.4 |n
.' Go through the pink portal to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,44.2,78.7 |n
.' Click the Portal to Exodar |goto The Exodar |noway |c
step
goto The Exodar,58.0,41.4
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa to the Seat of the Naaru |q 10956/1
step
goto The Exodar,58.0,41.4
.talk 17538
..turnin 10956
..accept 10968
step
goto The Exodar,30.4,33.1
.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.' Take Dornaa to to Farseer Nobundo |q 10968/1
step
goto The Exodar,30.4,33.1
.talk 17204
..turnin 10968
step
'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
.talk 22818
..accept 10966
step
goto The Exodar,48.1,63.0 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
step
'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,87.4,52.4
.talk 18931
..' Fly to Shattrath, Terokkar Forest |goto Shattrath City |noway |c
step
goto Shattrath City,74.9,47.9
.talk 22819
..turnin 10966 |tip You will be able to choose from 3 pet companions.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
startlevel 70
step
goto Dalaran,49.4,63.2
.talk 34365
..accept 13926
..' Ask about the orphans
..' Speak to Orphan Matron Aria and accept to care for the Oracle Orphan |q 13926/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13926
..accept 13929
..accept 13933
..accept 13950
step
goto Grizzly Hills,50.8,42.8
.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Take Roo to visit Grizzlemaw |q 13929/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13929
step
goto Dragonblight,72.5,36.9
.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Take Roo to visit the Bronze Dragonshrine |q 13933/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13933
step
goto Borean Tundra,43.5,13.7
.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Take Roo to visit Winterfin Retreat |q 13950/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13950
..accept 13954
..accept 13956
step
goto Sholazar Basin,40.3,83.0 |n
.' Walk into the light to teleport to Un'Goro Crater |goto Un'Goro Crater |noway |c
step
goto Un'Goro Crater,47.5,9.2
.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Take Roo to visit The Etymidian |q 13956/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13956
step
goto Un'Goro Crater,50.5,7.8 |n
.' Walk into the light to teleport to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Dragonblight,59.8,54.7
.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Take Roo to visit Alexstrasza the Life-Binder |q 13954/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13954
..accept 13937
step
goto Dragonblight,60.3,51.6
.talk 26851
..' Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,44.9,45.6
.talk 29478
..collect 1 Small Paper Zeppelin##46693
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.' Use your Small Paper Zeppelin on your Oracle Orphan |use Small Paper Zeppelin##46693
.' Throw the Small Paper Zeppelin to Roo |q 13937/1
step
'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
.talk 33533
..turnin 13937
..accept 13959
step
goto Dalaran,49.4,63.2
.talk 34365
..turnin 13959 |tip You will receive a Curious Oracle Hatchling pet companion in the mail.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
startlevel 70
step
goto Dalaran,49.4,63.2
.talk 34365
..accept 13927
..' Ask about the orphans
..' Speak to Orphan Matron Aria and accept to care for the Wolvar Orphan |q 13927/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13927
..accept 13930
..accept 13934
..accept 13951
step
goto Grizzly Hills,50.8,42.8
.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Take Kekek to visit Grizzlemaw |q 13930/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13930
step
goto Dragonblight,72.5,36.9
.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Take Kekek to visit the Bronze Dragonshrine |q 13934/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13934
step
goto Dragonblight,45.3,63.3
.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Take Kekek to visit Snowfall Glade |q 13951/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13951
..accept 13955
..accept 13957
step
goto Dragonblight,59.8,54.7
.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Take Kekek to visit Alexstrasza the Life-Binder |q 13955/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13955
step
goto Sholazar Basin,27.1,58.7
.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Take Kekek to visit Hemet Nesingwary |q 13957/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13957
..accept 13938
step
goto Sholazar Basin,25.3,58.5
.talk 28037
..' Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,44.9,45.6
.talk 29478
..collect 1 Small Paper Zeppelin##46693
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.' Use your Small Paper Zeppelin on your Wolvar Orphan |use Small Paper Zeppelin##46693
.' Throw the Small Paper Zeppelin to Kekek |q 13938/1
step
'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
.talk 33532
..turnin 13938
..accept 28880
step
goto Dalaran,49.4,63.2
.talk 34365
..turnin 28880 |tip You will receive a Curious Wolvar Pup pet companion in the mail.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
startlevel 10
step
goto Stormwind City,56.3,54.0
.talk 14450
..' Ask her for another Orphan Whistle
.collect 1 Human Orphan Whistle##18598
step
'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
.' Get the Daily Chores Achievement |achieve 1789
step
goto Stormwind City,61.3,75.0
.talk 14481
..buy Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788
step
'Purchase the follow items from the Auction House, or use your Cooking ability to create them, if you'd like:
.collect 1 Tasty Cupcake##43490 |achieve 1788
.collect 1 Delicious Chocolate Cake##33924 |achieve 1788
step
goto Dalaran,51.2,29.1
.talk 29548
..buy 1 Red Velvet Cupcake##42429 |achieve 1788
..buy 1 Lovely Cake##42438 |achieve 1788
..buy 1 Dalaran Doughnut##42430 |achieve 1788
..buy 1 Dalaran Brownie##42431 |achieve 1788
step
'Use your Lovely Cake in your bags to place a cake on the ground |use Lovely Cake##42438
.' Click the Lovely Cake
.collect 1 Lovely Cake Slice##42434 |achieve 1788
step
'Use whichever Orphan Whistle you currently have to summon your Orphan, so that the Orphan is standing next to you:
.' Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
.' Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
.' Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
.' Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
.' Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
.' Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
.' Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
step
'Use your Hearthstone while your Orphan is standing next to you |use Hearthstone##6948
.' Get the Home Alone Achievement |achieve 1791
step
'The following achievements are a little more dynamic, so we cannot walk you step-by-step through getting them.  Skip to the next guide step.
step
'Find a group, run the Utgarde Pinnacle dungeon, and defeat King Ymiron |tip Make sure your Orphan is standing next to you when you defeat King Ymiron, or else you won't get credit for the achievement.
.' Get the Hail To The King, Baby Achievement |achieve 1790
step
'Enter the Eye of the Storm battleground and capture the flag |tip Make sure your Orphan is standing next to you when you capture the flag, or else you won't get credit for the achievement.
.' Capture the flag in Eye of the Storm |achieve 1786/1
step
'Enter the Alterac Valley battleground and assault a tower |tip Make sure your Orphan is standing next to you when you assault the tower, or else you won't get credit for the achievement.
.' Assault a tower in Alterac Valley |achieve 1786/2
step
'Enter the Arathi Basin battleground and assault a flag |tip Make sure your Orphan is standing next to you when you assault the flag, or else you won't get credit for the achievement.
.' Assault a flag in Arathi Basin |achieve 1786/3
step
'Enter the Warsong Gulch battleground and return a fallen flag |tip Make sure your Orphan is standing next to you when you return the fallen flag, or else you won't get credit for the achievement.
.' Return a fallen flag in Warsong Gulch |achieve 1786/4
step
'Congratulations, you do it For The Children!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
step
goto Ironforge,30.8,62.9
.talk 19148
..accept 11441
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,55.1,38.1
.talk 24710
..turnin 11441
step
goto 55.1,37.7
.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
.talk 23486
..accept 11441
..accept 11441
step
goto 55.1,37.7
.talk 23486
..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
.collect Synthebrew Goggles##46735 |q 11117
step
goto 54.7,38.1
.talk 27215
..accept 12022
step
goto 54.8,37.9
.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
.' Hit S.T.O.U.T. 5 Times |q 12022/1
step
goto 54.7,38.1
.talk 27215
..turnin 12022
step
goto 53.7,38.6
.talk 23558
..accept 11318
step
'As you run around on the ram:
.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  The make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
.' Maintain a Trot for 8 seconds |q 11318/1
.' Maintain a Canter for 8 seconds |q 11318/2
.' Maintain a Gallop for 8 seconds |q 11318/3
step
goto 53.7,38.6
.talk 23558
..turnin 11318
..accept 11122
step
map Dun Morogh
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
.' _FOLLOW THE WAYPOINT PATH_ Flynn Firebrew will throw you a keg when you get close
.' Once you have a keg, run back and turn it in to Pol Amberstill at |tip Just get near him and you will throw the keg to him.
.' Deliver 3 Kegs in Under 4 Minutes|q 11122/1
step
goto 53.7,38.6
.talk 23558
..turnin 11122
step
goto 53.5,38.6
.talk 24468
.' You will be able to accept one of these quests
..accept 13932 |or
.' or
..accept 29397 |or
step
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11117
step
goto 54.5,38.5
.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
.get 5 Stunned Wolpertinger |q 11117/1
step
goto 55.1,37.7
.talk 23486
..turnin 11117
.collect Wolpertinger's Tankard |n
.' Does Your Wopertinger Linger? |achieve 1936 |tip If you are on the EU server you will be able to achieve this in the Achievments Guide.
step
goto 56.4,37.8
.talk 23710
..turnin 13932 |or
.' or
..turnin 29397 |or
step
'Go inside Ironforge |goto Ironforge |noway |c
step
|fly Stormwind City
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
goto Elwynn Forest,33.5,50.7
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Elwynn Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Elwynn Pink Elekk |q 11118/2
step
'Go inside Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto 55.1,88.3 |n
.' Go through the Pink Portal |goto Darnassus |noway |c
step
goto 67.3,46.1
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Azuremyst Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Azuremyst Pink Elekk |q 11118/3
step
goto Darnassus,44.2,78.7
.' Click on the Portal to Exodar |tip It looks like a swirling blue portal
.' Teleport to The Exodar |goto The Exodar |noway |c
step
goto The Exodar,78.4,57.4
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Teldrassil Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Teldrassil Pink Elekk |q 11118/1
step
goto 47.6,62.1
.' Click the Portal to Darnassus |tip It looks like a blue swirling portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
goto 36.3,50.3 |n
.' Go through the Pink Portal |goto Teldrassil |noway |c
step
goto 55.0,93.7 |n
.' Ride the boat to Stormwind |goto Stormwind City |noway |c
step
|fly Ironforge
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto 55.1,37.7
.talk 23486
..turnin 11118
step
'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
.' You will fight Coren Direbrew
.from Coren Direbrew##23872
.collect Direbrew's Dire Brew##38280 |n
.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38280
..accept 12491
step
'Click the green eye on the edge of your minimap
.' Teleport Out of the Dungeon and go to Dun Morogh |goto Dun Morogh |noway |c
step
goto 55.1,38.1
.talk 24710
..turnin 12491
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
daily
step
'You will only be able to do 1 of the first 2 dailies in this guide, per day. |tip Quests "Bark for the Barleybrews!" or "Bark for the Thunderbrews!".
.' Skip to the next step in the guide
step
goto Dun Morogh,56.1,38.0
goto Dun Morogh,56.1,38.0
.talk 23627
..accept 11293 |daily
step
goto Dun Morogh,56.5,36.9
..accept 11293 |daily |or
.' Or
goto 56.6,36.9
.talk 23628
..accept 11294 |daily |or
step
'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest (11293)
step
'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest (11294)
step
goto Ironforge,31.7,66.7
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Bank |q 11293/1
|only if havequest (11293)
step
goto 61.2,80.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Military Ward |q 11293/2
|only if havequest (11293)
step
goto 65.3,24.4
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Hall of Explorers |q 11293/3
|only if havequest (11293)
step
goto 29.5,14.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Mystic Ward |q 11293/4
|only if havequest (11293)
step
goto Ironforge,31.7,66.7
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Bank |q 11294/1
|only if havequest (11294)
step
goto 61.2,80.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Military Ward |q 11294/2
|only if havequest (11294)
step
goto 65.3,24.4
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Hall of Explorers |q 11294/3
|only if havequest (11294)
step
goto 29.5,14.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Mystic Ward |q 11294/4
|only if havequest (11294)
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,56.1,38.0
goto 56.1,38.0
.talk 23627
..turnin 11293
|only if havequest (11293)
step
goto Dun Morogh,56.5,36.9
goto 56.5,36.9
.talk 23628
..turnin 11294
|only if havequest (11294)
step
goto 56.0,37.2
.' Click the Dark Iron Mole Machine Wreckage |tip It looks like a big metal gear laying on ground in the middle of the festival.  It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
goto 56.0,37.1
.' Click the Dark Iron Mole Machine Wreckage |tip You have to defend the three kegs at these locations in order for it to show up.
.' Click the Complimentary Brewfest Sampler here [55.3,37.3]
.' Click the Complimentary Brewfest Sampler here [55.7,38.1]
.' Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines. |use Complimentary Brewfest Sampler##33096
..accept 12020 |daily
step
goto Dun Morogh,54.7,38.1
.talk 27215
..turnin 12020
.' Down With The Dark Iron Achievement |achieve 1186
step
goto 53.7,38.6
.talk 23558
..accept 29394 |instant |daily
.' On your Ram, run to Flynn Firebrew at|tip Flynn Firebrew will throw you a keg when you get close.
.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
step
map Dun Morogh
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
.' Follow this path to pick up Kegs from Flynn Firebrew and run them back to Neill Ramstein
.' Use your Ram Racing Reins |use Ram Racing Reins##33306
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
step
goto Dun Morogh,55.6,38.2
.talk 23522
.buy The Essential Brewfest Pretzel##33043 |achieve 1185
step
'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
.' Eat The Essential Brewfest Pretzels |achieve 1185/7
step
goto 56.5,37.7
.talk 23521
.buy Spiced Onion Cheese##34065 |achieve 1185
step
'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
.' Eat the Spiced Onion Cheese |achieve 1185/4
step
goto 56.0,36.4
.talk 23481
.buy Dried Sausage##34063 |achieve 1185
.buy Succulent Sausage##34064 |achieve 1185
.buy Savory Sausage##33023 |achieve 1185
.buy Pickled Sausage##33024 |achieve 1185
.buy Spicy Smoked Sausage##33025 |achieve 1185
.buy The Golden Link##33026 |achieve 1185
step
'Do the following:
.' Click the Dried Sausage in your bags |use Dried Sausage##34063
.' Eat the Dried Sausage |achieve 1185/1
.' Click the Succulent Sausage in your bags |use Succulent Sausage##34064
.' Eat the Succulent Sausage |achieve 1185/6
.' Click the Savory Sausage in your bags |use Savory Sausage##33023
.' Eat the Savory Sausage |achieve 1185/3
.' Click the Pickled Sausage in your bags |use Pickled Sausage##33024
.' Eat the Pickled Sausage |achieve 1185/2
.' Click the Spicy Smoked Sausage in your bags |use Spicy Smoked Sausage##33025
.' Eat Spicy Smoked Sausage |achieve 1185/5
.' Click the Golden Link in your bags |use The Golden Link##33026
.' Eat The Golden Link |achieve 1185/8
.' Achieve The Brewfest Diet! |achieve 1185
step
goto 56.4,37.8
.talk 23710
.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
step
'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
.' Make your Mount Festive for Brewfest! |achieve 303
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto 56.4,37.9
.talk 23710
.buy "Brew of the Month" Club Membership Form##37736 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
..accept 12420
step
'Go inside Ironforge |goto Ironforge |noway |c
step
goto Ironforge,18.8,53.1
.talk 27478
..turnin 12420
.' Achieve Brew of the Month! |achieve 2796
.' Achieve Brewmaster! |achieve 1684
step
goto Dun Morogh,56.4,37.8
.' If you are on the EU servers go here to buy your Wolpertinger Pet
.buy Wolpertinger's Tankard##32233 |n
.' Does Your Wopertinger Linger? |achieve 1936
step
'Congratulations, you are a Brewmaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
#include "Hallows_End_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
daily
#include "Hallows_End_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
#include "Hallows_End_Achievements_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
step
goto Ironforge,33.7,67.3
.talk 13433
..accept 7022
..accept 7042
..accept 8762
step
goto 33.1,65.5
.talk 13444
..turnin 7022
..accept 7025
step
goto 30.2,59.4
.talk 1365
..accept 7062
step
goto 60.1,36.4
.talk 5159
.' Learn the Apprentice Cooking skill, if you don't have it already
.' Skip to the next step in the guide
step
goto 77.5,11.8
.talk 2916
..turnin 7062
..accept 7063
step
goto 33.7,67.3
.talk 13433
.buy 1 Recipe: Gingerbread Cookie##17200 |n
.' Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
.' Learn the Gingerbread Cookie recipe
.' Skip to the next step in the guide
step
goto 33.7,67.3
.talk 13433
.buy 5 Holiday Spices##17194 |q 7025
step
'Buy 5 Small Eggs from the Auction House: |tip You can also farm these from mobs, if you'd prefer.
.collect 5 Small Egg##6889 |q 7025
step
goto 32.1,62.8
.' Use your Cooking profession next to the fire to create Gingerbread Cookies
.get 5 Gingerbread Cookie |q 7025/1
step
goto 18.1,51.4
.talk 5111
.buy Ice Cold Milk##1179 |q 7025
step
goto 18.1,51.4
.talk 5111
.home Ironforge
step
goto 33.1,65.5
.talk 13444
..turnin 7025
step
goto 39.2,56.0
.talk 42928
..turnin 7063
step
'Use your Smokeywood Satchel |use Smokywood Satchel##21315
.collect Pouch of Reindeer Dust##21211 |q 8762
step
goto 55.5,47.8
.talk 1573
.' Fly to Chillwind Camp, Western Plaguelands |goto Western Plaguelands,43.0,85.0,0.5 |noway |c
step
'Go south to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,42.3,41.1
.talk 13636
..turnin 7042
..accept 7043
step
goto 39.2,34.3
.from The Abominable Greench##13602 |tip He is a level 36 elite that spawns randomly around the outer edge of the Ruins of Alterac. You may need to group if you are a lower level.
.get Stolen Treats |q 7043/1
step
'Go north to Western Plaguelands |goto Western Plaguelands |noway |c
step
goto Western Plaguelands,42.9,85.1
.talk 12596
.' Fly to Thorium Point, Searing Gorge |goto Searing Gorge,37.9,30.4,0.5 |noway |c
step
goto 68.8,34.2
.talk 15664
..' Sprinkle some of the reindeer dust onto Metzen
.' Find Metzen the Reindeer and rescue him |q 8762/1
step
'Hearth to Ironforge |goto Ironforge,18.1,51.5,0.5 |use Hearthstone##6948 |noway |c
step
goto Ironforge,33.7,67.3
.talk 13433
..turnin 7043
..accept 7045
..turnin 8762
step
goto 33.1,65.5
.talk 13444
..turnin 7045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
step
goto Ironforge,19.9,53.8
.' Kiss a Winter Reveler every hour |script DoEmote("KISS") |tip You can only use this once per hour. The items you get are random.
.collect 10 Handful of Snowflakes##34191 |n
.collect 8 Mistletoe##21519 |n
.collect Preserved Holly##21213 |n
.' Skip to the next step in the guide
step
'Use a Handful of Snowflakes on the following race/class combinations |use Handful of Snowflakes##34191 |tip The best place to complete this is in major cities, but it can be done anywhere in the world.
.' You can get more snowflakes by using /kiss on Winter Revealers at [19.9,53.8]
.' Orc Death Knight |achieve 1687/1
.' Human Warrior |achieve 1687/2
.' Tauren Shaman |achieve 1687/3
.' Night Elf Druid |achieve 1687/4
.' Undead Rogue |achieve 1687/5
.' Troll Hunter |achieve 1687/6
.' Gnome Mage |achieve 1687/7
.' Dwarf Paladin |achieve 1687/8
.' Blood Elf Warlock |achieve 1687/9
.' Draenei Priest |achieve 1687/10
step
'Use the Cooking profession to create Egg Nog and Hot Apple Cider
.' You can get the recipes for these items from Wulmort Jinglepocket at [33.7,67.3]
.collect Egg Nog##17198 |achieve 1688/2
.collect Hot Apple Cider##34411 1688/3 |tip Requires a cooking skill of 325
step
'Use the Tailoring profession or pay a tailor to create Green Winter Clothes
.' You can buy the pattern from Wulmort Jinglepocket at [33.7,67.3]
.collect Red Winter Clothes##34085
step
'Use the Leatherworking profession or pay a leatherworker to create Winter Boots
.' You can buy the pattern from Wulmort Jinglepocket at [33.7,67.3]
.collect Winter Boots##34086
step
'Queue for The Nexus dungeon
.from Grand Magus Telestra##26731
.collect Red Winter Hat##21524
step
'Get the Smokywood Pastures Sampler from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
.' Click the Smokywood Pastures Sampler in your bag |use Smokywood Pastures Sampler##17685
.collect Graccu's Mince Meat Fruitcake##21215
.' Equip the Red Winter Clothes |use Red Winter Clothes##34085
.' Equip the Winter Boots |use Winter Boots##34086
.' Equip the Red Winter Hat |use Red Winter Hat##21524
.' During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake |use Graccu's Mince Meat Fruitcake##21215 |achieve 277
step
'Go outside of Ironforge to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,60.3,33.9
.' Use the Winter Wondervolt machine to turn into a Little Helper |Use them every 30 minutes while PvPing to keep the buff on.  If you don't have the buff active while killing players, you won't get credit.
.' Do any type of PvP of your choice |tip We recommend Alterac Valley. You must be killing players that give you honor.
.' Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine |achieve 252
step
'Make sure you have the following in your bags:
.collect 8 Mistletoe##21519
.collect Preserved Holly##21213
step
goto Ironforge,33.7,67.3
.talk 13433
.buy Snowball##17202
step
goto 39.2,56.0
.' Use a snowball on Muradin Bronzebeard |use Snowball##17202
.' Throw a snowball at Muradin Bronzebeard during the Feast of Winter Veil |achieve 1255
step
goto 76.9,51.2 |n
.' Ride the Deep Run Tram to Stormwind City |goto Stormwind City |noway |c
step
goto 55.0,54.2
.' Use your Mistletoe on Brother Kristoff |use Mistletoe##21519
.' Use Mistletoe on Brother Kristoff in Stormwind City |achieve 1686/4
step
goto 51.6,46.4
.' Use your Mistletoe on Brother Benjamin |use Mistletoe##21519 |tip He patrols in front of this entryway, so you may need to search for him.
.' Use Mistletoe on Brother Benjamin in the Stormwind City |achieve 1686/8
step
goto 52.4,45.8
.' Use your Mistletoe on Brother Cassius |use Mistletoe##21519
.' Use Mistletoe on Brother Cassius in the Stormwind City |achieve 1686/7
step
goto 49.5,45.2
.' Use your Mistletoe on Brother Joshua |use Mistletoe##21519
.' Use Mistletoe on Brother Joshua in the Stormwind City |achieve 1686/5
step
goto 52.6,43.2
.' Use your Mistletoe on Brother Crowley |use Mistletoe##21519 |tip He is at the lower level of the cathedral, down the ramp.
.' Use Mistletoe on Brother Crowley in the Stormwind City |achieve 1686/6
step
goto 60.4,75.3
.talk 6740
.home Stormwind City
step
'Go outside of Stormwind to Elwynn Forest |goto Elwynn Forest |noway |c
step
goto Elwynn Forest,41.1,66.0
.' Use your Mistletoe on Brother Wilhelm |use Mistletoe##21519
.' Use Mistletoe on Brother Wilhelm in Goldshire |achieve 1686/2
step
goto 41.7,64.6
.talk 42983
.' Fly to Rebel Camp, Stranglethorn |goto Northern Stranglethorn,47.8,12.0,0.5 |noway |c
step
goto Northern Stranglethorn,47.3,11.1
.' Use your Mistletoe on Brother Nimetz |use Mistletoe##21519
.' Use Mistletoe on Brother Nimetz in Northern Stranglethorn |achieve 1686/1
step
goto 47.9,11.9
.talk 43045
.' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,41.7,74.3,0.5 |noway |c
step
goto The Cape of Stranglethorn,39.3,67.2 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
step
goto Northern Barrens,69.1,70.7
.talk 16227
.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
step
goto Dustwallow Marsh,67.4,47.4
.' Use your Mistletoe on Brother Karman |use Mistletoe##21519
.' Use Mistletoe on Brother Karman in Dustwallow Marsh |achieve 1686/3
step
'Hearth to Stormwind City |goto Stormwind City |use Hearthstone##6948 |noway |c
step
.' The following achievements require a level 70 or higher character.
.' Skip to the next step.
step
goto Stormwind City,49.0,87.4 |n
.' Click the portal to the Blasted Lands |goto Blasted Lands |noway |c
step
'Go into the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Blade's Edge Mountains,28.7,57.4
.talk 23233
..accept 11057
..accept 11025
step
goto 29.2,53.7
.from Apexis Flayer##22175+
.get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.4
.talk 23233
..turnin 11025
..accept 11058
step
goto 28.4,57.6
.talk 23316
..accept 11030
step
goto 33.1,52.3
.from Gan'arg Analyzer##23386+
.collect Apexis Shard##32569 |n
.' Click an Apexis Relic |tip It looks like a small multi-colored crystal floating in the air.
..' Insert an Apexis Shard to begin.
.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
.' Click the clusters in the same color pattern as the crystal. |tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
.' Attain the Apexis Vibrations |q 11058/1
step
goto 51.1,15.6
.from Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
.collect 10 Apexis Shard##32569
step
goto 32.8,40.5
.' Click the Fel Crystalforge |tip It looks like a big metal machine with green smoke coming out of it.
.' Purchase 1 Unstable Flask of the Beast
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080 |daily
step
goto 28.4,57.7
.talk 23316
..turnin 11030
step
goto 27.7,68.1
.from Gan'arg Analyzer##23386+
.collect Apexis Shard##32569 |n
.' Click an Apexis Relic |tip It flooks like a small multi-colored crystal floating in the air
.' Insert an Apexis Shard to begin.
.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
.' Click the clusters in the same color pattern as the crystal.
.' You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
.' Attain the Apexis Vibrations |q 11080/1
step
goto 28.8,57.4
.talk 23233
..turnin 11080
..accept 11062
step
goto 27.4,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010
step
goto 36.8,39.4
.' While on your flying mount, use your Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
step
goto 27.6,52.9
.talk 23120
..turnin 11010
..accept 11023 |daily
step
'Use Preserved Holly while riding your flying mount |use Preserved Holly##21213 |havebuff Interface\Icons\INV_Misc_Plant_03 |q 11023
step
goto 36.8,39.4
.' While on riding the Reindeer Mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
.' Destroy 15 Fel Cannonball Stacks |q 11023/1
step
goto 27.6,52.9
.talk 23120
..turnin 11023 |daily |tip You have to be on your mount when turning in the quest.
.' Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil |achieve 1282
step
'Hearth to Stormwind |goto Stormwind City |use Hearthstone##6948 |noway |c
step
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,59.0,68.3
.talk 26879
.' Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,50.3,63.2
.' Get the Winter Veil Disguise Kit from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
.' Equip the Winter Veil Disguise Kit in your bag |use Winter Veil Disguise Kit##17712
.' Dance with another player wearing their snowman costume |script DoEmote("DANCE")
.' During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a snowman and then dance with another snowman in Dalaran |achieve 1690
step
goto Stormwind City,61.2,73.5
.' This step can only be completed by logging into the server on December 25th.
.' Click a present underneath the tree
.' Open one of the presents underneath the Winter Veil tree once they are available. |achieve 1689
step
'Congratulations, you are now a Merry Maker!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto Drake",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(63956)
model 28953
step
'This mount is a reward for completing the _"Glory of the Ulduar Raider (25 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Ironbound Proto-Drake##45801
|modeldisplay 28953
step
.learnmount Ironbound Proto-Drake##63956 |use Reins of the Ironbound Proto-Drake##45801
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Volcanic Stone Drake",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(88331)
model 35551
step
'This mount is a reward for completing the _Glory of the Cataclysm Hero_ achievement which requires you to complete every achievement in the Cataclysm dungeons.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Volcanic Stone Drake##62900
|modeldisplay 35551
step
.learnmount Volcanic Stone Drake##88331 |use Reins of the Volcanic Stone Drake##62900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Proto Drake",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(59961)
model 28044
step
'This mount is a reward for completing the _Glory of the Cataclysm Hero_ achievement which requires you to complete every achievement in the Cataclysm dungeons.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Red Proto-Drake##44160
|modeldisplay 28044
step
.learnmount Red Proto-Drake##59961 |use Reins of the Red Proto-Drake##44160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Rusted Proto-Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(63963)
model 28954
step
'This mount is a reward for completing the _"Glory of the Ulduar Raider (10 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Rusted Proto-Drake##45802
|modeldisplay 28954
step
.learnmount Rusted Proto-Drake##63963 |use Reins of the Rusted Proto-Drake##45802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Drake of the East Wind",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(88335)
model 35757
step
'This mount is a reward for completing the _"Glory of the Cataclysm Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Drake of the East Wind##62901
|modeldisplay 35757
step
.learnmount Drake of the East Wind##88335 |use Reins of the Drake of the East Wind##62901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59571)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 10-Man raid.
.from Sartharion##28860 |n
.collect Reins of the Black Drake##43986
step
.learnmount Black Drake##59650 |use Reins of the Black Drake##43986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59571)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 25-Man raid.
.from Sartharion##28860 |n
.collect Reins of the Twilight Drake##43954
step
.learnmount Twilight Drake##59571 |use Reins of the Twilight Drake##43954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Invincible",[[
author support@zygorguides.com
condition end hasmount(72286)
model 31248
step
'This mount is dropped by The Lich King in the Icecrown Citadel raid. It is only dropped on Heroic 25 player Difficulty.
.from The Lich King |n
.collect 1 Invincible's Reins##50818
|modeldisplay 31248
step
.learnmount Invincible##72286 |use Invincible's Reins##50818
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake",[[
author support@zygorguides.com
condition end hasmount(107842)
model 39561
step
'This mount is found in the Elementium Fragment within the Dragon Soul raid. It is only dropped on Normal Difficulty.
.from Deathwing |n
.click Elementium Fragment
.collect 1 Reins of the Blazing Drake##77067
|modeldisplay 39561
step
.learnmount Blazing Drake##107842 |use Reins of the Blazing Drake##77067
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Life-Binder's Handmaiden",[[
author support@zygorguides.com
condition end hasmount(107845)
model 39563
step
'This mount is found in the Elementium Fragment within the Dragon Soul raid. It is only dropped on Heroic Difficulty.
.from Deathwing |n
.click Elementium Fragment
.collect 1 Life-Binder's Handmaiden##77069
|modeldisplay 39563
step
.learnmount Life-Binder's Handmaiden##107845 |use Life-Binder's Handmaiden##77069
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Pureblood Fire Hawk",[[
author support@zygorguides.com
condition end hasmount(97493)
model 38031
step
'This mount is found in the Cache of the Fire Lord within the Firelands raid.
.from Ragnaros##41634
.click Cache of the Fire Lord
.collect 1 Smoldering Egg of Millagazor##69224
|modeldisplay 38031
step
.learnmount Pureblood Fire Hawk##97493 |use Smoldering Egg of Millagazor##69224
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake",[[
author support@zygorguides.com
condition end hasmount(59567)
model 24743
step
'This mount is found in Alexstrasza's Gift within The Eye of Eternity raid.
.from Malygos##28859 |n
.click Alexstrasza's Gift##8513
.collect 1 Reins of the Azure Drake##43952
|modeldisplay 24743
step
.learnmount Azure Drake##59567 |use Reins of the Azure Drake##43952
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake",[[
author support@zygorguides.com
condition end hasmount(69395)
model 30346
step
'This mount is dropped by Onyxia in the Onyxia's Lair raid.
.from Onyxia##10184 |n
.collect 1 Reins of the Onyxian Drake##49636 |tip This has a droprate of about 0.3%
|modeldisplay 30346
step
.learnmount Onyxian Drake##69395 |use Reins of the Onyxian Drake##49636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Experiment 12-B",[[
author support@zygorguides.com
condition end hasmount(110039)
model 39229
step
'This mount is found in the Lesser Cache of the Aspects within the Dragon Soul raid.
.from Ultraxion |n
.click Lesser Cache of the Aspects
.collect 1 Experiment 12-B##78919
|modeldisplay 39229
step
.learnmount Experiment 12-B##110039 |use Experiment 12-B##78919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Celestial Steed",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(75614)
model 31958
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Celestial Steed##54811
|modeldisplay 31958
step
.learnmount Celestial Steed##75614
|use Celestial Steed##54811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Winged Guardian",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(98727)
model 38260
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Winged Guardian##69846
|modeldisplay 38260
step
.learnmount Winged Guardian##98727 |use Winged Guardian##69846
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Heart of the Aspects",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Heart of the Aspects mount.
condition end hasmount(110051)
model 40029
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Heart of the Aspects##78924
|modeldisplay 40029
step
.learnmount Heart of the Aspects##110051 |use Heart of the Aspects##78924
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Tyrael's Charger",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Tyrael's Charger mount
condition end hasmount(107203)
model 39530
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Tyrael's Charger##76755
|modeldisplay 39530
step
.learnmount Tyrael's Charger##107203 |use Tyrael's Charger##76755
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-53 Touring Rocket",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(75973)
model 31992
step
'This mount is obtained through the Recruit-A-Friend program.
'After referring a friend who then upgrades to a paid account within 90 days you should receive this mount in the in-game mailbox.
.collect X-53 Touring Rocket##54860
|modeldisplay 31992
step
.learnmount X-53 Touring Rocket##75973 |use X-53 Touring Rocket##54860
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Big Love Rocket",[[
description This guide will walk you through obtaining
description mythical vanity pets
condition end hasmount(38207)
model 30989
step
'This requires the _Love is in the Air_ event
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Hummel_ |goto Shadowfang Keep |noway |c
step
.from Apothecary Hummel##36296
.collect Heart-Shaped Box##54537 |tip This will appear in your bags once you kill Apothecary Hummel and can only be won once a day
|use Heart-Shaped Box##54537
.collect Big Love Rocket##50250 |tip This mount has an insanely low chance of dropping.
'|modeldisplay 30989
step
.learnmount Big Love Rocket##71342 |use Big Love Rocket##50250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Time-Lost Proto Drake",[[
description This guide will walk you through obtaining
description the Phosphorescent Stone Drake
condition end hasmount(60002)
model 26711
step
'This mount drops off a rare spawn found in The Storm Peaks called Time-Lost Proto Drake
'Go to The Storm Peaks |goto The Storm Peaks |noway |c
step
.from Time-Lost Proto Drake##32491
.collect 1 Reins of the Time-Lost Proto-Drake##44168
|modeldisplay 26711
step
.learnmount Time-Lost Proto Drake##60002 |use Reins of the Time-Lost Proto-Drake##44168
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Phosphorescent Stone Drake",[[
description This guide will walk you through obtaining
description the Phosphorescent Stone Drake
condition end hasmount(88718)
model 35740
step
'This mount drops off a rare spawn found in Deepholm called Aeonaxx.
'Aeonaxx can be found flying around the Temple of Earth, he is an extremely rare find and has a spawn timer of anywhere from 5.5 to 22 hours.
'Go to Deepholm |goto Deepholm |noway |c
step
'Click Aeonaxx
.from Aeonaxx##50062 |tip After a few seconds, Aeonaxx's name will turn red and become hostile. You have a limited time to kill him before he overwhelms you. Every few seconds he will spawn young drake adds to attack you, these should be killed.
.collect 1 Reins of the Phosphorescent Stone Drake##63042
|modeldisplay 35740
step
.learnmount Phosphorescent Stone Drake##88718 |use Reins of the Phosphorescent Stone Drake##63042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Spectral Gryphon",[[
author support@zygorguides.com
condition end hasmount(107516)
step
'This mount is obtained through the Scroll of Ressurrection program.
'Send a Scroll of Ressurrection to a friend with a deactivated account and redeem your mount on battle.net. Check the mailbox of the character you assigned the mount to.
.collect 1 Spectral Gryphon##76889
step
.learnmount Spectral Gryphon##107516 |use Spectral Gryphon##76889
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Abyssal Seahorse",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(75207)
model 34956
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27724
step
goto 27.4,24.1
.talk 36799
..turnin 27724
..accept 14482
step
goto 18.5,25.4 |n
.' Ride the mercenary ship to Vashj'ir |q 14482/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
step
goto Kelp'thar Forest,45.2,23.4
.talk 36915
..turnin 14482
..accept 24432
step
goto 44.5,25.0
.click Saltwater Stars##9991
.get 3 Saltwater Starfish |q 24432/1
.click Conch Shell##9440
.get Conch Shell |q 24432/2
step
goto 45.2,23.4
.talk 36915
..turnin 24432
..accept 25281
step
goto 44.3,27.6
.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710
.' Rescue 6 Drowning Soldiers |q 25281/1
'|modelnpc Drowning Soldier##39663
step
goto 45.2,23.4
.talk 36915
..turnin 25281
..accept 25405
step
goto 45.2,23.4
.talk 36915
.home The Briny Cutter
step
goto 44.7,22.6
.talk 39887
..turnin 25405
..accept 25357
..accept 25546
step
goto 43.7,25.6
.from Splitclaw Skitterer##40685+
.get 10 Succulent Crab Meat |q 25546/1
step
goto 48.7,27.4
.kill 8 Zin'jatar Raider##39313+ |q 25357/1
step
goto 44.7,22.6
.talk 39887
..turnin 25357
..turnin 25546
..accept 25545
..accept 25564
step
goto 49.1,21.4
.from Slitherfin Eel##40855
..accept 27729 |tip This quest will automatically be accepted after you kill an eel.
step
goto 48.0,20.9
.click Stormwind Breastplates##4074
.get 5 Stormwind Breastplate |q 25545/1
.click Stormwind Helm##9486
.get 5 Stormwind Helm |q 25545/2
.click Stormwind Spear##9494
.get 5 Stormwind Spear |q 25545/3
.from Gilblin Scavenger##40811+
.get 5 Stormwind Shield |q 25545/4
.click the Stormwind S.E.A.L. Equipment##9280
.get 6 Stormwind S.E.A.L. Equipment |q 25564/1
.from Slitherfin Eel##40855+
.' Justifiably Slay 8 Disgusting Eels |q 27729/1
step
'Click the Quest Completion box that pops up
..turnin 27729
step
goto 44.7,22.6
.talk 39887
..turnin 25545
..turnin 25564
..accept 25547
step
goto 45.0,23.5
.talk 40690
..turnin 25547
..accept 25558
step
goto 44.4,24.6
.' Follow the troops out and help them defend the Briny Cutter from the waves of nagas
.' Swim over to [46.4,46.5] after you get kidnapped
.' Defense of The Briny Gutter Complete |q 25558/1
step
goto 46.3,46.9
.talk 40105
..turnin 25558
step
goto 46.0,46.9
.talk 41248
..accept 25477
step
goto 54.2,53.0
.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462 |modelnpc Speckled Sea Turtle##40223
.' Start swimming back to Moanah Stormhoof at [46.0,46.9]
.' Mount the Sea Turtle |q 25477/1
step
goto 46.0,46.9
.talk 41248
..turnin 25477
..accept 25371
step
goto 45.4,46.6
.click Braided Rope##7548
..' Tie your lure off and let it loose
.' Tie off the Seahorse lure |q 25371/1
.clicknpc Abyssal Seahorse##39629 |invehicle
step
'Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
.' Subdue an Abyssal Seahorse |q 25371/2
step
goto 46.0,46.9
.talk 41248
..turnin 25371
.collect 1 Subdued Abyssal Seahorse##54465
'|modeldisplay 34956
step
.learnmount Abyssal Seahorse##75207 |use Subdued Abyssal Seahorse##54465
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Subdued Seahorse",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(98718)
model 34955
step
'This mount is dropped by a rare spawn in Vashj'ir called Poseidus.
'Go to Shimmering Expanse |goto Shimmering Expanse |noway |c
step
.from Poseidus |n
.collect 1 Reins of Poseidus##67151
|modeldisplay 34955
step
.learnmount Subdued Seahorse##98718 |use Reins of Poseidus##67151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Water Mounts\\Sea Turtle",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(64731)
model 29161
step
'Acquiring _this mount requires _ you to have _fishing_
|confirm
step
'Go to either _Twilight Highlands_, _Uldum_, _Tol Barad Peninsula_, _Howling Fjord_, _Borean Tundra_, _Deepholm_, _Grizzly Hills_, _Mount Hyjal_, _Crystalsong Forest_, _Sholazar Basin_, or _Dragonblight_.
.' Find _any_ and all _schools of fish_ that you can and _fish_ from them. |tip The more you fish, the better chances you have of obtaining this mount. It has an average of .01% drop rate, so you're going to be fishing for a while.
.collect 1 Sea Turtle##46109
|modeldisplay 29161
step
.learnmount Sea Turtle##64731 |use Sea Turtle##46109
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Swift Lovebird",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird
condition end hasmount(102350)
model 6476
step
'This pet can only be obtained during the Love is in the Air event
'It can be purchased for 270 Love Tokens |tip See Love is in the Air Events guide
.' Click here to continue. |confirm
step
goto Stormwind City,62.5,75.3
.talk 37674
.buy Swift Lovebird##72146
|modeldisplay 6476
step
.learnpet Swift Lovebird##102350 |use Swift Lovebird##72146
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Hallows End\\Headless Horseman's Mount",[[
author support@zygorguides.com
description This guide section will walk you through getting the Headless Horseman's Mount
condition end hasmount(48025)
model 25159
step
'This requires the _Hallow's End_ Holiday
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Headless Horsemen_ |goto Scarlet Monastery |noway |c
step
.from Headless Horseman##23682
.collect 1 Loot-Filled Pumpkin |tip This will appear in your bags once you kill the Headless Horsemen and can only be won once a day
|use Loot-Filled Pumpkin##54516
.collect The Horseman's Reins##37012 |tip This item has an extremely low drop rate.
'|modeldisplay 25159
step
.learnpet Headless Horseman's Mount##48025 |use The Horseman's Reins##37012
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Pilgrim's Bounty Daily Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Daily Quests for the Pilgrim's Bounty Event to earn the Turkey Pet.
#include "Pilgrims_Bounty_Dailies_Alliance"
step
.' Check your mailbox for your Turkey Cage.
.collect Turkey Cage##44810 |n
.' Use the Turkey Cage in your bags |use Turkey Cage##44810
.learnpet Plump Turkey##61773
.learnpet Plump Turkey##32818
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Twilight Harbinger",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(107844)
model 39562
step
'This mount is a reward for completing the _"Glory of the Dragon Soul Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Twilight Harbinger##77068
|modeldisplay 39562
step
.learnmount Twilight Harbinger##107844 |use Reins of the Twilight Harbinger##77068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Noblegarden\\Swift Springstrider",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird Mount
condition end hasmount(102349)
model 1221
step
'Thie pet can only be obtained during the Noblegarden event
'It can be purchased for 500 Noblegarden Chocolate or found in a Brightly Colored Egg |tip See Noblegarden Events guide
|confirm
step
goto Teldrassil 55.7,51.3
.talk 32836
.buy 1 Swift Springstrider##72145
|modeldisplay 1221
step
.learnmount Swift Springstrider##102349 |use Swift Springstrider##72145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Great Brewfest Kodo",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Brewfest Kodo
condition end hasmount(49379)
model 24757
step
'This pet can only be obtained during the Brewfest event
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Coren Direbrew_ |goto Blackrock Depths |noway |c
step
.from Coren Direwbrew##23872
.collect 1 Keg-Shaped Treasure Chest##54535 |tip This will appear in your bags once you kill Coren Direbrew and can only be won once a day
|use Keg-Shaped Treasure Chest##54535
.collect 1 Great Brewfest Kodo##37828 |tip This mount has a low chance of dropping. (4%)
'|modeldisplay 24757
step
.learnmount Great Brewfest Kodo##49379 |use Great Brewfest Kodo##37828
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Brewfest Rams",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Brewfest Ram
condition end hasmount(24368)
model 22350
step
'This pet can only be obtained during the Brewfest event
'It can be purchased for 100g
|confirm
step
goto Durotar 42.6,17.6
.talk 24510
.buy Swift Brewfest Ram##33977
.buy Brewfest Ram##33976
|modeldisplay 22350
|modeldisplay 22265
step
.learnpet Swift Brewfest Ram##24368 |use Swift Brewfest Ram##33977
.learnpet Brewfest Ram##23588 |use Swift Brewfest Ram##33976
]])
