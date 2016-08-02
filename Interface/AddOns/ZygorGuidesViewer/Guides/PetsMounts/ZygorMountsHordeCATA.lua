local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsH") then return end
ZygorGuidesViewer:RegisterInclude("hearth_hub",[[
'_Hearth_ to the _Valley of Strength_ |goto Orgrimmar |use Hearthstone##6948 |noway |c
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
ZygorGuidesViewer:RegisterInclude("trainEngineering",[[
goto Orgrimmar 56.9,56.4
.talk 11017
]])
ZygorGuidesViewer:RegisterInclude("EngSupplies",[[
goto Orgrimmar,56.8,56.4
.talk 3413
]])
ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
]])
ZygorGuidesViewer:RegisterInclude("OrgPortaltoHyjal",[[
goto Orgrimmar,51.1,38.3
.' Click the _Portal_ to _Mount Hyjal_ |tip It looks like a big swirling portal in front of some huge tree roots.
.' Teleport to _Mount Hyjal_ |goto Mount Hyjal |noway |c
]])
ZygorGuidesViewer:RegisterInclude("HyjalPortaltoOrg",[[
goto Mount Hyjal,63.5,24.4
.' Click the _Portal_ to _Orgrimmar_ |tip It looks like a big swirling orange portal next to a big building.
.' Teleport to _Orgrimmar_ |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterInclude("OrgPortaltoUldum",[[
goto Orgrimmar,48.9,38.6
.' Click the _Portal_ to _Uldum_ |tip It looks like a big swirling portal in front of some big stone slabs.
.' Teleport to _Uldum_ |goto Uldum |noway |c
]])
ZygorGuidesViewer:RegisterInclude("OrgPortaltoTwilightHighlands",[[
goto Orgrimmar,50.2,39.4
.' Click the _Portal_ to _Twilight Highlands_ |tip It looks like a big swirling portal in front of some big metal twisting spiral objects.
.' Teleport to _Twilight Highlands_ |goto Twilight Highlands |noway |c
]])
ZygorGuidesViewer:RegisterInclude("TwilightHighlandsPortaltoOrg",[[
goto Twilight Highlands,73.6,53.5
.' Go into the _Portal_ to _Orgrimmar_ |tip It looks like a big swirling orange portal at the bottom of this tower.
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterInclude("BoreanZep",[[
goto Orgrimmar,44.7,62.4 |n
.' Ride the zeppelin to _Borean Tundra_ |goto Borean Tundra |noway |c
]])
ZygorGuidesViewer:RegisterInclude("TirisfalZep",[[
goto Orgrimmar,50.8,55.8 |n
.' Ride the zeppelin to _Tirisfal Glades_ |goto Tirisfal Glades |noway |c
]])
ZygorGuidesViewer:RegisterInclude("StranglethornZep",[[
goto Orgrimmar,52.5,53.2 |n
.' Ride the zeppelin to _Stranglethorn Vale_ |goto Northern Stranglethorn |noway |c
]])
ZygorGuidesViewer:RegisterInclude("HowlingZep",[[
goto Orgrimmar,50.8,55.8 |n
.' Ride the zeppelin to _Tirisfal Glades_ |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,59.1,59.0 |n
.' Ride the zeppelin to _Howling Fjord_ |goto Howling Fjord |noway |c
]])
ZygorGuidesViewer:RegisterInclude("TirisfalHowlingZep",[[
step
goto Tirisfal Glades,59.1,59.0 |n
.' Ride the zeppelin to _Howling Fjord_ |goto Howling Fjord |noway |c
]])
ZygorGuidesViewer:RegisterInclude("OrgTabard",[[
goto Orgrimmar 50.2,58.3 |only if rep("Orgrimmar")<Exalted
.talk 50488 |only if rep("Orgrimmar")<Exalted
.buy 1 Orgrimmar Tabard##45581 |only if rep("Orgrimmar")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("BilgeTabard",[[
goto Orgrimmar,50.2,58.3 |only if rep("Bilgewater Cartel")<Exalted
.talk 50323 |only if rep("Bilgewater Cartel")<Exalted
.buy 1 Bilgewater Cartel Tabard##64884 |only if rep("Bilgewater Cartel")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("TBTabard",[[
goto Thunder Bluff,46.8,50.0 |only if rep("Thunder Bluff")<Exalted
.talk 50483 |only if rep("Thunder Bluff")<Exalted
.buy 1 Thunder Bluff Tabard##45584 |only if rep("Thunder Bluff")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("DSTabard",[[
goto Orgrimmar,50.2,58.3 |only if rep("Darkspear Trolls")<Exalted
.talk 50477 |only if rep("Darkspear Trolls")<Exalted
.buy 1 Darkspear Tabard##45582 |only if rep("Darkspear Trolls")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("SCTabard",[[
goto Eversong Woods,54.2,50.8 |only if rep("Silvermoon City")<Exalted
.talk 50484 |only if rep("Silvermoon City")<Exalted
.buy 1 Silvermoon City Tabard##45585 |only if rep("Silvermoon City")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("UCTabard",[[
goto Undercity,50.2,58.3 |only if rep("Undercity")<Exalted
.talk 50304 |only if rep("Undercity")<Exalted
.buy 1 Undercity Tabard##45583 |only if rep("Undercity")<Exalted
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
ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
'This will require you to be _exalted_ with _%rep%_
.' Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
.' _Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section,
description to unlock more daily quests.
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Aspirant Rank Daillies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
daily
step
goto Icecrown,76.3,24.3
.talk 33542
..accept 13678
step
goto 76.3,24.4
.talk 33542
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13673 |daily |or
..accept 13674 |daily |or
..accept 13675 |daily |or
step
goto 76.3,24.4
.talk 33658
..accept 13676 |daily
step
goto 76.2,24.4
.talk 33659
..accept 13677 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13673/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13674
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13674/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13675
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13675/1
step
goto Icecrown,74.8,35.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13676/1
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13677
step
goto 73.1,24.8
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times |q 13677/1
step
goto 72.9,25.1
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times |q 13677/3
step
goto 73.3,25.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13677/2
step
goto 76.3,24.4
.talk 33542
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13673
..turnin 13674
..turnin 13675
step
goto 76.3,24.4
.talk 33658
..turnin 13676
step
goto 76.2,24.4
.talk 33659
..turnin 13677
step
'Make sure you have 15 Aspirant's Seals:
.get 15 Aspirant's Seal |q 13678/1 |tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.  It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
step
goto 76.3,24.4
.talk 33542
..turnin 13678
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Valiant Rank Daillies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
goto Icecrown,76.3,24.4
.talk 33542
..accept 13680
step
goto 71.8,20.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13680
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13680/1
step
goto 76.3,24.4
.talk 33542
..turnin 13680
..accept 13691 |only Orc
..accept 13693 |only Troll
..accept 13694 |only Tauren
..accept 13695 |only Scourge
..accept 13696 |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13691
..accept 13697
only Orc
step
goto 76.0,24.5
.talk 33372
..turnin 13693
..accept 13719
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13694
..accept 13720
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13695
..accept 13721
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13696
..accept 13722
only BloodElf
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |daily |or
..accept 13763 |daily |or
..accept 13764 |daily |or
only Orc
step
goto 76.5,24.5
.talk 33405
..accept 13765 |daily
only Orc
step
goto 76.4,24.6
.talk 33544
..accept 13767 |daily
..accept 13856 |daily
only Orc
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
only Orc
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13763
only Orc
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13763/1
only Orc
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
only Orc
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
only Orc
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
only Orc
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Orc
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
only Orc
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
only Orc
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
only Orc
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
only Orc
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
only Orc
step
goto 76.5,24.5
.talk 33405
..turnin 13765
only Orc
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
only Orc
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |daily |or
..accept 13769 |daily |or
..accept 13770 |daily |or
only Troll
step
goto 76.0,24.6
.talk 33540
..accept 13771 |daily
only Troll
step
goto 75.9,24.4
.talk 33545
..accept 13772 |daily
..accept 13857 |daily
only Troll
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
only Troll
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13769
only Troll
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13769/1
only Troll
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
only Troll
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
only Troll
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
only Troll
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Troll
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
only Troll
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
only Troll
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
only Troll
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
only Troll
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
only Troll
step
goto 76.0,24.6
.talk 33540
..turnin 13771
only Troll
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
only Troll
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |daily |or
..accept 13774 |daily |or
..accept 13775 |daily |or
only Tauren
step
goto 76.3,24.7
.talk 33539
..accept 13776 |daily
only Tauren
step
goto 76.1,24.6
.talk 33549
..accept 13777 |daily
..accept 13858 |daily
only Tauren
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
only Tauren
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13774
only Tauren
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13774/1
only Tauren
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
only Tauren
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
only Tauren
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
only Tauren
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Tauren
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
only Tauren
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
only Tauren
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
only Tauren
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
only Tauren
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
only Tauren
step
goto 76.3,24.7
.talk 33539
..turnin 13776
only Tauren
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
only Tauren
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |daily |or
..accept 13779 |daily |or
..accept 13780 |daily |or
only Scourge
step
goto 76.6,24.1
.talk 33541
..accept 13781 |daily
only Scourge
step
goto 76.5,24.3
.talk 33547
..accept 13782 |daily
..accept 13860 |daily
only Scourge
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
only Scourge
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13779
only Scourge
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13779/1
only Scourge
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
only Scourge
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
only Scourge
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
only Scourge
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Scourge
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
only Scourge
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
only Scourge
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
only Scourge
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
only Scourge
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
only Scourge
step
goto 76.6,24.1
.talk 33541
..turnin 13781
only Scourge
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
only Scourge
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |daily |or
..accept 13784 |daily |or
..accept 13785 |daily |or
only BloodElf
step
goto 76.4,23.8
.talk 33538
..accept 13786 |daily
only BloodElf
step
goto 76.5,23.9
.talk 33548
..accept 13787 |daily
..accept 13859 |daily
only BloodElf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
only BloodElf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13784
only BloodElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13784/1
only BloodElf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
only BloodElf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
only BloodElf
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
only BloodElf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only BloodElf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
only BloodElf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
only BloodElf
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
only BloodElf
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
only BloodElf
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
only BloodElf
step
goto 76.4,23.8
.talk 33538
..turnin 13786
only BloodElf
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
only BloodElf
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
only Orc
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
only BloodElf
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
only Orc
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
only Troll
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
only Tauren
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
only Scourge
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
only BloodElf
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1 |only Orc
.' Defeat the Argent Valiant |q 13727/1 |only Troll
.' Defeat the Argent Valiant |q 13728/1 |only Tauren
.' Defeat the Argent Valiant |q 13729/1 |only Scourge
.' Defeat the Argent Valiant |q 13731/1 |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13726
..accept 13736
only Orc
step
goto 76.0,24.5
.talk 33372
..turnin 13727
..accept 13737
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13728
..accept 13738
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13729
..accept 13739
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13731
..accept 13740
only BloodElf
step
goto 69.7,22.9
.talk 33817
..turnin 13736 |only Orc
..turnin 13737 |only Troll
..turnin 13738 |only Tauren
..turnin 13739 |only Scourge
..turnin 13740 |only BloodElf
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,73.8,19.4
.talk 33769
..accept 13813 |daily
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13812 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13863 |daily
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13814 |daily
only DeathKnight
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13814
only Orc DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13814
only Troll DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13814
only Tauren DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13814
only Scourge DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13814
only BloodElf DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13814/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13814
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13813/1
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13812/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13812/2
only DeathKnight
step
goto 48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13863
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13863/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13813
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13812
..turnin 13863
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13814
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,69.9,23.3
.talk 33771
..accept 13811 |daily
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13809 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13862 |daily
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13810 |daily
only !DeathKnight
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13811
only Orc !DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13811
only Troll !DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13811
only Tauren !DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13811
only Scourge !DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13811
only BloodElf !DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13811/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13811
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13810/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13809/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13809/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13862
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13862/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13811
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13809
..turnin 13862
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13810
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll (5-13)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not an Orc.
.' Skip to the next step of the guide
step
goto Durotar,43.3,68.8
.talk 10176
..accept 25152
step
goto 43.2,68.3
.talk 3143
..turnin 25152
..accept 25126
step
goto 43.9,63.9
.from Mottled Boar##3098+
.' Slaughter 8 Mottled Boars |q 25126/1
step
goto 43.2,68.3
.talk 3143
..turnin 25126
..accept 25172
step
goto 43.4,72.9
.kill 7 Northwatch Scout |q 25172/1
step
goto 43.2,68.3
.talk 3143
..turnin 25172
..accept 25127
step
goto 42.7,67.2
.talk 9796
..accept 25136
step
goto 45.7,63.3
.from Scorpid Worker##3124+
.get 8 Scorpid Worker Tail |q 25127/1
.' Click Cactus Apples |tip They look like cactuses with red apples on them.
.get 6 Cactus Apple |q 25136/1
step
goto 40.6,62.6
.talk 3287
..accept 25129
step
goto 40.5,67.3
.from Sarkoth##3281
.get Sarkoth's Mangled Claw |q 25129/1
step
goto 40.6,62.6
.talk 3287
..turnin 25129
..accept 25130
step
goto 43.2,68.3
.talk 3143
..turnin 25127
..turnin 25130
..accept 3087 |only Orc Hunter
..accept 2383 |only Orc Warrior
..accept 3088 |only Orc Rogue
..accept 3089 |only Orc Shaman
..accept 25138 |only Orc Mage
..accept 3090 |only Orc Warlock
step
goto 42.4,68.1
.talk 3156
..turnin 3090
..accept 25145
only Orc Warlock
step
goto 42.4,68.1
.talk 3156
.' Learn Immolate |q 25145/2
only Orc Warlock
step
goto 43.0,69.2
.' Use your Immolate ability on the Training Dummy
.' Practice Immolate 5 times |q 25145/1
only Orc Warlock
step
goto 42.4,68.1
.talk 3156
..turnin 25145
only Orc Warlock
step
goto 42.5,69.0
.talk 39206
..turnin 25138
..accept 25149
only Orc Mage
step
goto 42.5,69.0
.talk 39206
.' Learn Arcane Missiles |q 25149/2
only Orc Mage
step
goto 43.2,69.3
.' Use your Arcane Missiles ability on the Training Dummy
.' Practice Arcane Missiles 2 times |q 25149/1
only Orc Mage
step
goto 42.5,69.0
.talk 3920
..turnin 25149
only Orc Mage
step
goto 42.4,69.0
.talk 3157
..turnin 3089
..accept 25143
only Orc Shaman
step
goto 42.4,69.0
.talk 3157
.' Learn Primal Strike |q 25143/2
only Orc Shaman
step
.talk 5887
..accept 1516
only Orc Shaman
step
goto 43.3,67.5
.' Use your Primal Strike ability on the Training Dummy
.' Practice Primal Strike 3 times |q 25143/1
only Orc Shaman
step
goto 45.3,56.1
.from Felstalker##3102+
.get Felstalker Hoof |q 1516/1
only Orc Shaman
step
goto 42.4,69.0
.talk 3157
..turnin 25143
only Orc Shaman
step
goto 42.4,69.2
.talk 5887
..turnin 1516
..accept 1517
only Orc Shaman
step
goto 44.1,76.5
'Use the Earth Sapta that was given to you |use Earth Sapta##6635
.talk 5891
..turnin 1517
..accept 1518
only Orc Shaman
step
goto 42.4,69.2
.talk 5887
..turnin 1518
only Orc Shaman
step
goto 42.4,68.8
.talk 3155
..turnin 3088
..accept 25141
only Orc Rogue
step
goto 42.4,68.8
.talk 3155
.' Learn Eviscerate |q 25141/2
only Orc Rogue
step
goto 43.2,69.4
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 25141/1
only Orc Rogue
step
goto 42.4,68.8
.talk 3155
..turnin 25141
only Orc Rogue
step
goto 42.9,69.5
.talk 3153
..turnin 2383
..accept 25147
only Orc Warrior
step
goto 42.9,69.5
.talk 3153
.' Learn Charge |q 25147/2
only Orc Warrior
step
goto 43.2,69.1
.' Use your Charge ability on a Target Dummy
.' Practice Charge 1 time |q 25147/1
only Orc Warrior
step
goto 42.9,69.5
.talk 3153
..turnin 25147
only Orc Warrior
step
goto Durotar,42.8,69.3
.talk 39214
..turnin 3087
..accept 25139
only Orc Hunter
step
goto Durotar,42.8,69.3
.talk 39214
.' Learn Steady Shot |q 25139/2
only Orc Hunter
step
goto Durotar,43.2,69.3
.' Use your Steady Shot ability on a Target Dummy
.' Practice Steady Shot 5 Times |q 25139/1
only Orc Hunter
step
goto Durotar,42.8,69.3
.talk 39214
..turnin 25139
only Orc Hunter
step
goto 42.4,69.2
.talk 5887
..accept 25128
step
goto Durotar,42.7,67.2
.talk 9796
..turnin 25136
step
goto Durotar,43.5,67.5
.talk 3145
..accept 25131
step
goto Durotar,43.5,67.4
.talk 11378
..accept 25134
step
goto Durotar,45.6,66.0
.' Use your Foreman's Blackjack on Lazy Peons along this mountainside |use Foreman's Blackjack##16114 |tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees.
.' Waken 4 Peons |q 25134/1
step
goto Durotar,45.5,57.9
.kill 8 Vile Familiar |q 25131/1
step
goto 40.6,62.6
.talk 3287
..turnin 25128
step
goto Durotar,43.5,67.4
.talk 11378
..turnin 25134
step
goto Durotar,43.5,67.5
.talk 3145
..turnin 25131
..accept 25132
step
goto Durotar,43.5,67.4
.talk 11378
..accept 25135
step
goto Durotar,45.4,56.4 |n
.' Go inside the cave |goto Durotar,45.4,56.4,0.5 |noway |c
step
goto Durotar,43.7,53.8
.' Kill Felstalkers as you walk
.' Click Thazz'ril's Pick |tip It's a big mining pick, standing upright, with light shining down on it.
.get Thazz'ril's Pick |q 25135/1
step
goto Durotar,42.4,53.5
.' Kill Felstalkers as you walk
.from Yarrog Baneshadow##3183
.get Burning Blade Medallion |q 25132/2
step
goto Durotar,44.8,54.7
.kill 7 Felstalker |q 25132/1
step
'Hearth to Valley of Trials |goto Durotar,43.3,68.8,0.5 |use Hearthstone##6948 |noway |c
step
goto Durotar,43.5,67.4
.talk 11378
..turnin 25135
step
goto Durotar,43.5,67.5
.talk 3145
..turnin 25132
..accept 25133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Troll",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll (5-13)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Troll.
.' Skip to the next step of the guide
step
goto Durotar,62.5,84.4
.talk 37951
..accept 24776 |only Troll Hunter
..accept 24607 |only Troll Warrior
..accept 24770 |only Troll Rogue
..accept 24782 |only Troll Priest
..accept 24764 |only Troll Druid
..accept 26272 |only Troll Warlock
..accept 24750 |only Troll Mage
..accept 24758 |only Troll Shaman
step
goto 64.9,84.2
.talk 38242
..turnin 24758
..accept 24759
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
..turnin 24750
..accept 24751
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26272
..accept 26273
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
..turnin 24764
..accept 24765
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24782
..accept 24783
only Troll Priest
step
goto 65.9,83.2
.talk 38244
..turnin 24770
..accept 24771
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24776
..accept 24777
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24607
..accept 24639
only Troll Warrior
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24759/1
only Troll Shaman
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24771/1
only Troll Rogue
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24639/1
only Troll Warrior
step
goto 65.8,84.4
.kill 6 Tiki Target |q 26273/1
only Troll Warlock
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24751/1
only Troll Mage
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24777/1
only Troll Hunter
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24765/1
only Troll Druid
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24783/1
only Troll Priest
step
goto 64.9,84.2
.talk 38242
..turnin 24759
..accept 24761
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
..turnin 24751
..accept 24753
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26273
..accept 26275
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
..turnin 24765
..accept 24767
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24783
..accept 24785
only Troll Priest
step
goto 65.9,83.2
.talk 38244
..turnin 24771
..accept 24773
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24777
..accept 24779
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24639
..accept 24641
only Troll Warrior
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24767/1
only Troll Druid
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24785/1
only Troll Priest
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24753/1
only Troll Mage
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24779/1
only Troll Hunter
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24761/1
only Troll Shaman
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24641/1
only Troll Warrior
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 26275/1
only Troll Warlock
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24773/1
only Troll Rogue
step
goto 65.0,84.2
.talk 38242
..turnin 24761
..accept 24762
only Troll Shaman
step
goto 68.2,83.9
.talk 38246
..turnin 24753
..accept 24754
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26275
..accept 26276
only Troll Warlock
step
goto 67.7,84.6
.talk 38243
..turnin 24767
..accept 24768
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24785
..accept 24786
only Troll Priest
step
goto 65.9,83.3
.talk 38244
..turnin 24773
..accept 24774
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24779
..accept 24780
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24641
..accept 24642
only Troll Warrior
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout |q 24754/2
only Troll Mage
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24768/1
.kill Captive Spitescale Scout |q 24768/2
only Troll Druid
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24786/1
.kill Captive Spitescale Scout |q 24786/2
only Troll Priest
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24780/1
.kill Captive Spitescale Scout |q 24780/2
only Troll Hunter
step
goto 65.6,83.7
.talk 39062.' Tell him you are ready to face your challenge |q 24774/1
.kill Captive Spitescale Scout |q 24774/2
only Troll Rogue
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 24642/1
.kill Captive Spitescale Scout |q 24642/2
only Troll Warrior
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout |q 26276/2
only Troll Warlock
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 24762/1
.kill Captive Spitescale Scout |q 24762/2
only Troll Shaman
step
goto 65.0,84.2
.talk 38242
..turnin 24762
..accept 24760
only Troll Shaman
step
goto 68.2,83.9
.talk 38246
..turnin 24754
..accept 24752
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26276
..accept 26274
only Troll Warlock
step
goto 67.7,84.6
.talk 38243
..turnin 24768
..accept 24766
only Troll Druid
step
goto 67.4,83.5
.talk 38245
..turnin 24786
..accept 24784
only Troll Priest
step
goto 65.6,83.8
.talk 38244
..turnin 24774
..accept 24772
only Troll Rogue
step
goto 67.4,83.5
.talk 38247
..turnin 24780
..accept 24778
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24642
..accept 24640
only Troll Warrior
step
goto 65.0,84.2
.talk 38242
.' Learn Primal Strike |q 24760/2
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
.' Learn Arcane Mage |q 24752/2
only Troll Mage
step
goto 64.9,83.3
.talk 42618
.' Learn Immolate |q 26274/2
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
.' Learn Healing Touch |q 24766/2
only Troll Druid
step
goto 67.7,83.0
.talk 38245
.' Learn Flash Heal |q 24784/2
only Troll Priest
step
goto 65.9,83.2
.talk 38244
.' Learn Eviscerate |q 24772/2
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
.' Learn Steady Shot |q 24778/2
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
.' Learn Charge |q 24640/2
only Troll Warrior
step
goto 64.9,84.6
.' Use your Primal Strike ability on the Tiki Target
.' Practice Primal Strike 3 times |q 24760/1
only Troll Shaman
step
goto 65.0,84.2
.talk 38242
..turnin 24760
..accept 24763
only Troll Shaman
step
goto 68.5,84.2
.' Use your Fireball ability until you get the Arcane Missiles buff, then use it on the Tiki Targets
.' Practice Arcane Missiles 5 times |q 24752/1
only Troll Mage
step
goto 68.3,84.0
.talk 38246
..turnin 24752
..accept 24755
only Troll Mage
step
.' Use your Immolate on the Tiki Targets
.' Practice immolate 5 times |q 26274/1
only Troll Warlock
step
goto 64.9,83.3
.talk 42618
..turnin 26274
..accept 26277
only Troll Warlock
step
goto 67.9,84.9
.' Use your Healing Touch on the Wounded Darkspear Watcher
.' Practice Healing Touch 5 times |q 24766/1
only Troll Druid
step
goto 67.7,84.6
.talk 38243
..turnin 24766
..accept 24769
only Troll Druid
step
goto 67.8,83.2
.' Use your Flash Heal ability on the Wounded Darkspear Watcher
.' Practice Flash Heal 5 times |q 24784/1
only Troll Priest
step
goto 67.4,83.5
.talk 38245
..turnin 24784
..accept 24787
only Troll Priest
step
goto 65.9,83.0
.' Use your Eviscerate ability on the Tiki Targets
.' Practice Eviscerate 3 times |q 24772/1
only Troll Rogue
step
goto 65.6,83.8
.talk 38244
..turnin 24772
..accept 24775
only Troll Rogue
step
goto 66.9,83.4
.' Use your Steady Shot ability on the Tiki Targets
.' Practice Steady Shot 5 times |q 24778/1
only Troll Hunter
step
goto 67.4,83.5
.talk 38247
..turnin 24778
..accept 24781
only Troll Hunter
step
goto 65.8,84.5
.' Use your Charge ability on the Tiki Target
.' Practice Charge 1 time |q 24640/2
only Troll Warrior
step
.talk 38037
..turnin 24640
..accept 24643
only Troll Warrior
step
goto 68.9,88.7
.talk 38966
..turnin 24781 |only Troll Hunter
..turnin 24643 |only Troll Warrior
..turnin 24775 |only Troll Rogue
..turnin 24787 |only Troll Priest
..turnin 24769 |only Troll Druid
..turnin 26277 |only Troll Warlock
..turnin 24755 |only Troll Mage
..turnin 24763 |only Troll Shaman
..accept 25064
step
goto 68.5,87.7
.talk 39007
..accept 25037
step
goto 70.2,85.3
.from Pygmy Surf Crawler##39004+
.get 5 Fresh Crawler Meat |q 25037/1
step
goto 68.5,87.7
.talk 39007
..turnin 25037
step
goto 67.3,88.0
.talk 38005
..turnin 25064
..accept 24622
step
goto 63.4,95.3
.talk 37969
..turnin 24622
..accept 24623
step
goto 63.5,95.2
.talk 37987
..accept 24624
..accept 24625
step
goto 60.4,89.8
.from Naj'tess##39072
.get Naj'tess' Orb of Corruption |q 24625/1
.kill 8 Corrupted Bloodtalon |q 24624/1
.' Use your Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283 |tip They look like tiny red raptors around this area.
.' Rescue 12 Bloodtalon Hatchlings |q 24623/1
step
goto 63.4,95.3
.talk 37969
..turnin 24623
step
goto 63.5,95.2
.talk 37987
..turnin 24624
..turnin 24625
step
goto 63.4,95.3
.talk 37969
..accept 24626
step
goto 62.5,95.1
.' Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053 |tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
.' Capture Swiftclaw |q 24626/1
step
goto 65.9,88.5
.' Run to this spot while riding Swiftclaw
.' Return Swiftclaw to the Raptor Pens |q 24626/2
step
goto 67.3,88.0
.talk 38005
..turnin 24626
step
goto 68.0,89.0
.talk 38440
..accept 25035
step
goto 68.0,89.0
.talk 38989
..' Ask him if he has a raptor that can take you there |goto Durotar,67.9,74.3,0.5 |noway |c |q 25035
step
goto 68.0,74.1
.talk 38442
..turnin 25035
..accept 24812
..accept 24813
step
goto 68.5,72.2
.from Spitescale Wavethrasher##38300+, Spitescale Siren##38301+
.kill 12 Spitelash Naga |q 24812/1
.' Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065 |tip They look like red pennant flags on blue-ish tridents stuck in the ground all around inside this cave.
.' Place 8 Territorial Fetishes |q 24813/1
step
goto 68.0,74.1
.talk 38442
..turnin 24812
..turnin 24813
..accept 24814
step
goto 69.1,72.4
.talk 10540 |tip Follow the path around the island to find him, don't go inside the cave.
..' Tell him you are ready |q 24814/1
.' Help Vol'jin fight Zat'jira and click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
.kill Zar'jira |q 24814/2
step
goto 68.4,71.6
.talk 39027
.' Ask her to take you back to Darkspear Hold
goto 68.2,87.8 |noway |c
step
goto 68.9,88.7
.talk 10540
..turnin 24814
..accept 25073
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Durotar,55.4,73.3
.talk 41142
.fpath Sen'jin Village
step
goto 56.0,74.7
.talk 3188
..turnin 25133 |only Orc
..turnin 25073 |only Troll
..accept 25167
step
goto 55.7,75.3
.talk 10578
..accept 25170
step
goto 55.4,79.3
.from Surf Crawler##3107+
.get 5 Crawler Mucus |q 25170/1
step
goto 52.2,81.2
.' Destroy 3 Northwatch Supply Crates |q 25167/1 |tip They are huge wooden crates with big red + signs on them, being carried by Northwatch Lugs.
.kill 10 Northwatch Lug |q 25167/2
step
goto 55.7,75.3
.talk 10578
..turnin 25170
..accept 25165
step
goto 56.0,74.7
.talk 3188
..turnin 25167
..accept 25168
step
goto 55.4,75.1
.talk 3140
..accept 25169
step
goto 52.4,74.4
.' Use your Poison Extraction Totem |use Poison Extraction Totem##52505
.' Fight Clattering Scorpions next to the Poison Extraction Totem
.' Collect 6 Samples of Scorpid Venom |q 25165/1
step
goto 50.8,79.1 |n
.' Enter the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 49.7,81.6
.' Click the Attack Plan: Valley of Trials |tip It looks like a piece of paper laying on the ground, next to a blue tent.
.' Burn the Attack Plan: Valley of Trials |q 25169/1
step
goto 47.9,77.5
.' Click the Attack Plan: Sen'jin Village |tip It looks like a piece of paper laying on a wooden crate, in between 2 white tents.
.' Burn the Attack Plan: Sen'jin Village |q 25169/2
step
goto 46.4,78.8
.' Click the Attack Plan: Orgrimmar |tip It looks like a piece of paper laying on the ground, under a bedm in a blue tent.
.' Burn the Attack Plan: Orgrimmar |q 25169/3
step
goto 49.4,79.3
.from Northwatch Ranger##39261+, Northwatch Infantryman##39260+
.kill 12 Northwatch Troop |q 25168/1
step
goto 50.8,79.1 |n
.' Leave the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 55.7,75.3
.talk 10578
..turnin 25165
step
goto 55.4,75.1
.talk 3140
..turnin 25169
step
goto 56.0,74.7
.talk 3188
..turnin 25168
..accept 25171
step
goto 55.3,74.7
.talk 10676
..' Ask him if you can catch a ride to Razor Hill
.' Ride to Razor Hill |goto Durotar,52.5,44.2,0.5 |noway |c |q 25171
step
goto 53.1,43.6
.talk 41140
.fpath Razor Hill
step
goto 51.9,43.5
.talk 3139
..turnin 25171
..accept 25173
step
goto 53.1,43.1
.talk 39423
..accept 25176
step
goto 51.5,41.6
.talk 6928
.home Razor Hill
step
goto 59.7,58.3
.' Click Kul Tiras Treasures and get Kul Tiras Treasure |tip They look like wooden chests on the ground around this area.
.kill Lieutenant Palliter |q 25173/3 |tip He's in the top room of the fort.
step
goto 58.2,55.4
.kill 6 Northwatch Sharpshooter |q 25173/2
.kill 6 Northwatch Marine |q 25173/1
.' Click Kul Tiras Treasures |tip They look like wooden chests on the ground around this area.
.get 6 Kul Tiras Treasure |q 25176/1
step
'Hearth to Razor Hill |goto Durotar,51.6,41.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.9,43.5
.talk 3139
..turnin 25173
..accept 25177
step
goto 53.1,43.1
.talk 39423
..turnin 25176
..accept 25178
step
goto 58.0,46.2
.kill 11 Foaming Sea Elemental |q 25177/1
.' Click Gnomish Toolboxes |tip They look like small metal chests on the ground around this area.
.get 4 Gnomish Tools |q 25178/1
.talk 39270
..accept 25179
.talk 39270
.' Rescue 4 Injured Razor Hill Grunts |q 25179/1
step
goto 53.1,43.1
.talk 39423
..turnin 25178
..accept 25227
step
goto 51.9,43.5
.talk 3139
..turnin 25177
..turnin 25179
step
goto 52.2,43.2
.talk 3142
..accept 25232
step
goto 50.7,42.8
.talk 3881
..accept 6365
only Troll,Orc
step
goto 53.1,43.6
.talk 41140
..turnin 6365
..accept 6384
only Troll,Orc
step
goto 53.1,43.6
.talk 41140
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only Troll,Orc
step
goto Orgrimmar,53.6,78.8
.talk 6929
..turnin 6384
..accept 6385
only Troll,Orc
step
goto 49.7,59.2
.talk 3310
..turnin 6385
..accept 6386
only Troll,Orc
step
goto 49.7,59.2
.talk 3310
.' Fly to Razor Hill, Durotar |goto Durotar,53.0,43.6,0.5 |noway |c
only Troll,Orc
step
goto Durotar,50.7,42.8
.talk 3881
..turnin 6386
only Troll,Orc
step
goto 49.6,40.2
.talk 39323
..turnin 25227
..accept 25187
step
goto 49.6,40.2
.' Use Thonk's Spyglass at the top of the tower |use Thonk's Spyglass##52514 |tip You will need to use Thonk's Spyglass 4 times.
.' Find Raggaran |q 25187/1
.' Find the flooded hut |q 25187/2
.' Find Misha |q 25187/3
.' Find Zen'Taji |q 25187/4
step
goto 49.6,40.2
.talk 39323
..turnin 25187
..accept 25188
step
goto 43.4,30.6
.talk 3193
..accept 25193
step
goto 42.9,34.1
.from Dreadmaw Toothgnasher##39452
.get 250 Durotar Crocolisk Tooth |q 25193/1
step
goto 43.4,30.6
.talk 3193
..turnin 25193
.' Help Misha Tor'kren |q 25188/3
step
goto 40.6,35.0
.talk 39325
..accept 25189
.' Escort Grandmatron Tekla to Raggaran |q 25189/1
step
goto 42.7,49.9
.talk 39326
..turnin 25189
..accept 25190
.' Help Grandmatron Tekla |q 25188/1
step
goto 44.1,49.2
.kill 4 Razormane Quilboar |q 25190/1
.kill 4 Razormane Scout |q 25190/2
step
goto 42.7,49.9
.talk 39326
..turnin 25190
..accept 25192
step
goto 38.1,55.3
.kill 5 Razormane Dustrunner |q 25192/1
.kill 5 Razormane Battleguard |q 25192/2
step
goto 42.7,49.9
.talk 39326
..turnin 25192
.' Help Raggaran |q 25188/2
step
goto 35.8,41.4
.talk 39324
..accept 25194
step
goto 35.3,39.6
.' Attack Wayward Plainstriders, but don't kill them |tip You will find them spread out along the coastline.
.' Return 3 Wayward Plainstriders |q 25194/1
step
goto 35.8,41.4
.talk 39324
..turnin 25194
..accept 25195
step
goto 35.4,30.5
.kill Screamslash |q 25195/1 |tip He's a blue-ish raptor that walks around this area.
step
goto 35.8,41.4
.talk 39324
..turnin 25195
.' Help Zen'Taji |q 25188/4
step
'Hearth to Razor Hill |goto Durotar,51.5,41.6,0.5 |use hearthstone##6948 |noway |c
step
goto 49.6,40.2
.talk 39323
..turnin 25188
step
goto 53.1,40.5 |n
.' Follow the path to the right of the canyon.  Don't walk into the canyon heading north. |goto Durotar,53.1,40.5,0.5 |noway |c
step
goto 52.8,28.9 |n
.' Enter the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 53.1,27.2
.from Burning Blade Thug##3195+, Burning Blade Neophyte##3196+, Burning Blade Cultist##3199+
.get 6 Burning Blade Spellscroll |q 25232/1
step
goto 52.8,28.9 |n
.' Leave the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 52.2,43.2
.talk 3142
..turnin 25232
..accept 25196
step
goto 46.4,22.9
.talk 3293
..accept 834
..accept 835
step
goto 49.3,21.7
.from Dustwind Harpy##3115+, Dustwind Pillager##3116+
.kill 12 Durotar Harpy |q 835/1
.' Click Stolen Supply Sacks |tip They look like small tan sacks on the ground around this area.
.get 5 Sack of Supplies |q 834/1
step
goto 46.4,22.9
.talk 3293
..turnin 834
..turnin 835
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25196
..accept 25260
..accept 25236
step
goto Durotar,44.9,14.8
.talk 39380
..accept 25205
step
goto Durotar,44.9,14.8
.talk 39380
..' Ask him to tell you his fable |havebuff Interface\Icons\Ability_Mount_Kodo_03 |q 25205
step
goto Durotar,53.0,13.8
.' As the wolf, run to this spot |tip If you don't see 2 kodos fighting, look around this area to find some, then go stand next to them.
.' Listen to the shaman's fable |q 25205/1
step
goto Durotar,44.9,14.8
.talk 39380
..turnin 25205
step
goto Durotar,45.0,14.8
.talk 39379
..accept 25206
step
goto Durotar,38.0,22.3
.from Teeming Waterguard##39596+, Furious Earthguard##39595+
.kill 12 Warring Elemental |q 25206/1
step
goto Durotar,39.9,24.4
.' Click Drowned Thunder Lizards |tip They are underwater, on the ground.
.' Remove 8 Drowned Thunder Lizards |q 25236/1
step
goto Durotar,42.1,26.7
.' Click Fizzle Darkclaw's corpse |tip It's floating underwater.
..' Attempt to remove the orb, then attempt to remove Fizzle's Hand
.get Fizzle's Orb |q 25260/1
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25260
..accept 25261
..turnin 25236
..turnin 25206
..accept 25648
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25261
..accept 25262
step
goto Durotar,56.3,20.2
.talk 39604
..accept 25256
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25256
..accept 25257
..accept 25258
..accept 25259
step
goto Durotar,59.0,22.2
.talk 39353
..' Challenge him to combat
..' Defeat Griswold Hanniston |q 25258/1
step
goto Durotar,59.7,22.6
.talk 39351
..' Challenge her to combat
..' Defeat Ghislania |q 25257/1
step
goto Durotar,59.4,23.5
.talk 39352
..' Challenge him to combat
..' Defeat Gaur Icehorn |q 25259/1
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25257
..turnin 25258
..turnin 25259
step
goto Durotar,55.1,10.0
.from Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
.get 6 Searing Collar |q 25262/1
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25262
..accept 25263
step
'Go northwest to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,47.6,71.2
.talk 35068
..accept 26642
step
goto 45.9,66.9 |n
.' The path down to Neeru Fireblade starts here |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto 49.9,59.2
.talk 3216
..turnin 25263
..accept 25264
step
'Hearth to Razor Hill |goto Durotar,51.5,41.6,0.5 |use hearthstone##6948 |noway |c
step
goto Durotar,50.8,43.6
.talk 3336
..accept 840
step
'Go west to Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 26642
..accept 871
..turnin 840
step
goto Northern Barrens,67.4,38.7
.talk 34258
..accept 844
step
goto Northern Barrens,67.3,37.0
.from Greater Plainstrider##3244+
.get 7 Plainstrider Beak |q 844/1
.' You can find more Greater Plainstriders at [64.6,41.3]
step
goto Northern Barrens,67.4,38.7
.talk 34258
..turnin 844
step
goto Northern Barrens,67.8,40.6
.talk 3521
..turnin 25264
step
goto Northern Barrens,67.1,45.5
.talk 34284
..accept 13878
step
goto Northern Barrens,66.6,47.3
.' Click Wolf Chains |tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
.' Free 3 Wolves |q 13878/1
step
goto Northern Barrens,66.8,49.8
.kill 8 Razormane Plunderer |q 871/1
.kill 3 Razormane Hunter |q 871/2
step
goto Northern Barrens,67.1,45.5
.talk 34284
..turnin 13878
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 871
..accept 872
step
goto Northern Barrens,67.4,38.7
.talk 34258
..accept 5041
step
goto Northern Barrens,66.0,52.5 |n
.' Enter the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto Northern Barrens,64.3,55.0
.' Follow the path in the cave until it dead ends on a small platform.
.from Kreenig Snarlsnout##3438
.get Kreenig Snarlsnout's Tusk |q 872/3
step
goto Northern Barrens,64.7,53.2
.kill 5 Razormane Thornweaver |q 872/1
.kill 5 Razormane Defender |q 872/2
.' Click Crossroads Supply Crates |tip They look like wooden crates on the ground inside the cave.
.get 5 Crossroads Supply Crate |q 5041/1
step
goto Northern Barrens,66.0,52.5 |n
.' Leave the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 872
step
goto Northern Barrens,67.4,38.7
.talk 34258
..turnin 5041
..accept 13949
step
goto Northern Barrens,67.4,38.7
.talk 34258
..' Tell her you're ready
.' Click the Lead Caravan Kodo that walks up to ride on it
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip To kill them very easily, spam the 1 button on your hotbar and the Tab key on your keyboard together.
.' Escort the Caravan |q 13949/1
step
goto Northern Barrens,56.5,40.4
.talk 5907
..turnin 13949
step
goto Northern Barrens,54.6,41.5
.talk 34578
..accept 13975
step
goto Northern Barrens,54.6,41.5
.talk 34578
..' Tell him to bring it on
.' Click the Head Caravan Kodo that walks up to ride on it
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto Northern Barrens,48.7,59.6
.talk 3429
..turnin 13975
step
map Orgrimmar
'To continue gaining reputation with the Orgrimmar faction:
.' You can buy an Orgrimmar Tabard from Stoneguard Nargol in Orgrimmar at [50.0,58.5] |tip Wear the Orgrimmar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
.'
.'
'To continue gaining reputation with the Darkspear Trolls faction:
.' You can buy a Darkspear Tabard from Champion Uru'zin in Orgrimmar at [50.0,58.5] |tip Wear the Darkspear Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Undercity\\Undead",[[
description This guide will help you to get Exalted
description reputation with the Undercity faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not an Undead.
.' Skip to the next step of the guide
step
goto Tirisfal Glades,29.4,71.0
.talk 49044
..accept 24959
step
goto 30.1,71.3
.talk 1568
..turnin 24959
..accept 28608
step
goto 29.7,72.0
.' Darnell will spawn and greet you.  Lead him into the crypt.
.' Click the Thick Embalming Fluid |tip It looks like a glass ball on the wooden table with green liquid in it.
.get Thick Embalming Fluid |q 28608/1
.' Click the Corpse-Stitching Twine |tip It looks like a spool of red thread on the wooden table.
.get Corpse-Stitching Twine |q 28608/2
step
goto 30.1,71.3
.talk 1568
..turnin 28608
..accept 26799
step
goto 30.7,71.4
.talk 2307
..accept 24960
step
goto 29.4,69.6
.talk 49231
..' Tell him he died
.' Speak with Valdred Moray |q 24960/3
step
goto 30.3,69.0
.talk 38895
..' Tell her you want to speak with her
.' Speak with Lilian Voss |q 24960/1
step
goto 30.8,69.2
.talk 49230
..' I'm not here to fight
.' Speak with Marshal Redpath |q 24960/2
step
goto 30.2,69.8
.kill 6 Mindless Zombie |q 26799/1
step
goto 30.1,71.3
.talk 1568
..turnin 26799
step
goto 30.6,71.4
.talk 2307
..turnin 24960
..accept 25089
step
goto 31.6,65.6
.talk 1740
..turnin 25089
..accept 26800
step
goto 30.8,66.2
.talk 1569
..accept 26801
step
goto 32.2,62.7
.from Rattlecage Skeleton##1890+, Wretched Ghoul##1502+
.kill 8 Deathknell Scourge |q 26801/1
.' Click Scarlet Corpses |tip They look like dead humans laying on the ground around this area.
.' Gather 6 Scarlet Corpses |q 26800/1
step
goto 31.6,65.6
.talk 1740
..turnin 26800
step
goto 30.8,66.2
.talk 1569
..turnin 26801
..accept 24962 |only Scourge Hunter
..accept 3095 |only Scourge Warrior
..accept 3099 |only Scourge Warlock
..accept 3098 |only Scourge Mage
..accept 3097 |only Scourge Priest
..accept 3096 |only Scourge Rogue
step
goto 30.9,66.0
.talk 1661
..accept 24961
step
goto 32.5,65.7
.talk 2122
..turnin 3096
..accept 24967
only Scourge Rogue
step
goto 32.5,65.7
.talk 2122
.' Learn Eviscerate |q 24967/2
only Scourge Rogue
step
goto 31.4,67.0
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24967/1
only Scourge Rogue
step
goto 32.5,65.7
.talk 2122
..turnin 24967
only Scourge Rogue
step
goto 31.1,66.0
.talk 2123
..turnin 3097
..accept 24966
only Scourge Priest
step
goto 31.1,66.0
.talk 2123
.' Learn Flash Heal |q 24966/2
only Scourge Priest
step
goto 31.2,66.0
.' Cast Flash Heal on the Wounded Deathguard
.' Practice Flash Heal 5 times |q 24966/1
only Scourge Priest
step
goto 31.1,66.0
.talk 2123
..turnin 24966
only Scourge Priest
step
goto 30.9,66.1
.talk 2124
..turnin 3098
..accept 24965
only Scourge Mage
step
goto 30.9,66.1
.talk 2124
.' Learn Arcane Missiles |q 24965/2
only Scourge Mage
step
goto 31.7,66.5
.' Cast Arcane Missiles ability on the Training Dummies
.' Practice Arcane Missiles 2 times |q 24965/1
only Scourge Mage
step
goto 30.9,66.1
.talk 2124
..turnin 24965
only Scourge Mage
step
goto 30.9,66.3
.talk 2126
..turnin 3099
..accept 24968
only Scourge Warlock
step
goto 30.9,66.3
.talk 2126
.' Learn Immolate |q 24968/2
only Scourge Warlock
step
goto 31.7,66.5
.' Cast Immolate ability on the Training Dummies
.' Practice Immolate 5 times |q 24968/1
only Scourge Warlock
step
goto 30.9,66.3
.talk 2126
..turnin 24968
only Scourge Warlock
step
goto 32.7,65.6
.talk 2119
..turnin 3095
..accept 24969
only Scourge Warrior
step
goto 32.7,65.6
.talk 2119
.' Learn Charge |q 24969/2
only Scourge Warrior
step
goto 31.7,66.5
.' Use you Charge ability on a Training Dummy
.' Practice Charge 1 time |q 24969/1
only Scourge Warrior
step
goto 32.7,65.6
.talk 2119
..turnin 24969
only Scourge Warrior
step
goto 31.4,65.6
.talk 38911
..turnin 24962
..accept 24964
only Scourge Hunter
step
goto 31.4,65.6
.talk 38911
.' Learn Steady Shot |q 24964/2
only Scourge Hunter
step
goto 31.7,66.5
.' Use your Steady Shot ability on the Training Dummies
.' Practice Steady Shot 5 times |q 24964/1
only Scourge Hunter
step
goto 32.7,65.8
.talk 38910
..' Tell her she's not hideous
.' Show Lilian her reflection |q 24961/1
.' She can also be found on the upper level of the building at the same coordinate.
step
goto 30.9,66.0
.talk 1661
..turnin 24961
..accept 28672
step
goto 33.0,61.1
.talk 1570
..turnin 28672
..accept 26802
step
goto 34.0,59.3
.from Young Scavenger##1508+, Ragged Scavenger##1509+
.get 4 Scavenger Paw |q 26802/1
.from Duskbat##1512+, Mangy Duskbat##1513+
.get 4 Duskbat Wing |q 26802/2
step
goto 33.0,61.1
.talk 1570
..turnin 26802
..accept 24973
step
goto 29.7,59.0
.kill 8 Young Night Web Spider |q 24973/1
step
goto 26.8,59.4
.kill 5 Night Web Spider |q 24973/2
step
'Hearth to Shadow Grave |goto 29.4,71.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 33.0,61.1
.talk 1570
..turnin 24973
..accept 24970
step
goto 35.8,62.2
.talk 49425
..turnin 24970
..accept 24971
step
goto 36.4,68.8
.kill Marshal Redpath |q 24971/1
step
goto 37.7,67.3
.kill 8 Rotbrain Undead |q 24971/2
step
goto 30.8,66.2
.talk 1569
..turnin 24971
..accept 24972
step
goto 44.8,53.7
.talk 1519
..turnin 24972
..accept 24978
step
goto 44.6,53.8
.talk 1518
..accept 24975
step
goto 44.8,53.7
.talk 38925
..accept 24974
step
goto 37.3,50.5
.from Tirisfal Farmer##1934+, Tirisfal Farmhand##1935+
.kill 10 Tirisfal Farmer |q 24978/1
.' Click Tirisfal Pumpkins |tip They look like big pumpkins around this area.
.get 10 Tirisfal Pumpkin |q 24975/1
.' There will be more Pumpkins and farmers around 35.4,51.4
step
goto 36.2,44.2
.' Fight a Vile Fin murloc
.' Use your Murloc Leash on the Vile Fin murloc when it is weak |use Murloc Leash##52059 |tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.  Make sure you capture it before you kill it.
.' Capture a Vile Fin |q 24974/1
step
goto 44.8,53.7
.talk 1519
..turnin 24978
..accept 24980
step
goto 44.6,53.8
.talk 1518
..turnin 24975
..accept 24976
step
goto 44.8,53.7
.' Stand on the bed
.' Return the Vile Fine |q 24974/2 |tip The murloc has to get close to the bed in order for you to return it to Sedrick Calston.
step
goto 44.8,53.7
.talk 38925
..turnin 24974
step
goto 49.2,55.0
.' Click Marrowpetal Stalks |tip They look like red flowers underwater around this area.
.get 4 Marrowpetal |q 24976/1
step
goto 40.0,38.7
.' Click Xavren's Thorn |tip They look like tiny plants around this area.
.get 4 Xavren's Thorn |q 24976/2
step
goto 35.3,41.6
.' Click Briny Sea Cucumbers |tip They look like small yellow and pink grubs underwater around this area.
.get 8 Briny Sea Creature |q 24976/3
step
goto 32.5,47.4
.from Scarlet Warrior##1535+
.collect A Scarlet Letter##52079 |n
.' Click A Scarlet Letter in your bags |use A Scarlet Letter##52079
..accept 24979
step
goto 31.7,46.3
.talk 38999
..' Tell her you're here to rescue her
.' Find the Scarlet Prisoner |q 24979/1
step
goto 32.5,47.4
.kill 10 Scarlet Warrior |q 24980/1
step
goto 44.8,53.7
.talk 1519
..turnin 24980
..turnin 24979
step
goto 44.6,53.8
.talk 1518
..turnin 24976
..accept 24977
step
goto 44.7,52.6
.talk 1931
..turnin 24977
step
goto 44.1,53.9
.talk 10666
..accept 25038
step
goto 47.1,56.5
.' Click Gloom Weeds |tip They look like small purple plants on the ground around this area.  Gather them as you follow the road east.
.get 3 Gloom Weed |q 25038/1
.' More can be found at [46.1,60.6]
step
goto 52.5,54.8
.talk 1496
..accept 25090
..accept 24982
step
goto 52.2,56.4
.from Ravaged Corpse##1526+, Rotting Dead##1525+
.get 7 Putrid Claw |q 25090/1
step
goto 52.5,54.8
.talk 1496
..turnin 25090
step
goto 58.8,51.9
.talk 43124
.fpath Brill
step
goto 60.1,52.7
.talk 10665
..turnin 25038
..accept 24990
step
goto 60.5,51.9
.talk 1515
..accept 24981
step
goto 60.9,51.5
.talk 5688
.home Brill
step
goto 61.0,50.4
.talk 1499
..turnin 24982
..accept 24983
step
goto 58.8,60.2
.from Cursed Darkhound##1548+
.get 5 Darkhound Blood |q 24990/1
.' A Worgen will appear and give you a quest when you kill a Cursed Darkhound
..accept 24992
.' More hounds can be found around 53.9,66.7
step
goto 53.0,66.1
.kill 3 Scarlet Zealot |q 24981/1
.kill 3 Scarlet Missionary |q 24981/2
.get Urgent Scarlet Memorandum |q 24981/3
step
'Hearth to Brill |goto 60.9,51.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 60.5,51.9
.talk 1515
..turnin 24981
..turnin 24992
..accept 24993
step
goto 60.1,52.7
.talk 10665
..turnin 24990
..accept 24996
step
goto 60.0,52.9
.talk 2211
..turnin 24996
step
goto 59.8,53.2
.talk 10665
..accept 24991
step
goto 60.1,52.4
.talk 1745
..accept 6321
only Scourge
step
goto 58.8,51.9
.talk 43124
..turnin 6321
..accept 6323
only Scourge
step
goto 58.8,51.9
.talk 43124
.' Fly to Undercity, Tirisfal |goto Undercity,63.1,48.3,0.5 |noway |c
only Scourge
step
goto Undercity,61.5,41.8
.talk 4556
..turnin 6323
..accept 6322
only Scourge
step
goto Undercity,63.3,48.5
.talk 4551
..turnin 6322
..accept 6324
only Scourge
step
goto 63.3,48.5
.talk 4551
.' Fly to Brill, Tirisfal Glades |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
only Scourge
step
goto Tirisfal Glades,60.1,52.4
.talk 1745
..turnin 6324
only Scourge
step
goto 60.3,52.0
.kill 5 Worgen Infiltrator |q 24993/1 |tip They walk stealthed around this area.  Look for little puffs of dust moving along the ground to spot them easily.
step
goto 60.5,51.9
.talk 1515
..turnin 24993
step
goto 65.5,60.3
.talk 1495
..turnin 24983
step
goto 65.2,60.4
.talk 1521
..accept 24988
step
goto 66.9,54.9
.from Greater Duskbat##1553+, Vampiric Duskbat##1554+
.get 5 Duskbat Pelt |q 24988/1
step
goto 65.2,60.4
.talk 1521
..turnin 24988
step
goto 65.5,60.2
.talk 1495
..accept 24989
step
goto 61.0,50.4
.talk 1499
..turnin 24989
step
goto 61.7,34.6
.talk 38977
..turnin 24991
..accept 24994
step
goto 61.6,34.4
.talk 38978
..accept 24997
step
goto 56.7,41.4
.kill 8 Rot Hide Graverobber |q 24997/1
.' Click Doom Weeds |tip They look like small purple plants around this area.
.get 10 Doom Weed |q 24994/1
step
goto 59.5,38.8
.from Rot Hide Mongrel##1675+, Rot Hide Gnoll##1674+
.kill 5 Rot Hide Mongrel |q 24997/2
.get 6 Embalming Ichor |q 24997/3
step
goto 61.7,34.6
.talk 38977
..turnin 24994
..accept 24995
step
goto 61.6,34.4
.talk 38978
..turnin 24997
..accept 24998
..accept 24999
step
goto 58.7,30.7
.from Maggot Eye##1753
.get Maggot Eye's Paw |q 24998/1
step
goto 59.8,27.7
.from Vile Fin Puddlejumper##1543+, Vile Fin Minor Oracle##1544+
.get 5 Vile Fin Scale |q 24995/1
.' Run next to Vile Fin Tadpoles around this area
.' Frighten 12 Vile Fin Tadpoles |q 24999/1
.' There are more to frighten around 65.1,28.7
step
goto 61.6,34.4
.talk 38978
..turnin 24998
..turnin 24999
step
goto 61.7,34.6
.talk 38977
..turnin 24995
..accept 25031
step
goto 57.4,29.3 |n
.' The path through the mountains starts here |goto Tirisfal Glades,57.4,29.3,0.5 |noway |c
step
goto 54.6,29.9
.talk 1500
..turnin 25031
..accept 25003
step
goto 52.1,29.8
.kill 8 Wailing Ancestor |q 25003/1
.kill 8 Rotting Ancestor |q 25003/2
step
goto 54.6,29.9
.talk 1500
..turnin 25003
..accept 25004
..accept 25029
step
goto 46.0,30.3
.from Thurman Agamand##1656
.get Thurman's Remains |q 25029/3
step
goto 45.6,29.6
.from Gregor Agamand##1654
.get Gregor's Remains |q 25029/2
step
goto 49.4,36.0
.from Nissa Agamand##1655
.get Nissa's Remains |q 25029/1
step
goto 48.9,34.0
.from Devlin Agamand##1657
.get Devlin's Remains |q 25029/4
step
goto 47.6,32.4
.from Cracked Skull Soldier##1523+
.get 5 Notched Rib |q 25004/1
.from Darkeye Bonecaster##1522+
.get 3 Notched Skull |q 25004/2
step
goto 54.6,29.9
.talk 1500
..turnin 25004
..turnin 25029
..accept 25005
step
'Hearth to Brill |goto Tirisfal Glades,60.9,51.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 61.0,50.4
.talk 1499
..turnin 25005
..accept 25006
step
goto 60.5,51.9
.talk 1515
..accept 26964
step
goto 62.0,53.0
.talk 39117
..' Tell her you are ready and follow her upstairs
.from Spirit of Devlin Agamand##38980
.' Complete the Procedure |q 25006/1
step
goto 61.0,50.4
.talk 1499
..turnin 25006
..accept 25007
step
goto Tirisfal Glades,83.6,69.9
.talk 37915
.fpath The Bulwark
step
goto 83.3,69.2
.talk 11057
..accept 25056
step
goto 83.3,69.0
.talk 10837
..turnin 25007
..accept 25009
step
goto 83.1,72.0
.talk 46271
.home The Bulwark
step
goto 79.9,67.7
.from Plagued Bruin##39049+
.get 5 Plagued Bruin Hide |q 25056/1
.' You can find more Plagued Bruins at [76.0,70.7]
step
goto 77.5,55.1
.kill 3 Scarlet Zealot |q 25009/1
.kill 4 Scarlet Friar |q 25009/2
step
goto 83.3,69.0
.talk 10837
..turnin 25009
..accept 25010
step
goto 83.3,69.2
.talk 11057
..turnin 25056
..accept 25013
step
goto 81.5,57.8 |n
.' Pass through the mountains here |goto Tirisfal Glades,81.5,57.8,0.5 |noway |c
step
goto 84.4,52.1
.from Vicious Night Web Spider##1555+
.get 4 Vicious Night Web Spider Venom |q 25013/1
step
goto 87.5,43.3
.talk 13158
..turnin 25010
..accept 25046
step
goto 81.5,43.0 |n
.' Go to the road |goto Tirisfal Glades,81.5,43.0,0.5 |noway |c
step
goto 79.5,39.2 |n
.' The path to A Daughter's Embrace starts here |goto Tirisfal Glades,79.5,39.2,0.5 |noway |c
step
goto 79.5,25.8
.' Watch Lillian Voss kill her father in the tower
.' Accomplish Lillian's Mission |q 25046/1
step
'Hearth to The Bulwark |goto Tirisfal Glades,83.1,72.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 83.3,69.2
.talk 11057
..turnin 25013
step
goto 83.3,69.0
.talk 10837
..turnin 25046
..accept 25011
step
goto 83.6,69.9
.talk 37915
..turnin 25011
..accept 25012
step
goto 83.6,69.9
.talk 37915
..' Tell him you'll take that flight to Brill now |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto 60.5,51.9
.talk 1515
..turnin 25012
step
'Go southwest to Silverpine Forest |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,57.4,10.1
.talk 44615
..turnin 26964
..accept 26965
.' Stand by for Warchief Garrosh Hellscream's arrival |q 26965/1
step
goto 57.4,10.1
.talk 44615
..turnin 26965
..accept 26989
step
goto 57.9,8.7
.talk 44825
.fpath Forsaken High Command
step
goto 56.3,8.4
.talk 44784
..accept 26995
step
goto 56.8,9.2
.talk 44778
..accept 26992
step
goto 57.0,14.2
.kill 10 Worgen Renegade |q 26989/1
.from Ferocious Grizzled Bear##1778+, Worg##1765+
.get 6 "Clean" Beast Guts |q 26995/1
.' Click Ferocious Doomweeds |tip They look like small purple and green plants on the ground around this area.
.get 8 Ferocious Doomweed |q 26992/1
.' More can be found around 60.6,13.5
step
goto 57.4,10.1
.talk 44615
..turnin 26989
step
goto 56.3,8.4
.talk 44784
..turnin 26995
step
goto 56.8,9.2
.talk 44778
..turnin 26992
step
goto 56.3,8.4
.talk 44784
..accept 26998
step
goto 57.9,8.7
.talk 44825
..' Tell him you need to take a bat to the Dawning Isles
.' Use the Blight Concoction ability on your hotbar on the murlocs you fly over
.kill 50 Vile Fin Murloc |q 26998/2
step
goto 56.3,8.4
.talk 44784
..turnin 26998
step
goto 58.1,9.0
.talk 44789
..accept 27039
step
goto 53.9,13.0
.' Click the Abandoned Outhouse
..turnin 27039
..accept 27045
step
goto 53.3,12.6
.' Click the Armoire |tip It looks like a tall wooden cabinet upstairs in this house.
.' Learn of Darius Crowley's Plans |q 27045/1
step
goto 58.1,9.0
.talk 44789
..turnin 27045
..accept 27056
step
goto 57.4,10.2
.talk 44365
..turnin 27056
..accept 27065
step
goto 45.9,21.9
.talk 50463
.fpath Forsaken Rear Guard
step
goto 44.0,21.4
.talk 44916
..turnin 27065
..accept 27069
step
goto 44.0,21.3
.talk 44917
..accept 27073
step
goto 44.8,20.9
.talk 44912
..accept 27082
step
goto 44.4,20.3
.talk 45496
.home Forsaken Rear Guard
step
goto 47.4,20.5
.from Giant Rabid Bear##1797+, Rabid Worg##1766+
.get 8 Diseased Organ |q 27082/1
.' More Wolves and Bears can be found around 50.6,17.5
step
goto 44.8,20.9
.talk 44912
..turnin 27082
..accept 27088
step
goto 47.0,25.3
.' Use your Mutant Bush Chicken Cage on a Forrest Ettin |use Mutant Bush Chicken Cage##60808 |tip They are two-headed giants that walk around this area.
.kill Forest Ettin |q 27088/1
step
goto 44.8,20.9
.talk 44912
..turnin 27088
step
goto 44.0,21.4
.talk 44916
.' Tell her that you seem to have misplaced your Sea Pup |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 27069
step
goto 40.0,26.9
.kill 10 Bloodfang Scavenger |q 27073/1
.' Click Sea Dog Crates |tip They look like wooden boxes with red symbols on them around this area.
.' Recover 5 Sea Dog Crates |q 27069/1
step
goto 44.0,21.4
.talk 44916
..turnin 27069
step
goto 44.0,21.3
.talk 44917
..turnin 27073
..accept 27095
step
goto 44.0,21.4
.talk 44916
..accept 27093
step
goto 38.5,16.0
.from Skitterweb Striker##1780+, Skitterweb Lurker##1781+
.kill 12 Skitterweb Spider |q 27095/1
.from Webbed Victim##44941a+ |tip They look like squirming white cocoons around this area.
.' Rescue 6 Orc Sea Dogs |q 27093/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27095
..accept 27094
step
goto 35.6,13.5 |n
.' Enter the mine |goto Silverpine Forest,35.6,13.5,0.5 |noway |c
step
goto 36.0,8.8
.' Follow the path to the back of the mine
.kill Skitterweb Matriarch |q 27094/1 |tip She's hanging upside down on the ceiling.
step
'Hearth to Forsaken Rear Guard |goto 44.4,20.3,0.5 |use Heathstone##6948 |noway |c
step
goto 44.0,21.3
.talk 44917
..turnin 27094
step
goto 44.0,21.4
.talk 44916
..turnin 27093
..accept 27096
step
goto 45.9,21.9
.talk 50463
.' Fly to the Forsaken High Command, Silverpine Forest |goto Silverpine Forest,57.9,8.8,0.5 |noway |c
step
goto 57.4,10.2
.talk 44365
..turnin 27096
..accept 27097
step
goto 64.8,22.3
.from Hillsbrad Refugee##44954+
.' Raise 15 Forsaken |q 27097/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27097
..accept 27099
step
goto 65.7,24.5
.' Go to the top room of the fortress
.' Find the Human Leaders |q 27099/1
step
goto 57.4,10.2
.talk 44365
..turnin 27099
..accept 27098
.' Accompany Lady Sylvanas Windrunner to the Sepulcher |q 27098/1
step
goto 44.9,41.6
.talk 44365
..turnin 27098
..accept 27180
step
goto 45.4,42.5
.talk 2226
.fpath The Sepulcher
step
goto 45.8,41.9
.talk 44917
..accept 27226
step
goto 45.8,42.0
.talk 44916
..accept 27231
step
goto 46.4,42.7
.talk 6739
.home The Sepulcher
step
goto 52.0,33.6
.kill 10 Hillsbrad Worgen |q 27231/1
.' Use your Barrel of Explosive Ale on Orc Sea Dogs |use Barrel of Explosive Ale##60870 |tip They looks like dead orcs on the ground around this area.
.' Rouse 8 Orc Sea Dogs |q 27226/1
step
goto 59.2,34.2
.' Click the Horde Communication Panel |tip It looks like a metal box with handles on it on the wooden dock.
..turnin 27231
..accept 27232
step
goto 59.9,34.1
.' Click a Horde Cannon |tip They look like silver metal cannons at the end of the wooden dock.
.' Use your Rocket Blast ability on your hotbar on the worgens swimming in the water
.kill 50 Hillsbrad Worgen |q 27232/1
step
goto 45.8,42.0
.talk 44916
..turnin 27232
step
goto 45.8,41.9
.talk 44917
..turnin 27226
step
goto 47.4,46.6
.from Bloodfang Stalker##45195
..accept 27181
step
goto 46.9,49.7
.kill 10 Bloodfang Stalker |q 27181/1
.' Click Veteran Forsaken Troopers |tip They look like dead undeads on the ground around this area.
.get 6 Forsaken Insignia |q 27180/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27181
..accept 27193
step
goto 45.9,54.4
.from Caretaker Smithers##45219 |tip He's inside the barn, up on the ledge to your left as you enter the barn.
.get Smithers' Logbook |q 27193/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27193
..accept 27194
step
goto 55.9,46.4
.talk 45228
..turnin 27194
..accept 27195
.' Escort Master Forteski through the Deep Elem Mine |q 27195/1
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.9,41.6
.talk 44365
..turnin 27180
..turnin 27195
..accept 27290
step
goto Ruins of Gilneas,57.5,18.9
.talk 45312
..turnin 27290
..accept 27342
step
goto 57.5,18.2
.talk 45315
..accept 27333
..accept 27345
step
goto 57.3,17.7
.talk 45479
.fpath Forsaken Forward Command
step
goto 45.8,22.0
.' Click the Forsaken Communication Device |tip It's a metal machine with levers on it sitting on the ground.
.get Forsaken Communication Device |q 27345/1
step
goto 53.4,19.3
.kill 12 Worgen Rebel |q 27333/1
step
goto 57.5,18.2
.talk 45315
..turnin 27333
..turnin 27345
step
goto 58.3,22.2 |n
.' Cross the road here |goto Ruins of Gilneas,58.3,22.2,0.5 |noway |c
step
goto 64.0,24.7
.' Click Wolfsbane |tip They looks like small bushy plants with tiny purple flowers on them on the ground around this area.
.get 6 Wolfsbane |q 27342/1
step
goto 59.2,21.8 |n
.' Cross the road here |goto Ruins of Gilneas,59.2,21.8,0.5 |noway |c
step
goto 57.5,18.9
.talk 45312
..turnin 27342
step
goto 57.5,18.2
.talk 45315
..accept 27349
step
goto 52.0,32.1
.' Go to this spot, but stay off the main road
.' Investigate Dreadwatch Outpost |q 27349/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27349
..accept 27350
step
goto 65.6,34.1
.talk 45389
..turnin 27350
..accept 27360
..accept 27364
step
goto 58.9,47.5
.from Master Sergeant Pietro Zaren##45405
.get Orders from High Command |q 27364/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27364
..accept 27401
step
goto 54.9,44.3
.' Click the 7th Legion Telescope |tip It's a huge golden telescope.
.' Use the 7t Legion Telescope to Scout the Harbor |q 27401/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27401
..accept 27405
step
goto 56.7,44.0
.kill 10 7th Legion Submariner |q 27360/1
step
goto 65.6,34.1
.talk 45389
..turnin 27360
step
goto 73.0,30.1
.talk 45312
..turnin 27405
..accept 27406
step
goto 73.4,31.2
.' Go to this spot
..accept 27423
step
goto 75.4,63.1
.'Walk south and southeast along the road:
.from Bloodfang Scout##45481+, Gilnean Warhound##45499+, Worgen Battlemage##45483+
.kill 20 Worgen Combatant |q 27423/1
step
'Next to you:
.talk 45474
..turnin 27423
step
goto 81.8,64.8 |n
.' The path down to Lord Godfrey starts here |goto Ruins of Gilneas,81.8,64.8,0.5 |noway |c
step
goto 79.7,75.7
.' Click Lord Godfrey |tip He is laying dead on the beach.
.' Find Lord Vincent Godfrey's Corpse |q 27406/1
step
'Next to you:
.talk 45474
..turnin 27406
step
goto 79.7,75.7
.talk 45312
..accept 27438
.' Escape the Ruins of Gilneas |q 27438/1
step
goto Silverpine Forest,51.8,66.1
.talk 45525
..turnin 27438
..accept 27472
.' Watch Lord Godfrey be Reborn |q 27472/1
step
goto 51.9,65.0
.talk 45617
..turnin 27472
..accept 27474
step
goto 51.9,64.7
.talk 45626
..accept 27475
step
goto 50.9,63.6
.talk 46552
.fpath The Forsaken Front
step
goto 63.5,64.2
.' Click the Ambermill Codex |tip It's a small book floating above the podium inside the town hall building.
.get Ambermill Codex |q 27474/1
step
goto 59.1,64.3
.from Elemental Servitor##45711+
.get 6 Servitor Core |q 27475/1
step
goto 51.9,64.7
.talk 45626
..turnin 27475
step
goto 51.9,65.0
.talk 45617
..turnin 27474
..accept 27476
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.1,43.2
.talk 1938
..turnin 27476
..accept 27478
..accept 27483
step
goto 47.3,43.4
.' Click the Portal to Dalaran Crater |tip It's a swirling purple portal.
.' Go to the Dalaran Crater |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,29.9,37.6
.from Arcane Remnant##45728+
.collect Arcane Remnant##61310 |n
.' Click the Arcane Remnant in your bags |use Arcane Remnant##61310
..accept 27480
step
goto 32.3,44.4
.' Follow the purple path up and out of the crater
.from Relios the Relic Keeper##45734 |tip He walks around the crumbled town, so you may need to search for him.
.get Dalaran Archmage's Signet Ring |q 27478/1
step
goto 31.6,43.2
.from Dalaran Summoner##2358+, Dalaran Worker##2628+
.kill 12 Dalaran Human |q 27483/1
step
goto 30.8,40.9
.from Arcane Remnant##45728+
.get 8 Arcane Remnant |q 27480/1
step
goto 30.3,36.6
.' Click the Portal to the Sepulcher |tip It's a swirling purple portal in the big crater.
.' Go to the Sepulcher |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,47.1,43.2
.talk 1938
..turnin 27478
..accept 27484
..turnin 27483
..turnin 27480
step
goto 45.4,42.5
.talk 2226
.' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
step
goto 51.9,65.0
.talk 45617
..turnin 27484
..accept 27512
step
goto 51.7,67.2
.talk 45631
..accept 27510
step
goto 56.1,76.7
.kill 10 Inconspicuous Bear |q 27510/1
.' There are more Inconspicuous Bears around 55.3,70.6
step
goto 60.4,74.7 |n
.' The path up to the Ambermill Dimensional Portal starts here |goto Silverpine Forest,60.4,74.7,0.5 |noway |c
step
goto 58.1,69.9
.' Click the Ambermill Dimensional Portal |tip It's a green portal in the very back of the cave you come to.
..turnin 27512
..accept 27513
step
goto 58.1,69.9
.' Click the Ambermill Dimensional Portal |tip It's a green portal in the very back of the cave you come to.
..' <Use the Ambermill Dimensional Portal.>
.' Enter the Transdimensional Shift |havebuff INTERFACE\ICONS\spell_arcane_rune |q 27513
step
goto 62.5,64.1
.' All around the Ambermill town:
.from Ambermill Watcher##1888+, Ambermill Magister##1914+, Ambermill Warder##1913+, Ambermill Miner##3578+, Ambermill Brewmaster##3577+, Ambermill Witchalok##1889+
.kill 20 Ambermill Mage |q 27513/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27513
..accept 27518
step
goto 56.6,64.4
.from Archmage Ataeric##2120 |tip He will send minions at you.  Kill the minions while they are close to Archmage Ataeric to release their energy on him.
.' Destroy the Transdimensional Shield |q 27518/1
step
goto 51.9,65.0
.talk 45617
..turnin 27518
..accept 27542 |instant
step
'Next to you:
.talk 45880
..accept 27547
step
'Next to you:
.talk 45879
..accept 27548
step
'Next to you:
.talk 45878
..accept 27550
step
goto 51.7,67.2
.talk 45631
..turnin 27510
step
goto 46.6,72.7
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Chapel |q 27550/2
step
goto 45.2,72.0
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Inn |q 27550/1
step
goto 44.2,73.2
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Town Hall |q 27550/3
step
'Next to you:
.talk 45878
..turnin 27550
step
goto 45.0,73.5
.' All around Pyrewood Village:
.kill 12 7th Legion Scout |q 27548/1
.talk 45910 |tip They look like Horde mobs standing in place shaking around this area.
.' Rescue 8 Cowering Trooper |q 27547/1
step
'Next to you:
.talk 45880
..turnin 27547
step
'Next to you:
.talk 45879
..turnin 27548
..accept 27577
step
'Next to you:
.talk 45878
..accept 27580
step
goto 42.4,79.2
.kill General Marstone |q 27580/1
step
'Next to you:
.talk 45878
..turnin 27580
step
goto 42.9,81.0
.from Dwarven Infantry##45855+
.get 7th Legion Battle Plan |q 27577/1
step
'Next to you:
.talk 45879
..turnin 27577
step
'Next to you:
.talk 45878
..accept 27594
step
goto 50.3,88.3
.from Commander Lorna Crowley##45997
.' Capture Commander Lorna Crowley |q 27594/1
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.4,42.5
.talk 2226
.' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
step
goto 51.9,65.0
.talk 45617
..turnin 27594
..accept 27601
step
'Follow Lady Sylvanas Windrunner through the battle
.' Defeat the Alliance!
.' Fight Lord Walden, Baron Ashbury, and Lord Godfrey until they retreat
.' Attain Victory: Final and Absolute |q 27601/1
step
goto 45.3,84.5
.talk 46124
..turnin 27601
..accept 27746
step
map Undercity
'To continue gaining reputation with the Undercity faction:
.' You can buy an Undercity Tabard from Captain Donald Adams in Undercity at [63.5,48.8]  |tip Wear the Undercity Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Thunder Bluff\\Tauren",[[
description This guide will help you to get Exalted
description reputation with the Thunder Bluff faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Tauren.
.' Skip to the next step of the guide
step
goto Mulgore,45.1,75.5
.talk 2981
..accept 14449
step
goto 48.9,78.4
.talk 2980
..turnin 14449
..accept 14452
step
goto 51.7,79.9
.from Bristleback Invader##36943+
.kill 8 Bristleback Quilboar |q 14452/1
step
goto 48.9,78.4
.talk 2980
..turnin 14452
..accept 24852
step
goto 52.0,77.2
.' Click Quilboar Cages |tip They look like yellow cages around this area.
.' Free 4 Braves |q 24852/1
step
goto 49.0,78.4
.talk 2980
..turnin 24852
..accept 14458
step
goto 46.2,82.7
.talk 36694
..turnin 14458
..accept 14456
..accept 14455
step
goto 47.8,88.3
.kill 7 Bristleback Thorncaller |q 14455/1
.from Bristleback Gun Thief##36708+
.get 7 Stolen Rifle |q 14456/1
step
goto 46.2,82.7
.talk 36694
..turnin 14456
..turnin 14455
..accept 14459
..accept 14461
step
goto 46.2,82.3
.talk 44927
..accept 3092 |only Tauren Hunter
..accept 3091 |only Tauren Warrior
..accept 3094 |only Tauren Druid
..accept 3093 |only Tauren Shaman
..accept 27014 |only Tauren Priest
..accept 27015 |only Tauren Paladin
step
goto 44.7,87.8
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the First Trough |q 14461/1
step
goto 44.3,88.7
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the Second Trough |q 14461/2
step
goto 45.3,89.1
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the Third Trough |q 14461/3
.kill 10 Armored Battleboar |q 14459/1
step
goto 46.2,82.7
.talk 36694
..turnin 14459
..turnin 14461
..accept 14460
step
goto 41.1,81.4
.from Chief Squealer Thornmantle##36712
.get Mane of Thornmantle |q 14460/1
step
goto 45.1,75.5
.talk 2981
..turnin 14460
..accept 24861
step
goto 45.1,75.3
.' Use your Water Pitcher under the wooden burial stand |use Water Pitcher##50465
.' Place the Offering |q 24861/1
step
goto 45.1,75.5
.talk 2981
..turnin 24861
..accept 23733
step
goto 45.0,75.3
.talk 37737
..turnin 27015
..accept 27023
only Tauren Paladin
step
goto 45.0,75.3
.talk 37737
.' Learn Judgement |q 27023/1
only Tauren Paladin
step
goto 45.6,75.3
.' Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy
.' Practice Judgement 1 time |q 27023/2
only Tauren Paladin
step
goto 45.0,75.3
.talk 37737
..turnin 27023
only Tauren Paladin
step
goto 45.0,75.2
.talk 37724
..turnin 27014
..accept 27066
only Tauren Priest
step
goto 45.0,75.2
.talk 37724
.' Learn Flash Heal |q 27066/2
only Tauren Priest
step
goto 45.6,75.3
.' Use your Flash Heal ability on the Wounded Brave
.' Practice Flash Heal 5 times |q 27066/1
only Tauren Priest
step
goto 45.0,75.2
.talk 37724
..turnin 27066
only Tauren Priest
step
goto 45.1,75.1
.talk 3062
..turnin 3093
..accept 27027
only Tauren Shaman
step
goto 45.1,75.1
.talk 3062
.' Learn Primal Strike |q 27027/2
only Tauren Shaman
step
goto 45.2,74.1
.' Use your Primal Strike ability on a Training Dummy
.' Practice Primal Strike 3 times |q 27027/1
only Tauren Shaman
step
goto 45.1,75.1
.talk 3062
..turnin 27027
only Tauren Shaman
step
goto 45.2,75.1
.talk 3060
..turnin 3094
..accept 27067
only Tauren Druid
step
goto 45.2,75.1
.talk 3060
.' Learn Healing Touch |q 27067/2
only Tauren Druid
step
goto 45.6,75.3
.' Use your Healing Touch ability on the Wounded Brave
.' Practice Healing Touch 5 times |q 27067/1
only Tauren Druid
step
goto 45.2,75.1
.talk Gart Mistrunner
..turnin 27067
only Tauren Druid
step
goto 45.0,75.5
.talk 3059
..turnin 3091
..accept 27020
only Tauren Warrior
step
goto 45.0,75.5
.talk 3059
.' Learn Charge |q 27020/2
only Tauren Warrior
step
goto 44.9,74.3
.' Use your Charge ability on a Training Dummy
.' Practice Charge 1 time |q 27020/1
only Tauren Warrior
step
goto 45.0,75.5
.talk 3059
..turnin 27020
only Tauren Warrior
step
goto 45.3,75.3
.talk 3061
..turnin 3092
..accept 27021
only Tauren Hunter
step
goto 45.3,75.3
.talk 3061
.' Learn Steady Shot |q 27021/2
only Tauren Hunter
step
goto 45.5,75.5
.' Use your Steady Shot ability on a Training Dummy
.' Practice Steady Shot 5 Times |q 27021/1
only Tauren Hunter
step
goto 45.3,75.3
.talk 3061
..turnin 27021
only Tauren Hunter
step
goto 42.5,77.3 |n
.' The path up to Dyami Windsoar starts here |goto Mulgore,42.5,77.3,0.5 |noway |c
step
goto 41.2,76.1
.talk 36803
..turnin 23733
..accept 24215
step
'Use your Water of Vision in your bags |use Water of Vision##49652
.' You will fly to Bloodhoof Village |goto Mulgore,47.8,59.9,0.5 |noway |c |q 24215
step
goto 47.7,59.6
.talk 36644
..turnin 24215
..accept 14438
step
goto 48.6,59.8
.talk 2948
..accept 20440
only Tauren
step
goto 48.8,58.8
.talk 2947
..accept 761
step
goto 47.4,58.6
.talk 40809
.fpath Bloodhoof Village
step
goto 46.8,60.4
.talk 6747
.home Bloodhoof Village
step
goto 48.3,53.1
.talk 23618
..accept 11129
step
goto 55.3,63.1
.from Adult Plainstrider##2956+
.get 4 Plainstrider Talon |q 20440/2 |only Tauren
.collect 1 Tender Strider Meat##33009 |q 11129
.from Swoop##2970+
.get 8 Trophy Swoop Quill |q 761/1
.from Prairie Wolf##2958+ |only Tauren
.get 6 Prairie Wolf Paw |q 20440/1 |only Tauren
step
goto 53.0,71.0
.from Palemane Skinner##2950+, Palemane Poacher##2951+, Palemane Tanner##2949+
.kill 15 Palemane Gnoll |q 14438/1
step
goto 47.7,59.6
.talk 36644
..turnin 14438
..accept 14491
..accept 24459
step
goto 47.5,61.3
.talk 2985
..accept 743
step
goto 48.6,59.8
.talk 2948
..turnin 20440
..accept 24440
only Tauren
step
goto 48.8,58.8
.talk 2947
..turnin 761
step
goto 47.2,56.7
.talk 3055
..accept 26188
step
goto 48.6,61.4
.' Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby |use Tender Strider Meat##33009 |tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
.' Feed Kyle |q 11129/1
step
goto 53.4,65.3
.' Use your Winterhoof Cleansing Totem next to the well |use Winterhoof Cleansing Totem##5411
.' Cleanse the Well |q 24440/1
only Tauren
step
goto 57.1,60.4
.talk 2988
..turnin 24459
..accept 749
step
goto 62.7,69.0
.from Windfury Wind Witch##2963+, Windfury Harpy##2962+
.get 8 Windfury Talon |q 743/1
step
'Hearth to Bloodhoof Village |goto Mulgore,46.8,60.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.5,61.3
.talk 2985
..turnin 743
step
goto 48.6,59.8
.talk 2948
..turnin 24440
..accept 24441
only Tauren
step
goto 48.3,53.1
.talk 23618
..turnin 11129
step
goto 53.5,48.3
.' Click the Sealed Supply Crate |tip It's a crate sitting on the ground next to a bonfire.
..turnin 749
..accept 751
step
goto 55.2,48.2
.from Prairie Stalker##2959+
.get 6 Stalker Claws |q 24441/1
.from Flatland Cougar##3035+
.get Flatland Cougar Femur |q 26188/1
.get 6 Cougar Claws |q 24441/2
.' You can find more around [57.1,44.9]
step
goto 57.1,60.4
.talk 2988
..turnin 751
..accept 26179
..accept 26180
step
goto 60.8,47.4 |n
.' The entrance to the mine starts here |goto Mulgore,60.8,47.4,0.5 |noway |c
step
goto 61.1,46.5
.from Supervisor Fizsprocket##3051
.get Fizsprocket's Clipboard |q 26180/1
step
goto 60.8,47.4 |n
.' Leave the mine |goto Mulgore,60.8,47.4,0.5 |noway |c
step
goto 59.5,50.0
.kill 7 Venture Co. Worker |q 26179/1
step
goto 57.1,60.4
.talk 2988
..turnin 26179
..turnin 26180
step
goto 48.6,59.8
.talk 2948
..turnin 24441
..accept 24456
only Tauren
step
goto 46.1,58.2
.talk 3079
..accept 6361
only Tauren
step
goto 47.4,58.6
.talk 40809
..turnin 6361
..accept 6362
only Tauren
step
goto 47.4,58.6
.talk 40809
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.7,49.9,0.5 |noway |c
only Tauren
step
goto Thunder Bluff,45.8,55.9
.talk 8359
..turnin 6362
..accept 6363
only Tauren
step
goto 47.0,49.8
.talk 2995
..turnin 6363
..accept 6364
only Tauren
step
goto 47.0,49.8
.talk 2995
.' Fly to Bloodhoof Village, Mulgore |goto Mulgore,47.4,58.6,0.5 |noway |c
only Tauren
step
goto Mulgore,46.1,58.2
.talk 3079
..turnin 6364
only Tauren
step
goto 47.2,56.7
.talk 3055
..turnin 26188
step
goto 44.8,45.7
.' Use your Thunderhorn Cleansing Totem next to the well |use Thunderhorn Cleansing Totem##5415
.' Clean the Well |q 24456/1
only Tauren
step
goto 33.5,48.9
.' Use your Drum of Soothed Earth on Agitated Earth Spirits |use Drum of Soothed Earth##49647 |tip They look like rock elementals.
.' Calm 6 Spirits |q 14491/1
step
'Hearth to Bloodhoof Village |goto Mulgore,46.8,60.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.7,59.6
.talk 36644
..turnin 14491
step
goto 48.6,59.8
.talk 2948
..turnin 24456
..accept 24457
only Tauren
step
goto 47.9,57.1
.talk 3054
..turnin 24457
..accept 20441
only Tauren
step
goto 47.9,57.1
.' Use your Water of Vision next to the bonfire |use Water of Vision##49651
.' You will run to Camp Sungraze |goto Mulgore,49.4,17.5,0.5 |noway |c |q 20441
only Tauren
step
goto 49.4,17.3
.talk 37024
..turnin 20441
..accept 24523
only Tauren
step
goto 49.5,17.1
.talk 3233
..accept 773
..accept 833
step
goto 49.7,17.2
.talk 3052
..accept 861
step
goto 49.6,17.6
.talk 2987
..accept 744
step
goto 50.1,19.8
.from Prairie Wolf Alpha##2960+
.get 4 Prairie Alpha Tooth |q 24523/1
.from Flatland Prowler##3566+
.get 4 Flatland Prowler Claw |q 861/1
only Tauren
step
goto 54.9,19.8
.from Windfury Matriarch##2965+
.get 6 Bronze Feather |q 744/2
.from Windfury Sorceress##2964+
.get 6 Azure Feather |q 744/1
step
goto 60.8,22.7
.talk 2994
..turnin 773
step
goto 60.9,23.8
.kill 8 Bristleback Interloper |q 833/1
step
goto 49.4,17.3
.talk 37024
..turnin 24523
..accept 24524
only Tauren
step
goto 49.5,17.1
.talk 3233
..turnin 833
step
goto 49.7,17.2
.talk 3052
..turnin 861
step
goto Mulgore,49.6,17.6
.talk 2987
..turnin 744
step
goto 43.3,16.1
.' Use your Wildmane Cleansing Totem next to the well |use Wildmane Cleansing Totem##5416
.' Cleanse the Wildmane Well |q 24524/1
only Tauren
step
goto 49.4,17.3
.talk 37024
..turnin 24524
..accept 24550
only Tauren
step
'Go southwest into Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24550
..accept 24540
step
goto 54.3,26.9 |n
.' Ride the elevator down and go outside to Mulgore |goto Mulgore |noway |c
step
goto Mulgore,37.0,12.0
.kill Orno Grimtotem |q 24540/1 |tip Don't worry that he's elite, Baine Bloodhoof will come and kill Orno Grimtotem for you.
step
'Go south into Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24540
..accept 26397
step
goto 47.0,49.8
.talk 2995
..' Tell him to send you to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,49.7,59.2
.talk 3310
.fpath Orgrimmar
step
goto 48.1,70.5
.talk 25237
..turnin 26397
step
goto 47.6,71.2
.talk 35068
..accept 26642
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,53.1,43.6
.talk 41140
.fpath Razor Hill
step
goto 50.8,43.6
.talk 3336
..accept 840
step
'Go west to Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 26642
..accept 871
..turnin 840
step
goto 67.4,38.7
.talk 34258
..accept 844
step
goto 67.8,30.3
.from Greater Plainstrider##3244+
.get 7 Plainstrider Beak |q 844/1
.' You can find more Greater Plainstriders at [64.6,41.3]
step
goto 67.4,38.7
.talk 34258
..turnin 844
step
goto 67.1,45.5
.talk 34284
..accept 13878
step
goto 66.6,47.3
.' Click Wolf Chains |tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
.' Free 3 Wolves |q 13878/1
step
goto 66.8,49.8
.kill 8 Razormane Plunderer |q 871/1
.kill 3 Razormane Hunter |q 871/2
step
goto 67.1,45.5
.talk 34284
..turnin 13878
step
goto 67.7,39.4
.talk 3337
..turnin 871
..accept 872
step
goto 67.4,38.7
.talk 34258
..accept 5041
step
goto 66.0,52.5 |n
.' Enter the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 64.3,55.0
.' Follow the path in the cave until it dead ends on a small platform.
.from Kreenig Snarlsnout##3438
.get Kreenig Snarlsnout's Tusk |q 872/3
step
goto 64.7,53.2
.kill 5 Razormane Thornweaver |q 872/1
.kill 5 Razormane Defender |q 872/2
.' Click Crossroads Supply Crates |tip They look like wooden crates on the ground inside the cave.
.get 5 Crossroads Supply Crate |q 5041/1
step
goto 66.0,52.5 |n
.' Leave the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 67.7,39.4
.talk 3337
..turnin 872
step
goto 67.4,38.7
.talk 34258
..turnin 5041
..accept 13949
step
goto 67.4,38.7
.talk 34258
..' Tell her you're ready
.' Click the Lead Caravan Kodo that walks up to ride on it
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip The to kill them very easily, spam the 1 button on your hotbar and press the Tab key on your keyboard to highlight them 1 at a time.
.' Escort the Caravan |q 13949/1
step
goto 56.4,40.3
.talk 5907
..turnin 13949
step
goto 54.6,41.5
.talk 34578
..accept 13975
step
goto 49.5,59.5
.talk 34578
..' Tell him to bring it on
.' Click the Head Caravan Kodo that walks up to ride on it
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto 50.0,59.8
.talk 3338
..accept 845
..accept 903
step
goto 49.6,57.9
.talk 3934
.home The Crossroads
step
goto 49.5,58.7
.talk 3448
..accept 870
step
goto 48.7,59.6
.talk 3429
..turnin 13975
step
goto 48.7,58.7
.talk 3615
.fpath The Crossroads
step
goto 48.6,58.3
.talk 3390
..accept 848
step
goto 43.2,51.6
.from Savannah Huntress##3415+
.get 5 Huntress Claws |q 903/1
.from Zhevra Runner##3242+
.get 4 Zhevra Hooves |q 845/1
step
goto 38.1,46.3
.talk 34841
..accept 850
step
goto 37.5,45.9
.talk 34613
..accept 13992
step
goto 37.3,44.9
.' Swim underwater to this bubbling fissure
.' Explore the water of the Forgotten Pools |q 870/1
step
goto 33.4,46.6
.from Barak Kodobane##3394
.get Kodobane's Head |q 850/1
step
goto 36.7,44.5
.from Kolkar Stormer##3273+, Kolkar Wrangler##3272+
.kill 8 Kolkar Centaur |q 13992/1
.' Click Laden Mushrooms |tip They look like big blue mushrooms around this area.
.get 5 Fungal Spores |q 848/1
step
goto 37.5,45.9
.talk 34613
..turnin 13992
step
goto 38.1,46.3
.talk 34841
..turnin 850
step
'Hearth to The Crossroads |goto Northern Barrens,49.5,57.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,58.7
.talk 3448
..turnin 870
step
goto 50.0,59.8
.talk 3338
..turnin 845
..turnin 903
step
goto 48.6,58.3
.talk 3390
..turnin 848
step
map Thunder Bluff
'To continue gaining reputation with the Thunder Bluff faction:
.' You can buy a Thunder Bluff Tabard from Brave Tuho in Thunder Bluff at [46.7,49.9]  |tip Wear the Thunder Bluff Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Required Home Cities Reputation\\Silvermoon City\\Blood Elf",[[
description This guide will help you to get Exalted
description reputation with the Silvermoon City faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Blood Elf.
.' Skip to the next step of the guide
step
goto Eversong Woods,38.0,21.0
.talk 15278
..accept 8325
step
goto 36.2,20.5
.kill 8 Mana Wyrm |q 8325/1
step
goto 38.0,21.0
.talk 15278
..turnin 8325
..accept 8326
step
goto 39.0,20.3
.talk 15295
..accept 8330
..accept 8345
step
goto 38.3,19.1
.talk 15296
..accept 8336
only BloodElf
step
goto 37.2,18.9
.talk 15297
..accept 8346
only BloodElf
step
goto 36.3,20.1
.' Use your Arcane Torrent ability on a Mana Wyrm |cast Arcane Torrent
.' Unleash the Arcane Torrent |q 8346/1
step
goto 35.3,22.1
.from Springpaw Lynx##15372+, Springpaw Cub##15366+
.get 8 Lynx Collar |q 8326/1
step
goto 31.3,22.7
.' Click the Scroll of Scourge Magic |tip It looks like a scroll laying flat on the ground.
.get Scroll of Scourge Magic##20471 |q 8330/2
.from Feral Tender##15294+
.get 6 Arcane Sliver |q 8336/1
step
goto 29.6,19.4
.' Click the Shrine of Dath'Remar |tip It looks like a square metal plaque on the wall.
.' Read the Shrine of Dath'Remar |q 8345/1
step
goto 35.1,28.9
.' Click Solanian's Scrying Orb |tip It looks like a red orb sitting on a golden rod stand.
.get Solanian's Scrying Orb##20470 |q 8330/1
step
goto 37.7,24.9
.' Click Solanian's Journal |tip It looks like a book laying on the ground.
.get Solanian's Journal##20472 |q 8330/3
step
goto 38.0,21.0
.talk 15278
..turnin 8326
..accept 8327
..accept 9393 |only BloodElf Hunter
..accept 8329 |only BloodElf Warrior
..accept 9676 |only BloodElf Paladin
..accept 8563 |only BloodElf Warlock
..accept 8328 |only BloodElf Mage
..accept 8564 |only BloodElf Priest
..accept 9392 |only BloodElf Rogue
step
goto 38.9,20.0
.talk 15285
..turnin 9392
only BloodElf Rogue
step
goto 39.4,20.4
.talk 15284
..turnin 8564
only BloodElf Priest
step
goto 39.2,21.5
.talk 15279
..turnin 8328
only BloodElf Mage
step
goto 38.9,21.4
.talk 15283
..turnin 8563
only BloodElf Warlock
step
goto 39.5,20.6
.talk 15280
..turnin 9676
only BloodElf Paladin
step
goto 39.3,20.1
.talk 43010
..turnin 8329
only BloodElf Warrior
step
goto 39.0,20.0
.talk 15513
..turnin 9393
only BloodElf Hunter
step
goto 39.0,20.3
.talk 15295
..turnin 8330
..turnin 8345
step
goto 38.3,19.1
.talk 15296
..turnin 8336
only BloodElf
step
goto 37.2,18.9
.talk 15297
..turnin 8346
only BloodElf
step
goto 35.4,22.5
.talk 15281
..turnin 8327
..accept 8334
step
goto 34.7,27.3
.kill 7 Tender |q 8334/1
.kill 7 Feral Tender |q 8334/2
step
goto 35.4,22.5
.talk 15281
..turnin 8334
..accept 8335
step
goto 32.2,25.9
.kill 8 Arcane Wraith |q 8335/1
.kill 2 Tainted Arcane Wraith |q 8335/2
.from Tainted Arcane Wraith##15298+
.collect Tainted Arcane Sliver##20483 |n
.' Click the Tainted Arcane Sliver in your bags |use Tainted Arcane Sliver##20483
..accept 8338
step
'Follow the ramps all the way to the top to 30.8,27.1 |goto Eversong Woods,30.8,27.1
.from Felendren the Banished##15367
.get Felendren's Head |q 8335/3
step
goto 35.4,22.5
.talk 15281
..turnin 8335
..accept 8347
step
goto 37.2,18.9
.talk 15297
..turnin 8338
step
goto 40.4,32.2
.talk 15301
..turnin 8347
..accept 9704
step
goto 42.0,35.7
.' Click the Slain Outrunner |tip It's a corpse laying in the middle of the road.
..turnin 9704
..accept 9705
step
goto 40.4,32.2
.talk 15301
..turnin 9705
..accept 8350
step
goto 46.2,46.8
.talk 44244
.fpath Falconwing Square
step
goto 47.3,46.3
.talk 15418
..accept 8472
step
goto 48.1,47.7
.talk 15433
..turnin 8350
.home Falconwing Square
step
goto 48.2,46
.talk 15403
..accept 8463
step
goto 48.2,46.3
.' Click the Wanted Poster |tip Standing to the right of the entrance to the big building.
..accept 8468
step
goto 45,37.8
.from Thaelis the Hungerer##15949
.get Thaelis's Head |q 8468/1
step
goto 45.9,43.7
.' Click the Unstable Mana Crystal Crates |tip They look like small glowing circle objects on the ground around this area.
.get 6 Unstable Mana Crystal |q 8463/1
.from Arcane Patroller##15638+
.get 6 Arcane Core |q 8472/1
step
goto 47.8,46.6
.talk 16924
..turnin 8468
step
goto 48.2,46
.talk 15403
..turnin 8463
..accept 9352
step
goto 47.3,46.3
.talk 15418
..turnin 8472
..accept 8895
step
goto 44.6,53.1
.talk 15405
..turnin 8895
..accept 9119
step
goto 45.2,56.4
.talk 15941
..accept 9035
step
goto 44.9,61.0
.talk 15945
..turnin 9035
..accept 9062
step
goto 44.3,62.0
.' Click the Soaked Tome |tip It's a little black book underwater here under the bridge.
.get Antheol's Elemental Grimoire|q 9062/1
step
goto 44.9,61.0
.talk 15945
..turnin 9062
..accept 9064
step
goto 36.7,57.4
.talk 15401
..turnin 9119
..accept 8486
step
goto 35.4,57.4
.kill 5 Manawraith |q 8486/1
.kill 5 Mana Stalker |q 8486/2
step
goto 33.9,58.4
.from Darnassian Scout##15968+
.' Defeat an Intruder |q 9352/1
.collect Incriminating Documents##20765 |n
.' Click the Incriminating Documents in your bags |use Incriminating Documents##20765
..accept 8482
step
goto 36.7,57.4
.talk 15401
..turnin 9352
..turnin 8486
step
goto 30.2,58.3
.talk 15920
..accept 8884
step
goto 27.3,57.2
.from Grimscale Forager##15670+, Grimscale Seer##15950+
.get 8 Grimscale Murloc Head |q 8884/1
step
goto 30.2,58.3
.talk 15920
..turnin 8884
..accept 8885
step
'Hearth to Falconwing Square |goto Eversong Woods,48.2,47.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.2,46
.talk 15403
..turnin 8482
..accept 8483
step
goto 44.6,53.1
.talk 15420
..' Tell him you need a moment of his time
.from Prospector Anvilward##15420
.get Prospector Anvilward's Head |q 8483/1
step
goto 48.2,46
.talk 15403
..turnin 8483
..accept 9256
step
goto 50.3,50.8
.talk 15416
..accept 8475
step
goto 50.3,52.9
.kill 8 Plaguebone Pillager |q 8475/1
step
goto 50.3,50.8
.talk 15416
..turnin 8475
step
goto 54.4,50.7
.talk 16192
.fpath Silvermoon City
step
goto 55.7,54.5
.talk 15970
..turnin 9064
..accept 9066
step
goto 45.2,56.4
.' Use Antheol's Disciplinary Rod on Apprentice Ralen |use Antheol's Disciplinary Rod##22473 |tip Standing next to a broken down red wagon.
.' Discipline Apprentice Ralen |q 9066/2
step
goto 44.9,61.0
.' Use Antheol's Disciplinary Rod on Apprentice Meledor |use Antheol's Disciplinary Rod##22473 |tip Standing on the water bank, near the bridge.
.' Discipline Apprentice Meledor |q 9066/1
step
goto 44.7,69.6
.talk 15417
..accept 8491
step
goto 43.9,70.0
.talk 44036
.fpath Fairbreeze Village
step
goto 44.0,70.8
.talk 16210
..accept 9395
..accept 9254
step
goto 43.7,71.2
.talk 15397
..accept 9358
.home Fairbreeze Village
step
goto 43.6,71.2
.talk 16397
..accept 9258
step
goto 43.7,71.6
.talk 16261
..accept 9130
only BloodElf
step
goto 43.3,70.8
.talk 15939
..turnin 9256
..accept 8892
step
goto 43.9,70.0
.talk 44036
..turnin 9130
..accept 9133
only BloodElf
step
goto 54.4,50.8
.talk 44036
.' Fly to Silvermoon City |goto Eversong Woods,54.4,50.8,0.5 |noway |c
only BloodElf
step
goto 55.7,54.5
.talk 15970
..turnin 9066
step
'Go North to Silvermoon City |goto Silvermoon City |noway |c
only BloodElf
step
goto Silvermoon City,53.9,71.0
.talk 16191
..turnin 9133
..accept 9134
only BloodElf
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
only BloodElf
step
goto Eversong Woods,54.4,50.7
.talk 16192
..turnin 9134
..accept 9135
only BloodElf
step
goto 54.4,50.7
.talk 16192
.' Fly to Fairbreeze Village, Eversong Woods |goto Eversong Woods,44.0,69.9,0.5 |noway |c
only BloodElf
step
goto 43.7,71.6
.talk 16261
..turnin 9135
only BloodElf
step
goto 40.5,65.6
.from Springpaw Stalker##15651+
.get 6 Springpaw Pelt |q 8491/1
.' There will be more around [46.3,67.3]
step
goto 38.1,73.6
.talk 16144
..turnin 9395
..accept 9067
step
goto 36.4,66.8
.talk 15404
..accept 8480
step
goto 36.4,66.6
.talk 15921
..accept 8886
step
goto 34.1,69.1
.kill 5 Wretched Thug |q 8892/1
.kill 5 Wretched Hooligan |q 8892/2
.' Click the Weapon Containers |tip They look like wooden boxes on the ground all around this area and inside the big building.
.get 8 Sin'dorei Armaments |q 8480/1
step
goto 25.9,68.5
.from Grimscale Murloc##15668+, Grimscale Oracle##15669+
.collect Captain Kelisendra's Lost Rutters##21776 |n
.' Click Captain Kelisendra's Lost Rutters in your bags |use Captain Kelisendra's Lost Rutters##21776
..accept 8887
.' Click Captain Kelisendra's Cargo |tip The Captain Kelisendra's Cargo barrels look like wooden barrels sitting upright next to the murloc huts.
.get 6 Captain Kelisendra's Cargo |q 8886/1
.from Mmmrrrggglll##15937
.get Ring of Mmmrrrggglll |q 8885/1
.' Mmmrrrggglll can be found around 24.4,73.2 and patrols along the coast
step
goto 30.2,58.3
.talk 15920
..turnin 8885
step
'Hearth to Fairbreeze Village |goto Eversong Woods,43.3,71.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,70.8
.talk 15939
..turnin 8892
..accept 9359
step
goto 44.1,70.3
.talk 16444
.buy 1 Bundle of Fireworks |q 9067/3
step
goto 44.7,69.6
.talk 15417
..turnin 8491
step
goto 36.4,66.8
.talk 15404
..turnin 8480
..accept 9076
step
goto 36.4,66.6
.talk 15921
..turnin 8886
..turnin 8887
step
goto 32.8,69.6
.' Go all the way to the top of the big building
.from Aldaron the Reckless##16294
.get Aldaron's Head |q 9076/1
step
goto 36.4,66.8
.talk 15404
..turnin 9076
step
goto 34.1,80.0
.talk 15398
..turnin 9258
..accept 8473
step
goto 35.0,84.1
.from Old Whitebark##15409
.collect Old Whitebark's Pendant##23228
.' Click Old Whitebark's Pendant in your bags |use Old Whitebark's Pendant##23228
..accept 8474
.kill 10 Withered Green Keeper |q 8473/1
step
goto 34.1,80.0
.talk 15398
..turnin 8473
..turnin 8474
..accept 10166
step
goto 37.5,86.3
.' Use Old Whitebark's Pendant next to this huge stone with a blue symbol on it |use Old Whitebark's Pendant##28209
.' Fight Whitebark's Spirit until he surrenders
.talk 19456
..turnin 10166
step
goto 46.9,71.8
.talk 15942
..turnin 9358
..accept 9252
step
goto 50.2,78.2
.kill 4 Rotlimb Marauder |q 9252/1
.kill 4 Darkwraith |q 9252/2
step
goto 54.3,71
.talk 15402
..turnin 9254
..accept 8487
step
goto 52.6,70.9
.' Click the Corrupted Soil Samples |tip They look like green glowing piles of dirt around this area.
.get 8 Tainted Soil Sample |q 8487/1
step
goto 54.3,71
.talk 15402
..turnin 8487
..'Prepare to fight
..accept 8488
step
goto 54.3,71
.' Protect Apprentice Mirveda from the ambushers |q 8488/1
step
goto 54.3,71
.talk 15402
..turnin 8488
..accept 9255
step
goto 46.9,71.8
.talk 15942
..turnin 9252
..accept 9253
step
goto 44.0,70.8
.talk 16210
..turnin 9255
step
goto 43.9,70.0
.talk 44036
.' Fly to Silvermoon City |goto Eversong Woods,54.4,50.8,0.5 |noway |c
step
'Go inside Silvermoon City |goto Silvermoon City |noway |c
step
goto 79.5,58.5
.talk 16442
.buy Suntouched Special Reserve |q 9067/1
step
'Go outside Eversong Woods |goto Eversong Woods |noway |c
step
goto 60.4,62.5
.talk 16443
.buy Springpaw Appetizers |q 9067/2
step
goto 60.3,62.8
.talk 15399
..turnin 9359
..accept 8476
step
goto 59.5,62.6
.talk 15400
..accept 8477
step
goto 60.3,61.4
.talk 15951
..accept 8888
step
goto 67.8,56.5
.talk 15924
..turnin 8888
..accept 8889
..accept 9394
step
goto 68.9,52.0
.' Click the Orb of Translocation
..'It will teleport you up to the building |goto 67.5,52.1,0.3 |noway |c
step
goto 68.9,51.9
.' Click the Duskwither Spire Power Sources |tip The Power Sources are huge green floating crystals in this building.
.' Deactivate the First Power Source |q 8889/1
step
goto 68.9,51.9
.' Click the Duskwither Spire Power Source |tip The Second Power Source is on the second floor.
.' Deactivate the Second Power Source |q 8889/2
step
goto 69.2,52.1
.' Click Magister Duskwither's Journal |tip Magister Duskwither's Journal is a blue book sitting on a small stool next to the Second Power Source crystal.
..accept 8891
step
goto 69.7,53.3
.' Click the Duskwither Spire Power Source |tip It's a huge green crystal all the way at the top of this building, up a huge staircase.
.' Deactivate the Third Power Source |q 8889/3
.' Click the Orb of Translocation
..' It will teleport you back down |goto Eversong Woods,68.9,52.0,0.1 |noway |c
step
goto 68.7,46.9
.talk 15969
..turnin 9394
..accept 8894
step
goto 69.5,48.1
.kill 6 Mana Serpent |q 8894/1
.kill 6 Ether Fiend |q 8894/2
step
goto 68.7,46.9
.talk 15969
..turnin 8894
step
goto 67.8,56.5
.talk 15924
..turnin 8889
..accept 8890
step
goto 60.3,61.4
.talk 15951
..turnin 8890
..turnin 8891
step
goto 70,72.3
.from Spearcrafter Otembe##15408
.get Otembe's Hammer |q 8477/1
step
goto 70.5,72.3
.talk 15406
..accept 8479
step
goto 62.6,79.7
.from Chieftain Zul'Marosh##15407
.get Chieftain Zul'Marosh's Head |q 8479/1
.collect Amani Invasion Plans##23249
.' Click the Amani Invasion Plans in your bags |use Amani Invasion Plans##23249
..accept 9360
step
goto 70.5,72.3
.talk 15406
..turnin 8479
step
goto 70,72.3
.kill 5 Amani Berserker |q 8476/1
.kill 5 Amani Axe Thrower |q 8476/2
step
goto 60.3,62.8
.talk 15399
..turnin 8476
..turnin 9360
..accept 9363
step
goto 59.5,62.6
.talk 15400
..turnin 8477
step
'Hearth to Fairbreeze Village |goto Eversong Woods,43.7,71.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,70.8
.talk 15939
..turnin 9363
step
goto 38.1,73.6
.talk 16144
..turnin 9067
step
goto 44.2,85.5
.talk 16362
..turnin 9253
..accept 8490
step
goto 55.4,84.2
.' Use your Infused Crystal next to the huge stone with a big blue symbol on it |use Infused Crystal##22693
.' Protect the Infused Crystal from the mobs that come for 1 minute
.' Energize the Runestone |q 8490/1
step
goto 44.2,85.5
.talk 16362
..turnin 8490
step
goto Eversong Woods,49.0,89.0
.talk 16196
..accept 9147
step
'Go south to Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,49.3,12.6
.from Starving Ghostclaw##16347+, Mistbat##16353+
.get 4 Plagued Blood Sample |q 9147/1
step
'Go north to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,49.0,89.0
.talk 16196
..turnin 9147
step
goto 49.0,89.0
.talk 16183
..accept 9148
step
'Go south to Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,46.3,28.4
.talk 16197
..turnin 9148
..accept 9327
step
goto 45.4,30.5
.talk 16189
.fpath Tranquillien
step
goto 44.8,32.5
.talk 16252
..turnin 9327
..accept 9758
step
goto 46.3,28.4
.talk 16197
..turnin 9758
..accept 9138
step
goto 47.3,28.6
.talk 16224
..accept 9152
step
goto 48.9,32.4
.talk 16542
.home Tranquillien
step
goto 47.7,34.9
.talk 16198
..accept 9149
step
goto 60.6,14.0
.kill 10 Nerubis Guard |q 9138/1
step
goto 46.3,28.4
.talk 16197
..turnin 9138
..accept 9139
step
goto 33.6,26.5
.' Click Rathis Romber's Supplies |tip It's a wooden crate sitting in a wagon with a purple canopy over it.
.get Rathis Tomber's Supplies |q 9152/1
step
goto 27.3,16.2
.kill 6 Quel'dorei Ghost |q 9139/1
.kill 4 Quel'dorei Writh |q 9139/2
step
goto 20.5,21.4
.from Withered Grimscale##16403+, Zombified Grimscale##16402+
.get 6 Plagued Murloc Spine |q 9149/1
step
goto 47.1,28.3
.talk 16224
..turnin 9152
step
goto 46.3,28.4
.talk 16197
..turnin 9139
..accept 9140
step
goto 46.0,32.0
.talk 16199
..accept 9150
step
goto 45.5,32.5
.talk 16213
..accept 9145
step
goto 44.9,32.5
.talk 16231
..accept 9160
step
goto 44.8,32.3
.talk 16251
..accept 9192
step
goto 46.0,33.6
.talk 16200
..accept 9155
step
goto 47.7,34.9
.talk 16198
..turnin 9149
step
goto 48.4,30.9
.talk 16253
..accept 9171
step
goto 40.5,33.5
.kill 10 Risen Hungerer |q 9155/1
.kill 10 Gangled Cannibal |q 9155/2
.' More can be found around 38.3,36.5
step
goto 35.9,32.9
.from Arcane Devourer##+, Mana Shifter##+,
.get 8 Crystallized Mana Essence |q 9150/1
step
goto 27.6,31.1
.from Spindleweb Spider##16350
.get 5 Crunchy Spider Leg |q 9171/1
step
goto 37.7,19.3
.' The path up to Investigate An'daroth starts here |goto Ghostlands,37.7,19.3,0.5 |noway |c
step
goto 35.4,12.4
.' Go to this spot |tip Get near the intertwined tree lamp in the middle of the camp.
.' Investigate An'daroth |q 9160/1
.kill 12 Sentinel Spy |q 9160/2
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.0,31.0
.talk 16253
..turnin 9171
step
goto 46.0,32.0
.talk 16199
..turnin 9150
step
goto 44.9,32.5
.talk 16231
..turnin 9160
..accept 9163
step
goto 44.7,32.3
.talk 16251
..accept 9199
step
goto 44.8,32.8
.talk 16289
..accept 9193
step
goto 46.0,33.6
.talk 16200
..turnin 9155
step
goto 31.4,48.3
.talk 16293
..accept 9207
step
goto 29.7,46.9
.kill 8 Blackpaw Gnoll |q 9192/1
.kill 6 Blackpaw Scavenger |q 9192/2
.kill 4 Blackpaw Shaman |q 9192/3
.get 6 Underlight Ore |q 9207/1
step
goto 18.8,46.1
.from Phantasmal Seeker##16323+
.get 6 Phantasmal Substance |q 9140/1
.from Stonewing Slayer##16324+
.get 4 Gargoyle Fragment |q 9140/2
step
goto 12.6,26.5
.' Click the Night Elf Plans: An'daroth |tip It's a scroll laying flat on a small round table next to a tall purple tent.
.get Night Elf Plans: An'daroth |q 9163/1
.' It can also spawn at [13.7,26.8]
step
goto 12.9,23.9
.' Click the Night Elf Plans: An'owyn |tip It's a scroll laying flat on the ground inside a purple tent.
.get Night Elf Plans: An'owyn |q 9163/2
.' It can also spawn at [12.5,24.8]
step
goto 10.5,22.6
.' Click the Night Elf Plans: Scrying on the Sin'dorei |tip It's a rolled up scroll laying on a small round table at the top of the boat.
.get Night Elf Plans: Scrying on the Sin'dorei |q 9163/3
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.3,28.4
.talk 16197
..turnin 9140
step
goto 44.9,32.5
.talk 16231
..turnin 9163
..accept 9166
step
goto 44.7,32.3
.talk 16251
..turnin 9192
step
goto 44.8,32.5
.talk 16252
..accept 9173
step
goto 48.9,31.3
.talk 16205
..accept 9218
..accept 9216
step
goto 57.6,14.9
.talk 16601
..accept 9315
step
goto 61.3,15.9
.kill Anok'suten  |tip He's a big purple insect that walks all around this village.  You may need to search for him. |q 9315/1
step
goto 69.4,15.2
.talk 16219
..turnin 9145
..accept 9143
step
goto 74.8,12.3
.from Shadowpine Ripper##+, Shadowpine Witch##+
.get 6 Zeb'Sora Troll Ear |q 9143/1
step
goto 69.4,15.2
.talk 16219
..turnin 9143
..accept 9146
step
goto 72.3,19.1
.talk 16201
..accept 9157
step
goto 72.5,32.1
.talk 16202
..accept 9158
step
goto 72.3,31.3
.talk 16463
..accept 9276
step
goto 72.4,29.6
.talk 16220
..turnin 9146
..accept 9214
step
goto 72.2,29.8
.talk 16462
..accept 9274
step
goto 72.0,32.6
.talk 16203
..accept 9161
step
goto 73.5,21.9
.kill 8 Ravening Apparition |q 9274/1
.kill 8 Vengeful Apparition |q 9274/2
.' Click Glistening Mud |tip They look like piles of dirt underwater all around this area.
.get 8 Wavefront Medallion |q 9157/1
step
goto 72.3,19.1
.talk 16201
..turnin 9157
..accept 9174
step
goto 71.3,15.1
.' Click the Altar of Tidal Mastery |tip It looks like stone statue of a serpent lady underwater.
.kill Aquantion |q 9174/1
step
goto 72.3,19.1
.talk 16201
..turnin 9174
step
goto 79.6,17.6
.' Click the Dusty Journal |tip It looks like an open book laying on the balcony platform of this building.
..turnin 9161
..accept 9162
step
goto 75.8,28.4
.kill 10 Ghostclaw Lynx |q 9158/1
.' The Ghostclaw Lynx share spawn points with the bats
step
goto 72.5,32.1
.talk 16202
..turnin 9158
..accept 9159
step
goto 72.2,29.8
.talk 16462
..turnin 9274
step
goto 72.0,32.6
.talk 16203
..turnin 9162
..accept 9172
step
goto 72.6,31.6
.talk 16464
..accept 9275
step
goto 73.9,38.0
.kill 10 Vampiric Mistbat |q 9159/1
step
goto 78.6,38.1
.kill 8 Shadowpine Shadowcaster |q 9276/1
.get 3 Shadowcaster Mace |q 9214/2
.kill 8 Shadowpine Headhunter |q 9276/2
.get 3 Headhunter Axe |q 9214/1
step
goto 72.3,31.3
.talk 16463
..turnin 9276
..accept 9277
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.3,28.4
.talk 16197
..turnin 9315
step
goto 39.2,36.3
.from Risen Stalker##16302+, Risen Hungerer##16301+
.get 10 Rotting Heart |q 9216/1
.' There are more undead to kill at [37.8,45.8]
step
goto 29.8,40.9
.kill 8 Spindleweb Lurker |q 9159/2
.' There will be more around [26.4,53.5]
step
goto 17,59
.kill 8 Deatholme Acolyte |q 9173/1
.kill 10 Fallen Ranger |q 9173/2
step
.from Deatholme Acolyte##16315+, Fallen Ranger##16314+
.collect The Lady's Necklace##22597 |n
.' Click The Lady's Necklace in your bags |use The Lady's Necklace##22597
..accept 9175
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.9,31.3
.talk 16205
..turnin 9216
step
goto 46.0,31.9
.talk 16199
..accept 9151
step
goto 44.8,32.4
.talk 16252
..turnin 9175
..turnin 9173
step
goto 53.1,49.0 |n
.' The path over to the Sanctum of the Sun starts here |goto Ghostlands,53.1,49.0,0.5 |noway |c
step
goto 55.1,48.8
.talk 16239
..turnin 9172
..accept 9176
step
goto 54.9,48.5
.talk 16291
..turnin 9207
step
goto 54.9,48.5
.talk 16204
..turnin 9151
..accept 9220
step
goto 57.1,45.0
.' Go to |goto 57.1,45.0 |noway |c
step
goto 60.7,42.7
.' The path to Magister Sylastor starts here |goto Ghostlands,60.7,42.7 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9166
..accept 9169
step
goto 57.8,64.9
.from Sentinel Infiltrator##16333+
.collect Crystal Controlling Orb##23191
step
goto 58.0,65.1
.' Click the Night Elf Moon Crystal |tip It's a big white glowing ball sitting on top of a wooden and stone statue.
.' Deactivate the Night Elf Moon Crystal |q 9169/1
step
goto 65.1,66.8
.' Click the Raw Meat Rack |tip It looks like a wooden rack with bloody meat hanging on it.
.' Poison the Raw Meat Rack |q 9275/1
step
goto 63.0,75.0
.' Click the Smoked Meat Rack |tip It looks like a metal rack with 2 shelves with red meat sitting on them.
.' Poison the Smoked Meat Rack |q 9275/2
step
goto 68.3,57.8
.' Click the Fresh Fish Rack |tip It looks like a wooden standing with fish hanging from it inside this big hut.
.' Poison the Fresh Fish Rack |q 9275/3
step
goto 66.9,58.6
.kill 10 Shadowpine Catlord |q 9277/1
.get 3 Catlord Claws |q 9214/3
.kill 10 Shadowpine Hexxer |q 9277/2
.get 3 Hexxer Stave |q 9214/4
.' More can be found around 63.5,67.4
step
goto 72.5,32.1
.talk 16202
..turnin 9159
step
goto 72.3,31.2
.talk 16463
..turnin 9277
step
goto 72.4,29.6
.talk 16220
..turnin 9214
step
goto 72.6,31.6
.talk 16464
..turnin 9275
step
goto 67.7,28.9
.' The path to the Amani Catacombs starts here |goto Ghostlands,67.7,28.9,0.5 |noway |c
step
goto 66.2,28.5
.' Enter the Amani Catacombs |goto Ghostlands,66.2,28.5,0.5 |noway |c
step
goto 62.9,31.1
.' Click Mummified Troll Remains and burn them |tip They look like mummies laying on the ground inside the catacombs.
.' Go to this spot
.' Investigate the Amani Catacombs |q 9193/1
step
goto 62.8,31.8
.from Mummified Headhunter##16342+, Shadowpine Oracle##16343+
.get 8 Troll Juju |q 9199/1
.' Click Mummified Troll Remains |tip They look like mummies laying on the ground along the wall of the catacombs.
.' Burn 10 Mummified Troll Remains |q 9193/2
.' There are more Mummified Troll Remains in the hallway at [64.9,28.5]
step
62.9,32.7
.talk 16295
..accept 9212
.' Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1
step
goto 72.4,29.6
.talk 16220
..turnin 9212
step
goto 60.7,42.7
.' The path to Magister Sylastor starts here |goto Ghostlands,60.7,42.7 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9169
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
44.7,32.3
.talk 16251
..turnin 9199
step
goto 44.8,32.8
.talk 16289
..turnin 9193
step
goto 40.4,49.8
.' Click the Worn Chest |tip It's a gray chest inside this temple looking building.
.get Stone of Flame |q 9176/1
step
goto 34.3,47.7
.' Click the Dented Chest |tip It's a gray chest inside this temple looking building.
.get Stone of Light |q 9176/2
step
goto 38.1,58.6
.from Dreadbone Sentinel##16305+, Deathcage Sorcerer##16308+
.get 10 Spinal Dust |q 9218/1
.' There are more Dreadbone Sentinel and Deathcage Sorcerers south at [36.3,68.8]
step
goto 36.0,71.7
.' The path into Deatholme starts here |goto Ghostlands,36.0,71.7,0.5 |noway |c
step
goto 36.9,76.1
.kill 6 Nerubis Centurion |q 9220/2
.' There are a few more around [39.2,79.7]
step
goto 37.8,81.3
.kill 5 Eye of Dar'Khan |q 9220/1
.kill 6 Wailer |q 9220/3
step
goto 46.4,56.4
.talk 16480
..accept 9281
step
goto 46.9,60.4
.kill 10 Greater Spindleweb |q 9281/1
.kill 10 Ghostclaw Ravager |q 9281/2
.' You can find more Greater Spindlewebs and Ghostclaw Ravagers:
.' Around [56.4,59.9]
.' Around [42.8,55.8]
.' Around [41.7,64.9]
step
goto 46.4,56.4
.talk 16480
..turnin 9281
step
goto 55.1,48.8
.talk 16239
..turnin 9176
step
goto 54.9,48.6
.talk 16204
..turnin 9220
..accept 9170
step
goto 54.8,48.4
.talk 16240
..accept 9877
step
goto 47.7,34.9
.talk 16198
..turnin 9877
..accept 9164
step
goto 48.9,31.3
.talk 16205
..turnin 9218
step
goto 35.8,72.3
.' The path into Deatholme starts here |goto Ghostlands,35.8,72.3,0.5 |noway |c
step
goto 31.7,73.7
.' Go inside the crypt |goto Ghostlands,31.7,73.7,0.5 |noway |c
step
goto 32.1,74.3
.kill Jurion the Deceiver |q 9170/3
step
goto 32.1,74.0
.talk 16208
..' <Administer the restorative draught.>
.' Rescue Apothecary Enith |q 9164/1
step
goto 37.4,79.3
.kill Mirdoran the Fallen |q 9170/1
step
goto 35.8,89.1
.kill Masophet th Black |q 9170/4
step
goto 32.7,90.5
.kill Borgoth the Bloodletter |q 9170/2
step
32.8,89.8
.talk 16209
..' <Administer the restorative draught.>
.' Rescue Ranger Vedoran |q 9164/3
step
goto 40.8,83.2
.talk 16206
..' <Administer the restorative draught.>
.' Rescue Apprentice Varnis |q 9164/2
step
'Hearth to Tranquillien |goto Ghostlands,48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.9,48.5
.talk 16204
..turnin 9170
step
goto 54.8,48.4
.talk 16240
..turnin 9164
step
map Eversong Woods
'To continue gaining reputation with the Silvermoon City faction:
.' You can buy a Silvermoon City Tabard from Magistrix Nizara in Eversong Woods at [54.5,50.9] |tip Wear the Silvermoon City Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title\\Orc Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
description You cannot complete this section if you are an Orc.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
step
goto Icecrown,76.5,24.6
.talk 33361
..accept 13707
..turnin 13707
..accept 13697
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |daily |or
..accept 13763 |daily |or
..accept 13764 |daily |or
step
goto 76.5,24.5
.talk 33405
..accept 13765 |daily
step
goto 76.4,24.6
.talk 33544
..accept 13767 |daily
..accept 13856 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13763
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13763/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
step
goto 76.5,24.5
.talk 33405
..turnin 13765
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1
step
goto 76.5,24.6
.talk 33361
..turnin 13726
step
'Congratulations, you are now a Champion of Orgrimmar! |tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title\\Tauren Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
step
goto Icecrown,76.2,24.6
.talk 33403
..accept 13709
..turnin 13709
..accept 13720
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |daily |or
..accept 13774 |daily |or
..accept 13775 |daily |or
step
goto 76.3,24.7
.talk 33539
..accept 13776 |daily
step
goto 76.1,24.6
.talk 33549
..accept 13777 |daily
..accept 13858 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13774
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13774/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
step
goto 76.3,24.7
.talk 33539
..turnin 13776
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13728/1
step
goto 76.2,24.6
.talk 33403
..turnin 13728
step
'Congratulations, you are now a Champion of Thunder Bluff! |tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title\\Troll Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
step
goto Icecrown,76.0,24.5
.talk 33372
..accept 13708
..turnin 13708
..accept 13719
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |daily |or
..accept 13769 |daily |or
..accept 13770 |daily |or
step
goto 76.0,24.6
.talk 33540
..accept 13771 |daily
step
goto 75.9,24.4
.talk 33545
..accept 13772 |daily
..accept 13857 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13769
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13769/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
step
goto 76.0,24.6
.talk 33540
..turnin 13771
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13727/1
step
goto 76.0,24.5
.talk 33372
..turnin 13727
step
'Congratulations, you are now a Champion of Sen'jin! |tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title\\Blood Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Blood Elf.
step
goto Icecrown,76.5,23.9
.talk 33379
..accept 13711
..turnin 13711
..accept 13722
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |daily |or
..accept 13784 |daily |or
..accept 13785 |daily |or
step
goto 76.4,23.8
.talk 33538
..accept 13786 |daily
step
goto 76.5,23.9
.talk 33548
..accept 13787 |daily
..accept 13859 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13784
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13784/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
step
goto 76.4,23.8
.talk 33538
..turnin 13786
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13731/1
step
goto 76.5,23.9
.talk 33379
..turnin 13731
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Crusader Title\\Undead Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
step
goto Icecrown,76.5,24.2
.talk 33373
..accept 13710
..turnin 13710
..accept 13721
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |daily |or
..accept 13779 |daily |or
..accept 13780 |daily |or
step
goto 76.6,24.1
.talk 33541
..accept 13781 |daily
step
goto 76.5,24.3
.talk 33547
..accept 13782 |daily
..accept 13860 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13779
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13779/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
step
goto 76.6,24.1
.talk 33541
..turnin 13781
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13729/1
step
goto 76.5,24.2
.talk 33373
..turnin 13729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Darkspear Trolls Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63635) and hasmount(65644)
model 29261
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
.' Become a _Champion of Sen'jin_ |achieve 2784
.earn 105 Champion's Seal##241
|confirm always
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.0,24.5
.talk 33372
..accept 13708
..turnin 13708
..accept 13719
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |daily |or
..accept 13769 |daily |or
..accept 13770 |daily |or
step
goto 76.0,24.6
.talk 33540
..accept 13771 |daily
step
goto 75.9,24.4
.talk 33545
..accept 13772 |daily
..accept 13857 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13769
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13769/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
step
goto 76.0,24.6
.talk 33540
..turnin 13771
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13727/1
step
goto 76.0,24.5
.talk 33372
..turnin 13727
step
.' Become a Champion of Sen'jin |achieve 2784
.earn 105 Champion's Seal##241+
.' If you don't meet both of these requirements go back and repeat this section.
step
goto Icecrown,76.0,24.4
.talk 33554
.buy 1 Darkspear Raptor##45593
.buy 1 Swift Purple Raptor##46743
|modeldisplay 29261
|modeldisplay 14343
step
.learnmount Darkspear Raptor##63635 |use Darkspear Raptor##45593
.learnmount Swift Purple Raptor##65644 |use Swift Purple Raptor##46743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Silvermoon City Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63642) and hasmount(65639)
model 29262
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
.' You cannot complete this section if you are a Blood Elf.
.' Become a _Champion of Silvermoon City_ |achieve 2785
.earn 105 Champion's Seal##241
|confirm always
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.5,23.9
.talk 33379
..accept 13711
..turnin 13711
..accept 13722
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |daily |or
..accept 13784 |daily |or
..accept 13785 |daily |or
step
goto 76.4,23.8
.talk 33538
..accept 13786 |daily
step
goto 76.5,23.9
.talk 33548
..accept 13787 |daily
..accept 13859 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13784
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13784/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
step
goto 76.4,23.8
.talk 33538
..turnin 13786
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13731/1
step
goto 76.5,23.9
.talk 33379
..turnin 13731
step
.' Become a Champion of Silvermoon City |achieve 2785
.earn 105 Champion's Seal##241+
.' If you don't meet both of these requirements go back and repeat this section.
step
goto Icecrown,76.2,23.8
.talk 33557
.buy 1 Silvermoon Hawkstrider##45596
.buy 1 Swift Red Hawkstrider##46751
'|modeldisplay 29262
'|modeldisplay 28607
step
.learnmount Silvermoon Hawkstrider##63642 |use Silvermoon Hawkstrider##45596
.learnmount Swift Red Hawkstrider##65639 |use Swift Red Hawkstrider##46751
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Orgrimmar Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63640) and hasmount(65646)
model 29879
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
.' Become a _Champion of Orgrimmar_ |achieve 2783
.earn 105 Champion's Seal##241
|confirm always
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.5,24.6
.talk 33361
..accept 13707
..turnin 13707
..accept 13697
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |daily |or
..accept 13763 |daily |or
..accept 13764 |daily |or
step
goto 76.5,24.5
.talk 33405
..accept 13765 |daily
step
goto 76.4,24.6
.talk 33544
..accept 13767 |daily
..accept 13856 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13763
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13763/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
step
goto 76.5,24.5
.talk 33405
..turnin 13765
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1
step
goto 76.5,24.6
.talk 33361
..turnin 13726
step
.' Become a Champion of Orgrimmar |achieve 2783
.earn 105 Champion's Seal##241+
.' If you don't meet both of these requirements go back and repeat this section.
step
goto Icecrown,76.4,24.2
.talk 33553
.buy 1 Orgrimmar Wolf##45595
.buy 1 Swift Burgundy Wolf##46749
'|modeldisplay 29879
'|modeldisplay 14335
step
.learnmount Orgrimmar Wolf##63640 |use Orgrimmar Wolf##45595
.learnmount Swift Burgundy Wolf##65646 |use Swift Burgundy Wolf##46749
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Thunder Bluff Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63641) and hasmount(65641)
model 29259
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
.' Become a _Champion of Thunder Bluff_ |achieve 2786
.earn 105 Champion's Seal##241
|confirm always
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,24.6
.talk 33403
..accept 13709
..turnin 13709
..accept 13720
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |daily |or
..accept 13774 |daily |or
..accept 13775 |daily |or
step
goto 76.3,24.7
.talk 33539
..accept 13776 |daily
step
goto 76.1,24.6
.talk 33549
..accept 13777 |daily
..accept 13858 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13774
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13774/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
step
goto 76.3,24.7
.talk 33539
..turnin 13776
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13728/1
step
goto 76.2,24.6
.talk 33403
..turnin 13728
step
.' Become a Champion of Thunder Bluff |achieve 2786
.earn 105 Champion's Seal##241+
.' If you don't meet both of these requirements go back and repeat this section.
step
goto Icecrown,76.2,24.4
.talk 33556
.buy 1 Thunder Bluff Kodo##45592
.buy 1 Great Golden Kodo##46750
'|modeldisplay 29259
'|modeldisplay 28556
step
.learnmount Thunder Bluff Kodo##63641 |use Thunder Bluff Kodo##45592
.learnmount Great Golden Kodo##65641 |use Great Golden Kodo##46750
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Undercity Argent Tournament Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(63643) and hasmount(65645)
model 29257
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
.' Become a _Champion of Undercity_ |achieve 2787
.earn 105 Champion's Seal##241
|confirm always
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.5,24.2
.talk 33373
..accept 13710
..turnin 13710
..accept 13721
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |daily |or
..accept 13779 |daily |or
..accept 13780 |daily |or
step
goto 76.6,24.1
.talk 33541
..accept 13781 |daily
step
goto 76.5,24.3
.talk 33547
..accept 13782 |daily
..accept 13860 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13779
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13779/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
step
goto 76.6,24.1
.talk 33541
..turnin 13781
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13729/1
step
goto 76.5,24.2
.talk 33373
..turnin 13729
step
.' Become a Champion of Undercity |achieve 2787
.earn 105 Champion's Seal##241+
.' If you don't meet both of these requirements go back and repeat this section.
step
goto Icecrown,76.4,24.0
.talk 33555
.buy 1 Forsaken Warhorse##45597
.buy 1 White Skeletal Warhorse##46746
'|modelnpc 33798
'|modelnpc 34552
step
.learnmount Forsaken Warhorse##63643 |use Forsaken Warhorse##45597
.learnmount White Skeletal Warhorse##65645 |use White Skeletal Warhorse##46746
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Sunreaver Hawkstrider",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(66091)
model 28889
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Exalted_ with _The Sunreavers_ |condition rep("The Sunreavers")>=Exalted
.earn 100 Champion's Seal##241
'| Click here to proceed to Sunreaver Pre-Quests. |confirm
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,24.0
.talk 34772
.buy 1 Sunreaver Hawkstrider##46816
'|modeldisplay 28889
step
.learnmount Sunreaver Hawkstrider##66091 |use Sunreaver Hawkstrider##46816
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require special currency to
description purchase.
condition end hasmount(67466)
model 28918
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Earn_ the title _"Crusader"_ |achieve 2816 |tip To do this you must become a Champion and have exalted reputation for all of the factions of the Horde.
.earn 100 Champion's Seal##241 |only if default
.earn 200 Champion's Seal##241 |only Paladin
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,69.4,23.2
.talk 34885
.buy 1 Argent Charger##47179 |only Paladin
.buy 1 Argent Warhorse##47180
'|modelnpc 35179 |only Paladin
'|modeldisplay 28918
step
.learnmount Argent Charger##66906 |use Argent Charger##47179 |only Paladin
.learnmount Argent Warhorse##67466 |use Argent Warhorse##47180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Argent Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(63844)
model 31714
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
.earn 150 Champion's Seal##241
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.4,24.2 |only Orc,Goblin
.talk 33553 |only Orc,Goblin
goto Icecrown,76.2,24.4 |only Tauren
.talk 33556 |only Tauren
goto Icecrown,76.4,24.0 |only Undead
.talk 33555 |only Undead
goto Icecrown,76.0,24.4 |only Troll
.talk 33554 |only Troll
goto Icecrown,76.2,23.8 |only BloodElf
.talk 33557 |only BloodElf
.buy 1 Argent Hippogryph##45725
'|modeldisplay 31714
step
.learnmount Argent Hippogryph##63844 |use Argent Hippogryph##45725
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Argent Tournament Pets & Mounts\\Mounts\\Sunreaver Dragonhawk",[[
description This guide will walk you through obtaining
description the flying mounts that require special currency to
description purchase.
condition end hasmount(66088)
model 29696
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent_ _Tournament_ _Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Exalted_ with _The Sunreavers_ |condition rep("The Sunreavers")>=Exalted
..earn 150 Champion's Seal##241
step
#include BoreanZep
step
|fly Argent Tournament Grounds
step
goto Icecrown,76.2,24.0
.talk 34772
.buy 1 Sunreaver Dragonhawk##46814
'|modeldisplay 29696
step
.learnmount Sunreaver Dragonhawk##66088 |use Sunreaver Dragonhawk##46814
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Venomhide Ravasaur",[[
description This guide will walk you through obtaining
description the ground mounts that require special quests to
description purchase.
condition end hasmount(64659)
model 29102
step
'This mount will take _20 days_ to earn.
|fly Marshal's Stand
step
goto Un'Goro Crater,71.4,74.1
.talk 11701
..accept 13850
step
goto Un'Goro Crater,71.2,51.5
.from Venomhide Ravasaur##6508+
.' Splashed with Venomhide blood |q 13850/1 |tip If you're level 85 take off most, if not all, of your gear and punch the Venomhide Ravasaurs to get the debuff. This quest will take a while...
step
goto Un'Goro Crater,71.4,74.1
.talk 11701
..turnin 13850
..accept 13887
step
goto Un'Goro Crater,63.8,62.7
.click Venomhide Ravasaur Egg##3851+
.get 4 Venomhide Ravasaur Egg |q 13887/1
step
goto Un'Goro Crater,71.4,74.1
.talk 11701
..turnin 13887
..accept 13906
step
label dailies
'Go to _Un'Goro Crater_ |goto Un'Goro Crater |noway |c
step
title +Venomhide Ravasaur Dailies
|use Venomhide Hatchling##46362
.' Complete one of these dailies _everyday_ for _20 days_:
.talk 34320
..accept 13915 |or
..accept 13917 |or
..accept 13916 |or
..accept 13914 |or
step
goto Un'Goro Crater,58.0,70.7
.from Young Diemetradon##9162+
.collect 15 Fresh Dinosaur Meat##46367 |n
|use Venomhide Hatchling##46362
'Use the Fresh Dinosaur Meat in your bags |use Fresh Dinosaur Meat##46367
.'  Fresh Dinosaur Meat fed to Venomhide Hatchling |q 13915/1
|only if havequest(13915)
step
goto 49.8,80.1
.from Gorishi Wasp##6551+,Gorishi Worker##6552+,Gorishi Worker##6553+,Gorisi Stinger##6554+,Gorishi Tunneler##6555+
.collect 10 Silithid Meat##46380 |n
|use Venomhide Hatchling##46362
'Use the _Silithid Meat_ in your bags |use Silithid Meat##46380
.' Silithid Meat fed to Venomhide Hatchling |q 13917/1
|only if havequest(13917)
step
goto Tanaris,35.2,46.4
.click Silithid Egg##7649+
.collect 12 Silithid Egg##46382 |n
|use Venomhide Hatchling##46362
'Use the Silithid Egg in your bags |use Silithid Egg##46382
.' Silithid Egg fed to Venomhide Hatchling |q 13916/1
|only if havequest(13916)
step
goto Tanaris,41,62.6
.from Searing Roc##5430+
.get 5 Searing Roc Plumage##46381 |q 13914/1
|only if havequest(13914)
step
|use Venomhide Hatchling##46362
.talk 34320
..turnin 13889
..turnin 13903
..turnin 13916
..turnin 13905
.' _Click here_ to return to the _beginning_ of the _daily quests_ |script ZGV:GotoStep("dailies")
.get 20 Venomhide Baby Tooth |q 13906/1
step
'You can either buy these items from the Auction House or farm them:
.collect 20 Runecloth##14047
.collect 20 Rugged Leather##8170
step
goto Un'Goro Crater,71.4,74.1
.talk 11701
..turnin 13906
.collect 1 Whistle of the Venomhide Ravasaur##46102
'|modeldisplay 29102
step
.learnmount Venomhide Ravasaur##64659 |use Whistle of the Venomhide Ravasaur##46102
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\White Polar Bear",[[
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
.talk 30012
.' _Challenge_ them to a fight
.kill 6 Victorious Challenger##30012 |q 13423/1
|only if havequest(13423)
step
goto 25.0,60.0
.from Valkyrion Apirant##29569
.collect Vial of Frost Oil##41612 |n
.' Use the _Vial of Frost Oils_ to destroy the _Plauged Proto-Drake Eggs_ |use Vial of Frost Oil##41612
.'Destroy Plagued Proto-Drake Egg |q 13425/1
'|modelnpc 191840
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dailies Mounts\\Darkmoon Faire Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require daily quests to
description purchase.
condition end hasmount(103081)
model 39060
step
'This mount requires Darkmoon Island to be accessible.
|confirm
step
|fly Thunder Bluff
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Amani Battle Bear",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Rivendare's Deathcharger",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(17481)
model 16937
step
#include TirisfalZep
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Raven Lord",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(41252)
model 21427
step
#include darkportal
step
|fly Stonebreaker Hold
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift White Hawkstrider",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Wooly Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through dungeon farming.
condition end hasmount(59793)
model 26424
step
'Use the _Dungeon Finder_ to complete _Normal Difficulty Dungeons_ and _Heroic Difficulty Dungeons_ to obtain _Justice Points_
.earn 2175 Justice Point##395
step
#include BoreanZep
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Wooly Mammoth##44231
'|modeldisplay 26424
step
.learnmount Wooly Mammoth##59793 |use Reins of the Wooly Mammoth##44231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift Zulian Panther and Armored Razzashi Raptor",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Armored Brown Bear",[[
description This guide will walk you through obtaining
description the ground mounts that can be obtained
description through gold farming.
condition end hasmount(60116)
model 27821
step
'This _mount_ costs _750_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include BoreanZep
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Armored Brown Bear##44226
'|modeldisplay 27821
step
.learnmount Armored Brown Bear##60116 |use Reins of the Armored Brown Bear##44226
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Traveler's Tundra Mammoth",[[
description This guide will walk you through obtaining
description the gorund mounts that can be obtained
description through gold farming.
condition end hasmount(61447)
model 25451
step
'This _mount_ costs _20000_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include BoreanZep
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Reins of the Traveler's Tundra Mammoth##44234
'|modeldisplay 25451
step
.learnmount Traveler's Tundra Mammoth##61447 |use Reins of the Traveler's Tundra Mammoth##44234
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Gold Only Mounts\\Mechano-Hog",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(55531)
model 25871
step
'You will need at least _12500 gold_ to obtain this _mount_ |tip This will cost more gold if you do not farm for the required materials
.' Click this line to skip to the next step |confirm
|next "engineer" |only if skill("Engineering")>=450
|next "levelengineer" |only if skill("Engineering")<450 and skill("Engineering")>1
|next "auctionhouse" |only if skill("Engineering")<1
step
label levelengineer
'Use the _Engineering Profession_ section of this guide to level your _Engineering_ skill to _450_
.skill Engineering,450
..' Click here if you do not wish to make this mount yourself |script ZGV:GotoStep("auctionhouse")
step
label engineer
'This will require you to be _exalted_ with _Horde Expedition_
.' _Exalted_ with _Horde Expedition_ |condition rep("Horde Expedition")>=Exalted |tip To get to exalted with this faction: make sure you don't have a Wrath of the Lich King faction tabard on and then complete heroic and normal dungeons in Northrend (this is much easier to do with friends).
..' Click here if you do not wish to make this mount yourself |script ZGV:GotoStep("auctionhouse")
step
goto Borean Tundra,41.4,53.6
.talk 32565
.buy 1 Schematic: Mechano-Hog##44502
step
.learn Mechano-Hog##60866 |use Schematic: Mechano-Hog##44502
step
label auctionhouse
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
'Have the _Engineer_ create the _Mechano-Hog_ for you |only if skill("Engineering")<450
.create Mechano-Hog##60866,Engineering,1 total |only if skill("Engineering")>=450
.collect 1 Mechano-Hog##41508
'|modeldisplay 25871
step
.learnmount Mechano-Hog##55531 |use Mechano-Hog##41508 |tip Get to the Choppa!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Wolf Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(23250) and hasmount(23252) and hasmount(23251) and hasmount(64658) and hasmount(6654) and hasmount(6653) and hasmount(580)
model 30047
step
title +Wolf Mounts
#include main_rep_mount,rep="Orgrimmar",tabard="OrgTabard"
|only BloodElf,Troll,Undead,Tauren,Goblin
step
goto Orgrimmar,61.2,34.0
.talk 3362
.buy 1 Horn of the Swift Timber Wolf##18797
.buy 1 Horn of the Swift Gray Wolf##18798
.buy 1 Horn of the Swift Brown Wolf##18796
.buy 1 Horn of the Brown Wolf##5668
.buy 1 Horn of the Black Wolf##46099
.buy 1 Horn of the Dire Wolf##5665
.buy 1 Horn of the Timber Wolf##1132
'|modeldisplay 14575
'|modeldisplay 14574
'|modeldisplay 14573
'|modeldisplay 2328
'|modeldisplay 35843
'|modeldisplay 2327
'|modeldisplay 247
step
.learnmount Swift Timber Wolf##23251 |use Horn of the Swift Timber Wolf##18797
.learnmount Swift Gray Wolf##23252 |use Horn of the Swift Gray Wolf##18798
.learnmount Swift Brown Wolf##23250 |use Horn of the Swift Brown Wolf##18796
.learnmount Brown Wolf##6654 |use Horn of the Brown Wolf##5668
.learnmount Black Wolf##64658 |use Horn of the Black Wolf##46099
.learnmount Dire Wolf##6653 |use Horn of the Dire Wolf##5665
.learnmount Timber Wolf##580 |use Horn of the Timber Wolf##1132
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Trike Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(87091) and hasmount(87090)
model 35250
step
title +Trike Mounts
#include main_rep_mount,rep="Bilgewater Cartel",tabard="BilgeTabard"
|only BloodElf,Troll,Undead,Tauren,Orc
step
goto Orgrimmar,36.1,86.4
.talk 48510
.buy 1 Goblin Trike Key##62461
.buy 1 Goblin Turbo-Trike Key##62462
'|modeldisplay 35249
'|modeldisplay 35250
step
.learnmount Goblin Trike##87090 |use Goblin Trike Key##62461
.learnmount Goblin Turbo-Trike##87091 |use Goblin Turbo-Trike Key##62462
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Raptor Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(10799) and hasmount(10796) and hasmount(8395) and hasmount(23243) and hasmount(23242) and hasmount(23241)
model 14344
step
title +Darkspear Raptor Mounts
#include main_rep_mount,rep="Darkspear Trolls",tabard="DSTabard"
|only BloodElf,Goblin,Undead,Tauren,Orc
step
Go to Durotar |goto Durotar |noway |c
step
goto 55.2,75.6
.talk 7952
.buy 1 Swift Blue Raptor##18788
.buy 1 Swift Olive Raptor##18789
.buy 1 Swift Orange Raptor##18789
.buy 1 Whistle of the Emerald Raptor##8588
.buy 1 Whistle of the Turqoise##8591
.buy 1 Whistle of the Violet Raptor##8592
'|modeldisplay 14339
'|modeldisplay 14344
'|modeldisplay 14342
'|modeldisplay 4806
'|modeldisplay 6472
'|modeldisplay 6473
step
.learnmount Swift Blue Raptor##23241 |use Swift Blue Raptor##18788
.learnmount Swift Olive Raptor##23242 |use Swift Olive Raptor##18789
.learnmount Swift Orange Raptor##23243 |use Swift Orange Raptor##18789
.learnmount Emerald Raptor##8395 |use Whistle of the Emerald Raptor##8588
.learnmount Turqoise Raptor##10796 |use Whistle of the Turqoise Raptor##8591
.learnmount Violet Raptor##10799 |use Whistle of the Violet Raptor##8592
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Kodo Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(64657) and hasmount(18989) and hasmount(23247) and hasmount(23249) and hasmount(23248) and hasmount(18990)
model 14349
step
title +Kodo Mounts
#include main_rep_mount,rep="Thunder Bluff",tabard="TBTabard"
|only BloodElf,Goblin,Undead,Troll,Orc,Pandaren
step
goto Mulgore,47.6,58.0
.talk 3685
.buy 1 Great Brown Kodo##18794
.buy 1 Great Gray Kodo##18795
.buy 1 Great White Kodo##18793
.buy 1 Brown Kodo##15290
.buy 1 Gray Kodo##15277
.buy 1 White Kodo##46100
'|modeldisplay 14578
'|modeldisplay 14579
'|modeldisplay 14349
'|modeldisplay 11641
'|modeldisplay 12246
'|modeldisplay 12241
step
.learnmount Great Brown Kodo##23249 |use Great Brown Kodo##18794
.learnmount Great Gray Kodo##23248 |use Great Gray Kodo##18795
.learnmount Great White Kodo##23247 |use Great White Kodo##18793
.learnmount Brown Kodo##18990 |use Brown Kodo##15290
.learnmount Gray Kodo##18989 |use Gray Kodo##15290
.learnmount White Kodo##64657 |use White Kodo##46100
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Skeletal Horse Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(17465) and hasmount(66846) and hasmount(23246) and hasmount(64977) and hasmount(17463) and hasmount(17464) and hasmount(17462)
model 10720
step
title +Skeletal Horse Mounts
#include main_rep_mount,rep="Undercity",tabard="UCTabard"
|only BloodElf,Troll,Orc,Tauren,Goblin
step
#include TirisfalZep
step
goto 61.8,51.8
.talk 4731
.buy 1 Green Skeletal Warhose##13334
.buy 1 Ochre Skeletal Warhorse##47101
.buy 1 Purple Skeletal Warhorse##18791
.buy 1 Black Skeletal Horse##46308
.buy 1 Blue Skeletal Horse##13332
.buy 1 Brown Skeletal Horse##13333
.buy 1 Red Skeletal Horse##13331
'|modeldisplay 10720
'|modeldisplay 29754
'|modeldisplay 10721
'|modeldisplay 29130
'|modeldisplay 10671
'|modeldisplay 10672
'|modeldisplay 10670
step
.learnmount Green Skeletal Warhorse##17465 |use Green Skeletal Warhose##13334
.learnmount Ochre Skeletal Warhorse##66846 |use Orche Skeletal Warhorse##47101
.learnmount Purple Skeletal Warhorse##23246 |use Purple Skeletal Warhorse##18791
.learnmount Black Skeletal Horse##64977 |use Black Skeletal Horse##46308
.learnmount Blue Skeletal Horse##17463 |use Blue Skeletal Horse##13332
.learnmount Brown Skeletal Horse##17464 |use Brown Skeletal Horse##13333
.learnmount Red Skeletal Horses##17462 |use Red Skeletal Horse##13331
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Hawkstrider Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(35025) and hasmount(33660) and hasmount(35027) and hasmount(35022) and hasmount(35020) and hasmount(35018) and hasmount(34795)
model 19482
step
title +Hawkstrider Mounts
#include main_rep_mount,rep="Silvermoon City",tabard="SCTabard"
|only Orc,Troll,Undead,Tauren,Goblin
step
#include TirisfalZep
step
goto Undercity,55.1,11.3 |n
.' Click on the Orb of Translocation |goto Silvermoon City |noway |c
step
Go to Eversong Woods |goto Eversong Woods |noway |c
step
goto 61.0,54.6
.talk 16264
.buy 1 Swift Green Hawkstrider##29223
.buy 1 Swift Pink Hawkstrider##28936
.buy 1 Swift Purple Hawkstrider##29224
.buy 1 Black Hawkstrider##29221
.buy 1 Blue Hawkstrider##29220
.buy 1 Purple Hawkstrider##29222
.buy 1 Red Hawkstrider##28927
'|modeldisplay 19484
'|modeldisplay 18697
'|modeldisplay 19482
'|modeldisplay 19478
'|modeldisplay 19480
'|modeldisplay 19479
'|modeldisplay 18696
step
.learnmount Swift Green Hawkstrider##35025 |use Swift Green Hawstrider##29223
.learnmount Swift Pink Hawkstrider##33660 |use  Swift Pink Hawkstrider##28936
.learnmount Swift Purple Hawkstrider##35027 |use  Swift Purple Hawstrider##29224
.learnmount Black Hawkstrider##35022 |use Black Hawkstrider##29221
.learnmount Blue Hawkstrider##35020 |use Blue Hawkstrider##29220
.learnmount Purple Hawkstrider##35018 |use Purple Hawkstrider##29222
.learnmount Red Hawkstrider##34795 |use Red Hawkstrider##28927
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Talbuk Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(39315) and hasmount(34896) and hasmount(39317) and hasmount(34898) and hasmount(39318) and hasmount(34899) and hasmount(39319) and hasmount(34897)
model 19377
step
#include misc_rep_mount,rep="The Mag'har"
.' Click here to continue to earn reputation with the Mag'har |confirm always |only if rep("The Mag'har")<=Revered
|next "quest" |only if rep("The Mag'har")<=Revered
|next "exalted" |only if rep("The Mag'har")==Exalted
step
label	"quest"
goto Hellfire Peninsula,55,36
.talk 3230
.accept 9400
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
step
goto 33.6,43.5
.' Click the Fel Orc Corpse |tip It's a corpse laying halfway up the hill.
..turnin 9400
..accept 9401
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot|goto 32,27.8,0.5|c
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
goto 55,36
.talk 3230
..turnin 9406
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag##17130+ |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc##17128+ |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof##18205+ |q 9789/1
.from Wild Elekk##18334
.collect 3 Pair of Ivory Tusks##25463 |q 9914 |future
.from Dust Howlers##17158
.collect Howling Wind##24504 |n
.' Use the Howling Wind in your bags |use Howling Wind##24504
..accept 9861
.' You can find more Clefthoofs, Elekks, and Dust Howlers at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 57.2,35.2
.talk 18808
.fpath Garadar
step
goto 57.1,34.9
.talk 18302
..accept 9944
step
goto 56.6,34.6
.talk 18913
.home Garadar
step
goto 55.4,37.4
.talk 18090
..turnin 9797
step
goto 55.5,37.6
.talk 18106
..accept 9888
step
goto 55.8,38
.talk 18407
..accept 10479
.click the Garadar Bulletin Board
..accept 9935
..accept 9939
step
goto 55,39
.talk 18234
..accept 9870
step
goto 54.7,39.7
.talk 18066
..accept 9863
.talk 18067
..accept 9864
.talk 18068
..accept 9867
step
goto 51.9,34.8
.talk 18335
..accept 9913
step
goto 60.5,22.4
.talk 18074
..turnin 9861
..accept 9862
.talk 18072
..turnin 9870
.talk 18073
..accept 9800
..accept 9815
.talk 18071
..accept 9818
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9818
..accept 9819
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer##17131+ |q 9858/1
.click the Dung piles |tip The Dung piles looks like green piles of swirled poop.
.get 8 Digested Caracoli |q 9800/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull##17132+ |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413 |q 9939/1 |tip Inside the cave at the top of the hill.
step
goto 48.3,21.5
.kill 5 Warmaul Shaman##18064+ |q 9939/2
.kill 5 Warmaul Reaver##17138+ |q 9939/3
step
goto 48.3,21.5
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.get 10 Obsidian Warbeads |q 10479/1
step
goto 32.4,36.1
.talk 18229
..turnin 9864
..accept 9865
.talk 18414
..turnin 9944
..accept 9945
.talk 18415
..accept 9948
step
goto 29.2,31.6 |n
.' The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here |goto 29.2,31.6,0.5 |noway |c
step
goto 23.4,29.2
.kill 8 Warmaul Brute##18065+ |q 9945/1
.kill 8 Warmaul Warlock##18037+ |q 9945/2
.collect Warmaul Prison Key##25604 |n
.click the yellow cages around this area
.' Free 5 Mag'har Prisoners |q 9948/1
step
goto 32.4,36.1
.talk 18414
..turnin 9945
.talk 18415
..turnin 9948
step
goto 41.5,40.9
.from Muck Spawn##17154+
.get 5 Muck-ridden Core |q 9815/1
step
goto 32,39.1
.kill 20 Murkblood Scavenger##18207+ |q 9865/1
.kill 10 Murkblood Raider##18203+ |q 9865/2
.kill 5 Murkblood Putrifier##18202+ |q 9862/1
.get 10 Murkblood Idol |q 9863/1
step
goto 30.9,42.3
.from Ortor of Murkblood##18204 |tip He's standing inside the big building here.
.get Head of Ortor of Murkblood |q 9867/1
step
goto 32.4,36.1
.talk 18229
..turnin 9865
..accept 9866
step
goto 30.8,58.1
.talk 18276
..accept 9900
..accept 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9913
..accept 9882
step
goto 31.8,56.8
.talk 18333
..accept 9914
..turnin 9914
step
goto 33.4,62.4
.click the Oshu'gun Crystal Fragments on the ground. |tip They are the green and white crystals on the ground.
.from Vir'aani Raider##17149
.get 10 Oshu'gun Crystal Fragment |q 9882/1
step
goto 30.6,67.5
.kill 8 Voidspawn##17981+ |q 9925/1
step
goto 42.4,73.5
.kill Gava'xi##18298 |q 9900/1 |tip He spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
step
goto 48.4,61.5
.kill 12 Ravenous Windroc##18220+ |q 9855/1
step
goto 30.8,58.1
.talk 18276
..turnin 9900
..turnin 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9882
step
goto 61.7,67.1
.talk 19035
..accept 10109
step
goto 65.4,70.8
.kill 10 Tortured Earth Spirit##17156+ |q 9819/1
step
goto 69.4,56.9
.from Dust Howler##17158+
.get 3 Air Elemental Gas |q 10109/1
.' You can find more Dust Howlers at [65.5,46.9]
step
goto 61.7,67.1
.talk 19035
..turnin 10109
step
'Go southeast to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,19.8,60.9
.talk 18273
..turnin 9888
..accept 9889
step
goto 20,63.1
.kill 10 Boulderfist Invader##18260+ |q 9889/1
step
goto 20,63.1
.' Fight Unkor the Ruthless until he submits |q 9889/2
.talk 18262
..turnin 9889
..accept 9890
step
goto 19.8,60.9
.talk 18273
..turnin 9890
..accept 9891
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto Nagrand,55.5,37.6
.talk 18106
..turnin 9891
..accept 9906
step
goto 55.8,38
.talk 18407
..turnin 10479
..turnin 9939
step
goto 55.5,37.6
.talk 18300
..accept 9910
step
goto 54.7,39.7
.talk 18066
..turnin 9863
.talk 18067
..turnin 9866
.talk 18068
..turnin 9867
step
goto 61.8,24.4
.talk 18099
..turnin 9819
..accept 9821 |tip He may not be in this spot, he wanders around the Throne of Elements area.
step
goto 60.5,22.4
.talk 18073
..turnin 9800
..accept 9804
..turnin 9815
.talk 18074
..turnin 9862
step
goto 59.7,27.3
.kill 8 Lake Spirit##17153+ |q 9804/1
step
goto 60.5,22.4
.talk 18073
..turnin 9804
..accept 9805
step
goto 52,20.2
.from Enraged Crusher##18062+ |tip You can find them all along this cliffside.
.get 10 Enraged Crusher Core |q 9821/1
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9821
..accept 9849
step
goto 71.6,40.5
.talk 18218
..turnin 9858
.talk 18180
..turnin 9850
.talk 18200
..turnin 9855
step
goto 70.8,51.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Western Hut |q 9805/2
step
goto 72.4,50.3
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Large Hut |q 9805/1
step
goto 72.8,54.7
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Eastern Hut |q 9805/4
step
goto 71.2,53.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Southern Hut |q 9805/3
step
goto 60.5,22.4
.talk 18073
..turnin 9805
..accept 9810
step
goto 72.1,69.9
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
.' Place the First Battle Standard |q 9910/1
step
goto 74.7,69.8
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip Up the hill on the middle ledge, overlooking the camp.
.' Place the Second Battle Standard |q 9910/2
step
goto 75.8,68.4
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip All the way up the hill.
.' Place the Third Battle Standard |q 9910/3
step
goto 72.9,69.8
.kill 8 Boulderfist Mystic##17135+ |q 9906/1
.kill 8 Boulderfist Crusher##17134+ |q 9906/2
step
goto 55.5,37.6
.talk 18106
..turnin 9906
..accept 9907
step
goto 55.5,37.6
.talk 18300
..turnin 9910
..accept 9916
step
goto 40.8,31.5
.kill 10 Boulderfist Warrior##17136+ |q 9907/1
.kill 10 Boulderfist Mage##17137+ |q 9907/2
.click the Bleeding Hollow Supply Crates
.get 10 Bleeding Hollow Supply Crate |q 9916/1 |tip They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
step
goto 33.8,48.9
.kill 8 Lake Surger##17155+ |q 9810/2
step
goto 33.1,50.8
.kill Watoosun's Polluted Essence##18145 |q 9810/1 |tip He's underwater.
step
goto 27.9,77.6
.' Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
.' Kill the Minions of Gurok that spawn from their corpses
.kill 30 Minion of Gurok##18181+ |q 9849/1
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,37.6
.talk 18300
..turnin 9916
step
goto 55.5,37.6
.talk 18106
..turnin 9907
..accept 10107
step
goto 73.8,68.1 |n
.' The path up to Lantressor of the Blade starts here |goto 73.8,68.1,0.5 |noway |c
step
goto 73.8,62.6
.talk 18261
.' Listen to his story
.' Hear the story of the Blademaster |q 10107/1
..turnin 10107
..accept 9928
..accept 9927
step
goto 71.1,82.4
.kill Giselda the Crone##18391 |q 9935/1 |tip Inside the big circle building, in the middle.
step
goto 71.4,79.4
.click the Kil'sorrow Armaments |tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
.' Kill 10 Kil'sorrow Agents |q 9935/2
.' Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 55.8,38
.talk 18407
..turnin 9935
step
goto 61.8,24.4
.talk 18099
..turnin 9849
step
goto 60.5,22.4
.talk 18073
..turnin 9810
step
goto 46.5,24.3
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.' Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658 |tip It looks like a big burning bonfire.
.' Defend the 2 ogres that spawn until they finish placing corpses around
.' Plant the Kil'sorrow Bodies |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9934
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,37.6
.talk 18063
..turnin 9934
step
goto Nagrand,55.8,38.0
.talk 18407
..accept 9937
step
goto 55.2,36.1
.talk 18301
..accept 9983
step
.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
.' Click here to proceed |confirm always
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
.' Follow the path around this are to look for _Durn the Hungerer_
.kill Durn the Hungerer |q 9937/1
step
goto 27.3,43.1
.talk 18417
..turnin 9983
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
goto 32.3,36.2
.talk 18414
..accept 9946
step
goto Nagrand,25.8,13.8
.' Follow the path up and around
.from Cho'war the Pillager##18423
.get Head of Cho'war |q 9946/1
step
goto 27.2,18.7 |n
.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
step
goto 32.3,36.2
.talk 18414
..turnin 9946
step
goto Nagrand,55.8,38.0
.talk 18407
..turnin 9937
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
|fly Garadar
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
.' Click to proceed. |confirm always
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
goto Nagrand,55.8,37.9
.talk 18407
..accept 10478 |instant |repeatable
.' Click here to go back to farming. |next "bead_grind" |confirm always |only if rep("The Mag'har")<=Revered
.' Reach Exalted with The Mag'har! |condition rep("The Mag'har")>=Exalted |next "exalted"
.' Skip to the next step |only if rep("The Mag'har")==Exalted
step
label	"exalted"
goto Nagrand,53.4,36.8
.talk 20241
.buy 1 Reins of the Cobalt Riding Talbuk##31829
.buy 1 Reins of the Cobalt War Talbuk##29102
.buy 1 Reins of the Silver Riding Talbuk##31831
.buy 1 Reins of the Silver War Talbuk##29104
.buy 1 Reins of the Tan Riding Talbuk##31833
.buy 1 Reins of the Tan War Talbuk##29105
.buy 1 Reins of the White Riding Talbuk##31835
.buy 1 Reins of the White War Talbuk##29103
'|modeldisplay 21073
'|modeldisplay 19375
'|modeldisplay 21075
'|modeldisplay 19378
'|modeldisplay 21077
'|modeldisplay 19376
'|modeldisplay 21076
'|modeldisplay 19377
step
.learnmount Cobalt Riding Talbuk##39315 |use Reins of the Cobalt Riding Talbuk##31829
.learnmount Cobalt War Talbuk##34896 |use Reins of the Cobalt War Talbuk##29102
.learnmount Silver Riding Talbuk##39317 |use Reins of the Silver Riding Talbuk##31831
.learnmount Silver War Talbuk##34898 |use Reins of the Silver War Talbuk##29104
.learnmount Tan Riding Talbuk##39318 |use Reins of the Tan Riding Talbuk##31833
.learnmount Tan War Talbuk##34899 |use Reins of the Tan War Talbuk##29105
.learnmount White Riding Talbuk##39319 |use Reins of the White Riding Talbuk##31835
.learnmount White War Talbuk##34897 |use Reins of the White War Talbuk##29103
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Camel Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88748) and hasmount(88749)
model 37492
step
title +Camel Mounts
#include main_rep_mount,rep="Ramkahen",tabard="RamkahenTabard"
step
#include OrgPortaltoUldum
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Spectral Wolf",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(92232)
model 37159
step
' This will require that you be exalted with the Baradin Wardens.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' Spectral Wolf costs 165 Tol Barad Commendations.
.earn 165 Tol Barad Commendation##391
step
label	"menu"
#include dailies_rep_mount,rep="Hellscream's Reach"
.earn 165 Tol Barad Commendation##391 |tip This is for the Wolf
|next "exalted" |only if rep("Hellscream's Reach")==Exalted
.' Click to use the Dailies Guide |confirm |tip
.' Click here to purchase your mount |confirm |only if _G.select(2,_G.GetCurrencyInfo(391))>165
step
' Click here to use the Tol Barad, Hellscream Reach Dailies |confirm always |next "hellscream" |or
.' or
.' Click here to use the Tol Barad, Baradin Hold Dailies |confirm always |next "baradin" |or
step
label	"hellscream"
goto Orgrimmar,47.4,39.3
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Skip to the next step in the guide
step
goto Tol Barad Peninsula,55.2,81.3
.talk 48360
..accept 28684 |daily
..accept 28680 |daily
..accept 28678 |daily
..accept 28679 |daily
..accept 28681 |daily
..accept 28683 |daily
step
goto 53.5,80.6
.talk 48358
..accept 28682 |daily
..accept 28685 |daily
..accept 28686 |daily
..accept 28687 |daily
..accept 28721 |daily
step
goto 54.9,79.3
.talk 48363
..accept 28693 |daily
..accept 28691 |daily
..accept 28692 |daily
..accept 28690 |daily
..accept 28689 |daily
step
goto 55.8,78.5
.talk 48361
..accept 28696 |daily
..accept 28698 |daily
..accept 28697 |daily
..accept 28700 |daily
..accept 28695 |daily
..accept 28694 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 28697/1
.' Click Stacks of Cannonballs |tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
.get 4 Stack of Cannonballs |q 28698/1
step
goto 69.3,23.1
.' Click Strings of Fish |tip They look like small fish hanging from simple wooden structures on the docks around this area.
.get 22 Rustberg Seabass |q 28687/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28686/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker |q 28683/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 28684/1
step
goto 47.9,8.1
.kill Captain P. Harris |q 28678/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank |q 28681/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.' Click Barrels of Southsea Rum |tip They look like barrels underwater around this area.
.get 6 Barrel of Southsea Rum |q 28680/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor |q 28679/1
step
goto 36.1,27.3
.kill Keep Lord Farson |q 28682/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28721/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.' Click Racks of Rifles |tip They look like wooden stands with guns on them around this area.
.get 12 Rusty Rifle |q 28685/1
step
goto 27.2,47.7
.kill Foreman Wellson |q 28695/1
step
goto 22.2,36.3
.' Click a Cannon |tip They look like black cannons on this small dock.
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28696/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 28694/1
step
goto 40.2,57.9
.kill 5 Restless Soldier |q 28693/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.' Click Siege Scraps |tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
.get 7 Siege Engine Scrap |q 28692/1
step
goto 38.4,77.6
.kill First Lieutenant Connor |q 28691/1 |tip He's a big skeleton that walks around this area, so you may need to search for him.
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 28690/1
.' Click Forgotten Soldier's Tombstones |tip They look like taller and slimmer gravestones around this area.
.' Release 6 Tortured Souls |q 28689/1
step
goto 55.2,81.3
.talk 48360
..turnin 28684
..turnin 28680
..turnin 28678
..turnin 28679
..turnin 28681
..turnin 28683
step
goto 53.5,80.6
.talk 48358
..turnin 28682
..turnin 28685
..turnin 28686
..turnin 28687
..turnin 28721
step
goto 54.9,79.3
.talk 48363
..turnin 28693
..turnin 28691
..turnin 28692
..turnin 28690
..turnin 28689
step
goto 55.8,78.5
.talk 48361
..turnin 28696
..turnin 28698
..turnin 28697
..turnin 28700
..turnin 28695
..turnin 28694
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label	"baradin"
'These daily quests will only be available if the Horde faction currently controls Tol Barad.
.' Skip to the next step in the guide
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Skip to the next step in the guide
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657 |daily
..accept 28658 |daily
..accept 28659 |daily
step
goto 51.5,49.7
.talk 48070
..accept 28663 |daily
..accept 28664 |daily
..accept 28665 |daily
step
goto 51.5,49.7
.talk 48071
..accept 28660 |daily
..accept 28662 |daily
..accept 28661 |daily
step
goto 51.5,49.7
.talk 48062
..accept 28670 |daily
..accept 28668 |daily
..accept 28669 |daily
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28664/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28663/1
.' Click Cursed Shackles |tip They look like gray metal ball and chains laying on the ground all around this area.
.get 8 Cursed Shackles |q 28665/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28658/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28669/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28668/1
.' Click Crates of Cellblock Rations |tip They look like slim square wooden boxes on the ground around this area.
.get 12 Cellblock Ration |q 28670/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28661/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28660/1
.' Click Dusty Prison Journals |tip They are books laying on the ground around this area.
.get 4 Dusty Prison Journal |q 28662/1
step
goto Tol Barad,35.8,67.8
.from Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
.kill 12 Alliance Infantry |q 28659/1
step
goto 52.8,36.7
.kill Problim |q 28657/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto 50.9,49.7
.talk 48069
..turnin 28657
..turnin 28658
..turnin 28659
step
goto 51.5,49.7
.talk 48070
..turnin 28663
..turnin 28664
..turnin 28665
step
goto 51.5,49.7
.talk 48071
..turnin 28660
..turnin 28662
..turnin 28661
step
goto 51.5,49.7
.talk 48062
..turnin 28670
..turnin 28668
..turnin 28669
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label	"exalted"
goto Orgrimmar,47.6,39.1  |n
.' Click on the portal to _Tol Barad_ |goto Tol Barad |noway |c
step
goto Tol Barad Peninsula,54.6,81.0
.talk 48531
.buy 1 Reins of the Spectral Wolf##64999
'|modeldisplay 37159
step
.learnmount Spectral Wolf##92232 |use Reins of the Spectral Wolf##64999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Ice Mommoth and Grand Ice Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(61469)
model 27239
step
' Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
.' Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
.' Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
.' Proceeding to Exalted Mounts |next "BuyMount" |only if rep('The Sons of Hodir')==Exalted
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
.' Click the Charred Wreckage|tip They look like various metal parts on the ground around this area.
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.kill Savage Hill gnolls|n
.' Click Dried Gnoll Rations crates|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill 1 Gnarlhide|q 12836/1|tip Standing in front of a tent.
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
.' Click Sparksocket's Tools|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
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
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench
.' Retrieve a bomb from the dispenser
.collect 1 U.D.E.D.##40686|q 12828
step
'HURRY HURRY to 43.9,79.0|goto 43.9,79.0
.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
.' Click the Mammoth Meat on the ground
.get 8 Hearty Mammoth Meat|q 12828/1
step
'Go into the cave to 40.4,77.8|goto 40.4,77.8
.kill 12 Crystalweb Spiders|q 12829/1
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Diggers|n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.kill Icetip Crawlers|n|tip They are big purple spiders walking around this area inside the cave.
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
'Fly up to 39.8,73.3|goto 39.8,73.3
.kill Sifreldar Storm Maidens|n
.collect 5 Cold Iron Key##40641|q 12843
.' Click the Rusty Cages
.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
.' Click the K3 Equipment crates|tip The K3 Equipment crates look like wooden crates on the ground around town.
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
.' Click the Transporter Power Cell|tip It looks like a small red barrel.
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
'Go inside the cave to 50.5,77.8|goto 50.5,77.8
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut|q 12823/2
step
'Go inside the cave to 48.1,81.9|goto 48.1,81.9
.kill 6 Garm Watcher|q 12822/1
.kill 8 Snowblind Devotee|q 12822/2
step
'Go outside and go to 50.0,81.8|goto 50.0,81.8
.talk 29432
..turnin 12823
..accept 12824
step
'Go outside and fly up into the cave to 42.8,68.9|goto 42.8,68.9
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
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal|q 12907/1|tip Standing off to the side of the path, he has red tattoos on his torso.
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
'Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
..'Tell her to skip the warm up
.kill 1 Agnetta Tyrsdottar|q 12969/1
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
.kill 6 Victorious Challenger|q 12971/1
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
.' Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.' Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
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
.kill Icemane Yetis|n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
step
'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch|goal Icemaw Matriarch Rescued|q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.1,69.4
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42481
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear|q 12997/1
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
.kill Hyldsmeet Drakeriders|n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders|goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
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
.kill 12 Nascent Val'kyr|q 12942/1
.kill Valkyrion Aspirants|n
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
step
goto 24,61.8
.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
..accept 12953
step
goto 26,59.8
.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
.' Start 6 Fires|goal 6 Fires Started|q 12953/1
step
'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
'Hearth to K3|goto 41.0,85.9,0.5|use hearthstone##6948|noway|c
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
.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giants|q 12915/2
.' Get Slag Covered Metal
.' Click the Slag Covered Metal in your bags|use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.kill Seething Revenants|n
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.' Click a Granite Boulder and get one|tip The Granite Boulders look like big grey rocks on the ground around this area.
.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill 1 Fjorn|q 12915/1
step
goto 77.2,62.9
.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
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
.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
.kill 10 Seething Revenants|q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|c
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
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.kill Brittle Revenants|n
.collect 6 Essence of Ice##42246|q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
.get 8 Horn Fragment|q 12975/1
.' Kill mobs in the area.
.collect 10 Relic of Ulduar##42780|q 12975
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
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..accept 12977
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
.kill the Stormforged Ambushers that spawn|n
.get 8 Stormforged Eye|q 12985/1
step
goto 72.1,51.8
.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
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
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oils inside this cave|n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
.kill 1 Jormuttar|q 13011/1
step
'Go outside and go to 33.4,58.0|goto 33.4,58.0
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
.get 5 Small Proto-Drake Egg|q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9]|n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus|goal Veranus Lured|q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
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
goto 65.4,50.6
.talk 29762
..fpath Camp Tunka'lo
step
goto 65.7,51.4
.talk 30381
..accept 13034
step
goto 65.8,50.4
.' Click the First History Scroll|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
.' Read the First History Scroll |q 13034/1
step
goto 66.8,50.1
.' Click the Second History Scroll|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
.' Read the Second History Scroll |q 13034/2
step
goto 67.5,50.6
.' Click the Third History Scroll|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
.' Read the Third History Scroll |q 13034/3
step
goto 65.7,51.4
.talk 30381
..turnin 13034
..accept 13037
step
'The entrance to the cave starts here |goto 62.5,41.5,0.5 |c
step
goto 61.2,39.0
.talk 30395
.' Ask him what he remembers of his brother |q 13037/1
step
goto 61.2,39.0
.talk 30395
..accept 13038
step
goto 61.7,39.8
.' Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
.' Close 4 Frostfloe Rifts |q 13038/1
step
'Leave the cave |goto 62.5,41.5,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13037
..turnin 13038
..accept 13048
..accept 13049
step
'The entrance to the cave starts here |goto 67.0,44.9,0.5 |c
step
goto 67.2,44.3
.from Scion of Storm##30184+
.get 1 Stormhoof's Spear |q 13049/1
.get 1 Stormhoof's Mail |q 13049/2
.' Click Taunka Artifacts |tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
.' Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1
step
'Leave the cave |goto 67.0,44.9,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13048
..turnin 13049
..accept 13058
step
goto 64.9,48.1
.' Use The Lorehammer in your bags |use The Lorehammer##42918
.' Go back in time and become Stormhoof |invehicle |q 13058
step
goto 64.5,47.5
.' Use your Stormhoof abilities to fight and kill The North Wind |tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you.  Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
.' When The North Wind is dazed, go to 64.6,46.9
.' Click the Horn of Elemental Fury |tip It looks like a spiral white horn sitting on the ground.
.' Restore the True Timeline |q 13058/1
step
goto 65.7,51.4
.talk 30381
..turnin 13058
step
goto 56.2,51.3
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel|q 13005/1
.kill 20 Iron Dwarf Assailant|q 13005/2
step
'Fly up into the building to 55.3,43.3|goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
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
goto 36.2,49.4
.talk 29757
..fpath Grom'arsh Crash-Site
step
goto 36.4,49.1
.talk 30247
..accept 13054
..accept 13000
step
goto 37.0,49.5
.talk 30472
..accept 12882
step
goto 37.3,49.7
.talk 29651
..accept 12895
step
home Grom'arsh Crash-Site
step
'Go inside the cave to 48.5,54.3|goto 48.5,54.3
.talk 30469
..turnin 13054
..accept 13055
step
goto 48.3,53.8
.collect 8 Cave Mushroom##42926|q 13055|tip They look like two mushrooms on the ground and are found throughout the cave.
.kill Infesting Jormungars|n
.collect 1 Toxin Gland##42927|q 13055
step
goto 48.5,54.3
.talk 30469
..turnin 13055
..accept 13056
step
'Go deeper into the cave to 48.2,48.1|goto 48.2,48.1
.from Cavedweller Worgs|n
..collect 6 Worg Fur##42510|q 13056
..kill Gimorak|q 13056/1|tip He patrols around the big room.
step
goto 48.5,54.3
.talk 30469
..turnin 13056
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 36.1,64.1
.' Click the Disturbed Snow pile
..collect Burlap-Wrapped Note##40947|q 12895
step
goto 36.4,49.1
.talk 30247
..turnin 13000
step
goto 37.3,49.7
.talk 29651
..turnin 12895
..accept 12909
step
goto 40.8,51.2
.talk 29855
..turnin 12909
..accept 12910
step
.' Click Frostbite to ride him.
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track scent to its source|goal Track scent to its source|q 12910/1
step
goto 48.5,60.8
.kill Tracker Thulin|q 12910/1|tip He's sitting on the ground inside this small cave.
.collect Brann's Communicator##40971|q 12920,12926,12927,13416,12928
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12910
..accept 12913
step
goto 37.3,49.7
.talk 29937
..turnin 12913
..accept 12917
step
goto 28.5,48.5
.' Kill Stormriders around this area, they drop Voices of the Wind and Relics of Ulduar.
..collect 5 Voice of the Wind##41514|q 12917
..collect 10 Relic of Ulduar##42780|q 12882
step
goto 37.0,49.5
.talk 30472
..turnin 12882
step
goto 37.3,49.7
.talk 29937
..turnin 12917
step
goto 37.3,49.7
.talk 29651
..accept 12920
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
.' Speak with Brann |q 12920/1
step
goto 37.3,49.7
.talk 29651
..turnin 12920
..accept 12926
step
goto 37.6,43.5
.kill Library Guardians|n
.collect 6 Inventor's Disk Fragment##41130|n
.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
.get The Inventor's Disk|q 12926/1
step
..'Click Brann's Communicator|use Brann's Communicator##40971
..talk 29579
..turnin 12926
..accept 12927
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12927/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12927
..accept 13416
step
goto 37.4,46.8
.' Click the Inventor's Library Console|tip Inside the building, all the way at the end of the hall.
..turnin 13416
..accept 12928
step
'Click the Charged Disk in your bags|use Charged Disk##44704
.kill Archivist Mechaton that spawns|n
.get Norgannon's Shell|q 12928/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12928
..accept 13273
..accept 12929
step
goto 59.2,51.5
.' Click Prospector Soren's Maps |tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
.get Prospector Soren's Maps |q 13273/2
step
goto 59.8,52.6
.' Click Prospector Khrona's Notes |tip It looks like an open book laying on a wooden box, next to a tent.
.get Prospector Khrona's Notes |q 13273/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 13273
..accept 13274
step
'The entrance to the big round metal door starts here |goto 56.5,58.5,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 56.4,52.1
.from Athan##31798
.get Norgannon's Core |q 13274/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 13274
..accept 13285
step
'Go outside |goto 56.5,58.5,0.5 |c
step
goto 45.5,49.5
.talk 31810
..' Tell him you're ready to make the keystone
.' Help Brann Create the Keystone |q 13285/1
step
goto 37.3,49.7
.talk 29651
..turnin 13285
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12929
..accept 12930
step
goto 28.9,36.7
.from Stormforged Raider##29377+
.get 5 Frostweave Cloth |q 12930/2
step
goto 28.3,29.4
.' Click the Enchanted Earth|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
.get 7 Enchanted Earth|q 12930/1
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
home Bouldercrag's Refuge
step
goto 28.1,36.7
.from Stormforged Raiders##29377+, Stormforged Reavers##29382+
.kill 10 Stormforged Attacker |q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders |q 12937/1
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7|goto 27.5,49.7
.kill 3 Stormforged Taskmaster|q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
.' Click Ore Carts|tip They look like carts with ore in them.
.get 5 Dark Ore Sample|q 12964/1
step
'Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
step
goto 24,42.6
.' Right-click Loken's Fury|tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.' Right-click Loken's Power|tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.' Right-click Loken's Favor|tip It looks like a glowing ball on a pedestal inside this building.
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
'Go inside the building to 31.4,38.1|goto 31.4,38.1
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
.kill Valduran the Stormborn |q 12984/1
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
.kill 10 Stormforged Artificer |q 12991/1
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
.' Click the Colossus Attack Specs |tip It looks like a white scroll laying on a small square metal table.
.get Click the Colossus Attack Specs |q 12993/1
step
goto 29.9,45.8
.' Click the Colossus Defense Specs |tip It looks like a white scroll laying on an anvil under a white canopy.
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
.' Click the Heart of the Storm |tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot.  It looks like a big blue orb, sitting in a three-pronged metal stand.
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
.' Click the Jormungar Control Orb |tip It looks like a white glowing ball floating with a golden ring around it.
.' Start controlling a Jormungar |invehicle |c |q 13007
step
goto 27.2,42.0
.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
.kill Iron Colossus |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Kor'kron Annihilator",[[
description This guide will walk you through obtaining
description the flying mounts that require reputation to
description purchase.
condition end hasmount(93644)
model 37138
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs to be _level 25_
.' _Guild Level 25_ |achieve 5492
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Reins of the Kor'kron Annihilator##67107
'|modeldisplay 37138
step
.learnmount Kor'kron Annihilator##93644 |use Reins of the Kor'kron Annihilator##67107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Fossilized Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(84751)
model 34410
step
'This mount is a rare _Archaeology "Fossil"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Professions Mounts\\Archaeology\\Ultramarine Qiraji Battle Tank",[[
description This guide will walk you through obtaining
description the ground mounts that require certain professions to
description obtain.
condition end hasmount(92155)
model 15678
step
'This mount is a _rare Archaeology "Tol'vir"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
.skill Archaeology,450
step
'Open your _world map_, find dig sites in _Kalimdor_ and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Scepter of Azj'Aqir"_. _Solve_ this Archaeology puzzle |tip This is a very rare Archaeology solve. You might be doing archeology for a while.
.collect 1 Scepter of Azj'Aqir##64883
step
.learnmount Ultramarine Qiraji Battle Tank##92155 |use Scepter of Azj'Aqir##64883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Wolf",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22724)
model 21241
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Orgrimmar,41.8,73.6
.talk 12796
.buy 1 Horn of the Black War Wolf##29469
'|modeldisplay 21241
step
.learnmount Black War Wolf##22724 |use Horn of the Black War Wolf##29469
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Kodo",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22718)
model 19027
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Orgrimmar,41.8,73.6
.talk 12796
.buy 1 Black War Kodo##29466
'|modeldisplay 19027
step
.learnmount Black War Kodo##22718 |use Black War Kodo##29466
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Raptor",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22721)
model 14388
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Orgrimmar,41.8,73.6
.talk 12796
.buy 1 Whistle of the Black War Raptor##29472
'|modeldisplay 14388
step
.learnmount Black War Raptor##22721 |use Whistle of the Black War Raptor##29472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Red Skeletal Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(22722)
model 10719
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Orgrimmar,41.8,73.6
.talk 12796
.buy 1 Red Skeletal Warhorse##29470
'|modeldisplay 10719
step
.learnmount Red Skeletal Warhorse##22722 |use Red Skeletal Warhorse##29470
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Swift Warstrider",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(35028)
model 20675
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
goto Orgrimmar,41.8,73.6
.talk 12796
.buy 1 Swift Warstrider##34129
'|modeldisplay 20675
step
.learnmount Swift Warstrider##35028 |use Swift Warstrider##34129
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Frostwolf Howler",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(23509)
model 14776
step
'Push the _[H]_ key on your keyboard to open your _Player vs. Player_ interface
.' Click on _Random Battleground_ and then click on the _Join Battle_ button on the _lower left-hand corner_ of the _Player vs. Player_ interface |tip You can choose any battleground, if you want, but you will not receive extra rewards for winning or losing
..' Complete these _Random Battlegrounds_ to receive _Honor Points_
.earn 2000 Honor Point##392
step
#include TirisfalZep
step
|fly Strahnbrad
step
goto Hillsbrad Foothills,58.0,33.6
.talk 13219
.buy 1 Horn of the Frostwolf Howler##19029'
'|modeldisplay 14776
step
.learnmount Frostwolf Howler##23509 |use Frostwolf Howler##19029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Mammoth",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(59788)
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
#include BoreanZep
step
|fly Warsong Camp
step
goto 51.6,17.6
.talk 32296
.buy 1 Reins of the Black War Mammoth##44077
'|modeldisplay 25450
step
.learnmount Black War Mammoth##59788 |use Reins of the Black War Mammoth##44077
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Vicious War Wolf",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(100333)
model 38607
step
'This mount is a reward for completing the _"Veteran of the Horde"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect 1 Vicious War Wolf##70910
|modeldisplay 38607
step
.learnmount Vicious War Wolf##100333 |use Vicious War Wolf##70910
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Bear",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
condition end hasmount(60119)
model 27819
step
'This mount is a reward for completing the _"For The Horde!"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect 1 Black War Bear##44224
|modeldisplay 27819
step
.learnmount Black War Bear##60119 |use Black War Bear##44224
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark Talbuk Mounts",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Qiraji Mounts",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(25953) and hasmount(26056) and hasmount(26054) and hasmount(26055)
model 15681
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
.' You can easily aquire these mounts with _2-3 other level 85_ people in your group
|confirm
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
|tip You cannot use these outside of this raid instance, but these count towards your mount count
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Fiery Warhorse",[[
description This guide will walk you through obtaining
description the ground mounts that require raid farming
description to obtain.
condition end hasmount(36702)
model 19640
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
.' You can easily aquire this mount with _2-3 other level 85_ people in your group
|confirm
step
goto Orgrimmar,45.9,66.9 |n
.' Follow the path down |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto Orgrimmar,45.0,66.4
.' Click the _Portal_ to _Blasted Lands_ |tip It's a blue swirling portal.
.' _Teleport_ to the _Blasted Lands_ |goto Blasted Lands |noway |c
step
'_Fly_ over to _Deadwind Pass_ |goto Deadwind Pass |noway |c
step
goto Deadwind Pass,47.0,74.8 |n
.' Enter _Karazhan_ here |goto Karazhan |noway |c
step
'_Traverse_ through _Karazhan_ |tip Make sure you kill every mob here, as they will attack you if they're are not dead and you engage Attumen
goto Karazhan,45.7,83.3
.from Attumen the Huntsman##16152
.collect 1 Fiery Warhorse's Reins##30480 |tip This has a .9% drop rate, be sure to come back here every week to have a better chance of obtaining it!
'|modeldisplay 19640
step
.learnmount Fiery Warhorse##36702 |use Fiery Warhorse's Reins##30480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Raid Mounts\\Grand Black War Mammoth",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Spectral Tigers",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(42777)
model 21974
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 21974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Big Battle Bear",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(51412)
model 25335
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 25335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Wooly White Rhino",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74918)
model 31721
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Savage Raptor",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(97581)
model 38048
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Swift Shorestrider",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(101573)
model 17011
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Magic Rooster",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(65917)
model 29344
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 29344
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\White Riding Camel",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102488)
model 35899
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 35899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Riding Turtle",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(30174)
model 17158
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 17158
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket X-TREME",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46199)
model 23647
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23647
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\X-51 Nether-Rocket",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(46197)
model 23656
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 23656
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Mottled Drake",[[
description These mounts can only be obtained be
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(93623)
model 37231
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37231
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Amani Dragonhawk",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(96503)
model 37800
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Blazing Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(74856)
model 31803
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 31803
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Trading Card Game\\Corrupted Hippogryph",[[
description These mounts can only be obtained by
description redeeming codes from the World of Warcraft
description trading card game
condition end hasmount(102514)
model 38972
step
'These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38972
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Grey Riding Camel",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Proto Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59996)
model 28041
step
#include HowlingZep
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through dungeon farming.
condition end hasmount(59569)
model 27812
step
'Obtaining this mount is much easier with a group
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Drake of the North Wind",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Vitreous Stone Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Wind Riders",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(32243) and hasmount(32245) and hasmount(32244) and hasmount(32296) and hasmount(32246) and hasmount(32297) and hasmount(32295)
model 17699,17700,17701,17719,17720,17721,17722,24044
step
goto Orgrimmar,48.0,58.6
.talk 44918
.buy 1 Tawny Wind Rider##25474
.buy 1 Blue Wind Rider##25475
.buy 1 Green Wind Rider##25476
.buy 1 Swift Red Wind Rider##25477
.buy 1 Swift Green Wind Rider##25531
.buy 1 Swift Purple Wind Rider##25533
.buy 1 Swift Yellow Wind Rider##25532
'|modeldisplay 17699
'|modeldisplay 17700
'|modeldisplay 17701
'|modeldisplay 17719
'|modeldisplay 17720
'|modeldisplay 17721
'|modeldisplay 17722
step
.learnmount Tawny Wind Rider##32243 |use Tawny Wind Rider##25474
.learnmount Blue Wind Rider##32244 |use Blue Wind Rider##25475
.learnmount Green Wind Rider##32245 |use Green Wind Rider##25476
.learnmount Swift Red Wind Rider##32246 |use Swift Red Wind Rider##25477
.learnmount Swift Green Wind Rider##32295 |use Swift Green Wind Rider##25531
.learnmount Swift Purple Wind Rider##32297 |use Swift Purple Wind Rider##25533
.learnmount Swift Yellow Wind Rider##32296 |use Swift Yellow Wind Rider##25532
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Armored Blue Wind Rider",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(61230)
model 24045
step
'This _mount_ costs _2000_ gold. |tip It could be cheaper based on your reputation with the Kirin Tor.
|confirm
step
#include BoreanZep
step
|fly Dalaran
step
goto Dalaran,58.1,42.1
.talk 32216
.buy 1 Armored Blue Wind Rider##44690
'|modeldisplay 24045
step
.learnmount Armored Blue Wind Rider##61230 |use Armored Blue Wind Rider##44690
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Gold Only Mounts\\Vial of the Sands",[[
description This guide will walk you through obtaining
description the flying mounts that can be obtained
description through gold farming.
condition end hasmount(93326)
model 35750
step
'You will _need_ at least _29,000_ gold to obtain this _mount_
|confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")==525
|next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label AlchemistVialoftheSandsLearn
'Since you're an _Alchemist_ you can make this item yourself:
.' Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
.' Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
.collect Canopic Jar##64657 |n
.' Click the Canopic Jars |use Canopic Jar##64657
.collect 1 Recipe: Vial of the Sands##67538
.' Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")==525
step
'Use your _Recipe: Vial of the Sands_ |use Recipe: Vial of the Sands##67538
.learn Vial of the Sands##93328
next "FarmVialoftheSands" |only if skill("Alchemy")==525
only if skill("Alchemy")==525
step
label AHVialoftheSands
goto Orgrimmar,54.1,73.3
.talk 44866
.buy 1 Vial of the Sands##65891 |next "learn"
.' Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label FarmVialoftheSands
goto Orgrimmar,54.1,73.3
.talk 44866
.buy 12 Truegold##58480
.buy 8 Flask of the Winds##58087
.buy 8 Flask of Titanic Strength##58088
.buy 8 Deepstone Oil##56850
.' If you don't have enough _gold_ or these items are not on the _Auction House_ you will have to _farm_ for these items.
step
goto Orgrimmar,49.2,38.4 |n
.' Click the Portal to Uldum |tip It looks like a big yellow swirling portal in front of some big stone slabs.
.' Teleport to Uldum |goto Uldum |noway |c
step
goto Uldum,26.6,7.2
.talk 49406
.buy 8 Sands of Time##65893
.buy 1 Pyrium-Laced Crystalline Vial##65892
step
#include hearth
step
.create Vial of the Sands##93328,Alchemy,1 total |only if skill("Alchemy")>=525
'Find an _Alchemist_ to make your _Vial of the Sands_ |tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
.collect 1 Vial of the Sands##65891
'|modeldisplay 35750
step
label "learn"
.learnmount Sandstone Drake##93326 |use Vial of the Sands##65891
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Pre-Quests(Do-First)",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
step
#include "darkportal"
step
|fly Shattrath
step
goto Shattrath City,64.3,42.3
.talk 23449
..accept 11096
step
|fly Stonebreaker Hold
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
|fly Stonebreaker Hold
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
|fly Stonebreaker Hold
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Dailies",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies",[[
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
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
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
.learnmount Violet Netherwing Drake##41518 |use Reins of the Violet Netherwing Drake##32862
.learnmount Purple Netherwing Drake##41516 |use Reins of the Purple Netherwing Drake##32860
.learnmount Veridian Netherwing Drake##41517 |use Reins of the Veridian Netherwing Drake##32861
.learnmount Oynx Netherwing Drake##41513 |use Reins of the Onyx Netherwing Drake##32857
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Netherwing Egg Hunting",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Green Proto Drake",[[
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
|modeldisplay 28053
step
.learnmount Green Proto-Drake##61294 |use Reins of the Green Proto-Drake##44707
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Volcanic Stone Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(88331)
model 35551
step
'This mount is a reward for completing the _"Glory of the Cataclysm Hero"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Volcanic Stone Drake##62900
|modeldisplay 35551
step
.learnmount Volcanic Stone Drake##88331 |use Reins of the Volcanic Stone Drake##62900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Twilight Harbinger",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Proto-Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(59961)
model 28044
step
'This mount is a reward for completing the _"Glory of the Hero"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Red Proto-Drake##44160
|modeldisplay 28044
step
.learnmount Red Proto-Drake##59961|use Reins of the Red Proto-Drake##44160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto-Drake",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Rusted Proto-Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Icebound Frostbrood Vanquisher",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Drake of the East Wind",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Bloodbathed Frostbrood Vanquisher",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(72808)
model 31156
step
'This mount is a reward for completing the _"Glory of the Icecrown Raider (10 player)"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Bloodbathed Frostbrood Vanquisher##51954
|modeldisplay 31156
step
.learnmount Bloodbathed Frostbrood Vanquisher##72808 |use Reins of the Bloodbathed Frostbrood Vanquisher##51954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Flameward Hippogryph",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Corrupted Fire Hawk",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Cenarion War Hippogryph",[[
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
.' Click here if you are already exalted with Cenarion Expedition. |next "CE Ex" |confirm always
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
goto Borean Tundra,57,44.3
.talk 25809
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
goto Zangarmarsh,80.1,73.3
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
goto Borean Tundra,59.9,43.8
.from Loot Crazed Diver##25836+, Loot Crazed Poached##25806+, Loot Crazed Hunter##25979+, Northsea Thug##25843+, Northsea Mercenary##25839+, Loot Crazed Poacher##25806+
.get 15 Nesingwary Lackey Ear##35188 |n
.' You can collect more, but you will need at least 15 to turn in.
step
goto Borean Tundra,57,0,44.2
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
goto Zangarmarsh,79.2,63.8
.talk 17904
.buy 1 Cenarion War Hippogryph##33999
'|modeldisplay 31542
step
.learnmount Cenarion War Hippogryph##43927 |use Cenarion War Hippogryph##33999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Drake of the West Wind",[[
description This guide will walk you through obtaining
description the ground mounts that require reputation to
description purchase.
condition end hasmount(88741)
model 35754
step
' This will require that you be exalted with the Baradin Wardens.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' Drake of the West Wind costs 200 Tol Barad Commendations.
.earn 200 Tol Barad Commendation##391
step
label	"menu"
#include dailies_rep_mount,rep="Hellscream's Reach"
.earn 200 Tol Barad Commendation##391 |tip This is for the Drake
|next "exalted" |only if rep("Hellscream's Reach")==Exalted
.' Click to use the Dailies Guide |confirm |tip
.' Click here to purchase your mount |confirm |only if _G.select(2,_G.GetCurrencyInfo(391))>165
.' Click here if you have 200 Tol Barad Commendations |next "TB Drake" |confirm always
step
' Click here to use the Tol Barad, Hellscream Reach Dailies |confirm always |next "hellscream" |or
.' or
.' Click here to use the Tol Barad, Baradin Hold Dailies |confirm always |next "baradin" |or
step
label	"hellscream"
goto Orgrimmar,47.4,39.3
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Skip to the next step in the guide
step
goto Tol Barad Peninsula,55.2,81.3
.talk 48360
..accept 28684 |daily
..accept 28680 |daily
..accept 28678 |daily
..accept 28679 |daily
..accept 28681 |daily
..accept 28683 |daily
step
goto 53.5,80.6
.talk 48358
..accept 28682 |daily
..accept 28685 |daily
..accept 28686 |daily
..accept 28687 |daily
..accept 28721 |daily
step
goto 54.9,79.3
.talk 48363
..accept 28693 |daily
..accept 28691 |daily
..accept 28692 |daily
..accept 28690 |daily
..accept 28689 |daily
step
goto 55.8,78.5
.talk 48361
..accept 28696 |daily
..accept 28698 |daily
..accept 28697 |daily
..accept 28700 |daily
..accept 28695 |daily
..accept 28694 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 28697/1
.' Click Stacks of Cannonballs |tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
.get 4 Stack of Cannonballs |q 28698/1
step
goto 69.3,23.1
.' Click Strings of Fish |tip They look like small fish hanging from simple wooden structures on the docks around this area.
.get 22 Rustberg Seabass |q 28687/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28686/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker |q 28683/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 28684/1
step
goto 47.9,8.1
.kill Captain P. Harris |q 28678/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank |q 28681/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.' Click Barrels of Southsea Rum |tip They look like barrels underwater around this area.
.get 6 Barrel of Southsea Rum |q 28680/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor |q 28679/1
step
goto 36.1,27.3
.kill Keep Lord Farson |q 28682/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28721/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.' Click Racks of Rifles |tip They look like wooden stands with guns on them around this area.
.get 12 Rusty Rifle |q 28685/1
step
goto 27.2,47.7
.kill Foreman Wellson |q 28695/1
step
goto 22.2,36.3
.' Click a Cannon |tip They look like black cannons on this small dock.
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28696/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 28694/1
step
goto 40.2,57.9
.kill 5 Restless Soldier |q 28693/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.' Click Siege Scraps |tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
.get 7 Siege Engine Scrap |q 28692/1
step
goto 38.4,77.6
.kill First Lieutenant Connor |q 28691/1 |tip He's a big skeleton that walks around this area, so you may need to search for him.
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 28690/1
.' Click Forgotten Soldier's Tombstones |tip They look like taller and slimmer gravestones around this area.
.' Release 6 Tortured Souls |q 28689/1
step
goto 55.2,81.3
.talk 48360
..turnin 28684
..turnin 28680
..turnin 28678
..turnin 28679
..turnin 28681
..turnin 28683
step
goto 53.5,80.6
.talk 48358
..turnin 28682
..turnin 28685
..turnin 28686
..turnin 28687
..turnin 28721
step
goto 54.9,79.3
.talk 48363
..turnin 28693
..turnin 28691
..turnin 28692
..turnin 28690
..turnin 28689
step
goto 55.8,78.5
.talk 48361
..turnin 28696
..turnin 28698
..turnin 28697
..turnin 28700
..turnin 28695
..turnin 28694
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label	"baradin"
'These daily quests will only be available if the Horde faction currently controls Tol Barad.
.' Skip to the next step in the guide
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Skip to the next step in the guide
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657 |daily
..accept 28658 |daily
..accept 28659 |daily
step
goto 51.5,49.7
.talk 48070
..accept 28663 |daily
..accept 28664 |daily
..accept 28665 |daily
step
goto 51.5,49.7
.talk 48071
..accept 28660 |daily
..accept 28662 |daily
..accept 28661 |daily
step
goto 51.5,49.7
.talk 48062
..accept 28670 |daily
..accept 28668 |daily
..accept 28669 |daily
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28664/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28663/1
.' Click Cursed Shackles |tip They look like gray metal ball and chains laying on the ground all around this area.
.get 8 Cursed Shackles |q 28665/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28658/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28669/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28668/1
.' Click Crates of Cellblock Rations |tip They look like slim square wooden boxes on the ground around this area.
.get 12 Cellblock Ration |q 28670/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28661/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28660/1
.' Click Dusty Prison Journals |tip They are books laying on the ground around this area.
.get 4 Dusty Prison Journal |q 28662/1
step
goto Tol Barad,35.8,67.8
.from Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
.kill 12 Alliance Infantry |q 28659/1
step
goto 52.8,36.7
.kill Problim |q 28657/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto 50.9,49.7
.talk 48069
..turnin 28657
..turnin 28658
..turnin 28659
step
goto 51.5,49.7
.talk 48070
..turnin 28663
..turnin 28664
..turnin 28665
step
goto 51.5,49.7
.talk 48071
..turnin 28660
..turnin 28662
..turnin 28661
step
goto 51.5,49.7
.talk 48062
..turnin 28670
..turnin 28668
..turnin 28669
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label "exalted"
label "TB Drake"
goto Orgrimmar,47.6,39.1  |n
.' Click on the portal to _Tol Barad_ |goto Tol Barad |noway |c
step
goto Tol Barad Peninsula,54.6,81.0
.talk 48531
.buy 1 Reins of the Drake of the West Wind##65356
'|modeldisplay 35754
step
.learnmount Drake of the West Wind##88741 |use Reins of the Drake of the West Wind##65356
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Dark Phoenix",[[
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
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Reins of the Dark Phoenix##63125
'|modeldisplay 37145
step
.learnmount Dark Phoenix##88990 |use Reins of the Dark Phoenix##63125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61451)
model 28060
step
'Use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if skill("Tailoring")>1 and skill("Tailoring")<300
'Use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if skill("Tailoring")<1
#include trainTailoring
.learn Flying Carpet##60969
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 6 Bolt of Netherweave##21840
.collect 4 Golden Draenite##23112
.collect Arcane Dust##22445
step
goto 60.6,58.6
.talk 3364
.buy 5 Heavy Silken Thread##8343
step
.create Flying Carpet##60969,Tailoring,1 total
.collect 1 Flying Carpet##44554
'|modeldisplay 28060
step
.learnmount Flying Carpet##61451 |use Flying Carpet##44554
.' _Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Magnificent Flying Carpet",[[
description This guide will walk you through obtaining
description the flying mounts that require certain professions to
description obtain.
condition end hasmount(61309)
model 28064
step
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")>1 and skill("Tailoring")<425
'Use the _Tailoring profession_ section of this guide to _level_ to _425 Tailoring_ skill. |only if skill("Tailoring")<1
#include trainTailoring
.learn Magnificent Flying Carpet##60971
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 12 Bolt of Imbued Frostweave##41511
.collect 4 Monarch Topaz##36930
.collect 4 Iceweb Spider Silk##42253
step
goto 60.6,58.6
.talk 3364
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Tailoring\\Frosty Flying Carpet",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Flying Machine",[[
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
goto 53.3,48.9
.talk 3346
.buy 8 Star Wood##11291
step
.create Flying Machine##44155,Engineering,1 total
.collect 1 Flying Machine##34060
'|modeldisplay 22719
step
.learnmount Flying Machine##44153 |use Flying Machine##34060
.' _Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Professions Mounts\\Engineering\\Turbo-Charged Flying Machine",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Albino Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Dragonhawk",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(61997)
model 23515
step
'Obtain _100 mounts_ you can use our guide to achieve this |achieve 2537
.' Check your _mailbox_ for your _prize_!
.collect 1 Red Dragonhawk##44842
'|modeldisplay 23515
step
.learnmount Red Dragonhawk##61997 |use Red Dragonhawk##44842
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Instructions",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(60024)
model 28043
step
'This _mount requires_ you to have the achievement _"What A Long, Strange Trip It's Been"_ completed
.' Use the _Event section_ of this guide to _complete_ each _Holiday achievement_ as they come throughout the year
.' What a Long, Strange, Trip It's Been |achieve 2145
step
.' Check your _mailbox_ for your _prize_!
.collect 1 Violet Proto-Drake##44177
'|modeldisplay 28043
step
.learnmount Violet Proto-Drake##60024 |use Violet Proto-Drake##44177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
step
goto Orgrimmar,49.9,81.2
.talk 15891
..accept 8873
step
goto 52.4,58.5
.talk 15895
..turnin 8873
..accept 8867
step
goto 52.6,59.2
.talk 47897
..buy 8 Small Blue Rocket |q 8867
..buy 2 Blue Rocket Cluster |q 8867
step
goto 41.6,32.8
.' Use Small Blue Rockets|use Small Blue Rocket##21558
.' Use Blue Rocket Clusters|use Blue Rocket Cluster##21571
.' Fire 8 Lunar Fireworks|q 8867/1
.' Fire 2 Lunar Fireworks Clusters|q 8867/2
step
goto 52.4,58.5
.talk 15895
..turnin 8867
..accept 8883
step
goto 52.4,57.4
.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
.' Go to Moonglade |goto Moonglade |c |q 8883
step
goto Moonglade,53.6,35.3
.talk 15864
..turnin 8883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Lunar Festival Optimized Elders Path",[[
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
..accept 8648 |instant
step
goto 63.3,48.6
.talk 4551
.' Fly to Andorhal, Western Plaguelands |goto Western Plaguelands,46.6,64.7,0.5 |noway |c
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
..accept 8866 |instant |tip If you die trying to leave Ironforge, just resurrect at the spirit healer you get sent to.
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
..accept 8646 |instant |tip If you die trying to leave Stormwind City, just resurrect at the spirit healer you get sent to.
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
goto Thunder Bluff,73.0,23.3
.talk 15580
..accept 8678 |instant
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
..accept 8677 |instant
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
goto Moonglade,37.5,58.2
.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
.' Go to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,44.8,62.4 |n
.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,42.9,49.6
.talk 30371
..accept 13029 |instant
step
goto 33.8,34.4
.talk 30360
..accept 13016 |instant
step
goto 59.1,65.6
.talk 30348
..accept 13012 |instant
step
goto 57.4,43.7
.talk 30364
..accept 13033 |instant
step
'Go north to Sholazar Basin |goto Sholazar Basin |noway |c
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
step
goto Orgrimmar,50.8,75.2
.talk 37172
..accept 24536
step
goto 51.9,76.3
.' Use Snagglebolt's Air Analyzer on pink glowing Orgrimmar Grunts around this area |use Snagglebolt's Air Analyzer##50131
.' Analyze 6 Perfumed Guards |q 24536/1
step
goto 50.8,75.2
.talk 37172
..turnin 24536
..accept 24541
step
'Go outside Orgrimmar |goto Durotar |noway |c
step
goto Durotar,47.7,11.8
.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24541 |tip To get the package, run outside the gates of Orgrimmar and take an immediate left.  Keep close to the wall, you will eventually get to a small camp where two Undead NPCs are standing next to a pile of boxes.  Get close to them in order to get the package.
step
'Run back inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.8,75.2
.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him. |condition ZGV.questsbyid[24541] and ZGV.questsbyid[24541].complete |q 24541
.' If you lose your disguise, ask the Detective for another one and repeat the run.
step
goto Orgrimmar,50.8,75.2
.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
.talk 37172
..turnin 24541
..accept 24850
step
goto 57.6,60.8
.talk 38328
..turnin 24850
..accept 24851
step
goto 53.8,73.5
.' Search the Orgrimmar Auction House |q 24851/2
step
goto 48.7,83.6
.' Search the Orgrimmar Bank |q 24851/1
step
goto 40.1,60.5
.' Search the Orgrimmar Barber Shop |q 24851/3
step
goto 57.6,60.8
.talk 38328
..turnin 24851
..accept 24576
step
'Go outside Orgrimmar |goto Durotar |noway |c
step
goto Durotar,51.6,54.75
.talk 37715
..' Tell him you have a rocket with his mark on it.
..get Snivel's Ledger |q 24576/1
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.8,75.2
.talk 37172
..turnin 24576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event daily quests.
daily
step
goto Orgrimmar,50.8,75.3
.talk 37172
..' You have to be at least level 5 to accept a quest from him
..accept 24638 |daily |only if level >= 5 and level < 14
..accept 24645 |daily |only if level >= 14 and level < 23
..accept 24647 |daily |only if level >= 23 and level < 32
..accept 24648 |daily |only if level >= 32 and level < 41
..accept 24649 |daily |only if level >= 41 and level < 51
..accept 24650 |daily |only if level >= 51 and level < 61
..accept 24651 |daily |only if level >= 61 and level < 71
..accept 24652 |daily |only if level >= 71 and level <81
..accept 28935 |daily |only if level >= 81
step
goto 53.1,77.2
.talk 37675
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 24635 |daily |or
..accept 24629 |daily |or
..accept 24636 |daily |or
step
goto 53.0,76.8
.talk 38042
..accept 24612 |daily
step
'Run around Orgrimmar and:
.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
.' Give 10 Cologne Samples |q 24635/1
step
'Run around Orgrimmar and:
.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
.' Give 10 Perfume Samples |q 24629/1
step
'Run around Orgrimmar and:
.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
.' Give 10 Chocolate Samples |q 24636/1
step
'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
only if level >= 5 and level < 14
step
goto Durotar,40.2,15.4
.kill 5 Crown Lackey |q 24638/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24638/1
only if level >= 5 and level < 14
step
goto Orgrimmar,43.1,64.9 |n
.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,44.0,52.6
.talk 38042
..accept 24614 |daily
step
goto 43.6,52.9
.talk 37675
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 24635
..turnin 24629
..turnin 24636
step
goto Uldum,67.8,19.8
.kill 5 Crown Technicians |q 28935/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 28935/1
only if level >= 81
step
goto 47.0,49.6
.talk 2995
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,50.9,55.7 |n
.' Ride the zeppelin to Undercity |goto Tirisfal Glades |noway |c
step
Go inside Undercity |goto Undercity |noway |c
step
goto Undercity,66.5,38.6
.talk 38042 |tip He is in the Ruins of Lordaeron.
..accept 24613 |daily
step
goto 63.3,48.5
.talk 4551
..' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
only if level >= 14 and level < 23
step
goto Silverpine Forest,54.7,61.3
.kill 5 Crown Thug |q 24645/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24645/1
only if level >= 14 and level < 23
step
goto 50.9,63.6
.talk 46552
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 14 and level < 23
step
goto Undercity,63.3,48.5
.talk 4551
..' Fly to Southpoint Gate, Hillsbrad |goto Hillsbrad Foothills,29.1,64.4,0.5 |noway |c
only if level >= 23 and level < 32
step
goto Hillsbrad Foothills,34.5,58.4
.kill 5 Crown Duster |q 24647/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24647/1
only if level >= 23 and level < 32
step
goto 29.1,64.4
.talk 47655
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 23 and level < 32
step
goto Undercity,63.3,48.5
.talk 4551
..' Fly to Hiri'watha Research Station, The Hinterlands |goto The Hinterlands,32.4,58.1,0.5 |noway |c
only if level >= 41 and level < 51
step
goto The Hinterlands,23.6,53.7
.kill 5 Crown Agent |q 24649/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24649/1
only if level >= 41 and level < 51
step
goto 32.5,58.1
.talk 43573
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 41 and level < 51
step
goto Undercity,54.9,11.3 |n
.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
step
goto Silvermoon City,64.4,66.5
.talk 38042
..accept 24615 |daily
step
'This step depends on your character's level and what you want to do.
.' If you don't have a lot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
..collect 40 Lovely Charm##49655 |n
.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
.collect 4 Lovely Charm Bracelet##49916
step
'Go to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,53.8,20.2
.talk 16802
..turnin 24615
step
goto 49.4,14.8 |n
.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in the back room of this building, up on a platform.
step
goto Undercity,58.1,91.8
.talk 10181
..turnin 24613
step
'Go outside of Undercity to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,43.1,64.9 |n
.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 3057
..turnin 24614
step
goto 15.4,25.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,44.6,62.4 |n
.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
only if level >= 71
step
goto Borean Tundra,40.4,51.4
.talk 25288
..' Fly to Dalaran |goto Dalaran |noway |c
only if level >= 71
step
'Go outside of Dalaran to Crystalsong Forest |goto Crystalsong Forest |noway |c
only if level >= 71
step
goto Crystalsong Forest,46.3,50.8
.kill 5 Crown Sprayer |q 24652/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24652/1
only if level >= 71
step
'Go to Dalaran |goto Dalaran |noway |c
only if level >= 71
step
goto Dalaran,72.2,45.8
.talk 28674
.' Fly to Warsong Hold, Borean Tundra |goto Borean Tundra,40.4,51.5,0.5 |noway |c
only if level >= 71
step
goto Borean Tundra,41.4,53.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
only if level >= 71
step
goto Orgrimmar,49.7,59.2
.talk 3310
..' Fly to Brackenwall Village |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Dustwallow Marsh,60.7,38.3
.kill 5 Crown Hoodlum |q 24648/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24648/1
only if level >= 32 and level < 41
step
goto 35.6,31.9
.talk 11899
..' Fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Orgrimmar,49.7,59.2
.talk 3310
..' Fly to Everlook |goto Winterspring,58.9,48.3,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Winterspring,63.6,49.4
.kill 5 Crown Sprinkler |q 24650/2 |tip They are on top of this big hill.
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24650/1
only if level >= 51 and level < 61
step
goto 58.8,48.3
.talk 11139
..' Fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Orgrimmar,47.1,61.9 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,55.0,54.1 |n
.' Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
only if level >= 61 and level < 71
step
goto Hellfire Peninsula,87.3,48.1
.talk 18930
..' Fly to Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
only if level >= 61 and level < 71
step
goto Terokkar Forest,41.4,22.4
.kill 5 Crown Underling |q 24651/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24651/1
only if level >= 61 and level < 71
step
'Go inside Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
goto Shattrath City,64.1,41.1
.talk 18940
.' Fly to Hellfire Peninsula, The Dark Portal, Horde |goto Hellfire Peninsula,87.4,48.2,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,50.9,72.9
.talk 43114
.' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,40.5,73.3,0.5 |noway |c
only if level >= 61 and level < 71
step
goto The Cape of Stranglethorn,39.3,67.2 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
only if level >= 61 and level < 71
step
goto Northern Barrens,69.1,70.7
.talk 16227
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 61 and level < 71
step
goto Orgrimmar,48.1,70.5
.talk 39605
..turnin 24612
step
goto 50.8,75.3
.talk 37172
..' You have to be at least level 5 to accept a quest from him
..turnin 24638 |only if level >= 5 and level < 14
..turnin 24645 |only if level >= 14 and level < 23
..turnin 24647 |only if level >= 23 and level < 32
..turnin 24648 |only if level >= 32 and level < 41
..turnin 24649 |only if level >= 41 and level < 51
..turnin 24650 |only if level >= 51 and level < 61
..turnin 24651 |only if level >= 61 and level < 71
..turnin 24652 |only if level >= 71
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
step
'You will need Love Tokens in order to purchase items from vendors in this guide section. |tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section.
.' Skip to the next step in the guide
step
goto Orgrimmar,53.1,77.0
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
goto 53.1,77.0
.talk 37674
.buy 10 Silver Shafted Arrow##22200 |n
.' Use your Silver Shafted Arrows on 10 players inside Orgrimmar |use Silver Shafted Arrow##22200
.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
step
goto 53.1,77.0
.talk 37674
.buy 1 Box of Chocolates##49909 |n
.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
.' Eat each type of chocolate:
.' Sweet Surprise |use Sweet Surprise##22239 |achieve 1702/3
.' Very Berry Cream |use Very Berry Cream##22238 |achieve 1702/4
.' Buttermilk Delight |use Buttermilk Delight##22236 |achieve 1702/1 |tip Save the remaining Buttermilk Delights for a later achievement.
.' Dark Desire |use Dark Desire##22237 |achieve 1702/2
step
goto 53.1,77.0
.talk 37674
.buy 10 Love Rocket##34258 |n
.' Spam use your Love Rockets |use Love Rocket##34258
.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
step
goto 53.1,77.0
.talk 37674
.buy 15 Handful of Rose Petals##22218 |achieve 1699
.buy 1 Romantic Picnic Basket##34480 |achieve 1291
.buy 1 "VICTORY" Perfume##49856 |achieve 1280
.buy 5 Love Fool##22261 |achieve 1704
step
goto 54.8,78.0
.talk 5611
.buy 6 Flagon of Mead##2594 |achieve 1280
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
'Go to Undercity |goto Undercity |noway |c
step
goto Undercity,67.6,44.1
.' Do the following exactly in order from top to bottom in the step:
.' Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
.' Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
.' Use your Handful of Rose Petals on Jeremiah Payson |use Handful of Rose Petals##22218 |achieve 1280/1
.' Kiss Jeremiah Payson |script DoEmote("KISS") |achieve 1280/2
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
.' Get either of these 2 items as a random drop from these bosses:
.collect 1 Bouquet of Red Roses##22206 |n
.collect 1 Bouquet of Ebon Roses##44731 |n
.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703
step
'Congratulations, you are a Fool For Love!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
daily
step
goto Thunder Bluff,40.8,56.1
.talk 19176
..accept 13483
step
goto 47.0,49.6
.talk 2995
.' Fly to Bloodhoof Village, Mulgore |goto Mulgore,47.4,58.7,0.5 |noway |c
step
goto Mulgore,46.9,59.5
.talk 32798
..turnin 13483
..accept 13479 |daily
step
goto 47.1,59.9
.talk 32837
..accept 13503
step
'Search around Bloodhoof Village for Brightly Colored Eggs and click them:
.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Bloodhoof Village is too crowded with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
.collect Brightly Colored Egg##45072+ |n
.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
.get 20 Brightly Colored Shell Fragment |q 13479/1
.get 10 Noblegarden Chocolate |q 13503/1
step
goto 47.1,59.9
.talk 32837
..turnin 13503
step
goto 46.9,59.5
.talk 32798
..turnin 13479
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
step
'You may be unable to complete some of the achievements if you are lower level.  So, if you find you cannot do something in this guide, simply skip it and do what you can.
step
goto Mulgore,47.2,59.3
.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Bloodhoof Village is too crowded with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
.collect Brightly Colored Egg##45072+ |n
.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
.collect 100 Noblegarden Chocolate##44791+ |n
.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249
step
'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Merchant at [47.1,59.9]:
.collect Noblegarden Egg##44818 |achieve 2420 |tip It costs 5 Noblegarden Chocolates.
.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
.collect Spring Rabbit's Foot##44794 |achieve 2497 |tip It costs 100 Noblegarden Chocolates.
step
goto 47.2,59.3
.' Use your Spring Rabbit's Foot in your bags to get a Spring Rabbit companion |use Spring Rabbit's Foot##44794
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Bloodhoof Village |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Bloodhoof Village |achieve 2497/1
step
goto 47.4,58.6
.talk 40809
.' Fly to Thunk's Abode, Desolace |goto Desolace,70.7,32.9,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Desolace |achieve 2436/2
step
goto Desolace,70.7,32.9
.talk 35556
.' Fly to Cenarion Hold, Silithus |goto Silithus,52.9,34.7,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Silithus |achieve 2436/3
step
goto Silithus,52.8,34.6
.talk 15178
.' Fly to Mossy Pile, Un'Goro Crater |goto Un'Goro Crater,44.0,40.2,0.5 |noway |c
step
goto Un'Goro Crater,35.8,50.7
.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
.' Stand in this spot until you lay an egg
.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
step
goto 44.1,40.3
.talk 39175
.' Fly to Gadgetzan, Tanaris |goto Tanaris,52.0,27.5,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Tanaris |achieve 2436/4
step
goto Tanaris,52.0,27.6
.talk 7824
.' Fly to Fizzle and Pozzik's Speedbarge, Thousand Needles |goto Thousand Needles,79.1,71.9,0.5 |noway |c
step
goto Thousand Needles,90.3,72.8
.' Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in Thousand Needles |achieve 2436/5
step
goto 79.2,72.0
.talk 40768
.' Fly to Razor Hill, Durotar |goto Durotar,53.0,43.6,0.5 |noway |c
step
goto Durotar,52.5,42.7
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Razor Hill |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Razor Hill |achieve 2497/4
step
goto 53.1,43.6
.talk 41140
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,50.8,55.8 |n
.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,61.0,52.7
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Brill |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Brill |achieve 2497/2
step
'Go south to Undercity |goto Undercity |noway |c
step
goto Undercity,54.9,11.2 |n
.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a glowing red crystal ball in a side room in the Ruins of Lordaron.
step
'Use your Noblegarden Egg anywhere in Silvermoon City |use Noblegarden Egg##44818
.' Hide a Brightly Colored Egg in Silvermoon City |achieve 2420
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,47.5,46.5
.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
.' Find a player with a Spring Rabbit next to them around Falconwing Square |tip Spring Rabbits look like small brown and white rabbits.
.' Find your Spring Rabbit another one to love in Falconwing Square |achieve 2497/3
step
'Go to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,49.5,14.8 |n
.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a glowing red crystal ball in the back room of this building, up a big ramp.
step
goto Undercity,63.3,48.5
.talk 4551
.' Fly to New Kargath, Badlands |goto Badlands,17.3,40.2,0.5 |noway |c
step
'Equip your Spring Robes in your bags
.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
.' Plant a flower in The Badlands |achieve 2436/1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Orgrimmar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.
startlevel 10
step
goto Orgrimmar,58.0,57.6
.talk 51989
..accept 172
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 172
..accept 29146
..accept 29176
..accept 29167
step
goto 49.7,59.2
.talk 3310
.' Fly to Southern Rocketway, Azshara |goto Azshara,51.5,74.3,0.5 |noway |c
step
goto 50.7,73.9
.' Click the Redhound Two-Seater |tip It's a gray metal rocket flying in place at the top of this tower.
.' Take Your Orphan to Ride the Rocketway |q 29146/1
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 29146
step
goto 25.9,49.6
.talk 43217
..' Tell him Southern Rocketway Terminus, please
.' Ride the rocket to Southern Rocketway Terminus |goto 50.7,74.1,1.0 |noway |c
step
goto 14.4,65.0
.talk 36728
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.6,49.9,0.5 |noway |c
step
'Go outside to Mulgore |goto Mulgore |noway |c
step
goto Mulgore,60.7,23.1
.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18597
.' Take Your Orphan to Visit Red Rocks |q 29176/1
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 29176
step
'Go west to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,47.0,49.6
.talk 2995
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,50.8,55.8 |n
.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
'Go south to Undercity |goto Undercity |noway |c
step
goto Undercity,52.4,64.2 |n
.' Follow the path down |goto Undercity,52.4,64.2,0.5 |noway |c
step
goto 58.1,91.8
.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18597
.' Take Your Orphan to a Meeting with Lady Sylvanas Windrunner |q 29167/1
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 29167
..accept 29190
..accept 29191
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,58.3,55.0
.talk 52809
.buy Dragon Kite 2-Pack##69231 |q 29190
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.' When your orphan is next to you:
.' Use your Dragon Kite 2-Pack |use Dragon Kite 2-Pack##69231
.' Fly Dragon Kites with Your Orphan |q 29190/1
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 29190
step
goto 38.8,87.0
.talk 52818
.buy Cone of Cold##69233 |q 29191
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.' When your orphan is next to you:
.' Use your Cone of Cold |use Cone of Cold##69233
.' Take Your Orphan Out for Ice Cream |q 29191/1
step
'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
.talk 14444
..turnin 29191
..accept 5502
step
goto 58.3,55.0
.talk 52809
.get Foam Sword Rack |q 5502/1 |tip Buy this from Blax Bottlerocket.
step
goto 58.0,57.6
.talk 51989
..turnin 5502 |tip You will be able to choose from 3 pet companions or a 5 gold reward.  If you already have all 3 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
startlevel 60
step
goto Shattrath City,74.9,47.9
.talk 22819
..accept 10942
step
'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.talk 22817
..turnin 10942
..accept 10945
..accept 10951
..accept 10953
step
goto Nagrand,60.7,22.3
.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.' Take Salandria to the Throne of the Elements |q 10953/1
step
goto Nagrand,60.7,22.1
.talk 18072
..turnin 10953
step
goto Zangarmarsh,19.3,51.3
.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.' Take Salandria to Sporeggar |q 10945/1
step
goto Zangarmarsh,19.3,51.3
.talk 22823
..turnin 10945
step
goto Hellfire Peninsula,89.6,50.2
.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.' Take Salandria to the Dark Portal |q 10951/1
step
'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.talk 22817
..turnin 10951
..accept 11975
..accept 10963
step
'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
step
'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
goto Blasted Lands,50.9,72.9
.talk 6026
..' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,40.5,73.3,0.5 |noway |c
step
goto The Cape of Stranglethorn,39.2,67.2 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
step
goto Northern Barrens,69.1,70.7
.talk 16227
.' Fly to Gadgetzan, Tanaris |goto Tanaris,52.1,27.6,0.5 |noway |c
step
goto Tanaris,61.5,50.6 |n
.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
step
goto Tanaris,64.9,50.0 |n
.' Enter the Caverns of Time here |goto Tanaris,64.9,50.0,0.5 |noway |c
step
'Follow the path down to 60.0,57.0 |goto Tanaris,60.0,57.0 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.' Take Salandria to the Caverns of Time |q 10963/1
step
goto Tanaris,63.0,57.3
.talk 21643
..get Toy Dragon##31951 |q 10963/2
step
'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.talk 22817
..turnin 10963
step
'Go outside to 52.0,27.6 |goto Tanaris,52.0,27.6
.talk 7824
..' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.6,59.2,0.5 |noway |c
step
goto Orgrimmar,50.9,55.8 |n
.' Go up the tower and ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
'Go south to Undercity |goto Undercity |noway |c
step
goto 54.9,11.3 |n
.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
step
goto Silvermoon City,76.7,80.7
.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
.' Take Salandria to see the Elite Tauren Chieftain in Silvermoon City's Walk of Elders
.talk 22817
..turnin 11975
..accept 10967
step
goto Silvermoon City,58.4,21.0 |n
.' Click the Portal to Blasted Lands to go to the Blasted Lands |goto Blasted Lands |noway |c
step
'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,87.3,48.1
.talk 18930
..' Fly to Shattrath, Terokkar Forest |goto Shattrath City |noway |c
step
goto Shattrath City,74.9,47.9
.talk 22819
..turnin 10967 |tip You will be able to choose from 3 pet companions.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Dalaran Oracles Quests",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Dalaran Wolvar Quests",[[
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
..accept 13960
step
goto Dalaran,49.4,63.2
.talk 34365
..turnin 13960 |tip You will receive a Curious Wolvar Pup pet companion in the mail.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
startlevel 10
step
goto Orgrimmar,70.9,25.6
.talk 14451
..' Ask her for another Orphan Whistle |collect 1 Orcish Orphan Whistle##18597
step
'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
.' Get the Daily Chores Achievement |achieve 1789
step
goto Orgrimmar,52.2,69.0
.talk 14480
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
startlevel 80
step
goto Orgrimmar,53.6,78.8
.talk 6929
.home Orgrimmar
step
goto Mulgore,51.8,59.3
.talk 25936
..accept 11852 |instant
step
goto 51.7,59.5
.talk 25994
..accept 11915
step
'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,40.8,56.1
.talk 19176
..accept 11971
step
goto Thunder Bluff,21.6,27.7
.talk 16818
..turnin 11971
..accept 11966
step
goto Thunder Bluff,21.0,26.4
.talk 26113
..turnin 11915
..accept 11922
step
'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
.' Hit 8 braziers |q 11922/1
step
goto Thunder Bluff,21.0,26.4
.talk 26113
..turnin 11922
..accept 11923
step
goto Thunder Bluff,21.8,27.3
.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
.' As soon as you light torch, it will fly in the air.  There will be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
.' Catch 4 torches in a row. |q 11923/1
step
goto Thunder Bluff,21.0,26.4
.talk 26113
..turnin 11923
step
goto Thunder Bluff,21.2,24.0
.talk 26221
..accept 11886
step
goto Thunder Bluff,47.0,49.8
.talk 2995
.' Fly to Brackenwall Village, Dustwallow Marsh |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
step
goto Dustwallow Marsh,33.5,30.9
.talk 11966
..turnin 11966
step
goto Dustwallow Marsh,33.4,30.9
.talk 25930
..accept 11847 |instant
step
goto Dustwallow Marsh,62.1,40.3
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11744 |instant
step
goto Dustwallow Marsh,35.6,31.9
.talk 11899
.' Fly to Gadgetzan, Tanaris |goto Tanaris,52.0,27.5,0.5 |noway |c
step
goto Tanaris,49.8,27.9
.talk 25921
..accept 11838 |instant
step
goto Tanaris,52.7,30.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11762 |instant
step
goto Tanaris,52.0,27.6
.talk 7824
.' Fly to Cenarion Hold, Silithus |goto Silithus,52.9,34.7,0.5 |noway |c
step
goto Silithus,50.9,41.3
.talk 25919
.accept 11836 |instant
step
goto Silithus,60.6,33.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11760 |instant
step
goto Silithus,52.8,34.6
.talk 15178
.' Fly to Camp Mojache, Feralas |goto Feralas,75.4,44.3,0.5 |noway |c
step
goto Feralas,72.4,47.8
.talk 25932
..accept 11849 |instant
step
goto Feralas,46.6,43.8
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11746 |instant
step
'Go north to Desolace |goto Desolace |noway |c
step
goto Desolace,26.2,76.9
.talk 25928
..accept 11845 |instant
step
goto Desolace,65.8,16.9
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11741 |instant
step
goto Stonetalon Mountains,38.2,68.3 |n
.' The path up to Sun Rock Retreat starts here |goto Stonetalon Mountains,42.5,68.6,0.5 |noway |c
step
goto Stonetalon Mountains,52.9,62.5
.talk 25940
..accept 11856 |instant
step
goto Stonetalon Mountains,48.5,61.9
.talk 4312
.' Fly to Desolation Hold, Southern Barrens |goto Southern Barrens,41.3,70.8,0.5 |noway |c
step
goto Southern Barrens,40.9,67.8
.talk 51587
.accept 28927 |instant
step
goto Southern Barrens,48.3,72.4
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 28913 |instant
step
goto Southern Barrens,41.3,70.8
.talk 39330
.' Fly to Crossroads, Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,50.0,54.6
.talk 25943
..accept 11859 |instant
step
'Go northeast to Durotar |goto Durotar |noway |c
step
goto Durotar,52.2,47.3
.talk 25929
..accept 11846 |instant
step
goto Durotar,53.1,43.6
.talk 41140
.' Fly to Everlook, Winterspring |goto Winterspring,60.5,36.3,0.5 |noway |c
step
goto Winterspring,58.1,47.5
.talk 25922
..accept 11839 |instant
step
goto Winterspring,61.3,47.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11763 |instant
step
goto Winterspring,58.8,48.3
.talk 11139
.' Fly to Silverwind Refuge, Ashenvale |goto Ashenvale,49.3,65.4,0.5 |noway |c
step
goto 51.4,66.2
.talk 25884
..accept 11841 |instant
step
goto Ashenvale,86.8,41.4
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11734 |instant
step
goto Ashenvale,73.2,61.6
.talk 12616
.' Fly to Zoram'gar Outpost, Ashenvale |goto 11.2,34.4 |noway |c
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
..accept 12012
step
'Go east to Darkshore |goto Darkshore |noway |c
step
goto Darkshore,48.9,22.6
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11740 |instant
step
goto Darkshore,40.0,12.7 |noway
.' You'll need to fly across the ocean here, you will get fatigued.
goto Teldrassil,57.6,89.6 |c
step
goto Teldrassil,54.7,52.9
.' Click the Bonfire
..accept 11753 |instant
step
.' Go West to Darnassus |goto Darnassus
step
goto Darnassus,64,47.1
.' Click the Flame of Darnassus |tip It's a huge blue bonfire.
.collect Flame of Darnassus##23184 |n
.' Click the Flame of Darnassus in your bags |use Flame of Darnassus##23184
..accept 9332 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
goto Darnassus,35.8,50.3 |n
.' Go inside the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
'Go inside the Exodar |goto The Exodar |noway |c
step
goto The Exodar,41.6,26.9
.' Click the Flame of the Exodar |tip It's a huge blue bonfire.
.collect Flame of the Exodar##35569 |n
.' Click the Flame of the Exodar in your bags |use Flame of the Exodar##35569
..accept 11933 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto Azuremyst Isle,44.7,52.7
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11735 |instant
step
'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,55.9,68.6
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11738 |instant
step
'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
step
goto Orgrimmar,49.7,59.2
.talk 3310
.' Fly to Ratchet, The Barrens |goto Northern Barrens,69.2,70.6,0.5 |noway |c
step
goto Northern Barrens,70.1,73.3 |n
.' Ride the boat to Booty Bay |goto The Cape of Stranglethorn |noway |c
step
goto The Cape of Stranglethorn,50.4,70.4
.talk 25920
..accept 11837 |instant
step
goto The Cape of Stranglethorn,51.8,67.4
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11761 |instant
step
goto The Cape of Stranglethorn,40.6,73.4
.talk 2858
.' Fly to Grom'gol, Stranglethorn |goto Northern Stranglethorn,39.0,51.1 |noway |c
step
goto Northern Stranglethorn,40.6,50.9
.talk 51582
.accept 28924 |instant
step
goto Northern Stranglethorn,51.7,63.3
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 28910 |instant
step
goto 39.0,51.2
.talk 1387
.' Fly to Dreadmaul Hold, Blasted Lands |goto Blasted Lands,43.6,14.3,0.5 |noway |c
step
goto Blasted Lands,55.3,15.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11737 |instant
step
goto Blasted Lands,43.7,14.3
.talk 43121
.' Fly to Stonard, Swamp of Sorrows |goto Swamp of Sorrows,47.8,55.1,0.5 |noway |c
step
goto Swamp of Sorrows,76.3,13.8
.talk 25941
..accept 11857 |instant
step
goto Swamp of Sorrows,70.3,14.4
.' Click the Alliance Bonfire |tip it's a huge bonfire.
..accept 28916 |instant
step
'Go west to Duskwood |goto Duskwood |noway |c
step
goto Duskwood,73.4,55.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11743 |instant
step
'Go west to Westfall |goto Westfall |noway |c
step
goto Westfall,45.1,62.3
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11581 |instant
step
'Go northeast to Elwynn Forest |goto Elwynn Forest |noway |c
step
goto Elwynn Forest,43.1,63.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11745 |instant
step
'Go northwest to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,50.0,72.6
.' Click the Flame of Stormwind |tip It's a huge blue bonfire.
.collect Flame of Stormwind##23182 |n
.' Click the Flame of Stormwind in your bags |use Flame of Stormwind##23182
..accept 9330 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
step
goto Redridge Mountains,24.5,53.8
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11751 |instant
step
'Go northeast to Burning Steppes |goto Burning Steppes |noway |c
step
goto Burning Steppes,68.7,60.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11739 |instant
step
goto Burning Steppes,51.1,29.2
.talk 25927
..accept 11844 |instant
step
goto Burning Steppes,54.2,24.2
.talk 13177
.' Fly to New Kargath, Badlands |goto Badlands,17.3,40.2,0.5 |noway |c
step
goto Badlands,18.7,56.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 28912 |instant
step
goto Badlands,23.1,37.4
.talk 25925
..accept 11842 |instant
step
'Go northeast to Loch Modan |goto Loch Modan |noway |c
step
goto Loch Modan,32.4,40.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11749 |instant
step
'Go southwest to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,53.6,44.8
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11742 |instant
step
'Go northeast to Ironforge |goto Ironforge |noway |c
step
goto Ironforge,64.3,26.0
.' Click the Flame of Ironforge |tip It's a huge blue bonfire.
.collect Flame of Ironforge##23183 |n
.' Click the Flame of Ironforge in your bags |use Flame of Ironforge##23183
..accept 9331 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
'Go east to Loch Modan |goto Loch Modan |noway |c
step
'Go north to Wetlands |goto Wetlands |noway |c
step
goto Wetlands,13.2,47.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11757 |instant
step
'Go northeast to Arathi Highlands |goto Arathi Highlands |noway |c
step
goto Arathi Highlands,44.6,46.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11732 |instant
step
goto Arathi Highlands,69.3,42.6
.talk 25923
..accept 11840 |instant
step
goto Arathi Highlands,68.2,33.4
.talk 2851
.' Fly to Tarren Mill, Hillsbrad |goto Hillsbrad Foothills,56.1,46.2,0.5 |noway |c
step
goto Hillsbrad Foothills,54.7,50.1
.talk 25935
..accept 11853 |instant
step
goto Hillsbrad Foothills,56.1,46.1
.talk 2389
.' Fly to The Sepulcher, Silverpine Forest |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
step
goto Silverpine Forest,49.6,38.2
.talk 25939
..accept 11584 |instant
step
goto Silverpine Forest,45.4,42.5
.talk 2226
.' Fly to Undercity, Tirisfal |goto Undercity,63.1,48.3,0.5 |noway |c
step
goto Undercity,66.9,13.5
.talk 26221
..turnin 12012
step
goto Undercity,67.7,8.3
.talk 16818
..turnin 9332
..turnin 11933
..turnin 9330
..turnin 9331
..accept 9339 |instant
step
goto Undercity,54.9,11.3
.' Click the Orb of Translocation |tip It's a glowing red ball floating above a spinning golden base.
.' Go to Silvermoon City |goto Silvermoon City |noway |c
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,46.4,50.6
.talk 25931
..accept 11848 |instant
step
'Go south to Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,46.9,26.3
.talk 25933
..accept 11850 |instant
step
goto Ghostlands,45.4,30.5
.talk 16189
.' Fly to Revantusk Village, The Hinterlands |goto The Hinterlands,81.7,81.9,0.5 |noway |c
step
goto The Hinterlands,76.7,75.0
.talk 25944
..accept 11860 |instant
step
goto The Hinterlands,14.5,49.9
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11755 |instant
step
'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,56.1,46.1
.talk 2389
.' Fly to The Bulwark, Tirisfal |goto Tirisfal Glades,83.5,70.1,0.5 |noway |c
step
'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
step
goto Western Plaguelands,43.6,82.5
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11756 |instant
step
'Go northwest to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,57.2,51.7
.talk 25946
..accept 11862 |instant
step
'Go southeast to Undercity |goto Undercity |noway |c
step
goto Undercity,85.3,17.1 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
step
'Go inside the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,61.9,58.5
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11747 |instant
step
goto Hellfire Peninsula,57.1,42.0
.talk 25934
..accept 11851 |instant
step
goto Netherstorm,32.1,68.3
.talk 25918
..accept 11835 |instant
step
goto Netherstorm,31.1,62.9
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11759 |instant
step
goto Blade's Edge Mountains,49.9,58.7
.talk 25926
..accept 11843 |instant
step
goto Blade's Edge Mountains,41.8,66.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11736 |instant
step
goto Zangarmarsh,35.4,51.6
.talk 25947
..accept 11863 |instant
step
goto Zangarmarsh,68.6,52.1
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11758 |instant
step
goto Nagrand,50.9,34.1
.talk 25937
..accept 11854 |instant
step
goto Nagrand,49.7,69.7
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11750 |instant
step
goto Terokkar Forest,52.0,42.9
.talk 25942
..accept 11858 |instant
step
goto Terokkar Forest,54.2,55.5
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11754 |instant
step
goto Shadowmoon Valley,33.4,30.5
.talk 25938
..accept 11855 |instant
step
goto Shadowmoon Valley,39.5,54.4
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 11752 |instant
step
goto Shattrath City,56.9,48.9 |n
.' Click the Shattrath Portal to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,44.6,62.4 |n
.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,55.2,20.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13440 |instant
step
goto Borean Tundra,51.1,11.5
.talk 32809
..accept 13493 |instant
step
goto Sholazar Basin,47.9,66.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13442 |instant
step
goto Sholazar Basin,47.1,61.5
.talk 32810
..accept 13494 |instant
step
goto Dragonblight,38.3,48.5
.talk 32811
..accept 13495 |instant
step
goto Dragonblight,75.1,43.8
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13443 |instant
step
goto Crystalsong Forest,77.6,75.2
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13447 |instant
step
goto Crystalsong Forest,80.0,53.2
.talk 32815
..accept 13499 |instant
step
goto The Storm Peaks,40.3,85.3
.talk 32814
..accept 13498 |instant
step
goto The Storm Peaks,41.4,87.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13446 |instant
step
goto Zul'Drak,40.5,61.0
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13449 |instant
step
goto Zul'Drak,43.4,71.7
.talk 32816
..accept 13500 |instant
step
goto Grizzly Hills,19.3,61.2
.talk 32813
..accept 13497 |instant
step
goto Grizzly Hills,34.2,60.6
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13445 |instant
step
goto Howling Fjord,48.6,13.1
.talk 32812
..accept 13496 |instant
step
goto Howling Fjord,57.8,15.8
.' Click the Alliance Bonfire |tip It's a huge bonfire.
..accept 13444 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
startlevel 80
step
'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
.' Skip to the next step in the guide
step
goto Undercity,66.9,13.6
.talk 26221
..' Queue for The Frost Lord Ahune battle.
..' Click Find Group
..from Lord Ahune##25740
.' Complete the Ice the Frost Lord Achievement |achieve 263
step
goto Undercity,68.1,11.2
.talk 26124
.buy 15 Juggling Torch##34599
.buy 1 Mantle of the Fire Festival##23324
.buy 1 Vestment of Summer##34685
.buy 1 Sandals of Summer##34683
step
goto Undercity,68.0,14.4
.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
'
'
.' Equip your Vestment of Summer |use Vestment of Summer##34685
'
'
.' Equip your Sandals of Summer |use Sandals of Summer##34683
.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
.' Let your character spin around for 1 minute
.' Complete the Burning Hot Pole Dance Achievement |achieve 271
step
'Don't forget to put your regular gear back on
.' Skip to the next step in the guide
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,59.1,59.0 |n
.' Ride the zeppelin to Howling Fjord |goto Howling Fjord |noway |c
step
goto Howling Fjord,79.0,29.7
.talk 27344
.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
step
goto Dalaran,36.8,44.1
.' Use your 40 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
.' Complete the Torch Juggler Achievement |achieve 272
step
'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Harvest Festival Quest",[[
author support@zygorguides.com
description This guide section will walk you through completing the Harvest Festival event.
step
goto Durotar,46.2,15.1
.talk 15012
..accept 8150
step
goto Durotar,53.1,43.6
.talk 41140
.' Fly to Splintertree Post, Ashenvale |goto Ashenvale,73.3,61.7,0.5 |noway|c
step
goto 82.9,79.1
.' Use Grom's Tribute in front of Grom's statue |use Grom's Tribute##19851
.' Place a tribute at Grom's Tomb |q 8150/1
step
|fly Orgrimmar
step
goto Durotar,46.2,15.1
.talk 15012
..turnin 8150
step
goto Durotar,46.4,14.9
.' You can click special food items on the table.
.' In 2 days You will also get an item called Bounty of the Harvest in the mail.
|confirm
step
'Congratulations, you've completed the Harvest Festival
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
step
goto Orgrimmar,51.6,75.2
.talk 19175
..accept 11446
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,42.6,17.8
.talk 24497
..accept 11409
step
'As you run around on the ram:
.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  The make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
.' Maintain a Trot for 8 seconds |q 11409/1
.' Maintain a Canter for 8 seconds |q 11409/2
.' Maintain a Gallop for 8 seconds |q 11409/3
step
goto Durotar,42.6,17.9
.talk 24497
..turnin 11409
..accept 11412
step
goto 50.6,13.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
.' Bok Dropcertain will throw you a keg when you get close
.' Once you have a keg, run back and turn it in to Driz Tumblequick at [42.6,17.7] |tip Just get near him and you will throw the keg to him.
.' Deliver 3 Kegs in Under 4 Minutes|q 11412/1
step
goto Durotar,42.6,17.8
.talk 24497
..turnin 11412
step
goto Durotar,42.7,17.7
.talk 24510
..accept 29396 |or
..accept 13931 |or
step
goto Durotar,41.6,18.4
.talk 24711
..turnin 11446
step
goto Durotar,41.5,17.6
.talk 27216
..accept 12191
step
goto Durotar,41.5,17.5
.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
.' Hit S.T.O.U.T. 5 Times |q 12191/1
step
goto 41.5,17.5
.talk 27216
..turnin 12191
step
goto 41.2,18.5
.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
.talk 24657
..accept 11431
..accept 11120
step
goto 41.3,17.9
.talk 24657
..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
.collect Synthebrew Goggles##46735 |q 11431
step
goto 40.3,17.9
.talk 24495
..turnin 29396 |or
..turnin 13931 |or
step
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11431
step
goto Durotar,41.2,18.1
.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
.get 5 Stunned Wolpertinger |q 11431/1
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11431
.' Earn Does Your Wolpertinger Linger? achievement |achieve 1683/6
step
.' Go Northeast to Orgrimmar |goto Orgrimmar |noway|c
step
goto Orgrimmar,50.9,55.7 |n
.' Ride the zepplin to Tirisfal Glades |goto Tirisfal Glades |noway|c
step
'Go south into Undercity |goto Undercity |noway |c
step
goto Undercity,70.5,12.0
.' Use your Elekk Dispersion Ray on Tirisfal Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Tirisfal Pink Elekk |q 11120/3
step
goto 54.9,11.3 |n
.' Click the Orb of Translocation |tip It looks like a red glowing orb in a gold spinning stand.
.' Teleport to Silvermoon City |goto Silvermoon City |noway |c
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,57.0,53.1
.' Use your Elekk Dispersion Ray on Eversong Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Eversong Pink Elekk |q 11120/1
step
'Go inside Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,49.5,14.8 |n
.' Click the Orb of Translocation |tip It looks like a red glowing orb in a gold spinning stand.
.' Teleport to Undercity |goto Undercity |noway |c
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
|fly Thunder Bluff
step
goto Thunder Bluff,34.7,74.7
.' Go down the lifts
.' Use your Elekk Dispersion Ray on Mulgore Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Mulgore Pink Elekk |q 11120/2
step
|fly Orgrimmar
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11120
step
'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
.' You will fight Coren Direbrew
.from Coren Direbrew##23872
.collect Direbrew's Dire Brew##38281 |n
.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38281
..accept 12492
.' Kill Coren  Direbrew |achieve 1683/3
step
'Click the green eye on the edge of your minimap
.' Teleport Out of the Dungeon |goto Durotar |noway |c
step
goto Durotar,41.6,18.5
.talk 24711
..turnin 12492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
daily
step
goto Durotar,40.6,18.2
.talk 24498
..accept 11407 |daily |or
.' Go to [Durotar,40.2,17.1]
.talk 24499
..accept 11408 |daily |or
.' You will only be able to accept one of these quests per day.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11407
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11294
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
goto Orgrimmar,52.1,75.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11407/1
step
goto 67.0,48.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11407/2
step
goto 44.3,49.1
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11407/3
step
goto 38.0,75.6
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11407/4
step
goto Orgrimmar,52.9,66.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11408/1
step
goto 71.5,34.8
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11408/2
step
goto 43.8,36.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11408/3
step
goto 37.0,74.3
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11408/4
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,40.6,18.2
.talk 24498
..turnin 11407
step
goto Durotar,43.6,17.6
.talk 24499
..turnin 11408
step
goto 40.4,18.0
.' Click the Dark Iron Mole Machine Wreckage |tip You have to defend the three kegs at these locations in order for it to show up.
.' Click the Complimentary Brewfest Sampler here [40.2,17.4]
.' Click the Complimentary Brewfest Sampler here [40.4,16.8]
.' Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines. |use Complimentary Brewfest Sampler##33096
..accept 12192 |daily
step
goto 41.5,17.6
.talk 27216
..turnin 12192
.' Earn the Down With the Dark Iron achievement |achieve 1683/4
step
goto 42.7,17.6
.talk 24497
..accept 29393 |instant |daily
.' On your Ram, run to Bok Dropcertain at [50.6,13.5] |tip Bok Dropcertain will throw you a keg when you get close.
.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
step
goto Durotar,41.0,18.3
.talk 23603
.buy The Essential Brewfest Pretzel##33043 |achieve 1185
step
'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
.' Eat The Essential Brewfest Pretzels |achieve 1185/7
step
goto 40.2,17.7
.talk 23604
.buy Spiced Onion Cheese##34065 |achieve 1185
step
'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
.' Eat the Spiced Onion Cheese |achieve 1185/4
step
goto 41.2,17.3
.talk 23605
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
.' Click the The Golden Link in your bags |use The Golden Link##33026
.' Eat The Golden Link |achieve 1185/8
.' Earn The Brewfest Diet |achieve 1683/1
step
goto 40.3,17.9
.talk 24495
.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
step
'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
.' Make your Mount Festive for Brewfest! |achieve 303
.' Earn Have Keg, Will Travel |achieve 1683/5
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto 40.3,17.9
.talk 24495
.buy "Brew of the Month" Club Membership Form##37599 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
..accept 12306
.' Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.4,73.5
.talk 27489
..turnin 12306
.' Earn the Brew of the Month achievement |achieve 1683/2
step
'Congratulations, you are a Brewmaster! |achieve 1683
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
#include "Hallows_End_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
daily
#include "Hallows_End_Dailies_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
#include "Hallows_End_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
step
goto Undercity,65.6,8.1
.talk 34654
..accept 14065
step
goto 64.7,7.9
.' Click Turkey Chairs |tip They look like wooden chairs around a round white and green table with food on it.
.' Use the first ability on your hotbar to Pass the food to other players who are sitting at the table |tip You must target the other players and use the Pass the Food ability.  Do this repeatedly until you get an achievement.
.' Start a Food Fight! |achieve 3579
.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
.' Gain the Spirit of Sharing |q 14065/1
step
goto 65.6,8.1
.talk 34654
..turnin 14065
step
goto 63.2,8.9
.talk 34712
.' Learn the Apprentice Cooking skill, if you don't have it already
.' Learn the Spice Bread recipe
.' Skip to the next step in the guide
step
goto 63.9,11.1
.talk 34683
.buy Bountiful Cookbook##46810
step
'Use your Bountiful Cookbook |use Bountiful Cookbook##46810
.collect Recipe: Spice Bread Stuffing##46803
.collect Recipe: Pumpkin Pie##46804
.collect Recipe: Cranberry Chutney##46805
.collect Recipe: Candied Sweet Potato##46806
.collect Recipe: Slow-Roasted Turkey##46807
step
'Use your Recipe: Spice Bread Stuffing to learn the recipe |use Recipe: Spice Bread Stuffing##46803
.' Skip to the next step in the guide
step
goto 63.9,11.5
.talk 34677
..accept 14037
step
goto 63.9,11.1
.talk 34683
.buy Simple Flour |n
.buy Mild Spices |n
.buy Autumnal Herbs |n
.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.2,8.3]
.' Cook Spice Bread, and then cook Spice Bread Stuffing |tip  If you need more ingredients, buy them from Rose Standish.
.' Prepare 5 Spice Bread Stuffing |q 14037/1
.get 5 Spice Bread Stuffing |q 14037/2
.' Get your Cooking skill up to 100 |skill Cooking,100
.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
step
'Use your Recipe: Pumpkin Pie to learn the recipe |use Recipe: Pumpkin Pie##46804
.' Skip to the next step in the guide
step
goto 65.3,14.3
.talk 34768
..turnin 14037
..accept 14040
step
goto 63.9,11.1
.talk 34683
.buy Ripe Tirisfal Pumpkin |n
.buy Honey |n
.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.2,8.3]
.' Cook Pumpkin Pie |tip  If you need more ingredients, buy them from Rose Standish.
.' Prepare 5 Pumpkin Pie |q 14040/1
.get 5 Pumpkin Pie |q 14040/2
.' Get your Cooking skill up to 160 |skill Cooking,160
.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
step
'Use your Recipe: Cranberry Chutney to learn the recipe |use Recipe: Cranberry Chutney##46805
.' Skip to the next step in the guide
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Durotar |goto Durotar |noway |c
step
goto 46.6,13.8
.talk 34679
..turnin 14040
..accept 14041
step
goto 46.6,13.8
.talk 34685
.buy Tangy Southfury Cranberries |n
.buy Honey |n
.' Cook next to the Pilgrim's Bounty Cooking Fire at [46.4,13.8]
.' Cook Cranberry Chutney |tip  If you need more ingredients, buy them from Dalni Tallgrass.
.' Prepare 5 Cranberry Chutney |q 14041/1
.get 5 Cranberry Chutney |q 14041/2
.' Get your Cooking skill up to 220 |skill Cooking,220
.' If you need to train your Cooking skill to allow a higher max level, talk to Ondani Greatmill at [46.4,13.9]
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,45.1,63.9
.talk 3310
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.6,49.9,0.5 |noway |c
step
goto Thunder Bluff,30.9,63.7
.talk 34678
..turnin 14041
..accept 14043
step
goto 31.1,63.4
.talk 34684
.buy Mulgore Sweet Potato##46797 |n
.buy Honey##44853 |n
.buy Autumnal Herbs##44835 |n
.' Cook next to the Pilgrim's Bounty Cooking Fire at [30.5,70.1]
.' Cook Candied Sweet Potatoes |tip  If you need more ingredients, buy them from Laha Farplain.
.' Prepare 5 Candied Sweet Potatoes |q 14043/1
.get 5 Candied Sweet Potatoes |q 14043/2
.' Get your Cooking skill up to 280 |skill Cooking,280
.' If you need to train your Cooking skill to allow a higher max level, talk to Mahara Goldwheat at [31.0,69.8]
step
goto 47.0,49.8
.talk 2995
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,46.6,13.8
.talk 34679
..turnin 14043
..accept 14044
step
goto 50.8,13.8 |n
.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
'Go into Undercity |goto Undercity |noway |c
step
goto Undercity,63.9,11.5
.talk 34677
..turnin 14044
..accept 14047
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,62.2,56.4
.from Wild Turkey##32820+ |tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area.  Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
.collect 20 Wild Turkey##44834 |q 14047
step
'Go into Undercity |goto Undercity |noway |c
step
goto Undercity,63.9,11.1
.talk 34683
.buy Honey##44853 |n
.buy Autumnal Herbs##44835 |n
.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.1,8.3]
.' Cook Slow-Roasted Turkey |tip  If you need more ingredients, buy them from Rose Standish.
.' Prepare 5 Slow-Roasted Turkey |q 14047/1
.get 5 Slow-Roasted Turkey |q 14047/2
.' Get your Cooking skill up to 300 |skill Cooking,300
.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Durotar |goto Durotar |noway |c
step
goto Durotar,46.6,13.8
.talk 34679
..turnin 14047
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
step
goto Orgrimmar,52.7,77.3
.talk 13418
..accept 6961
..accept 6963
..accept 8746
step
goto 49.6,78.0
.talk 13445
..turnin 6961
..accept 6962
step
goto 51.0,71.0
.talk 9550
..accept 6964
step
goto 56.1,61.7
.talk 46709
.' Learn the Apprentice Cooking skill, if you don't have it already
.' Skip to the next step in the guide
step
goto 39.5,47.3
.talk 13417
..turnin 6964
..accept 7061
step
goto 52.5,76.8
.talk 13420
.buy 1 Recipe: Gingerbread Cookie##17200 |n
.' Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
.' Learn the Gingerbread Cookie recipe
.buy 5 Holiday Spices##17194
step
'Buy 5 Small Eggs from the Auction House: |tip You can also farm these from mobs.
.collect 5 Small Egg##6889
step
goto 53.8,84.7
.' Use your Cooking profession next to the fire to create Gingerbread Cookies
.get 5 Gingerbread Cookie |q 6962/1
step
goto 53.6,78.8
.talk 6929
.buy Ice Cold Milk##1179
step
goto 53.6,78.8
.talk 6929
.home Orgrimmar
step
goto 49.6,78.0
.talk 13445
..turnin 6962
step
goto 50.8,55.9 |n
.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,58.8,51.9
.talk 9564
.' Fly to Tarren Mill, Hillsbrad |goto Hillsbrad Foothills,56.0,46.2,0.5 |noway |c
step
goto Hillsbrad Foothills,42.3,41.1
.talk 13636
..turnin 6963
..accept 6983
step
goto 39.2,34.3
.from The Abominable Greench##13602 |tip He is a level 36 elite that spawns randomly around the outer edge of the Ruins of Alterac. You may need to group if you are a lower level.
.get Stolen Treats |q 6983/1
step
goto 56.1,46.1
.talk 2389
.' Fly to Brill, Tirisfal Glades |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,49.7,59.2
.talk 3310
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.7,49.9,0.5 |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 36648
..turnin 7061
step
goto 47.0,49.8
.talk 2995
.' Fly to Bootlegger Outpost, Tanaris |goto Tanaris,55.8,60.6,0.5 |noway |c
step
goto Tanaris,72.3,48.1
.talk 15664
.' Sprinkle some of the reindeer dust onto Metzen
.' Find Metzen the Reindeer and rescue him |q 8746/1
step
'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
step
goto Orgrimmar,52.6,77.4
.talk 13418
..turnin 8746
..turnin 6983
..accept 6984
step
goto 49.6,78.0
.talk 13445
..turnin 6984
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
step
goto Orgrimmar,54.5,77.8
.' Kiss a Winter Reveler every hour |script DoEmote("KISS") |tip You can only use this once per hour. The items you get are random.
.collect 10 Handful of Snowflakes##34191 |n
.collect 3 Mistletoe##21519 |n
.collect Preserved Holly##21213 |n
.' Skip to the next step in the guide
step
'Use a Handful of Snowflakes on the following race/class combinations |use Handful of Snowflakes##34191 |tip The best place to complete this is in major cities, but it can be done anywhere in the world.
.' You can get more snowflakes by using /kiss on Winter Revealers at [54.5,77.8]
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
.' You can get the recipes for these items from Penney Copperpinch at [52.5,76.8]
.collect Egg Nog##17198 |achieve 1688/2
.collect Hot Apple Cider##34411 1688/3 |tip Requires a cooking skill of 325
step
'Use the Tailoring profession or pay a tailor to create Green Winter Clothes
.' You can buy the pattern from Penney Copperpinch at [52.5,76.8]
.collect Green Winter Clothes##34087
step
'Use the Leatherworking profession or pay a leatherworker to create Winter Boots
.' You can buy the pattern from Penney Copperpinch at [52.5,76.8]
.collect Winter Boots##34086
step
'Queue for The Oculus dungeon
.from Mage-Lord Urom##27655
.collect Green Winter Hat##21525
step
'Get the Smokywood Pastures Sampler from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
.' Click the Smokywood Pastures Sampler in your bag |use Smokywood Pastures Sampler##17685
.collect Graccu's Mince Meat Fruitcake##21215
.' Equip the Green Winter Clothes |use Green Winter Clothes##34087
.' Equip the Winter Boots |use Winter Boots##34086
.' Equip the Green Winter Hat |use Winter Hat##21525
.' During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake. |use Graccu's Mince Meat Fruitcake##21215 |achieve 277
step
goto Orgrimmar,50.2,62.1
.' Use the Winter Wondervolt machine to turn into a Little Helper |Use them every 30 minutes while PvPing to keep the buff on.  If you don't have the buff active while killing players, you won't get credit.
.' Do any type of PvP of your choice |tip You must be killing players that give you honor.
.' Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine |achieve 252
step
'Make sure you have the following in your bags:
.collect 3 Mistletoe##21519
.collect Preserved Holly##21213
step
goto 52.5,76.8
.talk 13420
.buy Snowball##17202 |n
step
goto 53.6,78.8
.talk 6929
.home Orgrimmar
step
goto 49.7,59.2
.talk 3310
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.' Use a snowball on Baine Bloodhoof |use Snowball##17202 |n
.' Throw a snowball at Baine Bloodhoof during the Feast of Winter Veil |achieve 259
step
goto 47.0,49.8
.talk 2995
.' Fly to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.8,55.9 |n
.' Ride the zeppelin to Tirisfal Glades|goto Tirisfal Glades|noway|c
step
'Go south into Undercity |goto Undercity |noway |c
step
goto Undercity,50.8,21.7
.' Use your Mistletoe on Brother Malach |use Mistletoe##21519
.' Use Mistletoe on Brother Malach in the Undercity|achieve 1685/1
step
.' The following achievements require a level 70 or higher character.
.' Skip to the next step.
step
goto 85.3,17.1 |n
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
.' Click the clusters in the same color pattern as the crystal |tip You must do this eight times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
.' Attain the Apexis Emanations |q 11058/1
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
.' Click an Apexis Relic |tip It looks like a small multi-colored crystal floating in the air.
.' Insert an Apexis Shard to begin.
.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
.' Click the clusters in the same color pattern as the crystal |tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
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
.' While on your flying mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
step
goto 27.6,52.9
.talk 23120
..turnin 11010
..accept 11023 |daily
step
'Use Preserved Holly while riding your flying mount |use Preserved Holly##21213 |havebuff Interface\Icons\INV_Misc_Plant_03
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
'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
step
goto Orgrimmar,44.8,62.3 |n
.' Ride the zeppelin to Warsong Hold, Borean Tundra |goto Borean Tundra |noway |c
step
goto 40.5,54.7
.' Use your Mistletoe on Brother Malach |use Mistletoe##21519
.' Use Mistletoe on Durkot Wolfbrother in the Undercity |achieve 1685/2
step
goto 40.4,51.4
.talk 25288
.' Fly to The Argent Tournament Grounds,Icecrown |goto Icecrown,72.6,22.8,0.5 |noway |c
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: 60.6,34.9
.' Point 2: 68.0,52.5
.' Point 3: 68.9,27.0
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.' Use your Mistletoe on Brother Malach |use Mistletoe##21519 |tip He is a blood elf with gray hair and walks all around the Orgrim's Hammer airship.
.' Use Mistletoe on Durkot Wolfbrother in the Undercity |achieve 1685/2
step
goto 72.6,22.6
.talk 33849
.' Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,50.3,63.2
.' Get the Winter Veil Disguise Kit from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
.' Equip the Winter Veil Disguise Kit in your bag |use Winter Veil Disguise Kit##17712
.' Dance with another player wearing their snowman costume |script DoEmote("DANCE")
.' During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a snowman and then dance with another snowman in Dalaran |achieve 1690
step
goto Orgrimmar,49.6,78.1
.' This step can only be completed by logging into the server on December 25th.
.' Click a present underneath the tree.
.' Open one of the presents underneath the Winter Veil tree once they are available. |achieve 1689
step
'Congratulations, you are now a Merry Maker!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto Drake ",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition end hasmount(63956)
model 28953
step
'This mount is a reward for completing the _Glory of the Ulduar Raider_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Reins of the Ironbound Proto-Drake##45801
|modeldisplay 28953
step
.learnmount Ironbound Proto-Drake##63956 |use Reins of the Ironbound Proto-Drake##45801
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Flame Hippogryph",[[
description This guide will walk you through obtaining
description the flying mounts that require achievements
description to obtain.
condition end hasmount(97359)
model 38018
step
'This _mount requires_ you to have the achievement _"The Molten Front Offensive"_ completed
.' Use the _Firelands Dailies section_ of this guide to _complete_ each _The Molten Front Offensive achievements_
.' The Molten Front Offensive |achieve 5866
step
.' Check your _mailbox_ for your _prize_!
.collect 1 Flame Hippogryph##69213
'|modeldisplay 38018
step
.learnmount Flame Hippogryph##97359 |use Flame Hippogryph##69213
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59650)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 10-Man raid.
.from Sartharion##28860 |n
.collect Reins of the Black Drake##43986
step
.learnmount Black Drake##59650 |use Reins of the Black Drake##43986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake",[[
author support@zygorguides.com
description This guide section will walk you through obtaining the Twilight Drake Mount.
condition end hasmount(59571)
model 27796
step
.' This mount is dropped by Sartharion in The Obsidian Sanctum 25-Man raid.
.from Sartharion##28860 |n
.collect Reins of the Twilight Drake##43954
|modeldisplay 27796
step
.learnmount Twilight Drake##59571 |use Reins of the Twilight Drake##43954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Experiment 12-B",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Pureblood Fire Hawk",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Ashes of Al'ar",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Invincible",[[
author support@zygorguides.com
condition end hasmount(72286)
model 31248
step
'This mount is dropped by The Lich King in the Icecrown Citadel raid. It is only dropped on 25 Heroic Difficulty.
.from The Lich King |n
.collect 1 Invincible's Reins##50818
|modeldisplay 31248
step
.learnmount Invincible##72286 |use Invincible's Reins##50818
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Life-Binder's Handmaiden",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Celestial Steed",[[
author support@zygorguides.com
condition end hasmount(75614)
model 31958
step
'This mount can be purchased for $25.00 from the official _Blizzard Store_.
'After purchasing, check your in-game mailbox.
.collect Celestial Steed##54811
|modeldisplay 31958
step
.learnmount Celestial Steed##75614 |use Celestial Steed##54811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store\\Winged Guardian",[[
author support@zygorguides.com
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-53 Touring Rocket",[[
author support@zygorguides.com
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Spectral Wind Rider",[[
author support@zygorguides.com
condition end hasmount(107517)
step
'This mount is obtained through the Scroll of Ressurrection program.
'Send a Scroll of Ressurrection to a friend with a deactivated account and redeem your mount on battle.net. Check the mailbox of the character you assigned the mount to.
.collect 1 Spectral Wind Rider##76902
step
.learnmount Spectral Wind Rider##107517 |use Spectral Wind Rider##76902
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Big Love Rocket",[[
description This guide will walk you through obtaining
description the Big Love Rocket
condition end hasmount(38207)
model 30989
step
'This requires the _Love is in the Air_ event
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Hummel_ |goto Shadowfang Keep |noway |c
step
.from Apothecary Hummel##36296
.collect Heart-Shaped Box##54537 |tip This will appear in your bags once you kill Apothecary Hummel and can only be won once a day
|use Heart-Shaped Box##54537
.collect Big Love Rocket##50250 |tip This mount has an insanely low chance of dropping. (0.03%)
'|modeldisplay 30989
step
.learnmount Big Love Rocket##71342 |use Big Love Rocket##50250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Phosphorescent Stone Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Time-Lost Proto Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Water Mounts\\Abyssal Seahorse",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(75207)
model 34956
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 27718
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,55.9,12.3
.talk 41621
..turnin 27718
..accept 25924
step
goto 57.8,10.4 |n
.' Ride the mercenary ship to Vashj'ir |q 25924/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
step
goto Kelp'thar Forest,38.7,31.7
.talk 41618
..turnin 25924
..accept 25929
step
goto 42.1,31.3
.click Saltwater Star##9991+
.get 3 Saltwater Starfish |q 25929/1
.click Conch Shell##9440
.get Conch Shell |q 25929/2
step
goto 38.7,31.7
.talk 41618
..turnin 25929
..accept 25936
step
goto 42.4,31.4
.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##56227 |tip They are swimming above the ground, holding their throats.
.' Rescue 6 Drowning Warriors |q 25936/1
step
goto 38.7,31.7
.talk 41618
..turnin 25936
..accept 25941
step
goto 39.0,32.1
.talk 41711
..turnin 25941
..accept 25942
..accept 25943
step
goto 38.7,31.7
.talk 41618
.home The Immortal Coil
step
goto 40.9,30.7
.from Zin'jatar Raider##41781+
.' Slay 8 Zin'jatar Raiders |q 25942/1
.from Splitclaw Skitterer##40685+
.get 10 Succulent Crab Meat |q 25943/1
step
goto 39.0,32.1
.talk 41711
..turnin 25942
..turnin 25943
..accept 25944
step
goto 38.9,26.9
.click Alliance S.E.A.L. Equipment##9504
..accept 25946
step
goto 36.7,28.9
.from Gilblin Plunderer##41746+
.click Orgrimmar Axe##9562+
.get 5 Orgrimmar Axe |q 25944/1
.click Orgrimmar Helm##9560+
.get 5 Orgrimmar Helm |q 25944/2
.click Orgrimmar Breastplate##8419+
.get 5 Orgrimmar Breastplate |q 25944/3
.' You can find more Axes, Helms and Breastplates around [36.2,21.0]
step
goto 39.0,32.1
.talk 41711
..turnin 25944
..turnin 25946
..accept 25947
step
goto 49.6,22.3
.click Stormwind Locker##9280+
.get 5 Stormwind SEAL Equipment |q 25947/1
step
goto 39.0,32.1
.talk 41711
..turnin 25947
..accept 25948
step
goto 38.9,31.6
.talk 41750
..turnin 25948
..accept 25949
step
goto 39.9,30.8
.' Fight the naga until you get kidnapped
.' Follow Erunak Stonespeaker after he saves you
.' Complete the Defense of The Immortal Coil |q 25949/1
step
goto 46.3,46.9
.talk 40105
..turnin 25949
step
goto 46.0,46.9
.talk 41248
..accept 25477
step
goto 52.8,48.8
.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462
.' Start swimming on the turtle and a shark will come and eat the turtle
.' Mount the Sea Turtle |q 25477/1
step
goto 46.0,46.9
.talk 41248
..turnin 25477
..accept 25371
step
goto 45.4,46.6
.click Braided Rope##7548
.' Tie off the Seahorse Lure |q 25371/1
step
goto 45.0,46.9 |n
.clicknpc Abyssal Seahorse##40054
.' Use the abilities on your hotbar when you are told to |tip You will have to use the corresponding arrow abilities to the arrows that display in the middle of your screen.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Water Mounts\\Subdued Seahorse",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Water Mounts\\Sea Turtle",[[
description This guide will walk you through obtaining
description water mounts
condition end hasmount(34187)
model 29161
step
'Acquiring _this mount requires_ you to have _fishing_
|confirm
step
'_Go to_ either _Twilight Highlands_, _Uldum_, _Tol Barad Peninsula_, _Howling Fjord_, _Borean Tundra_, _Deepholm_, _Grizzly Hills_, _Mount Hyjal_, _Crystalsong Forest_, _Sholazar Basin_, or _Dragonblight_.
.' Find _any_ and all _schools of fish_ that you can and _fish_ from them. |tip The more you fish, the better chances you have of obtaining this mount. It has an average of .01% drop rate, so you're going to be fishing for a while.
.collect 1 Sea Turtle##46109
'|modeldisplay 29161
step
.learnmount Sea Turtle##64731 |use Sea Turtle##46109
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Love is in the Air\\Swift Lovebird",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird Mount
condition end hasmount(102350)
model 1961
step
'This pet can only be obtained during the Love is in the Air event
'It can be purchased for 270 Love Tokens |tip See Love is in the Air Events guide
|confirm
step
goto Orgrimmar 53.1,77.0
.talk 37674
.buy Swift Lovebird##72146
|modeldisplay 1961
step
.learnpet Swift Lovebird##102350 |use Swift Lovebird##72146
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Noblegarden\\Swift Springstrider",[[
author support@zygorguides.com
description This guide section will walk you through getting the Swift Lovebird Mount
condition end hasmount(102349)
model 1221
step
'Thie pet can only be obtained during the Noblegarden event
'It can be purchased for 500 Noblegarden Chocolate or found in a Brightly Colored Egg |tip See Noblegarden Events guide
|confirm
step
goto Mulgore 47.1,59.9
.talk 32837
.buy 1 Swift Springstrider##72145
|modeldisplay 1221
step
.learnmount Swift Springstrider##102349 |use Swift Springstrider##72145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Brewfest Rams",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Brewfest\\Great Brewfest Kodo",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Seasonal\\Hallows End\\Headless Horseman's Mount",[[
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
