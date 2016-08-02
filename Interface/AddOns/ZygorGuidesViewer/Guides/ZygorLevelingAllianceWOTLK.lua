local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAWOTLK") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dwarf (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('Dwarf') and level<=5
condition suggested !exclusive
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)
startlevel 1
dynamic on
step
goto Coldridge Valley 67.1,41.3
.talk 37081
..accept 24469
step
goto 63.6,50.7
.kill 6 Rockjaw Invader##37070+ |q 24469/1
step
goto 67.1,41.3
.talk 37081
..turnin 24469
..accept 24470
step
goto 65.7,43.1
.talk 658
..accept 24471
step
goto 69.3,55.2
.kill 3 Rockjaw Goon##37073+ |q 24470/1
.' Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
.' Aid 4 Wounded Coldridge Mountaineers |q 24471/1
step
ding 2
step
goto 67.1,41.3
.talk 37081
..turnin 24470
step
goto 65.7,43.1
.talk 658
..turnin 24471
step
goto 67.1,41.3
.talk 37081
..accept 24473
step
goto 61.8,22.5
.talk 37087 |tip She walks around the forge at the center of the room.
..turnin 24473
..accept 24474
..accept 3107 |only Dwarf Paladin
..accept 3106 |only Dwarf Warrior
..accept 3109 |only Dwarf Rogue
..accept 3110 |only Dwarf Priest
..accept 3115 |only Dwarf Warlock
..accept 3108 |only Dwarf Hunter
..accept 24496 |only Dwarf Mage
..accept 24494 |only Dwarf Shaman
..accept 31150 |only Dwarf Monk
step
goto 61.7,22.1
.talk 1104
..accept 24477
step
goto 68.2,27.9
.click Keg of Gnomenbrau##319
.get Cask of Gnomenbrau |q 24474/3
step
goto 56.7,28.3
.click Keg of Stormhammer Stout##319
.get Cask of Stormhammer Stout |q 24474/1
step
goto 40.0,29.1
.click Keg of Theramore Pale Ale##319
.get Cask of Theramore Pale Ale |q 24474/2
step
goto 44.5,30.9
.click Forgotten Dwarven Artifact##5333+ |tip They look like little mounds of snow on the ground.
.get 5 Forgotten Dwarven Artifact |q 24477/1
.' You can find more around [72.8,24.5]
step
goto 61.7,22.1
.talk 1104
..turnin 24477
..accept 24486
step
goto 61.8,22.5
.talk 37087
..turnin 24474
..accept 24475
step
goto 51.6,47.6
.from Rockjaw Scavenger##37105+
.get 5 Priceless Rockjaw Artifact |q 24486/1
step
ding 3
step
goto 49.5,57.7
.from Ragged Young Wolf##705+
.get 4 Ragged Wolf Hide |q 24475/2
.from Small Crag Boar##708+
.get 3 Boar Haunch |q 24475/1
step
goto 61.7,22.1
.talk 1104
..turnin 24486
step
goto 61.8,22.5
.talk 37087
..turnin 24475
..accept 24487
step
goto 61.9,24.5
.talk 926
..turnin 3107
..accept 24528
only Dwarf Paladin
step
goto 62.2,29.2
.' Cast Seal of Command on yourself, then strike the Training Dummy |q 24528/2
only Dwarf Paladin
step
goto 61.9,24.5
.talk 926
..turnin 24528
only Dwarf Paladin
step
goto 61.9,19.0
.talk 912
..turnin 3106
..accept 24531
only Dwarf Warrior
step
goto 62.2,29.2
.' Use Charge on a Training Dummy
.' Practice using Charge |q 24531/2
|modelnpc Training Dummy##44548
only Dwarf Warrior
step
goto 61.9,19.0
.talk 912
..turnin 24531
only Dwarf Warrior
step
goto 59.6,20.4
.talk 916
..turnin 3109
..accept 24532
only Dwarf Rogue
step
goto 62.2,29.2
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24532/2
|modelnpc Training Dummy##44548
only Dwarf Rogue
step
goto 59.6,20.4
.talk 916
..turnin 24532
only Dwarf Rogue
step
goto 60.7,14.7
.talk 837
..turnin 3110
..accept 24533
only Dwarf Priest
step
goto 62.2,29.2
.' Use Shadow Word: Pain on the Training Dummies
.' Practice using Shadow Word: Pain 5 times |q 24533/2
|modelnpc Training Dummy##44548
only Dwarf Priest
step
goto 60.7,14.7
.talk 837
..turnin 24533
only Dwarf Priest
step
goto 61.2,17.5
.talk 43455
..turnin 3115
..accept 26904
only Dwarf Warlock
step
goto 62.2,29.2
.' Use Corruption 5 times on the Training Dummies.
.' Practice Corruption 5 times |q 26904/2
|modelnpc Training Dummy##44548
only Dwarf Warlock
step
goto 61.2,17.5
.talk 43455
..turnin 26904
only Dwarf Warlock
step
goto 63.7,20.1
.talk 895
..turnin 3108
..accept 24530
only Dwarf Hunter
step
goto 62.2,29.2
.' Use the Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 24530/2
|modelnpc Training Dummy##44548
only Dwarf Hunter
step
goto 63.7,20.1
.talk 895
..turnin 24530
only Dwarf Hunter
step
goto 61.3,14.5
.talk 37121
..turnin 24496
..accept 24526
only Dwarf Mage
step
goto 62.2,29.2
.' Use Frost Nova on the Training Dummies
.' Practice using Frost Nova 2 times |q 24526/2
|modelnpc Training Dummy##44548
only Dwarf Mage
step
goto 61.3,14.5
.talk 37121
..turnin 24526
only Dwarf Mage
step
goto 61.2,13.8
.talk 37115
..turnin 24494
..accept 24527
only Dwarf Shaman
step
goto 62.2,29.2
.' Use Primal Strike on the Training Dummies 
.' Practice Primal Strike 2 times |q 24527/2
|modelnpc Training Dummy##44548
only Dwarf Shaman
step
goto 61.2,13.8
.talk 37115
..turnin 24527
only Dwarf Shaman
step
goto 63.2,22.2
.talk 63285
..turnin 31150
..accept 31151
only Dwarf Monk
step
goto 62.2,29.2
.' Use Tiger Palm on the training dummies
.' Practice Tiger Palm  |q 31151/2
|modelnpc Training Dummy##44548
only Dwarf Monk
step
goto 63.2,22.2
.talk 63285
..turnin 31151
only Dwarf Monk
step
goto 42.7,62.2
.talk 786
..turnin 24487
..accept 182
step
goto 43.2,63.1
.talk 1354
..accept 24489
step
goto 41.9,63.5
.talk 8416
..accept 3361
step
ding 4
step
goto 27.8,74.5
.' Kill Frostmane Troll Whelps as you walk
.click Felix's Box##2350
.get Felix Box##10438 |q 3361/1
' |from Frostmane Troll Whelps##706
step
goto 21.1,67.5
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Mirim'koa talk
.' Scout Soothsayer Mirim'koa |q 24489/3
' |from Frostmane Troll Whelps##706
'|modelnpc Soothsayer Mirim'koa##37174
step
goto 31.4,84.4
.' Kill Frostmane Troll Whelps as you walk
.click Felix's Chest##318
.get Felix Chest##16313 |q 3361/2
' |from Frostmane Troll Whelps##706
step
goto 30.3,85.7
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Rikkari talk
.' Scout Soothsayer Rikkari |q 24489/2
' |from Frostmane Troll Whelps##706
'|modelnpc Soothsayer Rikkari##37173
step
goto 48.9,80.6
.' Kill Frostmane Troll Whelps as you walk
.click Felix's Bucket of Bolt##4991
.get Felix's Bucket of Bolts##16314 |q 3361/3
' |from Frostmane Troll Whelps##706
step
goto 49.1,81.4
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Shi'kala talk
.' Scout Soothsayer Shi'kala |q 24489/1
' |from Frostmane Troll Whelps##706
'|modelnpc Soothsayer Shi'Kala##37108
step
goto 50.4,78.9
.kill 10 Frostmane Troll Whelp##706+ |q 182/1
step
goto 43.2,63.1
.talk 1354
..turnin 24489
step
goto 42.7,62.2
.talk 786
..turnin 182
..accept 218
step
goto 41.9,63.5
.talk 8416
..turnin 3361
step
'Enter the cave |goto Coldridge Valley/9
'|goto Coldridge Valley/0 51.5,83.2 <5 |n
step
goto Coldridge Valley/9 66.7,29.2  // Frostmane Hovel
.kill Wayward Fire Elemental##37112 |q 218/3
step
goto 76.1,30.8
.kill Grik'nir the Cold##808 |q 218/1
step
'Before you leave the cave:
.kill 10 Grik'nir's Servant |q 218/2
' |from Frostmane Blade##37507+, Frostmane Novice##946+
step
ding 5
step
'Leave the cave |goto Coldridge Valley/0 |c
'|goto Coldridge Valley/9 14.0,40.7 |n
step
goto Coldridge Valley/0 42.7,62.2
.talk 786
..turnin 218
..accept 24490
step
'Hearth to Coldridge Valley |goto 66.3,41.9 <50 |use Hearthstone##6948 |noway |c
step
goto Dun Morogh 40.9,70.7
.talk 6782
..turnin 24490
..accept 24491
step
goto Coldridge Valley 69.9,44.21
.talk 37113
..turnin 24491
..accept 24492
step
goto 61.8,22.5
.talk 37087
..accept 24493
step
goto 59.7,21.0
.click Leftover Boar Meat##114 |tip They are on this small square table.
.get Leftover Boar Meat##49756 |q 24492/3
step
goto 60.2,16.5
.click Beer Barrel##32 |tip It's sitting on the ground in the corner.
.get Coldridge Beer Flagon##49754 |q 24492/1
step
 goto 61.5,13.2
.click Wolf-Hide Cloak##286 |tip It's upstairs next to some barrels of explosives.
.get Ragged Wolf-Hide Cloak##57541 |q 24492/2
step
 goto 69.9,44.21
.talk 37113
..turnin 24492
.' You will fly to Kharanos |goto 53.3,49.8,0.5 |noway |c
step
goto Dun Morogh 53.1,50.0
.talk 1872
..turnin 24493
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Gnome (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('Gnome') and level<=5
condition suggested !exclusive
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)
startlevel 1
dynamic on
step
goto Dun Morogh/10 34.0,32.2
.talk 45966
..accept 27670
step
goto 39.9,32.0
.kill 6 Crazed Leper Gnome##46391+ |q 27670/1
step
goto 34.0,32.2
.talk 45966
..turnin 27670
..accept 28167
step
goto 50.9,31.9
.talk 47250
..turnin 28167
..accept 27671
step
goto 61.3,34.8
.' Use your Teleport Beacon on Survivors |use Teleport Beacon##62057 |modelnpc 46268
.' Rescue 6 Survivors |q 27671/1
step
goto 50.9,31.9
.talk 47250
..turnin 27671
..accept 28169
step
ding 2
step
goto 53.1,82.2
.talk 46274
..turnin 28169
..accept 27635
step
goto 58.8,81.7
.click Sanitron 500
.' Complete Decontamination Process |q 27635/1
|modelnpc Sanitron 500##46185
step
goto 66.3,81.6
.talk 46255
..turnin 27635
..accept 27674
step
goto 67.2,84.0
.talk 46293
..' Tell him to send you to the surface |goto New Tinkertown |noway |c
step
goto New Tinkertown 39.5,38.4
.talk 42396
..turnin 27674
..accept 26202 |only Gnome Warlock
..accept 26197 |only Gnome Mage
..accept 26203 |only Gnome Warrior
..accept 26206 |only Gnome Rogue
..accept 26199 |only Gnome Priest
..accept 31135 |only Gnome Monk
step
goto 39.4,28.4
.talk 42323
..turnin 26199
..accept 26422
only Gnome Priest
step
goto 38.0,33.6
.talk 42366
..turnin 26206
..accept 26423
only Gnome Rogue
step
goto 40.6,35.4
.talk 42324
..turnin 26203
..accept 26425
only Gnome Warrior
step
goto 41.1,29.1
.talk 42331
..turnin 26197
..accept 26421
only Gnome Mage
step
goto 37.7,38.0
.talk 460
..turnin 26202
..accept 26424
only Gnome Warlock
step
goto 40.1,35.6
.talk 63238
..turnin 31135
..accept 31137
only Gnome Monk
step
goto 38.7,32.8
.talk 42317
..turnin 31137 |only Gnome Monk
..turnin 26424 |only Gnome Warlock
..turnin 26421 |only Gnome Mage
..turnin 26425 |only Gnome Warrior
..turnin 26423 |only Gnome Rogue
..turnin 26422 |only Gnome Priest
..accept 26208
.' Watch the dialogue
.' Learn about Operation: Gnomeregan |q 26208/1
step
goto 38.8,32.7
.talk 42317
..turnin 26208
..accept 26566
step
goto 40.6,28.1
.talk 42553
..turnin 26566
..accept 26222
step
goto 37.6,30.8
.click Spare Part##6681+
.get 7 Spare Part |q 26222/1
step
goto 40.6,28.1
.talk 42553
..turnin 26222
..accept 26205
step
goto 39.2,26.6
.talk 42611
..accept 26264
step
goto 38.2,40.2
.talk 42630
..accept 26265
step
goto 37.1,50.6
.kill 6 Living Contamination##42185+ |q 26265/1
.from Toxic Sludge##42184+
.get 6 Recovered Possession |q 26264/1
.' Stand next to Toxic Pools |tip They look like green spots on the ground that spew liquid around this area.
.' Clean 5 Toxic Pools |q 26205/1
step
ding 3
step
goto 38.2,40.2
.talk 42630
..turnin 26265
step
goto 39.4,28.4
.talk 42323
..accept 26200
only Gnome Priest
step
goto 41.0,34.9
.' Use your Shadow Word: Pain ability on the Training Dummies.
.' Practice casting Shadow Word: Pain 5 times |q 26200/2
only Gnome Priest
|modelnpc Training Dummy##44548
step
goto 38.0,33.6
.talk 42366
..accept 26207
only Gnome Rogue
step
goto 41.0,34.9
.' Use Sinister Strike on the Training Dummies to build up combo points, then use Eviscerate on the Training Dummies
.' Practice using Eviscerate 3 times |q 26207/2
only Gnome Rogue
|modelnpc Training Dummy##44548
step
goto 40.6,35.4
.talk 42324
..accept 26204
only Gnome Warrior
step
goto 41.0,34.9
.' Use your Charge ability on the Training Dummy
.' Practice using Charge |q 26204/2
only Gnome Warrior
|modelnpc Training Dummy##44548
step
goto 41.1,29.1
.talk 42331
..accept 26198
only Gnome Mage
step
goto 41.0,34.9
.' Use Frost Nova on the Training Dummies.
.' Practice casting Frost Nova 2 times |q 26198/2
only Gnome Mage
|modelnpc Training Dummy##44548
step
goto 37.7,38.0
.talk 460
..accept 26201
only Gnome Warlock
step
goto 41.0,34.9
.' Use your Corruption ability on a Training Dummy
.' Practice Casting Corruption 5 Times |q 26201/2
only Gnome Warlock
|modelnpc Training Dummy##44548
step
goto 40.1,35.6 
.talk 63238
..accept 31138
only Gnome Monk
step
goto 41.0,34.9
.' Use your Tiger Palm ability on the Training Dummy.
.' Practice Tiger Palm 2 times. |q 31138/2
|modelnpc Training Dummy##44548
only Gnome Monk
step
goto 40.1,35.6 
.talk 63238
..turnin 31138
only Gnome Monk
step
goto 40.6,28.1
.talk 42553
..turnin 26205
step
goto 39.2,26.6
.talk 42611
..turnin 26264
step
goto 38.4,33.5
.talk 42489
..accept 26316
step
goto 39.4,28.4
.talk 42323
..turnin 26200
only Gnome Priest
step
goto 38.0,33.6
.talk 42366
..turnin 26207
only Gnome Rogue
step
goto 41.1,29.1
.talk 42331
..turnin 26198
only Gnome Mage
step
goto 37.7,38.0
.talk 460
..turnin 26201
only Gnome Warlock
step
goto 40.6,35.4
.talk 42324
..turnin 26204
only Gnome Warrior
step
goto 37.3,65.2
.talk 42708
..turnin 26316
..accept 26285
..accept 26284
step
goto 36.8,68.4
.from Rockjaw Marauder##42222+, Rockjaw Bonepicker##42221+
.get 7 Stolen Powder Keg |q 26285/1
.' Attack Makeshift Cages to destroy them |tip They look like bone cages with brown animal hides laying on them around this area.
.' Rescue 6 Captured Demolitionists |q 26284/1
|modelnpc Captured Demolitionists##42645
step
goto 37.3,65.2
.talk 42708
..turnin 26285
..turnin 26284
..accept 26318
step
ding 4
step
.' Enter the cave |goto 34.1,66.5 <5 |c
step
goto 25.9,65.8
.' Follow the path to the back of the cave
.kill Boss Bruggor##42773 |q 26318/2
step
goto 27.1,64.7
.click Detonator##9277
.' Detonate the Trogg Tunnel |q 26318/1
step
'|goto 31.9,49.2 |n
.' Leave the cave |goto 34.1,66.5 <10 |noway |c
step
goto 37.3,65.2
.talk 42708
..turnin 26318
..accept 26329
step
goto 38.8,32.7
.talk 42317
..turnin 26329
..accept 26331
step
goto 38.2,33.7
.talk 42491
..accept 26333
step
goto 53.2,24.0
.from Irradiated Technician##42223+
.' Kill 8 Crushcog's Minions |q 26331/1
.' Use your Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200 |tip They look like yellow crab machines around this area.
.' Destroy 5 Repaired Mechano-Tanks |q 26333/1
step
goto 38.8,32.7
.talk 42317
..turnin 26331
step
goto 38.2,33.7
.talk 42491
..turnin 26333
step
goto 38.0,33.6
.talk 42366
..accept 26339
step
ding 5
step
goto 48.7,52.9
.talk 42353
..turnin 26339
..accept 26342
step
goto 53.5,45.8
.' Use your Paintinator on Crushcog Sentry-Bots |use Paintinator##58203 
.' Blind 5 Crushcog's Sentry-Bots |q 26342/1
|modelnpc 42291
step
goto 48.7,52.9
.talk 42353
..turnin 26342
..accept 26364
step
goto 57.2,47.5
.talk 42849
..' Tell him you're ready to start the assault
.' Use your Orbital Targeting Device to direct attacks onto Razlo Crushcog |use Orbital Targeting Device##58253
.' Defeat Razlo Crushcog |q 26364/1
|modelnpc Razlo Crushcog##42839
step
goto 48.7,52.9
.talk 42353
..turnin 26364
..accept 26373
step
goto Dun Morogh,49.9,45.0
.talk 42933
..accept 26380
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Human (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('Human') and level<=5
condition suggested !exclusive
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)
startlevel 1
dynamic on
step
goto Northshire 33.6,53.0
.talk 197
..accept 28757 |only Human Mage
..accept 28762 |only Human Paladin
..accept 28763 |only Human Priest
..accept 28764 |only Human Rogue
..accept 28765 |only Human Warlock
..accept 28766 |only Human Warrior
..accept 28767 |only Human Hunter
..accept 31139 |only Human Monk
step
goto 29.0,42.9
.kill 6 Blackrock Battle Worg##49871+ |q 28757/1 |only Human Mage
.kill 6 Blackrock Battle Worg##49871+ |q 28762/1 |only Human Paladin
.kill 6 Blackrock Battle Worg##49871+ |q 28763/1 |only Human Priest
.kill 6 Blackrock Battle Worg##49871+ |q 28764/1 |only Human Rogue
.kill 6 Blackrock Battle Worg##49871+ |q 28765/1 |only Human Warlock
.kill 6 Blackrock Battle Worg##49871+ |q 28766/1 |only Human Warrior
.kill 6 Blackrock Battle Worg##49871+ |q 28767/1 |only Human Hunter
.kill 6 Blackrock Battle Worg##49871+ |q 31139/1 |only Human Monk
step
goto 33.6,53.0
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
..turnin 31139 |only Human Monk
..accept 31140 |only Human Monk
step
ding 2
step
goto 25.4,41.1
.kill 8 Blackrock Spy##49874+ |q 28769/1 |only Human Mage |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28770/1 |only Human Paladin |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28771/1 |only Human Priest |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28772/1 |only Human Rogue |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28773/1 |only Human Warlock |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28774/1 |only Human Warrior |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 28759/1 |only Human Hunter |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy##49874+ |q 31140/1 |only Human Monk |tip They creep around near the trees around this area.
step
goto 33.6,53.0
.talk 197
..turnin 28769 |only Human Mage
..accept 3104 |only Human Mage |tip You need to be at level 3 to get this quest.
..turnin 28770 |only Human Paladin
..accept 3101 |only Human Paladin |tip You need to be at level 3 to get this quest.
..turnin 28771 |only Human Priest
..accept 3103 |only Human Priest |tip You need to be at level 3 to get this quest.
..turnin 28772 |only Human Rogue
..accept 3102 |only Human Rogue |tip You need to be at level 3 to get this quest.
..turnin 28773 |only Human Warlock
..accept 3105 |only Human Warlock |tip You need to be at level 3 to get this quest.
..turnin 28774 |only Human Warrior
..accept 3100 |only Human Warrior |tip You need to be at level 3 to get this quest.
..turnin 28759 |only Human Hunter
..accept 26910 |only Human Hunter |tip You need to be at level 3 to get this quest.
..turnin 31140 |only Human Monk
..accept 31141 |only Human Monk |tip You need to be at level 3 to get this quest.
step
ding 3
step
goto 38.8,43.5
.talk 198
..turnin 3104
..accept 26916
only Human Mage
step
goto 35.0,60.7
.' Use your Frost Nova ability on the Training Dummy
.' Practice Frost Nova 2 times |q 26916/2
|modelnpc Training Dummy##44548
only Human Mage
step
goto 38.8,43.5
.talk 198
..turnin 26916
..accept 28784
only Human Mage
step
goto 41.2,45.4
.talk 915
..turnin 3102
..accept 26915
only Human Rogue
step
goto 35.0,60.7
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 26915/2
|modelnpc Training Dummy##44548
only Human Rogue
step
goto 41.2,45.4
.talk 915
..turnin 26915
..accept 28787
only Human Rogue
step
goto 39.6,55.1
.talk 459
..turnin 3105
..accept 26914
only Human Warlock
step
goto 35.0,60.7
.' Use your Corruption ability on the Training Dummy
.' Practice using Corruption 5 times |q 26914/2
|modelnpc Training Dummy##44548
only Human Warlock
step
goto 39.6,55.1
.talk 459
..turnin 26914
..accept 28788
only Human Warlock
step
goto 34.8,54.8
.talk 43278
..turnin 26910
..accept 26917
only Human Hunter
step
goto 35.0,60.7
.' Use your Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 26917/1
|modelnpc Training Dummy##44548
only Human Hunter
step
goto 34.8,54.8
.talk 43278
..turnin 26917
..accept 28780
only Human Hunter
step
goto 39.3,43.8
.talk 375
..turnin 3103
..accept 26919
only Human Priest
step
goto 35.0,60.7
.' Use your Shadow Word: Pain ability on the Training Dummy
.' Practice Shadow Word: Pain 5 times |q 26919/2
|modelnpc Training Dummy##44548
 only Human Priest
step
goto 39.3,43.8
.talk 375
..turnin 26919
..accept 28786
only Human Priest
step
goto 41.5,53.2
.talk 925
..turnin 3101
..accept 26918
only Human Paladin
step
goto 35.0,60.7
.' Use your Seal of Command ability, then strike the Training Dummy |q 26918/2
only Human Paladin
step
goto 41.5,53.2
.talk 925
..turnin 26918
..accept 28785
only Human Paladin
step
goto 40.9,53.8
.talk 911
..turnin 3100
..accept 26913
only Human Warrior
step
goto 35.0,60.7
.' Use your Charge ability on a Training Dummy.
.' Practice Charge |q 26913/2
|modelnpc Training Dummy##44548
only Human Warrior
step
goto 40.9,53.8
.talk 911
..turnin 26913
..accept 28789
only Human Warrior
step
goto 41.2,52.1
.talk 63258
..turnin 31141
..accept 31142
only Human Monk
step
goto 35.0,60.7
.' Use your Tiger Palm ability on a Training Dummy
.' Practice Tiger Palm |q 31142/2
|modelnpc Training Dummy##44548
only Human Monk
step
goto 41.2,52.1
.talk 63258
..turnin 31142
..accept 31143
only Human Monk
step
goto 35.7,39.8
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
..turnin 31143 |only Human Monk
..accept 31144 |only Human Monk
step
goto 34.7,38.8
.talk 951
..accept 28813 |only Human Warrior
..accept 28809 |only Human Paladin
..accept 28806 |only Human Hunter
..accept 28810 |only Human Priest
..accept 28812 |only Human Warlock
..accept 28808 |only Human Mage
..accept 28811 |only Human Rogue
step
goto 30.7,29.1
.kill 8 Goblin Assassin##50039+ |q 28797/1 |only Human Warrior
.kill 8 Goblin Assassin##50039+ |q 28793/1 |only Human Paladin
.kill 8 Goblin Assassin##50039+ |q 28791/1 |only Human Hunter
.kill 8 Goblin Assassin##50039+ |q 28794/1 |only Human Priest
.kill 8 Goblin Assassin##50039+ |q 28796/1 |only Human Warlock
.kill 8 Goblin Assassin##50039+ |q 28792/1 |only Human Mage
.kill 8 Goblin Assassin##50039+ |q 28795/1 |only Human Rogue
.kill 8 Goblin Assassin##50039+ |q 31144/1 |only Human Monk
.clicknpc Injured Stormwind Infantry##50047
.' Revive 4 Injured Soldiers |q 28813/1 |only Human Warrior
.' Revive 4 Injured Soldiers |q 28809/1 |only Human Paladin
.' Revive 4 Injured Soldiers |q 28806/1 |only Human Hunter
.' Revive 4 Injured Soldiers |q 28810/1 |only Human Priest
.' Revive 4 Injured Soldiers |q 28812/1 |only Human Warlock
.' Revive 4 Injured Soldiers |q 28808/1 |only Human Mage
.' Revive 4 Injured Soldiers |q 28811/1 |only Human Rogue
step
goto 34.7,38.8
.talk 951
..turnin 28813 |only Human Warrior
..turnin 28809 |only Human Paladin
..turnin 28806 |only Human Hunter
..turnin 28810 |only Human Priest
..turnin 28812 |only Human Warlock
..turnin 28808 |only Human Mage
..turnin 28811 |only Human Rogue
step
goto 35.7,39.8
.talk 823
..turnin 28797 |only Human Warrior
..turnin 28793 |only Human Paladin
..turnin 28791 |only Human Hunter
..turnin 28794 |only Human Priest
..turnin 28796 |only Human Warlock
..turnin 28792 |only Human Mage
..turnin 28795 |only Human Rogue
..turnin 31144 |only Human Monk
..accept 28823 |only Human Warrior
..accept 28819 |only Human Paladin
..accept 28817 |only Human Hunter
..accept 28820 |only Human Priest
..accept 28822 |only Human Warlock
..accept 28818 |only Human Mage
..accept 28821 |only Human Rogue
..accept 31145 |only Human Monk
step
ding 4
step
goto 33.6,53.0
.talk 197
..turnin 28823 |only Human Warrior
..turnin 28819 |only Human Paladin
..turnin 28817 |only Human Hunter
..turnin 28820 |only Human Priest
..turnin 28822 |only Human Warlock
..turnin 28818 |only Human Mage
..turnin 28821 |only Human Rogue
..turnin 31145 |only Human Monk
..accept 26389
step
goto 33.4,54.7
.talk 9296
..accept 26391
step
goto 54.4,78.6
.from Blackrock Invader##42937+
.get 8 Blackrock Orc Weapon |q 26389/1
.' Use Milly's Fire Extinguisher on the fires in the area |use Milly's Fire Extinguisher##58362
.' Extinguish 8 Vineyard fires |q 26391/1
step
goto 33.4,54.7
.talk 9296
..turnin 26391
step
goto 33.6,53.0
.talk 197
..turnin 26389
..accept 26390
step
goto 65.1,48.1
.kill Kurtok the Slayer##42938 |q 26390/1
step
goto 33.6,53.0
.talk 197
..turnin 26390
..accept 54
step
ding 5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Death Knight (55-58)",[[
author support@zygorguides.com
condition invalid not raceclass('DeathKnight') !!Death Knight only.
condition suggested raceclass('DeathKnight') and not completedq(13188)
condition suggested !exclusive
condition end completedq(13188)
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)
startlevel 55
dynamic on
step
goto Plaguelands: The Scarlet Enclave,51.3,35.2
.talk 25462
..accept 12593
step
goto 48,28.5
.talk 28357
..turnin 12593
..accept 12619
step
goto 47.4,31
.click Battle-worn Sword##7961
.get Battle-worn Sword|n
.' Click the Battle-worn Sword in your bags next to a runeforge |use Battle-worn Sword##38607 |tip The Runforges look like big demon skull furnace things.
.get Runebladed Sword|q 12619/1
step
goto 48,28.5
.talk 28357
..turnin 12619
..accept 12842
step
goto 47.4,31
.' Use your Runeforging ability while standing near the Runeforge |cast Runeforging##53431 |tip They look like big skull furnaces.
.' Engrave your sword with the rune of your choice |goal Weapon emblazoned |q 12842/1
step
goto 48,28.5
.talk 28357
..turnin 12842
..accept 12848
step
goto 48.9,28.7
.use Runed Soulblade##38707
.click Acherus Soul Prison##8115
.complete 12848/1
step
goto 48,28.5
.talk 28357
..turnin 12848
..accept 12636
step
goto 51.3,35.2
.talk 25462
..turnin 12636
..accept 12641
step
goto 52.1,35.2
.click Eye of Acherus Control Mechanism##8123
..' You will take control over the Eye of Acherus |havebuff Spell_Shadow_UnholyFrenzy |q 12641
..' Your World Map will NOT show your current position anymore!
..' If you stay floating high enough, the soldiers will not attack you.
..' Once the Eye stops moving, go immediately northeast to the blacksmith building.
..' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the New Avalon Forge |goal New Avalon Forge Analyzed |q 12641/1
step
'Go south to the big fort
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze Scarlet Hold |goal Scarlet Hold Analyzed |q 12641/3
step
'Go west to the town hall building with the huge clock tower
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the New Avalon Town Hall |goal New Avalon Town Hall Analyzed |q 12641/2
step
'Go south to the small church
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the Chapel of the Crimson Flame |goal Chapel of the Crimson Flame Analyzed |q 12641/4
step
'Use your Recall Eye of Acherus ability to return to Ebon Hold |nobuff Spell_Shadow_UnholyFrenzy |petaction 5
step
goto 51.3,35.2
.talk 25462
..turnin 12641
..accept 12657
step
'Stand on the pink glowing circle at the bottom of the stairs to teleport to the bottom level of Ebon Hold |goto 50.1,32.5,0.3 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12657
..accept 12850
step
goto 47.5,26.5
.talk 28472
..accept 12849 |instant
step
goto 51.6,34.5
.talk 28510
..turnin 12850
..accept 12670
step
goto 52.1,35|n
.clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 52.3,34
.talk 28377
..turnin 12670
..accept 12678
step
goto 52.5,34.6
.talk 28653
..accept 12680
step
goto 54.6,34.2
.talk 29047
..accept 12733
step
'Walk around Death's Breach
.' Challenge Death Knight Initiates to duel
.' Defeat 5 Death Knights in a duel |goal 5 Death Knights defeated in a duel |q 12733/1
step
goto 54.6,34.2
.talk 29047
..turnin 12733
step
goto 53.2,36.9
.talk 28647
..accept 12679
step
goto 51.8,45.2
.kill 10 Scarlet Crusaders |q 12678/1
' |from Scarlet Captain##28611+, Scarlet Infantryman##28609+, Scarlet Medic##28608+, Scarlet Peasant##28557+
step
goto 55.2,46.2
.click Abandoned Mail##4851
..accept 12711 |instant
step
goto 56.4,45
.kill 10 Citizen of Havenshire##28660 |q 12678/2
step
goto 56.2,49.4
.click Saronite Arrow##8094+
.get 15 Saronite Arrow|q 12679/1
step
goto 55.6,43.2
|invehicle |clicknpc Havenshire Colt##28607 |c |q 12680
.' Run back to Death's Breach quickly
step
goto 52.5,34.6
.' Use your Deliver Stolen Horse ability on your bar when standing next to Salanar the Horseman |petaction Deliver Stolen Horse
.talk 28653
..turnin 12680
..accept 12687
step
goto 55.6,43.2
.from Dark Rider of Acherus##28768
.clicknpc Acherus Deathcharger##28782 |invehicle |c |tip They walk around on horses.
.' Run back to Death's Breach quickly
step
goto 52.5,34.6
.' Use your Deliver Stolen Horse ability on your bar when standing next to Salanar the Horseman |petaction Deliver Stolen Horse
.talk 28653
..turnin 12680
step
goto 52.8,43.7
.' Kill a Dark Rider of Acherus and steal his horse |invehicle |c |tip They walk around on horses.
.' Run back to Death's Breach
step
goto 52.5,34.6
.' Use your Horseman's Call ability to call Salanar the Horseman |petaction Horseman's Call
.' Complete the Horseman's Challenge |goal The Horseman's Challenge |q 12687/1
step
goto 52.5,34.6
.talk 28653
..turnin 12687
step
goto 52.3,34
.talk 28377
..turnin 12678
step
goto 53.2,36.9
.talk 28647
..turnin 12679
step
ding 56
step
goto 52.3,34
.talk 28377
..accept 12697
step
goto 54.1,35
.talk 28658
..turnin 12697
..accept 12698
step
goto 58.2,31
.' Use your Gift of the Harvester on Scarlet Miners inside this mine |use Gift of the Harvester##39253
.' Create 5 Scarlet Ghouls to follow you
.' Skip to the next step of the guide once you have 5 ghouls following you |confirm
step
goto 54.1,35
.' Stand next to Gothik the Harvester |tip Standing in front of a small roundish stone altar thing.  He has a goat skull on his head.
.' Return 5 Scarlet Ghouls
.talk 28658
..turnin 12698
..accept 12700
step
goto 52.3,34
.talk 28377
..turnin 12700
..accept 12701
step
goto 58.5,33
.click Inconspicuous Mine Car##7997 |tip It's a little mine car sitting next to an outhouse.
.' The miner takes you to a ship
.click Scarlet Cannon##245 |tip On the side of the ship.
.' Shoot the soldiers on the beach with the cannon
.kill 100 Scarlet Defender |q 12701/1
' |from Scarlet Fleet Defender##28834,Scarlet Fleet Guardian##28856,Scarlet Fleet Cannon##28850
step
'Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach |goto 52.6,34.5,0.5 |noway |petaction Skeletal Gryphon Escape |c
step
goto 52.3,34
.talk 28377
..turnin 12701
..accept 12706
step
goto 53.1,32.5|n
.clicknpc Scourge Gryphon##29501 |goto 51.1,34.7,0.5 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12706
..accept 12714
step
goto 52.1,35|n
.clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 53.5,36.6
.talk 28907
..turnin 12714
..accept 12715
step
goto 55.9,52.4
.talk 28919
..accept 12716
step
'Go southwest into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12715
..accept 12719
step
goto 54.7,57.4
.talk 28910
..accept 12722
step
goto 57.8,61.8
.click Empty Cauldron##7199 |tip In the basement of the building that looks like an inn.
.get Empty Cauldron|q 12716/1
step
goto 62,60.2
.click Iron Chain##8040 |tip It's inside the blacksmith house.
.get Iron Chain|q 12716/2
step
'Run around the town and do the following:
.kill 10 Scarlet Crusade Soldier |q 12722/1
' |from High Inquisitor Valroth##29001, Scarlet Commander##28936, Scarlet Commander Rodrick##29000, Scarlet Lord Jesseriah McCree##28964, Scarlet Preacher##28939, High Inquistor Valroth##29011, Scarlet Commander##54386, Scarlet Crusader##28940, Scarlet Marksman##28610
.get 10 Crusader Skull|q 12716/3
.kill 15 Citizen of New Avalon |q 12722/2
' |from Citizen of New Avalon##28942, Citizen of New Avalon##28941
step
goto 52.2,71.2
.kill Mayor Quimby##28945 |q 12719/1
step
goto 52.5,71
.click New Avalon Registry##928
.get New Avalon Registry|q 12719/2
step
'Go northeast into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12719
..accept 12720
step
goto 54.7,57.4
.talk 28910
..turnin 12722
step
goto 55.9,52.4
.talk 28919
..turnin 12716
..accept 12717
step
goto 56.1,52.1
.click Plague Cauldron##4271
..turnin 12717
step
goto 55.9,60.5
'Open the Ornate Jeweled Box in your bags |use Ornate Jeweled Box##39418
.' Equip the Keleseth's Persuader swords
.' Attack Scarlet soldiers and stop hitting them when they start talking, so you don't kill them too fast
.' Repeat until a soldier gives you information
.' Reveal the "Crimson Dawn" |goal "Crimson Dawn" Revealed |q 12720/1
step
'Go northwest into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12720
..accept 12723
step
goto 56.3,79.8
.talk 28914
..turnin 12723
..accept 12724
step
goto 56.3,80.2
.talk 28913
..accept 12725
step
'Go northeast into Scarlet Hold and into the basement to 63.0,67.8 |goto 63.0,67.8
.talk 28912
..turnin 12725
..accept 12727
step
'Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves
.' Stay inside the bubble, it reduces spell damage done to you, so you'll live
.from High Inquisitor Valroth##29001
.get Valroth's Head |q 12727/1
step
ding 57
step
'Go upstairs in the fort to 63.0,68.3 |goto 63.0,68.3
.click New Avalon Patrol Schedule##8051
.get New Avalon Patrol Schedule|q 12724/1
step
goto 56.3,79.8
.talk 28914
..turnin 12724
step
goto 56.3,80.2
.talk 28913
..turnin 12727
..accept 12738
step
goto 52.9,81.5
.talk 29053
..turnin 12738
..accept 12742 |only Human
..accept 12743 |only NightElf
..accept 12744 |only Dwarf
..accept 12745 |only Gnome
..accept 12746 |only Draenei
..accept 28649 |only Worgen
step
goto 54.5,83.4
.kill Valok the Righteous##29070 |q 12746/1
only Draenei
step
goto 54.2,83.9
.kill Yazmina Oakenthorn##29065 |q 12743/1
only NightElf
step
goto 53.9,83.8
.kill Goby Blastenheimer##29068 |q 12745/1
only Gnome
step
goto 53.5,83.8
.kill Ellen Stanbridge##29061 |q 12742/1
only Human
step
goto 54,83.3
.kill Donovan Pulfrost##29067 |q 12744/1
only Dwarf
step
goto 54.1,83.3
.kill Lord Harford##49355 |q 28649/1
only Worgen
step
goto 52.9,81.5
.talk 29053
..turnin 12742 |only Human
..turnin 12743 |only NightElf
..turnin 12744 |only Dwarf
..turnin 12745 |only Gnome
..turnin 12746 |only Draenei
..turnin 28649 |only Worgen
..accept 12751
step
goto 56.3,80.2
.talk 28913
..turnin 12751
step
goto 56.3,79.8
.talk 28914
..accept 12754
step
goto 60,78.5
.' Use your Makeshift Cover while standing on the edge of the hill |use Makeshift Cover##39645
.from Scarlet Courier##29076
.get Scarlet Courier's Belongings |q 12754/1
.get Scarlet Courier's Message |q 12754/2
step
goto 56.3,79.8
.talk 28914
..turnin 12754
..accept 12755
step
goto 65.6,83.8
.talk 29077
..turnin 12755
..accept 12756
step
goto 56.3,79.8
.talk 28914
..turnin 12756
..accept 12757
step
.click Portal to Acherus##8046
.' Arrive at Acherus |goto 50.2,32.6,0.5 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12757
..accept 12778
step
goto 52.1,35 |n
.clicknpc Scourge Gryphon##29488
.' Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 53.6,36.9
.talk 29110
..turnin 12778
..accept 12779
step
'Click the Horn of the Frostbrood in your bags |use Horn of the Frostbrood##39700
.' This will summon a dragon for you to ride around on
.' Fly and and use your dragon abilities to do the following:
.kill 150 Scarlet Soldiers |q 12779/1
' |from Hearthglen Crusader##29102, Tirisfal Crusader##29103
.kill 10 Scarlet Ballista##29104+ |q 12779/2
step
'Fly back to Death's Breach and jump off the dragon |script VehicleExit() |outvehicle |c
step
goto 53.6,36.9
.talk 29110
..turnin 12779
..accept 12800
step
goto 50.4,31.9|n
.' The path over to Browman Mill starts here |goto 50.4,31.9,0.5 |noway |c
step
'Follow the path northwest to 33.9,30.4 |goto 33.9,30.4
.talk 31082
..turnin 12800
..accept 12801
step
goto 34.4,31.1
.talk 29173
.' Tell him you are ready for the siege (you may be unable to do this if someone else already has, don't worry)
.' Wait for the battle to start in 5 minutes
.' Help fight the epic battle
.' Uncover The Light of Dawn |goal The Light of Dawn Uncovered |q 12801/1
step
'Talk to Highlord Darion Mograine after the battle
..turnin 12801
..accept 13165
step
'Use your new Death Gate spell and click the purple portal to go to Ebon Hold |goto Eastern Plaguelands,83.7,50.0,0.5 |cast Death Gate##50977 |noway |c
step
goto 83.4,49.4
.talk 29173
..turnin 13165
..accept 13166
step
'Stand on the purple circle to teleport upstairs |goto 82.7,47.8,0.5 |noway |c
step
goto 83,48
.kill 10 Scourge |q 13166/2
' |from Terrifying Abomination##31098, Scourge Necromancer##31096, Val'kyr Battle-maiden##31095
.kill Patchwerk##31099|q 13166/1
step
'Stand on the purple circle to teleport downstairs |goto 83.0,48.4,0.5 |noway |c
step
goto 83.4,49.4
.talk 31084
..turnin 13166
..accept 13188
step
ding 58
step
.click Portal to Stormwind |goto Elwynn Forest |noway |c
step
'Go inside Stormwind City |goto Stormwind City |noway |c
step
goto 85.8,31.7
.talk 29611
..turnin 13188
step
|fly Nethergarde Keep
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)
startlevel 5.10
dynamic on
step
goto Elwynn Forest,45.6,47.7
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
|fly Stormwind
|only Human
step
goto Stormwind City,77.2,61.0
.talk 1323
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
|fly Goldshire, Elwynn
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
ding 6
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
ding 7
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
goto Elwynn Forest,42.1,65.9
.talk 240
..' Tell him you wish to ride the Stormwind charger
.' Ride the horse to the east side of Elwynn Forest |goto 73.9,72.5,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-14)
startlevel 7.2
dynamic on
step
goto Elwynn Forest,74.0,72.2
.talk 261
..turnin 35
..accept 37
..accept 52
step
goto 74.0,72.3
.click Bounty Board##2491
..accept 46
..accept 26152
step
goto 79.5,68.7
.talk 278
..accept 83
step
goto 78.7,67.1
.kill James Clark##13159 |q 26152/1
.collect Gold Pickup Schedule##1307 |n
.' Click the Gold Pickup Schedule in your bags |use Gold Pickup Schedule##1307
..accept 123
step
goto 81.4,66.1
.talk 10616
..accept 5545
step
goto 81.8,66.0
.talk 42256
..turnin 26152
..turnin 123
..accept 147
step
ding 8
step
goto 72.7,60.3
.click Half-Eaten body##14
..turnin 37
..accept 45
step
goto 75.1,56.3
.from Rogue Wizard##474+
.get 6 Linen Scrap |q 83/1
step
goto 79.8,55.5
.click Rolf's Corpse##14
..turnin 45
..accept 71
step
goto 77.6,59.0
.from Murloc Lurker##732+, Murloc Forager##46+
.get 8 Torn Murloc Fin |q 46/1
step
ding 9
step
goto 80.9,61.5
.kill 8 Prowler or Forest Wolf |q 52/1
.kill 5 Young Forest Bear##822 |q 52/2
.click Bundles of Wood##1248+
.get 8 Bundle of Wood |q 5545/1
.' You can find more Prowlers and Young Forest Bears around [Elwynn Forest,87.8,64.7]
' |from Gray Forest Wolf##1922, Greypaw##44256, Gonzalez##43294  // model viewer
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
ding 10
step
goto 24.6,78.2
.click Wanted Poster##17
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
.click the Westfall Deed##8032 |tip It's a rolled up scroll in the hand of a dead body on the ground.
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-14)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (14-15)
startlevel 10.7
dynamic on
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
..' Offer them a couple copper and ask them who killed the Furlbrows
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
.from Riverpaw Gnoll##117+, Riverpaw Scout##500+
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
ding 11
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
.click Fresh Dirt##20
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
.kill 12 Kobold Digger##1236+ |q 26229/1
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
.' You can find more Fleshrippers around [Westfall,59.1,32.5]
step
ding 12
step
goto 55.5,32.0
.kill 10 Harvest Watcher##114+ |q 26237/1
.collect Harvest Watcher Heart##57935 |n
.' Click the Harvest Watcher Heart in your bags |use Harvest Watcher Heart##57935
..accept 26252
.click Okra##371
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
.kill 25 Energized Harvest Reaper##42342+ |q 26257/2
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
ding 13
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
.kill Jango Spothide##42653  |q 26288/3
step
goto 63.4,76.2
.kill 5 Riverpaw Mystic##453+ |q 26288/1
.kill 5 Riverpaw Taskmaster##98+ |q 26288/2
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
.click Informational Pamphlet##8128
.get Informational Pamphlet |q 26295/1
step
goto 41.3,66.5
.click Mysterious Propaganda##9669
.get Mysterious Propaganda |q 26295/4
step
goto 43.3,69.9
.click The Moonbrook Times##204015
.get Issue of the Moonbrook Times |q 26295/2
step
goto 43.5,66.6
.click Secret Journal##8135
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
ding 14
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (14-15)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (15-16)
startlevel 14.4
dynamic on
step
goto Westfall,30.5,85.6
.talk 392
..turnin 26371
..accept 26348
..accept 26347
..accept 26349
step
goto 32.8,82.6
.from Old Murk-Eye##391 |tip He's a gray murloc that walks along this beach, so you may need to search for him.
.get Scale of Old Murk-Eye |q 26349/1
..kill 7 Murloc Tidehunter##127+ |q 26348/1
..kill 7 Murloc Oracle##517+ |q 26348/2
.collect Captain Sanders' Treasure Map##1357 |n
.' Click Captain Sanders' Treasure Map in your bags |use Captain Sanders' Treasure Map##1357
..accept 26353
.' You can find more Murloc Tidehunters and Murloc Oracles at [Westfall,28.9,73.9]
step
goto 25.9,47.8
.click Captain's Footlocker##8
..turnin 26353
..accept 26354
step
goto 40.5,47.8
.click Broken Barrel##9
..turnin 26354
..accept 26355
step
goto 40.2,45.8
.from Chasm Slime##42669+
.get 5 Chasm Ooze |q 26347/1
step
goto 40.6,17.0
.click Old Jug##7
..turnin 26355
..accept 26356
step
goto 26.0,16.9
.click Locked Chest##1
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
ding 15
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
|fly Eastvale Logging Camp
step
'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)
startlevel 5.4
dynamic on
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
.buy 1 Rhapsody Malt##2894 |q 384/2
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
goto 56.0,48.4
.from Crag Boar##1125+
.get 4 Tender Boar Rib |q 384/1
.buy 1 Rhapsody Malt##2894 |q 384/2
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
.kill 5 Frostmane Seer##41121+ |q 25724/1
.kill 7 Frostmane Snowstrider##41122+ |q 25724/2
.click Shimmerweed Basket##644+
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
ding 6
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
.click Pilfered Supplies##335
.talk 40991
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Dunstan |q 313/1
step
goto 49.2,47.8
.click Pilfered Supplies##335
.talk 40994
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Lewin |q 313/2
step
goto 49.3,44.3
.click Pilfered Supplies##335
.talk 41056
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Valgrum |q 313/3
step
goto 48.3,47.0
.kill 10 Wendigo |q 25667/1
.click Pilfered Supplies##335
.get 6 Pilfered Supplies |q 25668/1
' |from Young Wendigo##40940
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
ding 7
step
goto 57.3,56.8
.from Frostmane Scavenger##41146+
.get 8 Gyromechanic Gear |q 412/1
.' Use the Rune of Fire in your bags next to Constriction Totems |use Rune of Fire##56009 |tip They look like wooden spiked rods with green orbs at the top of them around this area.
.' Burn 4 Constriction Totems |q 25792/1
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
.clicknpc Ultrasafe Personnel Launcher##41398
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
goto 64.5,54.4
.' Use your Signal Flare while standing in this circle of stones on the ground |use Signal Flare##56048
.' Attack the Northern Frostmane Retreat |q 25841/1
step
goto 63.8,55.7
.kill Battok the Berserker##41284 |q 25840/1
step
goto 63.3,57.3
.' Use your Signal Flare in this spot |use Signal Flare##56048
.' Attack the Southern Frostmane Retreat |q 25841/2
step
goto 62.7,55.1
.kill 5 Frostmane Warrior##41258+ |q 25840/2
.' Use your Viewpoint Equalizer to shrink Frostmane Builders |use Viewpoint Equalizer##67249
.' Shrink 5 Frostmane Builders |q 28868/1
|modelnpc Frostmane Builder##41251
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
ding 8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)
startlevel 8.2
dynamic on
step
goto Dun Morogh,69.2,51.3 |n
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
goto 76.3,54.7
.talk 1254
..turnin 25933
..accept 432
step
goto 76.2,53.0
.talk 50631
..accept 25937
step
goto 77.7,55.0 |n
.' Enter the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 78.2,53.3
.kill 8 Rockjaw Skullthumper##1115+ |q 432/1
.kill 8 Rockjaw Bonesnapper##1117+ |q 432/2
.click Frozen Artifact##6752+
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
ding 9
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
.kill 6 Helm's Bed Surger##41762+ |q 25979/1
.' Attack Icy Tombs
.' Free 6 Frozen Mountaineers |q 25978/1
|modelnpc Icy Tomb##41768
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
.kill 5 Dark Iron Spy##6123+ |q 25997/1
step
goto 82.9,48.4
.talk 41786
..turnin 25997
..accept 25998
step
ding 10
step
goto 75.2,52.8
.clicknpc Mathel's Flying Machine##41848
.' You will fly to Ironforge Airfield |goto 76.0,16.8,0.5 |noway |c
step
goto 78.3,20.5
.talk 41853
..turnin 25998
..accept 26078
step
goto 78.3,24.6
.' Use the Firefighting Gear on fires that are on the runway |use Firefighting Gear##56803
.' Extinguish 6 Fires |q 26078/1
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
.clicknpc Repaired Bomber##42092
.' Use Iron Hammer Bomb on the Dark Iron forces below |use Iron Hammer Bomb##56814
.' Kill 30 Dark Iron Attackers |q 26094/1
step
goto 78.3,20.5
.talk 41853
..turnin 26094
..accept 26102
step
goto 78.5,34.4
.kill Dark Iron Golem##42008 |n
.kill General Grimaxe##42010 |q 26102/1
step
goto 78.3,20.5
.talk 41853
..turnin 26102
..accept 26112
step
'Hearth to Thunderbrew Distillery |goto 54.5,50.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.7,50.8
.talk 1699
..accept 6387
step
goto 53.8,52.8
.talk 43701
..turnin 6387
..accept 6391
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto 51.6,26.4
.talk 4256
..turnin 6391
..accept 6388
step
goto Ironforge,41.4,52.3
.talk 1959
..accept 26131
step
goto 39.9,57.2
.talk 42129
..turnin 26112
..accept 26118
step
goto 36.6,43.2
.' Use the Sturdy Manacles on Ambassador Slaghammer |use Sturdy Manacles##56837
.' Take Ambassador Slaghammer to [Ironforge,43.6,50.6]
.' Arrest Ambassador Slaghammer and bring him to the High Seat |q 26118/1
|modelnpc Ambassador Slaghammer##42146
step
goto 39.9,57.2
.talk 42129
..turnin 26118
step
goto 55.5,47.7
.talk 1573
..turnin 6388
..accept 6392
.' Fly to Kharanos |goto Dun Morogh 53.7,52.7 <5 |noway |c
step
goto 54.8,50.7
.talk 1699
..turnin 6392
step
|fly Thelsamar
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)
startlevel 10.75
dynamic on
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26131 |tip You will only be able to turn in this quest if you completed the Dun Morogh Guide.
..accept 26854
step
goto 12.7,58.5 |n
.' Enter the tunnel |goto 12.7,58.5,0.5 |noway |c
step
goto Dun Morogh,87.6,50.1
.click A Dwarven Corpse##211
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
ding 11
step
goto 23.3,74.9
.talk 1089
..accept 26145
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 31.5,74.6
.kill 12 Stonesplinter Trogg##1161+ |q 26146/1
.get 8 Trogg Stone Tooth##2536 |q 26145/1
|modelnpc Stonesplinter Scout##1162
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
.kill Grawmug##42230 |q 26148/1
step
goto 35.5,64.9
.kill 8 Stonesplinter Bonesnapper##1164 |q 26147/2
.kill 8 Stonesplinter Shaman##1197 |q 26147/1
step
ding 12
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)
startlevel 12.55
dynamic on
step
goto Loch Modan 35.1,46.6
.talk 1340
..turnin 26176 |tip You will only be able to turn in this quest if you completed the Loch Modan 10-12 section.
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
.click Wanted! Poster##17
..accept 13648
step
goto 41.4,39.0
.click Stolen Explorers' League Document##8032
..accept 13655
step
goto 34.6,29.6
.from Black Bear##1186+
.get 8 Bear Rumps |q 26860/1
.kill 8 Forest Lurker##1195+ |q 25118/1
.' You can find more:
.' Around [Loch Modan,29.8,17.3]
.' Around [Loch Modan,39.8,52.3]
step
goto 26.9,56.3
.from Mosshide Scout##44161+, Mosshide Basher##44162+
.get 12 Mosshide Ear |q 26842/1
.' You can find more around [Loch Modan,27.3,43.8]
step
ding 13
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
goto 37.2,46.3
.talk 1153
..turnin 13655
step
goto 40.7,58.4 |n
.' Follow the path up |goto 40.7,58.4,0.5 |noway |c
step
goto 36.8,61.1
.kill Gorick Guzzledraught##33456 |q 13648/1
.click Stolen Explorers' League Document##8032
..accept 13656
step
goto 37.2,46.3
.talk 1153
..turnin 13656
step
goto 34.6,44.5
.talk 1139
..turnin 13648
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)
startlevel 13.94
dynamic on
step
goto Loch Modan,25.4,18.0
.talk 1343
..turnin 13636 |tip You will only be able to turn in this quest if you completed the Loch Modan 12-13 section.
..accept 26843
step
ding 14
step
goto 26.2,31.8
.kill "Commander" Nazrim##44197 |q 26843/1
step
goto 25.4,18.0
.talk 1343
..turnin 26843
..accept 26844
step
goto 35.5,12.5
.kill 5 Tunnel Rat Forager##1176 |q 26844/2
.kill 5 Tunnel Rat Surveyor##1177 |q 26844/1
.' There are more deeper in, around [Loch Modan,35.3,16.1]
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
.' Click Miner's League Crates and get Miners' Gear |model Miners' League Crate##36
.from Foreman Sharpsneer##44198
.get Foreman Sharpsneer's Head |q 26845/1
step
goto 35.5,27.8
.kill 5 Tunnel Rat Geomancer##1174+ |q 26846/1
.' Click Miner's League Crates and get Miners' Gear |model Miners' League Crate##36
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
'Hearth to Stoutlager Inn |goto 35.5,48.3,1 |use Hearthstone##6948 |noway |c
step
goto 35.1,46.6
.talk 1340
..turnin 26864
..accept 26927
step
goto 34.8,49.1
.talk 44345
..turnin 26927
..accept 26928
..accept 26929
step
goto 35.1,46.6
.talk 1340
..accept 26932
step
goto 42.5,39.5
.from Bluegill Wanderer##44176+, Bluegill Mudskipper##44292+
.get 7 Murloc Scent Gland |q 26928/1
step
ding 15
step
goto 50.8,62.8
.from Loch Crocolisk##1693+
.get 6 Intact Crocolisk Jaw |q 26929/1
.kill 8 Loch Buzzard##44184 |q 26932/1
step
goto 45.7,64.1 |n
.' Follow the path up |goto 45.7,64.1,0.5 |noway |c
step
goto 35.1,46.6
.talk 1340
..turnin 26932
step
goto 34.8,49.1
.talk 44345
..turnin 26928
..accept 26868
..turnin 26929
step
'Use Cannary's Cache |use Cannary's Cache##60681
.collect Clever Plant Disguise Kit##60502 |q 26868
.collect Potent Murloc Pheromones##60503 |q 26868
step
goto 49.9,57.7
.' Use your Clever Plant Disguise Kit |use Clever Plant Disguise Kit##60502
.' Wear your Clever Plant Disguise |havebuff Interface\Icons\Ability_Stealth |c |q 26868
step
goto 50.5,55.9
.' Use your Potent Murloc Pheromones on the Mosshide Representative |use Potent Murloc Pheromones##60503 |tip He's a gnoll.
.' Tag the Mosshide |q 26868/1
step
goto 45.7,64.1 |n
.' Follow the path up |goto 45.7,64.1,0.5 |noway |c
step
goto 34.8,49.1
.talk 44345
..turnin 26868
step
goto 37.2,47.4
.talk 1105
..accept 13639
step
goto 56.4,66.0
.' Go to this spot
.' Find Huldar, Miran, and Saean |q 13639/1
|modelnpc Huldar##2057
|modelnpc Miran##1379
step
goto 56.4,66.0
.talk 2057
..turnin 13639
..accept 309
.' Kill the Dark Iron dwarves that attack
.from Saean##1380
.' Protect the Ironband Caravan |q 309/1
step
goto 64.9,66.7
.talk 1345
..accept 26961
step
ding 16
step
goto 65.3,66.0
.talk 1344
..turnin 309
..accept 13650
step
goto 67.2,68.7 |n
.' Follow this path |goto 67.2,68.7,0.5 |noway |c
step
goto 69.9,67.6 |n
.' Follow the path up |goto 69.9,67.6,0.5 |noway |c
step
goto 68.1,66.1
.click Stolen Explorers' League Document##8032
..accept 13658
step
goto 70.7,67.6
.' Go to this spot
.' Inspect the Artifact of the Broken Tablet |q 13650/1
step
goto 72.7,65.5
.' Go to this spot
.' Inspect the Artifact of the Overdressed Woman |q 13650/3
step
goto 70.1,60.0
.' Go to this spot
.' Inspect the Artifact of the Upturned Giant |q 13650/2
step
goto 70.3,61.9
.from Stonesplinter Digger##1167+, Stonesplinter Geomancer##1165+
.get 8 Carved Stone Idol |q 26961/1
step
goto 65.3,66.0
.talk 1344
..turnin 13650
step
goto 64.9,66.7
.talk 1345
..turnin 26961
..accept 13647
step
goto 66.4,51.9 |n
.' Follow this road |goto 66.4,51.9,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)
startlevel 16.66
dynamic on
step
goto Loch Modan,82.8,63.5
.talk 44859
..accept 27025
step
goto 81.8,61.7
.talk 1154
..turnin 13647 |tip You will only be able to turn in this quest if you completed the Loch Modan 13-16 section.
..accept 27028
..accept 27030
step
goto 81.6,64.8
.talk 6577
..accept 27031
step
goto 81.9,64.6
.talk 1156
.home Farstrider Lodge
step
goto 83.5,65.4
.talk 1187
..accept 27016
step
goto 78.3,65.5
.from Golden Eagle##44628+
.get 3 Pristine Flight Feather |q 27031/1
step
goto 73.2,35.9
.click Stolen Explorers' League Document##8032
..accept 13659
step
goto 74.9,44.6
.from Hill Fox##44635+
.get 7 Fluffy Fox Tail |q 27030/1
.' Click Stabthistle Seed
.get 6 Stabthistle Seed |q 27025/1
|modelnpc Stabthistle Seed##190459
step
goto 53.7,38.1
.click Stolen Explorers' League Document##8032
..accept 13660
step
goto 61.4,42.0
.from Marsh Hornet##44620+
.get 6 Glassy Hornet Wing |q 27028/1
.kill 10 Mudbelly Boar##44627+ |q 27016/1
step
ding 17
step
'Hearth to The Farstrider Lodge |goto 81.9,64.6,1 |use Hearthstone##6948 |noway |c
step
goto 81.6,64.8
.talk 6577
..turnin 27031
..accept 27032
step
goto 82.8,63.5
.talk 44859
..turnin 27025
..accept 27026
step
goto 81.8,61.7
.talk 1154
..turnin 27028
..turnin 27030
step
goto 83.5,65.4
.talk 1187
..turnin 27016
step
goto 81.9,64.6
.talk 1156
..accept 27036
step
goto 79.2,67.2
.kill 8 Bobcat##44188+ |q 27026/1
.' You can find more Bobcats around [Loch Modan,72.0,72.0]
step
goto 71.4,76.7 |n
.' Enter the cave |goto 71.4,76.7,0.5 |noway |c
step
goto 78.6,76.2
.' Follow the path inside the cave to the very end
.talk 44618
..turnin 27032
..accept 27033
step
goto 71.4,76.7 |n
.' Leave the cave |goto 71.4,76.7,0.5 |noway |c
step
goto 77.0,51.6 |n
.' Follow the path up |goto 77.0,51.6,0.5 |noway |c
step
goto 80.3,52.1
.from Ol' Sooty##1225
.get Ol' Sooty's Head |q 27036/1
step
goto 82.8,63.5
.talk 44859
..turnin 27026
step
ding 18
step
goto 81.7,64.7
.talk 6577
..turnin 27033
..accept 27034
step
goto 83.5,65.5
.talk 1187
..turnin 27036
..accept 27037
step
goto 81.9,64.6
.talk 1156
..turnin 27037
step
goto 58.5,29.1
.talk 44870
..turnin 27034
..accept 27035
step
goto 50.6,23.8
.from Twilight Landshaper##44724
.' Destroy the Twilight Landshaper |q 27035/1
step
goto 58.5,29.1
.talk 44870
..turnin 27035
..accept 27074
step
goto 64.3,26.6
.talk 1073
..turnin 27074
..accept 27075
..accept 27077
step
goto 68.5,22.2
.kill 7 Mo'grosh Ogres |q 27075/1
.click Nascent Elementium##9836+
.get 10 Nascent Elementium Spike |q 27077/1
' |from Mo'grosh Darkmauler##44758+, Mo'grosh Earthbender##44760+
step
goto 64.1,26.6
.talk 1073
..turnin 27075
..turnin 27077
..accept 27078
step
goto 74.8,19.8 |n
.' Enter the cave |goto 74.8,19.8,0.5 |noway |c
step
goto 79.7,14.8
.kill Gor'kresh##44771a |q 27078/1
step
goto 74.8,19.8 |n
.' Leave the cave |goto 74.8,19.8,0.5 |noway |c
step
goto 64.3,26.6
.talk 1073
..turnin 27078
..accept 27115
step
ding 19
step
goto 58.5,29.1
.talk 44870
..turnin 27115
..accept 27116
.' You will fly to Algaz Station |goto 25.6,17.5,0.5 |noway |c |q 27116
step
goto 25.4,18.0
.talk 1343
..turnin 27116
step
'Hearth to The Farstrider Lodge |goto 81.9,64.6,1 |use Hearthstone##6948 |noway |c
step
goto 81.9,64.1
.talk 41332
.' Fly to Thelsamar, Loch Modan |goto 33.9,50.8,0.5 |noway |c
step
goto 37.3,47.8
.talk 1153
..turnin 13658
..turnin 13659
..turnin 13660
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (21-23)
startlevel 19.65
dynamic on
step
goto Wetlands,50.0,79.2
.talk 41075
..accept 25395
step
goto 49.9,79.2
.talk 41074
..accept 25211
step
goto 47.8,74.3
.click Mountaineer's Ale##7490
.get Mountaineer's Ale |q 25395/1
step
goto 47.7,76.3
.kill 5 Dragonmaw Orc |q 25211/1
' |from Dragonmaw Grunt##41072+
step
goto 49.9,79.2
.talk 41074
..turnin 25211
step
goto 50.0,79.2
.talk 41075
..turnin 25395
..accept 25770
step
goto 50.2,78.3 |n
.' Follow this tunnel to the other side |goto 50.2,78.3,0.5 |noway |c
step
goto 49.3,70.6 |n
.' Follow this tunnel to the other side |goto 49.3,70.6,0.5 |noway |c
step
goto 57.5,71.8
.talk 41086
..turnin 25770
..accept 25721
step
goto 57.5,71.4
.talk 41129
..accept 25722
step
goto 57.8,71.5
.talk 41128
..accept 25723
step
goto 61.7,70.4
.kill 10 Flood Elemental##41132 |q 25721/1
.from Displaced Threshadon##41137+
.get 8 Threshadon Chunk |q 25723/1
.click Sediment Deposit##49
.get 8 Flood Sediment Sample |q 25722/1
step
ding 20
step
goto 57.8,71.5
.talk 41128
..turnin 25723
..accept 25725
step
goto 57.5,71.4
.talk 41129
..turnin 25722
..accept 25726
step
goto 57.5,71.8
.talk 41086
..turnin 25721
..accept 25727
step
goto 56.0,73.7
.from Silty Oozeling##41145+
.get Dumpy Level |q 25726/1
step
goto 57.5,71.4
.talk 41129
..turnin 25726
..accept 25734
step
goto 63.8,78.2
.from Drungeld Glowerglare##41151 |tip He's in a small cave.
.get Glowerglare's Beard |q 25727/1
step
goto 61.6,74.7
.click Fenberries##28
.get 15 Handful of Fenberries |q 25725/1
step
goto 57.8,71.5
.talk 41128
..turnin 25725
..accept 25735
step
goto 57.5,71.8
.talk 41086
..turnin 25727
..accept 25733
step
goto 52.5,63.5 |n
.' Enter the cave |goto 52.5,63.5,0.5 |noway |c
step
goto 46.1,60.9 |n
.' Follow the path down |goto 46.1,60.9,0.5 |noway |c
step
goto 47.9,66.0
.click Thelgen Seismograph##2091
.get Thelgen Seismic Record |q 25734/1
step
goto 47.6,65.5
.from Torrention##41167
.collect 1 Floodsurge Core##55243 |n
.' Click the Floodsurge Core |use Floodsurge Core##55243
..accept 25736
step
goto 46.0,60.3
.kill 7 Cave Stalker##4040+ |q 25733/2
.click Incendicite Mineral Vein##384 |tip They look like pink ore deposits with pink smoke coming off of them on the ground inside this cave.
.get 8 Incendicite Ore |q 25735/1
step
goto 52.5,63.5 |n
.' Leave the cave |goto 52.5,63.5,0.5 |noway |c
step
goto 54.0,64.1
.kill 7 Leech Stalker##1111+ |q 25733/1
step
ding 21
step
goto 57.5,71.8
.talk 41086
..turnin 25733
..turnin 25736
step
goto 57.5,71.4
.talk 41129
..turnin 25734
step
goto 57.8,71.5
.talk 41128
..turnin 25735
step
goto 57.5,71.8
.talk 41086
..accept 25777
step
goto 57.1,71.7
.clicknpc Brisket##41260
.' You will ride to Menethil Harbor |goto 12.4,50.4,0.5 |noway |c |q 25777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (21-23)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (23-25)
startlevel 21.58
dynamic on
step
goto Wetlands,10.5,55.7
.talk 2104
..turnin 25777 |tip You may not have this breadcrumb quest to turn in.
..accept 25780
step
goto 9.9,57.6
.' Go to the top room of the fort
.kill Horghast Flarecrazed##41273 |q 25780/1
step
goto 10.5,55.7
.talk 2104
..turnin 25780
step
goto 11.1,57.8
.talk 41297
..accept 25800
step
goto 11.9,57.9
.talk 1484
..accept 25820
step
goto 10.9,59.7
.talk 1239
..accept 25815
step
goto 10.7,60.9
.talk 1464
.home Deepwater Tavern
step
goto 10.6,61.6
.click Fitzsimmons' Mead##1727 |tip It is in the basement of the Inn
.get Fitzsimmons' Mead |q 25815/1
step
goto 10.9,59.7
.talk 1239
..turnin 25815
..accept 25816
step
goto 13.1,53.5
.kill 10 Harbor Shredfin##41293+ |q 25820/1
.from Harbor Crawler##44116+
.get 5 Meaty Crawler Claw |q 25800/1
step
goto 11.1,57.8
.talk 41297
..turnin 25800
..accept 25801
..accept 25802
step
goto 11.9,57.9
.talk 1484
..turnin 25820
step
ding 22
step
goto 13.5,41.4
.click Damaged Crate##31
..turnin 25802
..accept 25803
step
goto 13.6,38.2
.click Seal Barrel##288
..turnin 25803
..accept 25804
step
goto 14.3,37.7
.from Gobbler##1259
.get Gobbler's Head |q 25801/2
step
goto 14.8,38.3
.kill 12 Bluegill Murlocs |q 25801/1
' |from Bluegill Murloc##41425+, Bluegill Oracle##41426+, Bluegill Forager##42111+, Bluegill Puddlejumper##42110+
step
goto 13.9,34.8
.click Half-buried Barrel##32
..turnin 25804
..accept 25805
step
goto 15.2,29.4
.talk 41307
..turnin 25816
..accept 25817
step
goto 14.2,28.3
.kill 5 Cursed Sailor##41428+ |q 25817/1
.kill 5 Cursed Marine##41427+ |q 25817/2
step
goto 15.2,29.4
.talk 41307
..turnin 25817
..accept 25818
step
goto 15.0,23.8
.from Captain Halyndor##41429
.get Intrepid Strongbox Key |q 25818/1
step
goto 14.4,24.0
.' Swim underwater to the very bottom of the ship
.click Intrepid's Locked Strongbox##318
..turnin 25818
..accept 25819
step
'Hearth to Deepwater Tavern |goto 10.7,60.9,1 |use Hearthstone##6948 |noway |c
step
goto 10.6,60.6
.talk 1217
..turnin 25819
step
goto 11.1,57.8
.talk 41297
..turnin 25801
..turnin 25805
step
goto 10.5,55.7
.talk 2104
..accept 26980
step
ding 23
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (23-25)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (25-26)
startlevel 23.00
dynamic on
step
goto Wetlands,26.8,26.7
.talk 41433
..accept 25856
step
goto 26.9,26.1
.talk 41415
..turnin 26980 |tip You may not have this breadcrumb quest to turn in.
..accept 25864
step
goto 26.8,25.9
.talk 41435
..accept 25854
step
goto 28.0,24.0
.from Wetlands Crocolisk##41419+
.get 10 Marshy Crocolisk Hide |q 25856/1
step
goto 35.1,20.6
.kill 8 Highland Raptors |q 25864/1
.click Wobbling Raptor Egg##9259+
.get 6 Wobbling Raptor Egg |q 25854/1
.' You can find more around [Wetlands,37.9,20.1]
' |from Highland Razormaw##41400, Highland Scytheclaw##41401
step
goto 26.8,25.9
.talk 41435
..turnin 25854
..accept 25855
step
goto 26.9,26.1
.talk 41415
..turnin 25864
..accept 25865
step
goto 26.8,26.7
.talk 41433
..turnin 25856
..accept 25857
step
goto 31.1,22.3
.from Horrorjaw##41420
.get Horrorjaw's Hide |q 25857/1
step
goto 31.7,29.4
.from Mosshide Mystic##41391+, Mosshide Gnoll##41390+
.get 8 Ironforge Ingot |q 25865/1
.click Swiftgear Gizmo##6314
.get 7 Swiftgear Gizmo |q 25855/1
step
goto 26.8,26.7
.talk 41433
..turnin 25857
step
goto 26.9,26.1
.talk 41415
..turnin 25865
..accept 25866
..accept 25867
step
goto 26.8,25.9
.talk 41435
..turnin 25855
step
goto 43.0,33.4
.kill 10 Dark Iron Trapper##41409 |q 25866/1
.collect Trapper's Key##56081 |n
.click Gnoll Cage##676+
.' Free 6 Gnolls |q 25867/1
step
goto 26.9,26.1
.talk 41415
..turnin 25866
..turnin 25867
..accept 25868
step
ding 24
step
goto 41.2,21.9
.kill Yorla Darksnare##41416 |q 25868/1
step
goto 26.9,26.1
.talk 41415
..turnin 25868
..accept 26981
step
goto 35.8,38.5 |n
.' Follow the path up |goto 35.8,38.5,0.5 |noway |c
step
goto 38.6,39.5
.talk 41412
..accept 25850
step
goto 38.8,39.7
.talk 41413
..accept 25853
step
goto 38.9,39.4
.talk 41411
..turnin 26981
..accept 25849
step
goto 34.2,41.0 |n
.' Follow the path up |goto 34.2,41.0,0.5 |noway |c
step
goto 34.8,45.3
.kill 7 Paleolithic Elemental##41389 |q 25850/1
.from Living Fossil##41388+
.get 20 Fossilized Bone |q 25849/1
.click Archaeologist's Tool##318+
.get 6 Archaeologist's Tools |q 25853/1
step
goto 38.6,39.5
.talk 41412
..turnin 25850
step
goto 38.8,39.7
.talk 41413
..turnin 25853
step
goto 38.9,39.4
.talk 41411
..turnin 25849
..accept 26189
step
goto 42.9,41.2 |n
.' Follow this path |goto 42.9,41.2,0.5 |noway |c
step
goto 53.4,54.5
.kill Gorfax Angerfang##46122 |q 26189/1
step
goto 48.2,47.1
.kill 16 Angerfang Dragonmaw |q 26189/2
' |from Dragonmaw Centurion##1036+, Dragonmaw Shadowwarder##1038+, Dragonmaw Bonewarder##1057+, Dragonmaw Raider##1034+
step
goto 38.9,39.4
.talk 41411
..turnin 26189
..accept 26195
step
ding 25
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (25-26)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-27)
startlevel 25.00
dynamic on
step
goto Wetlands,56.3,40.4
.talk 41503
..accept 25926
step
goto 56.4,39.9
.talk 41615
..turnin 26195 |tip You may not have this breadcrumb quest to turn in.
step
goto 56.4,39.8
.talk 41612
..accept 26120
step
goto 58.2,39.1
.talk 43993
.home Greenwarden's Grove
step
goto 54.8,34.9
.kill 10 Mouldering Mirebeast##41424 |q 25926/1
step
goto 56.3,40.4
.talk 41503
..turnin 25926
..accept 25927
step
goto 56.4,39.9
.talk 41615
..accept 25939
step
goto 59.5,33.7
.kill 8 Rampant Fire Elemental##41449+ |q 25927/1
.' Use your Blessed Floodlily next to fires on the ground |use Blessed Floodlily##56134
.' Extinguish 7 Marsh Fires |q 25939/1
step
goto 62.1,44.1
.kill 12 Dragonmaw Whelpstealer##42041 |q 26120/1
step
goto 56.3,40.4
.talk 41503
..turnin 25927
step
goto 56.4,39.9
.talk 41615
..turnin 25939
..accept 26196
step
goto 56.4,39.8
.talk 41612
..turnin 26120
step
goto 49.8,18.3
.talk 1071
..turnin 26196
..accept 26327
step
goto 49.4,17.2
.talk 42160
..turnin 26327
..accept 26127
step
goto 48.3,16.8
.kill 12 Twilight Convert##42154+ |q 26127/1
step
goto 49.4,17.2
.talk 42160
..turnin 26127
..accept 26128
step
goto 51.1,9.6
.' Watch the dialogue
.kill Calamoth Ashbeard##41522 |q 26128/1
.' Click the Complete Quest box that appears on the right under your minimap
..turnin 26128
..accept 26139
step
ding 26
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-27)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (27-30)
startlevel 26.00
dynamic on
step
goto Arathi Highlands,40.0,48.9
.talk 2700
..turnin 26139 |tip You may not have this breadcrumb quest to turn in.
..accept 26093
step
goto 39.9,49.0
.talk 2808
.home Refuge Point
step
goto 40.2,49.1
.click Wanted Board##202
..accept 26024
..accept 26079
step
goto 40.3,49.1
.talk 2789
..accept 26336
step
goto 27.3,30.9
.kill 10 Syndicate Mercenary##2589+ |q 26093/1
.|from Syndicate Pathstalker##2587+, Syndicate Highwayman##2586+
step
'Hearth to Refuge Point |goto 39.9,49.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.0,48.9
.talk 2700
..turnin 26093
..accept 26095
step
goto 19.5,57.3 |n
.' Enter Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 23.2,64.8
.from Marez Cowl##2783
.get Marez's Head |q 26024/1
.' She can also be located at [23.1,66.1] |tip You'll have to go back to the fork in the road and take the middle path up and then to the left.
step
goto 19.6,67.5
.' Go upstairs in the fort
.from Otto##2599
.get Otto's Head |q 26079/1
.from Lord Falconcrest##2597
.get Falconcrest's Head |q 26079/2
step
goto 19.4,64.8
.from Syndicate Thief##24477+, Syndicate Prowler##2588+, Syndicate Conjuror##2590+, Syndicate Magus##2591+
.get 7 Stromgarde Badge |q 26095/1
step
goto 19.5,57.3 |n
.' Leave Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 24.3,53.5 |n
.' Follow this road south |goto 24.3,53.5,0.5 |noway |c
step
goto 24.4,69.7 |n
.' Follow the path on the left here |goto 24.4,69.7,0.5 |noway |c
step
goto 27.6,83.0
.talk 2768
..accept 26050
step
goto 29.5,82.1
.' Escort Professor Phizzlethorpe
.' Defend Professor Phizzlethorpe |q 26050/1
step
goto 27.6,82.9
.talk 2774
..turnin 26050
..accept 26051
step
goto 27.7,83.3
.talk 2769
..accept 26055
step
goto 25.9,83.9
.talk 2610
..turnin 26336
step
'Equip your Goggles of Gem Hunting |equipped Goggles of Gem Hunting##4491 |use Goggles of Gem Hunting##4491
step
goto 16.2,91.4
.kill 10 Daggerspine Raider##2595+ |q 26055/1
.kill 3 Daggerspine Sorceress##2596 |q 26055/2
.click Calcified Elven Gem##247+ |tip You can find them easily if you have your Goggles of Gem Hunting equipped.  You will see yellow dots on your minimap where they are located.
.get 10 Elven Gem |q 26051/1
step
'Remember to equip your regular helmet, if you have one
|confirm
step
goto 27.7,83.3
.talk 2769
..turnin 26055
step
goto 27.6,82.9
.talk 2774
..turnin 26051
..accept 26052
step
ding 27
step
goto 25.9,83.9
.talk 2610
..turnin 26052
..accept 26628
step
goto 25.7,83.2
.' Click the Cannon to easily defeat the incoming Naga
.' Kill the naga that attack Faldir's Cove
.' Defend Shakes O'Breen |q 26628/1
step
goto 25.9,83.9
.talk 2610
..turnin 26628
step
'Hearth to Refuge Point |goto 39.9,49.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.0,48.9
.talk 2700
..turnin 26095
..turnin 26024
..turnin 26079
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (27-30)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-31)
startlevel 27.75
dynamic on
step
goto Arathi Highlands,40.3,49.1
.talk 2789
..accept 26341 |tip If you are higher level, you may not be able to accept this breadcrumb quest.
..accept 26035
step
goto 40.1,47.9
.talk 2608
..accept 26113
step
goto 57.2,34.6
.click Shards of Myzrael##1667+
..turnin 26341
..accept 26039
step
goto 76.4,41.0 |n
.' Go up this path |goto 76.4,41.0,0.5 |noway |c |tip Be careful not to run into the horde town, Hammerfall, on the way
step
goto 78.2,36.9 |n
.' Enter the cave |goto 78.2,36.9,0.5 |noway |c
step
goto 79.0,36.1
.' All around inside this cave:
.from Drywhisker Digger##2574+, Drywhisker Surveyor##2573+
.get 12 Mote of Myzrael |q 26039/1
step
ding 28
step
goto 79.8,31.6
.click Iridescent Shards##1687+
..turnin 26039
..accept 26041
step
goto 78.2,36.9 |n
.' Leave the cave |goto 78.2,36.9,0.5 |noway |c
step
goto 76.4,41.0 |n
.' Follow the path down |goto 76.4,41.0,0.5 |noway |c
step
goto 61.6,30.4
.click Stone of East Binding##236
.get Cresting Key |q 26041/2
step
goto 46.4,52.1
.click Stone of Outer Binding##236
.get Thundering Key |q 26041/3
step
goto 54.8,55.4
.talk 2712
..turnin 26113
..accept 26110
step
goto 51.1,64.8
.from Forsaken Courier##2714 |tip She walks along this section of the road.
.get Sealed Folder |q 26110/1
step
goto 54.8,55.4
.talk 2712
..turnin 26110
..accept 26114
step
goto 54.9,55.5
.talk 2713
..turnin 26114
..accept 26116
.' Escort Kinelory as she walks
.' Protect Kinelory |q 26116/1
step
goto 54.8,55.4
.talk 2712
..turnin 26116
..accept 26117
step
goto 58.8,68.4
.from Witherbark Axe Thrower##2554+, Witherbark Headhunter##2556+
.get 10 Witherbark Tusk |q 26035/1
.from Witherbark Witch Doctor##2555+
.get 4 Witherbark Medicine Pouch |q 26035/2
step
'Hearth to Refuge Point |goto 39.9,49.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.3,49.1
.talk 2789
..turnin 26035
..accept 26036
step
goto 40.0,47.8
.talk 2608
..turnin 26117
step
ding 29
step
goto 18.9,30.9
.click Stone of West Binding##236
.get Burning Key |q 26041/1
step
goto 30.0,59.1
.click Stone of Inner Binding##236
..turnin 26041
..accept 26042
step
goto 43.7,67.1
.from Fozruk##2611
.get Rod of Order |q 26042/1
step
goto 48.1,79.7 |n
.' Enter the cave |goto 48.1,79.7,0.5 |noway |c
step
goto 49.2,84.4
.from Kor'gresh Coldrage##2793
.get Trelane's Wand of Invocation |q 26036/1
step
goto 48.1,79.7 |n
.' Leave the cave |goto 48.1,79.7,0.5 |noway |c
step
goto 29.9,59.8
.click Keystone##235
..turnin 26042 |tip Completing this quest causes Thenan to spawn and attack
|modelnpc Thenan##2763
step
goto 30.0,59.1
.click Stone of Inner Binding##236
..accept 26346
step
goto 40.3,49.1
.talk 2789
..turnin 26346
..turnin 26036
..accept 26037
step
goto 19.5,57.3 |n
.' Enter Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 17.7,62.9 |n
.' Follow this path |goto 17.7,62.9,0.5 |noway |c
step
goto 14.9,69.2
.from Boulderfist Shaman##2570+
.get Azure Agate |q 26037/1
step
13.0,69.6
.talk 41983
..turnin 26037
..accept 26038
step
goto 11.3,70.2
.click Trelane's Footlocker##1
.get Trelane's Phylactery |q 26038/1
step
goto 11.2,69.9
.' Run up the ramps
.click Trelane's Lockbox##41
.get Trelane's Ember Agate |q 26038/3
step
goto 11.3,71.2
.' Run up the ramps
.click Trelane's Chest##10
.get Trelane's Orb |q 26038/2
step
'Hearth to Refuge Point |goto 39.9,49.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.3,49.1
.talk 2789
..turnin 26038
step
goto 40.0,48.9
.talk 2700
..accept 26542
step
goto 37.0,29.5 |n
.' Enter the tunnel |goto 37.0,29.5,0.5 |noway |c
step
goto The Hinterlands,26.1,69.8 |n
.' Exit the tunnel |goto The Hinterlands,26.1,69.8,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-31)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (31-34)
startlevel 30.00
dynamic on
step
goto The Hinterlands,13.9,48.1 |n
.' Follow this path up |goto The Hinterlands,13.9,48.1,0.5 |noway |c
step
goto 11.1,46.2
.talk 8018
.fpath Aerie Peak
step
goto 9.9,44.2
.talk 5636
..turnin 26542 |tip You may not have this breadcrumb quest to turn in.
..accept 26546
..accept 26547
step
goto 14.1,44.7
.talk 7744
.home Wildhammer Keep
step
goto 17.3,52.1
.kill 8 Mangy Silvermane##2923+ |q 26547/1
.' Use the Gryphon Chow to feed Trained Razorbeaks |use Gryphon Chow##58935 |modelnpc Trained Razorbeak##2657
.' Feed 7 Trained Razorbeaks |q 26546/1
.' You can find more Trained Razorbeaks around [The Hinterlands,24.5,56.9]
step
goto 13.9,48.1 |n
.' Follow this path up |goto 13.9,48.1,0.5 |noway |c
step
goto 9.9,44.2
.talk 5636
..turnin 26546
..turnin 26547
..accept 26548
step
goto 11.1,46.2
.talk 8018
..' Tell him Gryphon Master Talonaxe has ordered you sent to Stormfeather Outpost!
.' You will fly to Stormfeather Outpost |goto 65.7,45.0,0.5 |noway |c
step
goto 66.4,44.3
.talk 43108
..turnin 26548
..accept 26462
..accept 26483
step
goto 66.2,44.3
.talk 43109
..accept 26485
..accept 26486
step
goto 66.2,44.4
.talk 43699
.home Stormfeather Outpost
step
goto 73.3,53.8
.kill Gan'dranda##42609 |q 26483/1
step
goto 71.8,51.3
.kill 10 Revantusk |q 26462/1
' |from Revantusk Stalker##42536+, Revantusk Hexxer##42555+
step
goto 71.1,64.7 |n
.' Follow this path |goto 71.1,64.7,0.5 |noway |c
step
goto 72.8,66.0 |n
.' Follow the path down |goto 72.8,66.0,0.5 |noway |c
step
goto 77.7,67.6
.from Saltwater Snapjaw##2505+
.get 8 Snapjaw Gizzard |q 26485/1
.click Pupellyverbos Port##225+
.get 12 Pupellyverbos Port |q 26486/1
.' You can find more around [The Hinterlands,81.9,50.5]
step
'Hearth to Stormfeather Outpost |goto 66.2,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 66.2,44.3
.talk 43109
..turnin 26485
..turnin 26486
step
goto 66.4,44.3
.talk 43108
..turnin 26462
..turnin 26483
..accept 26491
..accept 26492
step
goto 66.2,44.3
.talk 43109
..accept 26490
step
goto 57.5,38.9 |n
.' Enter the cave |goto 57.5,38.9,0.5 |noway |c
step
goto 57.6,41.6
.from The Direglob##42592
.get Direglob Sample |q 26490/1
step
goto 57.0,42.0
.kill 10 Jade Ooze##2656+ |q 26491/1
.click Ooze-Coated Supply Crate##1988+
.get 5 Ooze-Coated Supply Crate |q 26492/1
step
goto 57.5,38.9 |n
.' Leave the cave |goto 57.5,38.9,0.5 |noway |c
step
ding 31
step
goto 66.4,44.3
.talk 43108
..turnin 26491
..turnin 26492
..accept 26496
step
goto 66.2,44.3
.talk 43109
..turnin 26490
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (31-34)",[[
author support@zygorguides.com
startlevel 31.25
dynamic on
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)
step
goto The Hinterlands,63.9,59.9
.talk 43157
..turnin 26496 |tip You may not have this breadcrumb quest to turn in.
..accept 26497
..accept 26518
step
goto 63.7,60.0
.talk 43156
..accept 26521
..accept 26523
step
goto 65.2,64.9
.' Follow the path up into and through Jintha'Alor
.from Umboda Three-Heads##42724
.get Umboda's Head |q 26518/1
step
goto 66.7,68.5
.kill 5 Vilebranch Headhunter##2641+ |q 26497/1
.kill 5 Vilebranch Witch Doctor##2640+ |q 26497/2
.' Use your Tiki Torch next to tiki masks |use Tiki Torch##58209 |tip They look like big wooden faces hanging on the walls all throughout Jintha'Alor.
.' Burn 8 Tiki Masks |q 26521/1
.' Click Skittering Spiderlings |modelnpc Skittering Spiderling##42689 |tip They are very small so keep an eye out for them
.get 8 Skittering Spiderling |q 26523/1
step
goto 63.9,59.9
.talk 43157
..turnin 26497
..turnin 26518
..accept 26515
..accept 26498
step
goto 63.7,60.0
.talk 43156
..turnin 26521
..turnin 26523
..accept 26524
step
goto 64.1,67.1
.' Follow the path further through Jintha'Alor
.kill 5 Vilebranch Berserker##2643+ |q 26498/1
.kill 5 Vilebranch Shadowcaster##2642+ |q 26498/2
step
goto 63.9,59.9
.talk 43157
..turnin 26498
..accept 26516
step
ding 32
step
goto 60.7,71.4
.' Follow the path through Jintha'Alor, almost to the top level
.kill 5 Vilebranch Soul Eater##2647+ |q 26516/1
.kill 5 Vilebranch Blood Drinker##2646+ |q 26516/2
.click Vessels of Tainted Blood##216+ |tip They are rare, except on this level of Jintha'Alor, so you may need to search for them.
.get 5 Vessel of Tainted Blood |q 26524/1
step
goto 62.3,75.6
.from Ongo'longo##42815
.' Enrage Ongo'longo |q 26515/1
step
goto 63.9,59.9
.talk 43157
..turnin 26516
..turnin 26515
step
goto 63.7,60.0
.talk 43156
..turnin 26524
..accept 26517
step
goto 63.9,59.9
.talk 43157
..' Tell him you need to get to the top of Jintha'Alor
.' You will fly to the top of Jintha'Alor on Sharpbeak |goto 53.2,66.6,0.5 |noway |c
|modelnpc Sharpbeak##44776
step
goto 54.4,67.6 |n
.' Enter the tunnel |goto 54.4,67.6,0.5 |noway |c
step
goto 59.4,77.7
.clicknpc Sacrificed Vilebranches##42857+
.get 8 Spider Idol |q 26517/1
step
goto 56.9,68.4 |n
.' Enter the tunnel |goto 56.9,68.4,0.5 |noway |c
step
goto 53.3,66.6
.clicknpc Sharpbeak##44776
.' You will fly down from Jintha'Alor |goto 63.5,60.1,0.5 |noway |c
step
goto 63.7,60.0
.talk 43156
..turnin 26517
..accept 26526
..accept 26525
step
goto 63.9,59.9
.talk 43157
..' Tell him you need to get to the top of Jintha'Alor
.' You will fly to the top of Jintha'Alor on Sharpbeak |goto 53.2,66.6,0.5 |noway |c
step
goto 54.4,67.6 |n
.' Enter the tunnel |goto 54.4,67.6,0.5 |noway |c
step
goto 58.6,79.2 |n
.' Enter the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 57.5,86.5
.from Morta'gya the Keeper
.get Tablet of Shadra |q 26526/1
|modelnpc Morta'gya The Keeper##42877
step
goto 57.7,81.1
.kill 8 Spawn of Shadra##42879+ |q 26525/1
step
goto 58.6,79.2 |n
.' Leave the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 56.9,68.4 |n
.' Enter the tunnel |goto 56.9,68.4,0.5 |noway |c
step
goto 53.3,66.6
.clicknpc Sharpbeak##44776
.' You will fly down from Jintha'Alor |goto 63.5,60.1,0.5 |noway |c
step
goto 63.7,60.0
.talk 43156
..turnin 26526
..turnin 26525
step
goto 64.0,59.8
.talk 46476
..accept 27725
step
goto 32.1,42.5
.talk 46475
..turnin 27725
..accept 27625
..accept 27626
step
goto 31.9,46.8
.click Highvale Records##210
.get Highvale Records |q 27626/2
step
goto 29.6,48.7
.click Highvale Notes##210
.get Highvale Notes |q 27626/3
step
goto 28.6,46.0
.click Highvale Report##210
.get Highvale Report |q 27626/1
step
goto 32.3,44.4
.kill 16 Deathstalker Invader##43541+ |q 27625/1
step
goto 32.1,42.5
.talk 46475
..turnin 27625
..turnin 27626
step
ding 33
step
goto 30.7,47.1
.talk 43200
..accept 26528
..accept 26641
step
goto 45.5,38.9
.click Cache of Shadra##2450
.get Eye of Shadra |q 26528/1
step
goto 46.1,40.3
.click Shadraspawn Egg##6171+
.get 5 Shadraspawn Egg |q 26641/1
step
goto 30.7,47.1
.talk 43200
..turnin 26528
..accept 26529
..turnin 26641
..accept 26643
step
goto 49.5,52.1
.click Cache of Shadra##2450
.get Fang of Shadra |q 26529/1
.kill 6 Cocooned Victim##42907 |q 26643/1
step
goto 30.7,47.1
.talk 43200
..turnin 26529
..accept 26530
..turnin 26643
step
goto 48.4,67.8
.from Qiaga the Keeper##42919
.get Shell of Shadra |q 26530/1
step
goto 30.7,47.1
.talk 43200
..turnin 26530
..accept 26531
step
goto 35.8,64.3 |n
.' Enter Shadra'Alor |goto 35.8,64.3,0.5 |noway |c
step
goto 32.1,67.3
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Northwestern Temple |q 26531/1
step
goto 32.5,76.2
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Southwestern Temple |q 26531/3
step
goto 37.0,71.5
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Eastern Temple |q 26531/2
step
goto 34.4,67.8
.talk 43298
..turnin 26531
..accept 26532
step
goto 34.4,69.6
.kill Shadra##43007 |q 26532/1
step
'Hearth to Stormfeather Outpost |goto 66.2,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 65.8,44.9
.talk 43570
.' Fly to Aerie Peak, The Hinterlands |goto 11.1,46.1,0.5 |noway |c
step
goto 9.9,44.2
.talk 5636
..turnin 26532
..accept 28505
step
ding 34
step
goto 11.1,46.1
.talk 8018
.' Tell Guthrum that you need a gryphon.
.' You will fly to Western Plaguelands |goto Western Plaguelands 39.5,69.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (15-16)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)
startlevel 15.6
dynamic on
step
goto Redridge Mountains,16.1,64.6
.click Wanted Poster##156
..accept 26504
step
goto 15.6,65.3
.talk 379
..accept 26506
step
goto 15.3,64.6
.talk 464
..turnin 26365 |tip You may not have this breadcrumb quest to turn in.
..accept 26503
step
goto 17.4,65.1
.from Tarantula##442+
.get 4 Tarantula Eye |q 26506/1
.from Dire Condor##428+ |tip You can find them resting on rocks and flying around in the sky.
.get 4 Condor Giblet |q 26506/2
step
goto 16.2,55.3
.click Gnoll Battle Plan##222
.get Gnoll Battle Plans |q 26503/1
step
goto 30.6,62.7
.click Gnoll Strategy Guide##222
.get Gnoll Strategy Guide |q 26503/3
step
goto 31.0,63.2
.from Great Goretusk##547
.get 4 Goretusk Kidney##58893 |q 26506/3
step
goto 28.0,74.9
.click Gnoll Orders##222+
.get Gnoll Orders |q 26503/2
step
goto 28.3,73.2
.kill 15 Redridge Gnoll |q 26504/1
' |from Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
step
goto 15.6,65.3
.talk 379
..turnin 26506
step
ding 16
step
goto 15.3,64.6
.talk 464
..turnin 26504
..turnin 26503
..accept 26505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)
startlevel 16.35
dynamic on
step
goto Redridge Mountains,29.4,53.8
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
.click Glinting Mud##49 |tip It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
.get Nida's Necklace |q 26508/1
step
goto 37.8,42.1
.click Gnomecorder##7764
.get Gnomecorder |q 26510/1
.kill 10 Lake Everstill Murloc |q 26511/1
' |from Murloc Minor Tidecaller##548, Murloc Scout##578, Murloc Tidecaller##545, Murloc Nightcrawler##544, Murloc Shorestriker##1083
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
.click Redridge Supply Crate##9723+
.get 8 Redridge Supply Crate |q 26513/1
.' You can find more crates around [Redridge Mountains,36.5,27.7]
step
ding 17
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
.kill Ardo Dirtpaw##711 |q 26519/1 |tip Follow the path in the cave to the left.  He's at the very back of the cave on top of a rock platform.
step
goto 17.9,18.6
.click Ettin Control Orb##4891
..turnin 26519
..accept 26520
step
goto 21.0,27.3 |n
.' Leave the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 24.1,32.2
.' Use your Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895 |tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
.' While controlling the Subdued Canyon Ettin, go to [31.5,44.3]
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
.kill Yowler##518 |q 26545/1
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
ding 18
step
goto 50.4,39.9 |n
.' The path to the Blackrock Key Pouch starts here |goto 50.4,39.9,0.5 |noway |c
step
goto 49.2,38.0
.' Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs |tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
.click Blackrock Key Pouch##7144
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
.kill Ritualist Tarak##43363 |q 26561/1
step
goto 26.6,10.5
.click Blackrock Coffer##10
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
.kill Overlord Barbarius##43369 |q 26562/1
.get Blackrock Lever Key |q 26562/2
step
goto 27.8,17.9
.click Chain Level##9237
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
.kill 25 Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1
.get 5 Blackrock Spyglass |q 26569/1
' |from Blackrock Renegade##437, Blackrock Summoner##4463, Murdunk##43327, Blackrock Scout##4064, Homurk##43329, Utroka the Keymistress##43350
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
ding 19
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
.click Keeshan's Riverboat##33265
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
.kill 8 Blackrock Hunter##4462+ |q 26638/1
.click Piles of Leaves##6884+
.get 5 Pile of Leaves |q 26636/1
.click Fox Poop##9572
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
.click Blackrock Key Pouch##7144
.collect Blackrock Holding Pen Key##59261 |q 26646
step
goto 69.3,59.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.click Blackrock Holding Pen##9745
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
..accept 26668
step
'Watch the cutscene
.' Blow up Render's Valley |q 26668/1
step
ding 20
step
goto 77.7,65.5
.talk 43611
..turnin 26668
..accept 26693
step
goto 77.6,65.3
.talk 43607
..accept 26692
step
goto 78.0,65.9
.talk 43072
.fpath Shalewind Canyon
step
goto 67.3,31.1 |n
.' Enter the cave |goto 67.3,31.1,0.5 |noway |c
step
goto 67.6,31.1
.from General Fangore##703
.get Key of Ilgalar |q 26693/1
.' Click the Quest Completion box that pops up
..turnin 26693
..accept 26694
step
goto 68.3,34.6
.kill 20 Shadowhide Gnoll##433+ |q 26692/1
.' You can find more Shadowhide Gnolls around [Redridge Mountains,75.4,51.5]
step
goto 71.2,45.4
.' Go to the top of the tower
.click Ward of Ilgalar##8121
.from Grand Magus Doane##397
.' Confront Grand Magus Doane |q 26694/1
step
goto 77.1,51.5 |n
.' Follow the path up |goto 77.1,51.5,0.5 |noway |c
step
goto 77.6,65.3
.talk 43607
..turnin 26692
step
goto 77.7,65.5
.talk 43611
..turnin 26694
step
goto 77.2,65.9
.talk 43733
..accept 26708
step
goto 76.9,66.0
.click Bravo Company Siege Tank##43714 |invehicle |c
step
goto 75.1,51.7
.' Allow John J. Keeshan to kill Blackrock Invaders as you make your way to 60.7,36.7 |tip He will do this automatically when you are in the area.
.kill 200 Blackrock Invader |q 26708/1
.' Click the red arrow on your action bar to get off the siege tank |outvehicle |c |q 26708
' |from Blackrock Drake Rider##43787
step
goto 60.7,36.7
.talk 43733
..turnin 26708
..accept 26713
step
goto 60.2,46.6
.kill Tharil'zun##486 |q 26713/1
step
goto 58.0,55.6
.kill Gath'Ilzogg##334 |q 26713/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26713
..accept 26714
.' When Darkblaze attacks, fight him until he flies away
.' Defeated Darkblaze |q 26714/1
step
ding 21
step
goto 60.7,36.6
.talk 43733
..turnin 26714
..accept 26726
step
'Hearth to Lakeshire |goto 26.4,41.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.9,41.1
.talk 344
..turnin 26726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-32)\\Northern Stranglethorn (26-32)
startlevel 21.35
dynamic on
step
goto Redridge Mountains,28.7,41.0
.talk 900
..accept 26728
step
'Go southwest to Duskwood |goto Duskwood |noway |c
step
goto Duskwood,73.5,46.9
.talk 264
..turnin 26728
..accept 26618
step
goto 73.9,44.4
.talk 6790
.home Duskwood
step
goto 73.9,43.5
.talk 272
..accept 26620
..accept 26623
step
goto 75.3,48.0
.talk 663
..accept 26688
step
goto 77.5,44.3
.talk 2409
.fpath Darkshire
step
goto Duskwood,79.1,44.2
.talk 43453
..accept 26666
step
goto 72.4,46.9
.talk 267
..turnin 26666
..accept 26667
step
goto 72.0,49.3 |n
.' Follow the path up |goto 72.0,49.3,0.5 |noway |c
step
goto 61.2,40.5
.click Pile of Scrap##9749
.get A Slashed Bundle of Letters |q 26667/1
step
goto 64.2,45.3
.kill 7 Nightbane Worgen##898 |q 26688/1
step
goto 66.2,26.7
.from Venom Web Spider##217+
.get 6 Dusky Lump |q 26623/1
.from Dire Wolves
.get 5 Wolf Skirt Steak |q 26620/1
.kill 12 Dire Wolf##43704+ |q 26618/1
.' You can find more Wolves and Spiders at [Duskwood,74.0,19.9]
step
goto 73.5,46.9
.talk 264
..turnin 26618
..accept 26627
..accept 26645
step
goto 72.4,46.9
.talk 267
..turnin 26667
..accept 26669
step
goto 73.9,43.5
.talk 272
..turnin 26620
..turnin 26623
step
ding 22
step
goto Duskwood,75.3,48.0
.talk 663
..turnin 26688
..accept 26689
step
goto 79.5,47.5
.talk 276
..accept 26683
step
goto 87.4,35.2
.talk 289
..turnin 26627
..accept 26653
step
goto 75.8,45.3
.talk 265
..turnin 26653
..accept 26652
step
goto 81.9,59.2
.talk 302
..turnin 26652
..accept 26654
..turnin 26683
..accept 26684
step
goto 80.9,59.3
.kill 8 Rotting Horror##202+ |q 26645/1
step
goto 73.5,46.9
.talk 264
..turnin 26645
..accept 26686
step
goto 75.8,45.3
.talk 265
..turnin 26654
..accept 26655
step
goto 87.4,35.2
.talk 289
..turnin 26655
..accept 26660
step
goto 74.1,44.7
.talk 273
..turnin 26660
..accept 26661
step
goto 80.9,71.6
.from Insane Ghoul##511
.get Mary's Looking Glass |q 26684/1
step
goto 79.5,70.3
.kill 5 Skeletal Warrior##48+ |q 26686/1
.kill 5 Skeletal Mage##203+ |q 26686/2
.click Rot Blossoms##3254
.get 5 Rot Blossom |q 26661/1
step
'Hearth to Darkshire |goto 73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 74.1,44.7
.talk 273
..turnin 26661
..accept 26676
step
goto 73.5,46.9
.talk 264
..turnin 26686
step
goto 79.5,47.5
.talk 276
..turnin 26684
..accept 26685
step
ding 23
step
goto 87.4,35.2
.talk 289
..turnin 26676
..accept 26680
step
goto 61.8,65.6 |n
.' Follow the path |goto 61.8,65.6,0.5 |noway |c
step
goto 66.6,76.5
.click Pile of Scraps##9749+
.get A Torn Journal |q 26669/1
step
goto 65.4,73.2
.kill 10 Nightbane Shadow Weaver##533+ |q 26689/1
step
goto 45.1,67.0
.talk 888
..accept 25235
step
goto 44.9,67.4
.talk 43738
..accept 26707
..accept 26717
step
goto 49.9,77.7
.click Mound of Loose Dirt##20
.' Investigate the Mound of Loose Dirt |q 26717/1
step
goto 49.5,75.4
.from Corpseweed##43732+
.get 5 Corpseweed |q 26707/1
step
goto 44.9,67.4
.talk 43738
..turnin 26707
..turnin 26717
..accept 26719
step
goto 33.5,75.3
.click Abercrombie's Crate##18
.get Abercrombie's Crate |q 26680/1
step
goto 34.1,76.8 |n
.' Enter the cave |goto 34.1,76.8,0.5 |noway |c
step
goto 37.8,84.3
.from Zzarc' Vul##300
.get Ogre's Monocle |q 26685/1
step
goto 34.1,76.8 |n
.' Leave the cave |goto 34.1,76.8,0.5 |noway |c
step
goto 38.8,70.4
.kill 15 Splinter Fist Ogre##889+ |q 25235/1
' |from Splinter Fist Warrior##212+, Splinter Fist Ogre##889+, Splinter Fist Firemonger##1251+
step
goto 45.1,67.0
.talk 888
..turnin 25235
step
goto 21.1,56.4
.talk 43697
.fpath Raven Hill
step
goto 20.0,57.8
.talk 43731
..accept 26777
step
goto 18.6,58.4
.talk 288
..accept 26721
step
goto 18.3,57.7
.talk 43730
..turnin 26719
..accept 26720
step
goto 21.1,56.4
.talk 43697
.' Fly to Darkshire, Duskwood |goto 77.6,44.4,0.5 |noway |c
step
goto 75.3,48.0
.talk 663
..turnin 26689
..accept 26690
step
goto 72.5,46.9
.talk 267
..turnin 26669
..accept 26670
step
ding 24
step
goto 79.5,47.5
.talk 276
..turnin 26685
step
goto 87.4,35.2
.talk 289
..turnin 26680
..accept 26677
step
goto 80.7,33.5
.' Run behind the tower
.from Fetid Corpse##1270+
.get 7 Ghoul Rib |q 26677/1
step
goto 87.4,35.2
.talk 289
..turnin 26677
..accept 26681
step
goto 71.9,46.4
.talk 263
..turnin 26681
..accept 26727
step
goto 74.1,46.5
.kill Stitches##43862 |q 26727/1
step
goto 71.9,46.4
.talk 263
..turnin 26727
step
goto 71.9,60.2 |n
.' The path over the Vile and Tainted starts here |goto 71.9,60.2,0.5 |noway |c
step
goto 73.0,75.1 |n
.' Enter the mine |goto 73.0,75.1,0.5 |noway |c
step
goto 73.6,79.2
.click Muddy Journal Page##974
.get Muddy Journal Pages |q 26670/1
step
goto 73.0,75.1 |n
.' Leave the mine |goto 73.0,75.1,0.5 |noway |c
step
goto 72.9,74.1
.kill 8 Nightbane Vile Fang##206+ |q 26690/1
.kill 8 Nightbane Tainted One##920+ |q 26690/2
step
'Hearth to Darkshire |goto 73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 72.5,46.9
.talk 267
..turnin 26670
..accept 26671
step
goto 75.3,48.0
.talk 663
..turnin 26690
..accept 26691
step
goto 75.4,49.0
.talk 661
..turnin 26691
step
goto 79.1,44.2
.talk 43453
..turnin 26671
..accept 26672
step
goto 75.8,45.3
.talk 265
..turnin 26672
..accept 26674
step
goto 77.4,36.1
.' Use the Mistmantle Family Ring inside this small house |use Mistmantle Family Ring##59363
.kill Stalvan Mistmantle##315 |q 26674/1
step
goto 79.1,44.2
.talk 43453
..turnin 26674
step
ding 25
step
goto 77.5,44.3
.talk 2409
.' Fly to Raven Hill, Duskwood |goto 21.0,56.7,0.5 |noway |c
step
goto 21.6,73.2
.' Go this spot, the Lurking Worgen will jump down and attack you
.' Fight the Lurking Worgen
.' Use Harris's Ampule on the Lurking Worgen when it is almost dead |use Harris's Ampule##60206 |tip He's inside the barn, up on the ledge to the left as you enter the barn.
.' Capture the Lurking Worgen |q 26720/1
step
goto 21.8,67.3
.' Use your Holy Censer on Forlorn Spirits |use Holy Censer##60225
.' Soothe 5 Forlorn Spirits |q 26777/1
step
goto 18.3,57.7
.talk 43730
..turnin 26720
..accept 26760
step
goto 18.5,57.3
.' Watch Oliver Harris and Jitters attempt to cure the Lurking Worgen
.' Cure the Worgen |q 26760/1
step
goto 18.3,57.7
.talk 43730
..turnin 26760
step
goto 18.4,58.1
.talk 43861
..accept 26723
step
goto 20.0,57.8
.talk 43731
..turnin 26777
..accept 26778
..accept 26838
step
goto 25.0,50.5
.from Black Widow##45582+
.get 8 Widow Venom Sac |q 26721/1
step
goto 18.6,58.3
.talk 288
..turnin 26721
..accept 26787
step
goto 14.7,54.9
.from Coalpelt Bear##44016+ |tip You can find them along the coast in the forest.
.get 8 Black Bear Brain |q 26787/1
step
goto 17.8,29.0
.click A Weathered Grave##12
..accept 26793
step
goto 17.0,33.4
.click Bloodsoaked Hat##6400
.get Remains of Morbent Fel |q 26723/1
step
goto 18.2,33.5
.kill 20 Ghoul## |q 26778/1
' |from Plague Spreader##604+, Flesh Eater##3+, Rotted One##948+, Bone Chewer##210+
step
goto 18.3,58.1
.talk 43861
..turnin 26723
..accept 26724
step
goto 18.6,58.4
.talk 288
..turnin 26787
step
goto 20.0,57.8
.talk 43731
..turnin 26778
..turnin 26724
..accept 26725
step
ding 26
step
goto 23.5,35.4
.click Lightforged Rod##20
..turnin 26725
..accept 26753
step
goto 20.4,27.5
.' Go inside the crypt
.click Lightforged Arch##20
..turnin 26753
..accept 26722
step
goto 18.0,25.4
.' Go into the tunnel passageway
.click Lightforged Crest##20
..turnin 26722
..accept 26754
step
goto 16.9,29.1
.' Follow the tunnel to the other side
.' Use Morbent's Bane on Morbent Fel |use Morbent's Bane##60212 |tip he's a big demon on at the top of the stairs of the room you come to.
.kill Morbent Fel##43761 |q 26754/1
step
goto 15.9,38.7 |n
.' Follow the path up the big staircases
.' Leave the crypt |goto 15.9,38.7,0.5 |noway |c
step
goto 18.3,58.1
.talk 43861
..turnin 26754
step
'Hearth to Darkshire |goto 73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 72.6,47.8
.talk 268
..turnin 26793
..accept 26794
step
goto 73.5,46.9
.talk 264
..turnin 26794
step
'Go southwest to Northern Stranglethorn |goto Northern Stranglethorn |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-32)\\Northern Stranglethorn (26-32)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (32-36)\\The Cape of Stranglethorn (32-36)
startlevel 26.50
dynamic on
step
goto Northern Stranglethorn,47.9,11.9
.talk 43045
.fpath Rebel Camp
step
goto 47.3,11.1
.talk 739
..accept 26732
step
goto 47.1,10.7
.talk 770
..accept 26740
step
goto 47.6,10.3
.talk 469
..turnin 26838
..accept 26735
step
goto 44.2,22.1
.talk 716
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.6,23.4
.talk 2495
..accept 26343
step
goto 43.6,23.1
.talk 773
..turnin 26740
..accept 26763
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get 2 Large River Crocolisk Skin |q 26343/1
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 43.6,23.4
.talk 2495
..turnin 26343
..accept 26344
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger##681 |q 185/1
.' You can find more Young Stranglethorn Tigers to kill around [Northern Stranglethorn,38.7,20.3]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther##683 |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
ding 27
step
goto 57.7,21.4
.from Kurzen Jungle Fighter##937+, Kurzen Medicine Man##940+
.get 7 Jungle Remedy |q 26732/1
.' Once you get your 7th Jungle Remedy, you will automatically accept a quest:
..accept 26738
.' These Kurzen documents can spawn in random locations all around Kurzen's Compound, so keep an eye out for them while you walk around killing Kurzen mobs.
.click Kurzen Compound Officers' Dossier##220
.get Kurzen Compound Officers' Dossier |q 26735/2
.click Kurzen Compound Prison Record##163
.get Kurzen Compound Prison Records |q 26735/1
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger##682+ |q 186/1
.' You can find more Stranglethorn Tigers around [Northern Stranglethorn,56.5,28.7]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 53.5,30.3
.from Snapjaw Crocolisk##1152+
.get 5 Snapjaw Crocolisk Skin |q 26344/1
.' You can find more Snapjaw Crocolisks around [Northern Stranglethorn,51.1,35.8]
step
'Hearth to Darkshire |goto Duskwood,73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Rebel Camp, Stranglethorn Vale |goto Northern Stranglethorn,47.8,12.0,0.5 |noway |c
step
goto Northern Stranglethorn,47.3,11.1
.talk 739
..turnin 26732
..accept 26733
step
goto 47.0,10.8
.talk 1422
..turnin 26738
..accept 26739
step
goto 47.6,10.3
.talk 469
..turnin 26735
..accept 26736
step
goto 56.5,20.3
.click Kurzen Cage##4154
.' Rescue Berrin Burnquill |q 26736/1
.' Rescue Emerine Junis |q 26736/2
.' Rescue Osborn Obnoticus |q 26736/3
step
goto 60.7,21.5
.from Crystal Spine Basilisk##689+
.get 7 Crystal Spine Basilisk Blood |q 26733/1
.' Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
.from Crystal Spine Basilisk##689+
.' Let your Lashtail Hatchling eat 40 Bites of Basilisk Meat |q 26739/1
.' You can find more Crystal Spine Basilisks around [Northern Stranglethorn,62.5,26.0]
step
goto 47.3,11.1
.talk 739
..turnin 26733
..accept 26734
step
goto 47.0,10.8
.talk 1422
..turnin 26739
..accept 26744
step
goto 47.6,10.3
.talk 469
..turnin 26736
..accept 26737
step
goto 59.4,18.5 |n
.' Enter the cave |goto 59.4,18.5,0.5 |noway |c
step
goto 63.7,16.7
.' Follow the path in the cave
.kill Chief Anders##43910 |q 26737/1
step
goto 65.8,17.1
.' Follow the path in the cave
.kill Chief Miranda##43913 |q 26737/3
step
goto 66.1,11.7
.' Follow the path in the cave to the end
.kill Chief Esquivel##43912 |q 26737/4
step
goto 62.5,14.1
.' Follow the path in the cave back towards the entrance, then down the first ramp you come to
.kill Chief Gaulus##43911 |q 26737/2
step
goto 64.1,14.2
.from Kurzen Headshrinker##941+, Kurzen Elite##939+, Kurzen Subchief##978+, Kurzen Shadow Hunter##979+
.get Whispering Blue Stone |q 26734/1
step
'Hearth to Darkshire |goto Duskwood,73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Rebel Camp, Stranglethorn Vale |goto Northern Stranglethorn,47.8,12.0,0.5 |noway |c
step
goto Northern Stranglethorn,48.0,12.0
.talk 43886
..accept 26742
step
goto 47.3,11.1
.talk 739
..turnin 26734
step
ding 28
step
goto 47.6,10.3
.talk 469
..turnin 26737
step
goto 47.7,10.3
.talk 43885
..accept 26729
step
goto 43.6,23.4
.talk 2495
..turnin 26344
..accept 26345
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger##1085+ |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
goto 38.5,32.5
.from Sin'Dall##729
.get Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther##736+ |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor##685+ |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 33.6,36.8
.click Bloodscalp Lore Tablet##5 |tip It looks like a big stone slab leaning on a broken stone pillar on the beach.
.get Bloodscalp Lore Tablet |q 26744/1
step
'Next to you:
.talk 42736
..accept 26745
step
goto 34.2,36.5
.from Bloodscalp Shaman##697+ |tip The Bloodscalp Shamans share spawn locations with the other trolls around this area, so if you can't find any Shamans, kill the other trolls to get them to spawn.
.get Bloodscalp Totem |q 26742/1
step
goto 22.5,40.3
.from Lesser Water Elemental##691+
.get 6 Water Elemental Bracers |q 26729/1
step
'Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
.talk 43885
..turnin 26729
..accept 26730
step
'Hearth to Darkshire |goto Duskwood,73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Rebel Camp, Stranglethorn Vale |goto Northern Stranglethorn,47.8,12.0,0.5 |noway |c
step
goto Northern Stranglethorn,48.0,12.0
.talk 43886
..turnin 26742
..accept 26743
step
goto 47.0,10.8
.talk 1422
..turnin 26744
step
goto 47.1,10.6
.talk 43884
..turnin 26745
..accept 26746
step
ding 29
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 40.6,26.9
.' Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
.' Follow the Lashtail Hatchling around as it digs up fetishes
.get 8 Tkashi Fetish |q 26746/1
.from Bloodscalp Scavenger##702+
.get Icon of Tsul'Kalu |q 26743/1
.get Icon of Mahamba |q 26743/2
.get Icon of Pogeyan |q 26743/3
step
goto 40.1,34.7
.from Murkgill Warrior##4461+, Murkgill Hunter##4458+, Murkgill Forager##4457+, Murkgill Oracle##4459+
.get 6 Sea Salt |q 26730/1
step
'Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
.talk 43885
..turnin 26730
..accept 26731
step
goto 45.8,43.1
.kill 10 Lashtail Raptor##686+ |q 195/1
.' You can find more Lashtail Raptors around [Northern Stranglethorn,39.3,43.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 54.8,40.5
.from Venture Co. Geologist##1096+, Venture Co. Shredder##4260+
.get 5 Tumbled Crystal |q 26763/1
step
goto 54.3,47.2
.kill 10 Jungle Stalker##687+ |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
goto 50.5,47.4
.from Elder Snapjaw Crocolisk##2635+
.get Elder Crocolisk Skin |q 26345/1
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther##684 |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728 |tip It's a big black panther that walks around near Shadowmaw Panthers around this area.  Bhag'thera is not stealthed, so you should should be fairly easy to find.  Be careful of the Horde town nearby.
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera has three spawn points, the second one is at [61.7,50.6] and the third at [64.4,36.6]
step
goto 59.0,58.6
.from Tethis##730 |tip He's a blue raptor that walks around this area, so you may need to search for him.
.get Talon of Tethis |q 197/1
step
goto 53.4,66.3
.talk 44018
..accept 26782
..accept 26805
step
goto 53.2,66.9
.talk 44019
..accept 26781
step
goto 52.6,66.1
.talk 43042
.fpath Fort Livingston
step
goto 52.6,66.1
.talk 43042
.' Fly to Rebel Camp, Stranglethorn Vale |goto 47.8,12.0,0.5 |noway |c
step
goto 48.0,12.0
.talk 43886
..turnin 26743
step
goto 47.1,10.6
.talk 43884
..turnin 26746
..accept 26747
step
goto 47.5,10.8
.talk 733
..accept 26751
step
goto 44.2,23.0
.talk 715
..turnin 197
step
ding 30
step
goto 43.6,23.4
.talk 2495
..turnin 26345
step
goto 43.6,23.1
.talk 773
..turnin 26763
..accept 26765
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 31.4,23.1 |n
.' Enter the Ruins of Zul'Kunda |goto 31.4,23.1,0.5 |noway |c
step
goto 24.9,18.2
.' Follow the path to the top of the ruins
.from Gan'zulah##1061
.get Gan'zulah's Body |q 26747/1
step
goto 27.5,23.1
.kill 7 Bloodscalp Mystic##701+ |q 26751/1
.kill 7 Bloodscalp Scout##588+ |q 26751/2
.kill 7 Bloodscalp Hunter##595+ |q 26751/3
.kill 1 Bloodscalp Beastmaster##699+ |q 26751/4
step
goto 19.1,40.7
.' Use the Gift of Naias next to the Altar of Naias |use Gift of Naias##23680
.from Naias##17207
.get Heart of Naias |q 26731/1
step
'Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
.talk 43885
..turnin 26731
step
'Hearth to Darkshire |goto Duskwood,73.9,44.4,0.5 |use Hearthstone##6948 |noway |c
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Rebel Camp, Stranglethorn Vale |goto Northern Stranglethorn,47.8,12.0,0.5 |noway |c
step
goto Northern Stranglethorn,47.1,10.7
.talk 770
..turnin 26765
step
goto 47.1,10.6
.talk 43884
..turnin 26747
step
goto 47.2,10.6
.talk 42790
..accept 26748
..turnin 26748
step
goto 47.1,10.6
.talk 43884
..accept 26749
step
goto 47.5,10.7
.talk 733
..turnin 26751
step
goto 47.9,11.9
.talk 43045
.' Fly to Fort Livingston, Stranglethorn |goto 52.6,66.3,0.5 |noway |c
step
goto 53.5,66.8
.talk 44017
..turnin 26749
..accept 26772
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
goto 53.3,50.6
.from Jungle Stalker##687+
.get 5 Jungle Stalker Feather |q 26772/1
.' You can find more Jungle Stalkers around [Northern Stranglethorn,55.3,53.8]
step
goto 66.6,49.1 |n
.' Enter the cave |goto 66.6,49.1,0.5 |noway |c
step
goto 70.7,48.6
.from Mai'Zoth##818
.get Mind's Eye |q 26781/1
step
goto 66.6,49.1 |n
.' Leave the cave |goto 66.6,49.1,0.5 |noway |c
step
goto 67.2,54.1
.click Mosh'Ogg Bounty##5743
.get Mosh'Ogg Bounty |q 26782/1
step
goto 53.4,66.3
.talk 44018
..turnin 26782
step
ding 31
step
goto 53.5,66.8
.talk 44017
..turnin 26772
..accept 26773
step
goto 53.5,66.8
.talk 44017
..' Tell her you are ready for the Mind Vision ritual, Hu'rala
.' Complete the Mind Vision |q 26773/1
step
goto 53.5,66.8
.talk 44017
..turnin 26773
..accept 26774
step
goto 53.2,66.9
.talk 44019
..turnin 26781
step
goto 53.2,66.9
.talk 44019
.home Fort Livingston
step
goto 52.7,66.8
.talk 44021
..accept 26779
step
goto 53.1,66.5
.talk 44043
..accept 26780
step
goto 63.1,74.5
.from Braddok##42858
.get Braddok's Big Brain |q 26774/1
step
goto 62.7,72.4
.kill 16 Skullsplitter Troll |q 26779/1
.click Zul'Mamwe Brazier##2570
.' Extinguish 8 Zul'Mamwe Braziers |q 26780/1
' |from Ana'thek the Cruel##1059, Skullsplitter Berserker##783, Skullsplitter Scout##782, Braddok##42858, Skullsplitter Headhunter##781, Skullsplitter Spiritchaser##672
step
goto 53.5,66.8
.talk 44017
..turnin 26774
..accept 26775
step
goto 53.5,66.8
.talk 44017
..' Tell her you are ready for the Mind Control ritual, Hu'rala
.' Become the Captured Lashtail Hatchling |invehicle |q 26775
step
goto 89.1,46.3
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42881
..' <Learn to bite through nets from the elder raptor.>
.' Speak with Tan'shang |q 26775/1
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you'll go get him some food from the sleeping trolls
.' Skip to the next step in the guide
step
goto 86.9,50.0
.' Stay away from the trolls as you walk, or you will have to start over
.clicknpc Gurubashi Soldier##11167
.' Steal Raptor Food |havebuff Interface\Icons\INV_Misc_Bag_10_Blue |q 26775
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you've brought some food for him, then learn to light fires from the elder raptor
.' Help Tenjiyu |q 26775/2
step
goto 86.9,41.2
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.  // Can't find the object id for this
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
.' Skip to the next step in the guide
step
goto 86.4,39.3
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.  // Can't find the object id for this
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.1,38.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
.' Skip to the next step in the guide
step
goto 85.3,37.7
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.  // Can't find the object id for this
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.9,38.3] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
.' Skip to the next step in the guide
step
goto 82.8,37.5
.talk 42883
..' <Learn to drop skulls from the elder raptor.>
.' Speak with Chiyu |q 26775/3
step
goto 82.5,33.9
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.  // Can't find the object id for this
.' Walk onto the bridge to 81.7,34.0
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
.' Skip to the next step in the guide
step
goto 79.9,34.2
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.  // Can't find the object id for this
.' Walk onto the bridge to 79.0,33.5
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
.' Skip to the next step in the guide
step
goto 74.3,31.2
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.  // Can't find the object id for this
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.7,32.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
.' Run up the big staircase
.' Escape from Zul'Gurub |q 26775/4
step
goto 53.5,66.8
.talk 44017
..turnin 26775
..accept 26776
step
goto 52.7,66.8
.talk 44021
..turnin 26776
..turnin 26779
step
goto 53.0,66.7
.talk 44043
..turnin 26780
step
goto 52.6,66.1
.talk 43042
.' Fly to Rebel Camp, Stranglethorn |goto 47.8,12.0,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 208
step
'Hearth to Fort Livingston |goto 53.2,66.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 52.6,66.1
.talk 43042
..' Tell him Wulfred says that he paid for your trip to the Explorer's League Digsite and you're ready to depart
.' You will fly to the Explorer's League Digsite |goto The Cape of Stranglethorn,55.6,41.2,0.5 |noway |c |q 26805
step
goto 55.7,41.2
.talk 43043
.fpath Explorers' League Digsite
step
ding 32
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (32-36)\\The Cape of Stranglethorn (32-36)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)
startlevel 32.2
dynamic on
step
goto The Cape of Stranglethorn,55.0,41.8
.talk 44100
..accept 26822
step
goto 55.2,42.5
.talk 44082
..turnin 26805
..accept 26825
step
goto 55.3,41.9
.talk 44099
..turnin 26825
..accept 26823
step
goto 51.2,35.0 |n
.' Go to the road |goto 51.2,35.0,0.5 |noway |c
step
goto 64.5,29.8 |n
.' Enter the cave |goto 64.5,29.8,0.5 |noway |c
step
goto 66.1,26.3
.from Ironjaw Behemoth##44113+
.get Ironjaw Humour |q 26823/1
.kill 12 Stranglethorn Basilisk##44127+ |q 26822/1
step
goto 64.5,29.8 |n
.' Leave the cave |goto 64.5,29.8,0.5 |noway |c
step
goto 56.6,27.9 |n
.' Follow the road |goto 56.6,27.9,0.5 |noway |c
step
goto 55.0,41.8
.talk 44100
..turnin 26822
step
goto 55.3,41.9
.talk 44099
..turnin 26823
..accept 26817
step
goto 55.4,42.2
.talk 44083
..accept 26818
..accept 26819
..accept 26820
step
goto 41.7,28.9
.from Stranglethorn Tigress##772+
.get 4 Supple Tigress Fur |q 26818/1
.from Elder Shadowmaw Panther##1713+
.get 4 Velvety Panther Fur |q 26818/2
.' You can find more Elder Shadowmaw Panthers and Stranglethorn Tigress' around [The Cape of Stranglethorn,45.8,19.0]
step
goto 41.5,50.6 |n
.' The path to Perfectly Pure starts here |goto 41.5,50.6,0.5 |noway |c
step
goto 43.9,49.0
.click Holy Spring##90
.get Pure Water |q 26817/1
step
goto 39.9,45.0
.click Naga Icon##4853
.get 6 Naga Icon |q 26820/1
.from Naga Explorer##1907+
.get 6 Akiris Reed |q 26819/1
step
goto 55.3,41.9
.talk 44099
..turnin 26817
..accept 26815
step
goto 55.4,42.2
.talk 44083
..turnin 26818
..turnin 26819
..accept 26808
..turnin 26820
step
goto 55.6,42.2
.talk 44084
..turnin 26808
..accept 26809
step
goto 54.2,31.4
.click Totem of Hir'eek##7954
.' Place incense in front of the Totem of Hir'eek |q 26809/1
.' Watch the cutscene
.' Spy on Zanzil |q 26809/2
step
goto 52.8,32.8
.from Zanzil Zombie##1488+, Zanzil Mindslave##43223+
.get 5 Zanzil's Mixture |q 26815/1
step
goto 55.3,41.9
.talk 44099
..turnin 26815
..accept 26824
..accept 26816
step
goto 55.6,42.2
.talk 44084
..turnin 26809
..accept 26810
step
goto 55.2,42.4
.talk 44082
..turnin 26824
..accept 26821
step
goto 61.2,44.6
.' Stand in front of the swirling green portal
.' Deal with Zanzil the Outcast |q 26810/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26810
..accept 26811
step
goto 62.4,46.8
.click Half-Buried Bottle##228
..accept 26603
step
goto 61.7,42.4
.from Zanzil Witch Doctor##1490+
.get Zanzil's Formulation |q 26816/1
step
goto 61.2,44.3
.click Zanzil's Portal##9041
.' Pass through Zanzil's Portal |q 26811/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26811
..accept 26812
step
goto Northern Stranglethorn,78.3,44.0
.from High Priestess Jeklik##43257
.' Destroy High Priestess Jeklik's body |q 26812/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26812
..accept 26813
step
goto 77.9,44.4
.' Click Zanzil's Portal##9041
.' Pass through Zanzil's Portal |q 26813/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26813
..accept 26814
step
ding 33
step
goto 84.1,36.9
.from High Priest Venoxis##43323
.' Deal with High Priest Venoxis |q 26814/1
.click Rope Ladder##32266
.' You will teleport back to Explorers' League Digsite |goto The Cape of Stranglethorn,55.1,41.6,0.5 |noway |c |q 26814
step
goto The Cape of Stranglethorn,55.3,41.9
.talk 44099
..turnin 26816
step
goto 55.6,42.2
.talk 44084
..turnin 26814
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.3,67.8
.talk 2500
..accept 26599
step
goto 42.5,73.2
.talk 44112
..turnin 26821
step
goto 41.8,72.8
.talk 2486
..accept 26597
step
goto 42.1,73.4
.talk 2501
..accept 26593
step
goto 41.7,74.5
.talk 2859
.fpath Booty Bay
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 54.6,65.3
.from Gorlash##1492 |tip He's a big blue giant that walks along the shore here.
.get Smotts' Chest |q 26599/1
step
goto 47.4,63.8 |n
.' Go back to the main road |goto 47.4,63.8,0.5 |noway |c
step
goto 52.5,51.6
.from Elder Mistvale Gorilla##1557+
.collect Gorilla Fang##2799 |q 26597
step
goto 54.2,46.4
.talk 1449
..turnin 26598 |n
.from Mokk the Savage##1514 |tip Stand at the entrance of this cave.  He is a white gorilla, the third gorilla that comes to attack you.
.get Heart of Mokk |q 26597/1
step
goto 51.7,53.0
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 40.3,67.8
.talk 2500
..turnin 26599
..accept 26600
step
goto 42.8,69.0
.talk 2664
.get Crate of Grade-E Meat |q 26600/1
step
goto 41.8,72.8
.talk 2486
..turnin 26597
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto 41.0,74.0
.talk 2491
.get Crate of Pupellyverbos Port |q 26600/2
step
goto 40.9,73.8
.talk 6807
.home Booty Bay
step
goto 40.3,67.8
.talk 2500
..turnin 26600
..accept 26602
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 59.5,79.0
.talk 2634
..turnin 26603
..accept 26604
step
goto 58.2,80.7
.kill 5 Jaguero Stalker##2522+ |q 26604/1
step
goto 59.5,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto 60.5,77.9
.from Skymane Gorilla##2521+, Skymane Bonobo##43417+
.get Poobah's Tiara |q 26605/1
.get Poobah's Scepter |q 26605/2
.get Poobah's Slippers |q 26605/3
.get Poobah's Diary |q 26605/4
step
goto 59.5,79.0
.talk 2634
..turnin 26605
..accept 26606
step
goto 63.0,83.7
.from King Mukla##1559
.get Shackle Key |q 26606/1
step
goto 59.5,79.0
.talk 2634
..turnin 26606
step
ding 34
step
goto 49.7,81.2
.click Ruined Lifeboat##223
..' <Place the food and drink inside the lifeboat.>
.kill Negolash##1494+ |q 26602/1
step
goto 56.8,53.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto 59.5,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto 55.8,52.0
.talk 43377 |tip He's a friendly Night Elf that walks around this area.
..' Tell him to pay up
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
'Hearth to Booty Bay |goto 40.9,73.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 40.3,67.8
.talk 2500
..turnin 26602
..accept 26601
step
goto 34.7,65.3
.kill Mok'rash the Cleaver##1493 |q 26601/1
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
.from "Good-Boy" Bruce##43454
.collect Weather-Beaten Coin##59143 |n
.' Click the Weather-Beaten Coin in your bags |use Weather-Beaten Coin##59143
..accept 26617
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.3,67.8
.talk 2500
..turnin 26601
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.1,73.3
.talk 2487
..turnin 26617
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 40.7,73.8
.talk 2488
..accept 26613
step
goto 43.4,71.5
.talk 2493
..accept 26614
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 45.0,79.5
.click Bloodsail Charts##222+
.get Bloodsail Charts |q 26612/3
.click Bloodsail Orders##220+ |tip It looks like a white scroll.
.get Bloodsail Orders |q 26612/4
.' The Bloodsail Orders and Charts can also spawn at the following locations:
.' At [42.0,83.2]
.' At [40.9,82.8]
.kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
.get 15 Snuff |q 26613/1
.get Dizzy's Eye |q 26614/1
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 43.4,71.5
.talk 2493
..turnin 26614
step
goto 40.7,73.8
.talk 2488
..turnin 26613
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505
..' Tell her you need to cut off her head, then do the deed
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
..' Tell him you need an extra-large pirate hat. Seahorn's orders.
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
..' Give him the head and the hat and tell him he's the boss
.' Return both items to Fleet Master Seahorn |q 26630/1
step
goto 41.1,73.3
.talk 2487
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 51.1,69.0 |n
.' Go to the beach |goto 51.1,69.0,0.5 |noway |c
step
goto 44.5,91.4
.talk 2548
..turnin 26631
..accept 26633
step
goto 44.5,92.5
.' Go upstairs to the top deck of the ship
.click Swabbie's Mop##9742
.' Click the Deck Stains that spawn on the deck of the ship
.' Swab the Decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,93.3
.talk 2545
..accept 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
ding 35
step
goto 46.3,96.0
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 52.5,87.9
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1
.' You can find more Lime Crates around [The Cape of Stranglethorn,56.6,80.0]
step
goto 44.5,93.2
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.4,91.6
.talk 2548
..accept 26644
step
goto 46.7,95.3
.talk 2546
..turnin 26644
step
goto 46.6,95.0
.talk 2547
..accept 26647
step
goto 46.8,94.0
.' Go upstairs
.talk 43556
..accept 26648
step
goto 46.9,93.9
.clicknpc Ol' Blasty##29757
.' Use the abilities on your hotbar to shoot at Smilin' Timmy Sticks |tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
.' Hit Smilin' Timmy Sticks with 5 Cannonballs |q 26647/1
step
'Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
step
goto 46.6,95.0
.' Go downstairs
.talk 2547
..turnin 26647
..accept 26649
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
'Use the Return to Shore ability on your hotbar
.' Return to the Wild Shore |goto 46.0,89.4,0.5 |noway |c
step
goto 46.6,95.0
.' Go downstairs in the ship
.talk 2547
..turnin 26649
step
goto 57.1,82.4
.' Use Dead-Eye's Flare Gun |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.2,91.5
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.. Ask him if the Brashtide Crew is ready for battle
.' Speak with Long John Copper |q 26662/1
step
goto 50.6,91.5
.' Go all the way downstairs in this ship
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship
.click Grog Barrel##9095
..' <Nudge the cork.>
.' Sabotage the Grog |q 26663/1
step
goto 46.7,94.2
.' Go all the way downstairs in this ship
.talk 43660
..' Ask him what he can tell you about the Brashtide Crew
.' Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship, unless you've already killed 9 of them
.click Gunpowder Barrel##9095
..' <Pour the water onto the gunpowder.>
.' Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.' Go downstairs in this ship
.talk 43661
..' Ask her if she knows the battle plan
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26662
step
goto 44.7,92.8
.' Go all the way downstairs in this ship
.click Cannonball Crate##9651+
..' <Grease the cannonballs.>
.' Sabotage the Cannonballs |q 26663/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26663
step
goto 44.8,92.9
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Accuse and kill 9 Bloodsail Corsairs |q 26664/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26664
..accept 26665
step
'Hearth to Booty Bay |goto 40.9,73.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.' Go downstairs one level
.click Barrel of Doublerum##32
..turnin 26678
..accept 26679
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26679
..accept 26695
..accept 26698
step
goto 41.5,73.0
.talk 2487
..turnin 26698
..accept 26700
..accept 26699
step
goto 42.6,69.1
.click Narkk's Handbomb##9651+
.get Narkk's Handbombs |q 26695/1
step
goto 41.2,73.1
.talk 2496
..turnin 26695
..accept 26697
step
goto 40.4,73.5
.talk 737
..' Tell him you need a wind rider to take on a special mission
.' Use your Throw Handbombs ability on your hotbar on the Bloodsail mobs in the boats below
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destroy 6 Brashtide Attack Boats |q 26697/2 |tip The Brashtide Attack Boats are the small wooden boats in the water.
step
'Use your Return to Booty Bay ability on your hotbar
.' Return to Booty Bay |goto 40.5,73.3,0.5 |noway |c
step
goto 41.2,73.1
.talk 2496
..turnin 26697
step
ding 36
step
goto 41.5,73.0 |n
.click Blackwater Rope##7538
.' Swing over to the Bloodsail ship |goto 41.0,70.7,0.5 |noway |c
step
goto 41.2,70.7
.kill 8 Bloodsail Corsair##43636+ |q 26700/1 |tip They are all around inside this ship.
step
goto 41.1,70.9 |n
.click Blackwater Rope##7538
.' Swing over to the Booty Bay docks |goto 41.4,73.0,0.5 |noway |c
step
goto 42.5,72.5
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.2,73.1
.talk 2496
..turnin 26700
..turnin 26699
..accept 26703
step
goto 40.4,73.5
.talk 737
..' Tell him you need another wind rider
.' You will fly onto a Bloodsail ship |goto 36.5,65.9,0.5 |noway |c
step
goto 35.6,66.8
.' Kill Fleet Master Firallon |q 26703/1 |tip He's downstairs in the ship, in the Captain's room.
step
goto 41.2,73.1
.talk 2496
..turnin 26703
step
goto 41.5,74.4
.talk 49635
..accept 28749
step
goto 41.5,74.4
.talk 49635
..' Ask him to prepare the portal
.click Portal to Andorhal##34252
.' You will teleport to Andorhal |goto Western Plaguelands,40.8,70.3,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)
startlevel 34
dynamic on
step
goto Western Plaguelands,42.9,85.1
.talk 12596
.fpath Chillwind Camp
step
goto 42.7,84.1
.talk 45165
..accept 27167
step
goto 42.7,84.0
.talk 10838
..accept 27166
..accept 27158 |tip You may not be able to get this if you have one of the other breadcrumb quests.
step
goto 41.4,79.7
.from Shaggy Black Bear##44473+
.get 5 Side of Bear Meat |q 27167/1
.click Brownfeather Quill##2630
.get 9 Brownfeather Quill |q 27166/1
.' You can find more Bears and Feathers around [Western Plaguelands,34.6,77.0]
step
goto 42.7,84.0
.talk 10838
..turnin 27166
step
goto 42.7,84.1
.talk 45165
..turnin 27167
step
goto Western Plaguelands,39.4,69.5
.talk 46006
.fpath Andorhal
step
goto 41.1,70.4
.talk 44453
..turnin 28505 |tip You may not have this breadcrumb quest to turn in.
..turnin 28749 |tip You may not have this breadcrumb quest to turn in.
..turnin 27158 |tip You may not have this breadcrumb quest to turn in.
..accept 27159
step
goto 41.0,70.5
.talk 44471
..accept 27160
step
goto 41.3,70.1
.talk 44467
..accept 27161
step
goto 42.6,65.8
.' Use Lang's Hand Grenades on the Scourge Bone Animus |use Lang's Hand Grenades##60849 |tip It looks like a type of bone object on the ground inside this tower.
.' Destroy the Scourge Bone Animus |q 27161/1
.' Use Lang's Hand Grenades on Stickbone Berserkers |use Lang's Hand Grenades##60849
.kill 5 Stickbone Berserker##44329+ |q 27161/2
|modelnpc Scourge Bone Animus##7418
step
goto 42.0,68.2
..kill 15 Desiccated Scourge |q 27159/1
..kill 6 Opengut Behemoth |q 27160/1
' |from Desiccated Magus##44315+, Desiccated Spearman##44316+
|modelnpc Opengut Behemoth##44562
step
goto 41.3,70.1
.talk 44467
..turnin 27161
..accept 27164
step
goto 41.1,70.5
.talk 44453
..turnin 27159
step
goto 41.0,70.5
.talk 44471
..turnin 27160
step
goto 41.1,70.5
.talk 44453
..accept 27162
..accept 27163
step
goto 43.6,68.9
.kill Rattlegore##44318 |q 27163/1 |tip He's inside this town hall building.  Don't worry that he's marked as elite, he's easy to kill.
step
goto 45.2,69.3
.' Use Lang's Hand Grenades on Stickbone Berserkers, if they spawn |use Lang's Hand Grenades##60849
.from Araj the Summoner##1852 |tip Don't worry that he's marked as elite, he's easy to kill.
.click Araj's Phylactery##4712
.get Araj's Phylactery Shard |q 27164/1
step
goto 45.3,72.8
.from Darkmaster Gandling##44323 |tip Thassarian will join you when Darkmaster Gandling is weakened, to help finish him off.  Don't worry that he's marked as elite, he's easy to kill.
.' Deal with Darkmaster Gandling |q 27162/1
step
goto 41.1,70.5
.talk 44453
..turnin 27162
..turnin 27163
..turnin 27164
..accept 27165
step
ding 35
step
goto Western Plaguelands,39.4,69.5
.talk 46006
.' Tell her you need a flight to Chillwind Camp. |goto Western Plaguelands,43.0,85.0 |noway |c
step
goto Western Plaguelands,42.7,84.0
.talk 10838
.turnin 27165
..accept 27169
step
goto 43.3,84.6
.talk 46269
.home Chillwind Camp
step
goto 43.4,83.7
.talk 11053
..accept 27168
step
goto 52.1,83.5
.' Use your Chillwind Tribute next to Uther's Tomb |use Chillwind Tribute##61920 |tip It looks like a stone statue of a paladin.
.' Receive Uther's Blessing |q 27169/1
step
goto 52.0,82.8
.talk 1854
..turnin 27169
..accept 27170
step
goto 50.5,80.0
.' Use your Holy Thurible on Withdrawn Souls |use Holy Thurible##60861
.' Release 12 Withdrawn Souls |q 27168/1
|modelnpc Withdrawn Soul##45166
step
goto 54.3,79.9 |n
.' Enter the crypt |goto 54.3,79.9,0.5 |noway |c
step
goto 53.8,80.4
.click Broken Weapons Crate##9868
..turnin 27170
..accept 27171
step
goto 54.6,80.4
.from Skeletal Flayer##1783+, Skeletal Sorcerer##1784+
.get 4 Time-Worn Breastplate |q 27171/1
.get 4 Rusted Sword |q 27171/2
step
'Hearth to Chillwind Camp |goto 43.3,84.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.4,83.7
.talk 11053
..turnin 27168
step
goto 43.0,83.5
.talk 10840
..accept 27175
step
goto 42.7,84.0
.talk 10838
..turnin 27171
..accept 27172
step
goto 48.5,54.9
.talk 44457
..accept 26956
step
goto 48.9,54.8
.talk 44456
..accept 26953
step
goto 49.3,55.0
.talk 44454
..turnin 27175
..accept 26999
step
goto 47.4,52.9
.click Unhealthy-Looking Pumpkin##6326
.from Thrashing Pumpkin##44487+
.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
step
goto 46.8,54.1
.click Rotten Apple##9820+
.from Pome Wraith##44488+
.' Remove 4 Rotten Apples |q 26956/2
step
goto 45.8,53.4
.click Bad Corn##9819
.from Corn Stalker##44489+
.' Remove 6 Bad Corn |q 26956/1
step
goto 46.0,48.7
.from Hulking Plaguebear##44482+
.get 4 Hulking Plaguebear Sample |q 26999/3
.from Diseased Wolf##1817+
.get 4 Diseased Wolf Sample |q 26999/4
step
goto 48.5,54.9
.talk 44457
..turnin 26956
step
goto 50.3,59.6
.from Plague Lurker##1824+
.get 4 Plague Lurker Sample |q 26999/1
.from Venom Mist Lurker##1822+
.get 4 Venom Mist Lurker Sample |q 26999/2
step
goto 53.8,64.7
.talk 45165
..turnin 27172
..accept 27173
step
goto 53.4,65.3
.kill 10 Forsaken Outrider##45209+ |q 27173/1
step
goto 53.8,64.7
.talk 45165
..turnin 27173
..accept 27174
step
goto 54.1,65.8
.talk 45212
..' Tell him if he really wants to help out, he can help your friends with some combat practice
.' Defeat Gory |q 27174/1
step
goto 53.8,64.7
.talk 45165
..turnin 27174
step
ding 36
step
goto 50.3,59.6
.from Plague Lurker##1824+, Venom Mist Lurker##1822+
.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
.' If you lost Zen'Kiki, you will need to go to [Western Plaguelands,48.9,54.8] and speak with Adrine Towhide.
|modelnpc Zen'Kiki##44269
step
goto 49.3,55.0
.talk 44454
..turnin 26999
..accept 26935
step
goto 48.9,54.8
.talk 44456
..turnin 26953
..accept 26954
step
goto 52.4,53.2 |n
.' The path up to A Different Approach starts here |goto 52.4,53.2,0.5 |noway |c
step
goto 53.9,53.7
.clicknpc Zen'Kiki##44269
.kill 7 Diseased Hawk##44481+ |q 26954/1
step
goto 48.9,54.8
.talk 44456
..turnin 26954
step
goto 48.1,32.4
.talk 11616
..turnin 26935
..accept 27000
step
goto 48.4,31.9
.talk 44472
..accept 27013
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27000
step
goto 47.4,35.0
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Frighten 25 Northridge Spiders |q 27000/1
|modelnpc Northridge Spider##44284
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
step
goto 46.6,30.5
.kill 12 Rabid Fox##44551+ |q 27013/1
step
goto 48.1,32.4
.talk 11616
..turnin 27000
..accept 27001
step
goto 48.3,31.9
.talk 44472
..turnin 27013
..accept 27011
..accept 27012
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27001
step
goto 47.0,35.3
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Continuously scare the Northridge Spiders and try to make them run to [Western Plaguelands,48.0,32.9]
.' The Hearthglen Recruits will kill the Northridge Spiders
.' Lure 10 Northridge Spiders to Lumber Mill |q 27001/1
|modelnpc Northridge Spider##44284
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
goto 47.6,39.0
.from Redpine Gnoll##44478+
.get 6 Redpine Club |q 27012/1
.from Redpine Shaman##44479+
.get 6 Redpine Stave |q 27012/2
.click Northridge Lumber##1248
.get 10 Northridge Lumber |q 27011/1
step
goto 48.1,32.4
.talk 11616
..turnin 27001
..accept 27002
step
goto 48.3,31.9
.talk 44472
..turnin 27011
..turnin 27012
step
 goto 43.2,15.9
.talk 45157
..accept 27156
step
goto 43.0,16.3
.talk 45162
..' Tell them Lieutenant Myner asked you to challenge them to a duel
.' Challenge and Defeat 7 Hearthglen Trainees |q 27156/1
step
 goto 43.2,15.9
.talk 45157
..turnin 27156
..accept 27157
step
ding 37
step
goto 42.6,15.0
.talk 44905
..accept 26957
step
goto 42.0,14.8
.talk 44441
..turnin 27002
step
goto 42.2,15.0
.talk 45147
..accept 27151
step
goto 45.8,12.1 |n
.' Enter the mine |goto 45.8,12.1,0.5 |noway |c
step
goto 45.7,9.4
.kill Shadril##45156 |q 27157/1
step
goto 45.8,12.1 |n
.' Leave the mine |goto 45.8,12.1,0.5 |noway |c
step
 goto 43.2,15.9
.talk 45157
..turnin 27157
step
goto 54.5,23.9
.kill 10 Redpine Looter##45153+ |q 27151/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27151
..accept 27152
step
goto 57.7,36.1
.kill Moldfang##45155 |q 27152/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27152
..accept 27153
step
goto 50.6,52.6
.talk 44458
..turnin 26957
..accept 27017
step
goto 50.5,52.2
.talk 46011
.' Fly to Hearthglen, Western Plaguelands |goto 44.6,18.4 |noway |c
step
goto 43.7,17.3
.talk 45150
..' Ask her if she's heard any interesting rumors lately
.' Speak with Bree Ironstock |q 27153/3
step
goto 42.1,18.2
.talk 45151
..' Ask him if he has any leads for you
.' Speak with High Cleric Alphus |q 27153/4
step
goto 44.4,13.5
.talk 45148
..' Ask him if he's noticed anything strange lately or any new customers in the blacksmith shop
.' Speak with Morris Vant |q 27153/1
step
goto 44.8,12.4
.talk 45149
.' Ask him if he's noticed anything strange lately or any new customers buying anything suspicious
.' Speak with Outfitter Mendelev |q 27153/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27153
..accept 27154
step
goto 45.8,18.4
.' Go to the top of the tower
.talk 45152
..' Ask him what he knows about the gnolls to the south
.from Magus Bisp
.' Magus Bisp "spoken with" |q 27154/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27154
..accept 27155
step
goto 42.0,14.8
.talk 44441
..turnin 27155
step
goto 49.3,55.0
.talk 44454
..accept 27053
step
goto 62.7,58.9
.from Cauldron Lord Soulwrath##11078
.get Gahrron's Withering Cauldron Key |q 27053/1
step
goto 62.6,58.6
.click Scourge Cauldron##4271
..turnin 27053
..accept 27057
step
goto 64.9,59.3
.click Child's Painting##9848 |tip You can find the painting above a fireplace on the first floor of the house
.get Faded Finger Painting |q 27017/2
step
goto 64.9,59.5
.click Prayer Book##8051 |tip It is on the second floor of the house
.get Gahrron Prayer Book |q 27017/1
step
goto 49.3,55.0
.talk 44454
..turnin 27057
..accept 27054
step
goto 48.9,54.8
.talk 44456
..accept 26955
step
goto 50.6,52.6
.talk 44458
..turnin 27017
step
ding 38
step
goto 66.1,47.7
.from Instructor Malicia##44442
.get Cult Orders |q 27054/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27054
..accept 27055
step
goto 66.7,48.9
.click Cultist Cages##4154
.' Free and Heal 4 Captive Plaguebears |q 26955/1
step
goto Eastern Plaguelands,10.1,65.7
.talk 37888
.fpath Thondroril River
step
goto Western Plaguelands,65.0,38.7 |n
.' Enter the cave |goto 65.0,38.7,0.5 |noway |c
step
goto 64.6,35.1
.kill 2 Krastinovian Disciple##44445 |q 27055/1
step
goto 63.2,37.5
.' Walk around inside this cave and do the following:
.kill 2 Flesh-Cobbled Brute##44484 |q 27055/2
.kill 2 Flesh-Cobbled Ripper##44485 |q 27055/3
.kill 4 Unholy Corpuscle##44486 |q 27055/4
step
'Hearth to Chillwind Camp |goto 43.3,84.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 42.9,85.1
.talk 12596
.' Fly to The Menders' Stead, Western Plaguelands |goto 50.5,52.4,0.5 |noway |c
step
goto 49.3,55.0
.talk 44454
..turnin 27055
step
goto 48.9,54.8
.talk 44456
..turnin 26955
step
goto Western Plaguelands,50.5,52.8
.talk 45012
.accept 27197
step
goto 50.5,52.2
.talk 46011
.' Fly to Andorhal, Western Plaguelands |goto 39.5,69.5,0.5 |noway |c
step
goto 39.9,69.5
.talk 44453
..turnin 27197
..accept 27199
step
goto 40.1,69.1
.talk 44467
..accept 27198
step
goto 46.9,68.3
.kill 3 Deathguard War-Captain##44449+ |q 27199/1
step
goto 45.6,69.2
.kill 15 Andorhal Deathguard##44447+ |q 27198/1
step
goto 39.9,69.5
.talk 44453
..turnin 27199
step
goto 40.1,69.1
.talk 44467
..turnin 27198
step
goto 39.9,69.5
.talk 44453
..accept 27205
..turnin 27205
..accept 27201
step
goto 39.8,69.7
.talk 45165
..accept 27202
step
goto 44.9,67.2
.kill 20 Forsaken Trooper |q 27202/1
.kill 9 Lesser Val'kyr |q 27201/1
' |from Forsaken Trooper##45241, Forsaken Trooper##45242, Forsaken Trooper##45243
|modelnpc Lesser Val'kyr##45239
step
goto 39.9,69.5
.talk 44453
..turnin 27201
step
goto 39.8,69.7
.talk 45165
..turnin 27202
step
ding 39
step
goto 39.9,69.5
.talk 44453
..accept 27204
step
goto 40.4,72.2
.' Go to the top of the tower
.kill Aradne##45235 |q 27204/1 |tip Don't worry that she's elite, you can kill her easily.
step
goto 39.9,69.5
.talk 44453
..turnin 27204
..accept 27206
step
goto 42.7,84.0
.talk 10838
..turnin 27206
step
goto Western Plaguelands,42.9,85.0
.talk 12596
.' Fly to The Menders' Stead, Western Plaguelands |goto Western Plaguelands,50.5,52.4,0.5 |noway |c
step
goto 48.9,54.8
.talk 44456
..accept 27683
step
goto 50.5,52.2
.talk 46011
.' Fly to Thondroril River, Eastern Plaguelands |goto Eastern Plaguelands,10.1,65.8,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-46)\\Badlands (44-46)
startlevel 39.2
dynamic on
step
goto Eastern Plaguelands,9.0,66.5
.talk 45417
..turnin 27683
..accept 27367
..accept 27370
step
goto 4.1,36.0
.talk 45428
..turnin 27367
..accept 27368
step
goto 4.7,35.6 |n
.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto 5.1,33.4
.from Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+ |tip All inside this tunnel.
.get 8 Crypt Bile |q 27368/1
step
goto 4.7,35.6 |n
.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto Eastern Plaguelands,4.1,36.0
.talk 45428
..turnin 27368
..accept 27369
step
goto 3.4,38.0
.click Banshee's Bell##9889+ |tip They are located right along the edge of the water
.get 10 Banshee's Bells |q 27369/1
step
goto 9.0,66.5
.talk 45417
..turnin 27369
step
goto 18.4,74.8
.talk 45429
..turnin 27370
..accept 27371
step
goto 18.6,76.9
.kill 5 Death's Step Miscreation##45444+ |q 27371/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27371
..accept 27372
step
goto 17.2,68.7
.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
.get 10 Plaguehound Blood |q 27372/1
.' You can find more Plague Hound Runts around [Eastern Plaguelands,14.4,63.0].
step
goto 9.0,66.5
.talk 45417
..turnin 27372
..accept 27373
step
goto 8.8,66.6
.clicknpc Fiona's Caravan##10937
..' Choose 1 of the 3 buffs you can choose from |tip All of the buffs only work while you're in Eastern Plaguelands.  Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies.  Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks.  Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
.' Click here to proceed. |confirm
step
goto 8.8,66.6
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride Fiona's Caravan |q 27373/1
step
goto 34.9,67.9
.talk 44232
.fpath Crown Guard Tower
step
goto 35.0,68.1
.talk 45500
..accept 27432
step
goto 34.9,69.1
.talk 45417
..turnin 27373
step
goto 35.3,68.8
.talk 45429
..accept 27381
step
goto 35.6,68.9
.talk 11063
..accept 27383
step
goto 35.9,69.3
.' Go to the top of the tower
.talk 45451
..' Ask him if he's interested in joining your caravan
.' Find a traveling companion |q 27381/1
step
goto 35.9,69.3
.talk 45451
..accept 27382
step
goto 35.3,68.9
.talk 45429
..turnin 27381
step
goto 32.4,83.7
.talk 10926
..turnin 27383
..accept 27384
..accept 27392
step
goto 35.5,85.3
.' You can find the doll parts in all of the buildings
.click Pamela's Doll's Right Side##4233
.collect Pamela's Doll's Right Side##12888 |q 27384
.click Pamela's Doll's Left Side##4232
.collect Pamela's Doll's Left Side##12887 |q 27384
.click Pamela's Doll's Head##4231
.collect Pamela's Doll's Head##12886 |q 27384
step
'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
.get Pamela's Doll |q 27384/1
step
goto 40.3,83.8
.from The Lone Hunter##45450
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.4,83.7
.talk 10926
..turnin 27384
..turnin 27392
..accept 27385
step
ding 40
step
goto 35.6,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.3,68.0
.talk 10667
..turnin 27386
..accept 27387
..accept 27388
..accept 27389
step
goto 35.0,68.1
.talk 45500
..accept 27544
step
goto 35.6,68.9
.talk 11063
..' Ask him if he has the extended Annals of Darrowshire
.get Extended Annals of Darrowshire |q 27388/1
step
goto 39.8,72.4
.click Shattered Sword of Marduk##4175
.get Shattered Sword of Marduk |q 27387/2
step
goto 39.6,72.1
.kill 13 Plaguebat##8600+ |q 27382/1
step
goto 35.6,68.7
.' Go to the top of the tower
.talk 45451
..turnin 27382
step
goto 24.2,78.5 |n
.' Enter the crypt |goto 24.2,78.5,0.5 |noway |c
step
goto 23.8,77.9
.' Go to the bottom of the crypt
.from Zaeldarr the Outcast##12250
.get Zaeldarr's Head |q 27432/1
step
goto 22.1,68.2
.click Redpath's Shield##4172
.get Redpath's Shield |q 27388/3
step
goto 22.3,68.3
.' Go upstairs
.click Davil's Libram##430
.get Davil's Libram |q 27388/2
step
goto 35.0,68.2
.talk 45500
..turnin 27432
step
goto 35.2,68.1
.talk 10667
..turnin 27388
step
goto 37.3,60.2
.click Horgus' Skull##4173
.get Skull of Horgus |q 27387/1
step
goto 30.2,56.9
.talk 16135
..turnin 27544
..accept 27420
..accept 27421
step
goto 33.7,44.4
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Western Necropolis |q 27421/2
step
goto 37.8,42.5
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Northeastern Necropolis |q 27421/3
step
goto 37.6,48.3
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Southeastern Necropolis |q 27421/1
step
goto 36.4,46.0
.from Scourge Champion##8529+
.collect Fetid Skull##13157 |n
.' Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
.get 5 Resonating Skull |q 27389/1
.from Shadowmage##8550+, Dark Adept##8546+
.collect Plague Disseminator Control Rune##61037 |n
.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
.' Destroy 3 Plague Disseminators |q 27420/1
step
goto 30.2,56.9
.talk 16135
..turnin 27420
..turnin 27421
step
goto 35.3,68.1
.talk 10667
..turnin 27387
..turnin 27389
..accept 27390
step
goto 35.1,84.0
.' Use your Relic Bundle |use Relic Bundle##15209
.' Fight in the battle and follow the instructions that appear on your screen
.from Redpath the Corrupted##10938
.' Joseph Redpath will appear after the battle at [Eastern Plaguelands,35.1,84.0]
.talk 10936
.' Accept Redpath's Forgiveness |q 27390/1
step
goto 32.4,83.7
.talk 10926
..turnin 27390
..accept 27391
step
goto 32.2,83.4
.click Joseph's Chest##318
..turnin 27391
step
goto 34.9,69.2
.talk 45417
..accept 27448
step
goto 35.0,69.3
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride in Fiona's Caravan |q 27448/1
step
goto 52.9,53.1
.talk 45417
..turnin 27448
..accept 27455
step
goto 53.0,53.1
.clicknpc Fiona's Caravan##45400
.' Complete the Argus' Journal quest |tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
|confirm
step
goto 53.2,54.6
.talk 11035
..accept 27451
..accept 27452
step
goto 53.8,54.0
.' Go to the top of the tower
.talk 45575
..accept 27450
step
goto 52.8,51.4
.talk 45574
..accept 27449
.kill 3 Mossflayer Rogue##45579+ |q 27449/1
step
goto 52.8,51.4
.talk 45574
..turnin 27449
step
ding 41
step
goto 50.2,61.3
.clicknpc Plague Puffer##45650+
.get 8 Plague Puffer |q 27450/1
.clicknpc Infectis Incher##45655+
.get 8 Infectis Incher |q 27450/2
.clicknpc Infectis Scuttler##45657+
.get 8 Infectis Scuttler |q 27450/3
step
goto 53.7,62.3
.from Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
.collect 7 Living Rot##15447 |n |tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
.' Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
.get Coagulated Rot |q 27451/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27451
step
goto 55.7,61.0
.from Dark Summoner##8551+, Vile Tutor##8548+
.get Death Cultist Headwear |q 27452/1
.get Death Cultist Robes |q 27452/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27452
..accept 27453
step
goto 57.6,72.6
.' Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
.get 8 Active Liquid Plague Agent |q 27453/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27453
..accept 27454
step
goto 61.7,75.5
.' Use your Death Cultist Disguise |use Death Cultist Disguise##61283
.' Wear your Death Cultist Disguise |havebuff INTERFACE\ICONS\inv_helmet_152 |q 27454
step
goto 62.4,76.4
.click Mereldar Plague Cauldron##4331
..' Choose to throw in an entire flask
.' Disturb the Mereldar Plague Cauldron |q 27454/1
step
goto 53.2,54.6
.talk 11035
..turnin 27454
step
goto 53.8,54.0
.' Go to the top of the tower
.talk 45575
..turnin 27450
step
goto 74.4,53.3
.talk 45431
..turnin 27455
..accept 27463
step
goto 73.8,51.9
.talk 16134
..accept 27456
step
goto 74.9,53.5
.talk 11033
..accept 27458
step
goto 75.6,52.4
.talk 16256
.home Light's Hope Chapel
step
goto 75.6,52.0
.talk 11036
..accept 27459
step
goto 75.9,52.0
.talk 11034
..turnin 27463
..accept 27464
step
goto 77.2,50.8 |n
.' Enter the crypt |goto 77.2,50.8,0.5 |noway |c
step
goto 77.2,51.4
.' Go to the bottom of the crypt
.' Use your Argent Scroll |use Argent Scroll##61309
.from Argent Warden##45698+
.from Lord Raymond George##45707
.' Complete the Trial of the Crypt |q 27464/1
step
goto 75.9,52.0
.talk 11034
..turnin 27464
..accept 27465
step
goto 75.7,52.0
.talk 16365
..accept 27467
step
goto 71.9,45.4
.from Stephen Browman##46167
.get Browman's Wrappings |q 27458/1
step
goto 72.1,41.6 |n
.' Run up this path |goto 72.1,41.6,0.5 |noway |c
step
goto 77.4,37.3
.kill 16 Noxious Glade Scourge |q 27465/1
.kill 8 Noxious Glade Cultists |q 27465/2
.clicknpc Slain Scourge Trooper##45695+
.' Bury 10 Blades |q 27467/1
' |from Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
' |from Skullmage##45691+, Noxious Assassin##45692+
|tip Be careful of the patrolling elite, Garginox, in this area.
|modelnpc Garginox##45681
step
'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 75.7,52.0
.talk 16365
..turnin 27467
step
goto 75.9,52.0
.talk 11034
..turnin 27465
step
goto 74.9,53.5
.talk 11033
..turnin 27458
step
goto 71.1,60.6
.from Carrion Grub##8603+, Carrion Devourer##8605+
.get 15 Slab of Carrion Worm Meat |q 27456/1
step
goto 72.6,74.8
.talk 16116
..turnin 27459
..accept 27460
step
goto 73.6,74.8
.kill 10 Tyr's Hand Scarlet Crusader |q 27460/1
' |from Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
step
goto 77.6,79.4
.click Crusader's Flare##6543
..turnin 27460
..accept 27461
..accept 27462
step
goto 75.3,76.2
.talk 16112
..turnin 27462
..accept 27614
..accept 27615
..accept 27616
..accept 27619
step
ding 42
step
goto 74.8,76.7
.click Battered Chest##10
.get Crimson Boar |q 27614/1
step
goto 74.2,78.3
.click Battered Chest##10
.get Lihanna's Strand |q 27614/2
step
goto 75.1,79.0
.click Battered Chest##10
.get Shroud of Uther |q 27614/3
step
goto 75.9,77.5
.click Battered Chest##10
.get Gavinrad's Sigil |q 27614/4
step
goto 75.0,78.3
.' Go into the basement of the fortress
.kill Mataus the Wrathcaster##46093 |q 27615/1
step
goto 74.9,78.3
.' Go upstairs into the main room of the fortress
.kill Scarlet Commander Marjhan##46092 |q 27619/1
step
goto 74.5,77.5
.' Go down the hall and up more stairs
.kill Huntsman Leopold##46094 |q 27616/1
step
goto 75.3,76.2
.talk 16112
..turnin 27614
..turnin 27615
..turnin 27616
..turnin 27619
..accept 27618
step
goto 76.1,75.3
.talk 16116
..turnin 27618
step
goto 76.7,73.1
.talk 16115
..turnin 27461
..accept 27612
..accept 27613
step
goto 77.8,71.0
.' Click the Argent Portal |tip It looks like a swirling portal in a room on the north side of the building.  Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
.' Open the Portal within the Library Wing |q 27612/2
step
goto 78.6,72.9
.' Click the Argent Portal |tip It looks like a swirling portal in a room on the west side of the building.
.' Open the Portal within the Hall of Arms |q 27612/1
step
goto 77.6,72.7
.' Follow the big spiral stairs up to the top of the bell tower
.kill Rohan the Assassin##46095 |q 27613/1
step
goto 76.7,73.1
.talk 16115
..turnin 27612
..turnin 27613
..accept 27617
step
goto 76.1,75.3
.talk 16116
..turnin 27617
..accept 27620
step
goto 82.3,79.4
.kill Crusader Lord Valdelmar##46096 |q 27620/1
step
goto 75.6,52.0
.talk 11036
..turnin 27620
step
 goto Eastern Plaguelands,75.8,52.4
.talk 45729
..accept 27466
step
goto 73.8,51.9
.talk 16134
..turnin 27456
..accept 27457
step
goto 61.8,41.0
.talk 45574
..accept 27481
step
goto 61.0,43.7
.talk 45736
..accept 27479
step
goto 61.6,43.1
.talk 45735
..accept 27477
step
goto 61.5,42.7
.talk 45417
..turnin 27457
..turnin 27466
step
goto 61.6,43.2
.talk 45729
..accept 27487
step
goto 61.8,35.7
.kill Ix'lar the Underlord##45744 |q 27487/1 |tip He's a big purple bug that walks around this area, so you may need to search for him.
.kill 10 Ix'lar's minion |q 27487/2
' |from Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
step
goto 56.7,27.9
.kill Borelgore##11896 |q 27477/1 |tip He's a huge yellow grub that walks along in this big trench.
step
goto 58.9,20.4 |n
.' Run up this path |goto 58.9,20.4,0.5 |noway |c
step
goto 66.8,9.9
.' Don't walk over the dirt piles on the ground, they spawn more enemies
.from Warlord Thresh'jin##10822 |tip Don't worry that he's elite, you can kill him easily
.get Body of Warlord Thresh'jin |q 27481/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27481
..accept 27482
step
goto 67.4,9.0
.' Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
.' Burn Warlord Thresh'jin's Body |q 27482/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27482
step
goto 64.5,13.7
.' Don't walk over the dirt piles on the ground, they spawn more enemies
.from Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
.get 30 Mossflayer Eye |q 27479/1
step
'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 75.9,53.4
.talk 12617
.' Fly to Eastwall Tower, Eastern Plaguelands |goto 61.6,43.9,0.5 |noway |c
step
goto 61.3,44.5
.talk 45736
..turnin 27479
step
ding 43
step
goto 61.6,43.1
.talk 45735
..turnin 27477
step
goto 61.5,42.7
.talk 45417
..turnin 27487
step
goto 61.6,43.2
.talk 45729
..accept 27488
step
goto 65.5,24.4
.click Open Prayer Book##254
.get Gidwin's Prayer Book |q 27488/1
step
goto 61.6,43.2
.talk 45729
..turnin 27488
..accept 27489
step
goto 61.6,42.5
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride Fiona's Caravan to Northpass Tower |q 27489/1
step
goto 50.4,20.1
.talk 45729
..turnin 27489
..accept 27522
step
goto 50.0,19.5
.talk 45826
..accept 27521
step
goto 54.6,19.1
.from Scourge Siege Engineer##17878+
.' Beat 6 Scourge Siege Engineers |q 27522/1
.' Discover Gidwin's Location |q 27522/2
.' Discover Gidwin's Captor |q 27522/3
step
goto 47.0,17.4
.kill 9 Quel'lithien Wretched |q 27521/1
' |from Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
step
goto 48.0,23.0
.talk 45816
..accept 27523
step
goto 46.4,33.8
.' Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334 |tip If you get a message that there are no valid targets, wait until Duskwing spawns.  He's a big gray bat that flies in the sky around this area.
.from Duskwing##11897
.get Patch of Duskwing's Fur |q 27523/1
step
goto 48.0,23.0
.talk 45816
..turnin 27523
step
goto 50.5,20.2
.talk 45417
..turnin 27522
..accept 27524
step
goto 50.5,20.2
.talk 45451
..accept 27532
step
goto 50.0,19.5
.talk 45826
..turnin 27521
step
goto 27.6,21.2
.talk 45729
..turnin 27524
..accept 27525
step
goto 27.6,20.9
.talk 45831
..accept 27528
..accept 27529
..accept 27539
step
goto 29.4,19.7
.kill Karthis Darkrune##45868 |q 27525/2
.collect The Baroness' Missive##61378 |n
.' Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
..accept 27551
step
goto 27.4,21.3
.talk 45729
..turnin 27551
..accept 27526
step
goto 29.1,26.2
.' Enter this building and watch the cutscene
.' Find Gidwin Goldbraids |q 27526/1
step
goto 28.4,25.9
.talk 45730
..turnin 27526
..accept 27527
step
goto 25.4,19.8
.kill Omasum Blighthoof##45867 |q 27525/1
step
goto 31.4,20.3
.' All around Plaguewood, do the following:
.from Overstuffed Golem##45851+
.' Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
.' Burn 8 Overstuffed Golem Corpses |q 27528/1
.from Cursed Mage##8524+, Scourge Soldier##8523+
.get 16 Stinking Skull |q 27539/1
.from Cannibal Ghoul##8530+
.talk 11064 |tip They spawn after you kill Cannibal Ghouls.
.' Free 8 Darrowshire Spirits |q 27529/1
step
goto 28.5,25.9
.talk 45729
..turnin 27525
step
goto 27.6,20.9
.talk 45831
..turnin 27528
..turnin 27529
..turnin 27539
..accept 27530
step
ding 44
step
goto 28.3,32.3
.' Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375 |tip You will have to put 3 around each corpse, and you can't put them too close together.
.' Destroy 3 Corpsebeasts |q 27530/1
step
goto 27.6,20.9
.talk 45831
..turnin 27530
step
goto 17.7,28.0
.talk 45828
..turnin 27532
..accept 27531
..accept 27535
step
goto 25.1,34.5
.click Flesh Giant Foot##8077
.get Flesh Giant Foot Scrapings |q 27531/3
step
goto 23.5,22.4
.click Rotberry Bush##28+
.get 20 Rotberry |q 27531/1
.click Disembodied Arm##8373+
.get 5 Disembodied Arm |q 27531/2
step
goto 17.7,28.0
.talk 45828
..turnin 27531
step
goto 11.3,28.6
.talk 12384
..turnin 27535
..accept 27533
..accept 27534
step
goto 14.2,26.3
.click Augustus' Receipt Book##4872
.get Augustus' Receipt Book |q 27534/1
step
goto 14.4,28.5
.kill 9 Plagued Swine##16117+ |q 27533/1
step
goto 11.3,28.6
.talk 12384
..turnin 27533
..turnin 27534
step
'Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
.' Teleport to Light's Hope Chapel |goto 75.6,52.4,0.5 |noway |c
step
goto 73.7,52.1
.talk 45417
..turnin 27527
step
goto 73.7,53.1
.talk 48704
..accept 27762
step
goto 73.7,53.1
.clicknpc  The Uncrashable##48708
.' You will fly to the Badlands |goto Badlands,91.9,38.5,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-46)\\Badlands (44-46)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (46-49)\\Searing Gorge (46-49)
startlevel 44.45
dynamic on
step
goto Badlands,92.6,39.0
.talk 46650
..turnin 27762
..accept 27763
step
goto 88.0,32.5
.' Walk into the teleporter |tip It looks like a machine with a blue circle at the bottom of it.
.' Teleport up the mountain |goto 82.8,33.9,0.5 |noway |c
step
.' The path up to Fuselight starts at [Badlands,68.8,31.7]. |goto Badlands,68.8,31.7,0.5
step
goto 65.1,38.4
.talk 46652
..turnin 27763
..accept 27774
step
goto 64.3,38.1
.talk 46653
..accept 27775
step
goto 64.3,35.0
.talk 44407
.fpath Fuselight
step
goto 61.0,27.9
.get Instructor's Rod |q 27775/1
.kill 9 Dustbelcher Orge |q 27774/1
.' You can find more Dustbelcher ogres around [Badlands,58.2,26.5]
' |from Dustbelcher Instructor##46693+, Dustbelcher Trainee##46695+, Dustbelcher Initiate##46694+
step
goto 64.3,38.1
.talk 46653
..turnin 27775
..accept 27776
step
goto 65.1,38.4
.talk 46652
..turnin 27774
..accept 27764
step
goto 64.6,37.1
.' Use your Billy Goat Blaster on Billy Goats |use Billy Goat Blaster##62397 |tip They are rams all around the outskirts of this town.
.' Nudge 12 Billy Goats |q 27776/1
step
goto 64.3,38.1
.talk 46653
..turnin 27776
step
goto 66.4,55.5
.talk 46654
..turnin 27764
..accept 27765
..accept 27766
step
goto 70.9,46.9
.from Scalding Whelp##2725+
.get 10 Scalding Whelp Corpse |q 27766/1
.click Wild Black Dragon Egg##5972+
.get 6 Wild Black Dragon Egg |q 27765/1
step
goto 66.4,55.5
.talk 46654
..turnin 27765
..turnin 27766
..accept 27770
.' Witness the final piece of Rhea's studies |q 27770/1
step
goto 66.4,55.5
.talk 46654
..turnin 27770
..accept 27771
step
goto 65.9,56.8
.from Nyxondra##46658 |tip She will slump down in exhaustion before you kill her, allowing you to get her eggs.
.click Nyxondra's Egg##9456+
.get 3 Nyxondra's Egg |q 27771/1
step
goto 66.4,55.5
.talk 46654
..turnin 27771
..accept 27769
.' Discover Rhea's true identity |q 27769/1
step
ding 45
step
goto 66.5,55.5
.talk 46655
..turnin 27769
..accept 27772
step
goto 47.0,56.5
.talk 46664
..turnin 27772
..accept 27789
step
goto 49.3,55.2
.clicknpc Blam Turret##46707
.' Use the abilities on your hotbar to shoot at the troggs that run at you from all directions
.' Survive the first wave |q 27789/1
.' Survive the second wave |q 27789/2
.' Survive the third wave |q 27789/3
.' Survive the final wave |q 27789/4
step
goto 47.0,56.5
.talk 46664
..turnin 27789
..accept 27791
step
goto 49.5,37.0
.talk 2860
..accept 27823
step
goto 49.3,36.9
.talk 46760
..turnin 27791
..accept 27792
step
goto 49.0,36.2
.talk 44409
.fpath Dustwind Dig
step
goto 50.9,52.8
.from Reliquary Excavator##46772+
.get Broken Chalice |q 27792/1
.get Dusty Vase |q 27792/2
.get Earthen Hieroglyph |q 27792/3
.get Trogg Tool |q 27792/4
.' You can find more Reliquary Excavators around [Badlands,56.6,57.0]
step
goto 49.3,36.9
.talk 46760
..turnin 27792
..accept 27796
..accept 27797
step
goto 48.3,26.2
.from Shadowforge Tunneler##2739+, Shadowforge Darkweaver##2740+
.get 15 Shadowstout |q 27823/1
step
goto 49.5,37.0
.talk 2860
..turnin 27823
..accept 27824
step
goto 40.1,25.1
.' Go into the basement of Angor Fortress
.click Angor's Coffer##10
.get Engraved Tablets of Golganneth |q 27824/1
step
goto 49.5,37.0
.talk 2860
..turnin 27824
step
goto 50.4,48.5 |n
.' Enter the Tomb of the Watchers |goto 50.4,48.5,0.5 |noway |c
step
goto 48.0,50.9
.click Marble Slab##10060
..turnin 27797
..accept 27709
step
goto 48.6,51.0
.' Click the Sentinel's Pawn 2 times |modelnpc 46398
.' Click to proceed |confirm
step
goto 48.0,51.3
.' Click the Sentinel's Pawn 1 time |modelnpc 46398
.' Click to proceed |confirm
step
goto 49.0,51.7
.' Click the Sentinel's Pawn 2 times |modelnpc 46398
.' Click to proceed |confirm
step
goto 48.4,52.3
.' Click the Sentinel's Pawn 1 time |modelnpc 46398
.' Click to proceed |confirm
step
goto 48.8,52.8
.' Click the Sentinel's Pawn 2 times |modelnpc 46398
.' Click to proceed |confirm
step
goto 48.0,53.1
.' Click the Sentinel's Pawn 2 times |modelnpc 46398
.' Complete the Sentinel's Game |q 27709/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27709
step
goto 50.3,54.3
.' Follow the path around
.click Stone Slab##10061
..turnin 27796
..accept 27693
step
goto 50.3,54.3
.clicknpc Warden's Pawn##46344
.' Click the pawns directly across from each other to make all of the pawns face inward, instead of outward
.' Complete the Warden's Game |q 27693/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27693
..accept 27793
step
goto 50.3,52.6
.talk 46768
.' Click <Place the pawn in the indentation.>
.from The Warden
.' Thoroughly investigate The Warden |q 27793/1
step
goto 50.3,51.7
.talk 46769
.' Click <Place the pawn in the indentation.>
.from The Sentinel
.' Thoroughly investigate The Sentinel |q 27793/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27793
..accept 27912
step
goto 50.3,53.3
.click Trove of the Watcher##1387
..turnin 27912
..accept 27794
step
goto 50.4,48.4 |n
.' Leave the Tomb of the Watchers |goto 50.4,48.4,0.5 |noway |c
step
goto 47.0,56.6
.talk 46664
..turnin 27794
..accept 27826
step
goto 26.2,62.3
.talk 2785
..accept 27713
step
goto 27.6,60.8
.' Use your Theldurin's Fist ability on your hotbar on Dang-Blasted Rock Elementals
.kill 5 Dang-Blasted Rock Elemental##46467 |q 27713/1
step
goto 41.9,43.6
.' Use your Theldurin's Fist ability on the Gol'Durned Rock Heaps to get past them
.' Punch Deathwing in the Face |q 27713/2
step
goto 26.2,62.3
.talk 2785
..turnin 27713
step
ding 46
step
goto 26.3,62.5
.talk 2920
..accept 27714
step
'Use your Shrink the World ability on your hotbar 5 times
.' Grow large enough to reach the clouds |q 27714/1
step
goto 29.5,57.9
.' Use your Search Cloud ability on your hotbar on the Clouds |tip They look like big gray clouds floating in the air all around this area, even on the sides of this big trench.
.' Search 5 Clouds |q 27714/2
step
'Directly above you:
.' Click The Sun |tip It's a big orange orb that spawns floating directly above you.
.' Find Deathwing |q 27714/3
step
goto 26.3,62.5
.talk 2920
..turnin 27714
step
goto 26.2,62.5
.talk 4618
..accept 27715
step
goto 26.3,62.4
.talk 47124
..' Tell her to hop in, baby
.' Choose an admirer to save |q 27715/1
step
goto 42.2,43.6
.' Avoid the falling rocks as you ride
.' Ride to the end of the canyon |q 27715/2
step
goto 39.9,39.2
.' Fly to the top of this pillar
.' Find Deathwing |q 27715/3
.' His ridiculous story gets rudely interrupted, haha
.' "Beat" Deathwing in a knife fight |q 27715/4
|modelnpc Deathwing##46471
step
goto 26.2,62.5
.talk 4618
..turnin 27715
step
goto 21.2,57.8
.talk 46654
..turnin 27826
..accept 27827
step
goto 20.8,57.4
.talk 46972
..accept 27833
step
goto 20.6,56.1
.talk 46852
..turnin 27827
..accept 27828
step
goto 20.6,56.2
.talk 46853
..accept 27834
step
goto 20.6,56.3
.talk 46854
..accept 27835
step
goto 20.9,55.7
.talk 46930
..accept 27825
..accept 28512
step
goto 20.7,56.3
.talk 48093
.home Dragon's Mouth
step
goto 19.4,55.5
.' Use Eric's Charge ability on your pet bar on an enemy
.' Use Eric's Charge |q 27828/1
.' Use Baelog's Valhalla Shot ability on your pet bar on an enemy
.' Use Baelog's Valhalla Shot |q 27834/1
.' Use Olaf's Mighty Shout ability on your pet bar on an enemy
.' Use Olaf's Mighty Shout |q 27835/2
step
goto 19.4,55.5
.' Use Eric's Pocket Potion ability on your pet bar
.' Use Eric's Pocket Potion |q 27828/2
.' Use Baelog's Warcry ability on your pet bar
.' Use Baelog's Warcry |q 27834/2
.' Use Olaf's Shield Wall ability on your pet bar
.' Use Olaf's Shield Wall |q 27835/1
step
'Next to you:
.talk 46855
..turnin 27828
step
'Next to you:
.talk 46856
..turnin 27834
step
'Next to you:
.talk 46857
..turnin 27835
..accept 27829
step
goto 26.1,45.6
.' Use the 3 dwarves' abilities on your pet bar to fight enemies around this area
.kill Kalaran the Annihilator##46859+ |q 27829/1
.kill 4 Darkflight Soldier##46915+ |q 27829/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27829
..accept 27830
step
goto 16.8,49.2
.' Use the 3 dwarves' abilities on your pet bar to fight
.kill Moldarr##46938 |q 27830/2
step
goto 15.5,43.3
.' Go to the top of the tower
.' Use the 3 dwarves' abilities on your pet bar to fight
.kill General Jirakka##46860 |q 27830/1
step
goto 13.7,43.0
.' Use the 3 dwarves' abilities on your pet bar to fight
.kill 6 Darkflight dragonspawn |q 27830/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27830
..accept 27831
' |from Darkflight Shadowspeaker##46918+, Darkflight Flameblade##46917+
step
goto 10.7,39.5
.' Use the 3 dwarves' abilities on your pet bar to fight
.kill Nyxondra##46658 |q 27831/1 |tip Clear out a big area by killing Nyxondra's Broodlings before you try to fight Nyxondra because she fears you while you fight her.
.kill 12 Nyxondra's Broodling##46916 |q 27831/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27831
..accept 27832
step
goto 15.3,36.3 |n
.' The path up to Rhea starts here |goto 15.3,36.3,0.5 |noway |c
step
goto 16.0,33.4
.talk 46654
..turnin 27832
..accept 27858
step
'Watch the cutscene
.' Wait for Rhea to retrieve the egg |q 27858/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27858
..accept 27930
step
goto 18.9,30.3
.click Rhea's Final Note##6817
..turnin 27930
step
goto 18.0,30.6
.talk 46664
..accept 27859 |instant
step
'Hearth to Dragon's Mouth |goto 20.7,56.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 11.9,71.5 |n
.' Enter the cave |goto 11.9,71.5,0.5 |noway |c
step
goto 12.6,73.4
.click Dustbelcher Meat##10075+
.get 6 Dustbelcher Meat |q 27825/1
.click Dustbelcher Chest##9855+
.get 10 Dustbelcher Silk |q 27825/2
step
goto 11.9,71.5 |n
.' Leave the cave |goto 11.9,71.5,0.5 |noway |c
step
goto 13.2,66.4
.kill 12 Dustbelcher combatant |q 27833/1
' |from Dustbelcher Mauler##2717+, Dustbelcher Shaman##2718+
step
goto 20.9,55.7
.talk 46930
..turnin 27825
step
goto 20.8,57.4
.talk 46972
..turnin 27833
step
ding 47
step
goto 9.8,51.3 |n
.' The path over to Searing Gorge starts here |goto 9.8,51.3,0.5 |noway |c
step
'Go west to Searing Gorge |goto Searing Gorge |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (46-49)\\Searing Gorge (46-49)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)
startlevel 46.95
dynamic on
step
goto Searing Gorge,68.9,53.3
.talk 47269
..accept 27956
step
goto 68.6,53.4
.talk 47266
..turnin 28512
..accept 27963
step
goto 68.5,53.3
.talk 47267
..accept 27960
step
goto 62.2,61.3
.from Gravius Grimesilt##47270 |tip He walks around this area, so you may have to search for him.
.get Dark Iron Memo |q 27963/1
.kill 10 Dark Iron Geologist or Watchman |q 27960/1
.from Tempered War Golem##5853+
.get 15 Tempered Flywheel |q 27956/1
' |from Dark Geologist##5839, Dark Iron Watchman##8637
step
goto 68.5,53.3
.talk 47267
..turnin 27960
..accept 27961
..accept 27962
step
ding 47
step
goto 68.6,53.4
.talk 47266
..turnin 27963
..accept 27964
step
goto 68.9,53.3
.talk 47269
..turnin 27956
..accept 27957 |instant
step
goto 68.7,53.3
.talk 47268
..accept 27958
step
goto 58.1,62.4
.from Glassweb Spider##5856
.' Lunk will appear next to you
.talk 47280
..accept 27959
step
goto 58.1,62.4
.from Glassweb Spider##5856+
.' Let Lunk ride 7 spiders |q 27959/1
.clicknpc Lunk##47299
.get 14 Glassweb Venom |q 27958/1
.clicknpc Ash Chicken##47278+
.get 8 Ash Chicken |q 27961/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27959
step
goto 65.1,75.9 |n
.' The path up to Margol the Rager starts here |goto 65.1,75.9,0.5 |noway |c
step
goto 71.2,73.5
.from Margol the Rager##5833
.get Margol's Gigantic Horn |q 27962/1
step
goto 68.5,53.3
.talk 47267
..turnin 27961
..turnin 27962
step
goto 68.7,53.3
.talk 47268
..turnin 27958
step
goto 63.4,38.5 |n
.' Follow the path down |goto 63.4,38.5,0.5 |noway |c
step
goto 54.2,44.4
.from Dark Iron Footman##47275+, Dark Iron Excavator##47276+
.' Eventually, Dig-Boss Dinwhisker will spawn |tip You will see him yell in your chat window, asking what in hell's name is going on out here.  He spawns in the location where this step's arrow points to.
.from Dig-Boss Dinwhisker##47271
.click Dark Ember##5746
.get Dark Ember |q 27964/1
step
goto 58.2,40.6 |n
.' Follow the path up |goto 58.2,40.6,0.5 |noway |c
step
goto 68.6,53.4
.talk 47266
..turnin 27964
..accept 27965
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 37.9,30.9
.talk 2941
.fpath Thorium Point
step
goto 37.7,26.6
.talk 14634
..accept 27980
step
goto 38.1,27.0
.talk 14625
..turnin 27965
..accept 28099
step
goto 38.5,27.9
.talk 14627
..accept 27976
..accept 27981
step
goto 37.2,28.7
.talk 14626
..accept 27977
step
goto 41.0,39.6
.from Dark Iron Steamsmith##5840
.' Lunk will appear next to you
.talk 47332
..accept 27983
step
goto 41.6,41.4
.from Dark Iron Steamsmith##5840+
.' Let Lunk put 7 Dark Iron Steamsmiths to sleep |q 27983/1
.get Smithing Tuyere |q 27977/1
.get Lookout's Spyglass |q 27977/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27983
step
goto 42.6,36.6
.from Rasha'krak##47553 |tip He's a magma elemental that patrols the lava pools around this area.  You may need to search for him.
.get Rasha'krak's Bracers of Binding |q 28099/1
.' Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
.get 10 Filled Furnace Flask |q 27981/1
.' You can also find Rasha'krak, along with more elementals at the following locations:
.' At [Searing Gorge,39.3,40.5]
.' At [Searing Gorge,31.6,43.1]
|modelnpc Inferno Elemental##5852
|modelnpc Blazing Elemental##5850
|modelnpc Magma Elemental##5855
step
goto 29.8,42.0
.kill 9 Lava Spider |q 27980/1
' |from Greater Lava Spider##5858+
step
goto 32.3,46.6
.kill 12 Heavy War Golem##5854+ |q 27976/1
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 38.5,27.9
.talk 14627
..turnin 27976
..turnin 27981
step
goto 36.8,28.2
.talk 14626
..turnin 27977
..accept 27982
step
goto 38.5,27.9
.talk 14627
..accept 27979
step
goto 37.7,26.6
.talk 14634
..turnin 27980
step
ding 48
step
goto 38.1,27.0
.' Go to the top of the tower
.talk 14625
..turnin 28099
step
goto 24.3,33.0 |n
.' Follow the path up |goto 24.3,33.0,0.5 |noway |c
step
goto 24.6,26.3
.from Minister Finister##47311
.collect Finister's Spherule##62824 |q 27979
step
goto 29.5,26.4
.talk 8436
..accept 27984
step
goto 29.5,26.4
.talk 8436
..' Tell him you wish to hear his tale
.' Listen to Zamael's Story |q 27984/1
step
goto 29.5,26.4
.talk 8436
..turnin 27984
..accept 27985
step
goto 23.1,35.4
.click Twilight's Hammer Crate##10106+
.get Prayer to Elune |q 27985/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27985
step
goto 22.0,36.4 |n
.' Enter the cave |goto 22.0,36.4,0.5 |noway |c
step
goto 17.6,42.4
.' Follow the path immediately to the left after you enter the cave
.from Minister Kiyuubi##47309
.collect Kiyuubi's Spherule##62825 |q 27979
step
goto 14.6,36.2
.from Minister Letherio##47310
.collect 1 Letherio's Spherule##62823 |n
.' Use Letherio's Spherule |use Letherio's Spherule##62823
.get Twilight Tripetricine |q 27979/1
step
'All around inside this cave:
.from Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
.get 20 Twilight Collar |q 27982/1
step
goto 22.0,36.4 |n
.' Leave the cave |goto 22.0,36.4,0.5 |noway |c
step
goto 31.9,33.3 |n
.' Follow the path up |goto 31.9,33.3,0.5 |noway |c
step
goto 38.5,27.9
.talk 14627
..turnin 27979
..accept 27986
step
goto 38.7,28.7
.talk 14624
..turnin 27982
step
.talk 2941
.' Fly to Iron Summit, Searing Gorge |goto 41.0,68.8 <5 |noway |c
step
goto 39.4,66.3
.talk 47942
.home Iron Summit
step
goto 39.4,67.9
.talk 47393
..turnin 27986
..accept 28028
..accept 28029
..accept 28030
step
goto 38.8,68.9
.talk 47440
..accept 28032
step
goto 35.7,60.7
.click Sentry Brazier##524
.' Set the Southwestern Tower Ablaze |q 28029/2
step
goto 33.3,54.5
.click Sentry Brazier##524
.' Set the Western Tower Ablaze |q 28029/1
step
goto 33.3,66.2
.from Incendosaur##9318+
.get 6 Fire-Gizzard |q 28032/1
step
goto 44.0,60.9
.click Sentry Brazier##524
.' Set the Southeastern Tower Ablaze |q 28029/3
step
goto 52.5,58.0 |n
.' Cross the hanging wooden bridge |goto 52.5,58.0,0.5 |noway |c
step
goto 50.1,54.7
.click Sentry Brazier##524
.' Set the Eastern Tower Ablaze |q 28029/4
step
goto 51.4,55.6 |n
.' Cross the hanging wooden bridge |goto 51.4,55.6,0.5 |noway |c
step
goto 49.6,63.0
.kill 9 Dark Iron Marksman##8338+ |q 28028/1
.click Dark Iron Bullet##1868+
.get 200 Dark Iron Bullet |q 28030/1
step
goto 45.0,67.3 |n
.' Follow the path up |goto 45.0,67.3,0.5 |noway |c
step
goto 38.8,68.9
.talk 47440
..turnin 28032
step
goto 39.4,67.9
.talk 47393
..turnin 28028
..turnin 28029
..turnin 28030
..accept 28033
step
goto 39.8,67.9
.talk 47429
..turnin 28033
..accept 28034
step
goto 40.6,68.1
.talk 47434
..' Ask them if they care to join your dance
.' Build up a three-dwarf conga line |q 28034/1
step
goto 39.4,67.9
.talk 47393
..turnin 28034
..accept 28035
step
goto 41.1,68.8
.talk 47927
.' Fly to Thorium Point, Searing Gorge |goto 37.9,30.4,0.5 |noway |c
step
goto 38.1,27.0
.talk 14625
..turnin 28035
..accept 28052
step
goto 37.9,30.9
.talk 2941
..' Tell her you're ready to take the flight into the Cauldron
.' Use the Shoot ability on your hotbar on the dwarves that start shooting at you
.' Secure entrance into the Slag Pit |q 28052/1
step
goto 40.8,51.7
.talk 47393
..turnin 28052
..accept 28054
..accept 28055
..accept 28056
step
goto 41.3,25.4
.' Follow the path in The Slag Pit
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
.click Altar of Suntara##328
..' Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion
.kill Obsidion##8400 |q 28056/1
.kill Lathoric the Black##8391 |q 28056/2
step
goto 42.1,25.1
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.' Free or kill 12 Slave Workers |q 28055/1
.kill 10 Dark Iron Taskmaster or Slaver |q 28054/1
' |from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
step
goto 43.8,28.7
.talk 14628
..turnin 28054
..turnin 28055
..turnin 28056
..accept 28057
step
ding 49
step
goto 46.2,27.1
.click Dark Iron Pillow##5911+ |tip A big group of dwarves runs up and down the hallway once you steal some pillows. You can kill them easily, though, they have low hit points.
.get 16 Dark Iron Pillow |q 28057/1
step
goto 42.2,34.5
.talk 14626
..turnin 28057
..accept 28060
step
goto 42.3,34.6
.talk 14627
..' Tell him "Let's take out Maltorius and Arkkus!"
.kill Overseer Maltorius##14621 |q 28060/1
.kill Twilight-Lord Arkkus##47460 |q 28060/2
step
goto 47.7,42.0 |n
.' Jump off the bridge to the path below
|confirm
step
goto 50.0,39.0
.talk 14625
..turnin 28060
..accept 28062
..accept 28061
..accept 28514
step
goto 48.0,27.4
.kill 6 Searing Flamewraith##47463+ |q 28061/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28061
step
goto 42.7,30.3
.from Archduke Calcinder##47462
.' Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925 |tip You will see a message pop up when he is at about half health.
.' Banish Archduke Calcinder |q 28062/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28062
..accept 28064
step
'Hearth to Iron Summit |goto 39.8,66.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 41.1,68.8
.talk 47927
.' Fly to Thorium Point, Searing Gorge |goto 37.9,30.4,0.5 |noway |c
step
goto 39.0,26.0
.talk 47429
..accept 28053 |instant
step
goto 38.1,27.0
.talk 14625
..turnin 28064
step
|fly Flamestar Post
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)
startlevel 49.55
dynamic on
step
goto Burning Steppes 17.3,52.1
.talk 47811
..' You will only be able to accept 1 of these 2 quests |tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
..accept 28416 |or
..accept 28174 |or
step
goto 17.0,51.3
.talk 47779
..turnin 28514
..accept 28172
step
goto 17.5,60.5
.clicknpc Fettered Green Whelpling##47820
.' Free a Green Whelpling |q 28172/2
step
goto 19.2,61.6
.clicknpc Fettered Blue Whelpling##47821
.' Free a Blue Whelpling |q 28172/3
step
goto 17.8,61.4 |n
.' Follow the path up |goto 17.8,61.4,0.5 |noway |c
step
goto 15.1,69.7
.clicknpc Fettered Bronze Whelpling##47822
.' Free a Bronze Whelpling |q 28172/4
step
goto 14.2,66.8
.clicknpc Fettered Red Whelpling##47814
.' Free a Red Whelpling |q 28172/1
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28416/1
.kill 5 Flamescale Broodling##7049+ |q 28416/2
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28174/1
.kill 5 Flamescale Broodling##7049+ |q 28174/2
step
goto 17.3,52.1
.talk 47811
..' You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
..turnin 28416
..turnin 28174
..accept 28177
..accept 28178
..accept 28179
step
goto 17.0,51.3
.talk 47779
..turnin 28172
step
goto 15.5,45.0
.click Obsidian-Flecked Mud##20
.get 9 Obsidian-Flecked Mud |q 28179/1
step
goto 11.8,47.7
.from Ember Worg##9690+
.get 11 Ember Worg Hide |q 28178/1
.from Venomtip Scorpid##9691+
.get 5 Razor-Sharp Scorpid Barb |q 28177/1
step
goto 17.3,52.1
.talk 47811
..turnin 28177
..turnin 28178
..turnin 28179
..accept 28180
step
goto 8.4,35.8
.talk 14437
..turnin 28180
..accept 28181
..accept 28182
step
goto 9.9,29.7
.kill Ner'gosh the Shadow##47805 |q 28182/1
step
goto 5.4,32.0
.click Slumber Sand##6483
.get Slumber Sand |q 28181/2
step
goto 5.2,30.9
.click Fel Slider Cider##334
.get Fel Slider Cider |q 28181/3
step
goto 6.8,31.8
.from Blackrock Warlock##7028+
.get Clear Glass Orb |q 28181/1
step
goto 8.4,35.8
.talk 14437
..turnin 28181
..turnin 28182
..accept 28183
step
ding 50
step
goto 17.3,52.1
.talk 47811
..turnin 28183
..accept 28184
step
goto 31.5,52.1
.kill 15 Blackrock troop |q 28184/1
' |from Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+
step
goto 46.8,44.1
.talk 48033
..turnin 28184
..accept 28225
..accept 28226
step
goto 46.4,46.0
.talk 48109
..accept 28254
step
goto 45.5,46.4
.talk 48001
..turnin 28254
..accept 28202 |or
..accept 28203 |or
..accept 28204 |or
..accept 28205 |or
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Human
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Dwarf
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 1 Hide
..' Take 3 Handfuls of Mud
..' Take 4 Spools of Thread
.' Click to proceed. |confirm
only Gnome
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Draenei
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Worgen
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
.' Click to proceed. |confirm
only NightElf
step
goto 45.5,46.4
.talk 48001
..' Tell him you brought him some hides, mud, and thread
.' Create the Perfect Costume |q 28202/1
.' Create the Perfect Costume |q 28203/1
.' Create the Perfect Costume |q 28204/1
.' Create the Perfect Costume |q 28205/1
step
goto 46.4,46.0
.talk 48109
..turnin 28202
..turnin 28203
..turnin 28204
..turnin 28205
..accept 28239
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28239 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Boss_Mekgineer_Thermaplugg |q 28239 |or
step
goto 45.3,51.7
.talk 48085
..turnin 28239
..accept 28245
step
.' Click the Quest Accept box that displays on the right side of the screen under your minimap
..accept 28246 |tip You can also accept this from Colonel Troteman at 46.2,45.8
step
goto 45.0,52.5
.' Go to the very top of the tower
.' Use your Razor-Sharp Scorpid Barb on Voodooist Timan |use Razor-Sharp Scorpid Barb##63350
.kill Voodooist Timan##48100 |q 28246/3
step
goto 39.2,56.1
.' Use your Razor-Sharp Scorpid Barb on Worgmistress Othana |use Razor-Sharp Scorpid Barb##63350
.kill Worgmistress Othana##48099 |q 28246/2
step
goto 42.1,60.1
.' Use your Razor-Sharp Scorpid Barb on Gorlop |use Razor-Sharp Scorpid Barb##63350
.kill Gorlop##9176 |q 28246/1 |tip He's an ogre that runs back and forth between the two lava pools here, so you may need to search for him.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28246
step
goto 39.7,55.7
.click Blackrock Boot##10182+ |tip They look like brown pairs of boots sitting on the outside of the huts and buildings all around this area.
.' Polish 7 Pairs of Blackrock Boots |q 28245/1
step
goto 45.3,51.7
.talk 48085
..turnin 28245
..accept 28252
step
goto 44.9,58.8
.' Use your Horn of the Callers next to Blackrock War Kodos |use Horn of the Callers##63356
.from Blackrock War Kodo##48111+
.' Summon 7 Blackrock War Kodos back to camp |q 28252/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28252
..accept 28253
step
goto 46.3,46.0
.talk 48110
..turnin 28253
step
goto 45.7,39.1
.kill 10 Thaurissan dwarf |q 28225/1
.from War Reaver##7039+
.click War Reaver Part##449+
..' You are given a choice on what to salvage from the War Reaver Parts. |tip Choose to Salvage a Stone Power Core the first chance you get, because you only need one and they are rare.  Otherwise, just salvage the parts you need most.
.get 3 Obsidian Piston |q 28226/1
.get 3 Flux Exhaust Sieve |q 28226/2
.get 3 Thorium Gearshaft |q 28226/3
.get Stone Power Core |q 28226/4
' |from Thaurissan Agent##7038+, Thaurissan Firewalker##7037+, Thaurissan Spy##7036+
step
goto 46.8,44.1
.talk 48033
..turnin 28225
..turnin 28226
..accept 28227
step
goto 46.4,45.2
.talk 48037
..' Tell them you are here to help them with their combat training, golem
.from Chiseled Golems |tip You will have to beat them 3 times in a row to train them.
.' Train 4 Chiseled Golems |q 28227/1
step
goto 46.8,44.1
.talk 48033
..turnin 28227
step
goto 46.4,46.0
.talk 48109
..accept 28265
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28265 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28265 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28265 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28265 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28265 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28265 |or
.' Wear your Blackrock Ogre Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28265 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Boss_Mekgineer_Thermaplugg |q 28239 |or
step
goto 30.7,33.7
.talk 48133
..turnin 28265
..accept 28266
step
goto 30.8,33.4
.talk 48159
..' Tell him you'd like to challenge his magma lord to a fight
.kill Magma Lord Kolob##48156 |q 28266/1
step
goto 30.7,33.7
.talk 48133
..turnin 28266
..accept 28278
..accept 28279
step
goto 33.6,36.3
.' Use your Blackrock Cudgel of Discipline on Smolderthorn Assassins, Firegut Flamespeakers, and Blackrock Soldiers |use Blackrock Cudgel of Discipline##63390 |tip If they discover you are wearing a mask, spam use the Blackrock Cudgel of Discipline on them to kill them.
.' Cudgel 20 Blackrock Minions |q 28278/1
.' Use your Blackrock Cudgel of Discipline repeatedly on Blackrock Sergeants |use Blackrock Cudgel of Discipline##63390 |tip Spam use the Blackrock Cudgel of Discipline, so you kill them quickly.
.kill 5 Blackrock Sergeant##48201+ |q 28279/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28279
..accept 28286
|modelnpc Blackrock Soldier##7025
|modelnpc Smolderthorn Assassin##48119
|modelnpc Firegut Flamespeaker##48121
step
goto 30.7,33.7
.talk 48133
..turnin 28278
step
ding 51
step
goto 46.3,46.0
.talk 48110
..turnin 28286
..accept 28310
step
goto 71.9,68.0
.talk 9177
..turnin 28310
..accept 28415
step
goto 73.6,67.2
.talk 48307
..accept 28311
..accept 28312
..accept 28313
step
goto 71.6,58.4
.from Giant Ember Worg##9697+
.' Use your Worgsaw on their corpses |use Worgsaw##63427
.get 40 Worg Cutlet |q 28313/1
step
goto 65.8,68.6
.from Flamekin Torcher##9778+, Flamekin Rager##9779+, Flamekin Spitter##9776+
.clicknpc Fallen Flamekin##48649
.get 18 Fallen Flamekin |q 28312/1
.clicknpc Flamefly##48671
.get 7 Flamefly |q 28415/1
step
goto 63.1,48.0
.from Greater Obsidian Elemental##7032+
.get 9 Obsidian Ashes |q 28311/1
step
goto 70.7,61.0 |n
.' Go up the path |goto 70.7,61.0,0.5 |noway |c
step
goto 73.6,67.2
.talk 48307
..turnin 28311
..turnin 28312
..turnin 28313
step
goto 73.5,67.2
.talk 48306
..accept 28314
..accept 28315
..accept 28316
step
goto 71.9,68.0
.talk 9177
..turnin 28415
step
goto 64.9,59.7
.kill Whelptamer Akumi##48287 |q 28315/1
step
goto 79.8,51.0
.kill Minyoth##48289 |q 28315/3
step
goto 75.7,37.0
.kill Tugnar Goremaw##48291 |q 28315/4
step
goto 72.3,27.4
.kill Terromath the Seared##48288 |q 28315/2
step
'Next to you:
.talk 48346
..turnin 28315
step
goto 75.7,30.5
.kill 25 Black Dragonspawn |q 28314/1
' |from Black Dragonspawn##7040+, Black Wyrmkin##7041+
step
'Next to you:
.talk 48346
..turnin 28314
step
goto 82.1,31.5
.talk 48292
..turnin 28316
..accept 28326
step
goto 70.7,61.0 |n
.' Go up the path |goto 70.7,61.0,0.5 |noway |c
step
goto 73.6,67.2
.talk 48307
..turnin 28326
..accept 28317
..accept 28318
..accept 28319
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28319 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28319 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28319 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28319 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28319 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28319 |or
.' Wear your Blackrock Ogre Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28319 |or
.' Wear your Blackrock Disguise |havebuff Interface\Icons\Achievement_Boss_Mekgineer_Thermaplugg |q 28239 |or
step
goto 70.7,38.3 |n
.' Enter the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 70.2,47.3
.' Follow the path in the cave to the left
.talk 48314
..turnin 28318
step
goto 70.7,38.3 |n
.' Leave the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 64.3,37.5 |n
.' Follow the path up |goto 64.3,37.5,0.5 |noway |c
step
goto 69.6,42.9
.talk 48312
..turnin 28319
step
goto 65.3,46.5 |n
.' Enter the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 66.5,40.5
.talk 48316
..turnin 28317
..accept 28327
step
goto 65.3,46.5 |n
.' Leave the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 70.7,61.0 |n
.' Go up the path |goto 70.7,61.0,0.5 |noway |c
step
goto 73.6,67.2
.talk 48307
..turnin 28327
step
goto 73.5,67.2
.talk 48306
..accept 28320
step
goto 63.7,49.7
.' Use your Fiery Breath ability on your hotbar on the Blackrock Invaders below |tip They are all around the mountain, so fly around.
.kill 200 Blackrock Invader##48432+ |q 28320/1
step
goto 73.6,67.2
.talk 48307
..turnin 28320
..accept 28321
step
goto 70.7,38.3 |n
.' Enter the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 70.2,47.3
.' Follow the path in the cave to the left
.kill High Warlock Xi'lun##48312 |q 28321/3
step
goto 70.7,38.3 |n
.' Leave the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 64.4,37.5 |n
.' Follow the path up |goto 64.4,37.5,0.5 |noway |c
step
goto 69.7,42.9
.kill Dragon-Lord Neeralak##48314 |q 28321/2
step
goto 65.3,46.5 |n
.' Enter the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 66.5,40.5
.kill General Thorg'izog##48316 |q 28321/1
step
goto 65.3,46.5 |n
.' Leave the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 70.7,61.0 |n
.' Go up the path |goto 70.7,61.0,0.5 |noway |c
step
goto 73.6,67.2
.talk 48307
..turnin 28321
..accept 28322
step
ding 52
step
goto 73.7,67.3
.click Crate of Left Over Supplies##31
..turnin 28322
step
goto 71.9,68.0
.talk 9177
..accept 28569
step
goto 78.3,58.8
.talk 48948
..' Tell her let's head down to the Swamp of Sorrows
.' Ride the rocket to Swamp of Sorrows |goto Swamp of Sorrows,75.3,13.3,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Winterspring (54-58)\\Winterspring (54-58)
startlevel 52.18
dynamic on
step
goto Swamp of Sorrows,73.2,14.9
.talk 45786
..turnin 28569
..accept 27587
step
goto 71.7,13.8
.talk 47334
.home Bogpaddle
step
goto 72.0,12.0
.talk 43086
.fpath Bogpaddle
step
goto 73.6,9.2
.talk 46010
..accept 27592
step
goto 75.2,5.4
.from Swampshore Makrura##45809+
.get 6 Intact Swampshore Tail |q 27587/1
.from Silt Crawler##922+
.get 10 Stolen Silversnap Ice |q 27592/1
step
goto 73.6,9.2
.talk 46010
..turnin 27592
step
goto 73.2,14.9
.talk 45786
..turnin 27587
..accept 27536
..accept 27656
step
goto 74.2,12.2
.talk 46182
..accept 27663
step
goto 80.5,26.8
.kill 8 Sawtooth Crocolisk##45807+ |q 27656/1
.from Swampstrider##45825+
.get 9 Jumbo Swampstrider Drumstick |q 27663/1
.click Stray Land Mine##8586+
.get 8 Disarmed Land Mine |q 27536/1
step
goto 73.2,14.9
.talk 45786
..turnin 27536
..turnin 27656
..accept 27597
step
goto 74.2,12.2
.talk 46182
..turnin 27663
step
goto 84.0,40.1
.talk 45948
..turnin 27597
..accept 27598
..accept 27599
step
goto 89.8,29.9
.kill 7 Gilblin Stalker##45701+ |q 27598/1
.clicknpc Deceased Bogpaddle Privateer##46014+
.get 6 Steamwheedle Ditty Bag |q 27599/1
step
goto 84.0,40.1
.talk 45948
..turnin 27598
..turnin 27599
..accept 27600
step
goto 83.6,37.9
.talk 46245
..' Tell him to load you into that cannon, boy!
.' You will get launched onto a ship |goto 98.8,27.8,0.5 |noway |c
step
goto 97.9,25.0
.click Thousand-Thread-Count Fuse##7548
.get Thousand-Thread-Count Fuse |q 27600/1
step
goto 98.9,27.9
.' Go downstairs
.click Extra-Pure Blasting Powder##9945
.get Extra-Pure Blasting Powder |q 27600/2
step
goto 98.8,27.2
.' Go downstairs
.click Stack of Questionable Publications##43
.get Stack of Questionable Publications |q 27600/3
step
goto 98.1,26.0
.' Go upstairs
.click Landward Cannon##9925
..' Get in and fire it!
.' You will be launched to shore |goto 83.9,37.2,0.5 |noway |c
step
goto 84.0,40.1
.talk 45948
..turnin 27600
..accept 27740
step
goto 82.8,41.1
.talk 46503
..' Tell her that her dad says to fire you across the bay
.' You will be launched to Stagalbog |goto 69.5,75.6,0.5 |noway |c
step
goto 69.1,76.5
.talk 46172
..turnin 27740
..accept 27691
step
goto 79.9,85.7
.kill 12 Marshfin Murkdweller##45967+ |q 27691/1
step
goto 69.1,76.5
.talk 46172
..turnin 27691
..accept 27757
step
goto 66.3,75.0 |n
.' Enter the cave |goto 66.3,75.0,0.5 |noway |c
step
goto 64.5,80.2 |n
.' Follow the middle path inside the cave |goto 64.5,80.2,0.5 |noway |c
step
goto 64.3,85.8 |n
.' Follow the path up |goto 64.3,85.8,0.5 |noway |c
step
goto 63.2,85.5
.kill Hr'nglth the Lost##46371 |q 27757/1
step
goto 66.3,75.0 |n
.' Leave the cave |goto 66.3,75.0,0.5 |noway |c
step
goto 69.1,76.5
.talk 46172
..turnin 27757
..accept 27818
step
ding 53
step
goto 72.3,79.3
.from Stagalbog Serpent##46146+
.get 5 Intact Stagalbog Serpent Heart |q 27818/1
.' You can find more Stagalbog Serpents around [Swamp of Sorrows,84.0,63.1]
step
goto 69.1,76.5
.talk 46172
..turnin 27818
..accept 27869
step
goto Swamp of Sorrows,69.5,54.5
.talk 46071
..turnin 27869
..accept 27694
step
goto Swamp of Sorrows,67.8,60.7
.click Atal'ai Artifact##651+
.get 5 Atal'ai Artifact |q 27694/1
step
goto Swamp of Sorrows,69.5,54.5
.talk 46071
..turnin 27694
..accept 27704
step
goto Swamp of Sorrows,73.8,44.3 |n
.' Follow the path in the temple and go to this spot
.' Find the Hall of Masks |q 27704/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27704
..accept 27705
step
goto Swamp of Sorrows,74.8,49.3
.' Follow the path in the temple downstairs to the right
.kill Priestess Udum'bra##46424 |q 27705/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27705
..accept 27768
step
goto Swamp of Sorrows,77.5,46.0
.' Follow the path in the temple back upstairs then down the other set of stairs
.kill Gomora the Bloodletter##46623 |q 27768/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27768
..accept 27773
step
goto Swamp of Sorrows,76.6,41.5
.' Follow the path in the temple through the long hallway full of trolls, into a big square 3-layered room
.from Jammal'an the Prophet##46656
.' Defeat Jammal'an the Prophet |q 27773/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27773
..accept 27914
step
goto Swamp of Sorrows,69.5,54.5
.talk 46071
..turnin 27914
step
goto The Temple of Atal'Hakkar,54.0,79.7
.talk 46071
..accept 27870
step
goto Swamp of Sorrows,70.0,38.6
.talk 43087
.fpath Marshtide Watch
step
goto 69.9,36.5
.talk 18221
..accept 27860
..accept 27840
step
goto 68.2,36.2
.talk 46676
..turnin 27870
..accept 27821
..accept 27822
step
goto 52.6,50.3
.kill 5 Stonard Peon##46486+ |q 27822/1
step
goto 56.9,46.2
.kill 8 Stonard Warrior##46166+ |q 27821/1
step
goto 58.9,29.1
.kill 12 Lost Ones |q 27860/1
.click Draenethyst Crystal##219+
.get 6 Draenethyst Crystal |q 27840/1
' |from Lost One Hunter##759+, Lost One Muckdweller##760+, Lost One Seer##761+
step
goto 68.2,36.2
.talk 46676
..turnin 27821
..turnin 27822
..accept 27795
..accept 27843
..accept 27845
step
goto 69.9,36.5
.talk 18221
..turnin 27860
..turnin 27840
..accept 27918
step
goto 56.6,48.0
.kill 3 Stonard Warlock##46770+ |q 27843/1
.kill 6 Stonard Ogre##46765+ |q 27795/1
.' Use your Banner of the Fallen next to Fallen Marshtide Footmen |use Banner of the Fallen##62517 |tip They look like dead Alliance soldiers on the ground around this area.
.' Mark 7 Footmen |q 27845/1
|modelnpc  Fallen Marshtide Footman##46881
step
goto 68.2,36.2
.talk 46676
..turnin 27795
..turnin 27843
..turnin 27845
..accept 27849
..accept 27851
step
ding 54
step
goto 47.7,52.3
.kill 6 Stonard Defender##46870+ |q 27849/1
.click Stonard Supplies##7635+
.get 5 Stonard Supplies |q 27851/1
step
goto 68.2,36.2
.talk 46676
..turnin 27849
..turnin 27851
step
goto 29.0,32.4
.talk 47367
.home The Harborage
step
goto 26.9,33.6
.talk 17127
..turnin 27918
..accept 27875
..accept 27876
step
goto 35.1,37.4
.click Prayerbloom##7791+
.get 10 Prayerblossom |q 27875/1
.from Shifting Mireglob##46997+ |tip They are blobs in the water all around this area.
.get 10 Invigorated Silt |q 27876/1
step
goto 26.9,33.6
.talk 17127
..turnin 27875
..turnin 27876
..accept 27902
..accept 27904
step
goto 22.0,44.4
.from Misty Grell##46950+
.get 5 Smoky Crystal |q 27904/1
|tip Be careful of the horde tower on the way to the next location
step
goto 20.3,56.0
.from Purespring Elemental##46953+
.get 6 Purespring Mote |q 27902/1
step
'Hearth to The Harborage |goto 29.1,32.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 26.9,33.6
.talk 17127
..turnin 27902
..turnin 27904
..accept 24913
step
'Watch the dialogue
.' Watch Magtoor Pass On |q 24913/1
step
goto 26.9,33.6
.talk 17127
..turnin 24913
step
|fly Stormwind
step
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
|fly Talonbranch Glade
step
goto 64.4,10.0 |n
.' Enter the cave |goto 64.4,10.0,0.5 |noway |c
step
goto 67.4,8.0 |n
.' Follow the path east to Winterspring |goto Winterspring |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Winterspring (54-58)\\Winterspring (54-58)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)
startlevel 54.7
dynamic on
step
goto Winterspring,21.1,46.2
.talk 11556
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 25.2,58.5
.talk 10307
..accept 28540
step
goto 28.9,58.6
.from Rimepelt##48765
.get Rimepelt's Heart |q 28540/1
step
goto 25.2,58.5
.talk 10307
..turnin 28540
step
goto 24.5,47.6
.click Winterfall Cauldron##216
..turnin 28464
..accept 28467
step
goto 24.4,48.9
.kill 15 Winterfall Furbolg |q 28460/1
.get 10 Winterfall Spirit Beads |q 28522/1
.' Kill Winterfall mobs until you randomly accept this quest:
..accept 28656
' |from Winterfall Totemic##7441+, Winterfall Pathfinder##7442+, Winterfall Den Watcher##7440+
step
goto 21.1,46.2
.talk 11556
..turnin 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28460
..turnin 28467
..accept 28469
..accept 28530
step
ding 55
step
goto 25.2,58.5
.talk 10307
..turnin 28656
step
goto 32.3,50.9
.from Boiling Springbubble##48768+, Scalding Springsurge##48767+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 28.2,54.7
.from Winterfall Runner##10916 |tip They are white furbolgs that walk and run along this road, so you may need to search for one of them.
.get Winterfall Crate |q 28469/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..accept 28470
..turnin 28530
step
goto 36.9,55.6
.kill High Chief Winterfall##10738 |q 28470/1
.collect Crudely-Written Log##12842 |n
.' Click the Crudely-Written Log in your bags |use Crudely-Written Log##12842
..accept 28471
step
goto 25.1,58.5
.talk 9298
..turnin 28470
..turnin 28471
..accept 28472
step
goto 46.9,53.8
.talk 10920
..turnin 28472
..accept 28479
step
goto 50.7,54.9
.talk 48658
..turnin 28479
..accept 28513
step
goto 49.8,54.4
.from Anguished Highborne##7524+, Suffering Highborne##7523+
.' Release 8 Highborne Spirits |q 28513/1
step
goto 50.7,54.9
.talk 48658
..turnin 28513
..accept 28534
step
goto 50.8,55.0
.talk 48659
..turnin 28534
..accept 28518
step
goto 54.0,57.9
.from Archmage Maenius##48740
.get Memory of Zin-Malor |q 28518/1
step
goto 50.8,55.0
.talk 48659
..turnin 28518
..accept 28535
step
goto 50.7,55.1
.talk 48660
..turnin 28535
..accept 28519
step
goto 50.1,56.2
.kill 7 Wretched Spirits |q 28519/1
' |from Wretched Spirit##48664+, Wretched Spectre##48665+
step
goto 50.7,55.1
.talk 48660
..turnin 28519
..accept 28536
step
goto 46.9,53.8
.talk 10920
..turnin 28536
..accept 28537
step
goto 46.1,56.8 |n
.' Go to the road |goto 46.1,56.8,0.5 |noway |c
step
goto 49.7,60.8 |n
.' Follow the path up, avoiding the pink bubbles because they will damage you |goto 49.7,60.8,0.5 |noway |c
step
goto 50.7,63.6
.from Shade of the Spiritspeaker##48678
.get Shard of the Spiritspeaker |q 28537/1
step
goto 46.9,53.8
.talk 10920
..turnin 28537
..accept 28848
step
goto 59.7,50.5
.talk 50366
..turnin 28848
step
goto 59.9,51.2
.talk 11118
.home Everlook
step
goto 59.9,49.2
.talk 11191
..accept 28609
step
goto 59.8,49.7
.talk 48965
..turnin 28609
..accept 28610
step
goto 57.3,58.0
.from Frostshard Rumbler##48960+
.get 6 Prime Rubble Chunk |q 28610/1
step
goto 59.8,49.7
.talk 48965
..turnin 28610
..accept 28618
step
goto 59.9,49.2
.talk 11191
..turnin 28618
step
goto 59.8,49.1
.talk 11192
..accept 28624
step
goto 59.8,49.7
.talk 48965
..turnin 28624
..accept 28625
step
goto 54.7,51.1
.from Frostleaf Treant##48952+
.get 10 Fresh-Cut Frostwood |q 28625/1
step
goto 59.8,49.7
.talk 48965
..turnin 28625
..accept 28626
step
goto 59.8,49.1
.talk 11192
..turnin 28626
step
goto 59.8,49.3
.talk 11193
..accept 28627
step
goto 59.8,49.7
.talk 48965
..turnin 28627
..accept 28632
step
goto 59.3,49.8
.talk 10305
..accept 28629
..accept 28630
..accept 28631
step
goto 67.0,55.1
.click Echo Three##8171
..turnin 28630
step
goto 69.6,49.8
.' Click the icicle you are hanging from to get down
.from Icewhomp##49235
.get Icewhomp's Pristine Horns |q 28631/1
step
goto 71.4,53.7
.from Solid Ice##49233
.get 7 Pure Glacier Ice |q 28632/1
step
goto 67.2,54.5 |n
.' Leave the cave |goto 67.2,54.5,0.5 |noway |c
step
goto 65.5,55.7
.from Ice Thistle Yeti##7458+, Ice Thistle Patriarch##7460+, Ice Thistle Matriarch##7459+
.get 10 Thick Yeti Fur |q 28629/1
step
ding 56
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.3,49.8
.talk 10305
..turnin 28629
..turnin 28631
..accept 28722
step
goto 59.8,49.7
.talk 48965
..turnin 28632
..accept 28628
step
goto 59.8,49.3
.talk 11193
..turnin 28628
step
goto 60.1,50.9
.' Use Umi's Mechanical Yeti on Legacki |use Umi's Mechanical Yeti##12928
.' Scare Legacki |q 28722/1
step
goto 59.3,49.8
.talk 10305
..turnin 28722
step
goto 59.8,49.7
.talk 48965
..accept 28674
step
goto 59.7,50.5
.talk 50366
..accept 28847
step
goto 48.7,41.0
.talk 11079
..turnin 28674
..accept 28676
..accept 28701
step
goto 47.0,40.2 |n
.' Enter the cave |goto 47.0,40.2,0.5 |noway |c
step
goto 45.8,41.0
.' Follow the path down
.talk 49407
..turnin 28676
..accept 28703
..accept 28706
step
goto 45.6,41.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49399
..turnin 28706
..accept 28707
step
goto 46.3,42.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49400
..turnin 28707
..accept 28710
step
goto 48.1,40.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down |tip You will have to go up some ramps and then through a small passageway to get over to the balcony she's standing on.
.talk 49402
..turnin 28710
..accept 28718
step
goto 47.7,41.4
.' Start following the path up to the exit of the cave
.kill 10 Coldlurk Creeper##49346+ |q 28703/1
.kill 5 Coldlurk Burrower##49347+ |q 28703/2
.click Ancient Urn##10250+
.get 5 Starfall Relic |q 28701/1
step
goto 45.8,41.0
.' Follow the path up
.talk 49407
..turnin 28703
step
goto 47.1,40.2 |n
.' Leave the cave |goto 47.1,40.2,0.5 |noway |c
step
goto 48.7,41.0
.talk 11079
..turnin 28701
step
goto 55.9,28.1
.talk 49396
..turnin 28718
..accept 28640
..accept 28828
step
goto 56.0,28.2
.talk 49537
..accept 28638
step
goto 55.9,28.3
.talk 49436
..accept 28637
step
goto 56.8,24.4
.click Chillwind Egg##321+
.get 40 Chillwind Egg |q 28828/1
step
goto 54.3,22.1
.kill 15 Frostsaber |q 28640/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28640
..accept 28641
.' There are more Frostsaber around [Winterspring,49.7,23.3]
' |from Frostsaber##7431+, Frostsaber Stalker##7432+
step
goto 47.3,22.3
.from Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+ |q 28641/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28641
..accept 28742
step
goto 46.0,17.5
.kill Shy-Rotam##10737 |q 28742/1 |tip He's a white tiger that walks around this area near this huge slanted rock.
step
goto 51.0,30.9
.kill 15 Shardtooth Bear##7444+ |q 28637/1
.kill 15 Winterspring Owl##7455+ |q 28638/1
.' You can find more around [Winterspring,57.0,29.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28637
..accept 28719
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28638
..accept 28745
step
ding 57
step
goto 55.5,35.3
.kill 15 Winterspring Screecher##7456+ |q 28745/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28745
..accept 28782
step
goto 52.4,33.4
.kill Hell-Hoot##50044 |q 28782/1 |tip He's a big brown owl that flies slowly around this area.
step
goto 52.3,40.4
.kill 15 Shardtooth Mauler##7443+ |q 28719/1
.' You can find more Shardtooth Maulers around [Winterspring,56.4,38.7]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28719
..accept 28639
step
goto 57.8,39.0 |n
.' Follow the path up |goto 57.8,39.0,0.5 |noway |c
step
goto 59.7,40.8
.kill Ursius##10806 |q 28639/1 |tip He's a big white bear up the hill inside this small cave.
step
goto 56.0,28.2
.talk 49537
..turnin 28782
step
goto 55.9,28.1
.talk 49396
..turnin 28742
..turnin 28828
step
goto 55.9,28.3
.talk 49436
..turnin 28639
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Winterspring,58.0,63.8
.talk 10929
..turnin 28847
..accept 28837
step
goto 55.9,66.5
.from Altered Beast##49161+
.get 5 Mana-Addled Brain |q 28837/1
step
goto 58.0,63.8
.talk 10929
..turnin 28837
..accept 28838
step
goto 57.1,75.4
.click Abandoned Research Samples##5743
.get Owlbeast Dreamcatcher |q 28838/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28838
..accept 28839
step
goto 61.9,74.7
.talk 50263
..accept 28829
step
goto 64.8,81.0
.click Owlbeast Moon-Totem##10289
.get Essence of the Moon-Totem |q 28839/3
step
goto 65.6,77.6
.click Owlbeast Life-Totem##10290
.get Essence of the Life-Totem |q 28839/2
step
goto 65.1,73.9
.click Owlbeast Claw-Totem##10288
.get Essence of the Claw-Totem |q 28839/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28839
..accept 28840
step
goto 64.7,75.9
.kill 12 Crazed Owlbeast |q 28829/1
' |from Berserk Owlbeast##7454+, Moontouched Owlbeast##7453+, Crazed Owlbeast##7452+
step
goto 61.9,74.7
.talk 50263
..turnin 28829
..accept 28830
..accept 28831
step
goto 57.2,78.1 |n
.' Follow the path down |goto 57.2,78.1,0.5 |noway |c
step
goto 63.2,86.0
.kill Frostilicus##50251 |q 28831/1
step
goto 61.3,85.6
.from Ice Avatar##50250+
.get 7 Winterwater |q 28840/1
step
goto 57.2,78.1 |n
.' Leave Frostwhisper Gorge |goto 57.2,78.1,0.5 |noway |c
step
goto 58.3,77.3
.kill 8 Frostmaul Tumbler##50258+ |q 28830/1
step
goto 61.9,74.7
.talk 50263
..turnin 28830
..turnin 28831
step
goto 58.0,63.8
.talk 10929
..turnin 28840
..accept 28841
..accept 28842
step
ding 58
step
goto 55.0,64.0 |n
.' Enter the cave |goto 55.0,64.0,0.5 |noway |c
step
goto 52.2,63.9
.' Use your Empowered Dreamcatcher next to Arcane Tesseracts |use Empowered Dreamcatcher##66060 |tip They look like big blue and pink balls of electricity throughout the cave.
.' Close 5 Arcane Tesseracts |q 28841/1
step
goto 50.0,69.9
.kill Umbranse the Spiritspeaker##50325 |q 28842/1
.' Use your Bluescale Sigil after you kill Umbranse the Spiritspeaker |use Bluescale Sigil##66061
.' Teleport back to Haleh |goto 58.0,63.7,0.5 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28841
..turnin 28842
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.9,51.2
.talk 11118
..accept 28857
step
goto 61.0,48.6
.talk 11138
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
goto Teldrassil,55.1,88.4 |n
.' Go inside the pink portal to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,36.6,47.9
.talk 40552
.fpath Darnassus
step
goto 44.0,78.2
.' Click the Portal to Blasted Lands |tip It looks like a blue swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands,53.9,46.1,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Hellfire Peninsula (60-62)
startlevel 58.15
dynamic on
step
goto Blasted Lands,60.1,13.5
.talk 5393
..turnin 28857 |only !DeathKnight
..accept 25710
step
goto 60.7,14.0
.talk 44325
.home Nethergarde Keep
step
goto 61.5,18.6
.talk 9540
..accept 25715
step
goto 61.3,21.6
.talk 8609
.fpath Nethergarde Keep
step
goto 63.0,22.8
.kill Okril'lon Scout##42228 |q 25710/1 |tip They are stealthed around this area, so keep an eye out.
step
goto 60.1,13.5
.talk 5393
..turnin 25710
..accept 25711
step
goto 60.2,13.4
.talk 42262
..accept 25712
step
goto 60.5,13.8
.talk 42264
..accept 25713
step
goto 51.3,13.3
.kill Captain Metlek##42231 |q 25712/1 |tip He walks around on a wolf, so he may not be in this spot.
step
goto 52.8,15.9
.' Use Buttonwillow's Hand Grenade on Okril'lon Weapons Crates |use Buttonwillow's Hand Grenade##57117
.' Destroy 8 Okril'lon Weapons Crate |q 25713/1
.kill 9 Okril'lon Infantry##42359+ |q 25711/1
step
goto 60.1,13.5
.talk 5393
..turnin 25711
step
goto 60.2,13.4
.talk 42262
..turnin 25712
step
goto 60.5,13.8
.talk 42264
..turnin 25713
step
goto 63.9,23.8 |n
.' Follow the path down |goto 63.9,23.8,0.5 |noway |c
step
goto 68.0,31.4
.' Go to this spot
.' Scout the ships on the Shattershore |q 25715/1
step
goto 64.3,26.0 |n
.' Follow the path up |goto 64.3,26.0,0.5 |noway |c
step
goto Blasted Lands,61.5,18.6
.talk 9540
..turnin 25715
..accept 25708
..accept 25709
step
goto 63.9,23.8 |n
.' Follow the path down |goto 63.9,23.8,0.5 |noway |c
step
goto 67.4,29.2
.from Drowned Gilnean Merchant##42244+, Drowned Gilnean Settler##42249+, Drowned Gilnean Sailor##42248+
.' Free 13 Drowned Gilnean Spirits |q 25708/1
.' Use Enohar's Explosive Arrows on Darktail Bonepickers |use Enohar's Explosive Arrows##57119 |tip They are flying in the sky over the beach.
.kill 20 Darktail Bonepicker##42235+ |q 25709/1
step
goto 64.3,26.0 |n
.' Follow the path up |goto 64.3,26.0,0.5 |noway |c
step
goto Blasted Lands,61.5,18.6
.talk 9540
..turnin 25708
..turnin 25709
..accept 25714
step
goto 63.2,16.9
.talk 5385
..turnin 25714
..accept 25716
step
goto 63.9,23.8 |n
.' Follow the path down |goto 63.9,23.8,0.5 |noway |c
step
goto 63.0,34.8
.from Shadowsword Spellblade##42296+, Shadowsworn Occultist##42297+
.get 6 Intact Shadowsworn Spell Focus |q 25716/1
step
goto 64.3,26.0 |n
.' Follow the path up |goto 64.3,26.0,0.5 |noway |c
step
goto 63.2,16.9
.talk 5385
..turnin 25716
..accept 26157
step
goto 63.9,23.8 |n
.' Follow the path down |goto 63.9,23.8,0.5 |noway |c
step
goto 60.8,29.4 |n
.' Enter the cave |goto 60.8,29.4,0.5 |noway |c
step
goto 62.5,26.3
.talk 42298
..turnin 26157
..accept 26158
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Use the Internal Bloodstone Teleporter |q 26158/1
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Use the External Bloodstone Teleporter |q 26158/2
step
goto 62.5,26.3
.talk 42298
..turnin 26158
..accept 26159
..accept 26172
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 53.3,31.2
.from Ashmane Boar##5992+
.get 5 Ashmane Steak |q 26172/1
.from Redstone Basilisk##5990+
.get 9 Redstone Basilisk Blood |q 26159/2
.from Snickerfang Hyena##5985+
.get 9 Snickerfang Hyena Blood |q 26159/1
.' You can find more Ashmane Boars and Redstone Basilisk around [Blasted Lands,56.9,24.8]
.' There are also some around [Blasted Lands,48.8,34.1]
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Teleport inside |goto 63.2,26.0,0.5 |noway |c
step
goto 62.5,26.3
.talk 42298
..turnin 26159
..accept 26160
..turnin 26172
step
goto 62.4,26.1
.talk 42298
..' Tell him you would like to start the Blood Ritual
|confirm
step
goto 62.4,26.1
.talk 42298
..turnin 26160
..accept 26167
..accept 26168
..accept 26169
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 60.8,29.4 |n
.' Enter the cave |goto 60.8,29.4,0.5 |noway |c
step
goto 61.6,26.8
.click Allistarjian Vault##5743
.get Amulet of Allistarj |q 26167/1
step
goto 60.8,29.4 |n
.' Leave the cave |goto 60.8,29.4,0.5 |noway |c
step
goto 71.0,35.5
.click Head of Grol##4411
.from Spirit of Grol##41267
.get Amulet of Grol |q 26169/1
step
goto 69.0,46.2 |n
.' Follow the path up |goto 69.0,46.2,0.5 |noway |c
step
goto 73.2,47.4
.talk 41265
..accept 25702
step
goto 73.2,47.4
.talk 41265
..' Tell him you need the Amulet of Sevine.
.get Amulet of Sevine |q 26168/1
step
goto 71.0,60.0
.talk 41354
..turnin 25702
..accept 25703
step
goto 71.8,62.5
.kill 10 Bloodwash Barbarian##41386+ |q 25703/1
.kill 10 Bloodwash Enchantress##41387+ |q 25703/2
step
goto 71.0,60.0
.talk 41354
..turnin 25703
..accept 25705
..accept 25706
step
goto 61.4,62.9 |n
.' Enter the cave |goto 61.4,62.9,0.5 |noway |c
step
goto 61.5,58.0
.click Azh'ir Idol##4853+
.' Destroy 8 Azsh'ir Idols |q 25705/1
.kill 8 Bloodwash Zealot##41422+ |q 25706/1
.kill 8 Bloodwash Acolyte##41423+ |q 25706/2 |q 25706/2
step
ding 59
step
goto 61.4,62.9 |n
.' Leave the cave |goto 61.4,62.9,0.5 |noway |c
step
goto  62.9,64.2
.clicknpc Abandoned Bloodwash Crate##41402+
..' <Help the Rockpool tadpoles.>
..accept 25707
step
goto 60.2,71.0
.click Abandoned Bloodwash Crate##41402+ |tip Get it again after each time you have to fight
.kill 4 Bloodwash Idolater##41405+ |q 25706/4
step
goto 65.9,74.5
.click Abandoned Bloodwash Crate##41402+ |tip Get it again after each time you have to fight
.kill 4 Bloodwash Gambler##41404+ |q 25706/3
step
goto 70.1,80.4
.click Abandoned Bloodwash Crate##41402+ |tip Get it again after each time you have to fight
.' Drag the Abandoned Bloodwash Crate to this spot
.' Return the Rockpool Tadpoles to the Forbidding Sea |q 25707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25707
step
goto 71.0,60.0
.talk 41354
..turnin 25705
..turnin 25706
step
'Hearth to Nethergarde Keep |goto 60.7,14.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 63.9,23.8 |n
.' Follow the path down |goto 63.9,23.8,0.5 |noway |c
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Teleport inside |goto 63.2,26.0,0.5 |noway |c
step
goto 62.9,26.0
.talk 42298
..turnin 26167
..turnin 26168
..turnin 26169
..accept 26163
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 55.1,49.6
.talk 42299
..turnin 26163
..accept 26164
..accept 26165
step
goto 54.7,50.5
.talk 16841
..accept 26173
step
goto 59.9,43.1
.kill Shahandana##41165 |q 26173/2
step
goto 52.3,41.9
.kill Gomegaz##41166 |q 26173/3
step
goto 43.9,47.7
.kill Jarroc Torn-Wing##41164 |q 26173/1
step
goto 48.9,46.0
.from Felguard Sentry##6011+, Felhound##6010+, Oath-Chained Infernal##41253+
.get 7 Vile Demonic Blood |q 26165/1
.click Charred Granite Outcropping##9537+
.get 24 Charred Granite Chips |q 26164/1
step
goto 55.1,49.6
.talk 42299
..turnin 26164
..turnin 26165
..accept 26166
step
goto 54.7,50.5
.talk 16841
..turnin 26173
..accept 26174
step
goto 53.9,50.0
.' While the Horde Portal Sentry has his back turned to you, click the Horde Plans |tip Click the plans as soon as the Horde Portal Sentry has his back turned to you while he's pacing, or else he will attack you when you try to get the plans. |model Horde Plans##222
.' Examine the Horde Plans |q 26174/1
|modelnpc Horde Portal-Sentry##42301
step
goto 54.7,50.5
.talk 16841
..turnin 26174
..accept 26175
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Teleport inside |goto 63.2,26.0,0.5 |noway |c
step
goto 62.9,26.0
.talk 42298
..turnin 26166
..accept 26161
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 41.4,33.2 |n
.' Enter the cave |goto 41.4,33.2,0.5 |noway |c
step
goto 40.0,37.2
.click Dreadmaul Cache##4192
.get Loramus' Torso |q 26161/2
step
goto 41.4,33.2 |n
.' Leave the cave |goto 41.4,33.2,0.5 |noway |c
step
goto 45.1,30.4 |n
.' Enter the cave |goto 45.1,30.4,0.5 |noway |c
step
goto 46.7,26.9
.click Dreadmaul Cache##4192
.get Loramus' Head |q 26161/1
step
goto 45.1,30.4 |n
.' Leave the cave |goto 45.1,30.4,0.5 |noway |c
step
goto 46.1,39.0 |n
.' Enter the cave |goto 46.1,39.0,0.5 |noway |c
step
goto 47.0,39.5
.click Dreadmaul Cache##4192
.get Loramus' Legs |q 26161/3
step
goto 46.1,39.0 |n
.' Leave the cave |goto 46.1,39.0,0.5 |noway |c
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Teleport inside |goto 63.2,26.0,0.5 |noway |c
step
goto 62.9,26.0
.talk 42298
..turnin 26161
..accept 26162
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 40.2,35.7 |n
.' Follow the path up |goto 40.2,35.7,0.5 |noway |c
step
goto 37.0,28.4
.click Blood Altar##227
.' Defend Loramus' Body while he performs the ritual
.' Resurrect Loramus |q 26162/1
step
goto 61.4,29.9
.click Bloodstone Teleporter##6837
.' Teleport inside |goto 63.2,26.0,0.5 |noway |c
step
goto 62.3,26.1
.talk 7783
..turnin 26162
step
goto 62.9,26.0
.talk 42298
..accept 26170
step
goto 62.4,26.2
.talk 42298
..' Tell him you would like to start the Amulet Ritual
.' Speak with Kasim Sharim and participate in his ritual |q 26170/1
step
goto 62.3,26.1
.talk 7783
..turnin 26170
..accept 26171
step
ding 60
step
goto 63.2,25.9
.click Bloodstone Teleporter##7585
.' Teleport outside |goto 61.4,29.9,0.5 |noway |c
step
goto 46.5,21.9
.talk 8816
..' Tell him you wish to face the Defiler
.from Razelikh the Defiler##41280
.' Destroy Razelikh's body |q 26171/1
.' Use the Stone Knife of Sealing on Loramus Thalipedes when he tells you to |use Stone Knife of Sealing##56012
.' Imprison Razelikh's soul |q 26171/2
step
goto 55.1,49.6
.talk 42299
..turnin 26171
step
'Hearth to Nethergarde Keep |goto 60.7,14.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 61.3,21.6
.talk 8609
.' Fly to Surwich, Blasted Lands |goto 47.1,89.2,0.5 |noway |c
step
goto 46.4,87.2
.talk 42349
..turnin 26175
..accept 26184
step
goto 33.4,76.3
.kill 3 Felspore Bog Lord##45125 |q 26184/4
step
goto 35.0,75.3
.kill 5 Doomguard Destroyer##41470+ |q 26184/1
.kill 5 Corrupted Darkwood Treant##45119+ |q 26184/3
.kill 5 Dreadlord Defiler##41471+ |q 26184/2
step
goto 46.4,87.2
.talk 42349
..turnin 26184
..accept 26185
step
goto 47.3,88.7
.talk 42352
..turnin 26185
..accept 26186
step
goto 35.9,57.8
.from Tainted Nightstalker##42337
.collect 20 Nightstalker Leg##57178 |q 26186
.from Tainted Black Bear##42336
.collect 4 Tainted Hide##57177 |q 26186
.from Tainted Screecher##42338+
.collect 2 Screecher Brain##57179 |q 26186
step
'Use your Nightstalker Legs |use Nightstalker Leg##57178
.collect 20 Crushed Nightstalker Leg##57181 |q 26186
step
'Use your Screecher Brains |use Screecher Brain##57179
.collect 2 Screecher Brain Paste##57182 |q 26186
step
'Use your Tainted Hides |use Tainted Hide##57177
.collect Tainted Hide Pouch##57180 |q 26186
step
'Use your Crushed Nightstalker Legs |use Crushed Nightstalker Leg##57181
.collect Demoniac Commixture##57183 |q 26186
step
'Use your Demoniac Commixture |use Demoniac Commixture##57183
.get Demoniac Vessel |q 26186/1
step
goto 46.4,87.2
.talk 42349
..turnin 26186
..accept 26187
step
goto 34.7,67.8
.' Kill the 4 Dreadlord Defilers
.' Use the Demoniac Vessel on Marl Wormthorn |use Demoniac Vessel##57185
.kill Marl Wormthorn##42334 |q 26187/1
step
goto 46.4,87.2
.talk 42349
..turnin 26187
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Draenei (1-5)",[[
author support@zygorguides.com
defaultfor Draenei
condition suggested !exclusive
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)
startlevel 1
dynamic on
step
goto Ammen Vale 61.2,29.5
.talk 16475
..accept 9279
step
goto 52.8,35.9
.talk 16477
..turnin 9279
..accept 9280
step
goto 50.9,28.8
.from Vale Moth##16520+
.get 6 Vial of Moth Blood##22889 |q 9280/1
step
goto 52.8,35.9
.talk 16477
..turnin 9280
..accept 9409
step
ding 2
step
goto 52.5,41.2
.talk 16502
..turnin 9409
..accept 9283
..accept 26970 |only Draenei Priest
step
goto 52.8,35.9
.talk 16477
..accept 9371
step
goto 49.9,37.4
.talk 16514
..turnin 9371
..accept 10302
step
goto 48.3,30.4
.kill 8 Volatile Mutation##16516+ |q 10302/1
.' Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru##28880 |tip They are Draenei lying on the ground around this area.  They spawn in random locations, so you may have to search for one.
.' Save a Draenei Survivor |q 9283/1
step
goto 49.9,37.4
.talk 16514
..turnin 10302
..accept 9293
step
goto 49.7,37.5
.talk 20233
..accept 9799
step
goto 52.5,41.2
.talk 16502
..turnin 9283
step
goto 50.5,47.9
.talk 17071
..accept 9305
step
goto 50.6,48.7
.talk 16535
..accept 9303
step
goto 36.6,48.5
.from Mutated Root Lasher##16517+
.get 10 Lasher Sample |q 9293/1
.click Corrupted Flower##6662
.get 3 Corrupted Flower##24416 |q 9799/1
step
ding 3
step
goto 49.7,37.5
.talk 20233
..turnin 9799
step
goto 49.9,37.4
.talk 16514
..turnin 9293
..accept 9294
step
goto 79.7,48.2
.talk 16501
..accept 26966
only Draenei Paladin
step
goto 51.0,37.1
.' Use your Seal of Command ability, then strike a Training Dummy |q 26966/2
|modelnpc Training Dummy##44548
only Draenei Paladin
step
goto 79.7,48.2
.talk 16501
..turnin 26966
only Draenei Paladin
step
goto 79.3,49.1
.talk 17089
..accept 26969
only Draenei Shaman
step
goto 51.0,37.1
.' Use your Primal Strike abilty on the Training Dummy 
.' Practice Primal Strike 3 times |q 26969/2
|modelnpc Training Dummy##44548
only Draenei Shaman
step
goto 79.3,49.1
.talk 17089
..turnin 26969
only Draenei Shaman
step
goto 51.0,37.1
.' Use your Shadow Word: Pain ability on target dummies. 
.' Practice Shadow Word: Pain 5 times |q 26970/2
|modelnpc Training Dummy##44548
only Draenei Priest
step
goto 52.5,41.2
.talk 16502
..turnin 26970
only Draenei Priest
step
goto 79.6,48.8
.talk 16500
..accept 26968
only Draenei Mage
step
goto 51.0,37.1
.' Use your Frost Nova ability on the Training Dummy 
.' Practice Frost Nova 2 times |q 26968/2
|modelnpc Training Dummy##44548
only Draenei Mage
step
goto 79.6,48.8
.talk 16500
..turnin 26968
only Draenei Mage
step
goto 79.9,49.7
.talk 16499
..accept 26963
only Draenei Hunter
step
goto 79.8,45.8
.' Use your Steady Shot ability on the Training Dummy 
.' Practice Steady Shot 5 times |q 26963/2
|modelnpc Training Dummy##44548
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
only Draenei Warrior
step
goto 79.7,45.9
.' Use your Charge ability on a Training Dummy 
.' Practice Charge |q 26958/2
|modelnpc Training Dummy##44548
only Draenei Warrior
step
goto 79.6,49.5
.talk 16503
..turnin 26958
only Draenei Warrior
step
goto 35.9,28.0
.talk 63335
..accept 31173
only Draenei Monk
step
goto 79.7,45.9
.' Use your Tiger Palm ability on a Training Dummy
.' Practice Tiger Palm |q 31173/2
|modelnpc Training Dummy##44548
only Draenei Monk
step
goto 35.9,28.0
.talk 63335
..turnin 31173
only Draenei Monk
step
goto 45.5,64.7
.click Irradiated Power Crystal##6772
.' Disperse the Neutralizing Agent |q 9294/1
step
'Follow this path up through the tunnel. |goto 54.1,65.2 <5 |c
step
goto 65.2,81.2
.' Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
.' Inoculate 6 Nestlewood Owlkins |q 9303/1 |modelnpc 16518
.click Emitter Spare Part##6778+
.get 4 Emitter Spare Part##22978 |q 9305/1
step
'Hearth to Ammen Vale |goto Ammen Vale 61.4,29.5 <5 |use Hearthstone##6948 |noway |c
step
goto 49.9,37.4
.talk 16514
..turnin 9294
step
ding 4
step
goto 50.5,47.9
.talk 17071
..turnin 9305
step
goto 50.6,48.7
.talk 16535
..turnin 9303
..accept 9309
step
goto 33.9,69.3
.talk 16546
..turnin 9309
..accept 10303
step
goto 28.5,78.0
.kill 10 Blood Elf Scout##16521+ |q 10303/1
step
goto 33.9,69.3
.talk 16546
..turnin 10303
..accept 9311
step
goto 27.8,80.4
.kill Surveyor Candress##16522 |q 9311/1
.collect Blood Elf Plans##24414 |n
.' Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
..accept 9798
step
goto 50.6,48.7
.talk 16535
..turnin 9311
..turnin 9798
..accept 9312
step
ding 5
step
goto 50.5,47.9
.talk 17071
..turnin 9312
..accept 9313
step
.' The path through the mountains starts here |goto 27.1,54.8 <5 |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)
startlevel 5.43
dynamic on
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
.' Use your Draenei Fishing Net next on Schools of Red Snapper |use Draenei Fishing Net##23654
model School of Red Snapper##06883
.get 10 Red Snapper##23614 |q 9452/1
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
step
goto 48.3,49.2
.talk 16553
.home Azure Watch
step
goto Azuremyst Isle,50.3,56.6
.from Moongraze Stag##17200+
.get 6 Moongraze Stag Tenderloin##23676 |q 9454/1
.from Root Trapper##17196+
.get 8 Root Trapper Vine##23685 |q 9463/1
step
ding 6
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
.get 6 Skittering Crawler Meat##23757 |q 9512/1
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..turnin 9512
step
goto Azuremyst Isle,47.1,70.3
.talk 17241
..accept 9513
step
goto Azuremyst Isle,47.2,70
.talk 17242
..accept 9523
step
goto Azuremyst Isle,58.6,66.4
.click Nautical Map##6817
.get Nautical Map##23739 |q 9506/2
step
goto Azuremyst Isle,59.6,67.6
.click Nautical Compass##6846
.get Nautical Compass##23738 |q 9506/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9506
..accept 9530
step
ding 7
step
goto Azuremyst Isle,45.9,65.7
.click Hollowed Out Tree##6833
.get Hollowed Out Tree##23790 |q 9530/1
.click Piles of Leaves##6884+
.get 5 Pile of Leaves##23791 |q 9530/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9530
..accept 9531
step
goto Azuremyst Isle,36.1,77
.click Ancient Relic##6710+
.get 8 Ancient Relic##23779 |q 9523/1
.kill 5 Wrathscale Myrmidon##17194+ |q 9513/1
.kill 5 Wrathscale Naga##17193+ |q 9513/2
.kill 5 Wrathscale Siren##17195+ |q 9513/3
step
.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
.collect 1 Rune Covered Tablet##23759 |n
.' Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
..accept 9514
step
goto Azuremyst Isle,18.5,84.3
.' Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |model Naga Flag##06825
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
.get 6 Moongraze Buck Hide##23677 |q 10324/1
step
goto Azuremyst Isle,50.6,46.2
.from Infected Nightstalker Runt##17202
.collect 1 Faintly Glowing Crystal##23678 |n
.' Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
..accept 9455
step
goto Azuremyst Isle,50.4,37.1
.click Azure Snapdragon##3251+ |tip If you are an Herbalist you can track these on your minimap.
.get 5 Azure Snapdragon Bulb##23692 |q 9473/1
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 10324
step
goto Azuremyst Isle,48.4,51.5
.talk 17215
..turnin 9473
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9455
..accept 9456
step
ding 8
step
goto Azuremyst Isle,49,51.1
.talk 17488
..accept 10428
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..accept 9603
only Draenei
step
goto 49.7,49.1
.talk 43991
..turnin 9603
..accept 9604
only Draenei
step
goto 49.7,49.1
.talk 43991
.' Fly to The Exodar |goto The Exodar,54.4,36.6,0.5 |noway |c
only Draenei
step
goto The Exodar,57.0,50.1
.talk 16768
..turnin 9604
..accept 9605
only Draenei
step
goto 54.5,36.3
.talk 17555
..turnin 9605
..accept 9606
only Draenei
step
goto 54.5,36.3
.talk 17555
.' Fly to Azure Watch, Azuremyst Isle |goto Azuremyst Isle,49.6,49.2,0.5 |noway |c
only Draenei
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9606
only Draenei
step
goto Azuremyst Isle,45.7,43.9
.kill 8 Infected Nightstalker Runt##17202+ |q 9456/1
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
ding 9
step
goto Azuremyst Isle,47.2,70
.talk 17242
..turnin 9523
step
goto 47.1,70.3
.talk 17241 |tip You may have to wait for her to finish her conversation with Archaeologist Adamant Ironheart.
..accept 9515
step
goto Azuremyst Isle,48.2,72.5
.talk 17243 |tip He patrols the beach so you may have to look for him.
.' Tell him it's over
.from Engineer "Spark" Overgrind
.get Traitor's Communication##23899 |q 9537/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9537
..accept 9602
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9602
step
goto Azuremyst Isle,49.40,51.0
.talk 17232
..accept 9538
step
'Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
.' Read the Stillpine Furbolg Language Primer |q 9538/1
step
goto 49.4,51.0
.clicknpc Totem of Akida##17360
..turnin 9538
..accept 9539
step
goto 55.2,41.7
.' Follow Stillpine Ancestor Akida as he runs up the hill
.clicknpc Totem of Coo##17361
..turnin 9539
..accept 9540
|modelnpc Stillpine Ancestor Akida##17379
step
goto 55.6,41.6
.' Follow Stillpine Ancestor Coo to the edge of the cliff
.' He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540
|modelnpc Stillpine Ancestor Coo##17391
step
goto Azuremyst Isle,64.5,39.8
.clicknpc Totem of Tikti##17362
..turnin 9540
..accept 9541
step
goto 63.8,40.2
.' Follow Stillpine Ancestor Tikti to the river
.' He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541
|modelnpc Stillpine Ancestor Tikti##17392
step
goto Azuremyst Isle,63,67.9
.clicknpc Totem of Yor##17363 |tip It is underwater.
..turnin 9541
..accept 9542
step
goto 61.0,69.5
.' Follow Stillpine Ancestor Yor out of the water
.' He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542
|modelnpc Stillpine Ancestor Yor##17393
step
goto Azuremyst Isle,28.1,62.4
.' Follow Stillpine Ancestor Yor as he runs
.clicknpc Totem of Vark##17364
..turnin 9542
..accept 9544
|modelnpc Stillpine Ancestor Yor##15926
step
goto Azuremyst Isle,28.5,66.4
.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
.collect Bristlelimb Key##23801 |n
.click Bristlelimb Cage##1787
.' Free 8 Stillpine Captives |q 9544/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Enter the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,25.2,74.2
.' Follow the path to the bottom of the cave
.kill Warlord Sriss'tiz##17298 |q 9515/1
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
.get Remains of Cowlen's Family##23789 |q 9527/1
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
ding 10
step
goto Azuremyst Isle,47,70.2
.talk 17241
..turnin 9515
step
goto Azuremyst Isle,44.8,23.9
.talk 17442
..accept 9560
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..accept 9562
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9559
step
goto 53.1,20.8
.from Ravager Specimen##17199+
.get 8 Ravager Hide##23845 |q 9560/1
step
goto Azuremyst Isle,33.8,25.7
.' Follow the road around
.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
.click Stillpine Grain##6484+
.get 5 Stillpine Grain##23849 |q 9562/1
step
goto Azuremyst Isle,33.8,25.7
.from Murgurgala##17475 |tip He patrols the shoreline so you may have to look for him.
.collect 1 Gurf's Dignity##23850 |n
.' Click Gurf's Dignity in your bags |use Gurf's Dignity##23850
..accept 9564
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
ding 11
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
.kill Chieftain Oomooroo##17448 |q 9573/1
step
goto Azuremyst Isle,50.5,11.5
.click Blood Crystal##6835
..turnin 9565
..accept 9566
step
goto Azuremyst Isle,47.4,16.0
.kill 9 Crazed Wildkin##17189+ |q 9573/2
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
.get The Kurken's Hide##23860 |q 9570/1
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
goto 49.7,49.1		//flight step
.talk 43991
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto Azuremyst Isle,35.1,43.4
.' Follow the ramp up and outside The Exodar
.talk 17584
..turnin 9623
step
goto Azuremyst Isle,20.4,54.2 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto 55.1,88.4 |n
.' Go through the pink portal to Darnassus |goto Darnassus |noway |c
step
goto 43.9,76.1
.talk 42936
..accept 26383
step
goto 36.9,50.4 |n
.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.5
.talk 3838
..' Talk to him twice to make the Lor'danel flight path appear
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)
startlevel 11.58
step
goto Bloodmyst Isle,63.0,87.9
.talk 17586
..turnin 9625 |tip You may not have this breadcrumb quest to turn in.
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
.kill 10 Bloodmyst Hatchling##17525+ |q 9634/1
.click Sand Pear##473+
.get 10 Sand Pear##23927 |q 9624/1
step
goto 63.0,87.9
.talk 17586
..turnin 9634
step
goto 63.4,88.8
.talk 17599
..turnin 9624
step
ding 12
step
goto 68.3,81.1
.talk 17682
..accept 9667
only if completedq(9538)
step
goto 64.5,77.7
.' Kill furbolgs in this camp until High Chief Bristlelimb appears
.from High Chief Bristlelimb##17702
.collect The High Chief's Key##24099 |q 9667
only if completedq(9538)
step
goto 68.8,68.1
.kill Lord Xiz##17701 |q 9666/2
.' Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
.' Declare your Power |q 9666/1
step
goto 68.2,81.1
.click Princess Stillpine's Cage##1787
.' Save Princess Stillpine |q 9667/1
only if completedq(9538)
step
goto 63.0,87.5
.talk 17649
..turnin 9666
..accept 9668
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)
startlevel 12.30
step
goto Azuremyst Isle,47,70.2
.talk 17240
..accept 9506
step
goto Azuremyst Isle,58.6,66.4
.click Nautical Map##6817
.get Nautical Map##23739 |q 9506/2
step
goto Azuremyst Isle,59.6,67.6
.click Nautical Compass##6846
.get Nautical Compass##23738 |q 9506/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9506
..accept 9530
step
goto Azuremyst Isle,45.9,65.7
.click Hollowed Out Tree##6833
.get Hollowed Out Tree##23790 |q 9530/1
.click Piles of Leaves##6884+
.get 5 Pile of Leaves##23791 |q 9530/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9530
..accept 9531
step
goto Azuremyst Isle,18.5,84.3
.' Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |tip It's a red flag on a metal pole on the beach.
.' Watch the conversation
.' Uncover the Traitor |q 9531/1
step
goto 47.0,70.2
.talk 17240
..turnin 9531
..accept 9537
step
goto Azuremyst Isle,48.2,72.5
.talk 17243 |tip He patrols the beach so you may have to look for him.
.' Tell him it's over
.from Engineer "Spark" Overgrind
.get Traitor's Communication##23899 |q 9537/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9537
..accept 9602
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9602
step
goto Bloodmyst Isle,55.2,59.1
.click Wanted Poster##6901
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
goto 55.2,56.0
.talk 18803
..turnin 9667 |tip You may not have this breadcrumb quest to turn in.
only if completedq(9538)
step
goto 56.4,56.8
.talk 17663
..accept 9648
step
goto 52.7,53.2
.talk 17658
..turnin 9668 |tip You may not have this breadcrumb quest to turn in.
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
goto 60.7,42.0
.click Ruinous Polyspore##6432
.get Ruinous Polyspore##24042 |q 9648/3
step
goto 62.3,53.0
.click Blood Mushroom##6874 |tip It looks like a red-ish glowing mushroom on the ground.
.get Blood Mushroom |q 9648/2
step
goto 59.7,71.0
.from Stinkhorn Striker##17673
..get Aquatic Stinkhorn |q 9648/1
step
goto 58.1,83.3
.' Use the Crystal Mining Pick on Impact Site Crystal |use Crystal Mining Pick##23875
.get Impact Site Crystal Sample##23878 |q 9581/1
step
goto 47.8,94.4
.' Use the Murloc Tagger on Blacksilt Scout |use Murloc Tagger##23995
.' Tag 6 Blacksilt Scouts |q 9629/1
.from Cruelfin##17496 |tip He's an orange murloc that walks along this beach, so you may need to search for him.
.collect 1 Red Crystal Pendant##23870 |n
.' Click the Red Crystal Pendant in your bags |use Red Crystal Pendant##23870
..accept 9576
|modelnpc Blacksilt Scout##17326
step
goto 44.4,82.4
.click Fel Cone Fungus##6879
.get Fel Cone Fungus |q 9648/4
step
goto 56.4,56.8
.talk 17663
..turnin 9648
step
goto 53.3,57.8
.talk 17434
..turnin 9629
..accept 9574
..turnin 9576
step
ding 13
step
goto 55.1,58.0
.talk 17433
..accept 9567
step
goto 55.4,55.3
.talk 17684
..accept 9641
step
goto 56.3,54.2
.talk 18804
..accept 10063
step
goto 52.6,53.2
.talk 17423
..turnin 9581
..accept 9620
step
goto 49.5,47.4
.kill 10 Sunhawk Spy##17604+ |q 9694/1
step
goto 55.4,55.3
.talk 17684
..turnin 9694
step
goto 61.3,48.4
.clicknpc Draenei Cartographer##17600
..turnin 9620
..accept 9628
step
goto 61.3,48.4
.from Wrathscale Marauder##17334+, Wrathscale Sorceress##17336+
.get Survey Data Crystal |q 9628/1
step
goto 52.6,53.2
.talk 17423
..turnin 9628
..accept 9584
step
goto 49.0,71.9
.from Corrupted Treant##17352+
.get 6 Crystallized Bark |q 9574/1
step
goto 36.5,71.5
.click Nazzivus Monument Glyph##5992+
.get Nazzivus Monument Glyph##23859 |q 9567/1
step
goto 36.5,71.5
.from Tzerak##17528 |tip He is a felguard that walks around the whole Nazzivian area, so if he is not standing in this spot, you may need to search around for him.
.collect 1 Tzerak's Armor Plate##23900 |n
.' Click Tzerak's Armor Plate in your bags |use Tzerak's Armor Plate##23900
..accept 9594
step
goto 37.7,76.7
.kill 8 Nazzivus Satyr##17337+ |q 9594/1
.kill 8 Nazzivus Felsworn##17339+ |q 9594/2
.get 10 Irradiated Crystal Shard |q 9641/1
step
ding 14
step
'Hearth to Blood Watch |goto 55.7,59.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.1,58.0
.talk 17433
..turnin 9567
..turnin 9594
..accept 9569
step
goto 53.2,57.8
.talk 17434
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
goto 45.7,47.7
.' Use the Crystal Mining Pick on the Altered Bloodmyst Crystal |use Crystal Mining Pick##23876
.get Altered Crystal Sample |q 9584/1
step
goto 48.8,45.9
.from Sunhawk Spy##17604+
.get Sunhawk Missive##24399 |q 9779/1
step
goto 46.6,35.2
.from Elder Brown Bear##17348
.get 8 Elder Brown Bear Flank |q 9580/1
.from Mutated Constrictor##17344
.get 6 Thorny Constrictor Vine |q 9643/1
.' You can find more around [Bloodmyst Isle,37.5,44.5]
step
ding 15
step
goto 37.1,30.3
.from Deathclaw##17661
.get Deathclaw's Paw |q 9646/1
step
goto 54.7,54.0
.talk 17424
..accept 9632
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
goto 54.6,58.0
.talk 17703
..accept 9671 |instant
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
..turnin 9646
step
goto 57.7,53.9
.talk 17554
.' Fly to The Exodar |goto The Exodar,54.4,36.6,0.5 |noway |c
step
goto The Exodar,32.9,54.4
.talk 17468
..turnin 9698
..accept 9699
step
goto 54.5,36.3
.talk 17555
.' Fly to Blood Watch, Bloodmyst Isle |goto Bloodmyst Isle,57.6,54.0,0.5 |noway |c
step
goto Bloodmyst Isle,55.4,55.3
.talk 17684
..turnin 9699
..accept 9700
step
 goto 44.9,56.0
.kill 10 Royal Blue Flutterer##17350+ |q 9647/1
.' You can find more:
.' Around [Bloodmyst Isle,44.5,50.4]
.' Around [Bloodmyst Isle,47.3,32.2]
step
goto 52.5,22.3
.' Go to this spot
.' Confirm the Sun Portal Site |q 9700/1
.kill 5 Void Anomaly##17550+ |q 9700/2
step
goto 42.1,21.2
.talk 17421
..turnin 10063
..accept 9548
..accept 9549
step
goto 40.4,20.1
.click Clopper's Equipment##336 |tip It can spawn in all the little murloc camps along this shore, so you may need to search for it.
.get Clopper's Equipment |q 9548/1
step
goto 38.7,21.2
.from Blacksilt Seer##17330+
.get 3 Crude Murloc Idol |q 9549/1
.from Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+
.get 6 Crude Murloc Knife |q 9549/2
step
goto 42.1,21.2
.talk 17421
..turnin 9548
..turnin 9549
.collect 1 Weathered Treasure Map##23837 |n
.' Click the Weathered Treasure Map in your bags |use Weathered Treasure Map##23837
..accept 9550
step
ding 16
step
goto 41.9,29.5
.kill Zevrax##17494 |q 9569/1
step
goto 41.3,30.9
.' Use your Crystal Mining Pick next to the Axxarien Crystal |use Crystal Mining Pick##23877 |tip It looks like a huge red crystal in the ground.
.get Axxarien Crystal Sample |q 9585/1
step
goto 38.2,37.4
.kill 5 Axxarien Shadowstalker##17340+ |q 9569/3
.kill 5 Axxarien Hellcaller##17342+ |q 9569/2
.click Corrupted Crystal##6836+
.get 5 Corrupted Crystal |q 9569/4
step
'Hearth to Blood Watch |goto 55.7,59.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 61.2,41.9
.click Battered Ancient Book##6845
..turnin 9550
..accept 9557
step
goto 55.1,58.0
.talk 17433
..turnin 9569
step
goto 55.4,55.3
.talk 17684
..turnin 9700
step
goto 55.9,57.0
.talk 17642
..turnin 9647
step
goto 56.4,56.8
.talk 17663
..accept 9649
step
goto 54.7,53.9
.talk 17424
..turnin 9557
..accept 9561
step
goto 52.6,53.2
.talk 17423
..turnin 9585
..accept 10064
step
goto 55.2,59.2
.' Click the Mailbox and retrieve the letter from Admiral Odesyus
.collect 1 A Letter from the Admiral##24132 |n
.' Click A Letter from the Admiral in your bags |use A Letter from the Admiral##24132
..accept 9672
step
goto 53.3,57.7
.talk 17434
..accept 9578
step
goto 61.1,49.7
.click Mound of Dirt##49
..turnin 9561
step
goto 74.2,33.5
.talk 17674
..accept 9687
step
goto 59.9,35.7
.click Dragon Bone##6898+
.get 8 Dragon Bone |q 9687/1
.' You can find more around [Bloodmyst Isle,56.2,39.8]
step
ding 17
step
goto 74.2,33.5
.talk 17674
..turnin 9687
..accept 9688
step
goto 75.4,29.6
.kill 5 Veridian Whelp##17588+ |q 9688/1
.kill 5 Veridian Broodling##17589+ |q 9688/2
step
goto 74.2,33.5
.talk 17674
..turnin 9688
step
goto 79.2,22.6
.talk 17712
..turnin 9672
..accept 9674
step
goto 82.4,26.2
.kill 10 Bloodcursed Naga##17713+ |q 9674/1
step
goto 79.1,22.6
.talk 17712
..turnin 9674
..accept 9682
step
goto 85.7,14.3
.from Bloodcursed Voyager##17714+
.get 4 Bloodcursed Soul |q 9682/1
step
goto 79.1,22.6
.talk 17712
..turnin 9682
..accept 9683
step
goto 75.7,28.5
.click Ysera's Tear##6880+ |tip They are pretty rare, so you may need to search a little for them.
.get 2 Ysera's Tear |q 9649/1
step
goto 82.9,48.8 |n
.' Follow the path up |goto 82.9,48.8,0.5 |noway |c
step
goto 85.9,54.3
.click Statue of Queen Azshara##4853
.kill Atoph the Bloodcursed##17715 |q 9683/1
step
goto 79.1,22.6
.talk 17712
..turnin 9683
step
ding 18
step
'Hearth to Blood Watch |goto 55.7,59.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.4,56.8
.talk 17663
..turnin 9649
step
goto 53.2,57.0
.talk 17676
..accept 9669
step
goto 55.6,55.2
.talk 17843
..accept 9703
step
goto 55.5,55.4
.talk 17844
..accept 9753
step
goto 52.7,53.2
.talk 17658
..turnin 9753
..accept 9756
step
goto 54.4,54.3
.talk 17824
.' Tell him you're a prisoner and the draenei filth captured you as you exited the sun gate
.' Recover the Sunhawk Information |q 9756/1
step
goto 52.7,53.2
.talk 17658
..turnin 9756
..accept 9760
step
goto 37.5,61.2
.clicknpc Galaen's Corpse##17508
..turnin 9578
..accept 9579
.click Galaen's Journal##4431
..accept 9706
step
goto 39.6,58.9
.from Sunhawk Reclaimer##17606+
.get Galaen's Amulet |q 9579/1
.click Medical Supplies##6881+
.get 12 Medical Supplies |q 9703/1
step
goto 55.6,55.2
.talk 17843
..turnin 9703
..turnin 9706
..accept 9711
step
goto 55.5,55.4
.talk 17844
..accept 9748
step
goto 34.4,33.6
.' Use your Water Sample Flask at the bottom of the red waterfall |use Water Sample Flask##24318
.get Bloodmyst Water Sample |q 9748/1
step
goto 39.6,45.3
.' Use your Flare Gun on Matis the Cruel before you engage him |use Flare Gun##24278
.from Matis the Cruel##17664 |tip He patrols along this road so you may need to search for him
.' Matis the Cruel Captured |q 9711/1
step
goto 55.5,55.4
.talk 17844
..turnin 9748
..accept 9746
step
goto 55.6,55.2
.talk 17843
..turnin 9711
step
goto 53.3,57.7
.talk 17434
..turnin 9579
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
goto 30.8,46.9
.talk 17986
..turnin 9760
..accept 9761
..accept 10067
..accept 10066
step
goto 31.5,55.8
.kill 8 Mutated Tangler##17346+ |q 10066/1
.kill 10 Enraged Ravager##17527+ |q 10065/1
step
goto 19.5,53.9
.kill 8 Sunhawk Saboteur##17609+ |q 9761/1
.kill 8 Sunhawk Agent##17610+ |q 9761/2
step
goto 25.4,56.9
.kill 10 Sunhawk Pyromancer##17608+ |q 9746/1
.kill 10 Sunhawk Defender##17607+ |q 9746/2
step
goto 18.8,63.5
.kill 12 Void Critter##17887+ |q 9741/1 |tip They are underwater.
step
goto 30.8,46.9
.talk 17986
..turnin 9761
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
ding 19
step
goto 24.9,34.4
.talk 17686
..accept 9670
step
goto 22.9,37.5 |n
.' Follow the path up |goto 22.9,37.5,0.5 |noway |c
step
goto 18.2,37.5
.kill Zarakh##17683 |q 9669/3
.' As you walk up the path:
.from Webbed Creature##17680+
.' Free 5 Expedition Researchers |q 9670/1
|modelnpc Expedition Researcher##17681
step
goto 19.7,31.9
.kill 8 Myst Leecher##17523+ |q 9669/1
.kill 8 Myst Spinner##17522+ |q 9669/2
.from Webbed Creature##17680+
.' Free 5 Expedition Researchers |q 9670/1
|modelnpc Expedition Researcher##17681
step
goto Bloodmyst Isle,24.9,34.4
.talk 17686
..turnin 9670
step
goto 53.2,57.0
.talk 17676
..turnin 9669
step
goto 55.5,55.4
.talk 17844
..turnin 9741
step
ding 20
step
'Hearth to Blood Watch |goto 55.7,59.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,55.4
.talk 17844
..turnin 9746
..accept 9740
step
goto 19.5,62.5
.click Sunhawk Portal Controller##5811+
.' Destroy 4 Sunhawk Portal Controllers
.' Swim into the lake to 18.9,63.5
.click Sun Gate##6927
.' Destroy the Sun Gate |q 9740/1
step
goto 55.5,55.4
.talk 17844
..turnin 9740
step
goto 57.7,53.9
.talk 17554
.' Fly to The Exodar |goto The Exodar,54.4,36.6,0.5 |noway |c
step
goto Azuremyst Isle,24.2,54.3
.' Follow the big ramp up and outside to Azuremyst Isle
.talk 17614
..turnin 9632
step
goto Azuremyst Isle,20.4,54.2 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.5
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Teldrassil (1-11)\\Night Elf (1-11)",[[
author support@zygorguides.com
defaultfor NightElf
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)
startlevel 1
dynamic on
step
goto Shadowglen 45.6,74.6
.talk 2079
..accept 28713
step
goto 45.2,80.8
.kill 6 Young Nightsaber##2031+ |q 28713/1
step
goto 45.6,74.6
.talk 2079
..turnin 28713
..accept 28714
step
ding 2
step
goto 46.0,72.9
.talk 2077
..accept 28715
step
goto 36.9,78.2
.from Grell##1988+
.get 6 Fel Moss |q 28714/1
.click Melithar's Stolen Bag##323+
.get 5 Melithar's Stolen Bags |q 28715/1
.' You can find more around [32.0,72.6]
step
goto 46.3,73.5
.talk 2079
..turnin 28714
step
goto 46.0,72.9
.talk 2077
..turnin 28715
..accept 26841 |only NightElf Mage
..accept 3116 |only NightElf Warrior
..accept 3117 |only NightElf Hunter
..accept 3118 |only NightElf Rogue
..accept 3119 |only NightElf Priest
..accept 3120 |only NightElf Druid
..accept 31168 |only NightElf Monk
step
ding 3
step
goto 47.4,59.7
.talk 43006
..turnin 26841
..accept 26940
only NightElf Mage
step
goto 47.4,59.7
.' Use Frost Nova on the Training Dummy
.' Practice Frost Nova 2 times |q 26940/2
|modelnpc Training Dummy##44548
only NightElf Mage
step
goto 47.4,59.7
.talk 43006
..turnin 26940
..accept 28723
only NightElf Mage
step
goto 49.2,52.4
.talk 3593
..turnin 3116
..accept 26945
only NightElf Warrior
step
goto 47.4,59.7
.' Use Charge on the Training Dummy
.' Practice Charge |q 26945/2
|modelnpc Training Dummy##44548
only NightElf Warrior
step
goto 49.2,52.4
.talk 3593
..turnin 26945
..accept 28723
only NightElf Warrior
step
goto 49.2,60.6
.talk 3596
..turnin 3117
..accept 26947
only NightElf Hunter
step
goto 47.4,59.7
.' Use Steady Shot on the Training Dummies
.' Practice Steady Shot 5 times |q 26947/2
|modelnpc Training Dummy##44548
only NightElf Hunter
step
 goto 49.2,60.6
.talk 3596
..turnin 26947
..accept 28723
only NightElf Hunter
step
goto 49.2,53.2
.talk 3594
..turnin 3118
..accept 26946
only NightElf Rogue
step
goto 47.4,59.7
.' Use Sinister Strike on the Training Dummy to build up combo points and then Eviscerate.
.' Practice Eviscerate 3 times |q 26946/2
|modelnpc Training Dummy##44548
only NightElf Rogue
step
goto 49.2,53.2
.talk 3594
..turnin 26946
..accept 28723
only NightElf Rogue
step
goto 47.6,59.5
.talk 3595
..turnin 3119
..accept 26949
only NightElf Priest
step
goto 47.9,58.9
.' Use Shadow Word: Pain on the Training Dummy
.' Practice Shadow Word: Pain 5 times |q 26949/2
|modelnpc Training Dummy##44548
only NightElf Priest
step
goto 47.6,59.5
.talk 3595
..turnin 26949
..accept 28723
only NightElf Priest
step
goto 46.6,56.7
.talk 3597
..turnin 3120
..accept 26948
only NightElf Druid
step
goto 47.9,58.9
.' Use your Moonfire ability spell on the Training Dummy
.' Practice Moonfire |q 26948/2
|modelnpc Training Dummy##44548
only NightElf Druid
step
goto 46.6,56.7
.talk 3597
..turnin 26948
..accept 28723
only NightElf Druid
step
goto 48.7,52.5
.talk 63331
..turnin 31168
..accept 31169
only NightElf Monk
step
goto 47.4,59.7
.' Use Tiger Palm on the Training Dummy
.' Practice Tiger Palm |q 31169/2
|modelnpc Training Dummy##44548
only NightElf Monk
step
goto 48.7,52.5
.talk 63331
..turnin 31169
..accept 28723
only NightElf Monk
step
goto 42.5,50.6
.talk 49479
..turnin 28723
..accept 28724
step
goto 40.1,52.6
.click Moonpetal Lily##253+
.get 7 Moonpetal Lily |q 28724/1
step
goto 42.5,50.6
.talk 49479
..turnin 28724
..accept 28725
step
goto 38.8,29.8
.' Go to the entrance of this cave to make Tarindrella appear
.talk 49480
..turnin 28725
..accept 28726
step
goto 39.7,14.6
.kill 12 Webwood Spider##1986+ |q 28726/1
step
ding 4
step
'Next to you:
.talk 49480
..turnin 28726
..accept 28727
step
goto 38.7,9.5
.kill Githyiss the Vile##1994+ |q 28727/1
step
'Next to you:
.talk 49480
..turnin 28727
..accept 28728
step
goto 42.5,50.6
.talk 49479
..turnin 28728
..accept 28729
step
goto 50.3,33.7
.' Use your Crystal Phial while standing in the water |use Crystal Phial##5185
.get Filled Crystal Phial |q 28729/1
step
goto 42.5,50.6
.talk 49479
..turnin 28729
..accept 28730
step
.' Follow the ramp up |goto 42.1,63.6 <5 |c
step
goto 47.2,55.9
.talk 3514
..turnin 28730
..accept 28731
step
ding 5
step
goto 54.6,84.7
.talk 6780
..accept 2159
step
goto Teldrassil 59.4,49.2
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
.click Fel Cone##10405+
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
ding 6
step
goto 66.1,52.1
.click Tallonkai's Dresser##1568
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
.kill 7 Gnarlpine Mystic##7235+ |q 2459/1
step
goto 55.5,50.0
.talk 3567
..turnin 2459
step
ding 7
step
goto 53.6,47.2 |n
.' Follow this small path to the cave |goto 53.6,47.2,0.5 |noway |c
step
goto 54.5,46.0 |n
.' Enter the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 52.9,43.9
.' Follow the path to the right
.from Lord Melenas##2038
.get Melenas' Head |q 932/1
.' Use your Ireroot Seeds on Shadow Sprites |use Ireroot Seeds##46716
.' Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1
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
goto Teldrassil,55.6,51.7
.talk 34761
.' Tell her that you're ready to depart for Ban'ethil Barrow Den. |goto 45.7,50.5 |noway |c
step
goto 45.0,53.5
.talk 7317
..accept 2541
step
'Next to you:
.talk 34249
..' _Ask her_ where the Rune of Nesting is |tip You can ask her as many times as you need.
.' _Follow the green mist_
.click Chest of Nesting##10
.get Rune of Nesting |q 483/4
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' _Ask her_ where the Black Feather Quill is |tip You can ask her as many times as you need.
.' _Follow the green mist_
.click Chest of the Black Feather##10
.get Black Feather Quill |q 483/2
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' _Ask her_ where the Sapphire of Sky is |tip You can ask her as many times as you need.
.' _Follow the green mist_
.click Chest of the Sky##10
.get Sapphire of Sky |q 483/3
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' _Ask her_ where the Raven Claw Talisman is |tip You can ask her as many times as you need.
.' _Follow the green mist_
.click Chest of the Raven Claw##10
.get Raven Claw Talisman |q 483/1
.from Gnarlpine Shaman##2009+
.get Shaman Voodoo Charm |q 2541/1
step
'Next to you:
.talk 34249
..' _Ask her_ where the exit is |tip You can ask her as many times as you need.
.' _Follow the green mist_ until you see an area with 2 bridges |tip Don't actually leave the cave.
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
.kill 20 Ban'ethil Gnarlpine |q 13945/1
' |from Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+,
step
ding 8
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
.kill Ursal the Mauler##2039 |q 486/1
.kill 8 Gnarlpine Ambusher##2152 |q 487/1
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
.click Strange Fruited Plant##369
..accept 930
step
goto 59.7,60.4
.from Timberling##2022+
.get 6 Timberling Seed |q 918/1
.click Timberling Sprout##391+
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
.from Timberling Trampler##2027+, Timberling Mire Beast##2029+ |tip Follow the water north.
.get 5 Mossy Tumor |q 923/1
step
ding 10
step
goto 40.5,29.9
.' Use your Amethyst Phial while standing in the water |use Amethyst Phial##18152
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
.click Strange Fronded Plant##370
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
.click Sprouted Frond##267
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
ding 11
step
goto 40.7,69.3
.' Use the abilities on your hotbar to fight Bough of Corruption
.kill Bough of Corruption##34521 |q 14005/1
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
.click Hero's Call Board##10016
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
goto 55.4,88.4
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)
startlevel 11.58
dynamic on
step
goto Darkshore,51.8,18.0
.talk 32973
..turnin 28490 |only Dwarf,Gnome,Human
..turnin 26383 |only NightElf,Draenei
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
.kill 8 Vile Spray##32928 |q 13522/1
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13522
step
goto 51.8,18.0
.talk 32973
..turnin 13518
step
goto 51.8,18.1
.talk 32972
..accept 13520
step
goto 51.1,19.7
.talk 32977
..accept 13521
step
goto 52.4,18.8
.click Encrusted Clam##261+
.get 16 Encrusted Clam Muscle |q 13520/1
step
goto 53.4,19.5
.from Corrupted Tide Crawler##32935+
.get 4 Corrupted Tide Crawler Flesh |q 13521/1
step
goto 53.3,19.6
.click Buzzbox 413##356
..turnin 13521
..accept 13527
step
ding 12
step
goto 55.1,21.0
.clicknpc Decomposing Thistle Bear##32975
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
.click Buzzbox 723##356 |tip It's a metal box with gears on it, sitting on a hill.
..turnin 13528
..accept 13554
step
goto 51.2,19.6
.talk 32978
..accept 13529
step
goto 56.2,27.2 |n
.' Follow the path up |goto 56.2,27.2,0.5 |noway |c
step
goto 56.9,31.3 |n
.' Enter the cave |goto 56.9,31.3,0.5 |noway |c
step
goto 58.2,33.0
.' Go to the lower level of the cave
.kill Zenn Foulhoof##33020 |q 13529/1
.collect Corruptor's Master Key##44927 |n
.' Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
..accept 13557
step
goto 57.4,33.8
.' Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |model 676
.'Free 8 animals |q 13557/1
.click Disgusting Workbench##4391
..accept 13831
step
goto 57.0,33.2
.from Vile Corruptor##33022+, Vile Grell##33021+
.get 6 Foul Ichor |q 13554/1
.kill 8 Vile Grell##33021+ |q 13529/2
.' Click Secure Bear Cages and Secure Duskrat Cages |tip They look like metal cages all around inside the cave. |model 676
.' Free 8 Uncorrupted Animals |q 13557/1
step
'Hearth to Lor'danel |goto 51.0,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.1,19.7
.talk 32977
..turnin 13554
step
ding 13
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
.click The Final Flame of Bashal'Aran##5151+
.' Extinguish the Final Flame of Bashal'Aran |q 13562/1
step
goto 48.5,36.6
.kill Anaya Dawnrunner##33181 |q 13563/1
.get Anaya's Pendant |q 13563/2
step
goto 48.2,36.4
.kill 6 Cursed Highborne##33179+ |q 13561/1
.kill 6 Writhing Highborne##33180+ |q 13561/2
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
.clicknpc Moonstalker##33127+ |tip Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
.get 3 Moonstalker Whisker |q 13566/1
step
goto 44.1,40.8
.clicknpc Mottled Doe##33313+
.get 3 Tuft of Mottled Doe Hair |q 13566/2
step
goto 46.6,38.9
.click Hungry Thistle Bear##33978+
.get 3 Thistle Bear Fur |q 13566/3
step
goto 48.6,40.4
.kill Lady Janira##33207 |q 13565/1
step
goto 47.7,39.7
.from Darkscale Scout##33206+
.' Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
.' Call 6 Withered Ents |q 13565/2
.click Fuming Toadstool##329+
.get 6 Fuming Toadstool |q 13598/1
step
goto 43.0,39.0
.talk 33048
..turnin 13598
..turnin 13566
step
ding 14
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
.click Grovekeeper's Incense##8683
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
.click Decoy Bot Control Console##6424
.' As the robot, walk north underwater to get near a group of murlocs
.' Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
.kill 50 Scavenging Greymist Murlocs |q 13560/1
' |from Greymist Warrior##33277+,Greymist Tidehunter##33262+
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
.kill 10 Shatterspear Laborer##32861+ |q 13504/1
.click Highborne Relic##404+
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
ding 15
step
goto 58.9,19.4
.talk 32965
..accept 13507
step
goto 61.6,11.6
.kill 6 Horde Enforcer##32859+ |q 13507/1
.kill 6 Shatterspear Mystic##34248+ |q 13507/2
.' Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999 |tip They look like brown wooden crates around this area.
.' Burn 12 Shatterspear Armaments |q 13509/1
step
goto 63.8,6.0
.talk 33055
..turnin 13508
..accept 13511
step
goto 64.1,5.3
.kill Rit'ko##32970 |q 13511/1
.collect Shatterspear Torturer's Cage Key##45040 |q 13510 |future
step
goto 64.5,5.5
.click Shatterspear Cage##1787+
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
.kill Sheya Stormweaver##32869 |q 13512/2
step
goto 58.2,23.9
.kill Teegan Holloway##34033 |q 13844/1 |tip He's an undead that walks around in this broken tower.
step
goto 58.3,24.0
.click Charred Book##2530
.get Narassin's Tome |q 13844/2
step
goto 56.8,25.9
.' Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995 |tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
.kill Lorenth Thundercall##32868 |q 13512/1
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
ding 16
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
.' Click the Vengeful Protector to ride on it |invehicle |q 13514 |modelnpc 43742
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
.kill Jor'kil the Soulripper##32862 |q 13515/1 |tip Make sure to loot his corpse.
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
.kill High Cultist Azerynn##32899 |q 13519/1
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
.kill 10 Twilight Fanatic##32888 |q 13519/2
.click Twilight Plans##163
.get 6 Twilight Plans |q 13596/1
.' You can find more around [Darkshore,43.9,32.5]
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)
startlevel 16.80
dynamic on
step
goto Darkshore,42.5,45.2
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
.kill Windmaster Tzu-Tzu##32989 |q 13543/2
step
goto 38.5,41.9
.talk 33035
..' Coax Taldan's corpse to give up its spirit
.' Coax Taldan's spirit |q 13547/3
step
goto 41.0,41.4
.talk 33033 |tip She's laying on the ground on the bottom floor of this building.
..' Coax the spirit out of Sentinel Elissa Starbreeze's corpse
.' Coax Sentinel Elissa Starbreeze's spirit |q 13547/2
step
goto 40.8,41.5
.kill Cloudtamer Wildmane##32988 |q 13543/1
step
goto 39.3,38.9
.talk 33001 |tip He's laying on the ground inside this building.
..' Coax Thundris Windweaver's spirit
.' Coax Thundris Windweaver's spirit |q 13547/1
step
goto 39.1,38.3
.kill Skylord Braax##32990 |q 13543/3
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
.click Aetherion Ritual Orb##8552
.from Aetherion##33041
.get Aetherion's Essence |q 13558/2
step
goto 38.6,42.5
.talk 33232
..accept 13605
.' Follow her around and protect her
.' Escort Archaeologist Hollee to safety |q 13605/1
step
ding 17
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
goto 43.3,51.4 |n
.' Follow the path up |goto 43.3,51.4,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)
startlevel 17.47
dynamic on
step
goto Darkshore,43.7,53.4
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
.click Slain Wildkin Feather##2630+
.get 8 Slain Wildkin Feather |q 13578/1
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
.kill 8 Enraged Earth Elemental##33083 |q 13584/1
step
ding 18
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
.clicknpc Nightmare Portal##38430
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
.' Click Thessera to ride on her |model 32711
.' While flying, use the Emerald Barrage ability on your hotbar to do the following:
.kill Twilight Portal##34316+ |q 13588/1
.kill 12 Twilight Rider##34282+ |q 13588/2
step
'Use the Land Thessera ability on your hotbar
.' Thessera will take you back to the ground |outvehicle |q 13588
step
goto 43.7,53.5
.talk 33091
..turnin 13588
..accept 13902
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)
startlevel 18.55
dynamic on
step
goto Darkshore,44.4,75.5
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
.kill 6 Consumed Thistle Bear##34302+ |q 13881/2
step
goto 43.5,81.0
.talk 32967
..turnin 13525
..accept 13526
step
goto 44.0,81.6
.click Bear's Paw##7816+
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
.clicknpc Darkshore Wisp##34306 |tip Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
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
.' Click Jadefire Brazier to destroy them |model 8553
.' Destroy 8 Jadefire Brazier |q 13572/1
step
ding 19
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
.kill Sharax the Defiler##32996+ |q 13546/1
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
.click Glittering Shell##261
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
goto 37.7,82.8
.talk 34340
..turnin 13896
..accept 13893
..accept 13907
step
goto 37.7,82.9
.talk 34343
..accept 13911
.' Escort Prospector Remtravel |q 13911/1
step
goto 37.8,82.9
.talk 34342
..turnin 13911
..accept 13912
step
ding 20
step
goto 37.0,83.4
.click Mud-Crusted Ancient Disc##8763
.get Mud-Crusted Ancient Disc |q 13912/1
step
goto 36.4,83.6
.from Greymist Refugee##34339+, Greymist Oracle##2207+
.' Kill 10 Murloc Squatters |q 13907/1
step
goto 37.7,82.8
.talk 34340
..turnin 13907
..accept 13909
step
goto 37.8,82.9
.talk 34342
..turnin 13912
..accept 13918
step
goto 37.1,81.2
.click Greymist Debris##8688
.get 5 Salvageable Greymist Wreckage |q 13909/1
.' Use your Buried Artifact Detector on the beach |use Buried Artifact Detector##46388
.click Buried Debris that spawns |model 49
.collect 5 Ancient Device Fragment##46702 |n
.' Use an Ancient Device Fragment to combine them |use Ancient Device Fragment##46702
.get Ancient Slotted Device |q 13918/1
step
goto 37.7,82.8
.talk 34340
..turnin 13909
..accept 13910
step
goto 37.8,82.9
.talk 34342
..turnin 13918
step
goto 35.9,81.9
.' Use your Marvelous Mobile Murloc Manor Maker at the Greymist Murloc Build Site |use Marvelous Mobile Murloc Manor Maker##46385 |tip It looks like a white sign stuck in the ground on the beach.
.' Build the Greymist Murloc Home |q 13910/1
step
goto 37.7,82.8
.talk 34340
..turnin 13910
step
goto 45.3,75.1
.talk 34404
..turnin 13893
step
goto 45.4,74.9
.talk 33072
..accept 13895
step
goto 45.7,71.7
.talk 34446
..turnin 13895
step
goto 45.6,71.7
.talk 34498
..accept 13953
step
goto 45.3,75.1
.talk 34402
..turnin 13953
..accept 13899
step
goto 45.4,75.1
.talk 34403
..accept 13898
step
goto 33.4,83.7 |n
.' Enter the cave |goto 33.4,83.7,0.5 |noway |c
step
goto 32.3,85.4
.' Follow the path down to the end of the cave
.from Warlord Wrathspine##34423
.click Warlord Wrathspine##34423
..turnin 13899
..accept 13900
step
goto 32.5,84.0
.' Follow the path back up to the exit of the cave
.kill 8 Darkscale Myrmidon##33079+ |q 13898/1
step
goto 33.4,83.7 |n
.' Leave the cave |goto 33.4,83.7,0.5 |noway |c
step
goto 33.6,84.1 |n
.' Follow the path up |goto 33.6,84.1,0.5 |noway |c
step
goto 32.9,84.2
.from Darkscale Priestess##34415+
.' Prevent the Offering to Azshara |q 13900/1
step
goto 32.8,84.3
.talk 34422
..turnin 13900
..accept 13897
step
goto 40.3,83.9
.' Use your Horn of the Ancients on Avatar of Soggoth |use Horn of the Ancients##58365 |tip He's a big octopus looking giant.
.kill Avatar of Soggoth##34485 |q 13897/1
step
goto 45.3,75.1
.talk 34402
..turnin 13897
..accept 26408
step
goto 45.4,75.1
.talk 34403
..turnin 13898
step
ding 21
step
goto 46.2,95.1 |n
.' Go south to Ashenvale |goto Ashenvale |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (27-33)\\Stonetalon Mountains (27-33)
startlevel 21.10
dynamic on
step
goto Ashenvale,26.9,21.8
.talk 33187
..turnin 26408
..accept 13594
step
goto 26.8,22.0
.talk 33204
..accept 26473
step
goto 29.0,24.3
.talk 33182
..accept 13595
step
goto 32.2,23.4
.click Potion of Wildfire##237
.collect Bottle of Wildfire##44967 |q 13595
step
goto 32.7,21.5
.' Use your Bottle of Wildfire next to Bathran's corpse |use Bottle of Wildfire##44967
.' Burn Bathran's Corpse |q 13595/1
step
goto 32.3,21.4
' |from Forsaken Herbalist##3733+, Orc Overseer##3734+
.kill 10 Horde at Bathran's Haunt |q 13594/1
.click Bathran's Hair##8646+ |tip They look like piles of orange leaves on the ground around this area.
.get 8 Bathran's Hair |q 26473/1
step
goto 29.0,24.3
.talk 33182
..turnin 13595
step
goto 26.9,21.8
.talk 33187
..turnin 13594
..accept 13617
step
goto 26.8,22.0
.talk 33204
..turnin 26473
..accept 13623
step
goto 18.2,20.5
.talk 3846
..turnin 13617
..accept 26465
step
goto 18.2,20.4
.talk 3845
..accept 13602
step
goto 18.1,20.6
.talk 34374
.fpath Blackfathom Camp
step
goto 15.2,22.2
' |from Wrathtail Wave Rider##3713+, Wrathtail Sorceress##3717+
.kill 15 Wrathtail naga |q 13602/1
.click Ancient Statuette##406+
.get 10 Ancient Statuette |q 26465/1
step
goto 18.2,20.5
.talk 3846
..turnin 26465
..accept 26466
step
goto 18.2,20.4
.talk 3845
..turnin 13602
step
goto 6.7,13.3
.from Ruuzel##3943
.get Ring of Zoram |q 26466/1
step
goto 18.2,20.5
.talk 3846
..turnin 26466
step
goto 26.8,36.6
.talk 3847
..turnin 13623
..accept 13642
..accept 26463
step
goto 27.2,35.9
.talk 33276
..accept 13630
step
goto 27.2,35.6
.talk 11219
..accept 13632
step
goto 26.7,36.9
.talk 11806
..accept 13624
step
ding 22
step
goto 26.7,37.9
.' Destroy 3 Ashenvale Wrecker##33283+ |q 13624/1
.kill 10 Horde Invader##33334+ |q 13624/2
.' If your squad dies you can go back to Sentinel Onaeya and get replacements at [26.7,36.9]
step
goto 26.7,36.9
.talk 11806
..turnin 13624
..accept 13626
step
goto 26.3,37.7
.' If you have a pet, dismiss it
.' Equip your Cloak of Cenarius
.' Use your Cloak of Cenarius |use Cloak of Cenarius##45044
.' Wear the Cloak of Cenarius |havebuff Interface\Icons\INV_Misc_Cape_Naxxramas_02 |q 13626
step
goto 26.3,38.4
.clicknpc Feero Ironhand##2594
.get Feero's Holy Hammer |q 13626/1
step
goto 27.0,40.8
.' Right before you are at the top of the spiral ramp inside the tower, summon your pet again |tip You'll need your pet, if you have one, to help you fight the warlock who can see through your invisibility.
.clicknpc Delgren the Purifier##2531
.get The Purifier's Prayer Book |q 13626/2
step
'If you have a pet, dismiss it
.' Use your Cloak of Cenarius |use Cloak of Cenarius##45044
.' Wear the Cloak of Cenarius |havebuff Interface\Icons\INV_Misc_Cape_Naxxramas_02 |q 13626
step
goto 26.7,36.9
.talk 11806
..turnin 13626
step
goto 27.6,33.3
.' Don't forget to re-equip your Back armor, such as a cloak, if you have one.
.click Green Moonstone##6712
.' Deactivate the Green Moonstone |q 13630/2
step
goto 28.6,31.7
.click Red Moonstone##6711
.' Deactivate the Red Moonstone |q 13630/3
step
goto 30.3,31.4
.click Blue Moonstone##6710
.' Deactivate the Blue Moonstone |q 13630/1
step
goto 29.4,31.5
' |from Thistlefur Wise One##33389+, Thistlefur Warrior##33390+
.kill 10 Furbolg at the Ruins of Ordil'Aran |q 13632/1
step
goto 26.9,36.5
.talk 33276
..turnin 13630
step
goto 27.2,35.6
.talk 11219
..turnin 13632
step
goto 20.3,38.8
.talk 3891
..turnin 26463
..accept 26464
step
goto 20.2,38.8
.talk 33443
..accept 13644
step
goto 18.9,41.6
.' Use your Unbathed Concoction while standing in the light |use Unbathed Concoction##45065
.get Bathed Concoction |q 13642/1
step
goto 20.3,42.5
.kill Harbinger Aphotic##33444 |q 13644/1
step
goto 20.3,41.3
.from Tendril from Below##33419+
.get Glowing Gem |q 26464/1
step
goto 20.2,38.8
.talk 33443
..turnin 13644
step
goto 26.8,36.6
.talk 3847
..turnin 13642
..accept 26474
..turnin 26464
..accept 13645
step
goto 26.8,36.0
.talk 33445
..accept 13646
step
goto 26.8,36.0
.talk 33445
..' Tell her you would like to ride one of her nightsabers to Astranaar
.' Ride to Astranaar |goto 34.7,48.5,0.5 |noway |c
step
goto 34.8,48.5
.talk 33454
..turnin 13646
step
goto 34.4,48.0
.talk 4267
.fpath Astranaar
step
goto 34.9,49.8
.talk 4079
..accept 13849
step
goto 35.0,49.9
.talk 17106
..accept 26453
step
goto 36.6,49.6
.talk 3691
..turnin 13645
..accept 13867
step
goto 37.0,49.2
.talk 6738
.home Astranaar
step
goto 37.4,51.8
.talk 3894
..turnin 26474
..accept 26475
step
ding 23
step
goto 36.3,50.8
.' Use your Bucket of Water on the fires on Astranaar buildings |use Bucket of Water##46094
.' Extinguish 15 Astranaar Fires |q 13849/1
step
goto 34.9,49.8
.talk 4079
..turnin 13849
..accept 13853
step
goto 36.3,49.0
.' Click an Astranaar Thrower to control it |invehicle |q 13853 |modelnpc 34132
step
goto 35.6,49.7
.' Use the Throw Glaive ability on your hotbar to do the following:
.' Shoot down 15 Hellions and Wind Riders |q 13853/1 |tip They are flying above Astranaar.
step
'Click the red arrow on your hotbar to get out of the Astranaar Thrower |outvehicle |q 13853
step
goto 34.9,49.8
.talk 4079
..turnin 13853
step
goto 31.2,45.3
' |from Thistlefur Shaman##3924+, Thistlefur Avenger##3925+, Thistlefur Pathfinder##3926+
.kill 15 Thistlefur Village furbolgs killed |q 13867/1
.collect Troll Charm##46128 |n
.' Click the Troll Charm in your bags |use Troll Charm##46128
..accept 13868
step
goto 36.6,49.6
.talk 3691
..turnin 13867
..turnin 13868
..accept 13872
step
goto 36.4,49.8
.talk 34239
..turnin 13872
..accept 13874
step
goto 35.0,49.9
.talk 17106
..' Ask her to please loan you her elekk to ride to Forest Song
.' Ride to Forest Song |goto 86.9,44.8,0.5 |noway |c
step
goto 86.8,44.8
.talk 17291
..turnin 26453
..accept 26454
step
goto 87.1,43.5
.talk 3901
..accept 26467
step
goto 85.2,44.6
.talk 3848
..accept 26455
step
goto 84.4,44.6 |n
.' Follow the path up |goto 84.4,44.6,0.5 |noway |c
step
goto 85.1,43.5
.talk 22935
.fpath Forest Song
step
goto 78.3,44.8
.talk 3920
..turnin 26467
..accept 26468
step
goto 78.4,42.5
.from Geltharis##4619
.get Branch of Cenarius |q 26468/1
step
goto 80.0,47.3 |n
.' Follow the path down |goto 80.0,47.3,0.5 |noway |c
step
goto 81.3,49.2
.click Chalice of Elune##405
.get Chalice of Elune |q 26455/1
step
goto 80.8,49.3
.click Satyrnaar Fel Wood##1248+
.get 5 Satyrnaar Fel Wood |q 26454/1
step
goto 80.0,48.5 |n
.' Follow the path up |goto 80.0,48.5,0.5 |noway |c
step
goto 85.2,44.7
.talk 3848
..turnin 26455
step
goto 87.1,43.5
.talk 3901
..turnin 26468
..accept 26469
step
goto 86.5,43.6
.talk 33727
..accept 13683
step
goto 83.1,49.2 |n
.' Follow the path down |goto 83.1,49.2,0.5 |noway |c
step
goto 81.8,49.7
.from Bleakheart Hellcaller##3771+, Bleakheart Satyr##3765+, Bleakheart Trickster##3767+, Bleakheart Shadowstalker##3770+
.get 16 Satyr Horns |q 26469/1
.click Ritual Gem##5811+
.' Disturb 8 Ritual Gems |q 13683/1
step
goto 83.0,50.1 |n
.' Follow the path up |goto 83.0,50.1,0.5 |noway |c
step
goto 86.5,43.6
.talk 33727
..turnin 13683
step
goto 87.1,43.5
.talk 3901
..turnin 26469
step
ding 24
step
goto 84.1,62.7
.talk 17303
..accept 26444
step
goto 83.9,62.6
.talk 17287
..accept 26457
step
goto 83.8,63.1
.talk 17310
..turnin 26454
..accept 13869
..accept 26446
step
goto 90.9,58.1
.kill Overseer Gorthak##17304 |q 26457/1
step
goto 89.4,58.1
' |from Warsong Shaman##11683+, Warsong Grunt##11682+, Warsong Logger##11681+
.kill 12 Horde at the Warsong Lumber Camp |q 26457/2
.click Warsong Lumber Piles##1109
.get 10 Warsong Lumber |q 13869/1
step
goto 83.9,62.6
.talk 17287
..turnin 26457
..accept 13698
step
goto 83.8,63.1
.talk 17310
..turnin 13869
step
goto 86.9,61.3
.click Warsong Shredder##33706
.' Control a Warsong Shredder |invehicle |c |q 13698
step
goto 86.8,60.8
.' Use the Warsong Shredder Blade ability on your hotbar next to Horde Explosives |tip They look like barrels on the ground around this area.
.' Destroy 8 Horde Explosives |q 13698/1
step
goto 84.0,62.6
.' Don't get out of the Warsong Shredder
.' Go to this spot
.' Return the Warsong Shredder |q 13698/2
step
goto 83.9,62.6
.talk 17287
..turnin 13698
step
goto 83.7,66.3
' |from Roaming Felguard##6115+, Searing Infernal##6073+, Mannoroc Lasher##11697+
.kill 15 Demons |q 26444/1
.collect Diabolical Plans##23777 |n
.' Click the Diabolical Plans in your bags |use Diabolical Plans##23777
..accept 26443
.click Fertile Dirt Mound##4951
.' Plant 8 Tree Seedlings |q 26446/1
step
goto 83.8,63.1
.talk 17310
..turnin 26446
..accept 13766
step
goto 84.1,62.7
.talk 17303
..turnin 26443
..accept 26445
..turnin 26444
step
goto 84.2,71.9 |n
.' Follow the path up |goto 84.2,71.9,0.5 |noway |c
step
goto 89.7,76.7
.from Gorgannon##17300
.get Gorgannon's Flaming Blade |q 26445/1
.' Use Gnarl's Bough next to Demon Gates to close them |use Gnarl's Bough##45545 |tip They look like green symbols on the ground with green smoke rising out of them around this area.
step
goto 86.8,79.0 |n
.' Use Gnarl's Bough next to Demon Gates to close them |use Gnarl's Bough##45545 |tip They look like green symbols on the ground with green smoke rising out of them around this area.
.' Follow the path down |goto 86.8,79.0,0.5 |noway |c
step
goto 83.7,77.4 |n
.' Use Gnarl's Bough next to Demon Gates to close them |use Gnarl's Bough##45545 |tip They look like green symbols on the ground with green smoke rising out of them around this area.
.' Follow the path west |goto 83.7,77.4,0.5 |noway |c
step
goto 82.9,78.0 |n
.' Use Gnarl's Bough next to Demon Gates to close them |use Gnarl's Bough##45545 |tip They look like green symbols on the ground with green smoke rising out of them around this area.
.' Follow the path up |goto 82.9,78.0,0.5 |noway |c
step
goto 79.4,81.0
.' Use Gnarl's Bough next to Demon Gates |use Gnarl's Bough##45545 |tip They look like green symbols on the ground with green smoke rising out of them around this area.
.' Close 10 Demon Gates |q 13766/1
step
goto 78.3,81.7 |n
.' Enter the cave |goto 78.3,81.7,0.5 |noway |c
step
goto 78.5,83.9
.' Follow the path down, then straight across a bridge
.from Diathorus the Seeker##6072
.get Seeker's Fel Spear |q 26445/2
step
'Hearth to Astranaar |goto 37.0,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 34.4,48.0
.talk 4267
.' Fly to Forest Song, Ashenvale |goto 85.0,43.5,0.5 |noway |c
step
goto 84.1,62.7
.talk 17303
..turnin 26445
step
goto 83.8,63.1
.talk 17310
..turnin 13766
..accept 13792
step
ding 25
step
goto 76.9,67.9 |n
.' Follow the path southwest |goto 76.9,67.9,0.5 |noway |c
step
goto 74.7,76.4 |n
.' Follow the path up |goto 74.7,76.4,0.5 |noway |c
step
goto 75.6,75.7
.talk 33777
..turnin 13792
..accept 26472
..accept 13796
step
goto 76.0,75.4 |n
.' Enter the cave |goto 76.0,75.4,0.5 |noway |c
step
goto 77.1,74.0
.kill Taneel Darkwood##3940 |q 26472/1
step
goto 77.2,74.7 |n
.' Follow the path down |goto 77.2,74.7,0.5 |noway |c
step
goto 78.1,72.8
.' Follow the path of green jewels on the ground
.kill Uthil Mooncall##3941 |q 26472/2
step
goto 77.1,74.2 |n
.' Follow the path down |goto 77.1,74.2,0.5 |noway |c
step
'Inside this cave:
.from Severed Keeper##3803+, Severed Druid##3799+
.collect 7 Untainted Spirit##45571 |n
.' Use your Untainted Spirits |use Untainted Spirit##45571
.collect Power of Nature##45572 |q 13796
step
goto 75.5,74.2
.' Follow the path of green jewels on the ground
.click The Forest Heart##7918
.get The Forest Heart |q 13796/1
step
goto 75.4,73.8 |n
.' Follow the path through the tunnel and over to the small balcony |goto 75.4,73.8,0.5 |noway |c
step
goto 75.1,74.2
.' Follow the path of green jewels on the ground
.kill Mavoris Cloudsbreak##3942 |q 26472/3
step
goto 75.9,73.3 |n
.' Jump down and follow this path up to the exit of the cave |goto 75.9,73.3,0.5 |noway |c
step
goto 76.0,75.4 |n
.' Follow the path up using the green jewels on the ground
.' Leave the cave |goto 76.0,75.4,0.5 |noway |c
step
goto 75.6,75.7
.talk 33777
..turnin 26472
step
goto 77.2,67.1 |n
.' Go to the road |goto 77.2,67.1,0.5 |noway |c
step
goto 83.8,63.1
.talk 17310
..turnin 13796
step
goto 85.1,43.5
.talk 22935
.' Fly to Astranaar, Ashenvale |goto 34.5,48.0,0.5 |noway |c
step
goto 44.2,55.9 |n
.' Follow this path north |goto 44.2,55.9,0.5 |noway |c
step
goto 44.1,45.4 |n
.' Follow the path up |goto 44.1,45.4,0.5 |noway |c
step
goto 46.0,47.3
.click Soot-Covered Elune's Tear##6421
.get Elune's Tear |q 26475/1
step
goto 42.7,45.9 |n
.' Follow this path |goto 42.7,45.9,0.5 |noway |c
step
goto 38.9,39.7 |n
.' Follow this path north |goto 38.9,39.7,0.5 |noway |c
step
goto 37.5,32.1 |n
.' Follow the path up |goto 37.5,32.1,0.5 |noway |c
step
goto 38.0,30.0
.talk 34251
..accept 13876
step
goto 38.3,30.6 |n
.' Enter the cave |goto 38.3,30.6,0.5 |noway |c
step
goto 40.2,32.1 |n
.' Follow the path down |goto 40.2,32.1,0.5 |noway |c
step
goto 41.7,35.7
.from Dal Bloodclaw##3987
.get Bloodclaw's Collection |q 13876/1
step
goto 39.9,32.0
.click Troll Chest##2450+
.get 8 Troll Charm |q 13874/1
step
goto 38.3,30.6 |n
.' Leave the cave |goto 38.3,30.6,0.5 |noway |c
step
goto 38.0,30.1
.talk 34251
..turnin 13876
step
'Hearth to Astranaar |goto 37.0,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 36.4,49.8
.talk 34239
..turnin 13874
..accept 13877
step
goto 37.4,51.8
.talk 3894
..turnin 26475
..accept 13919
step
goto 52.1,56.5
.talk 34283
..turnin 13877
step
goto 53.7,46.0
.' Use Elune's Tear while standing in the water |use Elune's Tear##46389
.' Cleanse Elune's Tear |q 13919/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 13919
..accept 13921
step
goto 52.1,56.7
.talk 34292
..accept 13884
step
goto 52.3,56.5
.talk 34290
..accept 13880
step
goto 51.8,54.7
.kill 10 Lava Rager##34314+ |q 13884/1
.' Use your Gift of the Earth next to Lava Fissures |use Gift of the Earth##46352 |tip They look like piles of dirt on the ground around this area.
.' Fill 8 Lava Fissures |q 13880/1
step
goto 52.3,56.5
.talk 34290
..turnin 13880
step
goto 52.1,56.7
.talk 34292
..turnin 13884
step
goto 52.3,56.8
.talk 34289
..accept 13886
step
ding 26
step
goto 52.3,56.8
.talk 34289
..' Tell him you are ready to be one with the whirling vortex and defeat Lord Magmathar
.' Use the abilities on your hotbar to fight Lord Magmathar |tip Use your Extinguish Flames ability after you get the fire debuff to dispell it.
.kill Lord Magmathar##34295 |q 13886/1
step
goto 52.1,56.5
.talk 34283
..turnin 13886
step
goto 59.1,60.0
.talk 34335
..turnin 13921
..accept 13922
step
goto 59.0,58.8
.talk 3880
..accept 13928
step
goto 58.8,57.5
.click Laughing Sister##2723+
.get 10 Laughing Sister's Corpse |q 13928/1
step
goto 62.3,51.1
.talk 34377
..turnin 13928
..accept 13935
step
goto 62.3,51.1
.talk 34377
..' Tell her you're ready to invoke the shade of Shadumbra
.' Become the Shade of Shadumbra |invehicle |c |q 13935
step
goto 62.4,50.2
.' Use the abilities on your hotbar to fight the Horde enemies
.' Destroy 50 Warsong Enemies |q 13935/1
.' To recover your health, go to the moonwell at the bottom of the big tree at [62.1,51.0] |tip You can only heal if you are not in combat.  If you are in combat, it won't heal you.
step
'Click the red arrow on your hotbar |outvehicle |c |q 13935
step
goto 64.7,53.0 |n
.' Follow the path up |goto 64.7,53.0,0.5 |noway |c
step
goto 66.3,53.8
.from Felmusk Satyr##3758+, Felmusk Felsworn##3762+, Felmusk Shadowstalker##3763+
.get 5 Fallen Moonstone |q 13922/1
step
goto 65.8,52.5 |n
.' Follow the path down |goto 65.8,52.5,0.5 |noway |c
step
goto 60.6,59.0 |n
.' Follow the path up |goto 60.6,59.0,0.5 |noway |c
step
goto 59.1,60.0
.talk 34335
..turnin 13922
..accept 13924
step
goto 59.0,58.8
.talk 3880
..turnin 13935
..accept 26456
step
goto 64.5,71.6 |n
.' Follow the path south |goto 64.5,71.6,0.5 |noway |c
step
goto 61.9,83.9
.talk 14733
..turnin 26456
step
'Hearth to Astranaar |goto 37.0,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 36.6,49.6
.talk 3691
..accept 26476
step
goto 37.4,51.8
.talk 3894
..turnin 13924
step
goto 58.2,60.5 |n
.' Follow the path up |goto Ashenvale,58.2,60.5,0.5 |noway |c
step
goto 59.1,59.7
.talk 3916
..turnin 26476
..accept 26477
step
goto 59.7,59.6 |n
.' Follow the path down |goto 59.7,59.6,0.5 |noway |c
step
goto 54.9,34.3
.from Withered Ancient##3919+, Crazed Ancient##3834+
.collect Wooden Key##5475 |q 26477
step
goto 54.5,36.9 |n
.' Enter the tunnel |goto 54.5,36.9,0.5 |noway |c
step
goto 55.0,40.7
.click Worn Chest##10
.get Iron Shaft |q 26477/1
step
goto 55.8,39.0 |n
.' Jump down to the main road here |goto 55.8,39.0,0.5 |noway |c
step
goto 60.6,59.0 |n
.' Follow the path up |goto 60.6,59.0,0.5 |noway |c
step
goto 59.1,59.7
.talk 3916
..turnin 26477
..accept 26478
step
goto 61.0,64.6 |n
.' Follow the path down |goto 61.0,64.6,0.5 |noway |c
step
goto 62.5,60.3
.' If you have a pet, dismiss it
.' Walk into the cave and use Shael'dryn's Playing Possum Technique when Oso Bramblescar attacks you |use Shael'dryn's Playing Possum Technique##46720
.' Wait for Oso Bramblescar to go outside the cave, then do the following:
.click Oso's Chest##41
.get Iron Pommel |q 26478/1
step
goto 61.7,63.2 |n
.' Avoid Oso Bramblescar as you leave
.' Use Shael'dryn's Playing Possum Technique if you get attacked |use Shael'dryn's Playing Possum Technique##46720
.' Follow the path up |goto 61.7,63.2,0.5 |noway |c
step
goto 58.2,60.4 |n
.' Follow the path up |goto 58.2,60.4,0.5 |noway |c
step
goto 59.1,59.6
.talk 3916
..turnin 26478
..accept 26479
step
goto 36.6,49.6
.talk 3691
..turnin 26479
..accept 26480
step
goto 35.8,49.1
.talk 3996
..accept 13965
step
goto 34.9,49.8
.talk 4079
..accept 13964
step
goto 25.4,46.9 |n
.' Follow the path southwest |goto 25.4,46.9,0.5 |noway |c
step
goto 17.9,49.5
.talk 24739
..turnin 13965
..accept 13976
step
goto 19.1,58.9 |n
.' Follow the path up |goto 19.1,58.9,0.5 |noway |c
step
goto 18.0,60.0
.talk 3698
..turnin 13976
..accept 13982
.' Kaliva will attack you
.from Kaliva##34602
.get Heart of Kaliva |q 13982/1
step
goto 18.0,60.0
.talk 3698
..turnin 13982
..accept 13985
step
ding 27
step
goto 21.4,59.2
' |from Lesser Felguard##3772+, Felslayer##3774+
.kill 12 Demons at Fire Scar Shrine |q 13985/1
step
goto 21.5,59.2 |n
.' Leave Fire Scar Shrine |goto 21.5,59.2,0.5 |noway |c
step
goto 22.2,52.9
.talk 34604
..turnin 13985
..accept 13987
step
goto 22.5,52.5
.kill 30 Demonic Invader##34609+ |q 13987/1
step
goto 22.3,52.9
.talk 34604
..turnin 13987
step
goto 22.3,50.1 |n
.' Follow the path up to the dirt path |goto 22.3,50.1,0.5 |noway |c
step
goto 26.2,46.4 |n
.' Follow the path to the main road |goto 26.2,46.4,0.5 |noway |c
step
goto 37.8,57.7 |n
.' Follow the path south |goto 37.8,57.7,0.5 |noway |c
step
goto 35.6,71.5
.talk 3885
..turnin 13964
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (27-33)\\Stonetalon Mountains (27-33)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (33-35)
startlevel 27.47
dynamic on
step
goto Ashenvale,35.4,71.1
.talk 40895
..accept 25607
step
goto 35.1,71.6
.talk 34354
..accept 13979
..accept 13913
step
goto 35.0,72.1
.talk 34378
.fpath Stardust Spire
step
goto 35.6,71.5
.talk 3885
..accept 26470
step
goto 43.0,63.7
.from Painmaster Thundrak##39096 |tip He rides around on this road on a wagon with a kodo pulling it.
.' Free Boog and Minx |q 13913/1
step
goto 46.3,61.1 |n
.' Start climbing the big metal machine here |goto 46.3,61.1,0.3 |noway |c
step
goto 46.2,61.6
.from Chief Bombgineer Sploder##34591
.get Sploder's Head |q 13979/1
step
goto 46.2,61.3
.' Go to the top of the big metal machine
.click The Bomb##8936
..accept 13981
step
goto 46.0,62.2
.from Goblin Technician##34590+
.get 8 Filthy Goblin Technology |q 25607/1
step
goto 48.2,69.8
.kill Tideress##12759 |q 26470/2
step
goto 50.3,70.5
.kill 12 Befouled Water Elemental##3917+ |q 26470/1
step
goto 53.1,71.4 |n
.' Get out of the water here |goto 53.1,71.4,0.5 |noway |c
step
goto 54.1,72.9 |n
.' Follow the path up |goto 54.1,72.9,0.5 |noway |c
step
goto 51.4,75.1
.' Go to this spot
.' Use Dartol's Rod |use Dartol's Rod##46739
.' Transform into a furbolg |havebuff Interface\Icons\INV_Misc_MonsterClaw_04 |q 26480
step
goto 50.9,75.1
.talk 3897
..turnin 26480
step
goto 50.9,75.1
.talk 3897
..accept 13989
only if completedq(26480)
step
goto 51.9,74.5 |n
.' Follow the path down |goto 51.9,74.5,0.5 |noway |c
step
goto 56.4,63.5
.' Use your Bloodtooth Banner on this hill |use Bloodtooth Banner##46777
.' Protect the Bloodtooth Banner until Chief Murgut appears
.kill Chief Murgut##12918 |q 13989/1
step
goto 57.7,67.2 |n
.' Follow the path southwest |goto 57.7,67.2,0.5 |noway |c
step
goto 54.1,73.0 |n
.' Follow the path up |goto 54.1,73.0,0.5 |noway |c
step
goto 50.9,75.1
.talk 3897
..turnin 13989
step
goto 50.9,75.1
.talk 3897
..accept 26481
only if completedq(13989)
step
goto 54.2,74.2 |n
.' Follow the path south |goto 54.2,74.2,0.5 |noway |c
step
goto 55.3,76.9 |n
.' Follow the path up |goto 55.3,76.9,0.5 |noway |c
step
goto 54.8,79.6
.from Ran Bloodtooth##3696
.get Ran Bloodtooth's Skull |q 26481/1
step
goto 55.2,77.5 |n
.' Follow the path down |goto 55.2,77.5,0.5 |noway |c
step
goto 53.8,73.9 |n
.' Follow the path up |goto 53.8,73.9,0.5 |noway |c
step
goto 50.9,75.1
.talk 3897
..turnin 26481
step
goto 50.9,75.1
.talk 3897
..accept 26482
only if completedq(26481)
step
goto 52.1,74.1 |n
.' Jump down into the water |goto 52.1,74.1,0.5 |noway |c
step
goto 51.4,67.8 |n
.' Swim across the lake to the other side |goto 51.4,67.8,0.5 |noway |c
step
goto 50.2,60.6
.' Go to this spot and kill the Horde enemy guarding the furbolg cage
.' Use Dartol's Rod |use Dartol's Rod##46781
.' Transform into a furbolg |havebuff Interface\Icons\INV_Misc_MonsterClaw_04 |q 26482
step
goto 50.0,59.7
.talk 34618
..' Tell him rise up against the orcs!
.' Start the Furbolg Uprising |q 26482/1
step
'Hearth to Astranaar |goto 37.0,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 36.6,49.6
.talk 3691
..turnin 26482
step
ding 28
step
goto 34.4,48.0
.talk 4267
.' Fly to Stardust Spire, Ashenvale |goto 35.1,72.0,0.5 |noway |c
only if completedq(26482)
step
goto 35.1,71.5
.talk 34354
..turnin 13979
..turnin 13913
..turnin 13981
step
goto 35.4,71.1
.talk 40895
..turnin 25607
step
goto 35.3,71.2
.talk 40894
..accept 25613
step
goto 35.6,71.5
.talk 3885
..turnin 26470
step
goto 35.3,72.9 |n
.' Follow the path up into Stonetalon Mountains |goto 35.3,72.9,0.5 |noway |c
step
goto Stonetalon Mountains,71.8,45.7
.talk 39256
..turnin 25613
..accept 25614
step
goto 71.8,45.8
.click Sniper Cannon##27770
.' Use your Sniper Shot ability to shoot at the Warsong War Riders |tip They are wind riders flying around in the sky to the southeast.
.kill 8 Warsong Wing Commander##40942+ |q 25614/1
step
'Click the red arrow on your hotbar |outvehicle |c |q 25614
step
goto 71.8,45.7
.talk 39256
..turnin 25614
..accept 25615
step
goto 71.7,44.5 |n
.' Follow the path up into Ashenvale |goto 71.7,44.5,0.5 |noway |c
step
goto Ashenvale,35.1,71.6
.talk 34354
..turnin 25615
..accept 25616
step
goto 35.4,71.1
.talk 40895
..accept 25621
step
'Go southeast to Stonetalon Mountains |goto Stonetalon Mountains |noway |c
step
goto Stonetalon Mountains,73.3,46.6
.' Go to this spot
.' Test the Gnomecoder |q 25621/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25621
..accept 25622
step
'A Krom'gar Incinerator will attack you
.from Krom'gar Incinerator##34353 |tip Don't try to kill him regularly.  Attack the Oil Canister on his back.  Destroying his Oil Canister will kill him much easier.
.collect Warsong Flame Thrower##55152 |q 25622
step
goto 73.6,48.5
.kill 10 Krom'gar Incinerator##34353+ |q 25616/1 |tip Don't try to kill them regularly.  Attack the Oil Canister on their backs.  Destroying their Oil Canisters will kill them much easier.
.' Use your Warsong Flame Thrower next to Warsong Stockpiles |use Warsong Flame Thrower##55152 |tip They look like wooden crates on the ground around this area.
.' Incinerate 8 Warsong Stockpiles |q 25622/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25622
..accept 25640
step
goto 72.5,61.5
.talk 40973
..turnin 25616
step
goto 72.5,61.5
.talk 40879
..turnin 25640
..accept 25642
step
goto 72.5,61.5
.talk 40973
..accept 25646
step
goto 72.2,61.6 |n
.' Enter the mine |goto 72.2,61.6,0.5 |noway |c
step
goto 72.2,61.9
.kill 6 Windshear Overseer##40905+ |q 25646/1
.collect Illegible Orc Letter##55181 |n
.' Click the Illegible Orc Letter in your bags |use Illegible Orc Letter##55181
..accept 25647
.from Krom'gar Peon##40904+
.' Click Azure Iron Ore they drop |model 312
.get 10 Azure Iron Ore |q 25642/1
step
goto 72.2,61.6 |n
.' Leave the mine |goto 72.2,61.6,0.5 |noway |c
step
goto 72.5,61.5
.talk 40973
..turnin 25646
step
goto 72.5,61.5
.talk 40879
..turnin 25642
..turnin 25647
..accept 25649
step
goto 72.2,61.6 |n
.' Enter the mine |goto 72.2,61.6,0.5 |noway |c
step
goto 71.3,62.8 |n
.' Follow this path in the cave |goto 71.3,62.8,0.5 |noway |c
step
goto 70.8,63.0
.talk 40881
..turnin 25649
..accept 25650
step
goto 72.2,61.6 |n
.' Leave the mine |goto 72.2,61.6,0.5 |noway |c
step
goto 72.5,61.5
.talk 40879
..turnin 25650
..accept 25652
step
ding 29
step
goto 73.3,61.1
.click Rope Ladder##32266
.' Fight the mobs that attack you as you ride the hot air balloon
.' Divert Krom'gar's Hot Air Balloon |q 25652/1
step
goto 60.1,55.6 |n
.' Follow the path up |goto 60.1,55.6,0.5 |noway |c
step
goto 58.8,54.3
.talk 35137
.fpath Windshear Hold
step
goto 59.6,56.9
.talk 40896
..turnin 25652
..accept 25662
..accept 25671 |only if rep ('Darnassus') < Honored
step
goto 59.0,56.4
.talk 40898
.home Fallowmere Inn
step
goto 58.5,55.2
.talk 40908
..accept 25673
step
goto 59.9,64.2
.click Mechanized Air##9523
.get Mechanized Air |q 25673/4
step
goto 63.1,56.7
.click Mechanized Fire##9519
.get Mechanized Fire |q 25673/2
step
goto 66.2,50.0
.click Mechanized Ice##9521
.get Mechanized Ice |q 25673/3
step
goto 64.5,51.6
.from Krom'gar Infantry##41062+
.collect 5 Horde Cage Key##55200 |n
.click Horde Cage##7469
.' Free 5 Captured Huntresses |q 25662/1
step
goto 69.3,46.2 |n
.' Follow the path up |goto 69.3,46.2,0.5 |noway |c
step
goto 64.6,43.8
.' Go this spot
.' You will automatically accept a quest
..accept 25729
step
goto 63.0,45.6
.kill Gerenzo Wrenchwhistle##4202 |q 25729/1
.click BD-816 War Apparatus##9504
.get BD-816 War Apparatus |q 25673/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25729
step
goto 66.2,54.5
.talk 41071
..turnin 25662
..accept 25669
step
goto 66.1,54.6
.from Warlord Roktrog##41063
.collect Huntress Illiona's Cage Key##55213 |q 25669
step
goto 66.2,54.5
.click Huntress Illiona's Cage##7469
.' Free Huntress Illiona |q 25669/1
step
goto 65.7,54.9
.from Krom'gar Infantry##41062+
.' Slay 20 Horde Soldiers |q 25671/1
only if rep ('Darnassus') < Honored
step
goto 60.5,55.8 |n
.' Follow the path up |goto 60.5,55.8,0.5 |noway |c
step
goto 59.6,56.9
.talk 40896
..turnin 25669
..turnin 25671 |only if rep ('Darnassus') < Honored
step
goto 59.5,57.0
.talk 40897
..accept 25739
step
goto 59.0,56.4
.talk 40898
..accept 25741
step
goto 58.7,56.0
.talk 40899
..accept 25766
step
goto 58.7,56.0
.talk 40900
..accept 25767
step
goto 58.5,55.2
.talk 40908
..turnin 25673
..accept 25728
step
goto 61.2,55.9
.' Use the abilities on your hotbar on Goblin Technicians and Goblin Harvesters
.kill 20 Goblin Technician##35333+ |q 25728/1
.kill 5 Goblin Harvester##35204+ |q 25728/2
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 25728
step
goto 60.5,55.8 |n
.' Follow the path up |goto 60.5,55.8,0.5 |noway |c
step
goto 59.6,56.9
.talk 40896
..turnin 25728
step
goto 59.5,60.3 |n
.' Follow the path |goto 59.5,60.3,0.5 |noway |c
step
goto 57.9,69.4
.kill Queen Silith##41185 |q 25739/1 |tip She's a huge green spider that walks around this area, so you may need to search for her.
step
goto 57.5,69.7
.from Deepmoss Creeper##4005+, Deepmoss Venomspitter##4007+
.get 10 Deepmoss Venom Sac |q 25741/1
step
ding 30
step
goto 55.3,64.3 |n
.' Follow the road southwest |goto 55.3,64.3,0.5 |noway |c
step
goto 48.0,74.7
.' Use your Highborne Prison on Highborne mobs |use Highborne Prison##55972
.' Bind 5 Highborne Spirits |q 25766/1
.click Eldre'thar Relic##405+
.get 8 Eldre'thar Relic |q 25767/1
step
'Hearth to Fallowmere Inn |goto 59.0,56.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.0,56.4
.talk 40898
..turnin 25741
step
goto 59.5,57.0
.talk 40897
..turnin 25739
..accept 25765
step
goto 58.7,56.0
.talk 40899
..turnin 25766
step
goto 58.7,56.0
.talk 40900
..turnin 25767
step
goto 58.7,56.0
.talk 40899
..accept 25769
step
goto 59.6,56.9
.talk 40896
..turnin 25769
..accept 25768
step
goto 57.9,65.6 |n
.' Follow this road northwest |goto Stonetalon Mountains,57.9,65.6,0.5 |noway |c
step
goto 48.6,51.5
.talk 41240
.fpath Mirkfallon Post
step
goto 48.3,51.9
.talk 41233
..turnin 25768
..accept 25875
step
goto 48.5,52.0
.talk 41441
..accept 25878
..accept 25879
step
goto 49.9,47.8
.from Goblin Pump Controller##41437
.collect Goblin Pump Controller##56140 |n
.' Use your Goblin Pump Controllers next to Oil Pumps |use Goblin Pump Controller##56140 |tip They look like red and gray metal machines on the shore of the lake around this area.
.' Destroy 4 Oil Pumps |q 25878/1
step
goto 53.7,42.4
.talk 41434
..turnin 25875
..accept 25876
step
goto 51.0,44.6
.click Krom'gar Log Book##6893
.get Krom'gar Log Book |q 25876/1
step
goto 53.7,42.4
.talk 41434
..turnin 25876
..accept 25877
step
goto 51.8,42.9
.kill 10 Lumbering Oaf##40906+ |q 25879/1
step
goto 48.5,52.0
.talk 41441
..turnin 25878
..turnin 25879
step
goto 48.3,51.9
.talk 41233
..turnin 25877
..accept 25880
step
goto 40.1,32.0
.talk 4407
.fpath Thal'darah Overlook
step
goto 39.4,32.8
.talk 41491
.home Thal'darah Overlook
step
goto 40.0,33.5
.talk 41482
..turnin 25880
..accept 25889
step
'Use Thal'darah's Hippogryph Whistle |use Thal'darah's Hippogryph Whistle##56168
.' You will start riding a hippogryph |invehicle |c |q 25889
step
goto 39.1,45.1
.' Use your Rescue Young Druid ability on your hotbar to next to Helpless Young Druids |tip They run around on the ground around this area.
.' When you have a Helpless Young Druid, fly to [40.0,31.9]
.' Use your Drop Off Young Druid ability on your hotbar in this spot
.' Rescue 5 Helpless Young Druids |q 25889/1
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 25889
step
goto 40.0,33.5
.talk 41482
..turnin 25889
..accept 25891
step
'Watch the cutscene
.' Make a Last Ditch Effort |q 25891/1
step
goto 40.0,33.5
.talk 41482
..turnin 25891
..accept 25925
step
goto 39.6,30.7
.talk 41488
..accept 25913
..accept 25914
step
goto 39.6,30.7
.talk 41486
..accept 25912
step
goto 38.9,34.6 |n
.' Follow the path down |goto 38.9,34.6,0.5 |noway |c
step
goto 40.2,37.1
.clicknpc Darnassian Glaive Thrower##35150
.' Control a Darnassian Glaive Thrower |invehicle |noway |c |q 25925
step
goto 40.8,40.1
.' Use the abilities on your hotbar to fight enemies
.' Destroy 3 Krom'gar Demolishers |q 25925/1
.kill 20 Horde Soldier##23171+ |q 25925/2
step
goto 39.9,41.9 |n
.' Follow the path down |goto 39.9,41.9,0.5 |noway |c
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 25925
step
goto 33.1,59.6
.talk 41487
..turnin 25925
..accept 25930
step
ding 31
step
goto 33.1,59.6
.talk 41664
..accept 25934
step
goto 32.8,59.5
.talk 41638
..accept 25935
step
goto 32.0,61.8
.talk 35138
.fpath Farwatcher's Glen
step
goto 31.6,60.6
.talk 44177
.home Farwatcher's Glen
step
goto 39.6,54.9 |n
.' Follow the path down |goto 39.6,54.9,0.5 |noway |c
step
goto 31.7,68.8
.' Use Salsbury's Rocket Pack to jump up the mountain |use Salsbury's Rocket Pack##56221
.' Jump up to 30.9,70.2
.' Ascend the Charred Vale |q 25930/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25930
..accept 25931
step
goto 30.5,70.8
.' Use Salsbury's Rocket Pack to jump around if you need to |use Salsbury's Rocket Pack##56221
.click Seldarria's Egg##477+
.' Destroy 5 Seldarria's Eggs |q 25931/1
step
goto 29.7,67.7
.' Use Salsbury's Rocket Pack to jump around if you need to |use Salsbury's Rocket Pack##56221
.from Black Dragon Whelp##34898+
.get 6 Black Dragon Whelp Filet |q 25935/1
.from Fissure-born Fire Elemental##34911+
.get Blazing Heart of Fire |q 25934/1
step
'Hearth to Farwatcher's Glen |goto 31.5,60.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 32.2,60.9
.talk 41638
..turnin 25935
step
goto 33.1,59.6
.talk 41487
..turnin 25931
step
goto 33.1,59.6
.talk 41664
..turnin 25934
step
goto 32.0,61.8
.talk 35138
.' Fly to Thal'darah Overlook, Stonetalon Mountains |goto 40.1,32.0,0.5 |noway |c
step
goto 39.4,30.0 |n
.' Follow the path down |goto 39.4,30.0,0.5 |noway |c
step
goto 41.3,22.7
.kill Harbinger Aph'lass##34923 |q 25914/1
step
goto 40.7,17.3
.click Elder Sareth'na's Sketch Book##928
.get Elder Sareth'na's Sketch Book |q 25912/1
step
goto 41.4,18.5
.from Corrupted Sentinel##34969+
.get 8 Sentinel's Glaive |q 25913/1
.from Invading Crusher##34961+, Invading Tendril##34917+
.kill 10 Invading Tentacle##25914+ |q 25914/2
step
goto 39.3,28.3 |n
.' Follow the path up |goto 39.3,28.3,0.5 |noway |c
step
goto 39.6,30.7
.talk 41488
..turnin 25913
..turnin 25914
step
goto 39.6,30.7
.talk 41486
..turnin 25912
step
goto 40.1,32.0
.talk 4407
.' Fly to Windshear Hold, Stonetalon Mountains |goto 58.8,54.3,0.5 |noway |c
step
goto 60.6,70.7
.clicknpc Blue Steel##41186
.' Ride Blue Steel to Northwatch Expedition Base Camp |goto 71.0,80.0,0.5 |noway |c
step
goto 70.9,80.6
.talk 35136
.fpath Northwatch Expedition Base Camp
step
goto 71.1,79.7
.talk 41229
..turnin 25765
..accept 25793
step
goto 72.0,78.5 |n
.' Enter the mine |goto 72.0,78.5,0.5 |noway |c
step
goto 72.0,75.9
.talk 41276
..turnin 25793
..accept 25811
step
goto 72.0,76.0
.talk 41282
..accept 25809
step
goto 72.1,76.0
.talk 41277
..accept 25806
step
'Use your Infrared Heat Detection Device |use Infrared Heat Detection Device##56014
.' Gain Infrared Vision |havebuff INTERFACE\ICONS\inv_helmet_47 |q 25806
step
goto 70.7,76.1
.' Talk to Frightened Miners to rescue them as you walk
.' Go to this spot
.' Use your Dynamite Bundle next to the wooden beam |use Dynamite Bundle##56018
.' Plant Explosives at the First Beam |q 25811/1
step
goto 69.7,75.2
.' Talk to Frightened Miners to rescue them as you walk
.' Go to this spot
.' Use your Dynamite Bundle next to the wooden beam |use Dynamite Bundle##56018
.' Plant Explosives at the Second Beam |q 25811/2
step
goto 68.7,71.3
.' Talk to Frightened Miners to rescue them as you walk
.' Go to this spot
.' Use your Dynamite Bundle next to the wooden beam |use Dynamite Bundle##56018
.' Plant Explosives at the Third Beam |q 25811/3
step
goto 68.5,72.6
.' Talk to Frightened Miners to rescue them as you walk
.' Go to this spot
.' Use your Dynamite Bundle next to the wooden beam |use Dynamite Bundle##56018
.' Plant Explosives at the Fourth Beam |q 25811/4
step
goto 69.0,71.8
.talk 41283
.' Rescue 8 Frightened Miners |q 25809/1
.kill 12 Krom'gar Assassin##41291+ |q 25806/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25806
..accept 25808
step
goto 70.2,73.2
.kill Master Assassin Kel'istra##41311 |q 25808/1
step
ding 32
step
goto 69.5,71.3 |n
.' Follow the mine cart path towards the exit |goto 69.5,71.3,0.5 |noway |c
step
goto 72.0,75.9
.talk 41276
..turnin 25811
step
goto 72.0,76.0
.talk 41282
..turnin 25809
step
goto 72.1,76.0
.talk 41277
..turnin 25808
..accept 25821
step
goto 72.0,78.5 |n
.' Leave the mine |goto 72.0,78.5,0.5 |noway |c
step
goto 71.1,79.7
.talk 41229
..turnin 25821
..accept 25834
step
goto 70.9,79.7
.talk 41278
..turnin 25834
..accept 25837
step
goto 70.1,81.3 |n
.' Follow the path down |goto 70.1,81.3,0.5 |noway |c
step
goto 66.6,85.1
.from Stonetalon Ram##34894+
.get 8 Ram Haunch |q 25837/2
.click Kalimdor Eagle Nest##7143+
.get 6 Kalimdor Eagle Egg |q 25837/1
step
goto 65.2,88.3 |n
.' Follow the path up |goto 65.2,88.3,0.5 |noway |c
step
goto 61.9,89.2 |n
.' Enter the cave |goto 61.9,89.2,0.5 |noway |c
step
goto 61.3,88.1
.from Boulderslide Rock Keeper##11915+, Boulderslide Geomancer##11917+
.get 10 Boulderslide Cheese |q 25837/3
step
goto 61.9,89.2 |n
.' Leave the cave |goto 61.9,89.2,0.5 |noway |c
step
goto 69.6,82.7 |n
.' Follow the path up |goto 69.6,82.7,0.5 |noway |c
step
goto 70.9,79.7
.talk 41278
..turnin 25837
..accept 25844
step
goto 72.5,80.2 |n
.' Follow the path down |goto 72.5,80.2,0.5 |noway |c
step
goto 72.7,81.1
.talk 41350
..turnin 25844
..accept 25845
step
goto 72.2,81.2 |n
.' Follow the path up |goto 72.2,81.2,0.5 |noway |c
step
goto 71.1,79.7
.talk 41229
..turnin 25845
..accept 25822
..accept 25823
step
goto 74.3,77.6
' |from Krom'gar Blood Guard##41407+, Goblin Stripminer##41408+
.kill 12 Horde at Unearthed Grounds Slain |q 25823/1
.click Alliance Weapon Crate##6708+
.get 10 Alliance Weapon Crate |q 25822/1
step
goto 71.1,79.7
.talk 41229
..turnin 25822
..accept 25846
..turnin 25823
step
goto 72.5,80.2 |n
.' Follow the path down |goto 72.5,80.2,0.5 |noway |c
step
goto 72.3,83.9
.talk 11858
..turnin 25846
..accept 25847
step
goto 72.0,84.8
.' Use your Alliance Weapon Crate on fighting Grimtotem mobs |use Alliance Weapon Crate##56069
.' Arm 12 Grimtotem |q 25847/1
step
goto 72.3,83.9
.talk 11858
..turnin 25847
..accept 25848
step
goto 74.6,87.6
.from General Vol'tar##41370
.from General Vaurajo##41368
.from General Salaman##41369
.from General Glubgok##41367
.click Horde General's Chest##9281 |tip It appears after you kill General Glubgok.
.get Insignia of the Horde General |q 25848/1
step
goto 72.3,83.9
.talk 11858
..turnin 25848
..accept 25851
step
goto 72.2,81.2 |n
.' Follow the path up |goto 72.2,81.2,0.5 |noway |c
step
goto 71.1,79.7
.talk 41229
..turnin 25851
..accept 25852
step
ding 33
step
goto 72.5,80.2 |n
.' Follow the path down |goto 72.5,80.2,0.5 |noway |c
step
'Go southeast to Southern Barrens |goto Southern Barrens |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (33-35)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (35-37)
startlevel 33.10
dynamic on
step
goto Desolace,54.2,9.3
.talk 36410
..accept 14384
step
goto 54.3,9.3 |n
.clicknpc Jankie's Mount##36416
.' Ride Jankie's Mount to Nijel's Point |goto 64.8,10.5,0.5 |noway |c
step
goto 64.7,10.5
.talk 6706
.fpath Nijel's Point
step
goto 66.3,6.6
.talk 11103
.home Nijel's Point
step
goto 66.7,10.9
.talk 5752
..turnin 14384
step
goto 66.7,10.9
.talk 5396
..accept 14387
step
goto 66.4,11.8
.talk 5642
..turnin 14387
..accept 14354
step
goto 67.0,12.8 |n
.' Leave Nijel's Point |goto 67.0,12.8,0.5 |noway |c
step
goto 70.4,32.9
.talk 35661
..accept 14246
..accept 14247
step
goto 70.7,32.9
.talk 35556
.fpath Thunk's Abode
step
goto 75.9,26.6
.' Go to this spot
.' Visit Handmaiden Of Elune |q 14354/1
step
goto 75.9,26.6
.click Elune's Handmaiden##9053
..accept 14357
step
goto 78.8,23.1
.' Go to this spot
.' Visit Elune's Brazier |q 14354/2
step
goto 78.8,23.1
.click Elune's Brazier##6661
..accept 14358
step
goto 77.0,18.1
.' Go to this spot
.' Visit Cup of Elune |q 14354/3
step
goto 77.0,18.1
.click Cup of Elune##439
..accept 14193
step
goto 78.6,18.5
.click Melonfruit##434+
.collect 8 Melonfruit##48106 |q 14193
step
goto 77.0,18.1
.' Use your Melonfruit while standing next to the Cup of Elune |use Melonfruit##48106 |tip It looks like a stone birdbath in the middle of large pillars.
.' Complete Cleansing Ritual |q 14193/1
.' Click on the Complete Quest box that appears under your mini map.
..turnin 14193
step
goto 74.5,23.7
.from Hatefury Hellcaller##4675+, Hatefury Shadowstalker##4674+, Hatefury Felsworn##4672+, Hatefury Betrayer##4673+, Hatefury Trickster##4671+
.collect 10 Satyr Flesh##48857 |q 14358
.click Weapon Rack##130+
.collect 20 Satyr Saber##48943 |q 14357
.' You can find more Weapon Racks around [Desolace,72.1,19.1]
step
goto 78.7,23.1
.' Use your Satyr Flesh while standing next to Elune's Brazier |use Satyr Flesh##48857 |tip It looks like a yellow and blue object in the middle of some large pillars.
.' Give the Sacrificial Offering |q 14358/1
step
goto 78.8,23.1
.click Elune's Brazier##6661
..turnin 14358
step
goto 75.9,26.6
.' Use your Satyr Saber while standing next to Elune's Handmaiden |use Satyr Saber##48943 |tip It looks like a stone statue of a Nightelf holding a basin over her head.
.' Complete Elune's Ritual of War |q 14357/1
step
goto 75.9,26.6
.click Elune's Handmaiden##9053
..turnin 14357
step
goto 65.2,23.2
.' Use your Swoop Eggs while standing in a Swoop Nest |use Swoop Eggs##49014 |tip They look like big brown bird nests on the ground around this area.
.' Protect the Swoop Eggs until they are collected by a Defiant Swoop
.' Protect 3 Swoop Eggs |q 14246/1
step
goto 69.3,21.2
.click Smouldering Stone##9067
..turnin 14247
..accept 14254
step
goto 65.6,20.8
.' Click Element 116##384 |tip They look like little ore chunks inside pink clouds of smoke on the ground around this area.
.get 7 Element 116 |q 14254/1
step
goto 67.5,15.7 |n
.' Enter Nijel's Point |goto 67.5,15.7,0.5 |noway |c
step
goto 66.4,11.8
.talk 5642
..turnin 14354
step
goto 66.7,10.9
.talk 5752
..accept 14365
step
goto 66.7,10.9
.talk 5396
..accept 14361
step
goto 66.2,9.6
.talk 5638
..accept 1454
step
goto 64.7,10.5
.talk 6706
.' Fly to Thunk's Abode, Desolace |goto 70.7,32.9,0.5 |noway |c
step
goto 70.4,33.0
.talk 35661
..turnin 14246
step
goto 61.0,29.0
.talk 35757
..turnin 14254
..accept 14251
..accept 14252
..accept 14253
step
goto 62.4,28.0
.from Gritjaw Basilisk##4728+
.get 15 Aged Basilisk Tail |q 14252/1
.from Scorpashi Snapper##4696+
.get 15 Scorpion Stinger |q 14251/1
.from Dread Swoop##4692+
.get 25 Dread Swoop Feather |q 14253/1
.' You can find more of all of these around [Desolace,59.0,17.6]
step
goto 61.0,29.0
.talk 35757
..turnin 14251
..turnin 14252
..turnin 14253
step
ding 34
step
goto 53.4,32.9
.from Kohor##35632
.' Slay Kohor |q 14361/1
.' Click the Complete Quest box that appears under your mini map
..turnin 14361
..accept 14363
step
goto 56.1,29.6 |n
.' Enter the fortress |goto 56.1,29.6,0.5 |noway |c
step
goto 54.9,29.3
.from Burning Blade Reaver##4664+, Burning Blade Adept##4665+, Burning Blade Felsworn##4666+
.collect Burning Blade Ear##49203 |n
.' Click the Burning Blade Ear in your bags |use Burning Blade Ear##49203
..accept 14362
step
goto 52.9,29.0
.click Demonic Chest##5743
.get Ancient Summoning Ritual |q 14363/1
.' Click the Complete Quest Box that appears under your mini map
..turnin 14363
..accept 14364
step
goto 55.0,26.7
.click Bleached Skullpile##293
.collect 100 Bleached Skull##48953 |n
.' Use your Bleached Skulls while standing in this Summoning Circle |use Bleached Skull##48953
.kill Nazargen##35647 |q 14364/1
step
goto 55.9,28.8
.from Burning Blade Felsworn##4666+
.get 25 Burning Blade Ear |q 14362/1
step
'Hearth to Nijel's Point |goto 66.3,6.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 66.7,10.9
.talk 5396
..turnin 14364
..turnin 14362
step
goto 67.0,12.8 |n
.' Leave Nijel's Point |goto 67.0,12.8,0.5 |noway |c
step
goto 39.6,29.9 |n
.' Follow this path down |goto 39.6,29.9 |noway |c
step
goto 39.1,27.0
.talk 35562
.fpath Ethel Rethor
step
goto 38.8,27.0
.talk 35773
..turnin 14365
..accept 14256
step
goto 38.8,27.0
.talk 35773
..' Tell him you are ready to be shown the threat he speaks of.
.' Scout the Naga Forces |q 14256/1
step
goto 38.8,27.0
.talk 35773
..turnin 14256
..accept 14257
step
goto 41.6,25.4
.from Slitherblade Naga##4711+
.get 10 Slitherblade Bones |q 14257/1
.from Slitherblade Sorceress##4712+
.get 30 Slitherblade Scale |q 14257/2
.from Slitherblade Warrior##4713+
.get 4 Slitherblade Fin |q 14257/3
.' You can find more of all of these around [Desolace,37.5,24.9]
step
goto 36.1,30.4
.click Karnitol's Chest##1
..turnin 1454
..accept 1455
step
goto 41.1,29.0 |n
.' Follow the path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,26.9
.talk 35773
..turnin 14257
..accept 14260
step
goto 38.8,26.9
.' Go to this spot
.' Use your Slitherblade Charm |use Slitherblade Charm##49064
.' Use the Slitherblade Charm |q 14260/1
step
goto 30.9,30.9
.' Be careful of Sharks and other Sea Creatures, they can see through your Disguise.
.talk 35827
..turnin 14260
..accept 14264
step
goto 33.1,16.7
.from Servant of Neptulon##35842+
.' Defeat 5 Servants of Neptulon |q 14264/1
step
goto 30.9,30.9
.talk 35827
..turnin 14264
..accept 14268
step
goto 29.2,15.0
.' Use your Shatter Rubble ability to shoot Piles of Rubble around this area |tip Just spam your 4 key, you don't have to target the rubble.
.collect 4 Ancient Tablet Fragment##49102 |n
.' Use your Ancient Tablet Fragments |use Ancient Tablet Fragment##49102
.get Ancient Engravings of Neptulon |q 14268/1
.' Click the Complete Quest Box that appears under your mini map
..turnin 14268
..accept 14282
step
ding 35
step
goto 41.1,29.0 |n
.' Follow the path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,27.0
.talk 35773
..turnin 14282
..accept 14292
step
goto 29.1,8.1
.talk 35902
..turnin 14292
..accept 14284
step
goto 29.1,8.1
.talk 35902
..' Tell him you are prepared to join him in battle!
.' Use the abilities on your action bar to fight Valishj
.from Valishj##35898
.' Slay Valishj |q 14284/1
step
'Click the red arrow on your hotbar |outvehicle |c |q 14284
step
goto 29.1,8.1
.talk 35902
..turnin 14284
..accept 14301
step
goto 41.1,29.0 |n
.' Follow the path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,27.0
.talk 35773
..turnin 14301
..accept 14302
step
'Hearth to Nijel's Point |goto 66.2,6.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 66.2,9.6
.talk 5638
..turnin 1455
..accept 1456
step
goto 64.7,10.5
.talk 6706
.' Fly to Ethel Rethor, Desolace |goto 39.0,27.0,0.5 |noway |c
step
goto 27.1,8.6
.from Slitherblade Tidehunter##4716+, Slitherblade Sea Witch##4719+
.get Karnitol's Satchel |q 1456/1
step
goto 41.0,28.9 |n
.' Follow this path up |goto 41.0,28.9,0.5 |noway |c
step
goto 39.1,26.9
.talk 35562
.' Fly to Nijel's Point |goto 64.7,10.5,0.5 |noway |c
step
goto 66.2,9.6
.talk 5638
..turnin 1456
step
goto 64.7,10.5
.talk 6706
.' Fly to Thunk's Abode, Desolace |goto 70.7,32.9,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (35-37)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Feralas (37-41)\\Feralas (37-41)
startlevel 35.40
dynamic on
step
goto Desolace,62.3,39.0
.talk 11438
..accept 5501
step
goto 58.8,46.4
.talk 36048
..accept 14304
step
goto 58.6,48.7
.talk 36060
..accept 14305
..accept 14306
step
goto 57.7,49.8
.talk 35478
.fpath Karnum's Glade
step
goto 56.7,50.0
.talk 43872
.home Karnum's Glade
step
goto 57.4,47.7
.talk 36034
..turnin 14302 |tip You will only be able to turn in this quest if you have completed the Desolace 33-35 guide.
..accept 14307
step
goto 57.4,39.3
.' Use your Bottle of Leeches on Rejuvenated Thunder Lizards |use Bottle of Leeches##49138
.from Rejuvenated Thunder Lizard##35412+
.' Click the Blood Leeches that spawn |modelnpc 36059
.get 10 Blood-Filled Leech |q 14304/1
.' You can find more Rejuvenated Thunder Lizards around [Desolace,52.8,45.1]
step
goto 48.1,40.2
.from Whirlwind Stormwalker##11577+
.' Destroy 5 Whirlwind Stormwalkers |q 14307/1
step
goto 51.6,45.6
.from Uprooted Lasher##36062+
.' Slay 7 Uprooted Lashers |q 14306/1
step
goto 54.3,52.7 |n
.' Follow this path to the Kodo Graveyard |goto 54.3,52.7,0.5 |noway |c
step
goto 53.5,59.6
.click Aloe Thistle##9079+
.get 10 Aloe Thistle |q 14305/1
.click Kodo Bone##4453+
.get 10 Kodo Bone |q 5501/1
step
goto 53.6,54.9 |n
.' Leave the Kodo Graveyard |goto 53.6,54.9,0.5 |noway |c
step
goto 57.5,47.7
.talk 36034
..turnin 14307
step
goto 58.6,48.7
.talk 36060
..turnin 14305
..turnin 14306
..accept 14311
step
goto 58.8,46.4
.talk 36048
..turnin 14304
..accept 14309
step
goto Desolace,62.3,39.0
.talk 11438
..turnin 5501
step
goto 60.8,57.2
.' Use your Cenarion Seeds while standing next to patches of dirt around this area |use Cenarion Seeds##49150
.' Plant Cenarion Seeds |q 14311/1
.' Use your Soothing Broth near Enraged Kodos |use Soothing Brot##49144
.' Calm 5 Enraged Kodo |q 14309/1
.' You can find more Enraged Kodos around [Desolace,58.0,58.9]
step
goto 60.9,61.9
.talk 11596
..accept 5561
step
goto 52.2,58.6
.' Use your Kodo Kombobulator on Ancient or Aged Kodos |use Kodo Kombobulator##13892 |tip The kodos will begin following you. Its ok if you outrun the Kodo while on your mount, they will catch up after you get there.
.' Lead the kodos to 60.8,61.9
.' Click the kodo that followed you and inspect it to tame it
.' Tame 3 Kodo |q 5561/1
step
goto 60.9,61.9
.talk 11596
..turnin 5561
step
goto 58.6,48.7
.talk 36060
..turnin 14311
step
goto 58.5,49.9
.talk 36052
..accept 14312
step
goto 58.3,50.1
.talk 36056
..turnin 14312
..accept 14314
step
goto 58.4,49.9
.talk 36052
..accept 14316
step
goto 58.8,46.4
.talk 36048
..turnin 14309
step
ding 36
step
goto 63.9,52.9 |n
.' Follow this path up |goto 63.9,52.9,0.5 |noway |c
step
goto 70.0,48.2
.click Cenarion Supply Crate##6035+ |tip They look like blue and brown wide boxes with ropes on them inside tents around this area.
.get 7 Cenarion Supply Crate |q 14316/1
step
goto 71.5,55.9
.from Magram Warden##36134
.' Free the Kolkar Prisoners |q 14314/1
step
goto 58.3,50.1
.talk 36056
..turnin 14314
step
goto 58.5,49.9
.talk 36052
..turnin 14316
step
goto 58.3,50.1
.talk 36056
..accept 14318
step
goto 58.3,50.1
.talk 36056
..' Tell you are ready to battle with the Magram clan!
.' You will ride to battle on a kolkar |invehicle |c |q 14318
step
goto 71.1,45.3
.' Use your Place Spear ability on your action bar next to the Fatherstone |tip It's a gray rock you arrive at while riding the Koldar Centaur.
.from Magram Defender##36159+
.' Break the Will of the Magram |q 14318/1
step
goto 71.7,45.6
.talk 36163
..turnin 14318
..accept 14325
step
goto 66.8,47.9
.from Revitalized Basilisk##35409+
.get 5 Basilisk Flank |q 14325/1
.' You can find more Revitalized Basilisks around [Desolace.63.8,49.7]
step
goto 73.3,41.6
.talk 36163
..turnin 14325
..accept 14327
step
'Hearth to Karnum's Glade |goto 56.8,50.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.3,50.1
.talk 36056
..turnin 14327
..accept 14328
step
goto 57.5,47.7
.talk 36034
..accept 14372
step
goto 41.8,82.5
.from Rhoho##36181
.' Defeat Rhoho |q 14328/1
step
goto 35.5,81.4
.from Sherik##36182
.' Defeat Sherik |q 14328/2
step
goto 35.6,92.3
.from Jorreth##36183
.' Defeat Jorreth |q 14328/3
step
goto 36.9,91.2 |n
.' Follow the path down |goto 36.9,91.2,0.5 |noway |c
step
goto 37.5,85.7 |n
. Follow the path up |goto 37.5,85.7,0.5 |noway |c
step
goto 38.5,90.9 |n
.' Enter the cave |goto 38.5,90.9,0.5 |noway |c
step
goto 38.8,94.5 |n
.' Follow the path up |goto 38.8,94.5,0.5 |noway |c
step
goto 40.5,95.5
.talk 36185
..turnin 14328
..accept 14329
step
goto 38.5,90.9 |n
.' Leave the cave |goto 38.5,90.9,0.5 |noway |c
step
goto 37.5,90.3 |n
.' Follow the path up |goto 37.5,90.3,0.5 |noway |c
step
goto 36.0,75.9 |n
.' Follow the path up |goto 36.0,75.9,0.5 |noway |c
step
goto 36.8,71.7
.talk 35481
.fpath Thargad's Camp
step
goto 36.7,71.2
.talk 36329
..turnin 14372
..accept 14373
..accept 14374
step
goto 49.8,77.2
.from Lesser Infernal##4676
.collect Infernal Power Core##49220 |n
.' Click on the Infernal Power Core in your bags |use Infernal Power Core##49220
..accept 14376
step
goto 54.3,78.1
.' Use your Infernal Power Core to control Lord Azrethoc |use Infernal Power Core##49199
.' Use the abilities on your action bar while controlling Lord Azrethoc to kill Jugkar Grim'rod.
.' Slay Jugkar Grim'rod |q 14376/1
.' Click the Complete Quest box that appears under your mini map
..turnin 14376
step
goto 49.8,77.2
.click Demon Portal##4713
.from Demon Portal Guardian##11937+
.' Banish 6 Portals |q 14374/1
.from Lesser Infernal##4676+
.' Destroy 10 Lesser Infernals |q 14373/1
step
goto 48.3,75.7 |n
.' Leave Mannoroc Coven |goto 48.3,75.7,0.5 |noway |c
step
goto 36.0,75.9 |n
.' Follow the path up |goto 36.0,75.9,0.5 |noway |c
step
goto 36.7,71.2
.talk 36329
..turnin 14373
..turnin 14374
..accept 14378
step
goto 36.4,71.1
.talk 36378
..accept 14379
step
goto 29.1,83.0
.from Brendol##36353 |tip He walks around stealthed around this area, so keep an eye out for him.
.get Brendol's Satchel |q 14378/1
step
goto 30.3,81.2
.from Drysnap Crawler##11562+, Drysnap Pincer##11563+
.get 7 Tender Lobstrock Tail |q 14379/1
step
goto 36.0,75.9 |n
.' Follow the path up |goto 36.0,75.9,0.5 |noway |c
step
goto 36.4,71.1
.talk 36378
..turnin 14379
step
goto 36.7,71.2
.talk 36329
..turnin 14378
..accept 14380
step
ding 37
step
goto 33.1,73.4 |n
.' Follow the path up |goto 33.1,73.4,0.5 |noway |c
step
goto 29.8,67.5 |n
.' Follow this path |goto 29.8,67.5,0.5 |noway |c
step
goto 29.9,62.5
.from Maraudine Mauler##4656+
.collect Maraudine Prisoner Manifest##38567 |n
.' Click Maraudine Prisoner Manifest |use Maraudine Prisoner Manifest##38567
..accept 14330
step
goto 29.1,62.5
.click Stone Door |tip It's huge stone double doors.
.' Enter Maraudon and follow the path
.' Skip to the next step in the guide
step
goto 27.2,63.1
.talk 36196
..turnin 14330
..accept 14332
step
goto 27.2,63.4
.click Broken Relic##406
..accept 14333
step
goto 29.0,62.6
.' Click the Stone Door |tip It's huge stone double doors.
.' Go outside to Desolace |goto Desolace |noway |c
step
goto 30.9,60.5
.from Maraudine Mauler##4656+
.' Slay 5 Maraudine Maulers |q 14329/1
.click Defiled Relic##406+
.collect 6 Defiled Relic##49194 |q 14333
..' Click the Complete Quest box that appears on the right under your minimap
..turnin 14329
step
'Use your Defiled Relics |use Defiled Relic##49194
.' Destroy the Defiled Relics |q 14333/1
..' Click the Complete Quest box that appears on the right under your minimap
..turnin 14333
step
'Hearth to Karnum's Glade |goto 56.7,50.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 57.5,47.7
.talk 36034
..turnin 14380
..accept 14381
step
goto 57.6,47.7
.clicknpc Grimfeather##36227
.' Mount Grimfeather |q 14381/1
step
'As you fly:
.' Use your Throw Concoction ability on the naga and giants below
.from Slitherblade Siren##35606+, Sea Giant##90+, Slitherblade Invader##35605+
.' Defeat 10 Slitherblade Sirens |q 14381/2
.' Defeat 3 Sea Giants |q 14381/3
.' Defeat 10 Slitherblade Invaders |q 14381/4
step
'Use your Fly Home ability to return to Karnum's Grove |outvehicle |c |q 14381
step
goto 57.5,47.7
.talk 36034
..turnin 14381
step
goto 72.3,67.3
.talk 36398
..turnin 14332
..accept 14393
step
goto 72.3,67.4
.talk 36398
..' Tell him you are ready and want to join in the battle!
.' You will ride on a Centaur Commander |invehicle |c |q 14393
step
goto 69.3,75.8
.' Use the abilities on your action bar to fight
.from Burning Blade Warlock##36414+, Doomguard Invader##36412+, Priestess Than'darissa##36413
.' Slay 3 Doomguard Invaders |q 14393/2
.' Slay 15 Burning Blade Warlocks |q 14393/1
.' Slay Priestess Than'darissa |q 14393/3 |tip She's a big blue 6-armed demon that walks all around this area, so you may need to search for her.
step
goto 72.3,67.4
.talk 36398
..turnin 14393
..accept 14394
step
goto 76.7,76.0 |n
.' Follow this path |goto 76.7,76.0,0.5 |noway |c
step
goto 79.8,79.2 |n
.' Follow this path up and to the left |goto 79.8,79.2,0.5 |noway |c
step
goto 82.0,80.6
.' Use the abilities on your action bar to fight
.from Agogridon##36442
.' Defeat Agogridon |q 14394/1
step
goto 82.4,80.9
.talk 36444
..turnin 14394
step
goto 73.4,73.0
.talk 36487
..accept 14410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Feralas (37-41)\\Feralas (37-41)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)
startlevel 37.60
dynamic on
step
goto Feralas,50.2,16.7
.talk 40966
.fpath Dreamer's Rest
step
goto 50.7,17.2
.talk 40032
..turnin 14410 |tip You will only be able to turn in the quest if you have completed Feralas 35-37 Guide.
..accept 25447
step
goto 51.1,17.8
.talk 40035
..accept 25448
..accept 25654
step
goto 51.1,17.9
.talk 40968
.home Dreamer's Rest
step
goto 41.3,11.2
.from Northspring Windcaller##5366+, Northspring Harpy##5362+
.collect Horn of Hatetalon##9530 |q 25654
step
goto 40.6,8.5
.' Use your Horn of Hatetalon next to the Hatetalon Stones |use Horn of Hatetalon##9530 |tip They look like 2 big tall rocks.
.from Edana Hatetalon##8075
.get Edana's Dark Heart |q 25654/1
step
goto 40.5,10.1
.kill 6 Northspring Harpy##5362+ |q 25448/1
.kill 6 Northspring Windcaller##5366+ |q 25448/2
step
goto 40.7,18.2
.from Sharphorn Stag##40193+
.get 8 Infected Stag Antler |q 25447/1
step
goto 50.7,17.2
.talk 40032
..turnin 25447
..accept 25394
step
goto 51.1,17.8
.talk 40035
..turnin 25448
..turnin 25654
step
ding 38
step
goto 48.4,11.1
.kill 10 Noxious Whelp##39384+ |q 25394/1
step
goto 50.7,17.2
.talk 40032
..turnin 25394
..accept 25396
..accept 25397
step
goto 42.1,24.8 |n
.' Follow the path up |goto 42.1,24.8,0.5 |noway |c
step
goto 41.1,24.9
.kill 7 Corrupted Cliff Giant##40972+ |q 25397/1
.click Stonetear##9514+
.get 7 Stonetear |q 25396/1
step
'Hearth to Dreamer's Rest |goto 51.1,17.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.7,17.2
.talk 40032
..turnin 25396
..turnin 25397
..accept 25398
step
goto 51.3,10.7
.' Use Ysondre's Tear next to the big green portal |use Ysondre's Tear##52576 |tip The portal is at the top of a white stone staircase.
.' Seal the Portal |q 25398/1
step
goto 50.7,17.2
.talk 40032
..turnin 25398
..accept 26402
step
goto 48.7,44.8
.talk 14637
..accept 25465
..accept 25466
step
goto 48.1,44.9 |n
.' Follow the path down |goto 48.1,44.9,0.5 |noway |c
step
goto 46.8,45.3
.talk 41383
.fpath Feathermoon
step
goto 46.1,45.3
.talk 44391
.home Feathermoon Stronghold
step
goto 46.0,49.1
.talk 3936
..turnin 26402
..accept 25304
step
goto 46.8,45.3
.talk 41383
..' Tell her to take you to the battle at the Ruins of Feathermoon
.' You will fly to the Ruins of Feathermoon |goto 32.8,45.6,0.5 |noway |c
step
goto 32.6,45.6
.talk 39723
..turnin 25304
..accept 25399
..accept 25458
step
goto 30.6,45.5
.from General Skessesh##40051
.get Head of Skessesh |q 25458/1
step
goto 31.2,44.6
.from Hatecrest Warrior##39728+, Hatecrest Sorceress##39733+
.' Kill 10 Hatecrest Nagas |q 25399/1
step
goto 32.6,45.7
.talk 39723
..' Tell him you must return to Feathermoon Stronghold!
.' You will fly to Feathermoon Stronghold |goto 46.9,45.4,0.5 |noway |c
step
goto 46.0,49.1
.talk 3936
..turnin 25399
..turnin 25458
..accept 25463
step
goto 46.5,55.4
.' Use Zorbin's Ultra-Shrinker on Shore Striders |use Zorbin's Ultra-Shrinker##18904 |tip They are giants that walk along the coast around this area.
.from Zapped Shore Strider##5359+
.get 6 Miniaturization Residue |q 25465/1
.from Sea Spray##5462+
.get 10 Water Elemental Core |q 25466/1
step
goto 47.4,44.7 |n
.' Follow the path up |goto 47.4,44.7,0.5 |noway |c
step
goto 48.7,44.8
.talk 14637
..turnin 25465
..turnin 25466
step
goto 57.1,53.8
.talk 40078
..accept 25407
step
goto 57.1,54.0
.talk 41580
.fpath Tower of Estulan
step
goto 56.9,55.0
.talk 39653
..turnin 25463
..accept 25400
..accept 25401
..accept 26574
step
goto 57.3,55.0
.talk 40132
..accept 25350
step
goto 56.3,53.6
.' Use Tessina's Wisp Call on Feralas Wisps |use Tessina's Wisp Call##53101 |tip They look like floating blue balls of light with faces on them around this area.
.' Rally 3 Wisps |q 25407/1
.' You can find more Feralas Wisps around [Feralas,50.1,49.6]
step
goto 57.1,53.8
.talk 40078
..turnin 25407
..accept 25409
step
ding 39
step
goto 56.0,62.6
.' Use Tessina's Hippogryph Call on Frayfeather Hippogryphs and Frayfeather Stagwings |use Tessina's Hippogryph Call##53104
.' Rally 10 Hippogryphs |q 25409/1
step
goto 58.8,64.6
.from Gordunni Shaman##5236+, Gordunni Warlock##5240+, Gordunni Mauler##5234+
.' Slay 16 Gordunni Ogres |q 25400/1
.get Gordunni Orb |q 25401/1
step
goto 61.5,64.0 |n
.' Follow the path up |goto 61.5,64.0,0.5 |noway |c
step
goto 65.9,62.9
.talk 40129
..turnin 25350
step
goto 65.9,62.8
.talk 40131
..accept 25422
..accept 25423
step
goto 65.3,61.0
.from Highborne Poltergeist##40059+
.get 6 Soul Essence |q 25423/1
.click Loose Soil##49
.get 6 Glowing Soil |q 25422/1
step
goto 65.9,62.8
.talk 40131
..turnin 25422
..turnin 25423
..accept 25368
step
goto 64.3,55.9
.' Use your Mournful Essence next to the big dead tree |use Mournful Essence##54456
.kill Verinias the Twisted##40136 |q 25368/1
step
goto 65.9,62.8
.talk 40131
..turnin 25368
step
goto 65.9,62.9
.click Empty Pedastal##439l
..accept 26401
step
goto 63.7,62.1 |n
.' Follow the path down |goto 63.7,62.1,0.5 |noway |c
step
goto 57.1,53.8
.talk 40078
..turnin 25409
..accept 25410
step
goto 56.9,55.0
.talk 39653
..turnin 25400
..accept 25406
..turnin 25401
..accept 25402
step
goto 57.0,55.4
.talk 40052
..turnin 25402
..accept 25403
step
goto 57.2,55.0
.talk 40132
..turnin 26401
step
goto 57.9,58.0
.' Use Tessina's Treant Call on Wandering Forest Walkers |use Tessina's Treant Call##53105
.' Rally 6 Treants |q 25410/1
step
goto 57.1,53.8
.talk 40078
..turnin 25410
step
goto 59.1,45.8
.kill 6 Gordok Enforcer##11440+ |q 25406/1
.kill 6 Gordok Ogre-Mage##11443+ |q 25406/2
.' Use your Modified Soul Orb on a Gordok Ogre-Mage when it's almost dead |use Modified Soul Orb##52833
.' Capture a Gordok Ogre Mage |q 25403/1
step
goto 56.9,55.0
.talk 39653
..turnin 25406
step
goto 57.0,55.4
.talk 40052
..turnin 25403
..accept 25208
step
goto 56.9,55.0
.talk 39653
..turnin 25208
..accept 25333
step
ding 40
step
goto 59.1,45.1 |n
.' Follow the path up |goto 59.1,45.1,0.5 |noway |c
step
goto 59.3,39.1 |n
.' Follow this path |goto 59.3,39.1,0.5 |noway |c
step
goto 61.1,34.9 |n
.' Follow this path |goto 61.1,34.9,0.5 |noway |c
step
goto 60.7,32.3 |n
.' Enter the tunnel |goto 60.7,32.3,0.5 |noway |c
step
goto 62.5,30.1
.' Watch the dialogue and kill the ogres that attack you
.from Cho'gall##43932
.' Disrupt the Sermon |q 25333/1
step
'Hearth to Feathermoon Stronghold |goto 46.1,45.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.8,45.4
.talk 41383
.' Fly to Tower of Estulan, Feralas |goto 57.0,53.9,0.5 |noway |c
step
goto 56.9,55.0
.talk 39653
..turnin 25333
step
goto 71.3,48.9 |n
.' Follow the path down |goto 71.3,48.9,0.5 |noway |c
step
goto 76.0,57.4 |n
.' Follow the path up |goto 76.0,57.4,0.5 |noway |c
step
goto 77.0,56.6
.talk 40913
..accept 25468
..accept 25469
step
goto 77.3,56.8
.talk 40367
.fpath Shadebough
step
goto 77.2,56.5
.talk 39725
..turnin 26574 |tip You will only be able to turn in the quest if you have complete the Ferals 37-40 Guide.
..accept 25426
..accept 25432
step
goto 71.4,60.9
.'Use Jesana's Giant Call on Mountain Giants |use Jesana's Giant Call##58967
.' Rally 5 Mountain Giants |q 25469/1
step
goto 71.3,54.9
.from Woodpaw Mongrel##5249+, Woodpaw Brute##5253+, Woodpaw Mystic##5254+, Woodpaw Reaver##5255+
.get 10 Woodpaw Gnoll Mane |q 25426/1
step
goto 70.4,46.6
.' Use Jesana's Faerie Dragon Call on Sprite Darters |use Jesana's Faerie Dragon Call##58966
.' Rally 10 Faerie Dragons |q 25468/1
step
goto 74.9,35.2 |n
.' Follow the path up |goto 74.9,35.2,0.5 |noway |c
step
goto 75.5,34.2
.kill 5 Gordunni Hillguard##39952+ |q 25432/1
step
'Hearth to Feathermoon Stronghold |goto 46.1,45.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.8,45.4
.talk 41383
.' Fly to Shadebough, Feralas |goto 77.2,56.8,0.5 |noway |c
step
goto 77.2,56.5
.talk 39725
..turnin 25426
..accept 25427
..turnin 25432
..accept 25433
..accept 25434
step
goto 77.0,56.6
.talk 40913
..turnin 25468
..turnin 25469
step
goto 68.0,53.6 |n
.' Follow the path up |goto 68.0,53.6,0.5 |noway |c
step
goto 66.1,52.2
.kill 5 Woodpaw Alpha##5258+ |q 25427/1
step
goto 74.9,35.2 |n
.' Follow the path up |goto 74.9,35.2,0.5 |noway |c
step
goto 74.8,28.5
.kill Bigfist##39958 |q 25433/1
step
goto 75.2,29.6
.kill 6 Gordunni Tamer##39957+ |q 25434/1
step
goto 75.3,34.4 |n
.' Follow the path down |goto 75.3,34.4,0.5 |noway |c
step
goto 71.3,48.9 |n
.' Follow the path down |goto 71.3,48.9,0.5 |noway |c
step
goto 76.0,57.4 |n
.' Follow the path up |goto 76.0,57.4,0.5 |noway |c
step
goto 77.2,56.5
.talk 39725
..turnin 25427
..turnin 25433
..turnin 25434
..accept 25429
..accept 25431
step
goto 74.5,62.5
.from Stinglasher##14661
.get Stinglasher's Glands |q 25431/1
step
goto 74.1,61.4
.from Zukk'ash Worker##5246+, Zukk'ash Wasp##5245+
.get 20 Zukk'ash Carapace |q 25429/1
step
goto 76.0,57.4 |n
.' Follow the path up |goto 76.0,57.4,0.5 |noway |c
step
goto 77.2,56.5
.talk 39725
..turnin 25429
..turnin 25431
..accept 25436
step
goto 71.3,48.7 |n
.' Go to the road |goto 71.3,48.7,0.5 |noway |c
step
goto 75.5,37.0
.kill 8 Corrupted Dryad##40168+ |q 25436/1
step
'Hearth to Feathermoon Stronghold |goto 46.1,45.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.8,45.4
.talk 41383
.' Fly to Shadebough, Feralas |goto 77.2,56.8,0.5 |noway |c
step
goto 77.2,56.5
.talk 39725
..turnin 25436
..accept 25437
step
goto 75.7,49.7 |n
.' Follow the path up and over the river |goto 75.7,49.7,0.5 |noway |c
step
goto 80.4,42.9 |n
.' Follow the path up |goto 80.4,42.9,0.5 |noway |c
step
goto 81.5,42.4
.talk 39407
..turnin 25437
..accept 25379
step
goto 81.4,42.5
.from Taerar##39853
.' Defeat Taerar |q 25379/1
step
goto 81.5,42.4
.talk 39407
..turnin 25379
..accept 25438
step
goto 78.7,45.8 |n
.' Follow the path up and over the river |goto 78.7,45.8,0.5 |noway |c
step
goto 76.0,57.4 |n
.' Follow the path up |goto 76.0,57.4,0.5 |noway |c
step
goto 77.2,56.5
.talk 39725
..turnin 25438
step
ding 41
step
goto 77.2,56.5
.talk 40369
..accept 25481
step
goto 77.3,56.8
.talk 40367
.' Tell her you need to get to New Thalanaar!
.' Take Hippogryph to New Thalanaar |q 25481/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (33-35)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (35-37)
startlevel 33.10
dynamic on
step
goto Southern Barrens,29.9,9.0
.talk 38378
..turnin 25852
..accept 24862
..accept 24863
step
goto 30.8,9.2
.kill 8 Hunter Hill Scout##37170+ |q 24862/1
.click Stonetalon Supplies##335+
.get 10 Stonetalon Supplies |q 24863/1
step
goto 35.0,9.5
.talk 38380
..turnin 24862
..turnin 24863
..accept 25186
step
goto 35.7,6.2
.kill Kona Thunderwalk##38384 |q 25186/1
step
goto 38.8,11.4
.talk 38379
..turnin 25186
step
goto 39.1,11.4
.talk 38383
..accept 25191
step
goto 38.9,10.9
.talk 39210
.fpath Honor's Stand
step
goto 39.1,11.4
.talk 38383
..' Tell her you're ready to fly
.' You will fly down the The Great Divide
.' Complete the Survey |q 25191/1
step
goto 68.7,49.3
.talk 39322
..turnin 25191
..accept 25197
step
goto 69.3,49.1
.' Go to the top of the tower
.talk 38619
..turnin 25197
..accept 24934
step
goto 69.3,49.1
.talk 38619
..' Ask him if you can get a ride to the Blackpool
.' You will fly to a ship |goto Northern Barrens |noway |c
step
goto Southern Barrens,73.1,47.6
.kill 6 Rageroar Sea Dog##38661 |q 24934/1
step
goto 73.4,47.8
.talk 38622
..turnin 24934
step
goto 73.4,47.8
.talk 38622
..' Tell him you need a ride back to Northwatch Hold
.' You will fly back to Northwatch Hold |goto 69.2,49.1,0.5 |noway |c
step
goto 69.3,49.1
.talk 38619
..accept 24938
step
goto 66.4,47.1
.talk 39212
.fpath Northwatch Hold
step
goto 67.0,46.5
.talk 38620
..accept 24941
step
goto 67.6,46.5
.click Crate of Nails##335+
.click Box of Cutlery##41+
.click Broken Bottles##238+
.click Screws and Gears##5743+
.click Musketballs##334+
.get 15 Langridge Shot |q 24941/1
step
goto 67.0,46.5
.click Paxton's Field Cannon##245
..turnin 24941
step
goto 67.0,46.5
.talk 38620
..accept 24943
step
goto 66.9,46.8
.talk 38804
..accept 24944
step
goto 66.5,45.4
.' Use your Herb-Soaked Bandages on Wounded Defenders |use Herb-Soaked Bandages##52014 |tip They are humans laying on the ground around this area.
.' Bandage 6 Wounded Defenders |q 24944/1
step
goto 68.6,44.5
.talk 3454
..turnin 24938
..accept 24939
step
goto 68.7,44.6
.clicknpc Northwatch Shore Battery##21788
.' Use your Fire the Battery ability on your hotbar to shoot the wooden boats in the water
.' Destroy 10 Rageroar Rowboats |q 24939/1
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 24939
step
goto 68.6,44.5
.talk 3454
..turnin 24939
step
goto 67.6,44.9
.kill 10 Rageroar Grunt##38658+ |q 24943/1
step
goto 66.5,45.6 |n
.' Follow the path up |goto 66.5,45.6,0.5 |noway |c
step
goto 66.9,46.8
.talk 38804
..turnin 24944
..accept 24956
step
goto 67.0,46.5
.talk 38620
..turnin 24943
..accept 24948
step
goto 68.6,38.5 |n
.' Follow the path up |goto 68.6,38.5,0.5 |noway |c
step
goto 67.5,36.7
.from Hexmaster Bastoon##38826
.from Karga Rageroar##38663
.get Rageroar's Helm |q 24956/2
step
goto 68.0,36.4
.' Use Paxton's Torch next to the Rageroar Blade Thrower |use Paxton's Torch##52017 |tip It looks like a huge catapult machine with a giant metal saw blade.
.' Burn a Rageroar Blade Thrower |q 24948/2
step
goto 68.0,37.2 |n
.' Follow the path down |goto 68.0,37.2,0.5 |noway |c
step
goto 68.7,40.4
.kill 4 Rageroar Lieutenant##38659 |q 24956/1
.' Use Paxton's Torch next to the Rageroar Catapults |use Paxton's Torch##52017 |tip They look like carts with 4 wheels and a scoop handle around this area.
.' Burn 3 Rageroar Catapults |q 24948/1
step
goto 66.9,46.8
.talk 38804
..turnin 24956
step
goto 67.0,46.5
.talk 38620
..turnin 24948
..accept 25036
step
goto 64.8,46.1
.talk 38621
..accept 25000
step
goto 61.8,42.1
.talk 38878
..accept 25002
step
goto 61.3,42.7
.from Terrortooth Runner##37083+, Terrortooth Scytheclaw##37084+
.get 8 Terrortooth Hide |q 25000/1
.click Northwatch Supply Crate##347+
.get 10 Northwatch Supply Crate |q 25002/1
step
ding 34
step
goto 61.3,42.0 |n
.' Go to the road |goto 61.3,42.0,0.5 |noway |c
step
goto 56.1,42.7
.talk 38871
..turnin 25036
..turnin 25002
..accept 25015
..accept 25022
step
goto 56.1,42.6
.talk 38873
..turnin 25000
..accept 25008
step
goto 53.1,46.7
.click Quilboar Restraint##8721
.' Rescue Ambassador Gaines |q 25022/1
step
goto 53.8,46.5
.from Bristleback Bladewarden##37511+, Deviate Thornweaver##38884+
.' Slay 8 Bristleback Quilboars |q 25015/1
.get Bramblestaff |q 25015/2
step
goto 56.1,42.7
.talk 38871
..turnin 25015
..turnin 25022
..accept 25027
step
goto 56.2,42.8
.talk 38876
..accept 25028
step
goto 58.1,40.9
.kill 6 Hecklefang Scavenger##37086 |q 25008/1
.' You can find more Hecklefang Scavengers around [Southern Barrens,62.5,40.5]
step
goto 56.1,42.6
.talk 38873
..turnin 25008
step
goto 53.0,50.1
.click Budding Flower##3232+
.collect Unusual Flower Bud##49815 |n
.' Use your Bramblestaff on Three-Tooth |use Bramblestaff##52073
.' Deal With Three-Tooth |q 25027/1
.kill 2 Deviate Crone##38940+ |q 25027/2
step
goto 53.3,48.6
.click Budding Flower##3232+
.get 10 Unusual Flower Bud |q 25028/1
step
goto 56.1,42.7
.talk 38871
..turnin 25027
..accept 25034
step
goto 50.4,40.7
.talk 37570
..turnin 25028
..accept 24565
step
goto 50.3,40.4
.talk 38314
..accept 24570
..accept 24571
step
goto 50.7,39.9
.from Lashvine##37093+
.get 4 Writhing Seed |q 24571/1
.clicknpc Enervated Adder##2955+
.get 5 Evervated Adder |q 24570/1
.kill 5 Deviate Terrortooth##37090+ |q 24565/1
.kill 5 Deviate Plainstrider##37091+ |q 24565/2
step
goto 50.3,40.4
.talk 38314
..turnin 24570
..turnin 24571
..accept 24566
step
goto 50.4,40.7
.talk 37570
..turnin 24565
..accept 24574
step
goto 50.9,39.7
.' Use your Soothing Seeds on Deviate Plainstriders and Deviate Terrortooths |use Soothing Seeds##49882
.' Observe 6 Results |q 24566/1
step
goto 49.5,37.6
.kill 5 Outgrowth##37092+ |q 24574/1 |tip They can only be found in the water.
.get Squirming Heart |q 24574/2
step
goto 50.3,40.4
.talk 38314
..turnin 24566
step
goto 50.4,40.7
.talk 37570
..turnin 24574
..accept 24601
step
goto 48.2,38.6
.talk 37570
..' Tell him you're ready
.' Protect Naralex from the mobs that spawn
.' Seal the Nightmare Scar |q 24601/1
step
goto 48.2,38.6
.talk 37570
..turnin 24601
step
ding 35
step
goto 50.0,49.5
.talk 38986
..turnin 25034
..accept 25044
step
goto 49.9,49.7
.talk 38323
..accept 25043
..accept 25045
step
goto 49.8,50.5
.talk 39003
..accept 25041
step
goto 49.4,54.0
.click Field Banner##6211
.' Capture the Hill |q 25045/1
.' Protect the Field Banner from the enemies that attack
.' Defend the Hill |q 25045/2
step
goto 50.0,54.3
.from Plains Pridemane##37207+, Plains Prowler##37206+
.' Slay 5 Barrens Lions |q 25041/1
step
goto 49.8,50.5
.talk 39003
..turnin 25041
..accept 25042
step
goto 49.9,49.7
.talk 38323
..turnin 25045
step
goto 50.0,51.7
.from Stormsnout##3240+
.get 4 Fresh Stormsnout Steak |q 25042/1
step
goto 49.8,50.5
.talk 39003
..turnin 25042
step
goto 43.1,41.8
.' Use your Horn of Challenge |use Horn of Challenge##49782
.kill Sabersnout##37513 |q 25044/1
step
goto 44.8,45.0
.kill 10 Desolation Grunt##37706+ |q 25043/1
step
goto 49.9,49.7
.talk 38323
..turnin 25043
..accept 25057
step
goto 50.0,49.5
.talk 38986
..turnin 25044
..accept 25059
step
goto 44.4,51.7
.talk 37743
..' Tell them they're under arrest
.from Taurajo Looter##37743+
.' Use your Northwatch Manacles on Taurajo Looters when they are at half health or lower |use Northwatch Manacles##52271
.' Arrest 5 Taurajo Looters |q 25057/1
.click Taurajo Intelligence##222
.get 3 Taurajo Intelligence |q 25059/1
step
goto 49.9,49.7
.talk 38323
..turnin 25057
..accept 25074
step
goto 50.0,49.5
.talk 38986
..turnin 25059
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (35-37)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Dustwallow Marsh (37-41)\\Dustwallow Marsh (37-41)
startlevel 35.69
dynamic on
step
goto Southern Barrens,49.0,68.5
.talk 44267
.home Fort Triumph
step
goto 49.2,67.8
.talk 39085
..accept 25082
step
goto 49.2,67.8
.talk 39211
.fpath Fort Triumph
step
goto 49.5,67.5
.talk 39084
..accept 25075
step
goto 49.1,66.9
.talk 39083
..turnin 25074
..accept 25081
step
goto 47.7,67.6
.' Use your Bucket of Burning Pitch next to the Silithid Mounds |use Bucket of Burning Pitch##50128 |tip They look like pointy rocks around this area.
.kill 10 Silithid Swarmer##3252+ |q 25082/1
step
goto 46.5,68.5 |n
.' Follow the path down |goto 46.5,68.5,0.5 |noway |c
step
goto 45.4,69.8
.' Go to this spot
.' Scout the Battlescar Flag |q 25081/1
.click Siege Engine Scrap##451+
.get 8 Siege Engine Scrap |q 25075/1
step
goto 43.9,71.2
.kill 10 Desolation Raider##37922+ |q 25081/2
step
goto 46.0,71.5 |n
.' Follow the path up |goto 46.0,71.5,0.5 |noway |c
step
goto 49.2,67.8
.talk 39085
..turnin 25082
..accept 25086
step
goto 49.5,67.5
.talk 39084
..turnin 25075
..accept 25079
step
goto 49.1,66.9
.talk 39083
..turnin 25081
..accept 25087
step
goto 46.1,71.6
.from Sapper Specialist##37925
.get Keg of Blast-O Powder |q 25079/1
step
goto 49.5,67.5
.talk 39084
..turnin 25079
..accept 25080
step
goto 48.3,72.6
.from Thunderhead##37208+
.get Humming Electrogizard |q 25080/1
step
goto 43.5,78.3
.talk 39118
..turnin 25087
..accept 25104
step
goto 43.5,78.2
.talk 39154
..accept 25102
step
goto 46.0,77.5
.kill 4 Landquaker Kodo##37555 |q 25102/1
.kill Landquaker Bull |q 25102/2
step
goto 43.5,78.2
.talk 39154
..turnin 25102
step
ding 36
step
goto 45.0,85.4
.talk 37835
..turnin 25086
..accept 25084
step
goto 45.1,85.3
.talk 37834
..accept 24824
step
goto 43.7,82.4
.from Razormane Pathfinder##3456+, Razormane Warfrenzy##3459+, Razormane Seer##3458+
.collect Carved Boar Idol##49932 |n
.' Click the Carved Boar Idol in your bags |use Carved Boar Idol##49932
..accept 24606
step
goto 42.7,82.8
.from Razormane Pathfinder##3456+, Razormane Warfrenzy##3459+, Razormane Seer##3458+
.' Slay 13 Razormane Quilboars |q 25084/1
.get 6 Blood Shard Trinket |q 24606/1
step
goto 47.9,81.9
.from Disturbed Earth Elemental##37553+
.get 4 Disturbed Earth Fragment |q 24824/1
step
goto 47.8,82.1 |n
.' Follow the path up |goto 47.8,82.1,0.5 |noway |c
step
goto 45.1,85.4
.talk 37812
..turnin 24606
..accept 24653
step
goto 45.1,85.3
.talk 37834
..turnin 24824
step
goto 45.0,85.4
.talk 37835
..turnin 25084
..accept 25085
step
goto 39.0,81.6 |n
.' Follow the path up |goto 39.0,81.6,0.5 |noway |c
step
goto 37.7,81.5
.kill Mangletooth##37940 |q 25085/1
step
goto 40.3,83.0
.click Boar Skull##9240+
.get 3 Polished Boar Skull |q 24653/1
step
goto 45.1,85.4
.talk 37812
..turnin 24653
step
goto 45.0,85.4
.talk 37835
..turnin 25085
step
goto 47.2,88.5
.talk 39155
..turnin 25104
..accept 25106
..accept 25108
step
goto 49.1,89.5
.kill Feegly the Exiled##39174 |q 25108/1
step
goto 49.0,89.4
.click Twinbraid's Tools##317
.get Twinbraid's Tools |q 25106/3
step
goto 48.5,88.7
.kill 8 Excavation Raider##39153+ |q 25106/1
.click Bael Modan Artifact##5743+
.get 5 Bael Modan Artifact |q 25106/2
step
goto 47.1,87.3 |n
.' Follow the path up |goto 47.1,87.3,0.5 |noway |c
step
goto 47.2,88.5
.talk 39155
..turnin 25106
..turnin 25108
..accept 25120
step
goto 47.2,88.5
.talk 39155
..' Tell him you're ready, let's fly!
.' Fly with Marley Twinbraid |q 25120/1
step
goto 49.3,86.7
.talk 39188
..turnin 25120
..accept 25151
step
goto 49.4,86.9
.talk 39218
..accept 25153
step
goto 49.6,87.2
.talk 39220
..accept 25163
step
goto 50.3,87.1
.' Click Emergency Fire Valves |tip They look like red wheel handles on the walls all inside Bael'dun Keep.  Standing in front of them and using them will put out a buff on your for 30 seconds, making you immune to fire temporarily.  You will need to use one of these every 30 seconds to keep yourself alive, so pay attention to the buff timer and don't wait too long to find another valve.
.talk 38152
..turnin 25163
..accept 25174
step
goto 50.7,86.8
.' Click Emergency Fire Valves |tip They look like red wheel handles on the walls all inside Bael'dun Keep.  Standing in front of them and using them will put out a buff on your for 30 seconds, making you immune to fire temporarily.  You will need to use one of these every 30 seconds to keep yourself alive, so pay attention to the buff timer and don't wait too long to find another valve.
.' Click the Keg of Ol' Barkerstout |tip It's a barrel sitting on the bar counter in a small side room.
.get Mug of Ol' Barkerstout |q 25151/1
step
goto 50.3,87.0
.' Click Emergency Fire Valves |tip They look like red wheel handles on the walls all inside Bael'dun Keep.  Standing in front of them and using them will put out a buff on your for 30 seconds, making you immune to fire temporarily.  You will need to use one of these every 30 seconds to keep yourself alive, so pay attention to the buff timer and don't wait too long to find another valve.
.' Click Burning Debris |tip They look like small piles of wood with dwarf legs kicking out of them on the ground all around inside Bael'dun Keep.
.' Rescue 10 Bael'dun Survivors |q 25153/1
step
goto 49.6,87.0 |n
.' Click Emergency Fire Valves |tip They look like red wheel handles on the walls all inside Bael'dun Keep.  Standing in front of them and using them will put out a buff on your for 30 seconds, making you immune to fire temporarily.  You will need to use one of these every 30 seconds to keep yourself alive, so pay attention to the buff timer and don't wait too long to find another valve.
.' Go outside |goto 49.6,87.0,0.5 |noway |c
step
goto 49.4,86.9
.talk 39218
..turnin 25153
step
goto 49.3,86.7
.talk 39188
..turnin 25151
..accept 25175
step
goto 47.8,82.1 |n
.' Follow the path up |goto 47.8,82.1,0.5 |noway |c
step
goto 43.5,78.3
.talk 39118
..turnin 25175
..turnin 25174
..accept 25182
..accept 25183
step
ding 37
step
goto 40.3,77.7 |n
.' Enter the mine |goto 40.3,77.7,0.5 |noway |c
step
goto 40.3,77.0
.kill 10 Frazzlecraz Miner##39280+ |q 25182/1
.' Click Frazzlecraz Explosives |tip They look like big metal buttons on top of wooden barrels on the ground inside this mine.
.' Arm 6 Frazzlecraz Explosives |q 25183/1
step
goto 40.3,77.7 |n
.' Leave the mine |goto 40.3,77.7,0.5 |noway |c
step
goto 40.4,77.8
.click Big Nasty Plunger##9277
..turnin 25183
..accept 25185
step
goto 43.5,78.3
.talk 39118
..turnin 25182
..turnin 25185
..accept 26687
step
'Hearth to Fort Triumph |goto 49.0,68.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,67.5
.talk 39084
..turnin 25080
step
'Go southeast to Dustwallow Marsh |goto Dustwallow Marsh |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Dustwallow Marsh (37-41)\\Dustwallow Marsh (37-41)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)
startlevel 37.39
dynamic on
#include "Dustwallow_Marsh"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (45-47)
startlevel 41.12
dynamic on
step
goto Feralas,86.1,45.3
.talk 39946
..turnin 25479 |tip You will only be able to do this if you completed the Feralas 37-40 Guide.
..accept 25486
step
goto 86.0,44.8
.kill 7 Grimtotem Marauder##39949+ |q 25486/1
step
goto 88.5,44.4
.talk 39992
..turnin 25486
..accept 25488
step
'You will get taken away in a small boat
.' Ride the boat to Fizzle & Pozzik's Speedbarge |goto Thousand Needles,79.0,76.1,0.5 |noway |c
step
goto Thousand Needles,79.2,71.9
.talk 40768
.fpath Fizzle & Pozzik's Speedbarge
step
goto 75.9,74.6
.talk 40027
..turnin 25488
..accept 25504
step
goto 76.5,73.6
.talk 40475
..turnin 25504
..accept 25515
step
goto 78.0,73.3
.talk 40554
..accept 25517
step
goto 76.5,74.8
.talk 40832
.buy 1 Bottle of Grog##54747 |n
.' Use your Bottle of Grog on a Goblin Bar Patron |use Bottle of Grog##54746
.' Start a Bar Fight! |q 25517/1
step
goto 78.0,73.3
.talk 40554
..turnin 25517
step
goto 79.5,75.0
.click Submerged Outhouse##3332
..accept 25524
step
goto 79.5,76.1
.from Southsea Treasure Hunter##40449+
.collect Pirate's Crowbar##54821 |q 25524
.click Rocket Car Parts##450+
.get 10 Rocket Car Parts |q 25515/1
step
goto 79.5,75.0
.' Use your Pirate's Crowbar next to the Submerged Outhouse |use Pirate's Crowbar##54821
.' Use the crowbar on the house |q 25524/1
.click Submerged Outhouse##3332
..turnin 25524
step
goto 76.5,73.6
.talk 40475
..turnin 25515
..accept 25532
step
goto 78.9,75.7
.talk 40726
..' Tell him to get you into your boat
.' Get your boat from Mazzer |q 25532/1
step
'Use your Frost Cannon ability on the fires of the huge ship as you ride around in your boat
.' Extinguish 15 Fires |q 25532/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25532
..accept 25542
step
'Use your Fire Cannon ability on the small boats floating in the water all around you as you ride in your boat
.' Sink 15 Rowboats |q 25542/1
step
'Click the red arrow on your hotbar |goto 78.3,73.3,0.5 |noway |c
step
goto 76.5,73.6
.talk 40475
..turnin 25542
..accept 25585
step
goto 75.9,74.6
.talk 40027
..accept 25744
step
goto 78.0,73.3
.talk 40554
..accept 25590
step
goto 78.1,73.1
.talk 40591
..accept 25588
step
goto 78.1,73.1
.talk 40726
..accept 28031
step
goto 69.9,85.2
.talk 47383
..turnin 28031
..accept 28045
..accept 28051
step
goto 70.1,85.4
.from Silithid Ravager##47388+
.get 8 Scoop of Silithid Goo |q 28045/1
.clicknpc Dead Employee##35627+
.' Hook 10 Dead Employees |q 28051/1
step
goto 69.9,85.2
.talk 47383
..turnin 28045
..turnin 28051
..accept 28047
..accept 28048
step
goto 66.2,86.2 |n
.' Enter the bug hive |goto 66.2,86.2,0.5 |noway |c
step
goto 66.0,86.5
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the First Pipe |q 28047/1
step
goto 65.3,86.9
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Second Pipe |q 28047/2
step
goto 65.0,84.5
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Third Pipe |q 28047/3
step
goto 64.9,85.7
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Fourth Pipe |q 28047/4
step
goto 63.8,86.3
.kill Hive Controller##47389 |q 28048/1
step
goto 66.2,86.2 |n
.' Leave the bug hive |goto 66.2,86.2,0.5 |noway |c
step
goto 69.9,85.2
.talk 47383
..turnin 28047
..turnin 28048
step
ding 42
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 91.6,78.6
.talk 40885
..turnin 25590
..accept 25609
step
goto 90.8,77.9
' |from Southsea Sailor##40092+, Southsea Parrot Handler##40432+
.kill 15 Southsea pirates |q 25588/1
.clicknpc Holdfast Cannon##21788
.' Destroy 8 Holdfast Cannons |q 25585/1
step
goto 78.1,73.1
.talk 40591
..turnin 25588
step
goto 76.5,73.6
.talk 40475
..turnin 25585
step
goto 81.6,68.0
.click Sunken Treasure Chest##259+
.get 8 Sunken Treasure Chest |q 25609/1
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 91.6,78.6
.talk 40885
..turnin 25609
..accept 25627
step
goto 92.0,83.2 |n
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.' Enter the cave |goto 92.0,83.2,0.5 |noway |c
step
goto 95.2,79.5
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.from Tony Two-Tusk##40958 |tip Follow the path to the left in the cave to get to him.  He will jump inside a treasure chest and scramble around.  Just keep attacking him when he reopens his chest.
.get Rusted Cage Key |q 25627/1
step
goto 92.0,83.2 |n
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.' Leave the cave |goto 92.0,83.2,0.5 |noway |c
step
goto 91.6,78.6
.talk 40885
..turnin 25627
step
'Next to you:
.talk 41058
..accept 25660
step
goto 96.8,72.5
.talk 41060
..turnin 25660
..accept 25661
step
goto 91.0,69.0
.from Evil Dolly##41076 |tip She's downstairs in the boat, on the middle level, in the captain's room.
.get Evil Dolly's Heart |q 25661/1
step
goto 88.1,73.9
.click Rope Ladder##9094
.' Jump up on the ship |goto 88.1,73.9,0.2 |noway |c
step
goto 88.5,72.8
.from Seadog Fajardo##41081 |tip He's on the top deck of the ship, in a side room, directly under where the ship wheel is on the back of the boat.
.get Seadog Fajardo's Lungs |q 25661/2
step
goto 88.5,77.0
.click Rope Ladder##9094
.' Jump up onto the ship |goto 88.5,77.0,0.2 |noway |c
step
goto 87.8,76.0
.from Lilly Landlubber##41082 |tip She's at the very top of the ship, next to the ship wheel.
.get Lilly Landlubber's Liver |q 25661/3
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 96.8,72.5
.talk 41060
..turnin 25661
..accept 25672
step
goto 85.5,65.5
.' Click Sparkleshell Snappers |tip They are spiked turtle corpses floating on the water surface in this spot.
.get 10 Creature Carcass |q 25672/1
.' You can find more at [Thousand Needles,83.5,57.2]
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 96.8,72.5
.talk 41060
..turnin 25672
..accept 25704
step
goto 97.2,72.2
.' Click Ajamon's Portal to Tirth's Haunt |tip It looks like a big green swirling portal.
.' Teleport to Mad Magus Tirth |goto 86.1,92.1,0.5 |noway |c |q 25704
step
goto 85.1,91.8
.from Mad Magus Tirth##41131
.' Use your Soul Stick on Mad Magus Tirth's corpse |use Soul Stick##55230
.' Extract Mad Magus Tirth's Soul |q 25704/1
step
goto 86.2,92.1
.' Click Ajamon's Portal to the Southsea Holdfast |tip It looks like a big green swirling portal.
.' Teleport to Ajamon |goto 96.8,72.3,0.5 |noway |c |q 25704
step
goto 96.8,72.5
.talk 41060
..turnin 25704
step
goto 90.2,59.8 |n
.' Follow the path up |goto 90.2,59.8,0.5 |noway |c
step
goto 91.4,57.8
.talk 41190
..turnin 25744
..accept 25756
step
goto 90.7,56.1 |n
.' Follow the path up |goto 90.7,56.1,0.5 |noway |c
step
goto 90.1,53.0
.talk 40082
..accept 25762
step
goto 91.2,53.7
.from Trackmaster Zherin##41199 |tip He will become stunned, you don't have to actually kill him.
.' Click Trackmaster Zherin while he is stunned
.get Horde's Proposal |q 25756/1
step
goto 90.3,55.0 |n
.' Follow the path down |goto 90.3,55.0,0.5 |noway |c
step
goto 91.4,57.8
.talk 41190
..turnin 25756
..accept 25774
step
goto 44.1,37.3 |n
.' Enter the cave underwater |goto 44.1,37.3,0.5 |noway |c
step
goto 42.0,31.5
.' Use your Splithoof Brand next to The Ancient Brazier |use Splithoof Brand##55986 |tip It's a small bowl on the ground with blinking purple coals in it, and smoke rising out of it.
.' Reignite The Ancient Brazier |q 25762/1
.' Click Thousand Needles Iron Pyrite and get Thousand Needles Pyrite Ore Chunks |tip They look like gold mining nodes underwater around this area.
step
goto 42.2,33.0
.from Aquarian##41236
.get The Sacred Flame |q 25762/2
step
goto 44.1,37.3 |n
.' Leave the cave |goto 44.1,37.3,0.5 |noway |c
step
goto 42.8,37.8
.' Click Needles Iron Pyrite |tip They look like gold mining nodes underwater around this area.
.get 8 Needles Pyrite Ore Chunk |q 25774/1
step
goto 90.2,59.8 |n
.' Follow the path up |goto 90.2,59.8,0.5 |noway |c
step
goto 91.4,57.8
.talk 41190
..turnin 25774
..accept 25778
step
goto 90.1,53.0
.talk 40082
..turnin 25762
step
goto 91.3,53.8
.talk 41204
..turnin 25778
..accept 25790
step
goto 91.4,57.8
.talk 41190
..turnin 25790
..accept 25796
..accept 25798
step
goto 90.1,51.5
.' Use your Oil Drilling Rig next to the bubbling pond |use Oil Drilling Rig##56011
.' Defend the Oil Drilling Rig |q 25798/1
' |from Galak Mauler##40062+, Galak Wrangler##40063+, Galak Stormer##40061+
.kill 15 Splithoof Heights centaurs |q 25796/1
step
goto 91.4,57.8
.talk 41190
..turnin 25796
..turnin 25798
..accept 25813
step
ding 43
step
goto 87.5,46.5 |n
.' Follow the path up |goto 87.5,46.5,0.5 |noway |c
step
goto 89.5,47.0
.' Click the Horn Mouthpiece |tip It's the very tip of the bottom of the big spiral horn.
.' Blow the Horn |q 25813/1
.kill Whrrrl##41334 |q 25813/2
step
goto 91.4,57.8
.talk 41190
..turnin 25813
..accept 25825
step
goto 75.9,74.6
.talk 40027
..turnin 25825
..accept 25835
..accept 27446
step
goto 46.4,57.9
.talk 41392
..turnin 25835
..accept 25869
step
goto 46.8,56.0
.talk 41444
..accept 25871
step
goto 44.6,50.0
.' Follow the path up
.talk 45271
..accept 25873
step
goto 45.2,50.2
.' Click the Captured Feralas Sentinel |tip She's chained to a big totem pole.
.' Free the Captured Feralas Sentinel |q 25871/1
step
goto 46.1,51.5
.from Cliffwatcher Longhorn##10537
.get Longhorn's Horn |q 25873/1
step
goto 42.1,49.4
.kill 10 Grimtotem Invader##41431+ |q 25869/1
step
goto 46.8,56.0
.talk 41444
..turnin 25871
..accept 27275
step
goto 46.4,57.9
.talk 41392
..turnin 25869
..turnin 25873
step
goto 42.2,48.2
.' Go onto the bridge, she will spawn next to you
.talk 45277
..turnin 27275
..accept 27310
..accept 27312
..accept 27314
step
goto 43.8,43.7
.kill Isha Gloomaxe##45387 |q 27314/1
.' Click Grimtotem Weapon Racks and Burn them
step
goto 43.4,43.4
.' Click The Rattle of Bones |tip It looks like a small white rattle laying on a blue rug next to a big tent.
..accept 27316
.' Click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 45277
..turnin 27314
..accept 27318
..turnin 27316
..accept 27320
..accept 27325
step
goto 39.2,41.4
.kill Elder Stormhoof##45410 |q 27318/1
.' Click Grimtotem Weapon Racks and Burn them
step
goto 38.7,41.9
.' Click The Writ of History |tip It looks like a long white scroll hanging on a totem pole.
.get The Writ of History |q 27320/1
.' Click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 45277
..turnin 27318
..accept 27323
..turnin 27320
step
goto 34.1,40.1
.kill Grundig Darkcloud##45418 |q 27323/1
.' Click Grimtotem Weapon Racks and Burn them
step
goto 34.0,37.1
.' Click The Drums of War |tip It looks like some bongo drums sitting on the ground inside a small tent hut.
.get The Drums of War |q 27325/1
.' Click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 45277
..turnin 27323
..accept 27327
..turnin 27325
step
goto 37.8,26.6
.kill Arnak Grimtotem##45438 |q 27327/1
.' Click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 45277
..turnin 27327
..accept 27357
step
goto 39.1,25.7
.talk 45442
..turnin 27357
..accept 27329
.' Click Grimtotem Weapon Racks and Burn them
step
goto 38.1,35.4
.' Use your Shu'halo Artifacts in the middle of the circle of rocks |use Shu'halo Artifacts##61043
.' Defeat Arikara |q 27329/1
.' Click Grimtotem Weapon Racks and Burn them
step
goto 34.0,37.1
' |from Grimtotem Geomancer##45381+, Grimtotem Reaver##45385+, Grimtotem Stomper##45383+
.kill 20 Grimtotem on Darkcloud Pinnacle |q 27312/1
.' Click Grimtotem Weapon Racks |tip They look like wooden stands around this area with a bunch of weapons leaning on them.
.' Burn 8 Weapon Racks |q 27310/1
step
'Next to you:
.talk 45277
..turnin 27310
..turnin 27312
step
goto 39.1,25.7
.talk 45442
..turnin 27329
..accept 28085
step
ding 44
step
'Jump down into the water
.' Skip to the next step in the guide
step
goto 13.8,33.8 |n
.' Follow this path |goto 13.8,33.8,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28085
..accept 28086
..accept 28087
step
goto 12.0,34.3
.from Twilight Trapper##47479+
.get 8 Trapper Net |q 28087/1
.' Click Highperch Pridelings |tip They look like small wind riders trapped on the ground around this area.
.' Free 12 Pridelings |q 28086/1
step
goto 12.9,34.0
.talk 47471
..turnin 28086
..turnin 28087
..accept 28088
step
goto 13.2,39.7 |n
.' Follow the path up |goto 13.2,39.7,0.5 |noway |c
step
goto 17.8,40.9
.from Twilight Subduer##47487+ |tip Kill the 4 Twilight Subduers who are holding a rope attached to Heartrazor, who is flying in the air.
.' Release Heartrazor |q 28088/1
step
goto 14.7,39.5 |n
.' Follow the path down |goto 14.7,39.5,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28088
..accept 28098
step
goto 12.9,34.0
.' Click Heartrazor |tip He's a blue wind rider.
.' Get a flight from Heartrazor |q 28098/1
step
goto 19.5,48.9
.from Twilight Skymaster Richtofen##47510
.' Deal with Twilight Skymaster Richtofen |q 28098/2
step
goto 15.9,45.8
.' Click Heartrazor |tip He's a blue wind rider.
.' Fly back to Pao'ka Swiftmountain |goto 12.8,34.1,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28098
..accept 28124
step
goto 30.5,49.3
.talk 47580
..turnin 28124
..accept 28125
..accept 28127
step
goto 28.9,54.1
.from Twilight Jailer##47630+
.' Free 5 Bulwark Prisoners |q 28127/1
.from Bulwark Defender##47583+, Twilight Jailer##47630+, Twilight Magus##47585+
.get 10 Twilight's Hammer Armor |q 28125/1
step
goto 30.5,49.3
.talk 47580
..turnin 28125
..turnin 28127
..accept 28139
..accept 28136
step
'Use your Bulwark Disguise |use Bulwark Disguise##63071
.' Wear the Bulwark Disguise |havebuff INTERFACE\ICONS\inv_helm_plate_twilighthammer_c_01 |q 28136
step
goto 30.0,54.1
.talk 47620 |tip He's at the top of the tower.
..' Tell him to look behind him!
.' Assassinate Commander Fastfuse |q 28136/2
step
goto 28.0,57.4
.talk 47619
..' Tell him to look behind him!
.' Assassinate Elementalist Starion |q 28136/3
step
goto 31.2,59.7
.talk 47602
..' Tell him to look behind him!
.' Assassinate Codemaster Deethuk |q 28136/1
.' Click the Codemaster's Code Device |tip It's a machine with a scroll spinning around it.
.get Codemaster's Code |q 28139/1
step
goto 30.5,49.3
.talk 47580
..turnin 28139
..turnin 28136
..accept 28140
step
'Use your Bulwark Disguise |use Bulwark Disguise##63071
.' Wear the Bulwark Disguise |havebuff INTERFACE\ICONS\inv_helm_plate_twilighthammer_c_01 |q 28140
step
goto 35.9,60.6
.' Click Magatha's Bonds Controller |tip It looks like a metal container with a ring on top of it.
.' Disable the Controller |q 28140/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28140
..accept 28142
step
goto 50.1,62.6
.talk 47745
..turnin 28142
..accept 28157
..accept 28158
step
goto 52.8,58.6
.' Click the Twilight Element of Water |tip It looks like a floating hourglass shaped container.
.get Twilight Element of Water |q 28157/4
step
goto 53.3,59.3
.from Bound Fury##47763
.' Unbind the Bound Fury |q 28158/1
step
goto 57.6,59.6
.' Click the Twilight Element of Air |tip It looks like a floating hourglass shaped container.
.get Twilight Element of Air |q 28157/1
step
goto 57.4,61.0
.from Bound Vortex##47766
.' Unbind the Bound Vortex |q 28158/2
step
goto 60.5,64.5
.' Click the Twilight Element of Fire |tip It looks like a floating hourglass shaped container.
.get Twilight Element of Fire |q 28157/3
step
goto 53.3,63.7
.' Click the Twilight Element of Earth |tip It looks like a floating hourglass shaped container.
.get Twilight Element of Earth |q 28157/2
step
goto 50.1,62.6
.talk 47745
..turnin 28157
..turnin 28158
..accept 28159
step
goto 54.8,62.4
.' Use your Elemental Nullifier on Animus |use Elemental Nullifier##63104 |tip He's floating in the air.
.from Animus##47777
.get The Doomstone |q 28159/1
step
goto 50.1,62.6
.talk 47745
..turnin 28159
..accept 28160
step
ding 45
step
goto 75.9,74.6
.talk 40027
..turnin 28160
step
'Go south to Tanaris |goto Tanaris |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (45-47)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (47-48)
startlevel 45.21
dynamic on
step
goto Tanaris,52.6,27.0
.talk 7733
.home Gadgetzan
step
goto 52.3,28.1
.talk 39178
..accept 25112
step
goto 51.4,29.5
.talk 7823
.fpath Gadgetzan
step
goto 51.2,29.9
.talk 38535
..turnin 27446
..accept 25048
..accept 25049
step
goto 51.3,36.2
.from Glasshide Basilisk##5419+
.' Use your Butcherbot Control Gizmo on Glasshide Basilisk corpses |use Butcherbot Control Gizmo##52715
.' Harvest 10 Glasshide Basilisks |q 25112/1
step
goto 53.8,39.6
.kill 8 Tidal Strider##39022+ |q 25049/1
.' Click Steamwheedle Crates |tip They are small wooden crates floating in the water around this area.
.get 7 Steamwheedle Supplies |q 25048/1
step
'Hearth to Gadgetzan |goto 52.6,27.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 52.3,28.1
.talk 39178
..turnin 25112
..accept 25111
step
goto 51.2,29.9
.talk 38535
..turnin 25048
..turnin 25049
..accept 25050
step
goto 53.4,27.4
.' Click the Steamwheedle Rescue Balloon |tip It's a big hot air balloon on the beach.
.' Use your Deliver Life-Rocket ability on your hotbar on Steamwheedle survivors on the ground
.' Use your Pirate-Destroying Bomb on Southsea Blockaders on the ground
.' Deliver 5 Life Rockets |q 25050/1
.kill 40 Southsea Blockader##40583+ |q 25050/2
step
'Use the Emergency Rocket Pack ability on your hotbar
.' Return to Gadgetzan |goto 53.1,28.1,0.5 |noway |c |q 25050
step
goto 51.2,29.9
.talk 38535
..turnin 25050
..accept 25121
step
goto 49.6,34.9
.from Fire Roc##5429+
.' Use your Butcherbot Control Gizmo on Fire Roc corpses |use Butcherbot Control Gizmo##52715
.' Harvest 12 Fire Rocs |q 25111/1
.' You can find more Fire Rocs as [Tanaris,46.3,38.8]
step
goto 52.3,28.1
.talk 39178
..turnin 25111
..accept 25115
step
goto 48.1,28.3
.from Blisterpaw Hyena##5426+
.' Use your Butcherbot Control Gizmo on Blisterpaw Hyena corpses |use Butcherbot Control Gizmo##52715
.' Harvest 10 Blisterpaw Hyenas |q 25115/1
step
goto 52.3,28.1
.talk 39178
..turnin 25115
..accept 25091
step
goto 42.5,24.0
.talk 7804
..turnin 25091
step
goto 42.5,24.2
.talk 40580
..accept 25521
step
goto 42.3,23.8
.talk 38927
..accept 25021
step
goto 38.3,24.8
.from Sandfury Firecaller##5647+, Sandfury Hideskinner##5645+, Sandfury Axe Thrower##5646+
.get 6 Fistful of Blood |q 25021/1
step
goto 42.3,23.8
.talk 38927
..turnin 25021
..accept 25025
step
goto 44.4,25.2
.from Duneclaw Lasher##40717+, Duneclaw Matriarch##40656+
.get 6 Duneclaw Stinger |q 25521/1
step
goto 42.5,24.2
.talk 40580
..turnin 25521
..accept 25522
step
goto 46.1,23.6
.from Gargantapid##40581 |tip It's a big pink scorpid inside this small cave.
.get Gargantapid's Poison Gland |q 25522/1
step
goto 42.5,24.2
.talk 40580
..turnin 25522
step
goto 44.9,44.9
.from Zakkaru##40648
.get Sealed Sang'thraze |q 25025/1
step
goto 42.3,23.8
.talk 38927
..turnin 25025
..accept 25026
step
ding 46
step
goto 38.9,23.9
.' Click Shallow Graves |tip They look like piles of sand around this area.
.from Sandfury Zombie##38909+
.get 6 Darkest Mojo |q 25026/1
step
goto 42.3,23.8
.talk 38927
..turnin 25026
..accept 25032
step
goto 39.1,34.9
.' Click Jang'thraze the Protector |tip It looks like a mound of dirt underwater in this small pool.
.from Mazoga##38968
.' Discover the Fate of Jang'thraze |q 25032/1
step
goto 42.5,24.0
.talk 7804
..turnin 25032
step
goto 67.8,41.8 |n
.' Enter Lost Rigger Cove |goto 67.8,41.8,0.5 |noway |c
step
goto 72.2,45.2
.talk 38704
..turnin 25121
..accept 25052
..accept 25053
..accept 25054
step
goto 72.6,46.2
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Northeast Shack |q 25053/3
.' Click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 71.8,46.8
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Northwest Shack |q 25053/1
.' Click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 72.0,47.9
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Southwest Shack |q 25053/2
.' Click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 72.2,47.0
' |from Southsea Swashbuckler##7858+, Southsea Pirate##7855+
.kill 15 Southsea Pirates |q 25052/1
.' Click Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
.get 10 Pirate Booty |q 25054/1
step
goto 72.2,45.2
.talk 38704
..turnin 25052
..accept 26886
..turnin 25053
..turnin 25054
..accept 26887
step
goto 74.5,45.6
.kill Southsea Taskmaster##40593 |q 26886/1 |tip They are downstairs in this boat.
step
goto 72.0,49.9
.from Southsea Musketeer##40632+, Southsea Strongarm##40635+
.get 20 Gold Filling |q 26887/1
step
goto 72.2,45.2
.talk 38704
..turnin 26886
..turnin 26887
..accept 25166
step
goto 71.0,55.8
.kill Captain Dreadbeard##38749 |q 25166/1
step
goto 72.2,45.2
.talk 38704
..turnin 25166
..accept 26889
step
goto 55.9,60.6
.talk 41214
.fpath Bootlegger Outpost
step
goto 55.6,60.9
.talk 38706
..turnin 26889
..accept 24932
..accept 25072
step
goto 56.3,61.8
' |from Hazzali Stinger##5450+, Hazzali Worker##5452+, Hazzali Swarmer##5451+
.kill 15 Hazzali Silithid |q 24932/1
.from Hazzali Cocoon##39081+
.' Rescue 8 Goblins |q 25072/1
step
goto 55.6,60.9
.talk 38706
..turnin 24932
..accept 24933
..turnin 25072
step
goto 55.2,60.3
.talk 11811
..accept 24931
step
goto 55.6,58.3
.from Glasshide Gazer##5420+
.get 5 Ocular Crystal |q 24931/1
.from Rabid Blisterpaw##5427+
.get 6 Hyena Chunk |q 24933/1
step
goto 55.2,60.3
.talk 11811
..turnin 24931
step
goto 55.6,60.9
.talk 38706
..turnin 24933
..accept 24951
step
ding 47
step
goto 53.4,62.7
.' Use your Bootlegger Bug Bait on a Hazzali Swarmer |use Bootlegger Bug Bait##52031
.' Take control of a Hazzali Swarmer |havebuff Interface\Icons\Ability_Hunter_Pet_Silithid |q 24951
step
goto 55.6,60.9
.' Stand next to Zeke Bootscuff |tip Don't mount while running back to Zeke Bootscuff, or you will lose your Hazzali Swarmer and not get credit.
.' Wrangle a Swarmer |q 24951/1
step
goto 55.6,60.9
.talk 38706
..turnin 24951
..accept 24953
step
goto 55.2,60.3
.talk 11811
..' Tell him you're ready to pilot our silithid
.' Start mind-controlling a Hazzali Swarmer |invehicle |q 24953
step
goto 54.4,69.9 |n
.' Enter the hive |goto 54.4,69.9,0.5 |noway |c
step
goto 54.5,72.1
.' Use the Sense Pheromones ability on your hotbar and follow the orange trail to this spot
.' Use the Detonate Silithid ability on your hotbar
.' Destroy the Hive |q 24953/1
step
goto 55.6,60.9
.talk 38706
..turnin 24953
step
goto 55.2,60.3
.talk 11811
..accept 25061
step
goto 49.3,79.4 |n
.' Follow the path |goto 49.3,79.4,0.5 |noway |c
step
goto 50.0,82.9
.talk 39059
..turnin 25061
..accept 25060
..accept 25062
step
goto 50.8,90.8
.' Click the Bilgewater Footlocker |tip They look like a small green crates sitting on the ground around this area.
.get Salt-Crusted Journal |q 25062/1
.kill 10 Crazed Bilgewater Survivor##39020+ |q 25060/1
step
goto 50.0,82.9
.talk 39059
..turnin 25060
..turnin 25062
..accept 25063
step
goto 54.3,92.7
.from Surf Glider##5431+
..get Turtle-Digested Key |q 25063/1
step
goto 50.0,82.9
.talk 39059
..turnin 25063
..accept 25065
step
goto 53.6,89.5
.from Meatface##39061
.get Meatface's Locked Chest |q 25065/1
step
goto 50.0,82.9
.talk 39059
..turnin 25065
..accept 28881
step
goto 49.4,80.6 |n
.' Follow the path out of the beach area |goto 49.4,80.6,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (47-48)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (48-49)
startlevel 47.61
dynamic on
step
goto Tanaris,40.1,77.0
.talk 40109
..turnin 28881
..accept 25420
..accept 25559
..accept 25565
step
goto 40.3,77.2
.talk 38578
..accept 26895
step
goto 40.0,77.5
.talk 40827
.fpath Southmoon Ruins
step
goto 35.5,75.7
.kill 6 Sandstone Golem##38914+ |q 25420/1
step
goto 39.7,71.0
.kill 10 Reliquary Digger##38997+ |q 25559/1
.' Click Ancient Hieroglyphs |tip They look like pieces of broken stone tablets laying on the ground around this area.
.get 5 Ancient Hieroglyphs |q 25565/1
step
goto 40.1,77.0
.talk 40109
..turnin 25420
..turnin 25559
..turnin 25565
..accept 25566
step
goto 37.7,79.1 |n
.' Enter Uldum |goto 37.7,79.1,0.5 |noway |c
step
goto Uldum,84.5,43.3
.' Click the Antediluvean Chest |tip It looks like a big stone box at the end of the hallway.
..turnin 25566
..accept 25070
step
goto 84.5,42.3
.from Antechamber Guardian##39077
.' Defeat the Antechamber Guardian |q 25070/1
step
goto 84.5,43.3
.' Click the Antediluvean Chest |tip It looks like a big stone box at the end of the hallway.
..turnin 25070
..accept 25421
step
goto Tanaris,37.7,79.1 |n
.' Leave Uldum |goto Tanaris,37.7,79.1,0.5 |noway |c
step
goto Tanaris,40.1,77.0
.talk 40109
..turnin 25421
step
'Hearth to Gadgetzan |goto 52.6,27.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.8,28.1
.talk 39034
..turnin 26895
step
ding 48
step
goto 51.4,29.5
.talk 7823
.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
step
goto Ashenvale,59.7,62.9 |n
.' Go to this spot |goto Ashenvale,59.7,62.9,0.5 |noway |c
step
'Go north to Felwood |goto Felwood |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (48-49)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (49-51)
startlevel 48.10
dynamic on
step
goto Felwood,51.5,80.9
.talk 22931
.fpath Emerald Sanctuary
step
goto 51.4,80.4
.talk 11554
..accept 28100
step
goto 51.1,80.5
.talk 10923
..accept 27997
step
goto 50.9,80.1
.talk 10921
..accept 28148
step
goto 51.5,83.7
.' Click the Totem of Ruumbo |tip It looks like a big wooden totem of a face.
..turnin 28100
..accept 27994
..accept 27989
step
goto 55.6,84.1
.from Angerclaw Bear##8956+, Felpaw Wolf##8959+
.get 10 Corrupted Pelt |q 28148/1
step
goto 49.9,86.2
' |from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.kill 15 Deadwood Furbolg |q 27994/1
.' Use Ruumbo's Honey Stick next to the wooden posts |use Ruumbo's Honey Stick##62819 |tip They look like yellow glowing bee hives on wooden post branches around this area.
.get 10 Deadwood Honey Glob |q 27989/1
step
goto 44.0,82.8 |n
.' Follow the path up |goto 44.0,82.8,0.5 |noway |c
step
goto 42.8,84.6
' |from Jadefire Satyr##7105+, Jadefire Felsworn##7109+
.kill 12 Jadefire Glen satyr |q 27997/1
step
goto 44.0,82.8 |n
.' Leave Jadefire Glen |goto 44.0,82.8,0.5 |noway |c
step
goto 50.9,80.1
.talk 10921
..turnin 28148
step
goto 51.1,80.5
.talk 10923
..turnin 27997
step
goto 51.5,83.7
.' Click the Totem of Ruumbo |tip It looks like a big wooden totem of a face.
..turnin 27994
..turnin 27989
..accept 27995
.' Discover Ruumbo's Secret |q 27995/1
step
goto 51.4,80.4
.talk 11554
..turnin 27995
step
goto 51.1,80.5
.talk 10923
..accept 28150
step
goto 41.9,72.0
.talk 47341
..turnin 28150
..accept 28000
step
goto 47.9,73.3
.' Fight Impsy
.' Use your Enchanted Imp Sack on Impsy when he is weakened |use Enchanted Imp Sack##62899 |tip You will see a message pop up saying "Catch Impsy in the sack!" when you are able to capture Impsy.
.' Capture Impsy |q 28000/1
step
goto 41.9,72.0
.talk 47341
..turnin 28000
step
goto 41.9,72.0
.talk 47366
..accept 28049
step
goto 41.1,71.4
.from Cursed Ooze##7086+
.get 8 Cursed Ooze |q 28049/1
step
goto 41.9,72.0
.talk 47366
..turnin 28049
..accept 28044
step
goto 41.0,75.8
.' Stand on the Mark of Tichondrius |tip It's a green glowing symbol on the ground.
.' Use your Phaseblood Potion |use Phaseblood Potion##62920
.' Shift into the Nether |havebuff Interface\Icons\Spell_Shadow_ImpPhaseShift |q 28044
step
goto 42.3,79.9
.from Vorlus##47398
.get Claw of Tichondrius |q 28044/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28044
step
goto 41.9,72.0
.talk 47341
..accept 28113
step
goto 42.0,71.8
.talk 9116
..accept 28102
step
goto 37.2,66.0 |n
.' Follow the path up |goto 37.2,66.0,0.5 |noway |c
step
goto 33.4,65.7
.' Use your Claw of Tichondrius next to the fire blocking the path to make it go away |use Claw of Tichondrius##63031
.kill Xavathras##9454 |q 28113/1
step
goto 37.6,66.0
.kill 8 Jadefire Rogue or Shadowstalker |q 28102/1
' |from Jadefire Rogue##7106, Jadefire Shadowstalker
step
goto 41.9,72.0
.talk 47341
..turnin 28113
..accept 28288
step
goto 42.0,71.8
.talk 9116
..turnin 28102
..accept 28152
step
goto 41.2,76.2
.' Use Delaris's Prism near imps around this area |use Delaris's Prism##63395
.' Terrify 20 Imps |q 28288/1
step
goto 41.9,72.0
.talk 47341
..turnin 28288
step
goto 44.3,61.9
.talk 43079
.fpath Wildheart Point
step
goto 44.0,61.8
.talk 10922
..turnin 28152
..accept 28116
step
goto 44.0,61.9
.talk 48599
.home Wildheart Point
step
goto 44.1,62.0
.talk 11019
..accept 28121
step
goto 37.1,60.7
.from Jaedenar Guardian##7113+, Jaedenar Cultist##7112+, Jaedenar Adept##7115+, Jaedenar Hound##7125+
.' Slay 12 Jaedenar Forces |q 28121/1
.' Click Crying Violets |tip They look like small pink flowers on the ground around this area.
.get 8 Crying Violet |q 28116/1
step
goto 36.4,58.3
.talk 51664
..turnin 28116
..turnin 28121
..accept 28119
step
goto 36.0,59.3
.' Use your Empty Canteen in the green water |use Empty Canteen##12922
.get Corrupt Moonwell Water |q 28119/1
step
goto 36.4,58.3
.talk 51664
..turnin 28119
..accept 28128
..accept 28129
..accept 28126
step
goto 36.1,58.1 |n
.' Enter Shadow Hold |goto 36.1,58.1,0.5 |noway |c
step
goto 37.0,55.5
.' Follow the path down
.kill Prince Xavalis##9877 |q 28129/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28129
..accept 28131
step
goto 37.0,55.9
.' Click the Brazier of Pain |tip It looks like a bowl on the ground with purple fire in it.
.' Extinguish the Brazier of Pain |q 28126/1
step
goto 37.1,54.9
.' Follow the path
.' Click the Brazier of Hatred |tip It looks like a bowl on the ground with purple fire in it.
.' Extinguish the Brazier of Hatred |q 28126/4
step
goto 37.4,53.1
.' Follow the path deeper into Shadow Hold
.' Click the Brazier of Suffering |tip It looks like a bowl on the ground with purple fire in it.
.' Extinguish the Brazier of Suffering |q 28126/3
step
goto 38.3,52.5
.' Click the Brazier of Malice |tip It looks like a bowl on the ground with purple fire in it.
.' Extinguish the Brazier of Malice |q 28126/2
step
ding 49
step
goto 38.9,50.4
.' Follow the path passed some oozes
.kill Moora##9861|q 28131/1
.kill Salia##9860 |q 28131/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28131
..accept 28153
step
goto 40.5,47.8 |n
.' Follow the path down |goto 40.5,47.8,0.3 |noway |c
step
goto 39.5,47.0
.kill Shadow Lord Fel'dan##9517 |q 28153/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28153
..accept 28155
step
goto 38.4,47.8
.' Follow the path up the ramp
.kill Lord Banehollow##9516 |q 28155/1
step
'All around inside this cave:
.from Jaedenar Hunter##7126+, Jaedenar Warlock##7120+, Jaedenar Darkweaver##7118+, Jaedenar Legionnaire##9862+, Jaedenar Enforcer##7114+
.' Slay 12 Shadow Hold Defenders |q 28128/1
step
goto 38.1,47.9
.' Click the Portal to Wildheart Point |tip It's a pink swirling portal.
..' Step through the portal and return to Wildheart Point |goto 44.1,61.9,0.5 |noway |c
step
goto 44.1,61.8
.talk 47617
..turnin 28155
step
goto 44.0,61.8
.talk 10922
..turnin 28126
step
goto 44.1,62.0
.talk 11019
..turnin 28128
step
goto 44.1,61.8
.talk 47617
..accept 28305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (49-51)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)
startlevel 49.43
dynamic on
step
goto Felwood,41.3,49.9
.talk 47696
..turnin 28305
..accept 28207
step
goto 41.3,50.0
.talk 47692
..accept 28190
step
goto 41.8,49.7
.kill 8 Tainted Ooze##7092+ |q 28190/1
.' Click Emerald Shimmercaps |tip They look like green glowing mushrooms on the ground around this area.
.get 7 Emerald Shimmercap |q 28207/1
step
goto 41.3,49.9
.talk 47696
..turnin 28207
step
goto 41.3,50.0
.talk 47692
..turnin 28190
step
goto 41.3,49.9
.talk 47696
..accept 28208
step
goto 38.6,53.8
.from Winna's Kitten##47687
.get Kitty's Eartag |q 28208/1
step
goto 41.3,49.9
.talk 47696
..turnin 28208
..accept 28213
step
goto 41.3,50.0
.talk 47692
..accept 28214
step
goto 35.6,52.8
.' Use Kitty's Eartag on Winna Hazzard |use Kitty's Eartag##63284
.kill Winna Hazzard##47679 |q 28213/1
step
goto 35.4,51.7
.kill 6 Bloodvenom Slimeslave##47675+ |q 28214/1
step
goto 41.3,50.0
.talk 47692
..turnin 28214
step
goto 41.3,49.9
.talk 47696
..turnin 28213
..accept 28306
step
goto 43.3,30.4
.talk 48459
..turnin 28306
..accept 28360
..accept 28361
step
goto 43.6,28.7
.talk 43073
.fpath Whisperwind Grove
step
goto 43.9,27.9
.talk 48339
..accept 28341
..accept 28342
step
goto 44.0,27.9
.talk 48349
..accept 28358
..accept 28359
step
goto 44.8,29.2
.talk 48215
.home Whisperwind Grove
step
goto 49.6,35.5 |n
.' Follow the path south |goto 49.6,35.5,0.5 |noway |c
step
goto 48.0,39.9
.from Kroshius##48344
.get Kroshius' Infernal Core |q 28359/1
step
goto 45.3,39.4
.from Entropic Horror##9879+
.get 8 Entropic Essence |q 28341/1
.kill 6 Infernal Sentry##47675+ |q 28358/1
.' Click Infernal Debris |tip They look like small gray rocks on the ground around this area.
.get 9 Infernal Debris |q 28342/1
step
goto 41.1,35.9
.kill 8 Felrot Courser##48455+ |q 28360/1
.' Click Tainted Squirrels |tip They are small squirrels that run around on the ground around this area.
.' Scrub 6 Tainted Squirrels |q 28361/1
step
goto 43.3,30.4
.talk 48459
..turnin 28360
..turnin 28361
..accept 28374
step
goto 43.8,31.1
.' Click Whisperwind Lashers |tip They look like big flowers on the ground around this area.
.' Check 7 Whisperwind Lashers |q 28374/1
step
goto 43.3,30.4
.talk 48459
..turnin 28374
step
goto 43.5,28.2
.talk 47843
..accept 28217
step
goto 43.9,28.2
.talk 48126
..accept 28229
step
goto 44.0,28.4
.' Stand in the water
.' Use your Empty Moonwell Vial |use Empty Moonwell Vial##63332
.collect Whisperwind Moonwell Water##63387 |q 28229
step
goto 43.9,27.9
.talk 48339
..turnin 28341
..turnin 28342
step
goto 44.0,27.9
.talk 48349
..turnin 28358
..turnin 28359
step
ding 50
step
goto 48.6,25.2
.' Use your Whisperwind Moonwell Water on this hill |use Whisperwind Moonwell Water##63387
.' Water Irontree Hill |q 28229/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28229
..accept 28220
step
'Next to you:
.talk 48032
..accept 28219
step
goto 48.7,28.1
.kill 10 Ironwood Buzzer##48038+ |q 28219/1
.' Stand next to the small piles of dirt on the ground around this area
.' Produce 7 Rich Soil |q 28220/1
step
'Next to you:
.talk 48032
..turnin 28220
..turnin 28219
..accept 28222
step
'Next to you:
.talk 48042
..accept 28221
step
goto 48.2,23.7
.kill 10 Irontree Stomper##7139+ |q 28221/1
.' Stand in the white spotlights of light around this area
.' Bask in 5 Sunbeams |q 28222/1
step
'Next to you:
.talk 48042
..turnin 28222
..turnin 28221
..accept 28224
step
goto 53.3,24.1
.kill Withered Protector##7149 |q 28224/1
step
'Next to you:
.talk 48044
..turnin 28224
..accept 28228
step
goto 48.7,25.2
.' Bring the Protector Back to the Hill |q 28228/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28228
step
goto 45.6,20.1
.talk 47923
..' Tell him you're here to put an end to his killing
.kill Feronas Sindweller##47923 |q 28217/1
step
goto 45.6,20.1
.talk 47923
..turnin 28217
..accept 28218
step
goto 45.3,19.8
.from Arthas##47733
.' Defeat Arthas |q 28218/1
step
goto 45.6,20.1
.talk 47923
..turnin 28218
..accept 28256
step
goto 45.3,19.8
.' Fight the mobs that spawn
.' Obtain the Skull of Gul'dan |q 28256/1
step
goto 45.6,20.1
.talk 47923
..turnin 28256
..accept 28257
step
goto 45.3,19.8
.from Tichondrius##47917
.' Defeat Tichondrius |q 28257/1
step
goto 45.6,20.1
.talk 47923
..turnin 28257
..accept 28261
step
goto 47.9,18.1 |n
.' Follow the path up |goto 47.9,18.1,0.5 |noway |c
step
goto 46.2,16.4
.' Use your Sindweller Blindfold |use Sindweller Blindfold##63419
.' Wear the Sindweller Blindfold |havebuff INTERFACE\ICONS\inv_misc_bandana_01 |q 28261
step
goto 43.8,16.2
.kill 12 Jadefire Shifter##48154+ |q 28261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28261
..accept 28264
step
goto 44.8,29.2
.' Go to the top of the tower
.talk 47842
..' Tell him he's accused of being a demon in disguise
.kill Arch Druid Navarax##47842 |q 28264/1
step
goto 43.5,28.2
.talk 47843
..turnin 28264
step
ding 51
step
goto 44.3,28.1
.talk 48491
..accept 28381
step
goto 43.6,28.7
.talk 43073
..' Tell her you've got a ride to Talonbranch Glade courtesy of James Hallow
.' You will fly to Talonbranch Glade |goto 60.6,25.3,0.5 |noway |c
step
goto 60.5,25.3
.talk 12578
.fpath Talonbranch Glade
step
goto 61.8,26.8
.talk 47931
..turnin 28381
..accept 28382
step
goto 61.8,26.8
.talk 47931
.home Talonbranch Glade
step
goto 61.9,26.7
.talk 48492
..accept 28383
step
goto 62.1,23.3
.kill 8 Irontree Chopper##48453+ |q 28382/1
.' Use Swiftwind Switch near Talonbranch Wisps |use Swiftwind Switch##64300 |tip They look like little balls of light around this area.
.' Capture 5 Talonbranch Wisps |q 28383/1
step
goto 61.9,26.7
.talk 48492
..turnin 28383
step
goto 61.8,26.8
.talk 47931
..turnin 28382
..accept 28384
step
goto 56.8,18.5
.talk 48493
..turnin 28384
..accept 28337
step
goto 54.5,18.3
.kill 9 Irontree Shredder##48259+ |q 28337/1
step
goto 56.8,18.5
.talk 48493
..turnin 28337
..accept 28385
..accept 28386
step
goto 55.6,18.6 |n
.' Enter the cave |goto 55.6,18.6,0.5 |noway |c
step
goto 60.5,22.3
.' Click Irontree Explosives and get Irontree Explosives |tip They look like small bombs laying on the ground inside the cave.
.' Click the Master Control Pump |tip It's a big shaking machine at the end of the path inside this cave.
..turnin 28385
step
goto 55.6,18.6
.' Click Irontree Explosives |tip They look like small bombs laying on the ground inside the cave.
.get 8 Irontree Explosives |q 28386/1
step
goto 55.6,18.6 |n
.' Leave the cave |goto 55.6,18.6,0.5 |noway |c
step
goto 56.8,18.5
.talk 48493
..turnin 28386
..accept 28387
..accept 28388
step
goto 54.6,17.8
.kill 7 Panicking Worker##48331+ |q 28388/1
.' Use your Stolen Irontree Explosives next to Oil Gushers |use Stolen Irontree Explosives##64301 |tip They look like spots on the ground with oil shooting upward around this area.
.' Ignite 7 Oil Gushers |q 28387/1
step
goto 56.8,18.5
.talk 48493
..turnin 28387
..turnin 28388
..accept 28389
step
'Hearth to Talonbranch Glade |goto 61.8,26.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 61.8,26.8
.talk 47931
..turnin 28389
..accept 28392
step
goto 64.0,10.3
.talk 15395
..turnin 28392
..accept 28338
..accept 28366
step
goto 64.1,10.3
.talk 48461
..accept 28362
step
goto 60.6,9.5
.talk 47556
..turnin 28362
..accept 28364
step
goto 62.1,9.8
.from Chieftain Bloodmaw##9462
.get Drizle's Key |q 28364/1
step
goto 60.6,9.5
.talk 47556
..turnin 28364
step
goto 61.4,9.8
' |from Deadwood Avenger##7157+, Deadwood Shaman##7158+, Deadwood Den Watcher##7156+
.kill 15 Deadwood Furbolg |q 28338/1
.collect Deadwood Ritual Totem##20741 |n
.' Click the Deadwood Ritual Totem in your bags |use Deadwood Ritual Totem##20741
..accept 8470
.' Click Deadwood Weapon Piles |tip They look like small piles of hammers and maces on the ground around this area.
.get 7 Deadwood Weapons |q 28366/1
step
goto 63.2,17.0 |n
.' Go to the road |goto 63.2,17.0,0.5 |noway |c
step
goto 64.0,10.3
.talk 15395
..turnin 28338
..turnin 28366
..accept 28521
step
goto 64.4,10.0 |n
.' Enter the cave |goto 64.4,10.0,0.5 |noway |c
step
goto 64.6,5.4
.talk 11558
..turnin 8470
step
goto 67.4,8.0 |n
.' Follow the path east to Winterspring |goto Winterspring |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)
startlevel 51.96
dynamic on
step
goto Winterspring,21.1,46.2
.talk 11556
..turnin 28521
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 25.2,58.5
.talk 10307
..accept 28540
step
goto 28.9,58.6
.from Rimepelt##48765
.get Rimepelt's Heart |q 28540/1
step
goto 25.2,58.5
.talk 10307
..turnin 28540
step
ding 52
step
goto 24.5,47.6
.' Click the Winterfall Cauldron |tip It looks like a big black pot with green bubbling liquid in it.
..turnin 28464
..accept 28467
step
goto 24.4,48.9
' |from Winterfall Totemic##7441+, Winterfall Pathfinder##7442+, Winterfall Den Watcher##7440+
.kill 15 Winterfall Furbolg |q 28460/1
.get 10 Winterfall Spirit Beads |q 28522/1
.' Kill Winterfall mobs until you randomly accept this quest:
..accept 28656
step
goto 21.1,46.2
.talk 11556
..turnin 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28460
..turnin 28467
..accept 28469
..accept 28530
step
goto 25.2,58.5
.talk 10307
..turnin 28656
step
goto 32.3,50.9
.from Boiling Springbubble##48768+, Scalding Springsurge##48767+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 28.2,54.7
.from Winterfall Runner##10916 |tip They are white furbolgs that walk and run along this road, so you may need to search for one of them.
.get Winterfall Crate |q 28469/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..accept 28470
..turnin 28530
step
goto 36.9,55.6
.kill High Chief Winterfall##10738 |q 28470/1
.collect Crudely-Written Log##12842 |n
.' Click the Crudely-Written Log in your bags |use Crudely-Written Log##12842
..accept 28471
step
goto 25.1,58.5
.talk 9298
..turnin 28470
..turnin 28471
..accept 28472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)
startlevel 52.72
dynamic on
step
goto Winterspring,46.9,53.8
.talk 10920
..turnin 28472
..accept 28479
step
goto 50.7,54.9
.talk 48658
..turnin 28479
..accept 28513
step
goto 49.8,54.4
.from Anguished Highborne##7524+, Suffering Highborne##7523+
.' Release 8 Highborne Spirits |q 28513/1
step
goto 50.7,54.9
.talk 48658
..turnin 28513
..accept 28534
step
goto 50.8,55.0
.talk 48659
..turnin 28534
..accept 28518
step
goto 54.0,57.9
.from Archmage Maenius##48740
.get Memory of Zin-Malor |q 28518/1
step
goto 50.8,55.0
.talk 48659
..turnin 28518
..accept 28535
step
goto 50.7,55.1
.talk 48660
..turnin 28535
..accept 28519
step
goto 50.1,56.2
.from Wretched Spirit##48664+, Wretched Spectre##48665+
.kill 7 Wretched Spirit##48664+ |q 28519/1
step
goto 50.7,55.1
.talk 48660
..turnin 28519
..accept 28536
step
goto 46.9,53.8
.talk 10920
..turnin 28536
..accept 28537
step
goto 46.1,56.8 |n
.' Go to the road |goto 46.1,56.8,0.5 |noway |c
step
goto 49.7,60.8 |n
.' Follow the path up, avoiding the pink bubbles because they will damage you |goto 49.7,60.8,0.5 |noway |c
step
goto 50.7,63.6
.from Shade of the Spiritspeaker##48678
.get Shard of the Spiritspeaker |q 28537/1
step
goto 46.9,53.8
.talk 10920
..turnin 28537
..accept 28848
step
ding 53
step
goto 61.0,48.6
.talk 11138
.fpath Everlook
step
goto 59.7,50.5
.talk 50366
..turnin 28848
step
goto 59.9,51.2
.talk 11118
.home Everlook
step
goto 59.9,49.2
.talk 11191
..accept 28609
step
goto 59.8,49.7
.talk 48965
..turnin 28609
..accept 28610
step
goto 57.3,58.0
.from Frostshard Rumbler##48960+
.get 6 Prime Rubble Chunk |q 28610/1
step
goto 59.8,49.7
.talk 48965
..turnin 28610
..accept 28618
step
goto 59.9,49.2
.talk 11191
..turnin 28618
step
goto 59.8,49.1
.talk 11192
..accept 28624
step
goto 59.8,49.7
.talk 48965
..turnin 28624
..accept 28625
step
goto 54.7,51.1
.from Frostleaf Treant##48952+
.get 10 Fresh-Cut Frostwood |q 28625/1
step
goto 59.8,49.7
.talk 48965
..turnin 28625
..accept 28626
step
goto 59.8,49.1
.talk 11192
..turnin 28626
step
goto 59.8,49.3
.talk 11193
..accept 28627
step
goto 59.8,49.7
.talk 48965
..turnin 28627
..accept 28632
step
goto 59.3,49.8
.talk 10305
..accept 28629
..accept 28630
..accept 28631
step
goto 67.0,55.1
.' Click Echo Three |tip It's a big metal box next to the entrance of this cave.
..turnin 28630
step
goto 69.6,49.8
.' Click the icicle you are hanging from to get down
.from Icewhomp##49235
.get Icewhomp's Pristine Horns |q 28631/1
step
goto 71.4,53.7
.' Click Solid Ice |tip They look like green chunks of ice on the ground all inside this cave.
.get 7 Pure Glacier Ice |q 28632/1
step
goto 67.2,54.5 |n
.' Leave the cave |goto 67.2,54.5,0.5 |noway |c
step
goto 65.5,55.7
.from Ice Thistle Yeti##7458+, Ice Thistle Patriarch##7460+, Ice Thistle Matriarch##7459+
.get 10 Thick Yeti Fur |q 28629/1
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.3,49.8
.talk 10305
..turnin 28629
..turnin 28631
..accept 28722
step
goto 59.8,49.7
.talk 48965
..turnin 28632
..accept 28628
step
goto 59.8,49.3
.talk 11193
..turnin 28628
step
goto 60.1,50.9
.' Use Umi's Mechanical Yeti on Legacki |use Umi's Mechanical Yeti##12928
.' Scare Legacki |q 28722/1
step
goto 59.3,49.8
.talk 10305
..turnin 28722
step
goto 59.8,49.7
.talk 48965
..accept 28674
step
goto 59.7,50.5
.talk 50366
..accept 28847
step
goto 48.7,41.0
.talk 11079
..turnin 28674
..accept 28676
..accept 28701
step
goto 47.0,40.2 |n
.' Enter the cave |goto 47.0,40.2,0.5 |noway |c
step
goto 45.8,41.0
.' Follow the path down
.talk 49407
..turnin 28676
..accept 28703
..accept 28706
step
goto 45.6,41.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49399
..turnin 28706
..accept 28707
step
goto 46.3,42.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49400
..turnin 28707
..accept 28710
step
goto 48.1,40.6
.' Click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down |tip You will have to go up some ramps and then through a small passageway to get over to the balcony she's standing on.
.talk 49402
..turnin 28710
..accept 28718
step
goto 47.7,41.4
.' Start following the path up to the exit of the cave
.kill 10 Coldlurk Creeper##49346+ |q 28703/1
.kill 5 Coldlurk Burrower##49347+ |q 28703/2
.' Click Ancient Urns |tip They look like red vases on the ground inside this cave.
.get 5 Starfall Relic |q 28701/1
step
goto 45.8,41.0
.' Follow the path up
.talk 49407
..turnin 28703
step
ding 54
step
goto 47.1,40.2 |n
.' Leave the cave |goto 47.1,40.2,0.5 |noway |c
step
goto 48.7,41.0
.talk 11079
..turnin 28701
step
goto 55.9,28.1
.talk 493967434
..turnin 28718
..accept 28640
..accept 28828
step
goto 56.0,28.2
.talk 49537
..accept 28638
step
goto 55.9,28.3
.talk 49436
..accept 28637
step
goto 56.8,24.4
.' Click Chillwind Eggs |tip They look like big pink eggs on the ground all around this area.
.get 40 Chillwind Egg |q 28828/1
step
goto 54.3,22.1
.from Frostsaber##7431+, Frostsaber Stalker##7432+
.kill 15 Frostsaber##7431+ |q 28640/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28640
..accept 28641
step
goto 47.3,22.3
' |from Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+
.kill 15 Frostsaber Pride Watcher##7434+ |q 28641/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28641
..accept 28742
step
goto 46.0,17.5
.kill Shy-Rotam##10737 |q 28742/1 |tip He's a white tiger that walks around this area near this huge slanted rock.
step
goto 51.0,30.9
.kill 15 Shardtooth Bear##7444+ |q 28637/1
.kill 15 Winterspring Owl##7455+ |q 28638/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28637
..accept 28719
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28638
..accept 28745
step
goto 55.5,35.3
.kill 15 Winterspring Screecher##7456+ |q 28745/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28745
..accept 28782
step
goto 52.4,33.4
.kill Hell-Hoot##50044 |q 28782/1 |tip He's a big brown owl that flies slowly around this area.
step
goto 52.3,40.4
.kill 15 Shardtooth Mauler##7443+ |q 28719/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28719
..accept 28639
step
goto 57.8,39.0 |n
.' Follow the path up |goto 57.8,39.0,0.5 |noway |c
step
goto 59.7,40.8
.kill Ursius##10806 |q 28639/1 |tip He's a big white bear up the hill inside this small cave.
step
goto 56.0,28.2
.talk 49537
..turnin 28782
step
goto 55.9,28.1
.talk 49396
..turnin 28742
..turnin 28828
step
goto 55.9,28.3
.talk 49436
..turnin 28639
step
ding 55
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28847
..accept 28837
step
goto 55.9,66.5
.from Altered Beast##49161+
.get 5 Mana-Addled Brain |q 28837/1
step
goto 58.0,63.8
.talk 10929
..turnin 28837
..accept 28838
step
goto 57.1,75.4
.' Click the Abandoned Research Samples |tip It looks like a wooden chest under a white canopy with a hole in the top of it in this small camp.
.get Owlbeast Dreamcatcher |q 28838/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28838
..accept 28839
step
goto 61.9,74.7
.talk 50263
..accept 28829
step
goto 64.8,81.0
.' Click the Owlbeast Moon-Totem |tip It looks like a big rock with a hand print on it inside this tiny cave.
.get Essence of the Moon-Totem |q 28839/3
step
goto 65.6,77.6
.' Click the Owlbeast Life-Totem |tip It looks like a scarecrow with a deer head on it inside this tiny cave.
.get Essence of the Life-Totem |q 28839/2
step
goto 65.1,73.9
.' Click the Owlbeast Claw-Totem |tip It looks like a big tree stump with a tiny ghost bear on top of it inside this tiny cave.
.get Essence of the Claw-Totem |q 28839/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28839
..accept 28840
step
goto 64.7,75.9
.from Berserk Owlbeast##7454+, Moontouched Owlbeast##7453+
.kill 12 Crazed Owlbeast##7452+ |q 28829/1
step
goto 61.9,74.7
.talk 50263
..turnin 28829
..accept 28830
..accept 28831
step
goto 57.2,78.1 |n
.' Follow the path down |goto 57.2,78.1,0.5 |noway |c
step
goto 63.2,86.0
.kill Frostilicus##50251 |q 28831/1
step
goto 61.3,85.6
.from Ice Avatar##50250+
.get 7 Winterwater |q 28840/1
step
goto 57.2,78.1 |n
.' Leave Frostwhisper Gorge |goto 57.2,78.1,0.5 |noway |c
step
goto 58.3,77.3
.kill 8 Frostmaul Tumbler##50258+ |q 28830/1
step
goto 61.9,74.7
.talk 50263
..turnin 28830
..turnin 28831
step
goto 58.0,63.8
.talk 10929
..turnin 28840
..accept 28841
..accept 28842
step
goto 55.0,64.0 |n
.' Enter the cave |goto 55.0,64.0,0.5 |noway |c
step
goto 52.2,63.9
.' Use your Empowered Dreamcatcher next to Arcane Tesseracts |use Empowered Dreamcatcher##66060 |tip They look like big blue and pink balls of electricity throughout the cave.
.' Close 5 Arcane Tesseracts |q 28841/1
step
goto 50.0,69.9
.kill Umbranse the Spiritspeaker##50325 |q 28842/1
step
'Use your Bluescale Sigil |use Bluescale Sigil##66061
.' Teleport back to Haleh |goto 58.0,63.7,0.5 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28841
..turnin 28842
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 61.0,48.6
.talk 11138
.' Fly to Gunstan's Dig, Tanaris |goto Tanaris,40.1,77.4,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Silithus (55-56)\\Silithus (55-56)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)
startlevel 55.83
dynamic on
step
goto Silithus,54.9,36.0
.talk 15191
..accept 8280
step
goto 55.0,36.0
.' Click the Wanted Poster: Deathclasp |model 3053
..accept 8283 |tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 55.5,36.8
.talk 15174
.home Cenarion Hold
step
goto 55.4,36.3
.talk 15189
..accept 8277
step
goto 54.5,33.0
.talk 17082
..accept 9415
step
goto 53.2,35.1
.talk 15306
..accept 8318
step
goto 53.2,35.1
.talk 15270
..accept 8320
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8318/1
.collect 20 Encrypted Twilight Text##20404 |q 8323 |future |tip You need 10 extra Encrypted Twilight Text for a future quest.
.kill 10 Twilight Geolord##11881+ |q 8320/1
step
goto 46.2,34.8
.from Sand Skitterer##11738+
.get 8 Sand Skitterer Fang |q 8277/2
.from Stonelash Scorpid##11735+
.get 8 Stonelash Scorpid Stinger |q 8277/1
.kill 15 Dredge Striker##11740+ |q 8280/1
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.4,36.3
.talk 15189
..turnin 8277
..accept 8278
step
goto 54.9,36.0
.talk 15191
..turnin 8280
..accept 8281
step
goto 53.2,35.1
.talk 15306
..turnin 8318
step
goto 53.2,35.2
.talk 15270
..turnin 8320
..accept 8321
step
goto 70.2,16.1 |n
.' Enter the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 73.1,16.5
.' Follow the path inside the cave
.from Vyral the Vile##15202
.get Vyral's Signet Ring |q 8321/1
step
goto 70.2,16.1 |n
.' Leave the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 53.2,35.2
.talk 15270
..turnin 8321
step
goto 53.6,35.3
.talk 15183
..accept 8284
step
goto 31.0,13.6
.click Twilight Tablet Fragments##6419
.get 8 Twilight Tablet Fragment |q 8284/1
step
goto 53.6,35.3
.talk 15183
..turnin 8284
..accept 8285
step
goto 53.2,32.5
.talk 15181
..accept 8304
step
goto 68.7,63.0
.talk 15194
..turnin 8285
..accept 8279
step
goto 39.6,47.0
.talk 17080
..turnin 9415
..accept 9419
step
goto 50.0,49.9
.' Click the Silithyst Geyser |tip They look like small pink rocks with holes in the top of them.  They have smoke floating out of their tops, and they blow up a stream of orange steam occasionally.  You can find them all around Silithus.
.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9419
.' They spawn in various locations, you find more at:
.' [53.2,41.6]
.' [57.1,47.2]
.' [60.0,41.1]
step
goto 39.1,46.9
.' Stand inside the big blue-glowing metal machine
.' Deliver Silithyst |q 9419/1
step
goto 39.6,47.0
.talk 17080
..turnin 9419
step
goto 46.2,39.8
.from Twilight Keeper Havunth##11804 |tip He walks around this area in a purple robe, so you may need to search for him.
.get Twilight Lexicon - Chapter 3 |q 8279/3
step
goto 33.9,34.1
.from Twilight Keeper Mayna##15200 |tip She walks around this area carrying a book, so you may need to search for her.
.get Twilight Lexicon - Chapter 1 |q 8279/1
step
goto 44.9,48.7
.kill 20 Dredge Crusher##11741+ |q 8281/1
.' You can find more Dredge Crushers around [Silithus,37.9,32.4]
step
goto 42.8,63.5
.from Stonelash Flayer##11737+
.get 3 Stonelash Flayer Stinger |q 8278/1
.from Stonelash Pincer##11736+
.get 3 Stonelash Pincer Stinger |q 8278/2
.from Rock Stalker##11739+
.get 3 Rock Stalker Fang |q 8278/3
step
goto 54.9,36.0
.talk 15191
..turnin 8281
step
goto 55.4,36.3
.talk 15189
..turnin 8278
step
goto 55.3,36.2
.talk 15190
..accept 8282
step
goto 46.0,79.4
.talk 15171
..' Tell him you've heard he might have some information as to the whereabouts of Mistress Natalia Mar'alith
.' Question Frankal |q 8304/1
step
goto 46.4,79.1
.talk 15170
..' Tell him the Commander has sent you here to gather some information about his missing wife
.' Question Rutgar |q 8304/2
step
.' Click the Complete Quest box in the top right corner of your screen
..turnin 8304
..accept 8306
step
goto 47.4,81.1 |n
.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
step
goto 49.2,81.6
.' Click Noggle's Satchel |tip It looks like a tan bag sitting on the ground next to the wall.  Be careful of Deathclasp, the elite scorpion that patrols this small area.
.get Noggle's Satchel |q 8282/1
step
goto 49.5,81.3
.from Deathclasp##15196 |tip He's an elite scorpion that patrols this small area with his 2 guards.
.get Deathclasp's Pincer |q 8283/1 |tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 24.8,77.3
.from Twilight Keeper Exeter##11803
.get Twilight Lexicon - Chapter 2 |q 8279/2
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.3,36.2
.talk 15190
..turnin 8282
step
ding 56
step
goto 54.3,34.0 |n
.' Follow the path up |goto 54.3,34.0,0.5 |noway |c
step
goto 54.5,32.0
.talk 15182
..turnin 8283
step
goto 46.0,79.4
.talk 15171
..accept 8310
step
goto 46.4,79.1
.talk 15170
..accept 8309
step
goto 58.5,78.4 |n
.' Enter the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 55.6,90.6
.from Mistress Natalia Mar'alith##15215
.' Discover the Fate of Mistress Natalia Mar'alith |q 8306/1
step
goto 55.6,90.5
.click the Hive'Regal Glyphed Crystal##6414
..' <Use the transcription device to gather a rubbing.>
.get Hive'Regal Rubbing |q 8309/1
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 58.5,78.4 |n
.' Leave the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 59.3,74.8
.from Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
.get Hive'Regal Silithid Brain |q 8310/1
.collect Brann Bronzebeard's Lost Letter##20461 |n
.' Click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
..accept 8308
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8279
..accept 8287
..accept 8323
step
goto 68.7,63.0
.talk 15194
..turnin 8323
step
goto 53.2,32.5
.talk 15181
..turnin 8306
..turnin 8287
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8323/1
step
goto 46.0,79.4
.talk 15171
..turnin 8310
step
goto 46.4,79.1
.talk 15170
..turnin 8308
..turnin 8309
..accept 8314
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8323
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.6,35.3
.talk 15183
..turnin 8314
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)
startlevel 55.83
dynamic on
step
goto Tanaris,40.3,77.2
.talk 38578
..accept 24911
step
'Go northwest to Un'Goro Crater |goto Un'Goro Crater |noway |c
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..accept 24731
step
goto 70.6,76.2
.talk 38274
..accept 24719
step
goto 64.8,75.2
.' Click the Fresh Threshadon Carcass |tip It's a dead dinosaur corpse laying on the ground.
.get Piece of Threshadon Carcass |q 24731/1
step
goto 64.8,75.2
.from Ravasaur##6505+, Ravasaur Runner##6506+
.get 5 White Ravasaur Claw |q 24719/1
step
goto 70.6,76.2
.talk 38274
..turnin 24719
..accept 24686
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..turnin 24731
..accept 24732
step
goto 67.3,73.0
.' Stand on the piles of purple eggs
.from Lar'korwi Mate##9683+
.get 2 Ravasaur Pheromone Gland |q 24732/1
.' You can find another pile of purple eggs at [Un'Goro Crater,60.9,72.2]
step
goto 72.8,59.2
.' Use Garl's Net next to Bloodpetal Seeds |use Garl's Net##50441 |tip They look like small spiked orange balls floating around underwater around this area.
.get 4 Un'Goro Lasher Seed |q 24686/1
step
goto 70.6,76.2
.talk 38274
..turnin 24686
..accept 24689
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..turnin 24732
..accept 24733
step
ding 56
step
goto 56.0,64.2
.talk 10583
.fpath Marshal's Stand
step
goto 55.3,62.5
.talk 10302
..accept 24742
step
goto 55.1,62.2
.talk 9270
..turnin 24911
..accept 24740
step
goto 54.2,62.5
.talk 9117
..accept 24720
step
goto 55.0,60.6
.talk 38270
..accept 24697
step
'As you walk around Un'Goro Crater, click the colored crystals on the ground:
.' Get 7 Red Power Crystal
.' Get 7 Yellow Power Crystal
.' Get 7 Green Power Crystal
.' Get 7 Blue Power Crystal
.' Skip to the next step in the guide
step
goto 57.5,61.9
.' Use your Scraps of Rotting Meat on Young Diemetradons |use Scraps of Rotting Meat##50430
.' When the dinosaurs start chasing you, lead them to [56.9,62.9]
.' Bait 4 Dinosaurs |q 24697/1
step
goto 55.0,60.6
.talk 38270
..turnin 24697
step
goto 57.5,61.9
.' Click Blue Power Crystals |tip They look like blue glowing crystals on the ground all around this area.  You will probably need to search around for them.
.get 7 Blue Power Crystal |q 24720/4
step
goto 70.1,40.9
.' Stand on the rock
.' Use Torwa's Pouch |use Torwa's Pouch##11568
.collect Preserved Threshadon Meat##11569 |n
.collect Preserved Pheromone Mixture##11570 |n
.' Use your Preserved Threshadon Meat |use Preserved Threshadon Meat##11569
.' Use your Preserved Pheromone Mixture |use Preserved Pheromone Mixture##11570
.from Lar'korwi##9684
.get Lar'korwi's Head |q 24733/1
step
goto 68.5,36.5
.' Click the Crate of Foodstuffs |tip It looks like a box sitting on the ground under a white canopy.
..accept 24865
step
goto 76.4,48.3
.talk 38263
..turnin 24689
..accept 24687
step
goto 75.4,46.8
.from Juvenile Bloodpetal##38213+
.kill 6 Pack of Juvenile Bloodpetals##38214+ |q 24687/1
step
goto 76.4,48.3
.talk 38263
..turnin 24687
..accept 24855
step
goto 71.7,37.5
' |from Bloodpetal Thresher##6511+, Bloodpetal Flayer##6510+, Bloodpetal Lasher##6509+
.kill 11 Bloodpetal |q 24855/1
step
goto 76.4,48.3
.talk 38263
..turnin 24855
..accept 24721
step
goto 77.2,50.0
.' Click the Eastern Crystal Pylon |tip It looks like a stone statue with a blue crystal spinning on top of it.
..' Examine the pylon.
.' Discover and Examine the Eastern Crystal Pylon |q 24721/1
step
goto 68.5,36.5
.' Click Green Power Crystals |tip They look like green glowing crystals on the ground all around this area.  You will probably need to search around for them.
.get 7 Green Power Crystal |q 24720/3
step
goto 71.3,76.6
.talk 9619
..turnin 24733
step
goto 55.1,62.2
.talk 9270
..turnin 24865
step
goto 54.2,62.5
.talk 9117
..turnin 24721
step
goto 48.4,43.4
.' Run around the outskirts of the mountain
.' Use Krakle's Thermometer next to the hot spots in this area |use Krakle's Thermometer##12472
.' Find the hottest area of Fire Plume Ridge |q 24742/1
step
goto 52.3,42.6
.from Scorching Elemental##6520+, Living Blaze##6521+
.get 9 Un'Goro Ash |q 24740/1
step
goto 55.1,62.2
.talk 9270
..turnin 24740
..accept 24690
step
goto 55.4,62.5
.talk 10302
..turnin 24742
..accept 24794
step
goto 55.1,62.7
.talk 9997
..turnin 24794
..accept 24734
step
goto 54.7,55.9 |n
.' Follow the path up |goto 54.7,55.9,0.5 |noway |c
step
goto 53.1,51.9
.' Click Ringo's Sack |tip It's a tan bag sitting on this small hill.
..turnin 24734
step
goto 49.4,49.3
.' Follow the path to the top of the mountain
.kill Blazerunner##9376 |q 24690/1
step
goto 52.0,49.8
.' Follow the path down the mountain and into the small cave
.talk 9999
..accept 24735
step
goto 54.9,62.1
.' Escort Ringo to this spot
.' Click Ringo to hit him when he stops walking and gets dizzy |tip You have to right-click him to hit him.
.' Use Spraggle's Canteen on Ringo to revive him ONLY if he passes out completely |use Spraggle's Canteen##11804
.' Escort Ringo to Marshal's Stand |q 24735/1
step
goto 55.1,62.2
.talk 9270
..turnin 24690
step
goto 55.0,62.2
.talk 9271
..accept 24692
step
goto 55.1,62.7
.talk 9997
..turnin 24735
step
goto 54.8,63.8
.talk 10977
..accept 24691
step
goto 50.6,78.4 |n
.' Follow the path down |goto 50.6,78.4,0.5 |noway |c
step
goto 49.1,82.8 |n
.' Follow the path west |goto 49.1,82.8,0.5 |noway |c
step
goto 46.7,83.3 |n
.' Follow the path south |goto 46.7,83.3,0.5 |noway |c
step
goto 46.7,86.9
.kill Gorishi Fledgling Colossus##38305 |q 24692/1 |tip Don't worry that it's an elite mob, it's easy to kill solo at this level.  Fight like you normally do, but pay attention for when the Fledgling Colossus starts casting Poison Explosion.  When you see it start to cast Poison Explosion, hide behind something for cover.
step
goto 46.7,83.3 |n
.' Follow the path east |goto 46.7,83.3,0.5 |noway |c
step
goto 49.1,82.8 |n
.' Follow the path north |goto 49.1,82.8,0.5 |noway |c
step
goto 50.6,78.4 |n
.' Leave the hive |goto 50.6,78.4,0.5 |noway |c
step
goto 52.5,72.8
.from Gorishi Worker##6552+, Gorishi Wasp##6551+, Gorishi Reaver##6553+, Gorishi Tunneler##6555+, Gorishi Stinger##6554+
.get 96 Silithid Leg |q 24691/1
step
goto 38.5,66.1
.' Click the Research Equipment |tip It looks like a pile of brown boxes.
..accept 24866
step
goto 40.6,63.0
.' Click Red Power Crystal |tip They look like red glowing crystals on the ground all around this area.  You will probably need to search for them.
.get 7 Red Power Crystal |q 24720/1
step
goto 54.8,63.8
.talk 10977
..turnin 24691
..accept 24693
step
goto 55.0,62.2
.talk 9271
..turnin 24692
..turnin 24866
step
goto 43.1,41.7
.talk 38275
..turnin 24693
step
goto 43.3,40.8
.talk 38276
..accept 24737
..accept 24700
step
goto 43.2,40.9
.talk 38277
..accept 24701
step
goto 43.4,41.3
.talk 9998
..accept 24736
step
goto 44.1,40.3
.talk 39175
.fpath Mossy Pile
step
goto 39.8,36.9
.from Frenzied Pterrordax##9167+
.get 35 Webbed Pterrordax Scale |q 24736/1
.' Click Yellow Power Crystal |tip They look like yellow glowing crystals on the ground all around this area.  You will probably need to search for them.
.get 7 Yellow Power Crystal |q 24720/2
step
goto 47.4,20.8
.from Tar Lord##6519+, Tar Lurker##6518+
.' Use Tara's Tar Scraper on their corpses |use Tara's Tar Scraper##50742
.get 8 Super Sticky Tar |q 24737/1
.' Click Tarblossoms |tip They look like red flowers underwater in the tar pools.
.get 4 Tarblossom Blossom |q 24700/1
step
goto 46.1,13.5 |n
.' Follow the path up |goto 46.1,13.5,0.5 |noway |c
step
goto 43.6,9.5
.' Click Discarded Supplies |tip They look like wooden crates and piles of boxes on the ground around this area.
.get 10 Discarded Supplies |q 24701/1
step
goto 43.3,40.8
.talk 38276
..turnin 24737
..accept 24699
..turnin 24700
step
goto 43.2,40.9
.talk 38277
..turnin 24701
step
goto 43.4,41.3
.talk 9998
..turnin 24736
step
ding 57
step
goto 43.1,41.7
.talk 38275
..accept 24717
step
goto 43.5,40.9
.talk 9618
..accept 24714
step
goto 59.4,29.8
.from Gormashh##38307
.' Use Tara's Tar Scraper on Gormashh's corpse |use Tara's Tar Scraper##50746
.get Unbelievably Sticky Tar |q 24699/1
step
goto 63.8,19.7
.talk 9623
..turnin 24714
..accept 24715
step
goto 61.5,18.5
.' Click the Un'Goro Coconut |tip They look like a brown balls on the ground at the base of palm trees around this area.
.collect Un'Goro Coconut##50237 |q 24715
step
goto 64.1,20.0
.' Use your Un'Goro Coconut next to the Sturdy Rock |use Un'Goro Coconut##50237
.collect Cracked Un'Goro Coconut##50238 |n
.' Use your Cracked Un'Goro Coconut |use Cracked Un'Goro Coconut##50238
.get High Viscosity Coconut Milk |q 24715/1
step
goto 63.8,19.7
.talk 9623
..turnin 24715
..accept 24926
step
goto 64.0,16.4 |n
.' Enter the cave |goto 64.0,16.4,0.5 |noway |c
step
goto 65.0,16.8
.' Go to this spot
..accept 24718
step
goto 68.1,15.9
.from U'cha##9622
.get U'cha's Pelt |q 24718/1
step
'Inside and outside of this cave:
.from Un'Goro Gorilla##6514+
.get 2 Un'Goro Gorilla Pelt |q 24717/1
.from Un'Goro Stomper##6513+
.get 2 Un'Goro Stomper Pelt |q 24717/2
.from Un'Goro Thunderer##6516+
.get 2 Un'Goro Thunderer Pelt |q 24717/3
step
goto 43.5,40.9
.talk 9618
..turnin 24926
step
goto 43.1,41.7
.talk 38275
..turnin 24717
..turnin 24718
..accept 24722
step
goto 43.3,40.8
.talk 38276
..turnin 24699
step
goto 58.0,14.6 |n
.' Follow the path up |goto 58.0,14.6,0.5 |noway |c
step
goto 56.5,12.4
.' Click the Northern Pylon |tip It looks like a stone statue with a blue crystal spinning on top of it.
..' Examine the pylon.
.' Discover and Examine the Northern Crystal Pylon |q 24722/1
step
goto 44.1,40.3
.talk 39175
.' Fly to Marshal's Stand, Un'Goro Crater |goto 56.1,64.1,0.5 |noway |c
step
goto 54.2,62.5
.talk 9117
..turnin 24722
..turnin 24720
step
goto 55.0,60.6
.talk 38270
..accept 24698
step
goto 56.0,64.2
.talk 10583
.' Fly to Mossy Pile, Un'Goro Crater |goto 44.0,40.2,0.5 |noway |c
step
goto 31.1,51.7 |n
.' Follow the path up |goto 31.1,51.7,0.5 |noway |c
step
goto 31.9,50.3
.talk 9272
..turnin 24698
..accept 24730
step
goto 30.6,51.1
.talk 38237
..accept 24703
step
goto 30.6,51.1
.talk 38237
..' Tell him you're ready
.' Complete your Squire Training |q 24703/1
step
goto 30.6,51.1
.talk 38237
..turnin 24703
..accept 24704
..accept 24705
step
goto 36.4,59.1
.' Click the "Damsel's" "Purse" |tip It's a crate floating in the water.
.collect Blood Elf's Belongings##50288 |q 24705
step
goto 36.5,59.4
.talk 38238
.' Save the Damsel by the Shore |q 24705/1
step
goto 31.0,77.7
.from Elder Diemetradon##9164+
.' Click Dinosaur Bones |tip They look like big white bones on the ground around this area.
.get 8 Dinosaur Bone |q 24730/1
step
goto 24.3,48.6 |n
.' Follow the path up |goto 24.3,48.6,0.5 |noway |c
step
goto 23.8,50.0
.' Stand next to the crystal pylon
.' Watch Maximillian of Northshire push the poor woman off the cliff to her doom
.' Save the Damsel in the Cliffs |q 24705/2
step
goto 28.7,21.0
.' Stand next to the Damsel of the North |tip She's a goblin that walks up and down this path.
.' Watch Maximillian of Northshire murder her pet bird
.' Save the Damsel of the North |q 24705/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24705
step
goto 31.4,30.5
' |from Elder Diemetradon##9164+, Frenzied Pterrordax##9167+
.kill 15 "Dragon" |q 24704/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24704
step
'Next to you:
.talk 38255
..accept 24706
step
goto 33.9,47.8
.' Stand next to Steaming Furies
.' Maximillian of Northshire will pray to them
.' Complete 2 Prayers |q 24706/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24706
step
goto 31.9,50.3
.talk 9272
..turnin 24730
..accept 24708
step
goto 30.6,51.1
.talk 38237
..accept 24707
.' Use the abilities on your hotbar on the Devilsaur Queen the kill her
.kill Un'Goro's Broodmother |q 24707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24707
' |from Devilsaur Queen##38346
step
goto 32.7,74.6
.' Use your Fossil-Finder 3000 |use Fossil-Finder 3000##50405
.' Click the Suspicious Mound of Dirt |tip It's a big pile of dirt that appears.
.get Enormous Dinosaur Talon |q 24708/1
step
goto 31.9,50.3
.talk 9272
..turnin 24708
..accept 24709
step
goto 37.6,81.4
.from Durrin Direshovel##38329 |tip He walks around this area on a raptor.
.get Durrin's Archaeological Findings |q 24709/1
step
goto 31.9,50.3
.talk 9272
..turnin 24709
..accept 24723
step
goto 24.2,51.2 |n
.' Follow the path up |goto 24.2,51.2,0.5 |noway |c
step
goto 23.5,50.0
.' Click the Western Crystal Pylon |tip It looks like a stone statue with a blue crystal spinning on top of it.
..' Examine the pylon.
.' Discover and examine the Western Crystal Pylon |q 24723/1
step
goto 44.1,40.3
.talk 39175
.' Fly to Marshal's Stand, Un'Goro Crater |goto 56.1,64.1,0.5 |noway |c
step
goto 54.2,62.5
.talk 9117
..turnin 24723
step
goto 53.8,62.5
.' Click the Un'Goro Examinant |tip It's a big glowing star looking thing.
..accept 24694
step
goto 53.8,62.5
.' Click the Un'Goro Examinant |tip It's a big glowing star looking thing.
..' Tell it you're ready to go to The Shaper's Terrace
.' Teleport to The Shaper's Terrace |goto 79.7,45.9,0.5 |noway |c
step
goto 83.5,46.0
.talk 38502
..turnin 24694
..accept 24695
step
goto 83.5,45.3
.' Click the Bloodpetal Observation Lever |tip It's a metal handle on the floor.
.' Become a Bloodpetal |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 24695
step
goto 66.8,30.6
.' Use the abilities on your hotbar
.from Bloodpetal Flayer##6510
.' Complete the Bloodpetal Observation |q 24695/1
step
goto 84.0,45.6
.' Click the Pterrordax Observation Lever |tip It's a metal handle on the floor.
.' Become a Pterrordax |havebuff Interface\Icons\INV_Misc_LeatherScrap_13 |q 24695
step
goto 37.8,33.5
.' Use the Pterrordash ability on your hotbar
.' Fly upward
.' Complete the Pterrordax Observation |q 24695/4
step
goto 84.0,46.4
.' Click the Gorilla Observation Lever |tip It's a metal handle on the floor.
.' Become a Gorilla |havebuff Interface\Icons\Ability_Hunter_Pet_Gorilla |q 24695
step
goto 63.2,17.0
.talk 6513
.talk 6514
.talk 6516 |tip They can only be found inside the cave.
..' Ask each type of gorilla what it can teach you
.' Complete the Gorilla Observation |q 24695/3
step
goto 83.5,46.7
.' Click the Diemetradon Observation Lever |tip It's a metal handle on the floor.
.' Become a Diemetradon |havebuff Interface\Icons\INV_Misc_MonsterScales_12 |q 24695
step
goto 54.3,64.5
.' Use your Bit ability on your hotbar on any Humanoid in the Marshal's Stand camp
.' Bite 5 Humanoids
.' Complete the Diemetradon Observation |q 24695/2
step
goto 83.5,46.0
.talk 38502
..turnin 24695
step
goto 83.5,46.0
.talk 38502
..' Tell her you'd like to return to Marshal's Stand, please
.' Teleport to Marshal's Stand |goto 55.3,61.9,0.5 |noway |c
step
ding 58
step
'Hearth to Everlook |goto Winterspring,59.9,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Winterspring,59.9,51.2
.talk 11118
..accept 28857
step
goto 61.0,48.6
.talk 11138
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,44.0,78.2
.' Click the Portal to Blasted Lands |tip It looks like a blue swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands,53.9,46.1,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Hellfire Peninsula (60-62)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)
startlevel 60.00
dynamic on
#include "Hellfire_Peninsula"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Terokkar Forest (64-65)
startlevel 62.4
dynamic on
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
.kill Boglash##18281 |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. He walks around in the water, so some searching may be necessary.
step
goto 85.3,90.9
.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
step
goto 83.1,85.2
.kill 6 Umbrafen Oracle##18077+ |q 9747/2
.kill 8 Umbrafen Seer##18079+ |q 9747/3
.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
step
goto 83.4,85.5
.talk 17969
..accept 9752
..'Escort Kayra Longmane |q 9752/1
step
goto 80.4,64.2
.talk 17956
..turnin 9747
..accept 9788
.talk 17909
..accept 10096
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 80.4,64.7
.talk 18070
..accept 9894
step
goto 78.4,62
.talk 17841
..turnin 9752
step
goto 74.7,91.6|n
.' The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6,0.3 |noway |c
step
'Go southwest inside the cave to 70.5,97.9 |goto 70.5,97.9
.click Ikeyen's Belongings##318
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to 72.5,94.0 |goto 72.5,94.0
.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 75.7,90.2
.kill 10 Marsh Lurker##18136+ |q 10096/2
.kill 10 Marsh Dredger##18137+ |q 10096/1
step
goto 70.9,82.1
.' Stand here to Investigate Umbrafen Lake |q 9716/1
.from Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
.get 10 Unidentified Plant Parts|q 9802/1
.get 30 Naga Claws|q 9728/1
.' You can find more Naga at:
.' [73.4,82.3]
.' [72.2,75.8]
step
goto 80.4,64.7
.talk 18070
..turnin 9894
step
goto 80.4,64.2
.talk 17956
..turnin 9788
.talk 17909
..turnin 9802
..turnin 10096
step
goto 79.1,65.3
.talk 17858
..turnin 9728
step
goto 80.4,64.7
.talk 18070
..accept 9785
step
goto 78.5,63.1
.talk 17834
..accept 9697
..accept 9957 |only if not completedq(9968) or not completedq(9971)
step
goto 78.4,62
.talk 17841
..turnin 9716
..accept 9718
..'Use the Stormcrow Amulet in your bags |use Stormcrow Amulet##25465
..'Watch yourself fly as a crow
.' Lakes of Zangarmarsh Explored |q 9718/1
step
goto 78.4,62
.talk 17841
..turnin 9718
..accept 9720
step
goto 78.1,63.8
.talk 17901 |tip He patrols around town so you may need to search for him
.'Get the Mark of War |q 9785/2
step
goto 81.1,63.9
.talk 17900 |tip He patrols around town so you may need to search for him
.'Get the Mark of Lore |q 9785/1
step
goto 80.4,64.7
.talk 18070
..turnin 9785
step
goto 70.6,80.3
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it.
.' Disable the Umbrafen Lake Pump Controls |q 9720/1
step
goto 63.1,64.1
.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it.
.' Disable the Lagoon Pump Controls |q 9720/4
step
goto 70.5,49.2
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.3,50.0
.talk 18004
..accept 9793
..accept 9782
step
goto 68.2,49.4
.talk 18003
..accept 9776
..accept 9786
step
goto 68.6,49.4
.talk 18295
..accept 9901
step
goto 68.6,48.7
.talk 18007
..accept 9777
step
goto 67.8,47.9
.talk 18005
..accept 9781
step
goto 67.6,47.9
.talk 18006
..accept 9791
step
goto 71.3,46.9
.click Fulgor Spore##6880
.get 6 Fulgor Spore |q 9777/1
.kill 10 Marshfang Ripper##18130+ |q 9791/1
step
goto 77.2,45.9
.kill Sporewing##18280 |q 9901/1 |tip He patrols the area so you may need to search for him
step
goto 80.7,43.4
.click Dead Mire Soil##20
.get Dead Mire Soil Sample|q 9782/1
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.3,50.1
.talk 18004
..turnin 9782
..accept 9783
step
goto 68.6,49.4
.talk 18295
..turnin 9901
..accept 9896
step
goto 68.6,48.7
.talk 18007
..turnin 9777
step
goto 67.7,48
.talk 18006
..turnin 9791
..accept 9780
step
ding 63
step
goto 82.9,36.0
.kill 12 Withered Giant##18124+ |q 9783/1
.get Withered Basidium|n
.' Click the Withered Basidium |use Withered Basidium##24483
..accept 9827
step
goto 82.9,36.0
.from Withered Bog Lord##19402+ |n
.collect 6 Bog Lord Tendril##24291|n |tip Hold onto these, you will need them for a quest later.
|confirm
step
goto 74.2,60.7
.kill 10 Mire Hydra##18213+ |q 9781/1
.from Umbrafen Eel##18138+
.get 8 Eel Filet|q 9780/1
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.3,50.1
.talk 18004
..turnin 9783
step
goto 68.6,48.7
.talk 18007
..turnin 9827
..accept 10355
step
goto  67.6,47.9
.talk 18006
..turnin 9780
step
goto 67.8,47.9
.talk 18005
..turnin 9781
..accept 9790
step
goto 82.7,41.0
.from Parched Hydra##20324+
.get 5 Parched Hydra Sample |q 10355/1
.from Withered Bog Lord##19402+
.get 5 Withered Bog Lord Sample|q 10355/2
step
.from Withered Bog Lord##19402+ |n
.collect 6 Bog Lord Tendril##24291 |n |tip Hold onto these, you will need them for a quest later.
|confirm
step
goto 70.7,60.3
.from Umbraglow Stinger##18132+
.get 8 Diaphanous Wing|q 9790/1
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.6,48.7
.talk 18007
..turnin 10355
step
goto 67.7,48
.talk 18005
..turnin 9790
step
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it.
.' Disable the Serpent Lake Controls |q 9720/3
.' Kill Steam Pump Overseers, Bloodscale Overseers, and Bloodscale Wavecallers until you get the Drain Schematics.
.' Click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 49.5,59.2
.from Blacksting##18283
.get Blacksting's Stinger |q 9896/1
step
goto 44.5,66.1|n
.' The path up to 'The Boha'mu Ruins' starts here |goto Zangarmarsh,44.5,66.1,0.5 |noway |c
step
goto 44.1,68.8
.' Explore the Boha'mu Ruins |q 9786/1
step
goto 32.8,59.1
.from "Count" Ungula##18285
.get "Count" Ungula's Mandible |n
.' Click "Count" Ungula's Mandible |use "Count" Ungula's Mandible##25459
..accept 9911
step
goto 36.9,58.0
.from Greater Sporebat##18129+, Fen Strider##18134+, Sporebat##18128+
.get 6 Fertile Spores##24449 |n |tip Hold onto these, you will need them for a quest later.
|confirm
step
goto 23.3,66.2
.talk 17831
..turnin 9697
..accept 9701
..turnin 9911
step
goto 19.1,63.9
.talk 17923
..accept 9739
..accept 9743
..turnin 9743
step
goto 14.5,61.6
.collect 40 Mature Spore Sac##24290 |q 9739 |tip You need 30 extra to turn in for Sporeggar reputation, so you can accept quests. |future |model 6911
.' If you find this quest is bugged and you are not able to collect all _40 Mature Spore Sacs_ then click below to continue.
|confirm |next "collect_10_sac"
|next "collect_40_sac"
step
label	"collect_10_sac"
goto 13.6,59.8
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+ |only if rep ('Sporeggar') <= Unfriendly
.collect 6 Bog Lord Tendril##24291 |only if rep ('Sporeggar') <= Unfriendly
.' Go here to Investigate the Spawning Glen |goal Investigate the Spawning Glen |q 9701/1
step
goto 19.1,63.9
.talk 17923
..turnin 9739
..accept 9744 |instant |only if rep ('Sporeggar') <= Unfriendly
next "collect_6_tendril" |only if rep ('Sporeggar') <= Unfriendly
..accept 9919 |only if rep ('Sporeggar') >= Neutral
next "Sporeggar_friendly" |only if rep ('Sporeggar') >= Neutral
step
label	"collect_6_tendril"
goto 13.6,59.8
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291
step
goto 19.1,63.9
.talk 17923
..accept 9744 |instant
next "collect_6_tendril" |only if rep ('Sporeggar') <= Unfriendly
..accept 9919 |only if rep ('Sporeggar') >= Neutral
next "Sporeggar_friendly" |only if rep ('Sporeggar') >= Neutral
step
label	"collect_40_sac"
goto 13.6,59.8
.' Go here to Investigate the Spawning Glen |q 9701/1
step
label	"Sporeggar_friendly"
goto 19.1,63.9
.talk 17923
..turnin 9739
..accept 9919
..accept 9742 |instant |repeatable |tip You will need to turn in More Spore Sacs three times before you reach friendly.
.' Reach Friendly with Sporeggar |condition rep('Sporeggar')>=Friendly
step
goto 23.3,66.2
.talk 17831
..turnin 9701
..accept 9702
step
goto 27,63.3
//.click Discarded Nutriment##6940  // fallen log
//.click Discarded Nutriment##6941  // fallen shroom
.click Discarded Nutriment##3993 // green glow
.get 10 Discarded Nutriment##24233 |q 9702/1
step
goto 23.3,66.2
.talk 17831
..turnin 9702
..accept 9708
step
goto 19.7,52.1
.talk 17924
..turnin 9919
step
goto 19.5,50
.talk 17856
..accept 9726
step
goto 19.2,49.4
.talk 17925
..accept 9806
..turnin 9806
step
goto 25.4,42.9
.' Use your Ironvine Seeds on the Marshlight Lake Pump Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it.
.' Disable the Marshlight Lake Pump Controls|q 9720/2
step
goto 26.8,43
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
step
goto 19.5,50
.talk 17856
..turnin 9726
step
goto 41.2,28.7
.talk 18019
..accept 9848
step
goto 41.7,27.3
.click Wanted Poster##6901
..accept 10116
step
goto 41.9,27.2
.talk 18008
..turnin 9776
..accept 9835
..accept 10115
step
goto 26.4,22.8
.click Daggerfen Poison Vial |tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
.get Daggerfen Poison Vial |q 9848/2
.' It can also be at [25.4,25.0]
step
goto 24.4,27
.click Daggerfen Poison Manual |tip At the top of the big tower, to the right as you reach the top, on the floor.
.get Daggerfen Poison Manual|q 9848/1
step
goto 23.8,26.8
.from Chieftain Mummaki##19174
.get Chieftain Mummaki's Totem |q 10116/1
step
goto 25.6,23.1
.kill 3 Daggerfen Assassin##18116+ |q 10115/1
.kill 15 Daggerfen Muckdweller##18115+ |q 10115/2
step
goto 29.6,28.3
.kill 5 Ango'rosh Shaman##18118+ |q 9835/1
.kill 10 Ango'rosh Ogre##18117+ |q 9835/2
.' You can find more Ogres at [36.0,32.0]
step
.from Ango'rosh Shaman##18118+, Ango'rosh Ogre##18117+
.get 15 Mushroom Sample|q 9708/1
step
goto 41.2,28.7
.talk 18019
..turnin 9848
step
goto 41.9,27.2
.talk 18008
..turnin 9835
..accept 9839
..turnin 10116
..turnin 10115
step
goto 41.9,26.2
.talk 18908
.home Orebor Harborage
step
goto 41.6,27.3
.talk 18010
..accept 9834
step
goto 40.8,28.7
.talk 18009
..accept 9830
..accept 9833
..accept 9902
step
goto 48.1,38.4
.from Fenclaw Thrasher##18214+
.get 8 Fenclaw Hide|q 9834/1
step
goto 50.4,40.8
.' Locate the drain in Serpent Lake |q 9731/1 |tip Swim straight down at this spot.
step
goto 35.9,58.6
.kill 12 Marshfang Slicer##18131+ |q 9833/1
step
goto 23.3,66.2
.talk 17831
..turnin 9708
..accept 9709
step
goto 22.4,46.1
.kill Terrorclaw##20477 |q 9902/1
step
goto 17.3,38.4
.from Marshlight Bleeder##18133+, Fenglow Stinger##20198+ |tip They are all around this area on the land, to the north and south.
.get 6 Marshlight Bleeder Venom|q 9830/1
.' You'll be able to find more around [Zangarmarsh,19.6,33.3]
step
 .' The path to Ango'Rosh Grounds starts here |goto 17.1,13.4 <5 |noway |c
step
goto 18.3,7.7
.kill 1 Overlord Gorefist##18160 |q 9839/1 |tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
step
.' Enter the cave |goto 17.3,9.4 <5 |noway |c
step
goto 17.3,10.2
.kill 10 Ango'rosh Mauler##18120+ |q 9839/2
.click Box of Mushrooms##2350
.get 10 Box of Mushrooms|q 9709/1
step
'Hearth to Orebor Harborage |goto Zangarmarsh 41.9,26.2 <5 |use Hearthstone##6948 |noway |c
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
goto 41.9,27.2
.talk 18008
..turnin 9839
step
ding 64
step
goto 42.2,41.4
.kill Mragesh##18286 |q 9905/1
step
goto 23.3,66.2
.talk 17831
..turnin 9709
..'Don't follow her when she walks away
step
goto 41.6,27.3
.talk 18010
..turnin 9905
step
|fly Telredor
step
goto 68.2,49.4
.talk 18003
..turnin 9786
..accept 9787
step
goto 68.6,49.4
.talk 18295
..turnin 9896
step
goto 49.3,60.6
.click Feralfen Idol##6925+
.get 6 Feralfen Idol|q 9787/1
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.2,49.4
.talk 18003
..turnin 9787
..accept 9801
step
goto 63.3,52.1
.from Sporebat##18128+
.get 4 Sporebat Eye |q 9801/1
.from Fen Strider##18134+
.get 4 Fen Strider Tentacle|q 9801/2
.' You can find more at [51.1,57.8]
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.2,49.4
.talk 18003
..turnin 9801
..accept 9803
step
goto 44.6,66.1
.' Drink Ahuurn's Elixir |use Ahuurn's Elixir##24428
|confirm
step
goto 44.1,69.5
.talk 18197
.' Get Elder Kuruti's Response |q 9803/1
step
.' Ride the elevator up to Telredor |goto 70.4,49.3 <5 |c
step
goto 68.2,49.4
.talk 18003
..turnin 9803
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto Hellfire Peninsula,16.0,52.1
.talk 16885
..turnin 9724
..accept 9732
step
goto Zangarmarsh,78.4,62
.talk 17841
..turnin 9732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Terokkar Forest (64-65)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Nagrand (65-67)
startlevel 64.45
dynamic on
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
.' You can also accept this quest at [59.7,41.4]
step
goto 54,44.8
.talk 18481
..turnin 10210
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'As you follow Khadgar's Servant, go to 64.0,15.5 |goto 64.0,15.5
.talk 18653
..accept 10037
|modelnpc Khadgar's Servant##19685
step
'As you follow Khadgar's Servant, go to 52.6,21.0 |goto 52.6,21.0
.talk 22292
..accept 10847
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
.' You will only be able to accept allegiance with one of these factions:
..accept 10551 |instant |or
..accept 10552 |instant |or
step
goto 54.8,44.3
.talk 18166
..accept 10554
only if rep ('The Aldor') >= Neutral
step
'Ride the elevator up to the Aldor Rise |goto Shattrath City,41.7,38.6,0.5 |c
only if rep ('The Aldor') >= Neutral
step
goto 30.7,34.6
.talk 18537
..accept 10325
only if rep ('The Aldor') >= Neutral
step
goto 24,29.7
.talk 18538
..turnin 10554
..accept 10021
only if rep ('The Aldor') >= Neutral
step
.home Shattrath City
only if rep ('The Aldor') >= Neutral
step
goto 54.8,44.3
.talk 18166
..accept 10553
only if rep ('The Scryers') >= Neutral
step
'Ride the elevator up to the Scryer Rise |goto Shattrath City,50.0,62.9,0.3 |c
only if rep ('The Scryers') >= Neutral
step
goto 42.8,91.7
.talk 18530
..turnin 10553
only if rep ('The Scryers') >= Neutral
step
goto 45.2,81.3
.talk 18531
.accept 10412
only if rep ('The Scryers') >= Neutral
step
goto 56.3,81.5
.talk 19232
home Shattrath City
only if rep ('The Scryers') >= Neutral
step
goto Terokkar Forest,38.6,8.5
.from Shimmerscale Eel##18750+
.get 8 Pristine Shimmerscale Eel|q 10037/1
step
goto 44.3,26.3
.talk 18446
..turnin 9957 |only if havequest(9957)
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424
..accept 9951
step
goto 45.1,21.8
.click Strange Object##7214
.' Examine the Strange Object |q 9971/1 |tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
goto 43.4,22.1
.kill Naphthal'ar##18438 |q 9951/1 |tip At the top of the big tower.
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
.get 4 Vicious Teromoth Sample|q 9968/2
step
goto 45.8,29.8
.from Teromoth##18468+
.get 4 Teromoth Sample|q 9968/1
step
goto 44.3,26.3
.talk 18446
..turnin 9968
..accept 9978
step
goto 47.1,27
.talk 18482
.' Fight Empoor until he's almost dead |tip He patrols on this road between Shattrath and Tuurem
..turnin 9978
..accept 9979
step
goto 49.2,20.3
.' Click the Eastern Altar
.' Purify the Eastern Altar |goal Eastern Altar |q 10021/2
only if rep ('The Aldor') >= Neutral
step
goto 49.9,16.5|n
.' The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c
step
goto 50.1,19.4
.click Eye of Veil Reskk##621
.get Eye of Veil Reskk|q 10847/1
step
goto 50.7,16.6
.' Click the Northern Altar
.' Purify the Northern Altar |goal Northern Altar |q 10021/1
only if rep ('The Aldor') >= Neutral
step
goto 48.1,14.5
.' Click the Western Altar
.' Purify the Western Altar |goal Western Altar |q 10021/3
only if rep ('The Aldor') >= Neutral
step
goto 57.9,23.2
.click Eye of Veil Shienor##621 |tip Climb the path inside the other tree, run across the bridge
.get Eye of Veil Shienor|q 10847/2
step
goto Shattrath City,24,29.7
.talk 18538
..turnin 10021
only if rep ('The Aldor') >= Neutral
step
goto 52.6,21
.talk 22292
..turnin 10847
..accept 10849
step
goto 64,15.5
.talk 18653
..turnin 10037
step
goto 72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
step
goto Terokkar Forest,37.4,51.5
.talk 22272
..turnin 10849
..accept 10839
step
goto 37.7,51.3
.talk 22365
..accept 10852
step
goto 37.4,51.2
.talk 22370
..accept 10878
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
goto 35.2,48.8
.from Infested Root-walker##22095+, Rotting Forest-Rager##22307+
.' Kill the Wood Mites that come out of their corpses
.kill 25 Wood Mite##22419+ |q 10896/1
.' You can find more Infested Root-walkers at [Terokkar Forest,39.1,47.0]
step
goto 39.6,58.6
.kill 8 Cabal Skirmisher##21661+ |q 10878/1
.kill 4 Cabal Spell-weaver##21902+ |q 10878/2
.kill 2 Cabal Initiate##21907+ |q 10878/3
.get 10 Mark of Kil'jaeden |q 10325/1 |only if rep ('The Aldor') >= Neutral
.' Get the Cabal Orders from orcs in this area
.' Click the Cabal Orders |use Cabal Orders##31707
..accept 10880
step
goto 37.4,51.2
.talk 22370
..turnin 10878
..turnin 10880
..accept 10881
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
.' The path underground starts here |goto 31.3,52.7 <5 |c
step
goto 29.7,51.7
.click Cabal Chest##10
.get Gavel of K'alen |q 10881/2
step
goto 32.1,51.2
.click Cabal Chest##10
.get Drape of Arunen|q 10881/1
step
goto 31.2,46.7
.click Cabal Chest##10
.get Scroll of Atalor|q 10881/3
step
'Go outside to 37.4,51.2 |goto 37.4,51.2
.talk 22370
..turnin 10881
step
goto 32.3,41.7
.from Skithian Windripper##18453+,Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
.get Veil Skith Prison Keys|n
.click Veil Skith Cage##1787
.' Rescue 12 Children |q 10852/1
step
goto 30.8,42.1
.' Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
.' Purify the Darkstone of Terokk |q 10839/1
|model Darkstone of Terokk##2710
step
goto 37.4,51.5
.talk 22272
..turnin 10839
..accept 10848
step
goto 37.7,51.3
.talk 22365
..turnin 10852
step
goto 27.7,54.4
.kill 4 Deathtalon Spirit##21198+ |q 10848/1
.kill 4 Screeching Spirit##21200+ |q 10848/2
.kill 2 Spirit Raven##21324+ |q 10848/3
step
goto 37.4,51.5
.talk 22272
..turnin 10848
..accept 10861
step
goto 24.2,70.5
.click Cursed Egg##477
.' Redeem 3 Hatchlings |q 10861/1
.kill 3 Malevolent Hatchling##22337+ |q 10861/2
step
goto 31,76.1
.talk 22446
..accept 10913
step
 goto 31.1,76.2
.talk 22458
..accept 10922
..'Escort the Archaeologists |q 10922/1
step
goto 31,76.1
.talk 22481
..turnin 10922
step
goto 35,76.5
.' Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769
.' Burn 8 Slain Sha'tar Vindicator corpses |q 10913/1
.' Burn 8 Slain Auchenai Warrior corpses |q 10913/2
|modelnpc Slain Auchenai Warrior##21846
|modelnpc Slain Sha'tar Vindicator##21859
step
goto 31,76.1
.talk 22446
..turnin 10913
..accept 10914
step
goto 36.7,74.4
.kill 12 Auchenai Initiate##21284+ |q 10914/1
.kill 5 Auchenai Doomsayer##21285+ |q 10914/2
step
goto 31,76.1
.talk 22446
..turnin 10914
..accept 10915
step
ding 65
step
goto 35.9,65.7
.click Auchenai Coffin##7251
.kill Reanimated Exarch##22452 |q 10915/1
step
goto 31,76.1
.talk 22446
..turnin 10915
step
goto 37.4,51.5
.talk 22272
..turnin 10861
..accept 10874
step
goto 37.5,50.8
.talk 22278
..accept 10840
step
goto 46.3,56.5
.kill 10 Ethereal Nethermancer##21370+ |q 10840/1
.kill 10 Ethereal Plunderer##21368+ |q 10840/2
step
goto 54.9,66.0|n
.' The path up to Veil Shalas starts here |goto Terokkar Forest,54.9,66.0,0.5 |noway |c
step
goto 57.3,65.0|n
.' The path up to the Sapphire Signal Fire starts here |goto Terokkar Forest,57.3,65.0,0.3 |noway |c
step
goto 55.2,67.1
.click Sapphire Signal Fire##7289 |tip Across the hanging bridge and down the spiraling stairs.
.' Extinguish the Sapphire Signal Fire |q 10874/1
step
goto 57.0,71.8|n
.' The path up to the Emerald Signal Fire starts here |goto Terokkar Forest,57.0,71.8,0.3 |noway |c
step
goto 55.5,69.7
.click Emerald Signal Fire##7200 |tip Over the hanging bridge.
.' Extinguish the Emerald Signal Fire|q 10874/2
step
goto 56.0,72.7|n
.' The path up to the Bloodstone and Violet Signal Fires starts here |goto Terokkar Forest,56.0,72.7,0.3 |noway |c |tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
step
goto 56.1,72.4
.click Bloodstone Signal Fire##7290 |tip Up the path inside the tree, on your left as you reach the top.
.' Extinguish the Bloodstone Signal Fire |q 10874/4
step
goto 56.7,69.2
.click Violet Signal Fire##5151 |tip Across the hanging bridge from the Bloodstone Signal Fire.
.' Extinguish the Violet Signal Fire|q 10874/3
step
goto 37.4,51.5
.talk 22272
..turnin 10874
..accept 10889
.talk 22278
..turnin 10840
step
goto 57.6,54.7
.click Wanted Poster##2491
..accept 10033
step
goto 57.4,55.4
.talk 18390
..accept 9992
step
goto 57.5,55.8
.talk 18713
..accept 10038
..accept 10869
step
goto 57.8,54.3
.talk 18389
..accept 9986
step
goto 58.3,54.8
.talk 18387
..accept 9998
..accept 10016
step
goto 58.5,53.6
.talk 18252
..turnin 9793
..accept 10026
step
goto 56.7,53.3
.talk 19296
.home Allerian Stronghold
step
|fly Shattrath
step
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 10112
..accept 9990
step
goto 52.6,21
.talk 22292
..turnin 10889
.' You are about to fight three waves of birds and a bird boss. Make sure you're ready.
.talk 22373
..accept 10879
step
goto 52.6,21
.' Fight off the Minions of Terokk and eventually the Avatar of Terokk
.' Thwart the Attack |q 10879/1
|modelnpc Avatar of Terokk##22375
|modelnpc Minion of Terokk##22376
step
goto 52.6,21
.talk 22292
..turnin 10879
step
goto 30.7,34.6
.talk 18537
..turnin 10325
only if rep ('The Aldor') >= Neutral
step
|fly Allerian Stronghold
step
goto Terokkar Forest,41.6,51.6
.kill 20 Bonelasher##18470+ |q 10033/1
step
goto 34.9,42.8
.click Olemba Cone##6970
.get 30 Olemba Seed|q 9992/1
.kill 10 Warp Stalker##18464+ |q 10026/1
.from Timber Worg Alpha##18477+, Timber Worg##18476+
.get 12 Timber Worg Tail|q 10016/1
.' You can find more Timber Worgs at [40.5,34.6]
step
goto 30.1,42.5|n
.' The path up to Urdak starts here |goto Terokkar Forest,30.1,42.5,0.3 |noway |c
step
goto 31.4,42.5
.kill Urdak##18541|q 9986/3
step
goto 40.5,36.2
.talk 18715
..turnin 10038
..accept 10040
.'He puts an orc disguise on you |havebuff Shadowy Disguise |q 10040 |tip You cannot get the disguise if you are mounted.
step
goto 40.3,39.1
.talk 18719
.' Shadowy Advisor Spoken To |q 10040/3
.' Be careful, Shadowy Hunters will see through your disguise
|modelnpc Shadowy Hunter##18718
step
goto 39,39.7
.talk 18716
.' Shadowy Initiate Spoken To |q 10040/1
.' Be careful, Shadowy Hunters will see through your disguise
|modelnpc Shadowy Hunter##18718
step
goto 38.1,41.1
.talk 18717
.' Shadowy Laborer Spoken To |q 10040/2
.' Be careful, Shadowy Hunters will see through your disguise
|modelnpc Shadowy Hunter##18718
step
goto 40.5,36.2
.talk 18715
..turnin 10040
..accept 10042
step
goto 40.3,39.1
.kill Shadowmaster Grieve##18720|q 10042/3
step
goto 39.8,40.8
.kill 10 Shadowy Executioner##16519+ |q 10042/1
.kill 10 Shadowy Summoner##17088+ |q 10042/2
step
goto 54,30
.click Sealed Box##6881
.get Sealed Box|q 9990/1
step
goto 44.3,26.3
.talk 18446
..turnin 9990
..accept 9994
step
goto 49.9,16.5|n
.' The path up to Ashkaz starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c
step
goto 49.1,16.9
.kill Ashkaz##18539 |q 9986/1
step
goto 48.9,17.3
.kill 14 Shienor Talonite##18449+ |q 10869/1
.kill 6 Shienor Sorcerer##18450+ |q 10869/2
step
goto 59.4,23.4
.kill Ayit##18540|q 9986/2
step
goto 65.5,50.6
.kill 12 Warped Peon##18595+ |q 9998/1
step
goto 69.7,44.2
.talk 18565
..turnin 9998
..accept 10002
..accept 10007
step
goto 68,53.2
.kill Lisaile Fireweaver##18583 |q 10002/1
step
goto 67.9,53.6
.click Fel Orc Plans##222
..accept 10012
step
goto 66.3,55.0
.kill 10 Bonechewer Devastator##16772+ |q 10007/1
.kill 6 Bonechewer Backbreaker##16810+ |q 10007/2
step
goto 69.7,44.2
.talk 18565
..turnin 10002
..turnin 10007
step
'Hearth to Allerian Stronghold |goto Terokkar Forest,57.5,54.2,3 |use Hearthstone##6948 |noway |c
step
goto 57,53.5
.talk 18459
..turnin 9994
..accept 10444
step
goto 57.4,55.4
.talk 18390
..turnin 9992
..accept 10028
step
goto 57.5,55.8
.talk 18713
..turnin 10042
..turnin 10869
step
goto 57.8,54.3
.talk 18389
..turnin 9986
step
goto 58.3,54.8
.talk 18387
..turnin 10016
..accept 10022
..turnin 10012
step
goto 58.5,53.6
.talk 18252
..turnin 10026
step
goto 58.1,53.4
.talk 18704
..turnin 10033
step
goto 69.7,44.2
.talk 21006
..turnin 10444
..accept 9996
step
goto 66.3,34.7
.from Ironjaw##18670 |tip He patrols all over this area so you may need to search for him.
.get Ironjaw's Pelt |q 10022/1
step
goto 70.5,37.4
.kill 10 Firewing Defender##5355+ |q 9996/1
.kill 10 Firewing Bloodwarder##1410+ |q 9996/2
.kill 10 Firewing Warlock##16769+ |q 9996/3
.get 10 Firewing Signet |q 10412/1 |only if rep ('The Scryers')>=Neutral
step
goto 73.9,35.2
.talk 18760
..accept 10051
..'Escort Isla Starmane to safety |q 10051/1
step
goto 54.1,32.1
.click Draenei Vessel##6974
.get 8 Draenei Vessel|q 10028/1
step
goto 57.4,55.4
.talk 18390
..turnin 10028
step
goto 57.2,55.7
.talk 18745
..turnin 10051
step
goto 58.3,54.8
.talk 18387
..turnin 10022
step
goto 69.7,44.2
.talk 21006
..turnin 9996
..accept 10446
step
goto 73.3,34.6
.click Orb of Translocation##7186 |tip Upstairs from Isla Starmane, on the balcony.
.' It will teleport you to the top of the tower |goto 73.5,35.0,0.2 |noway |c
step
goto 73.9,35.8
.from Sharth Voldoun##18554
.collect 1 The Final Code##29912|q 10446
step
goto 74.2,36.5
.click Orb of Translocation##7186
.' It will teleport you to the bottom of the tower |goto 73.3,36.3,0.2 |noway |c
step
goto 71.3,37.4
.click Mana Bomb##7213
.' Activate the Mana Bomb using the Final Code |q 10446/1
step
goto 57,53.5
.talk 18459
..turnin 10446
..accept 10005
step
goto 44.3,26.3
.talk 18446
..turnin 10005
step
goto Shattrath City,45.2,81.3
.talk 18531
.turnin 10412
only if rep ('The Scryers') >= Neutral
step
|fly Orebor Harborage
step
goto Zangarmarsh,41.9,27.2
.talk 18008
..accept 9792
step
|fly Telredor
step
'Go south to Nagrand |goto Nagrand |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Nagrand (65-67)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)
startlevel 65.9
dynamic on
step
goto Zangarmarsh,41.9,27.2
.talk 18008
..accept 9835
..accept 10115
only if rep ('Kurenai') <= Neutral
step
goto 26.4,22.8
.' Click the Daggerfen Poison Vial |tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
.get Daggerfen Poison Vial|q 9848/2
.' It can also be at [25.4,25.0]
only if rep ('Kurenai') <= Neutral
step
goto 24.4,27
.' Click the Daggerfen Poison Manual |tip At the top of the big tower, to the right as you reach the top, on the floor.
.get Daggerfen Poison Manual|q 9848/1
only if rep ('Kurenai') <= Neutral
step
goto 23.8,26.8
.from Chieftain Mummaki##19174
.get Chieftain Mummaki's Totem |q 10116/1
only if rep ('Kurenai') <= Neutral
step
goto 28.2,22.1
.kill 3 Daggerfen Assassin##18116+ |q 10115/1
.kill 15 Daggerfen Muckdweller##18115+ |q 10115/2
only if rep ('Kurenai') <= Neutral
step
goto 29.6,28.3
.kill 5 Ango'rosh Shaman##18118+ |q 9835/1
.kill 10 Ango'rosh Ogre##18117+ |q 9835/2
.get 15 Mushroom Sample |q 9708/1
only if rep ('Kurenai') <= Neutral
step
goto 41.2,28.7
.talk 18019
..turnin 9848
only if rep ('Kurenai') <= Neutral
step
goto 41.9,27.2
.talk 18008
..turnin 9835
..turnin 10116
..turnin 10115
..accept 9792
only if rep ('Kurenai') <= Neutral
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
step
goto 71.5,40.8
.talk 18180
..accept 9789
step
goto 71.4,40.6
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag##17130+ |q 9857/1
.' You can find more Talbuk Stags at [Nagrand,70.8,46.4]
step
goto 64,45.1
.kill 12 Clefthoof##18205+ |q 9789/1
.from Wild Elekk##18334+
.collect 3 Pair of Ivory Tusks##25463|q 9914 |future
.from Dust Howler##17158+
.get Howling Wind|n
.' Click the Howling Wind |use Howling Wind##24504
..accept 9861
.' You can find more Clefthoofs, Elekks, and Dust Howlers at [Nagrand,70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc##17128+ |q 9854/1
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
step
ding 66
step
goto 71.5,40.8
.talk 18180
..turnin 9789
..accept 9850
step
goto 71.4,40.6
.talk 18218
..turnin 9857
..accept 9858
step
goto 60.5,22.4
.talk 18074
..turnin 9861
..accept 9862
step
goto 60.7,22.6
.talk 18071
..accept 9818
step
goto 60.8,22.4
.talk 18073
..accept 9800
..accept 9815
step
goto 61.8,24.4
.talk 18099
..turnin 9818
..accept 9819
step
goto 55.7,22.0
.click Dung##3675
.get 8 Digested Caracoli|q 9800/1
.kill 12 Talbuk Thorngrazer##17131+ |q 9858/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull##17132+ |q 9850/1
.' You can find more Clefthoof Bulls at [Nagrand 49.7,35.6]
step
goto 51.8,34.8
.talk 18335
..accept 9913
step
goto 41.5,40.9
.from Muck Spawn##17154+
.get 5 Muck-ridden Core|q 9815/1
step
goto 33.8,43.7
.kill 5 Murkblood Putrifier##18202+ |q 9862/1
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
.click Oshu'gun Crystal Fragment##6415
.get 10 Oshu'gun Crystal Fragment##25416 |q 9882/1
.' You can find more Crystals at [41.1,70.3]
step
goto 30.6,67.5
.kill 8 Voidspawn##17981+ |q 9925/1
step
goto 42.4,73.5
.kill Gava'xi##18298 |q 9900/1
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
.click Telaar Bulletin Board##6901
..accept 9936
..accept 9940
step
goto 54.7,70.9
.talk 18408
..turnin 9792
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
goto 61.7,67.1
.talk 19035
..accept 10109
step
goto 63.1,73.2
.from Boulderfist Hunter##18352+
.get Boulderfist Plans|q 9917/1
step
goto 65.4,70.8
.kill 10 Tortured Earth Spirit##17156+ |q 9819/1
step
goto 71.1,82.4
.kill Giselda the Crone##18391 |q 9936/1
step
goto 67.9,79.3
.from Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
. Kill 10 Kil'sorrow Agents|q 9936/2
step
goto 72.6,70.7
.talk 18369
..accept 9923
.from Boulderfist Crusher##17134+, Boulderfist Mystic##17135+
.collect 1 Boulderfist Key##25490 |q 9923 |sticky
.click Corki's Prison##1787
.' Free Corki |q 9923/1
step
goto 69.4,56.9
.from Dust Howler##17158+
.get 3 Air Elemental Gas|q 10109/1
.' You can find more Dust Howlers at [Nagrand,65.5,46.9]
step
goto 71.4,40.6
.talk 18218
..turnin 9858
step
goto 71.5,40.8
.talk 18180
..turnin 9850
step
goto 71.6,40.5
.talk 18200
..turnin 9855
step
goto 61.8,24.4
.talk 18099
..turnin 9819
..accept 9821
step
goto 60.8,22.4
.talk 18073
..turnin 9800
..accept 9804
..turnin 9815
step
goto 60.7,22.1
.talk 18072
..turnin 9869
step
goto 60.5,22.4
.talk 18074
..turnin 9862
step
goto 59.7,27.3
.kill 8 Lake Spirit##17153+ |q 9804/1
step
goto 60.8,22.4
.talk 18073
..turnin 9804
..accept 9805
step
goto 52,20.2
.from Enraged Crusher##18062+
.get 10 Enraged Crusher Core|q 9821/1
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413 |q 9940/1
step
goto 48.3,21.5
.kill 5 Warmaul Shaman##18064+ |q 9940/2
.kill 5 Warmaul Reaver##17138+ |q 9940/3
.get 10 Obsidian Warbeads|q 10476/1
step
goto 61.8,24.4
.talk 18099
..turnin 9821
..accept 9849
step
goto 70.8,51.2
.' Go inside the hut
.' Use your Living Fire |use Living Fire##24467
.' Burn the Western Hut |q 9805/2
step
goto 72.4,50.3
.' Go inside the hut
.' Use your Living Fire |use Living Fire##24467
.' Burn the Large Hut |q 9805/1
step
goto 72.8,54.7
.' Go inside the hut
.' Use your Living Fire |use Living Fire##24467
.' Burn the Eastern Hut |q 9805/4
step
goto 71.2,53.2
.' Go inside the hut
.' Use your Living Fire |use Living Fire##24467
.' Burn the Southern Hut |q 9805/3
step
goto 60.8,22.4
.talk 18073
..turnin 9805
..accept 9810
step
goto 27.9,29.7
.click Telaar Supply Crate##6881
.get 10 Telaar Supply Crate |q 9956/1
step
goto 29.5,43.5
.kill 10 Murkblood Scavenger##18207+ |q 9878/1
.kill 5 Murkblood Raider##18203+ |q 9878/2
.' Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water and the village |use Torch of Liquid Fire##24560
.' Burn 10 Sunspring Villager Corpses |q 9874/1
|modelnpc Sunspring Villager##18240+
step
goto 33.1,50.8
.kill Watoosun's Polluted Essence##18145 |q 9810/1
step
goto 33.8,48.9
.kill 8 Lake Surger##17155 |q 9810/2
step
goto 27.9,77.6
.' Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
|modelnpc Shattered Rumbler##17157
.kill 30 Minion of Gurok##18181 |q 9849/1
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
goto 61.7,67.1
.talk 19035
..turnin 10109
step
goto 62.7,71.4
.' Fight Lump until he's almost dead |tip Sleeping on the hill.
.'Talk to Lump and tell him you need answers! |q 9918/1
|modelnpc Lump##18351
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
.kill 8 Boulderfist Crusher##17134+ |q 9921/1
.kill 8 Boulderfist Mystic##17135+ |q 9921/2
step
goto 54.6,72.2
.talk 18223
..turnin 9921
..accept 9922
step
goto 40.7,35.6
.kill 10 Boulderfist Warrior##17136+ |q 9922/1
.kill 10 Boulderfist Mage##17137+ |q 9922/2
.collect 1 Northwind Cleft Key##25509 |q 9924 |sticky
step
goto 39.3,27.5
.click Corki's Prison##1787
.' Free Corki inside the cave |q 9924/1 |tip Inside the cave, way in the back.
step
'Go outside to 54.5,72.2 |goto 54.6,72.2
.talk 18223
..turnin 9922
..accept 10108
step
goto 55.5,68.8
.talk 18183
..turnin 9924
step
goto 73.8,68.1|n
'The path up to Lantresor of the Blade starts here |goto Nagrand,73.8,68.1,0.5 |noway |c
step
goto 73.8,62.6
.talk 18261
..'Listen to his story
..turnin 10108
..accept 9928
..accept 9927
step
ding 67
step
goto 71.4,79.4
.click Kil'sorrow Armament##6959+
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
.' Use your Warmaul Ogre Banners on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners|q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 61.8,24.4
.talk 18099
..turnin 9849
step
goto 60.8,22.4
.talk 18073
..turnin 9810
step
goto 46.5,24.3
.from Warmaul Shaman##18064+,Warmaul Reaver##17138+
.' Use your Kil'sorrow Banners on their corpses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
.' Defend the Boulderfist Saboteurs that appear until they are done placing the corpses |q 9932/1
|modelnpc Boulderfist Saboteur##18396
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
|fly Orebor Harborage
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Outland 60-70\\Netherstorm (68-70)
startlevel 67.2
dynamic on
step
goto Zangarmarsh,41.2,28.7
.talk 18019
..accept 9794
step
goto Blade's Edge Mountains,32.2,91.1
.talk 22488
..accept 10927
step
'Go into the tunnel |goto Blade's Edge Mountains,32.7,90.6,0.3 |c
step
goto 34.5,87.3
.kill 6 Cavern Crawler##22044+ |q 10927/1
step
'Exit the tunnel |goto Blade's Edge Mountains 37.2,80.9 <5 |c
step
goto 36,67.8
.talk 18098
..turnin 9794
step
goto 36.2,67.1
.talk 21066
..accept 10455
step
goto 36.6,67.3
.click Wanted Poster##2491
..accept 10690
step
goto 36.3,66.2
.talk 21158
..turnin 10927
..accept 10502
step
goto 37.1,65.6
.talk 21469
..accept 10555
step
goto 37.4,65
.talk 21197
..accept 10510
step
goto 37.4,64.6
.talk 21151
..accept 10511
step
goto 37.1,70.5
.kill 12 Grovestalker Lynx##21022+ |q 10455/1
step
goto 34.3,77.4
 .from Lashh'an Talonite##19943+, Lashh'an Wing Guard##19944+, Lashh'an Windwalker##19945+, Lashh'an Matriarch##20113+
.get 18 Plucked Lashh'an Feather |q 10555/1
step
goto 34.3,77.4
.click Lashh'an Tome##470
..turnin 10555
..accept 10556
step
goto 35.2,77.3
.' Walk inside the Lashh'an Summoning Circle |tip It's a circle with the purple hologram on the ground.
.' Use the Fistful of Feathers in your bag |use Fistful of Feathers##30530
.' Get the Kaliri aura cast on you |havebuff Ability_Hunter_Pet_DragonHawk |q 10556
.' Allow the newly spawned Kaliri to follow you
|modelnpc Kaliri Aura##21767
|confirm
step
goto 36.2,67.1
.talk 21066
..turnin 10455
..accept 10456
step
goto 37.1,65.6
.talk 21469
.' Have Daranelle analyze the Kaliri aura |q 10556/1
..turnin 10556
step
goto 39.0,76.6|n
.' The path down to the Bloodmaul Ravine starts here |goto Blade's Edge Mountains,39.0,76.6,0.3 |noway |c
step
.' Enter the cave |goto 42.4,83.4 <5 |c
step
goto 41.0,85.6
.click Draenethyst Mine Crystal##7210
.get 5 Draenethyst Mine Crystal|q 10510/1
step
.' Leave the cave |goto 42.5,83.5 <5 |c
step
goto 42.4,79.4
.from Bloodmaul Brewmaster##19957, Bloodmaul Brute##19991+, Bloodmaul Skirmisher##19948+, Bloodmaul Drudger##21238+, Bloodmaul Geomancer##19952+, Bloodmaul Shaman##19992+ |q 10502/1
.' You can find more ogres at [47.0,77.0]
.click Bloodmaul Brew Keg##334
.get 16 Bloodmaul Brutebane Brew|q 10511/1
step
goto 36.3,66.2
.talk 21158
..turnin 10502
..accept 10504
step
goto 37.4,65
.talk 21197
..turnin 10510
step
goto 37.4,64.6
.talk 21151
..turnin 10511
..accept 10512
step
'Go east across the bridge |goto Blade's Edge Mountains,48.6,65.8,0.5 |c
step
goto 51.3,65.5
.from Thunderlord Dire Wolf##20748+
.get 4 Thunderlord Dire Wolf Tail|q 10456/1
step
goto 51.6,75
.kill Rema##21956 |q 10690/1
step
goto 60.2,68.9
.talk 21755
..accept 10608
step
goto 60.5,69
.talk 21691
..accept 10584
step
goto 61.2,70.4
.talk 21107
.fpath Toshley's Station
step
goto 61,68.1
.talk 21110
..accept 10609
step
goto 60.3,68.4
.talk 21460
..accept 10557
step
goto 60.2,68.9
.talk 21461
..'Test the Zephyrium Capacitorium |q 10557/1
step
goto 60.3,68.4
.talk 21460
..turnin 10557
..accept 10710
step
goto 58.4,59.2
.click Power Converter##2373
.' Use your Protovoltaic Magneto Collector on the Electromentals that spawn |use Protovoltaic Magneto Collector##30656
.from Electromental##21729+
.' Get 5 Electromentals |q 10584/1
step
goto 60.5,69
.talk 21691
..turnin 10584
..accept 10657
step
goto 60.4,68.8
.talk 21824
..accept 10620
step
goto 60.5,68.4
.talk 21118
..accept 10632
step
goto 60.2,68.9 |n
.' Sign Tally's Waiver in your bags |use Tally's Waiver (Unsigned)##30540
.talk 21461
.' Tell him to take you to Singing Ridge
.'Go to the Singing Ridge |goto Blade's Edge Mountains,67.0,72.0,2 |noway |c
step
goto 67.9,72.9
.from Scalewing Serpent##20749+
.get 5 Scalewing Lightning Gland|q 10657/2
.' Use your Repolarized Magneto Sphere when fighting Scalewing Serpents and allow them to use their Lightning Strike ability on you |use Repolarized Magneto Sphere##30818
.' Absorb 25 Lightning Strikes |q 10657/1
|tip Put your pet on passive, if you have one, to make this go faster
step
goto 65,55.2
.from Daggermaw Lashtail##20751+
.get 5 Extra Sharp Daggermaw Tooth|q 10632/1
.kill 10 Ridgespine Stalker##20714+ |q 10620/1 |tip They are stealthed.
.' You can find more Spiders and Raptors at this location [67.9,64.6]
step
goto 68.2,76.2
.click Nether Drake Egg##7247
.' Use the Temporal Phase Modulator on the Nether Whelps that spawn |use Temporal Phase Modulator##30742
..'You can use the Modulator repeatedly to get the type of drake you need
.from Proto-Nether Drake##21821+
.get 3 Proto-Nether Drake Essence|q 10609/1
.from Adolescent Nether Drake##21817+
.get 3 Adolescent Nether Drake Essence|q 10609/2
.from Mature Nether Drake##21820+
.get 3 Mature Nether Drake Essence|q 10609/3
|modelnpc Nether Whelp##20021+
step
goto 68.2,76.2
.kill 10 Crystal Flayer##21189+ |q 10608/1
step
goto 60.5,68.4
.talk 21118
..turnin 10632
step
goto 60.3,68.4
.talk 21460
..turnin 10710
step
goto 61,68.1
.talk 21110
..turnin 10609
.home Toshley's Station
step
goto 60.5,69
.talk 21691
..turnin 10657
..accept 10674
step
goto 60.4,68.8
.talk 21824
..turnin 10620
..accept 10671
step
goto 60.2,68.9
.talk 21755
..turnin 10608
..accept 10594
step
goto 60.3,68.4
.talk 21460
..accept 10711
step
goto 61.2,76.1
.' Place the Oscillating Frequency Scanners on the ground kind of far apart |use Oscillating Frequency Scanners##30701
.' Try to place them so that the lines overlap each other, like a star
.' Stand in the middle of the design you made
.' Gauge the Singing Crystal Resonant Frequency |goal Singing crystal resonant frequency gauged |q 10594/1
step
'Hearth to Toshley's Station |goto Blade's Edge Mountains,60.9,68.2,2 |use Hearthstone##6948 |noway |c
step
goto 60.2,68.9
.talk 21755
..turnin 10594
step
goto 60.2,68.9
.talk 21461
.' Tell him to send you to Razaan's Landing
.' Go to Razaan's Landing |goto Blade's Edge Mountains,66.8,49.9,2 |noway |c
step
goto 65.5,46.6
.' Lay the Multi-Spectrum Light Trap at the foot of this pole repeatedly |use Multi-Spectrum Light Trap##30852
..'The pole has a purple lightning circle on it
.' Trap 15 Razaani Light Orbs |q 10674/1
step
goto 65.8,45.8
.kill Fiendling Flesh Beast##20668+ |n
.get 5 Ether-Energized Flesh|q 10671/1
step
goto 60.3,68.4
.talk 21460
..turnin 10711
step
goto 60.4,68.8
.talk 21824
..turnin 10671
step
goto 60.5,69
.talk 21691
..turnin 10674
..accept 10675
step
goto 60.2,68.9
.talk 21461
.' Tell him to send you to Razaan's Landing
.' Go to Razaan's Landing |goto Blade's Edge Mountains,66.8,49.9,2 |noway |c
step
goto 66.3,44.3
.' Kill Razaani mummies around the portal until Nexus-Prince Razaan comes out
.from Nexus"-"Prince Razaan##21057
.click Collection of Souls##4732
.get Collection of Souls|q 10675/1
step
goto 60.5,69
.talk 21691
..turnin 10675
step
|fly Sylvanaar
step
goto 36.3,66.2
.talk 21158
..turnin 10690
step
goto 36.2,67.1
.talk 21066
..turnin 10456
..accept 10457
step
goto 35.8,63.9
.talk 19495
.home Sylvanaar
step
goto 36.7,70.7
.click Grove Seedling##391
.' Summon 5 Living Grove Defenders |q 10457/1
step
goto 36.2,67.1
.talk 21066
..turnin 10457
..accept 10506
step
goto 42.3,79.8
.' Use Rina's Diminution Powder on Bloodmaul Dire Wolves |use Rina's Diminution Powder##30251
.' Weaken 5 Bloodmaul Dire Wolves |q 10506/1
|modelnpc Bloodmaul Dire Wolf##20058
step
goto 44,51.9
.talk 21277
..accept 10516
step
goto 40.3,53
.from Bladespire Shaman##19998+, Bladespire Brute##19995+, Bladespire Shaman##19998+, Bladespire Champion##21296+ |q 10504/1
.' Use your Bloodmaul Brutebane Keg near an ogre |use Bloodmaul Brutebane Keg##30353
.' Get 5 Bladespire ogres drunk |q 10512/1
step
goto 39.3,53
.' Pull the 2 non-elite guards one at a time and kill them
.' Place a beer in front of the fire |use Bloodmaul Brutebane Keg##30353
.from Droggam##20731
.get Vindicator Vuuleen's Blade |q 10516/1
step
goto 42.1,57.8
.' Pull the 2 non-elite guards one at a time and kill them
.' Place a beer in front of the fire |use Bloodmaul Brutebane Keg##30353
.from Mugdorg##20726
.get Vindicator Vuuleen's Shield |q 10516/2
step
goto 44,51.9
.talk 21277
..turnin 10516
..accept 10517
step
goto 39.9,49.6
.' Pull the 2 non-elite guards one at a time and kill them
.' Place a beer in front of the fire |use Bloodmaul Brutebane Keg##30353
.kill Gorr'dim##20732|q 10517/1
step
goto 44,51.9
.talk 21277
..turnin 10517
step
'Hearth to Sylvanaar |goto Blade's Edge Mountains,38.3,65.3,3 |use Hearthstone##6948 |noway |c
step
goto 37.4,64.6
.talk 21151
..turnin 10512
step
goto 36.3,66.2
.talk 21158
..turnin 10504
step
goto 36.2,67.1
.talk 21066
..turnin 10506
step
|fly Toshley's Station
step
goto 60.3,68.4
.talk 21460
..accept 10712
step
goto 60.2,68.9
.talk 21461
.' Tell him to send you to Ruuan
.' Go to Ruuan Weald |q 10712/1
..'Use your Nether-weather Vane while in flight |use Nether-weather Vane##31124
.' Test the Spinning Nether-Weather Vane |q 10712/2
step
goto 62,39.5
.talk 22007
..accept 10682
step
goto 61.2,38.4
.talk 22053
..accept 10770
..accept 10771
step
goto 62.2,39.1
.talk 21782
..accept 10567
step
goto 62,38
.talk 22149
..accept 10795
.talk 22150
..accept 10796
step
goto 62.6,38.2
.talk 22133
..accept 10753
step
goto 62.7,40.4
.talk 22020
..turnin 10712
step
goto 68.9,35.6
.kill 4 Felsworn Scalewing##21123+ |q 10753/1
.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
.kill 2 Fel Corrupter##21300+ |q 10753/3
.get Damaged Mask|n
.' Click the Damaged Mask |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds|q 10771/2
step
goto 71.6,18.5
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/3
step
goto 70.7,20.2
.kill 8 Scorch Imp##21021+ |q 10770/1
step
goto 63.9,31.5
.from Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Ravenguard##19987+, Ruuan'ok Matriarch##20211+
.collect 6 Ruuan'ok Claw##30704 |q 10567
step
goto 64.5,33.1
.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
.from Harbinger of the Raven##21767
.get Harbinger's Pendant |q 10567/1
step
goto 62.6,38.2
.talk 22133
..turnin 10753
step
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
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
goto 61.2,38.4
.talk 22053
..turnin 10770
..turnin 10771
step
goto 58.8,39.1
.talk 21981
.' He wanders around the Wyrmcult camps
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer##21810+ |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net|q 10717/1
.' Kill Wyrmcult mobs
.get Meeting Note|n
.' Click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
step
goto 62,39.5
.talk 21983
..turnin 10717
..accept 10747
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
'Make sure you have your Felsworn Gas Mask in your bags, if you need another one, talk to Wildlord Antelarion at Evergrove |collect Felsworn Gas Mask##31366 |q 10819
|confirm
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant##19961+ |q 10820/1
.kill 4 Doomforge Engineer##19960+ |q 10820/2
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10820
step
goto 55.2,24
.' Go up the ramp on the left side of the tower
.kill Dorgok##20753+ |q 10795/1
.get Gorgrom's Favor |n
.' Click Gorgrom's Favor in your bags |use Gorgrom's Favor##31363
..accept 10797 |tip You have to have the quest "A Date with Dorgok" in your quest log to be able to accept this quest from this item.
step
goto 56.2,26.7
.kill 10 Bloodmaul Mauler##19993+ |q 10796/1
.kill 5 Bloodmaul Warlock##19994+ |q 10796/2
step
goto 62,38
.talk 22150
..turnin 10796
.talk 22149
..turnin 10795
..turnin 10797
..accept 10798
step
goto 53.3,41.2
.talk 22103
..turnin 10798
..accept 10799
step
goto 49,44.5
.from Young Crust Burster##21381+, Greater Crust Burster##21380+
.get 7 Crust Burster Venom Gland|q 10799/1
step
goto 53.3,41.2
.talk 22103
..turnin 10799
..accept 10800
step
goto 60.2,47.6
.' Use Sablemane's Sleeping Powder on Grulloc |use Sablemane's Sleeping Powder##31403 |modelnpc Grulloc##20216
.click Grulloc's Sack##323
.get Grulloc's Sack |q 10800/1
step
goto 53.3,41.2
.talk 22103
..turnin 10800
..accept 10801
step
goto 62,38
.talk 22149
..turnin 10801
..accept 10802
.talk 22150
..accept 10803
step
'Go west across the bridge |goto Blade's Edge Mountains,53.1,37.9,0.5 |c
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
'Go into the tunnel |goto Blade's Edge Mountains,49.5,35.8,0.3 |c
step
goto 46.7,32.9
.kill Draaca Longtail##22396 |q 10893/1
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
'Go northwest through the tunnel to Grishnath |goto Blade's Edge Mountains,43.1,29.9,0.3 |c
step
goto 42.2,25.1
.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
|tip Must be within melee range to receive the buff
.' Anytime the buff wears off, kill Grishna mobs again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, next to a pond with basilisks in it.
.' Receive the Third Prophecy |q 10607/3
|modelnpc The Third Prophecy##7249
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the left ramp, then left across the hanging bridge.
.' Receive the First Prophecy |q 10607/1
|modelnpc The First Prophecy##7249
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
.' Receive the Second Prophecy |q 10607/2
|modelnpc The Second Prophecy##7249
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, in front of a hut.
.' Receive the Fourth Prophecy |q 10607/4 |modelnpc The Fourth Prophecy##7249
.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
.get Orb of the Grishna|n
.' Click the Orb of the Grishna |use Orb of the Grishna##31489
..accept 10825
step
.' Go inside the cave |goto 32.0,33.7 <5 |c
step
goto 32.3,34.9
.' Use the Blackwhelp Net on Wyrmcult Blackwhelps |use Blackwhelp Net##31129 |modelnpc Wyrmcult Blackwhelp##21387
.' Capture 10 Wyrmcult Blackwhelps |q 10747/1
.from Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121|q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 30.3,24.6
.kill 5 Boulder'mok Brute##21046+ |q 10803/1
.kill 3 Boulder'mok Shaman##21047+ |q 10803/2
.collect 3 Grisly Totem##31754|q 10803
step
goto 30.6,22.2
.click Gorgrom's Altar##206
.' Use the Grisly Totems on his corpse |use Grisly Totem##31754 |modelnpc Gorgrom the Dragon-Eater##21514
.' Plant 3 Grisly Totems |q 10802/1
step
'Hearth to Sylvanaar |goto Blade's Edge Mountains,35.9,63.9,0.3 |use Hearthstone##6948 |noway |c
step
|fly Evergrove
step
goto 62,39.5
.talk 21983
..turnin 10747
.talk 22007
..turnin 10722
..accept 10748
..turnin 10825
..accept 10829
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 62,38
.talk 22149
..turnin 10802
..accept 10818
.talk 22150
..turnin 10803
step
goto 53.3,41.2
.talk 22103
..turnin 10818
step
'Go through the tunnel to 36.9,22.5 |goto 36.9,22.5
.talk 22215
..turnin 10829
..accept 10830
step
goto 39.3,20.2
.click Grishnath Orb##7011 |tip They are around the huts in this area.
.collect 5 Grishnath Orb##31495|q 10830
step
goto 30.1,28.6
.from Dire Raven##21042
.collect 5 Dire Pinfeather##31517|q 10830
step
.' Click your Grishnath Orbs to combine the orbs and pinfeathers |use Grishnath Orb##31495
.collect 5 Exorcism Feather##31518 |q 10830
step
goto 33.8,29.4
.' Use the Exorcism Feathers on the Raven's Wood Leafbeards |use Exorcism Feather##31518 |modelnpc Raven's Wood Leafbeard##21326
.from Koi-Koi Spirit##22226+ |tip Do not kill the Raven's Wood Leafbeards.
.' Exorcise 5 Raven's Wood Leafbeards |q 10830/1
step
goto 36.9,22.5
.talk 22215
..turnin 10830
step
'Go inside the cave to 33.9,35.4 |goto 33.9,35.4
.kill Maxnar the Ashmaw##21389 |q 10748/1
step
goto 62,39.5
.talk 22007
..turnin 10748
step
'Go northeast to Netherstorm |goto Netherstorm |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Netherstorm (68-70)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)
startlevel 68.97
dynamic on
step
goto Netherstorm,21.3,55.6
.talk 19569
..accept 10183
step
goto 31.5,56.6
.talk 19578
..accept 10190
step
goto 26.5,51.9
.' Weaken Phase Hunters |modelnpc Phase Hunter##18879+
.' You will see a message in your chat window saying 'Phase Hunter is very weak'
.' Use your Battery Recharging Blaster |use Battery Recharging Blaster##28369
.' Battery Charge Level (10) |q 10190/1
step
goto 31.5,56.6
.talk 19578
..turnin 10190
step
ding 69
step
goto 32.3,63.9
.talk 19617
..accept 10342
step
goto 32.4,64.2
.talk 19880
..accept 10265
step
goto 32,64
.talk 19468
..accept 10189
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..accept 10241
only if rep ('The Aldor') >= Neutral
step
goto 31.9,64.4
.talk 19571
home Area 52
step
goto 32.7,65
.talk 19570
..turnin 10183
..accept 10186
step
goto 31.4,66.2
.talk 19217
..accept 10173
step
goto 33.1,60
.from Shaleskin Flayer##20210
.' You can find more Flayers at [29.5,63.4]
.get 5 Shaleskin Shale |q 10342/1
step
goto 31.5,56.6
.talk 19589
..accept 10191
.' Escort Maxx A. Million Mk. V to safety through the ruins |q 10191/1
.' Click the red glowing crystals on the ground while escorting Maxx A. Million Mk. V
.get 10 Etherlithium Matrix Crystal |q 10186/1
step
goto 31.5,56.6
.talk 19578
..turnin 10191
step
goto 32.3,63.9
.talk 19617
..turnin 10342
..accept 10199
step
goto 32.7,65
.talk 19570
..turnin 10186
..accept 10203
..accept 10225
step
goto 32.4,66.8
.talk 19709
..turnin 10225
..accept 10224
step
goto 34.8,59.1
.from Mana Wraith##18864+
.get 7 Mana Wraith Essence |q 10224/1
step
goto 32.4,66.8
.talk 19709
..turnin 10224
..accept 10226
step
goto 27.8,65
.from Captain Arathyn##19635 |tip He walks around this area on a big purple bird.
.get B'naar Personnel Roster |q 10189/1
only if rep ('The Scryers') >= Neutral
step
goto 26.3,66.7
.kill 8 Sunfury Magister##18855+ |q 10241/1
.kill 8 Sunfury Bloodwarder##18853+ |q 10241/2
only if rep ('The Aldor') >= Neutral
step
goto 35.4,76.5
.' Use the Elemental Power Extractor on Sundered Rumblers and Warp Aberrations |use Elemental Power Extractor##28547
.from Sundered Rumbler##18881+, Warp Aberration##18865+
.click Elemental Power##7118+
.get 5 Elemental Power |q 10226/1
step
goto 40.3,72.9
.click Multi-Spectrum Terrain Analyzer##7082
.' Retrieve the Multi-Spectrum Terrain Analyzer |q 10203/3
step
goto 41,73.8
.click Hyper Rotational Dig-A-Matic##7080
.' Retrieve the Hyper Rotational Dig-A-Matic |q 10203/1
step
goto 42.4,72.8
.from Pentatharon##20215
.get Arklon Crystal Artifact |q 10265/1
step
goto 42.5,72.2
.click Big Wagon Full of Explosives##7083
.' Retrieve the Big Wagon Full of Explosives |q 10203/4
step
goto 41.4,71.8
.click Servo-Pneumatic Dredging Claw##7081
.' Retrieve the Servo-Pneumatic Dredging Claw |q 10203/2
step
goto 40.9,72.5
.' Stand next to the broken, smoking altar on the small hill
.' Use your Conjuring Powder to summon Ekkorash |use Conjuring Powder##29207
.from Ekkorash the Inquisitor##19493
.get Archmage Vargoth's Staff |q 10173/1
step
goto 44.6,72.1
.from Nether Ray##18880+
.get 5 Nether Ray Stinger |q 10199/1
step
goto 34.2,68.1
.talk 19634
..turnin 10203
..accept 10221
step
goto 32.4,66.8
.talk 19709
..turnin 10226
step
goto 31.4,66.2
.talk 19217
..turnin 10173
..accept 10300
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 32.3,63.9
.talk 19617
..turnin 10199
step
goto 33,64.7
.talk 19645
..accept 10206
step
goto 32,64
.talk 19468
..turnin 10189
..accept 10193
.talk 19469
..accept 10204
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10241
..accept 10313
.talk 19467
..accept 10243
only if rep ('The Aldor') >= Neutral
step
goto 33.5,53
.kill Disembodied Ghost |n
.get 4 Flawless Crystal Shard |q 10300/1
' |from Disembodied Vindicator##18872, Disembodied Protector##18873, Disembodied Exarch##21058
step
goto 35,59.6
.' Dr. Boom sends out little walking bombs that blow up |tip When you see a clear passage to Dr. Boom, click the Boom's Doom in your bags, then run close enough to Dr. Boom so you can put the green circle under him, then click to throw the bomb.
.' If you have a flying mount you can attack Dr. Boom from atop a barrel here [34.7,59.5]
.' Click Boom's Doom in your bags |use Boom's Doom##29429
.kill Dr. Boom##20284 |q 10221/1
step
goto 31.4,66.2
.talk 19217
..turnin 10300
..accept 10174
step
goto 34.2,68.1
.talk 19634
..turnin 10221
step
goto 26.3,66.7
.from Sunfury Magister##18855+
.collect Bloodgem Shard |n
.' Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
.' Siphon the Bloodgem Crystal |q 10204/1
.kill 8 Sunfury Geologist##19779+ |q 10193/3
only if rep ('The Scryers') >= Neutral
step
goto 23.2,68.1
.kill 2 Sunfury Warp-Master##18857+ |q 10193/1
.kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2
only if rep ('The Scryers') >= Neutral
step
goto 25.7,60.6
.' Stand next to the Northern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Northern Pipeline |q 10313/1
only if rep ('The Aldor') >= Neutral
step
goto 20.9,66.9
.' Stand next to the Western Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Western Pipeline |q 10313/4
only if rep ('The Aldor') >= Neutral
step
goto 20.7,70.7
.' Stand next to the Southern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Southern Pipeline |q 10313/3
only if rep ('The Aldor') >= Neutral
step
goto 23.2,68.2
.' Click the B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
..turnin 10243
..accept 10245
only if rep ('The Aldor') >= Neutral
step
goto 29,72.7
.' Stand next to the Eastern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Eastern Pipeline |q 10313/2
only if rep ('The Aldor') >= Neutral
step
goto 30.2,75.5
.from Zaxxis Raider##18875+, Zaxxis Stalker##19642+
.get 10 Zaxxis Insignia |q 10262/1
.click Ethereal Technology##7088
.get 10 Ethereal Technology |q 10206/1
step
goto 33,64.7
.talk 19645
..turnin 10206
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
step
goto 32,64
.talk 19468
..turnin 10193
..accept 10329
.talk 19469
..turnin 10204
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10313
.talk 19467
..turnin 10245
..accept 10299
only if rep ('The Aldor') >= Neutral
step
.' Enter the building |goto 24.9,67.7 <5 |c
step
goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10329/2
only if rep ('The Scryers') >= Neutral
step
goto 23.2,68.1
.click B'naar Control Console##7076
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10329/1
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10299/2
only if rep ('The Aldor') >= Neutral
step
goto 23.2,68.1
.' Kill all Warp-Engineers in the nearest area to make your life easier.
.click B'naar Control Console##7076
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10299/1
only if rep ('The Aldor') >= Neutral
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
goto 32.1,64.2
.talk 19467
..turnin 10299
..accept 10321
.talk 19466
..accept 10246
only if rep ('The Aldor') >= Neutral
step
goto 32,64
.talk 19468
..turnin 10329
..accept 10194
only if rep ('The Scryers') >= Neutral
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 33.8,64.2
.talk 20162
..turnin 10194
..accept 10652
..' Tell her you're as ready as you'll ever be.
..'You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
only if rep ('The Scryers') >= Neutral
step
goto 48.2,86.6
.talk 19840
..turnin 10652
..accept 10197
only if rep ('The Scryers') >= Neutral
step
goto 47.7,84.9
.kill Sunfury Arcanist##20134+ |n
.get Sunfury Arcanist Robes |q 10197/3
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.kill Sunfury Researcher##20136+ |n
.get Sunfury Researcher Gloves |q 10197/1
only if rep ('The Scryers') >= Neutral
step
'Go outside to 50.8,83.2 |goto 50.8,83.2
.from Sunfury Guardsmen##18850
.get Sunfury Guardsman Medallion |q 10197/2
only if rep ('The Scryers') >= Neutral
step
goto 48.2,86.6
.talk 19840
..turnin 10197
..accept 10198
only if rep ('The Scryers') >= Neutral
step
'Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise |use Sunfury Disguise##28607
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge Coruu to 48.2,84.1 |goto 48.2,84.1
.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you. |modelnpc Arcane Annihilator##18856
.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
.' Listen to them talk
.' Gather the Information |q 10198/1
only if rep ('The Scryers') >= Neutral
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10198
..accept 10330
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.from Overseer Seylanna##20397
.get Coruu Access Crystal |q 10330/2
.click Coruu Control Console##7076
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
.' Shut Down Manaforge Coruu |q 10330/1
only if rep ('The Scryers') >= Neutral
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10330
..accept 10200
only if rep ('The Scryers') >= Neutral
step
goto 45.9,79.4
.kill 8 Sunfury Arcanist##20134+ |q 10246/2
only if rep ('The Aldor') >= Neutral
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.kill 5 Sunfury Researcher##20136+ |q 10246/1
.' Kill Overseer Seylanna
..collect Coruu Access Crystal##29396 |q 10321 |sticky
.click Coruu Control Console####7076
..' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |goal Manaforge Coruu Shut Down |q 10321/1
only if rep ('The Aldor') >= Neutral
step
goto 57.7,85.2
.talk 20464
..accept 10334
.talk 20463
..accept 10331
step
goto 57.5,86.3
.talk 19488
..accept 10184
.' Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10174
..accept 10188
step
goto 57.5,86.3
.talk 19488
..accept 10185
.talk 19489
..accept 10343
step
goto 59.1,78.8
.talk 20415
..turnin 10334
..accept 10337
.' Escort Bessy to Thadell |q 10337/1 |tip When escorting Bessy, let her get hit first, or else she won't help you fight.
step
.goto 57.7,85.2
.talk 20464
..turnin 10337
step
goto 58.4,88.3
.from Abjurist Belmara##19546
.collect 1 Belmara's Tome##29234 |n
.' Click Belmara's Tome in your bags |use Belmara's Tome##29234
..accept 10305 |tip She walks around this area, some searching may be necessary.
step
goto 59.6,87.7
.from Cohlien Frostweaver##19545 |tip He walks around this area, some searching may be necessary.
.collect 1 Cohlien's Cap##29236 |n
.' Click Cohlien's Cap in your bags |use Cohlien's Cap##29236
..accept 10307
step
goto 60.4,88
.from Battle-Mage Dathric##19543 |tip He is inside the building that looks like a town hall
.collect 1 Dathric's Blade##29233 |n
.' Click Dathric's Blade |use Dathric's Blade##29233
..accept 10182
step
goto 59.9,85.6
.from Conjurer Luminrath##19544 |tip He walks around this area, some searching may be necessary.
.collect 1 Luminrath's Mantle##29235 |n
.' Click Luminrath's Mantle in your bags |use Luminrath's Mantle##29235
..accept 10306
step
goto 61,85
.from Kirin'Var Apprentice##20409+
.get Smithing Hammer |q 10331/1
step
goto 59.5,88.3
.from Severed Spirit##19881+, Severed Defender##20934+
.' Kill 20 Severed Spirits |q 10184/1
step
goto 57.7,85.2
.talk 20463
..turnin 10331
..accept 10332
step
goto 57.5,86.3
.talk 19488
..turnin 10184
..accept 10312
step
goto 61.3,85
.kill Rhonsus##20410 |q 10332/1
step
goto 57.7,85.2
.talk 20463
..turnin 10332
step
'Kill 10 Mana Seekers and 10 Mageslayers as you do the following steps: |n
.' Skip to the next step of the guide
step
goto 56.9,86.8
.' Go inside the little house
.' Click Dathric's Blade when standing next to the Weapon Rack |use Dathric's Blade##28351
.' Put Dathric's Spirit to Rest |q 10182/1
step
goto 56.4,87.8
.' Go inside the little house
.' Click Luminrath's Mantle when standing next to the Dresser |use Luminrath's Mantle##28352
.' Put Luminrath's Spirit to Rest |q 10306/1
step
goto 55.7,87.2
.click Mana Bomb Fragment##7214
.get Mana Bomb Fragment |q 10343/1
step
goto 55.1,87.5
.' Click Cohlien's Cap when standing next to the Foot Locker |use Cohlien's Cap##28353
.' Put Cohlien's Spirit to Rest |q 10307/1
step
goto 55.5,86.5
.' Go inside the house with a huge log laying diagonally into it
.' Click Belmara's Tome when standing next to the Bookshelf |use Belmara's Tome##28336
.' Put Belmara's Spirit to Rest |q 10305/1
step
goto 55.5,86.7
.kill 10 Mana Seeker##18867+ |q 10185/1
.kill 10 Mageslayer##18866+ |q 10185/2
step
goto 57.5,86.3
.talk 19488
..turnin 10305
..turnin 10185
..turnin 10307
..turnin 10182
..turnin 10306
.talk 19489
..turnin 10343
..accept 10239
step
goto 60.4,88
.from Battle-Mage Dathric##19543 |tip He is inside the building that looks like a town hall
.get Annals of Kirin'Var |q 10312/1
step
goto 57.5,86.3
.talk 19488
..turnin 10312
..accept 10316
step
goto 60.3,78
.' Go inside the barn
.click Necromantic Focus##4972
..turnin 10316
..accept 10314
step
goto 59.8,79.5
.from Kirin'Var Spectre##21065+, Kirin'Var Ghost##20512+
.get 10 Loathsome Remnant |q 10314/1
step
goto 57.5,86.3
.talk 19488
..turnin 10314
..accept 10319
step
goto 59.9,80.4
.click Suspicious Outhouse##3332
.get Naberius's Phylactery |q 10319/1
step
goto 57.5,86.3
.talk 19488
..turnin 10319
step
goto 51.1,82.5
.click Energy Isolation Cube##7088
.get 10 Energy Isolation Cube |q 10239/1
.from Spellbinder Maryana##19593 |tip She wanders around outside in this area, so some searching may be necessary.
.get Sigil of Krasus |q 10188/1
step
goto 51.1,80.7
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10188
..accept 10192
step
goto 57.5,86.3
.talk 19489
..turnin 10239
step
goto 57.6,89.6
.click Krasus' Compendium - Chapter 2##6817
.get Krasus's Compendium - Chapter 2 |q 10192/2
step
goto 58.6,89.2
.click Krasus' Compendium - Chapter 1##6817
.get Krasus's Compendium - Chapter 1 |q 10192/1
step
goto 58.8,87.9
.click Krasus' Compendium - Chapter 3##6817
.get Krasus's Compendium - Chapter 3 |q 10192/3
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10192
..accept 10301
step
goto Netherstorm,57.6,86.3
.talk 19489
..accept 10233
..accept 10240
step
goto 57.5,86.4
.talk 19488
..accept 10222
step
goto 59.3,85.4
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Eastern Rune |q 10240/1
step
goto 57.3,82.9
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Northeastern Rune |q 10240/2
step
goto 54.3,86.1
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Western Rune |q 10240/3
step
goto 55.2,79.7
.from Sunfury Flamekeeper##20221+
.collect Flaming Torch##28550 |use Flaming Torch##28550
.' Use the Flaming Torch on Sunfury Ballistas and Tents
.' Destroy 4 Sunfury Ballistas |q 10233/1 |tip They look sort of like catapults all around this area.
.' Destroy 4 Sunfury Tents |q 10233/2
..kill 10 Sunfury Archer##19707+ |q 10222/1
step
goto 56.6,78.2
.from Spellreaver Marathelle##19926+
..get Heliotrope Oculus |q 10301/1
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10301
..accept 10209
step
goto 57.5,86.3
.talk 19488
..turnin 10222
..accept 10223
step
goto 57.6,86.3
.talk 19489
..turnin 10233
..turnin 10240
step
goto 56.0,66.8
..kill Master Daellis Dawnstrike##19705 |q 10223/1
step
goto 59.2,62.9
.from Summoner Kanthin##19657
.get Stone of Glacius##28479 |q 10209/1
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10209
..accept 10176
step
goto 57.5,86.3
.talk 19488
..turnin 10223
step
goto 58.1,86.5
..kill Ar'kelos##19494 |q 10176/1
step
goto 58.3,86.4
.talk 19481
..turnin 10176
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10176
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
goto 32,64
.talk 19468
..turnin 10200
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10246
..accept 10328
.talk 19467
..turnin 10321
..accept 10322
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.0
.talk 19469
.accept 10341
.talk 19468
..accept 10338
only if rep ('The Scryers') >= Neutral
step
goto 33,64.7
.talk 19645
..accept 10333
..accept 10232
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.6,56.5
.talk 19728
..turnin 10333
..accept 10234
step
goto 46.4,56.4
.talk 20810
..accept 10417
..accept 10348
step
goto 46.5,56.0
.talk 20921
..accept 10433
step
goto 48.2,55.0
.click Diagnostic Equipment##7192
.get Diagnostic Results |q 10417/1
step
goto 48.2,53.9
.click Ivory Bell##7176
.get 15 Ivory Bell |q 10348/1
.from Ripfang Lynx##20671
.get 10 Ripfang Lynx Pelt |q 10433/1
step
goto 48.8,59.3
.kill 15 Gan'arg Engineer##16948+ |q 10232/2
.kill 5 Mo'arg Doomsmith##16944+ |q 10232/1
.click Fel Reaver Part##7114
.get 10 Fel Reaver Parts |q 10234/1
step
goto 46.6,56.5
.talk 19728
..turnin 10234
..accept 10235
step
goto 46.4,56.4
.talk 20810
..turnin 10348
..turnin 10417
..accept 10418
step
goto 46.5,56.0
.talk 20921
..turnin 10433
step
goto 46.8,53.9
.kill 8 Barbscale Crocolisk##20773+ |q 10418/1
step
goto 50.7,57.1
.from Doomclaw##19738
..get Doomclaw's Hand |q 10235/1
step
goto 57.9,63.4
.kill Sunfury Conjurer##20139 |n
.get 1 Sunfury Arcane Briefing|q 10328/2
.kill Sunfury Bowmen and Sunfury Centurions|n
.get 1 Sunfury Military Briefing|q 10328/1
only if rep ('The Aldor') >= Neutral
' |from Sunfury Bowmen##20207+, Sunfury Centurions##20140+
step
goto 57.9,63.4
.kill 8 Sunfury Conjurer##20139+ |q 10341/1
.kill 6 Sunfury Bowmen##20207+ |q 10341/2
.kill 4 Sunfury Centurions##20140+ |q 10341/3
only if rep ('The Scryers') >= Neutral
step
goto 57.6,63.9
.click Box Surveying Equipment##6881
.get 10 Box of Surveying Equipment |q 10267/1
step
'Go inside Manaforge Duro to [60.0,68.5] |goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10322/2
only if rep ('The Aldor') >= Neutral
step
goto 59.1,66.8
.click Duro Control Console####7076
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10322/1
only if rep ('The Aldor') >= Neutral
step
'Go inside Manaforge Duro to 60.0,68.5 |goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10338/2
only if rep ('The Scryers') >= Neutral
step
goto 59.1,66.8
.click Duro Control Console####7076
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10338/1
only if rep ('The Scryers') >= Neutral
step
goto 46.5,56.0
.talk 20921
..accept 10434
step
goto 46.4,56.4
.talk 20810
..turnin 10418
..accept 10423
step
goto 46.6,56.5
.talk 19728
..turnin 10235
..accept 10237
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
ding 70
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
goto 33.0,64.7
.talk 19645
..turnin 10232
step
goto 32.7,65.0
.talk 19570
..turnin 10237
step
goto 32.0,64.1
.talk 19468
..turnin 10338
.talk 19469
..turnin 10341
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10328
..accept 10431
.talk 19467
..turnin 10322
only if rep ('The Aldor') >= Neutral
step
goto 43.5,35.1
.talk 20811
..turnin 10423
..accept 10424
step
goto 44.7,36.8
.talk 20205
..turnin 10434
..accept 10435
step
goto 44.7,34.9
.talk 20470
..accept 10335
step
goto 44.7,34.9
.talk 20471
..accept 10336
..accept 10855
step
goto 34.8,38.3
.talk 20780
..turnin 10431
..accept 10380
only if rep ('The Aldor') >= Neutral
step
goto 34.6,38.0
.talk 20112
..accept 10317
step
goto 34.5,37.8
.talk 20341
..accept 10315
step
.' Go inside Manaforge Ara to [27.1,39.2] |goto 27.1,39.2
.kill 3 Mo'arg Warp-Master##20326+ |q 10380/3
only if rep ('The Aldor') >= Neutral
step
goto 30.8,40.8
.kill 15 Sunfury Nethermancer##20248+ |q 10315/1
step
goto 30.8,40.8
.kill 3 Daughter of Destiny##18860+ |q 10380/2
only if rep ('The Aldor') >= Neutral
step
goto 26.4,44.0
.' The entrance to Trelleum Mine starts here |goto 26.4,44.0,0.5 |noway |c
step
goto 26.4,42.3
.talk 20393
..turnin 10317
..accept 10318
step
goto 26.8,36.0
..kill Overmaster Grindgarr##20803+ |q 10318/1
step
goto 26.4,43.7 |n
.' Leave the Mine |goto 26.4,43.7,0.5 |noway |c
step
goto 26.4,42.3
.kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1
.kill 6 Mo'arg Warp-Master##20326 |q 10380/3
only if rep ('The Aldor') >= Neutral
step
goto Netherstorm,34.5,37.8
.talk 20341
..turnin 10315
step
goto 34.6,37.9
.talk 20112
..turnin 10318
step
goto 34.8,38.3
.talk 20780
..turnin 10380
..accept 10381
only if rep ('The Aldor') >= Neutral
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10381
only if rep ('The Aldor') >= Neutral
step
goto 39.1,28.9
 .from Gan'arg Mekgineer##16949+
..collect 5 Condensed Nether Gas##31653 |q 10855
step
goto 38.0,25.5
.talk 22293
..turnin 10850 |n
.' Destroy Inactive Fel Reaver |q 10855/1
step
goto 44.7,34.9
.talk 20471
..turnin 10855
..accept 10856
step
goto 47.6,26.8
.' Use Diagnostic Device next to the generator |use Diagnostic Device##29803
.' Get the Diagnostic Results |q 10424/1
step
goto 41.9,23.6
..kill 12 Wrathbringer##18858+ |q 10856/1
step
goto 44.2,12.6
.click Dome Generator Segment##7089
..get 10 Dome Generator Segment |q 10435/1
step
goto 51.6,20.5
.' Use Surveying Markers next to this Draenei Banner |use Surveying Markers##29445
.' Place Surveying Marker One |q 10335/1
step
goto 54.5,22.8
.' Use Surveying Markers next to this Draenei Banner |use Surveying Markers##29445
.' Place Surveying Marker Two |q 10335/2
step
goto 55.8,20.0
.' Use Surveying Markers next to this Draenei Banner |use Surveying Markers##29445
.' Place Surveying Marker Three |q 10335/3
step
goto 51.7,20.4
..kill 10 Hound of Culuthas##20141+ |q 10336/1
..kill 5 Eye of Culuthas##20394+ |q 10336/2
step
goto 43.5,35.2
.talk 20811
..turnin 10424
..accept 10430
step
goto 44.7,34.9
.talk 20471
..turnin 10856
..accept 10857
..turnin 10336
step
goto 44.7,34.9
.talk 20470
..turnin 10335
step
goto 44.7,36.7
.talk 20205
..turnin 10435
step
goto 39.2,20.0
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678 |modelnpc Cyber-Rage Forgelord##16943
.' Use the Detonate Teleporter ability next to teleporters at [39.1,20.5]
.' Destroy the Western Teleporter |q 10857/1
step
goto 41.2,19.4
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678 |modelnpc Cyber-Rage Forgelord##16943
.' Use the Detonate Teleporter ability next to teleporters at [41.2,19.4]
.' Destroy the Central Teleporter |q 10857/2
step
goto 42.2,20.9
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678 |modelnpc Cyber-Rage Forgelord##16943
.' Use the Detonate Teleporter ability next to teleporters at [42.2,20.9]
.' Destroy the Eastern Teleporter |q 10857/3
step
goto 44.7,14.6
.talk 20913
..turnin 10430
..accept 10436
step
goto 45.6,11.2
..kill 12 Scythetooth Raptor##20634+ |q 10436/1
step
goto 44.7,14.6
.talk 20913
..turnin 10436
..accept 10440
step
goto 43.5,35.2
.talk 20811
..turnin 10440
step
goto 44.7,34.9
.talk 20471
..turnin 10857
step
goto 42.3,32.6
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
.' Use the Talbuk Tagger on Talbuks when they are below 20 percent health. |use Talbuk##29817
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
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 58.3,31.7
.talk 20071
..accept 10270
step
goto 59.2,32.1
.talk 20450
..accept 10422
step
goto Netherstorm,59.2,32.6
.talk 20449
..accept 10411
step
goto 59.5,32.4
.talk 20448
..accept 10339
step
goto 60.1,31.7
.talk 20907
..accept 10437
step
goto 57.1,36.5
..kill Captain Zovax##20727 |q 10339/4 |tip He walks around this area.
..kill 5 Ethereum Assassin##20452+ |q 10339/1
..kill 5 Ethereum Shocktrooper##20453+ |q 10339/2
..kill 2 Ethereum Researcher##20456+ |q 10339/3
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10339
..accept 10384
step
goto 55.8,39.9
.click Ethereum Data Cell##1247
..get Ethereum Data Cell |q 10384/1
step
goto 54.5,41.1
.from Warden Icoshock##20770+
..collect The Warden's Key##29742
step
goto 55.2,42.8
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Void Waste Globule##20805+ |q 10411/2
step
goto 53.3,41.5
.clicknpc Captain Tyralius's Prison##20787 |tip It looks like a glowing pink orb
.' Free Captain Tyralius |q 10422/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10384
..accept 10385
step
goto 56.5,38.6
.from Ethereum Shocktrooper##20453+, Ethereum Assassin##20452+
..collect Ethereum Essence##29482 |n
.' Use Ethereum Essence in your bags to see Ethereum Relays |use Ethereum Essence##29482
.from Ethereum Relay##20619+
.get 15 Ethereum Relay Data |q 10385/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10385
..accept 10405
step
goto 55.8,40.5
.from  Ethereum Overlord##20459+, Ethereum Archon##20458+
..get Prepared Ethereum Wrapping |q 10405/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10405
..accept 10406
step
goto 56.8,38.6
.' Escort the Ethereum Demolitionist while he sabotages the Ethereum Conduit |tip If you have trouble with this, clear the path first before accepting the escort quest.
.' Sabotage Ethereum Conduit |q 10406/1
|modelnpc  Protectorate Demolitionist##20802+
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10406
step
goto 57.1,37.6
.from Ethereum Gladiator##20854 |tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
.talk 20763
..accept 10425
step
'Escort the Captured Protectorate Vanguard to Protectorate Watch Post
.' Escort Captured Protectorate Vanguard |q 10425/1
step
goto 59.5,32.4
.talk 20448
..turnin 10425
step
goto 59.3,32.0
.talk 20450
..turnin 10422
step
goto 62.5,34.7
.from Voidshrieker##18870+, Unstable Voidwraith##18869+
..get 8 Fragment of Dimensius |q 10437/1
step
goto 59.5,39.9
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Seeping Sludge Globule##20806+ |q 10411/1
step
goto 59.4,45.0
.talk 20551
..accept 10345
step
goto 61.0,45.6 |n
'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c
step
.' Go inside the cave to 59.8,42.6 |goto 59.8,42.6
.' Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473 |modelnpc Withered Corpse##20561
.' Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
goto 60.9,41.5
.talk 20552
..accept 10353
step
goto 61.0,41.5
.click Teleporter Power Pack##7089
..get Teleporter Power Pack |q 10270/1
step
goto 60.1,40.1
..kill Arconus the Insatiable##20554 |q 10353/1
step
goto 61.1,45.4 |n
'Leave the Access Shaft Zeon |goto 61.1,45.4,0.5 |noway |c
step
goto 59.4,45.0
.talk 20551
..turnin 10345
step
goto 59.2,32.6
.talk 20449
..turnin 10411
step
goto 59.5,32.4
.talk 20448
..turnin 10353
step
goto 60.1,31.7
.talk 20907
..turnin 10437
..accept 10438
step
goto 60.2,31.7
.talk 20903
.' Tell the dragon you are ready to fly.
.' Use the Phase Disruptor in your bags while flying around the Void Conduit |use Phase Disruptor##29778
.' Destroy the Void Conduit |q 10438/1
step
goto 60.1,31.7
.talk 20907
..turnin 10438
step
goto 71.1,39.0
.' Click the Ethereum Transponder Zeta
.' Attempt to contact Wind Trader Marid.
.talk 20518
..turnin 10270
..accept 10271
step
goto 71.8,38.7
.' Use your Essence Gatherer on Nether Drakes and Nether Dragons around this area |use Essence Gatherer##69825 |tip Be careful not to agro them, use the Essence Gatherer in combat.
..get 8 Nether Dragon Essence |q 10271/1
|modelnpc Nether Drake##18877
|modelnpc Nether Dragon##20332
step
goto 70.9,38.8
.talk 20154
..turnin 10271
..accept 10281
step
goto 71.2,35.1
.talk 20110
..turnin 10281
..accept 10272
step
goto 72.0,38.4
.click Nether Dragonkin Egg##7247
..get 15 Nether Dragonkin Egg |q 10272/1
step
goto 71.2,35.1
.talk 20110
..turnin 10272
..accept 10273
step
goto 58.3,31.7
.talk 20071
.' Tell him, "Wind Trader Marid, I've returned with more information..."
..kill Wind Trader Marid##20071 |q 10273/1
step
goto 71.2,35.1
.talk 20110
..turnin 10273
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
|fly The Stormspire
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Shadowmoon Valley (68-70)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)
startlevel 68.97
dynamic on
step
goto Shadowmoon Valley,39.5,53.7
.talk 21357
..accept 10562
step
goto 38.8,54.2
.talk 22042
..accept 10569
step
goto 36.5,55.2
.talk 21777
..accept 10661
step
goto 36.4,56.9
.talk 21937
..accept 10680
step
goto 36.3,56.9
.talk 21773
..accept 10703
step
goto 37.1,56.5
.talk 21774
..accept 10642
step
goto 37.1,58.3
.talk 19352
.home Wildhammer Stronghold
step
goto 36.7,51.7
.kill 10 Infernal Attacker##21419+ |q 10562/1
step
goto 37.1,43.9
.from Felfire Diemetradon##21408+
.get 8 Felfire Spleen |q 10661/1
.click Ever-burning Ash##7256
.get 15 Ever-Burning Ash |q 10642/1
.' You can find more Diemetradon's and Ever-Burning Ash at [Shadowmoon Valley 30.5,37.1]
.from Felboar##21878+, Vilewing Chimaera##21879+
.' Kill 20 Shadowmoon Valley Wildlife |q 10703/1
step
ding 69
step
 goto 42.2,45.1
.talk 21024
..turnin 10680
..accept 10458
step
goto 36.4,33.5
.from Dark Conclave Ravenguard##19827+, Dark Conclave Shadowmancer##19826+, Dark Conclave Hawkeye##21386+
.get Sketh'lon Commander's Journal - Page 1 |q 10569/1
.get Sketh'lon Commander's Journal - Page 2 |q 10569/2
.get Sketh'lon Commander's Journal - Page 3 |q 10569/3
step
goto Shadowmoon Valley,39.5,53.7
.talk 21357
..turnin 10562
..accept 10563
step
goto 38.8,54.2
.talk 22042
..turnin 10569
..accept 10759
step
goto 36.5,55.2
.talk 21777
..turnin 10661
..accept 10677
step
goto 36.3,56.9
.talk 21773
..turnin 10703
step
goto 37.1,56.5
.talk 21774
..turnin 10642
..accept 10643
step
goto 37.2,56.6
.' Equip the Spectrecles in your bags. |equipped Spectrecles##30721
.kill 12 Shadowmoon Harbinger##21795+ |q 10643/1 |tip They walk around Wildhammer Stronghold. You can only see them when you have the Spectrecles equipped.
step
' Make sure you equip your normal hat.
|confirm
step
goto 37.1,56.5
.talk 21774
..turnin 10643
..accept 10644
step
goto 46.5,46.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Earth Spirit##21050+
.' Capture 8 Earthen Souls |q 10458/1
.from Enraged Fire Spirit##21061+
.' Capture 8 Fiery Souls |q 10458/2
step
goto 54.7,58.2
.talk 21953
..accept 10807
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..accept 10687
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..accept 10683
only if rep ('The Scryers') >= Neutral
step
.goto 42.2,45.1
.talk 21024
..turnin 10458
..accept 10480
step
goto 35.4,42.1
.talk 22024
..turnin 10759
..accept 10777
step
goto 23.6,36.8
.' Fly up onto the platform
.' Click the Box o' Tricks in your bag while standing next to the Legion Communication Device |use Box o' Tricks##30638 |model Legion Communication Device##7091
.' Discover Legion's Plans |q 10563/1
step
goto Shadowmoon Valley,39.8,29.8
.from Asghar##22025 |tip He walks around Sketh'lon Wreckage, so you may need to search for him.
.get Sketh'lon War Totem |q 10777/1
step
goto 49.6,28.4
.from Greater Felfire Diemetradon##21462
.get Overdeveloped Felfire Gizzard##30867 |q 10677/1
step
goto 50.7,24.7
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Water Spirit##21059+
.' Capture 5 Watery Souls |q 10480/1
step
goto 53.1,25.3 |n
.' Go into the Coilskar Cistern |goto 53.1,25.3,0.3 |noway |c
step
goto Shadowmoon Valley,51.7,17.6
.from Keeper of the Cistern##20795
.' Walk to [52.1,18.8]
.talk 21027
..accept 10451
.' Escort Earthmender Wilda to Safety |q 10451/1
step
'Hearth to Wildhammer Stronghold |goto Shadowmoon Valley,37.1,58.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 36.5,55.2
.talk 21777
..turnin 10677
..accept 10678
step
goto Shadowmoon Valley,39.5,53.7
.talk 21357
..turnin 10563
..accept 10572
step
goto 42.2,45.1
.talk 21024
..turnin 10480
..accept 10481
..turnin 10451
step
goto 35.4,42.1
.talk 22024
..turnin 10777
..accept 10778
step
goto 26.3,41.2
.click Fel Reaver Power Core##7237
.get Fel Reaver Power Core |q 10572/1
step
goto 22.2,35.6
.click Fel Reaver Armor Plating##7238
.get Fel Reaver Armor Plating |q 10572/2
step
goto 39.5,53.7
.talk 21357
..turnin 10572
..accept 10564
step
goto 22.6,39.9
.' Use your Fel Bomb while standing on the glowing green glyph on the ground |use Fel Bomb##30614
.' Destroy the Legion Hold Infernals |q 10564/1
step
goto 39.5,53.7
.talk 21357
..turnin 10564
..accept 10573
step
goto 40.4,41.3
.talk 21471
..turnin 10573
..accept 10582
step
goto 40.1,38.2 |n
.' Enter the Deathforge using the upper entrance |goto 40.1,38.2,0.5 |noway |c
step
goto 38.5,39.7
.kill 10 Deathforge Guardian##20878+ |q 10582/1
.kill 5 Deathforge Summoner##20872+ |q 10582/2
step
goto 40.1,38.2 |n
.' Leave the Deathforge |goto 40.1,38.2,0.5 |noway |c
step
goto Shadowmoon Valley,40.4,41.3
.talk 21471
..turnin 10582
..accept 10583
..accept 10585
step
goto 40.1,38.2 |n
.' Enter the Deathforge using the upper entrance |goto 40.1,38.2,0.5 |noway |c
step
goto 37.6,41.3
.from Deathforge Tinkerer##19754+, Deathforge Smith##19756+
.get Elemental Displacer |q 10585/2
step
goto 34.6,39.9
.talk 21727
.' Reclaim Flanis's pack
.get Flanis Pack |q 10583/1
step
 goto 39.5,39.4 |n
 .' Jump down here |goto 39.7,39.6 <5 |c
step
goto 37.7,38.3
.' Use your Elemental Displacer on Summoner Skartax |use Elemental Displacer##30672 |modelnpc Summoner Skartax##21207+
.from Infernal Oversoul##21735
.' End the Infernal Summoning Ritual |q 10585/1
step
goto 40.4,39.4 |n
.' Leave the Deathforge |goto 40.4,39.4,0.5 |noway |c
step
 goto 40.5,41.3
.talk 21471
..turnin 10583
..turnin 10585
..accept 10586
step
goto 40.1,38.2 |n
.' Enter the Deathforge using the upper entrance |goto 40.1,38.2,0.5 |noway |c
step
goto 37.4,42.7
.' Click the Heavy Iron Portcullis
.' Continue through gate to [39.1,46.6]
.kill Warbringer Razuun##21287 |q 10586/1
.get Razuun's Orders |q 10586/2
step
goto 40.1,38.2 |n
.' Leave the Deathforge |goto 40.1,38.2 <5 |noway |c
step
goto 39.5,53.7
.talk 21357
..turnin 10586
..accept 10589
step
goto 25.2,32.4
.from Mo'arg Weaponsmith##19755+
.get Legion Teleporter Control |q 10589/1
step
goto 39.5,53.7
.talk 21357
..turnin 10589
..accept 10766
step
goto 40.8,22.2
.talk 21790
..turnin 10766
..accept 10606
step
goto 39.4,19.5
.from Doctor Gutrick##21778
.collect The Doctor's Key##30712 |n
.' Click The Doctor's Strongbox |model The Doctor's Strongbox##41
.get The Art of Fel Reaver Maintenance |q 10606/1
step
goto 40.8,22.3
.talk 21790
..turnin 10606
..accept 10612
step
goto 40.7,21.7
.' Click the Fel Reaver Control Console to take control of a Fel Reaver Sentinel |model Fel Reaver Control Console##356
.' Use the abilities on your hotbar to do the following:
.from Deathforged Infernal##21316+
.' Destroy 60 Deathforged Infernals |q 10612/1 |tip If your character gains too much aggro, exit out of the Fel Reaver and run up the hill and go through the green skull teleporter. When you come back you won't have any aggro and you can continue the quest.
step
goto 40.8,22.3
.talk 21790
..turnin 10612
..accept 10744
step
'Hearth to Wildhammer Stronghold |goto Shadowmoon Valley,37.1,58.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 35.8,57.7
.talk 21330
..turnin 10744
step
goto 47.5,71.7
.from Eclipsion Archmage##19796+, Eclipsion Centurion##19792+, Eclipsion Bloodwarder##19806+
.get Lianthe's Key |q 10778/1
.click Lianthe's Strongbox##41
.get Rod of Lianthe |q 10778/2
step
goto 58.2,70.8
.talk 21797
..turnin 10644
..accept 10635
step
goto 59.9,69.1
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs near the totems you plant.
.from Enraged Air Spirit##21060+
.' Capture 10 Air Souls |q 10481/1
.' You can find more Air Spirits at [61.3,66.5]
step
goto 42.2,45.1
.talk 21024
..turnin 10481
..accept 10513
step
goto 63.9,47.0
.' Equip the Spectrecles in your bags |equipped Spectrecles##30721
.from Cleric of Karabor##21815
.get Gorefiend's Cloak |q 10635/1
step
' Make sure you equip your normal hat.
|confirm
step
goto 56.1,44.4
.from Felspine the Greater##21897
.get Felspine's Hide |q 10678/1
step
goto 35.4,42.1
.talk 22024
..turnin 10778
..accept 10780
step
goto 36.5,55.2
.talk 21777
..turnin 10678
step
goto 41.9,58.4
.click Sketh'lon Feather##6962+
.get 8 Sketh'lon Feather |q 10780/1
step
goto 58.2,70.8
.talk 21797
..turnin 10635
step
goto 35.4,42.1
.talk 22024
..turnin 10780
..accept 10782
step
goto 43.1,44.9
.' Use your Unfinished Headpiece next to Gul'dan |use Unfinished Headpiece##31360 |modelnpc Gul'dan##17008+
.get Energized Headpiece##31365 |q 10782/1
step
goto 35.4,42.1
.talk 22024
..turnin 10782
..accept 10808
step
goto 41.1,60.8
.from Dark Conclave Ritualist##22138+ |tip You have to kill all the ones that are channeling a purple spell around this area.
.' Use your Staff of Parshah on the big blue blob in the center of the green lake |use Staff of Parshah##31386
.' End the Dark Conclave Summoning Ritual |q 10808/1
step
goto 35.4,38.1
.talk 22024
..turnin 10808
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
only if rep ('The Scryers') >= Neutral
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10807/1
.kill 4 Ashtongue Warrior##21454+ |q 10807/2
.kill 6 Ashtongue Shaman##21453+ |q 10807/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Neutral
step
goto 53.9,23.5
.talk 21183
..turnin 10513
..accept 10514
step
goto 53.5,17.3
.' Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462 |tip They look like carrots sticking out of the ground around this area.
.' If a boar is close it will run over and eat the tuber
.' Click the Shadowmoon Tuber's that spawn |model Shadowmoon Tuber##414
.get 10 Shadowmoon Tuber |q 10514/1
step
goto 53.9,23.5
.talk 21183
..turnin 10514
..accept 10515
step
goto 56.1,15.8
.' Click Ravenous Flayer Eggs |tip They look like brown spiked eggs on the ground around this area.
.' Destroy 10 Ravenous Flayer Eggs |q 10515/1 |model Ravenous Flayer Egg##477
step
goto 53.9,23.5
.talk 21183
..turnin 10515
..accept 10519
step
goto 53.9,23.5
.talk 21183
..' Tell him you are ready to listen to his story
.' Listen to the Cipher of Damnation - History and Truth |q 10519/1
step
goto 53.9,23.5
.talk 21183
..turnin 10519
..accept 10521
..accept 10527
..accept 10546
step
goto 44.5,23.6
.talk 21291
..turnin 10521
..accept 10522
step
goto 52.6,27.4
.from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
.collect Coilskar Chest Key##30426 |n
.click Coilskar Chest##1387
.get First Fragment of the Cipher of Damnation |q 10522/1
step
goto 44.5,23.6
.talk 21291
..turnin 10522
..accept 10523
step
goto 53.9,23.5
.talk 21183
..turnin 10523
step
goto 29.6,50.4
.talk 21292
..turnin 10527
..accept 10528
step
goto 28.0,47.5
.from Painmistress Gabrissa##21309+
.get Crystalline Key |q 10528/1
step
goto 29.6,50.4
.talk 21292
..turnin 10528
step
goto 29.5,50.5
.talk 21318
..accept 10537
step
goto 29.6,50.3
.from Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+, Illidari Shadowstalker##21337+
.get Lohn'goron, Bow of the Torn-Heart |q 10537/1
step
goto 29.5,50.5
.talk 21318
..turnin 10537
..accept 10540
step
goto 30.7,58.3
.' Walk with the Spirit Hunter to this spot
.from Veneratus the Many##20427
.get Second Fragment of the Cipher of Damnation |q 10540/1
step
goto 29.5,50.5
.talk 21318
..turnin 10540
..accept 10541
step
goto 47.6,57.2
.talk 21293
..turnin 10546
..accept 10547
step
goto 44.8,58.2
.click Rotten Arakkoa Egg##7138
.get Rotten Arakkoa Egg |q 10547/1
step
goto 53.9,23.5
.talk 21183
..turnin 10541
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..accept 10587
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..accept 10619
only if rep ('The Aldor') >= Neutral
step
goto 61.1,28.3
.talk 21746
.home Altar of Sha'tar
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Neutral
step
goto 63.3,30.4
.talk 19581
.fpath Altar of Sha'tar
.' Fly to Shattrath City, Terokkar |goto Shattrath City |noway |c
only if rep ('The Aldor') >= Neutral
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
only if rep ('The Aldor') >= Neutral
step
'Hearth to Altar of Sha'tar |goto Shadowmoon Valley,61.1,28.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10619/1
.kill 4 Ashtongue Warrior##21454+ |q 10619/2
.kill 6 Ashtongue Shaman##21453+ |q 10619/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
only if rep ('The Aldor') >= Neutral
step
|fly Shattrath
only if rep ('The Scryers') >= Neutral
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
only if rep ('The Scryers') >= Neutral
step
.' Hearth to Wildhammer Stronghold |goto Shadowmoon Valley,37.1,58.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto Shadowmoon Valley,47.6,57.2
.talk 21293
..turnin 10550
..accept 10570
step
goto 49.0,57.5
.' Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
.from Envoy Icarius##21409 |tip Stay back and wait for his bodyguard to leave him.
.get Stormrage Missive |q 10570/1
step
goto 47.6,57.2
.talk 21293
..turnin 10570
..accept 10576
step
goto 47.1,66.1
.from Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
.get 6 Eclipsion Armor |q 10576/1
step
goto 47.6,57.2
.talk 21293
..turnin 10576
..accept 10577
step
goto 45.3,68.2
.' Use your Blood Elf Disguise |use Blood Elf Disguise##30639
.' Talk to Grand Commander Ruusk at [46.5,71.9]
.' Deliver Illidan's Message |q 10577/1
step
goto 47.6,57.2
.talk 21293
..turnin 10577
step
goto 54.7,58.2
.talk 21953
..turnin 10807
..accept 10817
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.8
.talk 21744
.home Sanctum of the Stars
only if rep ('The Scryers') >= Neutral
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
only if rep ('The Scryers') >= Neutral
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10817/1
.kill 8 Shadowmoon Chosen##22084+ |q 10817/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3
only if rep ('The Scryers') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
only if rep ('The Scryers') >= Neutral
step
goto Shadowmoon Valley,53.9,23.5
.talk 21183
..turnin 10541
only if rep ('The Scryers') >= Neutral
step
'Hearth to Sanctum of the Stars |goto Shadowmoon Valley,56.3,59.8,0.3 |use hearthstone##6948 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10688
only if rep ('The Scryers') >= Neutral
step
goto 54.7,58.2
.talk 21953
..turnin 10817
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
only if rep ('The Scryers') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
only if rep ('The Scryers') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
only if rep ('The Scryers') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
step
goto 57.3,49.6
.talk 21826
..turnin 10686
..accept 10622
only if rep ('The Scryers') >= Neutral
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.5,49.8,0.5 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
only if rep ('The Scryers') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
only if rep ('The Scryers') >= Neutral
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 58.1,48.2
.talk 21700
..turnin 10628
only if rep ('The Scryers') >= Neutral
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..turnin 10619
..accept 10816
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
only if rep ('The Aldor') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
only if rep ('The Aldor') >= Neutral
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10816/1
.kill 8 Shadowmoon Chosen##22084+ |q 10816/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3
only if rep ('The Aldor') >= Neutral
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10637
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..turnin 10816
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
only if rep ('The Aldor') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
only if rep ('The Aldor') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
only if rep ('The Aldor') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
only if rep ('The Aldor') >= Neutral
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
only if rep ('The Aldor') >= Neutral
step
'Hearth to Altar of Sha'tar |goto Shadowmoon Valley,61.1,28.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 62.3,29.8
.talk 22214
..turnin 10826
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10575
..accept 10622
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
only if rep ('The Aldor') >= Neutral
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 58.1,48.2
.talk 21700
..turnin 10628
only if rep ('The Aldor') >= Neutral
step
ding 70
step
goto 60.3,58.3
.talk 22113 |tip He wanders around Netherwing Fields so you may need to search for him.
..accept 10804
step
goto 61.4,56.0
.from Rocknail Flayer##21477+, Rocknail Ripper##21478+
.collect Rocknail Flayer Giblets##31373 |n
.' Use Rocknail Flayer Giblets to create a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373 |tip It takes 5 Giblets to create 1 Carcass.
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 61.1,58.4
.' Use your Rocknail Flayer Carcasses on the ground near Mature Netherwing Drakes |use Rocknail Flayer Carcass##31372 |tip They look like blue dragons flying in the sky around this area.
.' A dragon will fly down and eat the carcass
.' Feed 8 Mature Netherwing Drakes |q 10804/1
step
goto 59.3,58.7
.talk 22113 |tip He wanders around Netherwing Fields so you may need to search for him.
..turnin 10804
..accept 10811
step
goto 64.3,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..turnin 10811
..accept 10814
step
goto 64.3,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..' Listen to his story
.' Listen to the Tale of Neltharaku |q 10814/1
step
goto 64.3,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..turnin 10814
..accept 10836
step
goto 66.3,60.1
.from Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+, Dragonmaw Drake-Rider##21719+
.' Slay 15 Dragonmaw Orcs |q 10836/1
step
goto 64.3,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..turnin 10836
..accept 10837
step
goto 73.9,84.9
.click Nethervine Crystal##5691
.get 12 Nethervine Crystal |q 10837/1
step
goto 63.5,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..turnin 10837
..accept 10854
step
goto 68.7,61.4
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal##31652
.' Free 5 Enslaved Netherwing Drakes |q 10854/1 |tip If the Enslaved Netherwing Drake begins attacking the Dragonmaw Subjugator after you use the crystal on them, you may need to help them so they don't die. Be careful not to make the Drake attack you though.
step
goto 63.5,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..turnin 10854
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Dragonblight (72-74)
startlevel 70.00
dynamic on
step
'Go to Stormwind |goto Stormwind City |noway |c
step
goto 61.2,70.9
.' Buy 1 Overcharged Capacitor |tip This will be used for a later quest called "Just a Few More Things".
.buy Overcharged Capacitor##39682 |q 11650 |future
step
goto 18.2,25.5|n
.'Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra 58.3,68.0
.talk 25245
.home Valiance Keep
step
goto 57.8,67.6
.talk 25307
..accept 11672
step
goto 56.7,72.6
.talk 25250
..turnin 11672
..accept 11727
step
goto 56.4,69.6
.talk 25816
..turnin 11727
..accept 11797
step
goto 55,68.9
.talk 25825
..accept 11789
step
goto 54.4,69.6
.kill 6 Crypt Crawler##25227+ |q 11797/1
step
goto 56.4,69.6
.talk 25816
..turnin 11797
..accept 11889
step
goto 57.5,69.3
.click First Aid Supplies##1 |tip It's downstairs in the ship next to the candle shrine.
.get Hawthorn's Anti-Venom |q 11789/1
step
goto 57.5,69.1
.click Cultist Shrine##328
..accept 11920 // 11720 is the same quest, but it was 11920 for me... odd.
step
goto 57.8,69.2
.talk 25298
..turnin 11920
step
goto 57.8,69.2
.talk 25299
..accept 11791
step
goto 56.7,72.6
.talk 25250
..turnin 11791
step
goto 56.7,72.6
.talk 25301
..accept 12141
step
goto 56.6,72.5
.talk 25285
..accept 11792
step
goto 55,68.9
.talk 25825
..turnin 11789
step
goto 55,70.5
.' Use your Reinforced Net on Scourged Flamespitters flying next to the fortress wall |use Reinforced Net##35278
.kill 6 Scourged Flamespitter##25582+ |q 11889/1
step
goto 56.4,69.6
.talk 25816
..turnin 11889
..accept 11897
step
goto 50.9,72.1
.' Click your Incendiary Explosives |use Incendiary Explosives##35704
.' Set the Explosive at the Southern Sinkhole |q 11897/1 |tip It looks like a hole in the ground with webs all over it.  Stand on the edge of the sinkhole.
step
goto 54.1,63.7
.' Click your Incendiary Explosives |use Incendiary Explosives##35704
.' Set the Explosives at the Northern Sinkhole |q 11897/2 |tip It looks like a hole in the ground with webs all over it.  Stand on the edge of the sinkhole.
step
goto 53.7,60.1
.kill Cultist Necrolyte##25651+ |n
.get Cultist Communique|q 11792/1
step
goto 56.4,69.6
.talk 25816
..turnin 11897
..accept 11928
step
goto 56.8,69.5
.talk 26155
..accept 11927
step
goto 56.6,72.5
.talk 25285
..turnin 11792
..accept 11793
step
goto 58.4,67.8
.talk 25249
..accept 11575
step
goto 58.7,68.4
.talk 25251
..turnin 11927
..accept 11599
step
goto 58.6,67.3
.talk 25826
..turnin 11793
..accept 11794
step
goto 58.6,67.1
.' Use your Oculus of the Exorcist on "Salty" John Thorpe |use Oculus of the Exorcist##35125
.talk 25248
..'Tell him you have reason to believe he is involved in cultist activity
.' Defeat the Cultist in the kitchen |q 11794/3
step
goto 58.8,68.7
.talk 25737
..accept 11707
step
goto 59.2,68.3
.' Use your Oculus of the Exorcist on Tom Hegger |use Oculus of the Exorcist##35125
.talk 25827
..'Ask him about the Cult of the Damned
.' Defeat the Cultist on the docks |q 11794/1
step
goto 56.7,71.8
.' Use your Oculus of the Exorcist on Guard Mitchells |use Oculus of the Exorcist##35125
.talk 25828
..'Ask him how long he has worked for the Cult of the Damned
.' Defeat the Cultist in the jail |q 11794/2
step
goto 58.6,67.3
.talk 25826
..turnin 11794
step
goto 58.2,62.8
.talk 26083
|tip If he is not here then he may have died from ghoul attacks. Wait for him to respawn.
..turnin 11928
..accept 11901
step
'Go inside the mine to 56.8,55.6 |goto 56.8,55.6
.click Plagued Grain##7697
..turnin 11901
..accept 11902
step
goto 56,55.4
.talk 25385
..turnin 11599
..accept 11600
step
goto 58.2,62.8
.talk 26083
..turnin 11902
..accept 11903
step
goto 58.3,62.8
.talk 26085
..accept 11913
step
goto 58.2,63
.talk 26084
..accept 11908
step
goto 57,61.7
.kill 14 Plagued Scavenger##25650+ |q 11903/1
.' Use Wendy's Torch next to Farshire Grain bags |use Wendy's Torch##35491 |tip They look like bags with patches on the ground around this area.
.' Burn 8 Farshire Grain |q 11913/1
step
goto 55.8,58.3
.click Fields, Factories and Workshops##6892
.get Fields, Factories and Workshops##35481|q 11908/1
step
goto 58.3,62.8
.talk 26085
..turnin 11913
step
goto 58.2,62.8
.talk 26083
..turnin 11903
..accept 11904
step
goto 58.2,63
.talk 26084
..turnin 11908
..accept 12035
step
goto 58.1,61.1
.kill Harvest Collector##25623+ |n
.' Use Jeremiahs Tools on their corpses |use Jeremiah's Tools##35943
.' Rewire 5 Harvest Collectors |q 12035/1
step
'Go inside the mine to 57.9,53.4 |goto 57.9,53.4
.from Captain Jacobs##26252
.collect Cart Release Key##35705|q 11904
step
goto 57.2,54.6
.click Cart Release##6899
.' Release the Ore Cart |q 11904/1
step
'Go outside to 58.2,62.8 |goto 58.2,62.8
.talk 26083
..turnin 11904
..accept 11962
step
goto 58.2,63
.talk 26084
..turnin 12035
step
goto 57.3,66.6
.talk 25235
..turnin 11962
..accept 11963
step
goto 58.7,68.4
.talk 25251
..turnin 11600
..accept 11601
step
goto 58.3,68
.talk 25245
..turnin 11601
..accept 11603
step
goto 58.2,62.8
.talk 26083
..turnin 11963
..accept 11965
step
goto 57.3,59.4
.click Bell Rope##7717
.' Ring the Farshire Bell |q 11965/1
step
goto 58.2,62.8
.talk 26083
..turnin 11965
step
'Go underwater to 61.9,65.7 |goto 61.9,65.7
.click Wine Crate##1
.get Kul Tiras Wine|q 11603/1
step
goto 58.5,68.1
.talk 25302
..turnin 11603
..accept 11604
step
goto 56.7,71.5
.talk 25395
..turnin 11604
..accept 11932
step
goto 47.1,75.5
.talk 25435
..turnin 12141
..accept 11613
step
goto 46.5,77.2
.kill 6 Skadir Raider##25522+ |q 11613/1
.kill 5 Skadir Longboatsman##25521+ |q 11613/2
step
goto 44.2,77.8
.'Kill the Riplash Myrmidon and cheering Skadir mobs
.talk 25636
..accept 12471
step
goto 47.1,75.5
.talk 25435
..turnin 11613
..accept 11619
..turnin 12471
step
'Go inside the cave to 46.4,78.2 |goto 46.4,78.2
.kill Gamel the Cruel##26449 |q 11619/1
step
goto 47.1,75.5
.talk 25435
..turnin 11619
..accept 11620
step
goto 43.6,80.5
.talk 25450
..turnin 11620
..accept 11625
step
'Go into the big building to 54.7,89.1 |goto 54.7,89.1
.from Ragnar Drakkarlund##26451
.get Trident of Naz'jan |q 11625/1
step
goto 43.6,80.5
.talk 25450
..turnin 11625
..accept 11626
step
goto 52.2,88.2
.' Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
.' Use your Trident of Naz'jan on Leviroth |use Trident of Naz'jan##35850
.kill Leviroth##26452 |q 11626/1
step
goto 47.1,75.5
.talk 25435
..turnin 11626
step
goto 57,44.3
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
.' He walks around the small pond in the middle of the camp
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228 |modelnpc Trapped Mammoth Calf##25850
.' Free 8 Mammoth Calves |q 11876/1
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox" |kill "Lunchbox" |q 11884/2
.kill Nedar, Lord of Rhinos##25801 |q 11884/1 |tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground |tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs |use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1
step
'Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids. |nobuff Ability_Seal
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.' He walks around the small pond in the middle of the camp
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.'Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |modelnpc Orphaned Mammoth Calf##25861 |tip The calf is slow so don't move too fast or you'll lose it.
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull |n
.' Click it to ride it |invehicle
step
goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.click Kaw's War Halberd##7687
.get Kaw's War Halberd |q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thug##25843+ |n
.click Shipment of Animal Parts##7678
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill Clam Master K##25800 |q 11872/1
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 54.3,36.1
.talk 25292
..accept 11612
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..accept 11605
'|model Elder Atkanok##7633
step
goto 52.8,34
.click "Elder Sagani"##7655
.' Identify the Elder Sagani |q 11605/2
step
goto 52.3,31.2
.click "Elder Takret"##7655
.' Identify the Elder Takret |q 11605/3
step
goto 50.9,32.4
.click "Elder Kesuk"##7655
.' Identify the Elder Kesuk |q 11605/1
step
goto 54.4,35.1
.kill 12 Beryl Treasure Hunter##25353+ |q 11612/1
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..turnin 11605
..accept 11607
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11612
..accept 11617
step
goto 51.5,31.4
.kill Beryl Hound##25355+ |n
.get 6 Cores of Malice|n
.' Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
.' Free 3 Kaskala Craftsman spirits |q 11607/1
.' Free 3 Kaskala Shaman spirits |q 11607/2
step
.from Beryl Reclaimer##25449+
.collect 3 Gnomish Grenade##34772|q 11617
step
goto 52.2,32.1
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the North Platform |q 11617/2
step
goto 51,33.9
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the West Platform |q 11617/3
step
goto 52.8,34.5
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the East Platform |q 11617/1
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..turnin 11607
..accept 11609
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11617
..accept 11623
step
goto 53.1,33.3
.click Tuskarr Ritual Object##7472+
.get 6 Tuskarr Ritual Object|q 11609/1
step
goto 50.1,32.6
.kill Curator Insivius##25448 |q 11623/1
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..turnin 11609
..accept 11610
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11623
step
goto 52.8,34
.' Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Sagani's ceremony |q 11610/2
|model "Elder Saganai"##7655
step
goto 52.3,31.2
.' Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Takret's ceremony |q 11610/3
|model "Elder Takret"##7655
step
goto 50.9,32.4
.' Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Kesuk's ceremony |q 11610/1
|model "Elder Kesuk"##7655
step
goto 54.7,35.8
..' Talk to Elder Atkanok
..turnin 11610
'|model Elder Atkanok##7633
step
goto 45.3,33.3
.talk 25262
..turnin 11575
..accept 11587
step
goto 45,33.4
.talk 25291
..accept 11576
step
goto 40.5,39.2
.kill Beryl Mage Hunter##25585+ |n
.collect Beryl Prison Key##34688 |n
.click Arcane Prison##7631
.' Free an Arcane Prisoner |q 11587/1
step
goto 41.2,41.8|n
.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8,0.5 |noway |c
step
goto 34.3,42
.' Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
.' Take the Cleftcliff Anomaly Reading |q 11576/1
step
goto 45,33.4
.talk 25291
..turnin 11576
..accept 11582
step
goto 45.3,33.3
.talk 25262
..turnin 11587
..accept 11590
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c
step
goto 44,28.6
.' Go down the path and underwater
.' Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
.' Take the Sundered Chasm Reading |q 11582/1
step
goto 45,33.4
.talk 25291
..turnin 11582
..accept 12728
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Winterfin Cavern starts here |goto 46.8,29.3,0.5 |noway |c
step
goto 40.1,19.7
.' Stand in the mouth of the cave, past the torches
.' Use your Arcanometer |use Arcanometer##34669
.' Take the Winterfin Cavern Reading |q 12728/1
step
goto 45,33.4
.talk 25291
..turnin 12728
step
goto 43.5,37.4
.' Fight a Beryl Sorcerer |modelnpc Beryl Sorcerer##25316+
.' Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
.' Capture a Beryl Sorcerer |goal Captured Beryl Sorcerer |q 11590/1
step
goto 45.3,33.3
.talk 25262
..turnin 11590
..accept 11646
step
'Go inside the tall tower to 46.3,32.8 |goto 46.3,32.8
.talk 25480
..turnin 11646
..accept 11648
step
'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
.' Interrogate the Prisoner |q 11648/1
|modelnpc Beryl Sorcerer##25316
step
goto 46.3,32.8
.talk 25480
..turnin 11648
..accept 11663
step
'Go outside the tower to 45.3,33.3 |goto 45.3,33.3
.talk 25262
..turnin 11663
..accept 11671
step
goto 42.1,39.5
.' Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897 |tip If it won't let you, wait until Inquisitor Salrand appears again.
.kill Inquisitor Salrand##25584+ |n
.click Salrand's Lockbox##10
.get Salrand's Broken Key |q 11671/1
step
goto 45.3,33.3
.talk 25262
..turnin 11671
..accept 11679
step
goto 45.3,34.5
.talk 24795
..turnin 11679
..accept 11680
step
goto 46.4,37.3
.talk 25356
..turnin 11680
..accept 11681
step
'Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6,0.3 |noway
step
goto 46.4,32.4
.talk 25785
..turnin 11681
..accept 11682
step
'Go outside the tower to 45.3,34.5 |goto 45.3,34.5
.talk 24795
..turnin 11682
..accept 11733
step
goto 45.3,34.5
.talk 24795
.' Fly to Transitus Shield, Coldarra |goto 33.1,34.4,0.5 |noway |c
step
goto 32.9,34.4
.talk 25314
..turnin 11733
..accept 11900
..accept 11910
step
goto 33.3,34.5
.talk 26117
..accept 11918
step
goto 33.5,34.4
.talk 26110
..accept 11912
step
'As you do the following steps, make sure the following is completed:
.' Kill Glacial Ancients and get 3 Glacial Splinters |n
.' Kill Magic-Bound Ancients and get 3 Magic-Bound Splinters |n
.' Kill 10 Coldarra Spellweavers |n
.' Click Frostberry Bushes
.get 10 Frostberry |n
.' Skip to the next step in the guide |confirm
step
goto 35,28
.kill Coldarra Spellbinder##25719+ |n
.get Scintillating Fragment|n
.' Click the Scintillating Fragment in your bags |use Scintillating Fragment##35648
..accept 11941
step
goto 28.3,28.5
.click Coldarra Geological Monitor##7800
.' Take the Nexus Geological Reading |q 11900/1
step
goto 31.7,20.6
.click Coldarra Geological Monitor##7800
.' Take the Northern Coldarra Reading |q 11900/3
step
goto 22.6,23.5
.click Coldarra Geological Monitor##7800
.' Take the Western Coldarra Reading |q 11900/4
step
goto 28.3,35
.click Coldarra Geological Monitor##7800
.' Take the Southern Coldarra Reading |q 11900/2
step
' Make sure you have done the following:
.kill 10 Coldarra Spellweaver##25722+ |q 11918/1
.from Glacial Ancient##25709+
.get 3 Glacial Splinter |q 11910/1
from Magic-Bound Ancient##25707+
.get 3 Magic-Bound Splinter |q 11910/2
.click Frostberry Bush##7702
.get 10 Frostberry |q 11912/1
step
goto 32.9,34.4
.talk 25314
..turnin 11900
..turnin 11910
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
..turnin 11941
..accept 11943
step
goto 33.5,34.4
.talk 26110
..turnin 11912
..accept 11914
step
goto 29.7,31.4
.from Coldarra Wyrmkin##25728+
.collect 5 Frozen Axe##35586
.' You can find more at [25.1,27.4]
step
goto 24.1,29.6
.from Warbringer Goredrak##25712
.get Energy Core|q 11943/1
step
goto 27.3,20.5
.from General Cerulean##25716
.get Prison Casing|q 11943/2
step
goto 27.8,24.2
.kill Arcane Serpent##25721+ |n
.get 5 Nexus Mana Essence|q 11914/1
.click Blue Dragon Egg##7247+
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
..turnin 11943
step
ding 71
step
goto 33.5,34.4
.talk 26110
..turnin 11914
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |tip They are flying above you in the sky. |modelnpc Nexus Drake Hatchling##26127
.' Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11919
step
goto 33.3,34.5
.' Capture the Nexus Drake |q 11919/1
.talk 26117
..turnin 11919
..accept 11931
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26206
..accept 11946
..turnin 11946
..accept 11951
step
goto 32.7,29
.kill Coldarra Spellbinder##25719+ |n
.get 3 Shimmering Rune|q 11931/1
step
goto 32.7,27.8
.from Inquisitor Caleras##25720
.get Azure Codex|q 11931/2
step
goto 28.8,30.0
.click Crystallized Mana##5013
.get 10 Crystallized Mana Shard|q 11951/1
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26237
..turnin 11951
..accept 11957
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26237
.'Tell her you are ready to face Saragosa |goto 21.2,22.5,0.5 |noway |c
step
'She teleports you to a platform
.' Click the Arcane Power Focus in your bags |use Arcane Power Focus##35690
.'Wait for Saragosa to appear and become human
.from Saragosa##26232
.get Saragosa's Corpse |q 11957/1
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26206
..turnin 11957
..accept 11967
.' Ask Keristrasza to return you to the Transitus Shield |goto 33.3,34.5 <5 |c
step
goto 33.3,34.5
.talk 26117
..turnin 11931
..turnin 11967
..accept 11969
step
goto 25.4,21.7
.' Use Raelorasz' Spark next to the Signal Fire |use Raelorasz' Spark##44950 |model Signal Fire##1967
.' Watch the cutscene
.' Lure Malygos |q 11969/1
step
goto 33.3,34.5
.talk 26117
..turnin 11969
step
|fly Fizzcrank Airstrip
step
goto 57.1,18.7
.talk 26596
.home Fizzcrank Airstrip
step
goto 57,18.7
.talk 25590
..turnin 11707
..accept 11708
..'Listen to Fizzcrank Fullthrottle's tale |q 11708/1
step
goto 57.4,18.7
.talk 25747
..turnin 11708
..accept 11712
step
goto 57.4,18.7
.talk 25702
..accept 11710
..accept 11704
step
goto 57.6,18.7
.talk 25477
..accept 11645
step
goto 53.1,13.5
.click Crafty's Stuff##31
.get 10 Crafty's Stuff |q 11645/1
step
goto 54,13.5|n
.' The path down to Bonker Togglevolt starts here |goto 54,13.5,0.3 |noway |c
step
'Go inside the cave to 55.6,12.6 |goto 55.6,12.6
.talk 25589
..accept 11673
.' Escort Bonker Togglevolt to safety |q 11673/1
step
'Go outside the cave to 57,18.7 |goto 57,18.7
.talk 25590
..turnin 11673
step
goto 57.6,18.7
.talk 25477
..turnin 11645
..accept 11650
step
goto 58.5,17.6
.from Fizzcrank Mechagnome##25814+
..' Use the Re-Cursive Transmatter Injection on their corpses |use Re-Cursive Transmatter Injection##34973
...' Curse & port 6 Fizzcrank Gnomes |q 11712/1
.' You can find more Fizzcrank Mechagnomes around [64.1,18.8]
step
goto 58.5,17.6
.kill mechanical mobs|n
..get The Ultrasonic Screwdriver|n
...' Click The Ultrasonic Screwdriver |use The Ultrasonic Screwdriver##34984
....accept 11729
' |from Sentry-bot 57-K##25753, Scavenge-bot 004-A8##25752, Defendo-tank 66D##25758, 55-D Collect-a-tron##25793, Scavenge-bot 005-B6##25792
step
goto 57.6,18.7
.talk 25477
..turnin 11729
..accept 11730
step
goto 57.4,18.7
.talk 25747
..turnin 11712
..accept 11788
step
goto 57,18.7
.talk 25590
..accept 11725
step
goto 58.7,18.5
.kill robots in this area|n
.' Use the Ultrasonic Screwdriver on their corpses |use The Ultrasonic Screwdriver##35116
.' Reprogram 15 Robots |q 11730/1
.click Fizzcrank Spare Parts##6314
..get 15 Fizzcrank Spare Parts|q 11710/1
.' You can find more robots are parts here [61.2,16.8]
' |from Sentry-bot 57-K##25753, Scavenge-bot 004-A8##25752, Defendo-tank 66D##25758, 55-D Collect-a-tron##25793, Scavenge-bot 005-B6##25792
step
goto 60.2,20.4
.click West Point Station Valve##353
.kill Twonky##25830 |q 11788/1
step
goto 65.4,17.4
.click North Point Station Valve##353
.kill ED-210##25831 |q 11788/2
step
goto 63.7,22.5
.click Mid Point Station Valve##353
.kill Max Blasto##25832 |q 11788/3
step
goto 64.4,23.1
.click Crafty's Tools##318
.get Crafty's Tools |q 11650/1
step
goto 65.2,28.8
.click South Point Station Valve##353
.kill The Grinder##25833 |q 11788/4
step
goto 61.7,35.8
.talk 25807
..turnin 11725
..accept 11726
step
goto 64.8,41.0
.kill Gorloc |n
.get 4 Gorloc Spice Pouch|q 11726/1
' |from Gorloc Steam Belcher##25687, Gorloc Waddler##25685, Gorloc Gibberer##25686, Gorloc Mud Splasher##25699, Gorloc Dredger##25701, Gorloc Hunter##25700
step
goto 61.7,35.8
.talk 25807
..turnin 11726
..accept 11728
step
goto 59.8,38.4
.' Use your Wolf Bait on Oil-stained Wolves around this area |use Wolf Bait##35121
.' Click the Wolf Droppings that spawn
.get 8 Microfilm|q 11728/1
|modelnpc Oil-stained Wolf##25791
|model Wolf Droppings##3675
step
goto 61.7,35.8
.talk 25807
..turnin 11728
..accept 11795
step
goto 61,37.8
.talk 25841
.' Search their bodies for their Insignia
.get 6 Fizzcrank Pilot's Insignia |q 11795/1
step
goto 61.7,35.8
.talk 25807
..turnin 11795
..accept 11796
step
goto 59.7,39.2
.' Use your Emergency Torch next to the crashed plane |use Emergency Torch##35224
.' Scuttle a Southern Wreck |q 11796/2
step
goto 63.3,37
.' Use your Emergency Torch next to the crashed plane |use Emergency Torch##35224
.' Scuttle a Eastern Wreck |q 11796/1
step
goto 60.9,33.7
.' Use your Emergency Torch next to the crashed plane |use Emergency Torch##35224
.' Scuttle a Northwestern Wreck ||q 11796/3
step
goto 61.7,35.8
.talk 25807
..turnin 11796
..accept 11873
step
goto 63.8,46.1
.talk 26169
..turnin 11932
..accept 12086
..accept 11949
step
goto 64,45.7
.talk 26213
..accept 11945
step
goto 65.3,47.2
.kill 12 Kvaldir Raider##25760+ |q 11949/1
.click Kaskala Supplies##644
.get 8 Kaskala Supplies|q 11945/1
step
goto 63.8,46.1
.talk 26169
..turnin 11949
..accept 11950
step
goto 64,45.7
.talk 26213
..turnin 11945
step
goto 67.2,54.9
.talk 26218
..turnin 11950
..accept 11961
step
goto 67.7,50.4
.clicknpc Iruk##26219
.' Search his corpse
.get Issliruk's Totem |q 11961/1
step
goto 67.2,54.9
.talk 26218
..turnin 11961
..accept 11968
step
goto 67.4,56.8
.kill Heigarr the Horrible##26266 |q 11968/1
step
goto 67.2,54.9
.talk 26218
..turnin 11968
step
goto 67.2,54.9
.talk 28382
..accept 12117
step
goto 82,46.4
.talk 26187
..turnin 12086
..accept 11944
step
goto 82.2,46.4
.talk 26186
..accept 12157
step
goto 81.5,42.5
.from Rocknar##25514
.get A Handful of Rocknar's Grit |q 11650/3
step
goto 82.2,44.8
.kill 7 Ziggurat Defender##26202+ |q 11944/1
step
goto 82,46.4
.talk 26187
..turnin 11944
..accept 12088
step
goto 84.8,41.7
.talk 26170
..turnin 12088
..accept 11956
step
goto 82.4,46.6
.clicknpc Dusk##26191 |invehicle |q 11956 |Tip You will ride Dusk.
step
goto 85.4,33.3
.click Frozen Phylactery##4712
.from Phylactery Guardian##26225+
.get Tanathal's Phylactery |q 11956/1
step
goto 84.8,41.7
.talk 26170
..turnin 11956
..accept 11938
step
goto 84.4,31.4
.kill 20 En'kilah mob |q 11938/1
' |from En'kilah Abomination##25383, En'kilah Gargoyle##25387, En'kilah Necrolord##25609, En'kilah Crypt Fiend##25386, En'kilah Ghoul##25393, En'kilah Necromancer##25378
step
goto 84.8,41.7
.talk 26170
..turnin 11938
..accept 11942
step
goto 89.4,28.9
.' Kill 2 bug guards and kill the 2 cocoons next to High Priest Talet-Kha
.from High Priest Talet-Kha##26073
.get High Priest Talet-Kha's Scroll |q 11942/3
step
goto 88.1,20.9
.from High Priest Andorath##25392
.get High Priest Andorath's Scroll |q 11942/1
step
goto 83.9,20.5
.' Kill the 3 guards
.from High Priest Naferset##26076
.get High Priest Naferset's Scroll |q 11942/2
step
goto 84.8,41.7
.talk 26170
..turnin 11942
step
'Hearth to Fizzcrank Airstrip |goto 57.1,18.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 57,18.7
.talk 25590
..turnin 11873
step
goto 57.1,20.1
.talk 25780
..accept 11713
step
goto 57.4,18.7
.talk 25747
..turnin 11788
..accept 11798
step
goto 57.4,18.7
.talk 25702
..turnin 11710
..accept 11692
step
goto 57.6,18.7
.talk 25477
..turnin 11650
..turnin 11730
..accept 11653
step
goto 56.1,10.4
.' Use Crafty's Ultra-Advanced Proto-Typical Shortening Blaster on Magmoth Crushers |use Crafty's Ultra-Advanced Proto-Typical Shortening Blaster##34812
.' Kill them while the device's effects are still on them |tip They patrol all around the area, so you may need to search a little.
.' Test Crafty's Blaster 5 times |goal 5 Crafty's Blaster Tested |q 11653/1
'|from Magmoth Crusher##25434+
step
'Go outside to 57.6,18.7 |goto 57.6,18.7
.talk 25477
..turnin 11653
..accept 11658
step
goto 47.9,21.3
.talk 25343
.' Take their clothing
.get 10 Warsong Outfit|q 11658/1
step
goto 49.6,26.7
.click Warsong Banner##5111
.get Warsong Banner|q 11658/2
step
goto 43.5,14
.talk 25197
..turnin 11704
..accept 11571
step
'Go underwater to 42.5,15.9 |goto 42.5,15.9
.from Scalder##25226
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch |q 11571/1
step
goto 42.5,16.4
.click Winterfin Clam##261
.collect 5 Winterfin Clam##34597
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
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
.click Cage##1787
.' Rescue 20 Winterfin Tadpoles |q 11560/1
' |from Winterfin Oracle##25216+, Winterfin Shorestriker##25215+, Winterfin Warrior##25217+
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
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head |q 11563/1
step
goto 40.3,12.4
.kill Glimmer Bay Orca##25204+ |n
.get 7 Succulent Orca Blubber|q 11564/1
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
goto 40.0,20.2
.' Use King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01 |use King Mrgl-Mrgl's Spare Suit##34620 |q 11566
step
'Go inside the cave to 37.8,23.2 |goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to 38.4,22.7 |goto 38.4,22.7
.from Keymaster Urmgrgl##25210 |tip You will have to take off your murloc suit by right-clicking the buff you have.
.get Urmgrgl's Key |q 11569/1
step
.' Use King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01 |use King Mrgl-Mrgl's Spare Suit##34620 |q 11566
step
'Follow the path up and to the back of the cave to 37.6,27.4 |goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
.' Use King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01 |use King Mrgl-Mrgl's Spare Suit##34620 |q 11566
step
'Go back up the path to 37.8,23.2 |goto 37.8,23.2
.talk 28375
..turnin 11569
step
ding 72
step
goto 37.8,23
.talk 25208
..accept 11570
.' Escort Lurgglbr to safety |q 11570/1 |tip You will have to take off your murloc suit by right-clicking the buff you have.
step
goto 43.5,14
.talk 25197
..turnin 11566
..turnin 11570
step
goto 57.6,18.7
.talk 25477
..turnin 11658
..accept 11670
step
goto 54,13.5|n
.' The path down to It Was The Orcs, Honest! starts here |goto 54,13.5,0.5 |noway |c
step
'Go down into the cave to 54.9,12 |goto 54.9,12
.' Open Crafty's Sack and get the Warsong Banner and Warsong Orc Disguise |use Crafty's Sack##34871
.' Use your Warsong Orc Disguise |use Warsong Orc Disguise##34870
.from Magmothregar##25430
.' Use your Warsong Banner on Magmothregar's corpse |use Warsong Banner##34869
.' Plant the Warsong Banner in Magmothregar |q 11670/1
step
'Go outside to 57.6,18.7 |goto 57.6,18.7
.talk 25477
..turnin 11670
step
'Go on top of the pump station to 64.5,23.4 |goto 64.5,23.4
.click The Gearmaster's Manual##7882
.from Gearmaster Mechazod##25834
.get Mechazod's Head |q 11798/2
step
goto 66.4,32.9
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the Northwest Sinkhole |q 11713/3
step
goto 69.9,32.8
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the Northeast Sinkhole |q 11713/2
step
goto 70.6,36.9
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the South Sinkhole |q 11713/1
step
goto 73.4,18.8
.talk 25705
..turnin 11692
..accept 11693
step
goto 76.2,18.3
.kill 10 Plagued Magnataur##25615+ |q 11693/1
step
goto 73.4,18.8
.talk 25705
..turnin 11693
..accept 11694
step
goto 74.7,14.1
.' Use Bixie's Inhibiting Powder next to the Den of Dying Plague Cauldron |use Bixie's Inhibiting Powder##34915 |tip It looks like a big pot inside the cave.
.' Neutralize the Plague Cauldron |goal Plague Cauldron Neutralized |q 11694/1
step
goto 73.4,18.8
.talk 25705
..turnin 11694
..accept 11697
..accept 11698
step
'Go inside the undead building to 69.9,14.7 |goto 69.9,14.7
.talk 25714
..turnin 11697
..accept 11699
step
goto 69.8,13.1
.kill Festering Ghoul##25660+ |n
.get Engine-Core Crystal|q 11699/1
step
'Go around to the back of the building and up to [69.7,13.9] |goto 69.7,13.9
.from Lich-Lord Chillwinter##25682
.get Piloting Scourgestone|q 11699/3
step
'Jump down into the huge hole to 69.7,13 |goto 69.7,13
.from Doctor Razorgrin##25678
.get Magical Gyroscope|q 11699/2
step
'Go inside the undead building to 69.9,14.7 |goto 69.9,14.7
.talk 25714
..turnin 11699
..accept 11700
step
goto 68.2,17
.kill Undead mobs|n
.' Destroy 20 Talramas Scourge |q 11698/1
' |from Cult Plaguebringer##24957, Lich-Lord Chillwinter##25682, Bone Warrior##26126, Doctor Razorgrin##25678, Talramas Abomination##25684
step
'Go outside to 73.4,18.8 |goto 73.4,18.8
.talk 25705
..turnin 11698
..turnin 11700
..accept 11701
step
goto 57.1,20.1
.talk 25780
..turnin 11713
..accept 11715
step
goto 57,18.7
.talk 25590
..turnin 11701
..turnin 11798
step
goto 57.6,23.7
.' Use your Portable Oil Collector next to the bubbling oil spots in the water |use Portable Oil Collector##34975
.' Collect 8 Barrels of Oil |q 11715/1
step
goto 57.1,20.1
.talk 25780
..turnin 11715
..accept 11718
step
goto 52.8,21.8
.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
.get 6 Thick Mammoth Hide |q 11718/1
step
goto 57.1,20.1
.talk 25780
..turnin 11718
..accept 11723
step
goto 70.6,36.9
.' Stand next to the sinkhole |tip It's a huge hole in the ground.
.' Use The Shake-n-Quake 5000 Control Unit in your bags |use Shake-n-Quake 5000 Control Unit##34981
.kill 1 Lord Kryxix##25629 |q 11723/1
step
'Hearth to Fizzcrank Airstrip |goto 57.1,18.8,1 |use Hearthstone##6948 |noway |c
step
goto 57.1,20.1
.talk 25780
..turnin 11723
step
|fly Stars' Rest
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Howling Fjord (70-72)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Dragonblight (72-74)
startlevel 70.00
dynamic on
step
goto Howling Fjord,61.1,62.7
.talk 23547
..accept 11228
step
goto 60.5,61.1
.talk 23546
..turnin 11228
..accept 11243
step
goto 59.8,63.2
.talk 23736
.fpath Valgarde
step
goto Howling Fjord,58.4,62.5
.home Valgarde
step
goto 58.9,59.6
.kill Dragonflayer Worg##24063+ |n
.kill Dragonflayer Invader##24051+ |n
.kill 12 Dragonflayer Invader|q 11243/1
step
goto 60.5,61.1
.talk 23546
..turnin 11243
..accept 11244
step
goto 58.1,57
.' Click the Ceremonial Dragonflayer Harpoons |tip They look like poles sticking out of the ground, next to dead dwarf bodies around this area.
.' Rescue 8 Valgarde Scouts |goal 8 Valgarde Scout Rescued |q 11244/1
step
goto 60.5,61.1
.talk 23546
..turnin 11244
..accept 11255
step
goto 60.2,61
.talk 23548
..accept 11273
step
goto 59.8,61.5
.talk 23975
..accept 11333
step
goto 60.1,62.4
.talk 23728
..accept 11420
step
'Go underwater to 62.4,59.3 |goto 62.4,59.3
.' Click the Reagent Pouch |tip It looks like a bag of green plants, sitting on the deck of this ship.
.get Reagent Pouch|q 11333/1
step
goto 63,60
.talk 23730
..accept 11443
step
goto 62.2,59.7
.' Equip your Diving Helm |use Diving Helm##34082
.' Click the Valgarde Supply Crates |tip They look like crates all around this area underwater.
.get 10 Valgarde Supply Crate|q 11443/1
step
goto 63,60
.talk 23730
..turnin 11443
step
goto 59.2,54.6
.' Make sure to equip your real helmet again, so you don't accidentally sell it
.talk 24122
..turnin 11273
..accept 11274
step
goto 58.8,54.1
.kill Dragonflayer Tribesmen##23651+ |n
.kill Dragonflayer Death Weaver##23658+ |n
.kill Dragonflayer Thane##23660+ |n
.collect 3 Dragonflayer Cage Key##33308|n
.' Click the Dragonflayer Cages
.' Rescue 3 Captured Valgarde Prisoners |goal 3 Captured Valgarde Prisoner Rescued |q 11255/1
step
goto 56.6,52.4
.talk 24145
..turnin 11274
..accept 11276
step
goto 56.6,49.6 |n
.' Enter the cave |goto 56.6,49.6,0.5 |noway |c
step
goto 56.9,53.8
.talk 24150
..turnin 11276
..accept 11277
step
goto 57.3,54.5
.' Click the Wyrmskull Tablets |tip They look like broken stone tablets laying on the ground inside this cave.
.get 10 Wyrmskull Tablet|q 11277/1
step
goto 59.3,55.4
.' Click the Harpoon Operation Manual |tip It's a book laying at the foot of this small altar.
.get Harpoon Operation Manual|q 11420/1
step
goto 59.3,55.4
.talk 24189
..accept 11288
step
'Go downstairs into the ghoul pit to 56.6,53.4 |goto 56.6,53.4
.' The ghouls will die from your aura, so just run through them.
.' Click the Sacred Artifact |tip It's downstairs in the ghoul pit, a sword stuck in the ground in a pillar of light.
.get Sacred Artifact|q 11288/1
step
'Go upstairs to 59.3,55.4 |goto 59.3,55.4
.talk 24189
..turnin 11288
..accept 11289
step
goto 56.9,53.8
.talk 24150
..turnin 11277
..accept 11299
step
'Go downstairs to 55.7,57.4 |goto 55.7,57.4
.talk 24151
..turnin 11299
..accept 11300
step
goto 55,57.5
.' Kill gladiators, the named mobs
.' Kill Oluf the Violent when he runs out
.' Click the Ancient Cipher that falls to the ground
.get Ancient Cipher|q 11300/1
step
'Go upstairs to 56.9,53.8 |goto 56.9,53.8
.talk 24150
..turnin 11300
..accept 11278
step
'Hearth to Valgarde |goto Howling Fjord,58.4,62.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.8,62.4
.talk 24191
..turnin 11289
step
goto 60.1,62.4
.talk 23728
..turnin 11420
..accept 11426
step
goto 60.5,61.1
.talk 23546
..turnin 11255
..accept 11290
step
goto 60.2,61
.talk 23548
..turnin 11278
..accept 11448
step
goto 59.8,61.5
.talk 23975
..turnin 11333
..accept 11343
step
goto Howling Fjord,55.7,52.6
.' Click the Dragonflayer Battle Plans |tip It's a big scroll hanging on the wall inside this small cave.
.get Dragonflayer Battle Plans|q 11290/1
step
goto 60.2,51.7
.' Kill Dragonflayer Harpooners on this dock
.get Harpoon Control Mechanism|q 11426/1
step
goto 60.1,50.8
.' Use your Incense Burner in your bags inside the doorway of this house |use Incense Burner##33637
.' Watch the cutscene
.' Uncover the Secrets of the Wyrmskull |goal Secrets of Wyrmskull Uncovered |q 11343/1
step
goto 59.8,61.5
.talk 23975
..turnin 11343
..accept 11344
step
goto 60.5,61.1
.talk 23546
..turnin 11290
..accept 11291
step
goto 60.1,62.4
.talk 23728
..turnin 11426
..accept 11427
step
goto 60.8,61.5|n
.talk 24040
..'Tell him to take you to the Explorers' League Outpost |goto Howling Fjord,74.7,65.3,1 |noway |c
step
goto 75,65.4
.talk 24717
..turnin 11448
..accept 11474
step
goto 75.1,65.5
.talk 24807
..turnin 11474
..accept 11475
step
goto 75.3,65
.talk 24750
..accept 11460
step
goto 75.5,66.8
.' Click the Loose Rocks |tip They are grey stones on the ground around this area.
.collect 1 Fjord Grub##34102|q 11460
step
goto 75.3,65
.talk 24752
.' Feed the grub to the rock falcon |goal Fjord Rock Falcon Fed |q 11460/1
step
goto 75.3,65
.talk 24750
..turnin 11460
..accept 11465
step
goto 75.5,66.8
.' Click the Loose Rocks |tip They are grey stones on the ground around this area.
.collect 5 Fjord Grub##34102|q 11465
step
goto 69.6,64.8
.' Make sure you have 5 Fjord Grubs |collect 5 Fjord Grub##34102 |n
.' Use your Trained Rock Falcon in your bags on Fjord Turkeys |use Trained Rock Falcon##34111
.get 5 Fjord Turkey##34112|q 11465/1
step
goto 75.3,65
.talk 24750
..turnin 11465
..accept 11468
step
goto 75.5,66.8
.' Click the Loose Rocks |tip They are grey stones on the ground around this area.
.collect 10 Fjord Grub##34102|q 11468
step
goto 72.2,64.1
.' Make sure you have 10 Fjord Grubs |collect 10 Fjord Grub##34102 |n
.' Use your Trained Rock Falcon in your bags on Fjord Hawks |use Trained Rock Falcon##34121
.get 10 Fjord Hawk|q 11468/1
step
goto 75.3,65
.talk 24750
..turnin 11468
..accept 11470
step
goto 76.7,67.7
.' Use your Trained Rock Falcon in your bags next to the Vrykul Hawk Roost |use Trained Rock Falcon##34124 |tip It looks like a stone monument thing, with a chain connected to it.
.' Use the Scavenge ability to steal the eggs in the nests on the side of the cliff in front of you |petaction Scavenge
.get 8 Fjord Hawk Egg|q 11470/1
step
goto 75.3,65
.talk 24750
..turnin 11470
step
goto 64.4,47
.talk 24634
..turnin 11427
..accept 11429
step
goto 65,39.9
.' Use your Alliance Banner in your bags |use Alliance Banner##34051
.' Fight the defenders that come
.' Place the Alliance Banner |goal Alliance Banner Placed |q 11429/2
.' Defend the Alliance Banner |goal Alliance Banner Defended |q 11429/1
step
goto 64.4,47
.talk 24634
..turnin 11429
..accept 11430
step
goto 65.1,56.6
.kill Harpoon Master Yavus##24644 |q 11430/1
step
goto 69,54.7
.' Use your Incense Burner in your bags |use Incense Burner##33774
.' Watch the cutscene
.' Uncover the Secrets of Nifflevar |goal Secrets of Nifflevar Uncovered |q 11344/1
step
goto 64.4,47
.talk 24634
..turnin 11430
..accept 11421
step
goto 64.8,52.7
.' Use your Harpoon Control Mechanism next to the big metal harpoon guns |use Harpoon Control Mechanism##34032
.' Use the abilities on your hotbar to shoot the buildings across the water, on the water's edge, and shoot Dragonflayer Defenders
.' Destroy the Dragonflayer Longhouse |goal Dragonflayer Longhouse Destroyed |q 11421/2
.' Destroy the Dragonflayer Dockhouse |goal Dragonflayer Dockhouse Destroyed |q 11421/3
.' Destroy the Dragonflayer Storage Facility |goal Dragonflayer Storage Facility Destroyed |q 11421/4
.kill 8 Dragonflayer Defender##24533+ |q 11421/1
step
.' Click the red arrow on your action bar to get off the harpoon gun |outvehicle
step
goto 64.4,47
.talk 24634
..turnin 11421
..accept 11436
step
goto 78.8,48.9
.talk 24811
..accept 11477
step
goto 79,47.6
.kill 5 Iron Rune Laborer##23711+ |q 11477/2
.kill 2 Iron Rune Sage##23674+ |q 11477/3
step
goto 79,47.6
.' Click the Building Tools |tip They look like a small metal bucket of tools, sitting next to a wooden wheelbarrow.
.get Building Tools|q 11475/1
step
goto 78.4,45.9
.kill 10 Iron Rune Destroyer##23676+ |q 11477/1
step
goto 78.8,48.9
.talk 24811
..turnin 11477
step
goto 75.1,65.5
.talk 24807
..turnin 11475
..accept 11483
..accept 11484
step
goto 75.4,63.3
.kill Shoveltusks|n
.get Pristine Shoveltusk Hide|q 11484/1
' |from Shoveltusk##23690, Shoveltusk Calf##24791, Shoveltusk Stag##23691
step
goto 64.8,40.9
.' Click the Industrial Strength Rope |tip It's a rope wound around a small wooden post.
.get Industrial Strength Rope|q 11483/2
step
goto 67.6,52.2
.' Click the Large Barrel |tip It looks like a barrel sitting next to this building.
.get Large Barrel|q 11483/1
step
goto 67.9,52.7
.kill Dragonflayer mobs |n
.get Steel Ribbing|q 11484/2
' |from Dragonflayer Warrior##23654, Dragonflayer Rune-Seer##23656, Winterskorn Skald##23657, Harpoon Master Yavus##24644, Winterskorn Spearman##23653, Winterskorn Bonegrinder##23655
step
goto 65.3,57.2
.' Click the Large Harpoon Lever |tip It looks like a metal lever on this wooden balcony.
.' Go Harpoon Surfing |goal Go Harpoon Surfing |q 11436/1
step
goto 60.1,62.4
.talk 23728
..turnin 11436
step
goto 59.8,61.5
.talk 23975
..turnin 11344
step
goto 60.8,61.5
.talk 24040
.' Ask him for some dark iron ingots
.get Dark Iron Ingots|q 11483/3
step
goto 60.8,61.5|n
.talk 24040
..'Tell him to take you to the Explorers' League Outpost |goto Howling Fjord,74.7,65.3,1 |noway |c
step
goto 75.1,65.5
.talk 24807
..turnin 11483
..turnin 11484
..accept 11485
step
goto 75.1,65.5
'Click the Work Bench tablet next to the iron golem next to you
.' Get on the work bench and let Walt put you in the golem suit
.' Use the Rocket Jump ability on your hotbar |petaction Rocket Jump
.' Master Rocket Jump |goal Rocket Jump Mastered |q 11485/1
step
'Click the red arrow on your hotbar to leave the golem suit |outvehicle
step
goto 75.1,65.5
.talk 24807
..turnin 11485
..accept 11489
step
'Click the Work Bench tablet next to the iron golem next to you
.' Get on the work bench and let Walt put you in the golem suit |invehicle
step
goto 74.8,65.7
.' Use your Collect Data ability on your hotbar next to the blue crystal |petaction Collect Data |tip It's a floating blue crystal next to the wagon.
.' Collect Test Data |q 11489/1
step
'Click the red arrow on your hotbar to leave the golem suit |outvehicle
step
goto 75.1,65.5
.talk 24807
..turnin 11489
..accept 11491
step
'Click the Work Bench tablet next to the iron golem next to you
.' Get on the work bench and let Walt put you in the golem suit |invehicle
step
goto 74.8,65.3
.' Walk on Lebronski's Rug |tip It's a long rug on the ground.
.' Use your Bluff ability on your hotbar on Lebronski when he gets mad that you walked on his rug |petaction Bluff
.' Bluff Lebronski |goal Lebronski Bluffed |q 11491/1
step
'Click the red arrow on your hotbar to leave the golem suit |outvehicle
step
goto 75.1,65.5
.talk 24807
..turnin 11491
..accept 11494
step
'Click the Work Bench tablet next to the iron golem next to you
.' Get on the work bench and let Walt put you in the golem suit |invehicle
step
goto 72.7,67.3|n
.' The path down to Lightning Infused Relics starts here |goto 72.7,67.3,0.5 |noway |c
step
goto 71.8,69.2
.' Use your Collect Data ability next to the blue crystals |petaction Collect Data |tip They look like blue crystals on the ground around this area.
.' Use your Bluff ability to get rid of suspicious dwarves |petaction Bluff
.' Collect 15 Iron Rune Data |goal 15 Iron Rune Data Collected |q 11494/1
step
'Get to a safe place, then click the red arrow on your hotbar to leave the golem suit |outvehicle
step
goto 75.1,65.5
.talk 24807
..turnin 11494
step
'Hearth to Valgarde |goto Howling Fjord,58.4,62.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.3,60.3
.talk 23804
..accept 11504
step
goto 57.7,77.5
.' Click the Mound of Debris |tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
.get Fengir's Clue |q 11504/1
step
goto 59.2,77
.' Click the Unlocked Chest |tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
.get Rodin's Clue |q 11504/2
step
goto 59.8,79.4
.' Click the Long Tail Feather |tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
.get Isuldof's Clue |q 11504/3
step
goto 62,80
.' Click the Cannonball |tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
.get Windan's Clue |q 11504/4
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
'Go across The Ancient Lift to 25.0,57.0 |goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
..accept 11456
step
goto 24.7,57.8
.talk 28197
.fpath Kamagua
step
goto 29.1,58.8
.kill Island Shoveltusk##24681+ |n
.get 6 Island Shoveltusk Meat|q 11456/1
step
goto 25.0,57.0
.talk 24755
..turnin 11456
..accept 11457
step
goto 26.4,62.9
.from Frostwing Chimaera##24673
.get 3 Chimaera Horn|q 11457/1
step
goto 25.0,57.0
.talk 24755
..turnin 11457
..accept 11458
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 23.1,62.6
.talk 24896
.' Tell him to take you to Scalawag Point |goto 35.5,82.4 |c
step
goto 35.1,80.9
.talk 24539
..turnin 11509
..accept 11510
step
goto 35.6,80.2
.talk 24537
..accept 11434
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 38.3,83.4
.from "Scoodles"##24899
.get Sin'dorei Scrying Crystal |q 11510/1
step
goto 37.8,84.6
.' Click the Eagle Figurine |tip It's a blue eagle statue inside this ship on the middle floor.
.get Eagle Figurine|q 11434/2
step
goto 37.1,85.5
.' Click the Amani Vase |tip It looks like a grey vase at the bottom of this wrecked ship.
.get Amani Vase|q 11434/1
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber |q 11469/1
step
goto 35.1,80.9
.talk 24539
..turnin 11510
..accept 11567
..accept 11512
..accept 11519
..accept 11511
step
goto 35.6,80.2
.talk 24537
..turnin 11434
..accept 11455
step
goto 36.3,80.5
.talk 24541
..accept 11464
step
goto 35.1,80.9
.talk 24539
..'Tell him you want to collect a debt he owes
..'Fight him until he surrenders
.talk 24539
..'Tell him to pay up
.get "Silvermoon" Harry's Debt |q 11464/1 |goal "Silvermoon" Harry's Debt |q 11464/1
step
goto 36.3,80.5
.talk 24541
..turnin 11464
..accept 11466
step
'Go inside the long building to 35.3,79.6 |goto 35.3,79.6
.talk 24639
..' Pay 1 gold to bribe her into giving Jack Adams a drink
.' He passes out on the table
.talk 24788
..'Search his pockets
..get Jack Adams' Debt |q 11466/1 |goal Jack Adams' Debt |q 11466/1
step
goto 36.3,80.5
.talk 24541
..turnin 11466
..accept 11467
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto 37.2,74.8
.talk 24910
..turnin 11519
..accept 11527
step
'Go downstairs in the ship
.kill Mutinous Sea Dog##25026+ |n
.get 5 Barrel of Blasting Powder|q 11527/1
step
'Go upstairs to the ship deck
.talk 24910
..turnin 11527
..accept 11529
step
'Run to the other end of the ship deck to the big cannon
.' Keep clicking The Big Gun until Sorlof is dead
.' Sorlof will drop a big pile of gold on the shore
.' Jump off the ship and click Sorlof's Booty
.get Sorlof's Booty |q 11529/1
step
goto 37.2,74.8
.talk 24910
..turnin 11529
..accept 11530
step
goto 34.1,76.9
.kill Rabid Brown Bears|n
.get 4 Bear Musk##34084+ |q 11455/1
step
'Go down the hill to [33.5,75.3] |goto 33.5,75.3
'Go into the cave to [32.3,78.7] |goto 32.3,78.7
.' Hug the wall to the left inside the cave to avoid fighting "Mad" Jonah Sterling
.' Follow the path around past the big white sleeping bear, he won't attack you if he's asleep
.' Click The Frozen Heart of Isuldof##7554
.get The Frozen Heart of Isuldof|q 11512/1
step
'Leave the cave and go to 33.2,63.9 |goto 33.2,63.9
.kill 8 Crazed Northsea Slaver##24676+ |q 11458/1
step
'Go onto the ship to 35.3,64.8 |goto 35.3,64.8
.' Wait for Abdul the Insane to walk up to the top deck, then run downstairs
.' Click The Staff of Storm's Fury##1708 |tip On the very bottom floor of this ship.  It looks like a staff standing upright with lightning shooting out of it.
.get The Staff of Storm's Fury |q 11511/1
step
goto 29.0,60.5|n
.' The path up to Dead Man's Debt starts here |goto 29.0,60.5,0.3 |noway |c
step
goto 32.7,60.2
.' Click the mound of dirt |tip It looks like a huge pile of dirt.
.' Kill Black Conrad's Ghost and his friends that spawn
.get Black Conrad's Treasure |q 11467/1
step
goto 25,57
.talk 24755
..turnin 11458
step
goto 24.6,58.9
.talk 24810
..accept 11472
step
goto 28.9,74.8
.' Use Anuniaq's Net on the Schools of Tasty Reef Fish |use Anuniaq's Net##40946 |tip They look like swarms of fish in the water.
.kill Great Reef Shark##24637+ |n
.collect 10 Tasty Reef Fish##34127|q 11472
step
goto 31,74.4
.' Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
.' He will come to the spot where you're standing
.' Keep doing this
.' Lead the Reef Bull to a Reef Cow on the other side of the water |goal Reef Bull led to a Reef Cow |q 11472/1
step
goto 35.6,80.2
.talk 24537
..turnin 11455
..accept 11473
step
goto 35.6,80.6
.talk 24525
..turnin 11473
..accept 11459
step
goto 35.6,80.2
.talk 24537
..turnin 11459
..accept 11476
step
goto 35.1,80.9
.talk 24539
..buy 1 Shiny Knife|q 11476/2
step
goto 35.6,81.7
.' Click a Scalawag Frog |tip They are blue and green frogs that hop around on the ground here.
.get Scalawag Frog|q 11476/1
step
goto 35.6,80.6
.talk 24525
..turnin 11476
..accept 11479
step
goto 36.3,80.5
.talk 24541
..turnin 11467
step
goto 35.9,83.6
.talk 24713
.kill "Crowleg" Dan##24713 |q 11479/1
step
goto 35.6,80.2
.talk 24537
..turnin 11479
..accept 11480
step
'Go inside the long building to 35.4,79.4 |goto 35.4,79.4
.talk 24741
..turnin 11480
step
goto 36.1,81.6|n
.talk 27933
..'Tell her to want to fly to Bael'gun's
..' You will land near a ship |goto 80.9,75.3,1 |noway |c
step
'Go onto the ship and downstairs to 81.8,73.9 |goto 81.8,73.9
.' Click The Ancient Armor of the Kvaldir |tip Inside this ship, on the very bottom floor in the very back of the room.  It looks like a floating chestplate.
.get The Ancient Armor of the Kvaldir|q 11567/1
step
goto 80.9,75.1|n
.' Click Harry's Bomber |tip It's a plane on the water's edge.
.' Go back to Scalawag Point |goto 36.1,81.7,1 |noway |c
step
'Ride the big lift to the top of the cliff and go to 40.3,60.3 |goto 40.3,60.3
.talk 23804
..turnin 11567
..turnin 11512
..turnin 11530
..turnin 11511
..accept 11568
step
goto 57.6,77.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Shield of Aesirites |goal Shield of the Aesirites Returned |q 11568/1
step
goto 59.2,77
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Staff of Storm's Fury |goal Staff of Storm's Fury Returned |q 11568/2
step
goto 59.8,79.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton. |use Bundle of Vrykul Artifacts##34624
.' Return the Frozen Heart of Isuldof |goal Frozen Heart of Isuldof Returned |q 11568/3
step
goto 62,80
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton. |use Bundle of Vrykul Artifacts##34624
.' Return the Ancient Armor of the Kvaldir |goal Ancient Armor of the Kvaldir Returned |q 11568/4
step
goto 40.3,60.3
.talk 23804
..turnin 11568
..accept 11572
step
'Go across the Ancient Lift to 25.0,57.0 |goto 25.0,57.0
.talk 24755
..turnin 11572
step
goto 24.6,58.9
.talk 24810
..turnin 11472
step
'Go across the Ancient Lift to 37.4,51.9 |goto 37.4,51.9
.talk 23870
..accept 11182
step
goto 40.6,51.5
.kill 5 Dragonflayer Handler##23871+ |q 11182/1
step
'Go inside the small house to 41.5,52.3 |goto 41.5,52.3
.kill Skeld Drakeson##23940 |q 11182/2
step
goto 37.4,51.9
.talk 23870
..turnin 11182
step
goto 34,43.8
.talk 23770
..accept 11190
step
goto 31.3,44
.talk 23859
.fpath Westguard Keep
step
goto 30.9,41.5
.talk 23937
.home Westguard Keep
step
goto 31.2,40.8
.talk 23773
..accept 11155
step
goto 29,41.9
.talk 23895
..accept 11153
step
goto 28.1,42.1
.' Wait for the zeppelin to come back, if it is there already, then get on it
.' Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride |use Petrov's Cluster Bombs##33098
.kill 25 Blockade Pirate##23755+ |q 11153/1
.' Destroy 10 Blockade Cannons |goal 10 Blockade Cannons destroyed |q 11153/2
step
goto 29,41.9
.talk 23895
..turnin 11153
step
'Go inside the fort to 28.8,44.1 |goto 28.8,44.1
.talk 23749
..turnin 11291
..accept 11157
step
goto 35.6,40.6
.' Click the Westguard Cannonballs |tip They look like grey round rocks on the ground around this area.
.get 10 Westguard Cannonball|q 11190/1
.kill Shoveltusk##23690+ |n
.get 6 Shoveltusk Meat|q 11155/1
step
goto 38.3,47.3
.' Destroy 15 Proto-Drake Eggs |goal 15 Proto-Drake Egg destroyed |q 11157/1 |tip The Proto-Drake Eggs look like huge eggs on the ground around this area.
.kill 15 Proto-Whelp##23688 |q 11157/2
step
goto 34,43.8
.talk 23770
..turnin 11190
step
ding 71
step
goto 31.2,40.8
.talk 23773
..turnin 11155
step
'Go inside the fort to 28.8,44.1 |goto 28.8,44.1
.talk 23749
..turnin 11157
..accept 11187
step
goto 28.9,44.2
.talk 23888
..turnin 11187
..accept 11188
step
goto 36.1,47.6
.' Use Malister's Frost Wand on Proto-Drakes |use Malister's Frost Wand##33119
.kill 3 Proto-Drake##23689 |q 11188/1
step
'Go inside the fort to 28.9,44.2 |goto 28.9,44.2
.talk 23888
..turnin 11188
step
goto 28.8,44.1
.talk 23749
..accept 11199
step
goto 29.1,41.8
.talk 23976
..accept 11218
step
goto 31.6,41.5
.talk 23978
..accept 11224
step
goto 33.8,34.0|n
'The path down into the canyon starts here |goto 33.8,34.0,0.5 |noway |c
step
goto 33.5,36.1
.' Use Steelring's Foolproof Dynamite on the mining nodes |use Steelring's Foolproof Dynamite##33190 |tip They look like mining nodes around this area.
.' Click the Whisper Gulch Ore Fragments that spawn
.get 6 Whisper Gulch Ore Fragment|q 11218/1
.' Click the Whisper Gulch Ore Gems that spawn
.get 18 Whisper Gulch Gem|q 11218/2
.' Use the emote /raise on the Abandoned Pack Mules |tip They look like mules with a bunch of supplies tied to them around this area.
.' Send 10 Abandoned Pack Mules Packing |goal 10 Abandoned Pack Mule Sent Packing |q 11224/1
step
.' Go out of the canyon to [31.6,41.5] |goto 31.6,41.5
.talk 23978
..turnin 11224
step
goto 29.1,41.8
.talk 23976
..turnin 11218
..accept 11240
step
goto 33.8,34.0|n
'The path down into the canyon starts here |goto 33.8,34.0,0.5 |noway |c
step
goto 31.6,34.8
.kill Squeeg Idolhunter##24048 |q 11240/1
step
'Go out of the canyon to 29,41.9 |goto 29,41.9
.talk 23976
..turnin 11240
step
goto 31.7,42
.talk 23831
..accept 11175
step
goto 44.5,57.6
.talk 23906
..turnin 11199
..accept 11202
step
goto 48.4,55.8
.' Use your Ever-burning Torches next to the big shaking cart |use Ever-burning Torches##33164 |tip It looks like a big shaking cart up on a hill, overlooking the town.
.' Destroy the Southwest Plague Tank |goal Southwest Plague Tank Destroyed |q 11202/1
step
goto 48.2,52.9
.' Use your Ever-burning Torches next to the big shaking cart |use Ever-burning Torches##33164 |tip It looks like a big shaking cart up on a hill, overlooking the town.
.' Destroy the Northwest Plague Tank |goal Northwest Plague Tank Destroyed |q 11202/2
step
goto 51.2,50.2
.' Use your Ever-burning Torches next to the big shaking cart |use Ever-burning Torches##33164 |tip It looks like a big shaking cart up on a hill, overlooking the town.
.' Destroy the Northeast Plague Tank |goal Northeast Plague Tank Destroyed |q 11202/3
step
goto 51.5,57.7
.' Use your Ever-burning Torches next to the big shaking cart |use Ever-burning Torches##33164 |tip It looks like a big shaking cart up on a hill, overlooking the town.
.' Destroy the Southeast Plague Tank |goal Southeast Plague Tank Destroyed |q 11202/4
step
goto 44.5,57.6
.talk 23906
..turnin 11202
..accept 11327
step
goto 47.8,58.2|n
.' The path down to Mission: Package Retrieval starts here |goto 47.8,58.2,0.5 |noway |c
step
goto 50.8,53.9
.' Click the Apothecary's Package |tip It's a small tan package on the ground.
.get Apothecary's Package |q 11327/1
step
goto 44.5,57.6
.talk 23906
..turnin 11327
..accept 11328
step
goto 30.8,41.6
.talk 24283
..turnin 11328
..accept 11330
step
goto 29.3,44.1|n
.' The path down to Absholutely... Thish Will Work! starts here |goto 29.3,44.1,0.5 |noway |c
step
goto 29.5,43.4
.' Use Peppy's Special Mix on the Dragonflayer Vrykul Prisoner |use Peppy's Special Mix##33627 |tip In the jail under the fort, sitting in a jail cell.
.' Administer Peppy's Mix To The Vrykul Prisoner |goal Peppy's Mix Administered To The Vrykul Prisoner |q 11330/1
step
goto 30.8,41.6
.talk 24283
..turnin 11330
..accept 11331
step
'Go into the fort to 28.8,44.1 |goto 28.8,44.1
.talk 23749
..turnin 11331
..accept 11332
step
goto 31.3,44
.talk 23859
..'Tell him you need a gryphon to ride
.' Use Orehammer's Precision Bombs in your bags on the big green carts as you fly over New Agamand |use Orehammer's Precision Bombs##33634
.' Hit 5 Plague Tanks |goal 5 Plague Tank Hits |q 11332/1
step
'Go into the fort to 28.8,44.1 |goto 28.8,44.1
.talk 23749
..turnin 11332
..accept 11248
step
goto 30.6,42.8
.talk 24494
..accept 11406
step
goto 30.2,28.7
.talk 23891
..turnin 11175
..accept 11176
..accept 11393
step
goto 30.2,28.7
.talk 24227
..accept 11154
step
goto 30.2,28.7
.talk 24273
..accept 11322
step
goto 30.8,28.6
.talk 24399
..turnin 11176
..accept 11390
step
'Click the plane near you on the wooden platform to ride in it |invehicle
step
'Fly down into the valley below
.' They look like huge sacks with yellow stuff in them on the ground
.' Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
.' Repeat this 2 more time
.' Deliver 3 Sacks of Relics |goal 3 Sack of Relics Delivered |q 11390/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11390
..accept 11391
step
'Click the plane near you on the wooden platform to ride in it |invehicle
step
'Use the abilities on your hotbar as you fly around to fight the flying gargoyles
.kill 8 Gjalerbron Gargoyle##24440+ |q 11391/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11391
step
goto 27.4,32.2|n
.' The path down to Explorer Jaren starts here |goto 27.4,32.2,0.5 |noway |c
step
goto 24.2,32.5
.talk 23833
..turnin 11393
..accept 11394
step
goto 22.6,28.6
.' Kill 15 Scourge murlocs, humanoids, or ghosts |q 11394/1
.kill Scourge mobs |n
.get Scourge Device |n
.' Click the Scourge Device in your bags |use Scourge Device##33961
..accept 11395
' |from Servitor Shade##24485, Mur'ghoul Corrupter##23645, Necrotech##24540, Mur'ghoul Flesheater##23644, Unstable Mur'ghoul##23643
step
goto 19.8,22.2
.talk 24544
..accept 11422
step
goto 24.2,32.5
.talk 23833
..turnin 11394
..turnin 11395
..accept 11396
step
goto 23.7,35.2
.from Rotgill##24546
.get Rotgill's Trident |q 11422/1
step
goto 22.7,31.2
.' Use your Scourging Crystal Controller on the Scourge Crystal |use Scourging Crystal Controller##33960 |tip It looks like a big floating purple crystal.
.' Attack the Scourge Crystal when the purple bubble shield disappears
.' Destroy 1 Scourge Crystal |goal 1 Scourging Crystals Destroyed |q 11396/1
step
goto 21.9,28.8
.' Use your Scourging Crystal Controller on the Scourge Crystal |use Scourging Crystal Controller##33960 |tip It looks like a big floating purple crystal.
.' Attack the Scourge Crystal when the purple bubble shield disappears
.' Destroy 1 Scourge Crystal |goal 2 Scourging Crystals Destroyed |q 11396/1
step
goto 21.5,24.6
.' Use your Scourging Crystal Controller on the Scourge Crystal |use Scourging Crystal Controller##33960 |tip It looks like a big floating purple crystal.
.' Attack the Scourge Crystal when the purple bubble shield disappears
.' Destroy 1 Scourge Crystal |goal 3 Scourging Crystals Destroyed |q 11396/1
step
goto 19.8,22.2
.talk 24544
..turnin 11422
step
goto 24.2,32.5
.talk 23833
..turnin 11396
step
goto 25.1,32.6|n
.' The path back up to the top of the cliff starts here |goto 25.1,32.6,0.5 |noway |c
step
'Follow the path up to 30.8,20.9 |goto 30.8,20.9
.' Use Feknut's Firecrackers on the ground under Darkclaw Bats |use Feknut's Firecrackers##33129 |tip They are bats that fly around in the air around this area.
.' Click the Darkclaw Guano that spawns
.get 10 Darkclaw Guano|q 11154/1
step
goto 30.2,28.7
.talk 24227
..turnin 11154
step
goto 44.4,26.4
.' Use your Westguard Command Insignia in your bags |use Westguard Command Insignia##33311
.talk 24060
..turnin 11248
..accept 11245
..accept 11246
..accept 11247
step
goto 45.3,27
.kill Winterskorn mobs|n
.' Use The Sergeant's Machete on their corpses |use The Sergeant's Machete##33310
.' Dismember 20 Winterskorn Vrykul |q 11246/1
.get Vrykul Scroll of Ascension|n
.' Click the Vrykul Scroll of Ascension in your bags |use Vrykul Scroll of Ascension##33314
..accept 11249
step
goto 43.7,28.5
.' Use the Sergeant's Torch inside this house |use Sergeant's Torch##33321
.' Set the Northwest Longhouse Ablaze |goal Northwest Longhouse Set Ablaze |q 11247/1
step
goto 43.6,30.3
.' Use the Sergeant's Flare next to this tower |use Sergeant's Flare##33323
.' Target the Northwest Tower |goal Northwest Tower Targeted |q 11245/1
step
goto 43.2,35.8
.' Use the Sergeant's Flare next to this tower |use Sergeant's Flare##33323
.' Target the Southwest Tower |goal Southwest Tower Targeted |q 11245/3
step
goto 44.9,35
.' Use your Vrykul Scroll of Ascension next to the bonfire |use Vrykul Scroll of Ascension##33339
.kill Halfdan the Ice-Hearted##23671 |q 11249/1
step
goto 46.9,37.1
.' Use the Sergeant's Flare next to this tower |use Sergeant's Flare##33323
.' Target the Southeast Tower |goal Southeast Tower Targeted |q 11245/4
step
goto 46.5,33.2
.' Use the Sergeant's Flare next to this tower |use Sergeant's Flare##33323
.' Target the East Tower |goal East Tower Targeted |q 11245/2
step
goto 46,30.7
.' Use the Sergeant's Torch inside this building |use Sergeant's Torch##33321
.' Set the Barracks Ablaze |goal Barracks Set Ablaze |q 11247/3
step
goto 46.4,28.2
.' Use the Sergeant's Torch inside this house |use Sergeant's Torch##33321
.' Set the Northeast Longhouse Ablaze |goal Northeast Longhouse Set Ablaze |q 11247/2
step
'Use your Westguard Command Insignia in your bags |use Westguard Command Insignia##33311
.talk 24060
..turnin 11245
..turnin 11246
..turnin 11247
..accept 11250
step
goto 60.3,18.7
.talk 24056
..accept 11329
step
goto 61.5,18.8
.' Click the Water Plants |tip They look like tall bushy plants underwater around this area.
.from Northern Barbfish##24285
.get 5 Northern Barbfish|q 11329/1
step
goto 60.3,18.7
.talk 24056
..turnin 11329
..accept 11410
step
goto 64,19.6
.' Use your Fresh Barbfish Bait next to the Sunken Boat underwater |use Fresh Barbfish Bait##34013
.kill Frostfin##24500 |q 11410/1
step
goto 60.3,18.7
.talk 24056
..turnin 11410
step
goto 61.8,17.2
.talk 24282
..accept 11302
step
goto 62.3,17.2
.talk 24328
..accept 11346
step
goto 62.6,16.8
.talk 24139
..turnin 11406
..accept 11269
step
goto 62.6,16.8
.talk 24131
..accept 11292
step
goto 60.1,16.1
.talk 24061
.fpath Fort Wildervar
step
goto 60.2,15.6
.talk 24176
..accept 11284
step
goto 57.3,18.6
.kill Frosthorn Ram##23740+ |n
.collect 4 Tough Ram Meat##33352|n
.' Click the Tough Ram Meat in your bags |use Tough Ram Meat##33352
.collect 1 Giant Yeti Meal##33477|q 11284
.' Click the Spotted Hippogryph Down feathers |tip They look like brown feathers on the ground around this area.
.get 10 Spotted Hippogryph Down|q 11269/1
.' Click the Sprung Traps |tip They look like small animals stuck in traps on the ground around this area.
.get 8 Trapped Prey|q 11292/1
.' You can find more at [54.9,11.0]
step
goto 54.1,8.2|n
.' The path up to The Cleansing starts here |goto 54.1,8.2,0.5 |noway |c
step
'Follow the path up to 61.1,2 |goto 61.1,2
.' Click the Frostblade Shrine |tip It's a big blue glowing altar table thing.
.kill Inner Turmoil that spawns |n
.get Cleansed of Your Inner Turmoil|q 11322/1
' |from Your Inner Turmoil##27959
step
'Hearth to Westguard Keep |goto Howling Fjord,30.9,41.5,1 |use Hearthstone##6948 |noway |c
step
'Go inside the fort to 28.8,44.1 |goto 28.8,44.1
.talk 23749
..turnin 11250
..accept 11235
step
goto 28.9,44
.talk 24038
..turnin 11249
..accept 11231
step
goto 30.2,28.7
.talk 24273
..turnin 11322
..accept 11325
step
goto 29.7,5.7
'Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11325
..accept 11414
step
goto 28.3,23.9
.kill Bjomolf##24516 |q 11414/1
step
goto 33.8,29.3
.kill Varg##24517 |q 11414/2
step
goto 35.1,16
.kill 15 Gjalerbron Warrior##23991+ |q 11235/1
.kill 8 Gjalerbron Rune-Caster##23990+ |q 11235/2
.kill 8 Gjalerbron Sleep-Watcher##23989+ |q 11235/3
.kill Gjalerbron mobs|n
.collect 10 Gjalerbron Cage Key##33284|n
.collect 1 Large Gjalerbron Cage Key##33290|n
.' Click Gjalerbron Cages
.' Free 10 Gjalerbron Prisoners |goal 10 Gjalerbron Prisoner Freed |q 11231/1
.get Gjalerbron Attack Plans|n
.' Click the Gjalerbron Attack Plans in your bags |use Gjalerbron Attack Plans##33289
..accept 11237
step
goto 29.7,5.7
.' Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11414
..accept 11416
step
goto 41.4,37.7
.' Click Talonshrike's Egg |tip It's an egg sitting in a nest with 2 other eggs at the base of this waterfall, in the water on a rock.
.from Talonshrike##24518
.get Eyes of the Eagle|q 11416/1
step
goto 29.7,5.7
.' Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11416
..accept 11326
step
goto 26.3,12.8
.kill Garwal##24277 |q 11326/1
step
goto 30.1,28.6
.talk 24273
..turnin 11326
step
goto 28.9,44.2
.talk 23888
..turnin 11237
step
goto 28.8,44.1
.talk 23749
..turnin 11235
..accept 11236
step
goto 28.9,44
.talk 24038
..turnin 11231
..accept 11239
step
goto 28.9,44.2
.talk 23888
..accept 11432
step
'Go up onto the platform to 35.7,15.8 |goto 35.7,15.8
.kill 10 Deathless Watcher##24013+ |q 11239/1
.kill 2 Putrid Wight##23992+ |q 11239/3
.' You can find another Putrid Wight and more Deathless Watchers at [38.2,11.8]
step
goto 38.8,13
.kill Necro Overlord Mezhen##24018 |q 11236/1
.get Mezhen's Writings |n
.' Click Mezhen's Writings |use Mezhen's Writings##34090
..accept 11452
step
goto 39.8,7.6|n
.' This is the entrance to The Slumbering King |goto 39.8,7.6,0.3 |noway |c |tip Go up the big ramp to this spot.
step
'Go inside and downstairs to 40.9,6.5 |goto 40.9,6.5
.kill Queen Angerboda##24023 |q 11452/1 |tip She's standing up on the platform.
step
'Go outside to 34.5,13.2 |goto 34.5,13.2 |n
.' The entrance down into the Walking Halls starts here |goto 34.5,13.2,0.3 |noway |c
step
'Go down the stairs to 35,11.9 |goto 35,11.9
.kill 4 Fearsome Horror##24073+ |q 11239/2 |tip Underground in the Walking Halls.
.kill Necrolord##24014+ |n
.collect 5 Awakening Rod##34083|n
.' Use your Awakening Rods on Dormant Vrykul |use Awakening Rod##34083 |tip They are sleeping upright inside the walls, like mummies.
.kill 5 Dormant Vrykul##24669+ |q 11432/1
step
'Hearth to Westguard Keep |goto Howling Fjord,30.9,41.5,0.5 |use Hearthstone##6948 |noway |c
step
'Go inside the fort to 28.9,44.2 |goto 28.9,44.2
.talk 23888
..turnin 11432
step
goto 28.8,44.1
.talk 23749
..turnin 11236
..turnin 11452
step
goto 28.9,44
.talk 24038
..turnin 11239
step
'Fly to Fort Wildervar |goto Howling Fjord,60.1,16.0,0.5 |noway |c
step
goto 59.7,13.8|n
.' The path into the mine for The Yeti Next Door starts here |goto 59.7,13.8,0.5 |noway |c
step
goto 60.5,11.9
.' Use your Giant Yeti Meal in your bags on Shatterhorn |use Giant Yeti Meal##33477 |tip In the back of the mine, he's a big sleeping yeti.
.kill Shatterhorn##24178+ |q 11284/1
step
'Go outside to 60.2,15.6 |goto 60.2,15.6
.talk 24176
..turnin 11284
step
goto 62.6,16.8
.talk 24139
..turnin 11269
..accept 11418
step
goto 62.6,16.8
.talk 24131
..turnin 11292
step
'She flies in the sky above town
.' Use your Feathered Charm in your bags on Steelfeather |use Feathered Charm##34026
.' Learn Steelfeather's Secret |goal Learn Steelfeather's Secret |q 11418/1
step
goto 62.6,16.8
.talk 24139
..turnin 11418
step
goto 61.5,22.8
.talk 24117
..turnin 11302
..accept 11313
step
goto 60.6,22.4
.kill Ice Elemental##23919+ |n
.get 15 Icy Core|q 11313/1
step
goto 61.5,22.8
.talk 24117
..turnin 11313
..accept 11314
..accept 11315
step
goto 53.3,27.8
.' Use Lurielle's Pendant on Chill Nymphs |use Lurielle's Pendant##33606
.' Free 7 Chill Nymphs |q 11314/1
.kill 8 Scarlet Ivy##23763+ |q 11315/1
step
goto 61.5,22.8
.talk 24117
..turnin 11314
..turnin 11315
..accept 11316
..accept 11319
step
goto 54.7,20.5
.kill 10 Thornvine Creeper##23874+ |q 11316/1
.from Spore##23876
.' Use your Enchanted Ice Core on Spore corpses |use Enchanted Ice Core##33607
.' Freeze 8 Spores |q 11319/1
step
goto 61.5,22.8
.talk 24117
..turnin 11316
..turnin 11319
..accept 11428
step
goto 53.7,18.6
.kill Keeper Witherleaf##24638|q 11428/1
step
goto 61.5,22.8
.talk 24117
..turnin 11428
step
goto 65.0,28.5
.kill Iron Rune Stonecallers and Iron Rune Binders|n
.collect 1 Book of Runes - Chapter 1##33778 |n
.collect 1 Book of Runes - Chapter 2##33779 |n
.collect 1 Book of Runes - Chapter 3##33780 |n
.' Click a Book of Runes - Chapter in your bags |use Book of Runes - Chapter 1##33778
.get The Book of Runes|q 11346/1
' |from Iron Rune Stonecaller##24030, Iron Rune Binder##23796
step
goto 62.3,17.2
.talk 24328
..turnin 11346
..accept 11349
step
ding 72
step
goto 71.2,28.7
.' Click the Iron Rune Carving Tools |tip It looks like a small metal chest.
.get Iron Rune Carving Tools|q 11349/1
.' If they are not there, they can also spawn at the following 5 locations as well:
..' at [67.5,23.5]
..' at [69.1,22.8]
..' at [72.4,17.8]
..' at [73.4,24.9]
..' at [67.5,29.2]
step
goto 62.3,17.2
.talk 24328
..turnin 11349
..accept 11348
step
goto 71.9,23.3
.' Use your Rune of Command on a Stone Giant around this area to control it |use Rune of Command##33796 |q 11348/1
step
goto 71.9,24.6
.kill Binder Murdis##24334 |q 11348/2
step
goto 62.3,17.2
.talk 24328
..turnin 11348
step
'Fly to Valiance Keep, Borean Tundra |goto Borean Tundra,58.9,68.4,0.5 |c
step
'Go northeast to Dragonblight |goto Dragonblight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Dragonblight (72-74)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)
startlevel 72.1
dynamic on
step
goto Dragonblight,29,55.5
.talk 26673
..accept 12000
step
goto 29.2,55.3
.talk 26881
.fpath Stars' Rest
step
goto 29.2,55.6
.talk 26973
..accept 12166
step
.home Stars' Rest
step
goto 28.8,56.2
.talk 27060
..turnin 12157
..accept 12171
step
goto 29.2,55.3
.' She is the Flight Path Master
.talk 26881
..turnin 12171
step
goto 26.3,52.3
.from Blighted Elks
.from Rabid Grizzlies
.' Use your Liquid Fire of Elune on their corpses |use Liquid Fire of Elune##36956
.' Cleanse 6 Blighted Elk corpses |goal 6 Blighted Elk's corpse cleansed |q 12166/1
.' Cleanse 6 Rabid Grizzly corpses |goal 6 Rabid Grizzly's corpse cleansed |q 12166/2
step
goto 24.1,53.7
.' Click the Dead Mage Hunter bodies on the ground
.get Mage Hunter Personal Effects bags|n
.' Click the Mage Hunter Personal Effects bags in your bags |use Mage Hunter Personal Effects##35792
.get Moonrest Gardens Plans|q 12000/1
step
goto 29,55.5
.talk 26673
..turnin 12000
..accept 12004
step
goto 29.2,55.6
.talk 26973
..turnin 12166
..accept 12167
step
goto 24.2,60.1
.talk 26501
..accept 12006
step
goto 20.9,60.4
.kill 15 Blue Dragonflight forces at Moonrest Gardens |q 12006/1 |tip Kill all types of mobs except the Moonrest Highbornes around this area.
' |from Dragonblight Mage Hunter##32572, Moonrest Stalker##26281, Focus Wizard##26816, Surge Needle Sorcerer##26257
step
goto 18.4,58.9
.from Wind Trader Mu'fah##26496
.get Wind Trader Mu'fah's Remains |q 12004/1
step
'Go inside the building to 19.4,58.1 |goto 19.4,58.1
.from Goramosh##26349
.get The Scales of Goramosh|q 12004/2
.get Goramosh's Strange Device |n
.' Click Goramosh's Strange Device |use Goramosh's Strange Device##36742
..accept 12055
step
goto 24.2,60.1
.talk 26501
..turnin 12006
..accept 12013
step
goto 20,59.7
.kill Arcanimus##26370|q 12013/1
step
goto 24.2,60.1
.talk 26501
..turnin 12013
step
goto 29,55.5
.talk 26673
..turnin 12004
..turnin 12055
..accept 12060
step
goto 24.2,55.6
.' Use your Surge Needle Teleporter |use Surge Needle Teleporter##36747
.' Walk around on the platform you get teleported onto
.' Observe the Object on the Surge Needle |goal Object on the Surge Needle observed |q 12060/1
step
'Use your Surge Needle Teleporter to go back down to the ground |goto Dragonblight,22.6,57.0,1.0 |use Surge Needle Teleporter##36747 |noway |c
step
goto 29,55.5
.talk 26673
..turnin 12060
..accept 12065
step
goto 26.4,65
.from Captain Emmy Malin##26762
.get Ley Line Focus Control Ring|n
.' Use the Ley Line Focus Control Ring next to the half-circle |use Ley Line Focus Control Ring##36751 |tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |goal Ley line focus information retrieved |q 12065/1
.get Captain Malin's Letter |n
.' Click Captain Malin's Letter in your bags |use Captain Malin's Letter##36756
..accept 12067
step
goto 29,55.5
.talk 26673
..turnin 12065
..accept 12083
step
goto 29,55.5
.talk 26459
..turnin 12067
step
goto 28.7,57.1
.talk 26837
..accept 12092
step
goto 31.2,59.7
.talk 26421
.collect 3 Bark of the Walkers##36786|q 12092
step
goto 30.6,63.4
.' Use your Bark of the Walkers on Lothalor Ancients |use Bark of the Walkers##36786 |tip They just stand around this area and they are friendly toward you.
.' Strengthen 3 Lothalor Ancients |goal 3 Lothalor Ancient strengthened |q 12092/1
step
goto 32.2,70.6
.from Lieutenant Ta'zinni##26815 |tip He walks in a circle around the half-circle purple glowing thing.
.collect Ley Line Focus Control Amulet##36779|q 12083
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus |use Ley Line Focus Control Amulet##36779 |tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |goal Ley line focus information retrieved |q 12083/1
step
goto 28.7,57.1
.talk 26837
..turnin 12092
step
goto 29,55.5
.talk 26673
..turnin 12083
..accept 12098
step
goto 26.4,45.7
.from Anub'ar Cultist##26319
.get 5 Functional Cultist Suit|q 12167/1
.get The Favor of Zangus|n
.' Click the Favor of Zangus in your bags |use The Favor of Zangus##36958
..accept 12168
step
goto 29.2,55.6
.talk 26973
..turnin 12167
..turnin 12168
..accept 12169
step
goto 27.0,50.4|n
.' The path down to High Cultist Zangus starts here |goto Dragonblight,27.0,50.4,0.5 |noway |c
step
'Go down into the cave to 28.9,49.7 |goto 28.9,49.7
.kill High Cultist Zangus##26655 |q 12169/1
step
'Go out of the cave to 29.2,55.6 |goto 29.2,55.6
.talk 26973
..turnin 12169
step
goto 40.3,66.9
.' Click Mage-Commander Evenstar's body |tip His body is floating underwater here.
..turnin 12098
..accept 12107
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus |use Ley Line Focus Control Talisman##36815 |tip It's a big half-circle purple glowing thing underwater.
.' Retrieve ley line focus information |goal Ley Line Focus information retrieved |q 12107/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |goal Azure Dragonshrine observed |q 12107/2
step
goto 48.5,74.4
.talk 28196
.fpath Moa'ki
step
.home Moa'ki Harbor
step
goto 48,74.9
.talk 26194
..turnin 12117
..accept 11958
step
goto 48.3,74.3
.talk 26228
..accept 11960
step
goto 45.3,63.7
.kill Snowfall Glade mobs|n
.get 6 Stolen Moa'ki Goods |q 11958/1
.' Click Snowfall Glade Pups |tip The Snowfall Glade Pups are small creatures in front of the houses.
.get 12 Snowfall Glade Pup|q 11960/1
' |from Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201, Snowfall Glade Den Mother##26199
step
goto 48.3,74.3
.talk 26228
..turnin 11960
step
goto 48,74.9
.talk 26194
..turnin 11958
..accept 11959
step
goto 46.3,59.2
.from Loguhn##26196
.get Blood of Loguhn|n
.' Click the Blood of Loguhn in your bags |use Blood of Loguhn##35688
.' Smear the Blood of Loguhn on yourself |goal Loguhn's Blood Smeared |q 11959/1
step
goto 48,74.9
.talk 26194
..turnin 11959
step
goto 49.2,75.6
.talk 26595
..accept 12028
step
goto 48.9,75.8
.' Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier |use Toalu'u's Spiritual Incense##35907 |tip Sitting next to the entrance to the small house.
.' Watch yourself fly as a wisp
.' Attain Spiritual Insight concerning Indu'le Village |goal Spiritual insight concerning Indu'le Village attained. |q 12028/1
step
goto 49.2,75.6
.talk 26595
..turnin 12028
..accept 12030
step
goto 47.7,76.6
.talk 26245
..accept 12009
step
goto 46.6,77.5
.' Click Tua'kea's Crab Traps |tip They look like small cages on the ground underwater around this area.
.get 8 Tua'kea Crab Trap |q 12009/1
step
goto 47.7,80
.' Click the Wrecked Crab Trap |tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
..accept 12011
step
goto 47.7,76.6
.talk 26245
..turnin 12009
..turnin 12011
..accept 12016
step
goto 43.7,82.3
.from Kili'ua##26521
.get The Flesh of "Two Huge Pincers"|q 12016/1
step
goto 47.7,76.6
.talk 26245
..turnin 12016
..accept 12017
step
goto 46.7,78.2
.' Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838 |tip It looks like a rope leading into the water, with a big hook on the end.
.' Kill Tu'u'gwar when he comes |kill 1 Tu'u'gwar |q 12017/1
step
goto 47.7,76.6
.talk 26245
..turnin 12017
step
goto 36.4,65
.talk 188419
..turnin 12030
..accept 12031
step
goto 37.2,65.5
.kill Indu'le mobs |n
.' Put 15 Indu'le spirits to rest |q 12031/1
' |from Indu'le Mystic##26336, Indu'le Warrior##26344
step
goto 36.4,65
.talk 188419
..turnin 12031
..accept 12032
step
goto 34.3,79.8|n
.' The path up to Conversing With the Depths starts here |goto Dragonblight,34.3,79.8,0.5 |noway |c
step
'Follow the path up to 34,83.4 |goto 34,83.4
.' Click The Pearl of the Depths |tip It's a big white pearl sitting on a altar thing.
.' Oacha'noa appears and tells you to jump in the water
.' Jump in the water when he tells you to
.' Obey Oacha'noa's compulsion |goal Oacha'noa's compulsion obeyed. |q 12032/1
step
goto 49.2,75.6
.talk 26595
..turnin 12032
step
'Fly to Stars' Rest |goto Dragonblight,29.2,55.4,0.5 |noway |c
step
goto 29,55.5
.talk 26673
..turnin 12107
..accept 12119
step
'Hearth to Moa'ki Harbor |goto Dragonblight,48.2,74.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 57.9,54.2
.talk 26443
..turnin 12119
..accept 12766
step
.home Wyrmrest Temple
step
goto 60,55.1
.talk 27803
..turnin 12766
..accept 12460
step
goto 60.3,51.6
.talk 26851
.fpath Wyrmrest Temple
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.6,54.4
.talk 27785
..accept 12458
step
goto 60,54.5
.talk 27856
..accept 12470
step
goto 60.1,54.2
.talk 27765
..accept 12447
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto 63.3,66.9|n
.' The path down to Seeds of the Lashers starts here |goto Dragonblight,63.3,66.9,0.5 |noway |c
step
goto 63.3,71
.kill Emerald Lasher##27254+ |n
.get 3 Lasher Seed|q 12458/1
step
goto 63.7,71.9
.talk 27255
..accept 12454
step
'They fly around over your head around the lake
.kill 5 Emerald Skytalon##27244+ |q 12454/1
step
goto 63.7,71.9
.talk 27255
..turnin 12454
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.6,54.4
.talk 27785
..turnin 12458
..accept 12459
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto 52.2,50
.talk 27506
..turnin 12460
..accept 12416
step
goto 52.7,46.2
.' Help kill the following:
..'12 Frigid Ghoul Attackers |kill 12 Frigid Ghoul Attacker |q 12416/1
..'8 Frigid Geist Attackers |kill 8 Frigid Geist Attacker |q 12416/2
..'1 Frigid Abomination Attacker |kill 1 Frigid Abomination Attacker |q 12416/3
.' You can find more of these at [50.9,52.4] |n
step
goto 52.2,50
.talk 27506
..turnin 12416
..accept 12417
step
goto 46.7,52.8
.' Click the Ruby Acorns |tip The Ruby Acorns look like red stones on the ground around this area.
.collect 6 Ruby Acorn##37727|n
.' Use the Ruby Acorns on the Ruby Keeper corpses |use Ruby Acorn##37727 |tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |goal 6 Ruby Keeper Returned to the Earth |q 12417/1
step
goto 52.2,50
.talk 27506
..turnin 12417
..accept 12418
step
'Go into the valley to 48.2,47.8 |goto 48.2,47.8
.kill 6 Frigid Necromancer##27539+ |q 12418/1
step
'Go into the tree trunk to 47.6,49 |goto Dragonblight,47.6,49
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |goal Ruby Corruption Cleansed |q 12418/2
.get Ruby Brooch|n
.' Click the Ruby Brooch in your bags |use Ruby Brooch##37833
..accept 12419
step
goto 52.2,50
.talk 27506
..turnin 12418
..accept 12768
step
goto 57.9,54.2
.talk 26443
..turnin 12768
..accept 12123
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 12123
..accept 12435
step
goto 59.8,54.7
.talk 27990
..turnin 12419
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to Lord Afrasastrasz |goto Dragonblight,59.2,54.3,0.1 |noway |c
step
goto 59.2,54.3
.talk 27575
..turnin 12435
..accept 12372
step
goto 58.3,55.2
.talk 27629
..'Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon##27608+ |q 12372/1
.kill 5 Azure Drake##27682+ |q 12372/2
step
'Fly southwest to 55.1,66.4 |goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |goal Destabilize the Azure Dragonshrine |q 12372/3
step
goto 58.7,54.5|n
'Click the red arrow to get off the dragon on the middle level of the temple |script VehicleExit() |outvehicle |c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
goto 59.2,54.3|n
.talk 27575
..'Tell him you want to go to the ground level |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto 55.2,45.7
.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it |use Seeds of Nature's Wrath##37887 |tip They fly around in the sky.
.kill Weakened Reanimated Frost Wyrm##27821+ |q 12459/1
step
'Go to Wyrmrest Temple and fly to Stars' Rest |goto Dragonblight,29.2,55.4,0.1 |noway |c
step
goto 29.2,55.3
'She is the Flight Path Master
.talk 26881
..accept 12174
step
'You will fly to Wintergarde Keep |goto Dragonblight,77.1,49.8,0.1 |noway |c
step
goto 77,49.8
.talk 26878
.fpath Wintergarde Keep
step
goto 78.61,48.2
.talk 27136
..turnin 12174
..accept 12235
step
goto 77.1,50.1
.talk 27317
..turnin 12235
..accept 12237
step
'Use the Wintergarde Gryphon Whistle in your bags |use Wintergarde Gryphon Whistle##37287
.' Click the Wintergarde Gryphon to ride it |invehicle
step
'Fly to 83.6,48.8 |goto 83.6,48.8
.' Use your Rescue Villager ability on your hotbar on Helpless Wintergarde Villagers on the ground around this area |petaction Rescue Villager
.' Fly them back to Gryphon Commander Urik at [77.1,50.1] |n |petaction Soar
.' Use your Drop Off Villager ability on your hotbar |petaction Drop Off Villager
.' Rescue 5 Helpless Villagers  |q 12237/1
step
'Click the red arrow button on your hotbar to get off the gryphon |script VehicleExit() |outvehicle
step
goto 77.1,50.1
.talk 27317
..turnin 12237
..accept 12251
step
goto 78.61,48.2
.talk 27136
..turnin 12251
..accept 12253
..accept 12275
step
goto 78.6,48.2
.talk 27155
..accept 12258
step
goto 79.1,47.2
.talk 27314
..accept 12282
step
goto 77.8,50.3
.talk 27159
..turnin 12275
..accept 12276
..accept 12272
step
goto 77.8,50.3
.talk 27156
..accept 12269
step
.home Wintergarde Keep
step
goto 79.9,49.7
.' Kill Vengeful Geists next to Trapped Wintergarde Villagers |tip The Trapped Wintergarde Villagers looked like scared villagers getting harassed by Vengeful Geists around this area and inside buildings.
.' Rescue 6 Trapped Wintergarde Villagers |goal 6 Trapped Wintergarde Villager Rescued |q 12253/1
.kill 15 Vengeful Geist##27370+ |q 12258/1
step
'Go upstairs in this building to 78.9,50.9 |goto 78.9,50.9
.' Click the Scrying Orb |tip Upstairs in this building, in the back of the room, next to some boxes.  It looks like a glowing ball with wings on it.
.get Scrying Orb|q 12282/1
step
goto 78.6,48.2
.talk 27155
..turnin 12258
step
goto 78.61,48.2
.talk 27136
..turnin 12253
..accept 12309
step
goto 79.1,47.2
.talk 27314
..turnin 12282
..accept 12287
step
goto 79.1,53.2
.talk 27318
..turnin 12309
..accept 12311
step
'Go inside the crypt to 78.6,52.4 |goto 78.6,52.4
.from Necrolord Amarion##27508
.' Click the Flesh-bound Tome |tip The Flesh-bound Tome is a small red book on the floor.
..accept 12312
step
'Go outside the crypt to 79.1,53.2 |goto 79.1,53.2
.talk 27318
..turnin 12311
..turnin 12312
..accept 12319
step
goto 78.61,48.2
.talk 27136
..turnin 12319
..accept 12320
step
goto 76.8,47.4
.talk 27316
..turnin 12320
..accept 12321
step
goto 76.8,47.4
.' Watch the dialogue |tip Downstairs in the fort, in front of a jail cell.
.' Hear the Righteous Sermon |goal Righteous Sermon Heard |q 12321/1
step
goto 78.61,48.2
.talk 27136
..turnin 12321
step
goto 80.4,45.1
.' Kill Risen Wintergarde Miners inside this mine
.get 10 Wintergarde Miner's Card |q 12269/1
.' Click the Strange Ore nodes |tip They look like green mining nodes.
.get 10 Strange Ore|q 12272/1
step
goto 81.5,42.2
.talk 27412
..turnin 12276
..accept 12277
step
goto 80.7,41.3
.' Click the Wintergarde Mine Bomb |tip It looks like a bunch of big dynamite sticks on the ground, next to this wooden stage.
.collect Wintergarde Mine Bomb##37465 |q 12277
step
'Follow the path in the mine to 80.4,44.8 |goto 80.4,44.8
.' Use your Wintergarde Mine Bomb in the doorway |use Wintergarde Mine Bomb##37465 |tip It's an entrance to the mine.
.' Destroy the Lower Wintergarde Mine Shaft |goal Lower Wintergarde Mine Shaft Destroyed |q 12277/2
step
'Go outside and around to [80.2,45.3] |goto 80.2,45.3
.' Use your Wintergarde Mine Bomb in the doorway |use Wintergarde Mine Bomb##37465 |tip It's an entrance to the mine.
.' Destroy the Upper Wintergarde Mine Shaft |goal Upper Wintergarde Mine Shaft Destroyed |q 12277/1
step
'Follow the path up into town to 77.8,50.3 |goto 77.8,50.3
.talk 27159
..turnin 12277
..turnin 12272
..accept 12281
step
goto 77.8,50.3
.talk 27156
..turnin 12269
step
ding 73
step
goto 78.61,48.2
.talk 27136
..turnin 12281
..accept 12325
step
goto 77.1,49.6
.' Click a Wintergarde Gryphon to ride it |invehicle |tip They are standing here in a row.
step
goto 89.7,46.4
.talk 27157
..turnin 12325
..accept 12326
step
goto 89.6,45.6
.' Click an Alliance Steam Tank to ride it |invehicle |tip They look like big siege carts.
step
goto 88.8,46.8
.' Use your Drop Off Gnome ability on your hotbar to drop off gnomes next to the Plague Wagons in this field |petaction Drop Off Gnome
.' Sabotage 6 Plague Wagons |goal 6 Plague Wagon Sabotaged |q 12326/1
step
goto 85.6,49.8
.' Use your Drop Off Soldier ability on your hotbar to drop off your soldiers in front of this crypt entrance |petaction Drop Off Soldier
.' Drop Off the 7th Legion Elite |goal 7th Legion Elite Safely Dropped Off |q 12326/2
step
'Go inside the crypt to 85.9,50.9 |goto 85.9,50.9
.talk 1293
..turnin 12326
..accept 12455
step
goto 85.9,51
.talk 27319
..accept 12462
step
'Go outside of the crypt to [85.1,49.5] |goto 85.1,49.5
.' Click the Wintergarde Munitions Crates |tip They look like long wooden boxes on the ground around this area.
.get 8 Wintergarde Munitions|q 12455/1
step
goto 86.2,47
.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him |use Seeds of Nature's Wrath##37887 |tip He's an abomination standing in a small room inside this abandoned fort.
.kill Weakened Turgid the Vile##27809 |q 12459/2
step
'Go into the crypt to 85.9,50.9 |goto 85.9,50.9
.talk 1293
..turnin 12455
..accept 12457
step
goto 86.2,51
.' Click a 7th Legion Chain Gun to use it |tip They look like metal turrets.
.' Use the abilities on your hotbar Call Out Injured Soldiers and clear a path for them
.' Save 8 Injured 7th Legion Soldiers |goal 8 Injured 7th Legion Soldier Saved |q 12457/1
step
'Click the red arrow button on your hotbar to get off the gun |script VehicleExit() |outvehicle
step
goto 85.9,50.9
.talk 1293
..turnin 12457
..accept 12463
step
'Go downstairs to 84.4,51 |goto 84.4,51
.kill Necrolord X'avius##27826 |q 12462/2
step
goto 86.7,52.9
.kill Necrolord Horus##27805|q 12462/1
step
goto 85.6,52
.kill 15 Naxxramas Scourge|q 12462/3
' |from Dreadbone Construct##27835, Naxxramas Dreadguard##27823, Scourge Technician##27799, Wailing Soul##27836, Leprous Servant##27800, Naxxramas Shade##27824, Tattered Abomination##27797
step
goto 84.2,54.7
.talk 27828
..turnin 12463
..accept 12465
step
'Follow the tunnel to the other side to 83,55 |goto 83,55
.kill undead mobs|n
.get 1 Page 4 of Plunderbeard's Journal |q 12465/1
.get 1 Page 5 of Plunderbeard's Journal |q 12465/2
.get 1 Page 6 of Plunderbeard's Journal |q 12465/3
.get 1 Page 7 of Plunderbeard's Journal |q 12465/4
' |from Dreadbone Construct##27835, Wailing Soul##27836
step
'Follow the tunnel back to the other side to 85.9,51 |goto 85.9,51
.talk 27319
..turnin 12462
step
goto 85.9,50.9
.talk 1293
..turnin 12465
..accept 12466
step
'Go outside the crypt to [87.2,57.4] |goto 87.2,57.4
.talk 27347
..turnin 12287
..accept 12290
step
goto 90.8,64.4
.' Click the Murkweed plants |tip They look like little purple plants on the ground around this area.
.get 5 Murkweed|q 12290/1
step
goto 87.2,57.4
.talk 27347
..turnin 12290
..accept 12291
step
'As a spirit, go to 84.2,66.4 |goto 84.2,66.4
.' Use the Murkweed Elixir in your bags |use Murkweed Elixir##37570
.talk 27226
.' Question a Forgotten Peasant |goal Forgotten Peasant Questioned |q 12291/1
.talk 27225
.' Question a Forgotten Rifleman |goal Forgotten Rifleman Questioned |q 12291/2
.talk 27224
.' Question a Forgotten Knight |goal Forgotten Knight Questioned |q 12291/3
.talk 27229
.' Question a Forgotten Footman |goal Forgotten Footman Questioned |q 12291/4
step
goto 87.2,57.4
.talk 27347
..turnin 12291
..accept 12301
step
goto 86.8,66.2
.' Use Orik's Crystalline Orb while standing on the Forgotten Ruins blue circle |use Orik's Crystalline Orb##37577 |tip It looks like a blue glowing circle on the ground.
.' Watch the cutscene
.' Redeem the Forgotten |goal The Forgotten Redeemed |q 12301/1
step
goto 87.2,57.4
.talk 27347
..turnin 12301
..accept 12305
step
'Hearth to Wintergarde Keep |goto Dragonblight,77.4,51.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 79.1,47.2
.talk 27314
..turnin 12305
..accept 12475
step
goto 78.6,48.2
.talk 27155
..accept 12476
step
goto 78.61,48.2
.talk 27136
..accept 12477
step
goto 71.7,38.9
.' Use your Hourglass of Eternity |use Hourglass of Eternity##37923
.' Fight the mobs that spawn
.' Protect the Hourglass of Eternity |goal Hourglass of Eternity protected |q 12470/1
step
goto 89.5,19.1
.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him |use Seeds of Nature's Wrath##37887
.kill Weakened Overseer Deathgaze##27122 |q 12459/3
step
goto 87.6,38.1
.' Click the Onslaught Map |tip It looks like a map laid out on a table inside this broken tower.
.get Onslaught Map|q 12475/1
step
goto 84.9,35.5
.kill Onslaught mobs|n
.get The Path of Redemption|q 12477/1
.kill 20 Scarlet Onslaught|q 12476/1
' |from Onslaught Infantry##27330, Onslaught Mason##27333, Onslaught Scout##27332
step
goto 78.6,48.2
.talk 27155
..turnin 12476
step
goto 78.61,48.2
.talk 27136
..turnin 12477
step
goto 79.1,47.2
.talk 27314
..turnin 12475
..accept 12478
step
goto 74.2,23.8|n
.' The path to Frostmourne Cavern starts here |goto Dragonblight,74.2,23.8,0.5 |noway |c
step
'Go inside the cave to 75.1,20.2 |goto 75.1,20.2
.' Use Zelig's Scrying Orb next to the Frostmourne Altar |use Zelig's Scrying Orb##37933 |tip It looks like a small stone chair on the ground.
.' Reveal the Secrets of the Past |goal Secrets of the Past Revealed |q 12478/1
step
goto 64.7,27.9
.talk 27844
..turnin 12466
..accept 12467
step
goto 64.4,26.9
.talk 26978
..accept 12142
step
goto 64.6,27.5
.talk 27843
..'Tell him to fetch Icestorm
.' He will bring Icestorm
.kill Icestorm##26287 |n
.' Click Thel'zan's Phylactery that spawns
.get Thel'zan's Phylactery |q 12467/1
step
goto 68.1,33.1
.kill Magnataurs |n
.' Kill 3 Dragonblight Magnataur |q 12142/2
' |from Bloodfeast##27008, Drakegore##27009, Iceshatter##27007, Bonesunder##27006, Gigantaur##26836, Magnataur Patriarch##26295, Chilltusk##27005, Icefist##27004, Magnataur Youngling##26480
step
goto 70.4,32
.kill Snowplain kobolds|n
.' Kill 10 Snowplain Snobolds |goal 10 Snowplain Snobolds |q 12142/1
.' You can find more Snowplain Snobolds at [64.9,43.0] |n
' |from Gormok Zealot##34788, Snowplain Shaman##27279, Snowplain Zealot##27278
step
goto 64.4,26.9
.talk 26978
..turnin 12142
..accept 12143
step
'Follow the fleeing kobolds to 72.5,29.2 |goto 72.5,29.2
.kill Chilltusk##27005 |q 12143/1
.get Emblazoned Battle Horn|n
.' Click the Emblazoned Battle Horn |use Emblazoned Battle Horn##36855
..accept 12146
step
goto 64.4,26.9
.talk 26978
..turnin 12143
step
goto 60,55.1
.talk 26983
..turnin 12146
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you want to go to the top of the temple. |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.6,54.4
.talk 27785
..turnin 12459
step
goto 60,54.5
.talk 27856
..turnin 12470
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
.home Wyrmrest Temple
step
'Fly to Wintergarde Keep |goto Dragonblight,77.1,49.8,0.1 |noway |c
step
goto 78.61,48.2
.talk 27136
..turnin 12467
..accept 12472
step
goto 79.1,47.2
.talk 27314
..turnin 12478
step
goto 82.0,50.6|n
.' The path down to Legion Commander Yorik starts here |goto Dragonblight,82.0,50.6,0.5 |noway |c
step
goto 81.2,50.7
.talk 27857
..turnin 12472
..accept 12473
step
'Watch the dialogue
.' Help fight the battle
.' Defeat Thel'zan the Duskbringer |goal Thel'zan the Duskbringer Defeated |q 12473/1
step
'Go outside the crypt to 78.61,48.2 |goto 78.61,48.2
.talk 27136
..turnin 12473
..accept 12474
step
'Fly to Stars' Rest |goto Dragonblight,29.2,55.4,0.1 |noway |c
step
goto 37.2,31.8|n
.' The path to Serinar starts here |goto Dragonblight,37.2,31.8,0.5 |noway |c
step
'Go inside the cave to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12447
..accept 12262
..accept 12261
step
'Go outside the cave to 37.9,32 |goto 37.9,32
.kill 6 Burning Depths Necrolyte##27356+ |q 12262/1
.kill 10 Smoldering Skeleton##27360+ |q 12262/2
step
goto 42.1,32
.' Use your Destructive Wards in this spot |use Destructive Wards##37445
.' Defend the Destructive Ward from the mobs that spawn
.' Fully Charge the Destructive Ward |goal Destructive Ward Fully Charged |q 12261/1
step
'Go into the cave to 35.2,30 |goto 35.2,30
.talk 26593
..turnin 12262
..turnin 12261
..accept 12263
step
'Follow the path in the cave while disguised as a cultist to 31.8,30.5 |goto 31.8,30.5
.' Uncover the Magmawyrm Resurrection Chamber |goal Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
'Follow the path back down to 35.2,30 |goto 35.2,30
.talk 26593
..turnin 12263
..accept 12264
..accept 12265
step
'Follow the path in the cave to 34.2,26.8 |goto 34.2,26.8
.kill 3 Burning Depths Necromancer##27358 |q 12264/1
.kill 6 Smoldering Construct##27362+ |q 12264/2
.kill 6 Smoldering Geist##27363+ |q 12264/3
.' Click Necromantic Runes |tip They look like round purple symbols on the ground around this area in the cave.
.' Destroy 8 Necromantic Runes |goal 8 Necromantic Rune destroyed |q 12265/1
step
'Go back down in the cave to 35.2,30 |goto 35.2,30
.talk 26593
..turnin 12264
..turnin 12265
..accept 12267
step
'Follow the path in the cave to 31.6,31.2 |goto 31.6,31.2
.' Use Neltharion's Flame to Cleanse the Summoning Area |use Neltharion's Flame##37539 |tip Stand on the edge of the rock, next to the lava.
.kill Rothin the Decaying##27355+ |q 12267/2
step
'Go back down in the cave to 35.2,30 |goto 35.2,30
.talk 26593
..turnin 12267
..accept 12266
step
'Go outside to 48.5,24.1 |goto 48.5,24.1
.talk 26896
..accept 12469
step
goto 54.5,23.6
.talk 26647
..accept 12043
step
goto 54.7,23.2
.talk 26661
..accept 12045
step
goto 55,23.4
.talk 26660
..turnin 12469
..accept 12044
step
goto 53.7,18.9
.kill Crystalline Ice Elemental##26316+ |n
.get 4 Ice Shard Cluster|q 12045/1
step
goto 54.7,23.2
.talk 26661
..turnin 12045
..accept 12046
step
goto 53.7,25.4
.kill Jormungar Tunneler##26467+ |n
.get 12 Thin Animal Hide|q 12046/1
step
goto 54.7,23.2
.talk 26661
..turnin 12046
..accept 12047
step
'Also to 55,23.4 |goto 55,23.4
.talk 26660
..accept 12049
step
goto 57.5,23.9
.' Click Splintered Bone Chunks |tip They look like small white pointed bones on the ground next to the huge bones on the ground around this area.
.get 12 Splintered Bone Chunk|q 12047/1
.' Fight a Hulking Jormungar
.' Use your Potent Explosive Charges on the Hulking Jormungar when he opens his mouth |use Potent Explosive Charges##36732
.' Click the Jormungar Meat
.get 6 Seared Jormungar Meat|q 12049/1
step
goto 55,23.4
.talk 26660
..turnin 12049
step
goto 54.7,23.2
.talk 26661
..turnin 12047
step
goto 54.5,23.6
.talk 26647
..accept 12052
step
goto 55,23.4
.talk 26660
..accept 12050
step
goto 53.1,19.5
.' Use Xink's Shredder Control Device |use Xink's Shredder Control Device##36734
.' Click the shredder to ride it
.' Use your Gather Lumber ability next to Coldwind Trees |petaction Gather Lumber |tip They look like trees with small pieces of paper with X's on them.
.get 50 Coldwind Lumber|q 12050/1
.' Kill 15 harpies |goal 15 Coldwind Harpies |q 12052/2
step
goto 44.9,9.1
.' Kill Mistress of the Coldwind using Xink's Shredder |kill Mistress of the Coldwind |q 12052/1 |tip She flies around this area.
step
goto 54.5,23.6
.talk 26647
..turnin 12052
step
goto 55,23.4
.talk 26660
..turnin 12050
step
goto 54.5,23.6
.talk 26647
..accept 12112
step
goto 52.4,30.4
.kill 12 Wastes Digger##26492+ |q 12043/2
.kill 1 Wastes Taskmaster##26493 |q 12043/1
.' Click Composite Ore |tip They look like carts with ore piled in them.
.get 8 Composite Ore|q 12044/1
.' You can find more of all of these at [56.5,28.1] |n
step
goto 54.5,23.6
.talk 26647
..turnin 12043
step
goto 55,23.4
.talk 26660
..turnin 12044
step
goto 59.4,18.2
.talk 26659
..turnin 12112
..accept 12075
step
'Go into the cave to 56.2,12 |goto 56.2,12
.' Click the Ravaged Crystalline Ice Giant |tip It's an ice giant corpse laying inside this cave.
.get Sample of Rockflesh|q 12075/1
step
goto 59.4,18.2
.talk 26659
..turnin 12075
..accept 12076
step
goto 59,17.8
.talk 26473
..accept 12079
step
goto 57.5,12.4
.' Fight Ice Heart Jormungar Feeders
.' They will cast a poison on you
.' Use Zort's Scraper when you are affected by the poison |use Zort's Scraper##36775
.get 2 Vial of Corrosive Spit|n
.kill 8 Ice Heart Jormungar Feeder##26358+ |q 12079/1
step
'Go outside the cave to 59.4,18.2 |goto 59.4,18.2
.talk 26659
..turnin 12076
..accept 12077
step
goto 59,17.8
.talk 26473
..turnin 12077
..turnin 12079
step
goto 59.4,18.2
.talk 26659
..accept 12078
step
'Go into the cave to 55.3,11 |goto 55.3,11
.' Use your Sturdy Crates on Ice Heart Jormungar Spawns |use Sturdy Crates##36771
.' Click the Captured Jormungar Spawn crates
.get 3 Captured Jormungar Spawn|q 12078/1
step
'Go outside the cave to 59.4,18.2 |goto 59.4,18.2
.talk 26659
..turnin 12078
step
goto 39.5,25.9
.talk 26877
.fpath Fordragon Hold
step
goto 38.5,26.5|n
.' The path up to Highlord Bolvar Fordragon in the End Battle starts here |goto Dragonblight,38.5,26.5,0.5 |noway |c
step
'Follow the path up the mountain to 37.8,23.4 |goto 37.8,23.4
.talk 27872
..turnin 12474
..accept 12495
step
'Fly to Wyrmrest Temple |goto Dragonblight,60.3,51.4,0.5 |noway |c
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you want to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 60.1,54.2
.talk 27765
..turnin 12266
step
goto 59.8,54.7
.talk 26917
..turnin 12495
..accept 12497
step
goto 59.5,53.3
.talk 26949
..turnin 12497
..accept 12498
step
'Use your Ruby Beacon of the Dragon Queen |use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it |invehicle
step
'Fly to 57.2,33.1 |goto 57.2,33.1
.' Use the abilities on your hotbar
.kill 30 Wastes Scavenger##28005+ |q 12498/1
step
'Fly to 54.5,31.3 |goto 54.5,31.3
.' Use the abilities on your hotbar
.from Thiassi the Lightning Bringer##28018
.' Jump off the dragon |script VehicleExit()
.from Grand Necrolord Antiok##28006
.' Click the Scythe of Antiok
.get Scythe of Antiok|q 12498/2
step
ding 74
step
'Use your Ruby Beacon of the Dragon Queen |use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it |invehicle
step
'Fly to 59.8,54.7 |goto 59.8,54.7
.'Click the red arrow on your hot bar to jump off the dragon |script VehicleExit()
.talk 26917
..turnin 12498
..accept 12499
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
'Fly to Wintergarde Keep |goto Dragonblight,77.1,49.8,0.1 |noway |c
step
goto 87.2,57.4
.talk 27348
..accept 12542
step
goto 84,26.1
.talk 28228
..turnin 12542
..accept 12545
step
goto 86.8,22.4
.kill undead mobs|n
.' Kill 15 Jintha'kalar Scourge |q 12545/1
' |from Battered Drakkari Berserker##26948, Hulking Atrocity##26948,
step
goto 84,26.1
.talk 28228
..turnin 12545
..accept 12789
step
'Fly to Fordragon Hold |goto Dragonblight,39.6,25.7,0.1 |noway |c
step
'Follow the path up the mountain to 37.8,23.4 |goto 37.8,23.4
.talk 27872
..turnin 12499
step
'Fly to Stars' Rest |goto Dragonblight,29.2,55.4,0.5 |noway |c
step
goto 29.0,55.5
.talk 26673
..accept 12794
step
goto 29,55.5|n
.talk 26673
..'Teleport to Dalaran |goto Dalaran,55.9,46.8,0.5 |noway |c
step
'Go downstairs to 56.3,46.8 |goto Dalaran,56.3,46.8
.talk 29156
..turnin 12794
..accept 12790
step
goto 56.3,46.8
.' Click the Teleport to Violet Stand Crystal |tip Downstairs in a small room.  It's a blue floating triangular jewel.
.' Use the Teleport to Violet Stand Crystal |goal Teleport to Violet Stand Crystal used |q 12790/1
step
goto Crystalsong Forest,15.7,42.5
.' Click the Teleport to Dalaran Crystal
.' Use the Teleport to Dalaran Crystal |goal Teleport to Dalaran Crystal used |q 12790/2
step
'Go downstairs to 56.3,46.8 |goto Dalaran,56.3,46.8
.talk 29156
..turnin 12790
step
goto 72.2,45.8
.talk 28674
.fpath Dalaran
step
'Fly to Wintergarde Keep |goto Dragonblight,77.1,49.8,0.1 |noway |c
step
goto Dragonblight,77.1,50.1
.talk 27317
..accept 12511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Zul'Drak (75-77)
startlevel 74.1
dynamic on
step
goto Grizzly Hills 31.8,59.6
.click Amberseed##424 |tip It's in a small bucket filled with Amberseeds.
..accept 12225
step
goto 31.8,60.2
.talk 26875
..turnin 12511 |only if havequest(12511)
..accept 12292
step
goto 32.1,60
.talk 27277
..turnin 12225
..accept 12226
..accept 12212
..accept 12215
step
goto 32.0,60.3
.talk 27066
.home Amberpine Lodge
step
goto  36.6,57.4
.from Tallhorn Stag##26363+
.get 8 Succulent Venison|q 12212/1
step
goto 32.1,60
.talk 27277
..turnin 12212
..accept 12216
step
goto 31.8,60.2
.talk 26875
..accept 12210
step
goto 30.6,53.4
.click Blackroot##7828+
.get 5 Blackroot Stalk|q 12226/1
.from Grizzly Bear##27131+
.get 8 Grizzly Flank|q 12216/1
step
goto 32.1,60
.talk 27277
..turnin 12216
..turnin 12226
..accept 12227
step
goto 32.2,58.9
.click Amberpine Outhouse##3332
.' Use the outhouse
.get Partially Processed Amberseeds |q 12227/1
step
goto 32.1,60
.talk 27277
..turnin 12227
step
goto 26,67.4
.kill 6 Graymist Hunter##26592+ |q 12215/1
step
goto 15.9,65.3
.click Cedar Chest##1
.get Cedar Chest|q 12292/1
step
goto 16.2,47.6
.talk 26424
..turnin 12210
..accept 11984
step
goto 16.4,48.3
.talk 26422
..'Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |c
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll |q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.click  Dull Carving Knife##7871
.collect Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
.' Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
.buy 1 Crystal Vial |q 11990/1
step
goto 14.6,45.3
.click Hazewood Bush##358+
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.click Waterweed##267
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
..accept 11991
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.click Scourged Troll Mummy##6804
.collect Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 15.7,46.7
.talk 26519
..accept 12483
step
goto 11.1,61.8
.click Shimmering Snowcap##7756+
.get 5 Shimmering Snowcap|q 12483/2
step
goto 13.3,58.5
.kill Ice Serpent##26446+ |n
.get 5 Ice Serpent Eye|q 12483/1
.from Drakkari Shaman##26447, Drakkari Warrior##26425
.collect 5 Frozen Mojo##35799|q 11991
step
goto 13.2,60.9
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
.talk 26500
..turnin 11991
..accept 12007
step
goto 18.4,38.5
.click Sweetroot##7813
.get 5 Sweetroot|q 12483/3
step
goto 14.5,38
.from Warlord Zim'bo##26544
.collect Zim'bo's Mojo##35836 |q 12007
step
'Go up the huge stairs to [17.9,36.5] |goto 17.9,36.5
.click Seer of Zeb'Halak##7785
.get Eye of the Prophets|q 12007/1
step
goto 17.4,36.4
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
.talk 26543
..turnin 12007
..accept 12042
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1 |modelnpc Famished Scourge Troll##26570+
step
goto 25.6,33.3
.talk 27545
..accept 12307
step
goto 28.6,35.1
.click Wolfsbane Root##271
.' Uproot 8 Wolfsbane Roots |q 12307/1
step
goto 25.6,33.3
.talk 27545
..turnin 12307
step
'Go on top of the control station to 36.9,32.4 |goto 36.9,32.4
.click Heart of the Ancients##7075
..turnin 12042
..accept 12802
step
goto 44.2,30.4
.from Drakkari Defender##26704+, Injured Drakkari Refugee##27554+
.collect 5 Desperate Mojo##36743|q 12802
step
goto 45.0,28.4
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
.talk 26701
..turnin 12802
..accept 12068
step
'Hearth to Amberpine Lodge |goto Grizzly Hills,32.0,60.3,0.1 |use Hearthstone##6948 |noway |c
step
goto 31.8,60.2
.talk 26875
..turnin 12292
..accept 12293
step
goto 32.1,60
.talk 27277
..turnin 12215
..accept 12217
step
goto 34.8,55.6
.talk 27469
..turnin 12293
..accept 12294
step
goto 31.8,60.2
.talk 26875
..turnin 12294
..accept 12295
step
goto 32.4,59.9
.talk 27391
..accept 12222
..accept 12223
step
goto 33.6,79
.kill 12 Dragonflayer Huscarl##27260+ |q 12223/1
.kill Dragonflayer Flamebinder##27259+ |n
.get 3 Flame-Imbued Talisman|q 12222/1
step
goto 32.4,59.9
.talk 27391
..turnin 12222
..turnin 12223
..accept 12255
step
goto 26.6,77.9
.talk 27292
.' Unchain and control Flamebringer |invehicle
step
'Fly to [27.1,73] |goto 27.1,73
.' Use the abilities on your hotbar.
.kill Thane Torvald Eriksson##27377|q 12255/1
step
goto 32.4,59.9
.talk 27391
..turnin 12255
step
goto 34.4,58.3
.kill 5 Imperial Eagle##26369+|q 12217/1
step
goto 32.1,60
.talk 27277
..turnin 12217
step
goto 16.7,48.3
.talk 26604
..turnin 12029
step
goto 15.7,46.7
.talk 26519
..turnin 12483
..accept 12190
step
goto 26.4,35.7
.talk 26821
..turnin 12295
step
goto 26.5,35.8
.talk 27486
..accept 12299
step
goto 24.3,34.5
.kill 8 Conquest Hold Marauder##27424+ |q 12299/1
step
goto 26.5,35.8
.talk 27486
..turnin 12299
..accept 12300
step
goto 21.9,29.9
.from Sergeant Bonesnap##27493
.' Do the Test of Mettle |q 12300/1
step
goto 21.9,29.9
.talk 27497
..turnin 12300
..accept 12302
step
goto 26.5,31.8
.talk 27499
..turnin 12302
..accept 12308
step
'Follow the Freed Alliance Scout to a horse, click the horse to ride it. |modelnpc Freed Alliance Scout##27411+
.' As you ride, use the abilities on your hotbar to fight and slow down your pursuers. |modelnpc Silverbrook Worgen##27417+
.' Escape from Silverbrook |q 12308/1
step
goto 31.8,60.2
.talk 26875
..turnin 12308
..accept 12310
step
goto 37,66.5
.kill 7 Silverbrook Hunter##27546+ |q 12310/1
.get Mikhail's Journal |n
.' Click Mikhail's Journal in your bags |use Mikhail's Journal##36940
..accept 12105
step
goto 36.3,67.9
.kill Vladek##27547|q 12310/2
step
goto 31.8,60.2
.talk 26875
..turnin 12310
..turnin 12105
..accept 12109
step
goto 31.2,59.5
.talk 27295
..accept 12219
..accept 12220
step
goto 28.5,45.0|n
.' The path down to Vordrassil's Tears starts here |goto Grizzly Hills,28.5,45.0,0.5 |noway |c
step
'Go underground to 30.5,43.9 |goto 30.5,43.9
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Tears |q 12220/3
step
'Go outside the tunnel to 33.3,48.5 |goto 33.3,48.5 |n
.' The path down to Vordrassil's Limb starts here |goto Grizzly Hills,33.3,48.5,0.5 |noway |c
step
'Go underground to 32.2,45.8 |goto 32.2,45.8 |n
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Limb |q 12220/2
step
'Go outside the tunnel to 40.7,52 |goto 40.7,52 |n
.' The path down to Vordrassil's Heart starts here |goto Grizzly Hills,40.7,52.0,0.5 |noway |c
step
'Go underground to 41.2,54.7 |goto 41.2,54.7
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Heart |q 12220/1
step
'Go outside the tunnel to 40.4,50.6 |goto 40.4,50.6
.kill Entropic Ooze##26366+ |n
.get 6 Slime Sample|q 12219/1
step
'Hearth to Amberpine Lodge |goto Grizzly Hills,32.0,60.3,0.1 |use Hearthstone##6948 |noway |c
step
goto 31.2,59.5
.talk 27295
..turnin 12219
..turnin 12220
..accept 12246
..accept 12247
step
goto 66.9,62.4
.talk 27275
..'Listen to Kodian's Story |q 12247/2
step
goto 65.6,57.4
.from Redfang Hunter##26356, Redfang Elder##26436
.get 8 Crazed Furbolg Blood|q 12246/1
step
goto 48.1,58.9
.talk 27274
..'Listen to Orsonn's Story |q 12247/1
step
goto 49.2,34.1
.talk 26588
..accept 12027
.' Escort Emily and protect Mr. Floppy
.' Help Emily and Mr. Floppy return to the camp |q 12027/1
step
goto 59.1,26.5
.talk 26377
..accept 12414
step
goto 59.1,26.5
.talk 26371
..turnin 12027
step
goto 59.4,26
.talk 26212
..turnin 12109
..accept 12158
..accept 11998
step
goto 59.6,26.3
.talk 26375
.home Westfall Brigade Encampment
step
goto 55.1,23.4
.talk 26932
..turnin 12158
..accept 12159
step
goto 54.0,22.8
.kill Undead Miner##26891+ |n
.' Use your Miner's Lantern on their corpses |use Miner's Lantern##37932
.' Put 8 Miners at Rest- |q 12159/1
step
goto 55.1,23.4
.talk 26932
..turnin 12159
..accept 12160
step
goto 59.4,26
.talk 26212
..turnin 12160
step
goto 59.2,26.2
.talk 27582
..accept 12161
step
|fly Amberpine Lodge
step
goto 31.2,59.5
.talk 27295
..turnin 12246
..turnin 12247
..accept 12248
..accept 12250
step
goto 44,47.9
.talk 27581
..turnin 12161
..accept 12328
step
goto 46.8,35.7
.kill Fern Feeder Moth##27421+ |n
.get 4 Gossamer Dust|q 12328/1
step
goto 44,47.9
.talk 27581
..turnin 12328
..accept 12327
step
'Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you |use Gossamer Potion##37661
.' See the Vision from the Past |q 12327/1
step
goto Grizzly Hills 44,47.9
.talk 27581
..turnin 12327
..accept 12329
step
goto 50.5,46.0|n
.' The path down to Vordrassil's Sapling starts here |goto Grizzly Hills,50.5,46.0,0.5 |noway |c
step
'Follow the path down to 50.8,42.6 |goto 50.8,42.6
.' Use your Verdant Torch next to the tall tree |use Verdant Torch##37306 |tip It's a tall tree at the bottom of the spiral path.
.get Vordrassil's Ashes |q 12248/1
step
'Go outside to [51.5,47.1] |goto 51.5,47.1
.click Vordrassil's Seed##424+
.get 8 Vordrassil's Seed |q 12250/1
step
'Go outside to [57.5,41.3] |goto 57.5,41.3
.talk 26935
..turnin 12329
..accept 12134
..accept 12330
step
goto 60.4,40.2
.kill 12 Solstice Hunter##26389+ |q 12134/1
step
goto 62.3,42
.' Use your Tranquilizer Dart on Tatjana |use Tranquilizer Dart##37665 |tip She's sitting on a horse.  Make sure to target her, and NOT the horse, when using the Tranquilizer Dart.
.clicknpc Tatjana's Horse##27626w
.' Deliver Tatjana |q 12330/1
|modelnpc Tatjana##27627+
step
goto 57.5,41.3
.talk 26935
..turnin 12134
..turnin 12330
..accept 12411
step
goto 64.8,43.4
.talk 27646
..turnin 12411
step
goto 69.1,40.1
.talk 26484
..accept 12279
..buy 1 Howlin' Good Moonshine |q 11998/1
step
goto 61.6,32.8
.click Wild Carrot##4652
.collect 5 Wild Carrot##37707|q 12414
step
goto 60.3,25.4
.' Use your Stick on Highland Mustangs to ride them |use Stick##37708 |modelnpc Highland Mustang##26472+ |modelnpc Squire Percy##26377
.' Ride them back to Squire Percy at [59.1,26.6] |n
.' Use the Hand Over Reins ability on your hotbar to return the horses |petaction Hand Over Reins
.' Return 5 Highland Mustangs |q 12414/1
step
goto 59.1,26.5
.talk 26377
..turnin 12414
step
goto 59.8,27.5
.talk 26226
..turnin 11998
..accept 12002
step
goto 63.7,23.2
.talk 26335
..accept 11981
step
goto 64.3,19.8
.click Battered Journal##6891
..accept 11986
step
.click Missing Journal Page##7752
.collect 8 Missing Journal Page##35737 |n
.' Click the Incomplete Journal in your bags |use Incomplete Journal##35739
.get Brann Bronzebeard's Journal |q 11986/1
step
goto 63.1,24.1
.kill 10 Runic Battle Golem##26284+ |q 12002/1
step
.' The path up to Kurun starts here |goto Grizzly Hills,61.5,23.9,0.5
step
'Follow the road into the mountains around to [66,18] |goto 65.8,17.8
.talk 26260
..turnin 11981
..accept 11982
step
ding 75
step
goto 66.1,13.8
.click Boulder##7749+
.collect 5 Boulder##35734|q 11982
step
goto 66.9,14.9
.' Use your Boulders on Iron Rune Shapers below |use Boulder##35734
.' Disrupt 5 Iron Dwarf Operations |q 11982/1
step
goto 65.8,17.8
.talk 26260
..turnin 11982
..accept 12070
step
goto 68.3,10.1
.' Use your Shard of the Earth on Grizzly Hills Giants that are physically fighting another mob |use Shard of the Earth##36764
.' Rally 5 Grizzly Hills Giants |q 12070/1 |modelnpc Grizzly Hills Giant##26261+
.kill Iron Rune Avenger##26786 |q 12070/2 |m
step
goto 65.8,17.8
.talk 26260
..turnin 12070
..accept 11985
step
'Go down the hill and into the building to 70.2,13 |goto 70.2,13
.kill Iron Thane Argrum##26348 |q 11985/1
step
'Go out of the building and up the path to 65.8,17.8 |goto 65.8,17.8
.talk 26260
..turnin 11985
..accept 12081
step
goto 59.8,27.5
.talk 26226
..turnin 12002
..accept 12003
step
goto 59.8,27.5
.talk 26361
..turnin 11986
..accept 11988
step
goto 62.7,20.8
.' Investigate the North Building |q 12003/1 |tip Go to this spot inside this building to Investigate the North Building.
step
goto 63.5,28.2
.' Investigate the South Building |q 12003/3 |tip Go to this spot inside this building to Investigate the South Building.
step
goto 66.6,24.3
.' Investigate the East Building |q 12003/2 |tip Go to this spot inside this building to Investigate the East Building.
step
goto 65.1,19.3
.kill iron dwarves|n
.get 5 Runic Keystone Fragment |q 11988/1
' |from Rune Reaver##26268, Iron Rune-Shaper##26270
step
goto 59.8,27.5
.talk 26226
..turnin 12003
..accept 12010
step
goto 59.8,27.5
.talk 26361
..turnin 11988
..accept 11993
step
goto 67.5,15.3
.talk 26514
..turnin 12010
..accept 12014
step
goto 67.8,15.5
.kill Subterranean Threshers in the water|n
.get Portable Seismograph|q 12014/2
' |from Subterranean Thresher##26522+
step
goto 68.5,16.2
.click Third Rune Plate##3452
.' Decipher the Third Prophecy |q 11993/3
step
goto 69,14.4
.click First Rune Plate##3452
.' Decipher the First Prophecy |q 11993/1
step
goto 70.2,14.7
.click Second Rune Plate##3452
.' Decipher the Second Prophecy |q 11993/2
step
goto 70.6,13.4
.' Use your Portable Seismograph next to this bridge in this spot |use Portable Seismograph##35837
.click Portable Seismograph##2091
.get Thor Modan Stability Profile|q 12014/1
step
goto 59.8,27.5
.talk 26226
..turnin 12014
..accept 12128
step
goto 59.8,27.5
.talk 26361
..turnin 11993
step
goto 73.8,34
.talk 26884
..turnin 12190
..accept 12113
..accept 12114
step
goto 73.9,34.1
.talk 26886
..accept 12116
step
goto 72.7,37.6
.kill Longhoof Grazer##26418+ |n
.get 10 Shovelhorn Steak|q 12113/2
.kill Duskhowl Prowler##27408+ |n
.get 10 Fibrous Worg Meat|q 12113/1
step
goto 73.8,34
.talk 26884
..turnin 12113
step
goto 70.5,27.4
.kill 10 Drakkari Protector##26797+ |q 12114/1
.kill 10 Drakkari Oracle##26795+ |q 12114/2
.collect 5 Sacred Mojo##36758|q 12068
step
'Go inside the underground crypt to [70.8,21.8] |goto 70.8,21.8
.click Drakkari Canopic Jar##7792
.get 5 Drakkari Canopic Jar|q 12116/1
step
'Inside the crypt, go to [69.4,18.2] |goto 69.4,18.2
.click Drakkari Tablets##5
.get Drakkari Tablets|q 12068/1
step
'Inside the crypt, go to[69.5,17.5] |goto 69.5,17.5
.talk 26814
..accept 12082
.' Escort Harrison from the Drakil'jin Ruins |q 12082/1
step
goto 71.7,26.2
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
.talk 26787
..turnin 12068
step
goto 78.2,22.0
.' Use your Fishing Net on Schools of Northern Salmon |use Fishing Net##37542 |tip They look like schools of fish in the water around this area.
.get 6 Northern Salmon|q 12279/1
step
goto 79.8,33.6
.talk 26420
..turnin 12081
..accept 12093
step
goto 79.1,43.3
.kill 4 Iron Rune-Weaver##26820+ |n
.kill Overseer Brunon##26923 |q 12093/4
step
goto 75.3,36.7
.kill 4 Iron Rune-Weaver##26820+ |n
.kill Overseer Lochli##26922 |q 12093/3
step
goto 73.9,34.1
.talk 26886
..turnin 12116
..accept 12120
step
goto 73.8,34
.talk 26884
..turnin 12082
..turnin 12114
step
goto 72.1,33.9
.kill 4 Iron Rune-Weaver##26820+|n
.kill Overseer Korgan##26921 |q 12093/2
step
goto 67.7,29.6
.kill 4 Iron Rune-Weaver##26820+ |n
.kill Overseer Durval##26920 |q 12093/1
step
goto 71.6,28.1
.from Drak'aguul##26919
.get Drakil'jin Mallet |q 12120/1
step
goto 73.9,34.1
.talk 26886
..turnin 12120
..accept 12121
step
goto 79.8,33.6
.talk 26420
..turnin 12093
..accept 12094
step
goto 78.8,39.9
.' Use your Shard of Gavrock next to the Second Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the Second Ancient Stone |q 12094/2
step
goto 74.1,44.3
.' Use your Shard of Gavrock next to the Third Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the Third Ancient Stone |q 12094/3
step
goto 71.3,39.9
.' Use your Shard of Gavrock next to the First Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the First Ancient Stone |q 12094/1
step
goto 71.5,24.7
.' Use your Charged Drakil'jin Mallet next to a gong |use Charged Drakil'jin Mallet##36834 |tip They are 3 gongs sitting close together here.
.' Get killed by Warlord Jin'arrak |q 12121/1
.' STAY DEAD |havebuff On the Other Side |q 12121/1
step
'While dead, go inside the crypt to 69.4,19.5 |goto 69.4,19.5
.talk 26924
..turnin 12121
..accept 12137
step
goto 69.4,19.5
.click Gan'jo's Chest##5744
.get Snow of Eternal Slumber |q 12137/1
step
goto 69.4,19.5
.talk 26924
..'Tell him you are ready to return to the realm of the living |nobuff On the Other Side |c
step
goto 70,20.4
.' Use your Snow of Eternal Slumber on Ancient Drakkari mobs |use Snow of Eternal Slumber##36859
.' They run to nearby mummies on the ground, follow them
.click Drakkari Spirit Particles##
.get 5 Drakkari Spirit Particles|q 12137/2
step
'Go outside to 73.9,34.1 |goto 73.9,34.1
.talk 26886
..turnin 12137
..accept 12152
step
'Go into the crypt to 71.3,19.6 |goto 71.3,19.6
.click Sacred Drakkari Offering##381
.get Sacred Drakkari Offering|n
.' Use your Drakkari Spirit Dust in your bags |use Drakkari Spirit Dust##36873
.collect Infused Drakkari Offering##37063|q 12152
step
'Go outside to 71.4,24.4 |goto 71.4,24.4
.' Use your Infused Drakkari Offering next to a gong |use Infused Drakkari Offering##37063
.' Destroy Warlord Jin'arrak |q 12152/1
step
goto 73.9,34.1
.talk 26886
..turnin 12152
step
goto 79.8,33.6
.talk 26420
..turnin 12094
..accept 12099
step
goto 72.6,39.0
.' Use Gavrock's Runebreaker on Runed Giants |use Gavrock's Runebreaker##36796 |modelnpc Runed Giant##26417+
.' Free 4 Runed Giants |q 12099/1
.info This spell does not always work. If it fails, you can retry on the same giant while it's attacking you.
step
goto 79.8,33.6
.talk 26420
..turnin 12099
step
goto 69.1,40.1
.talk 26484
..turnin 12279
step
goto 77,48.4
.talk 26885
..accept 12180
step
goto 77.1,48.6
.talk 26883
..turnin 12128
..accept 12129
step
goto 76.5,57.5
.from Iron Rune Overseer##27177+, Runic War Golem##26347+, Runic Lightning Gunner##26414+
.collect 3 Dun Argol Cage Key##37013|q 12180
step
goto 76.5,55.4
.' Click the Dun Argol Cage |tip Inside this building, locked in a metal cage.
.' Rescue Prospector Gann |q 12180/1 |modelnpc Prospector Gann##27113
step
goto 76.3,58.5
.' Click the Dun Argol Cage |tip On the side of this building, locked in a metal cage.
.' Rescue Prospector Torgan |q 12180/2 |modelnpc Prospector Torgan##27114
step
goto 76,61
.' Click the Dun Argol Cage |tip On the side of this building, locked in a metal cage.
.' Rescue Prospector Varana |q 12180/3 |modelnpc Prospector Varana##27115
step
goto 76.6,55.1
.kill Iron Rune-Smith##26408+ |n
.collect Golem Blueprint Section 1##36849
.collect Golem Blueprint Section 2##36850
.collect Golem Blueprint Section 3##36851
|only if not completedq(12129)
step
.' Click the Golem Blueprint Section 1 in your bags |use Golem Blueprint Section 1##36849
.get War Golem Blueprint##36848|q 12129/1
step
goto 77.1,48.6
.talk 26883
..turnin 12129
..accept 12130
step
goto 77,48.4
.talk 26885
..turnin 12180
..accept 12183
step
goto 76.6,54.8
.from Iron Rune Overseer##27177
.get Overseer's Uniform |q 12183/1
.click War Golem Part##7796
.get 8 War Golem Part|q 12130/1
step
goto 77.1,48.6
.talk 26883
..turnin 12130
..accept 12131
step
goto 77,48.4
.talk 26885
..turnin 12183
..accept 12184
step
goto 76.1,56.4
.from Iron Rune Overseer##27177+, Iron Rune-Smith##26408+, Runic Lightning Gunner##26414+
.' Use Kilian's Camera on their corpses |use Kilian's Camera##37045
.' Capture 8 Iron Dwarf Images |q 12184/1
step
goto 76.8,59.4
.from Rune-Smith Kathorn##26410
.get Kathorn's Power Cell |q 12131/2
step
goto 74.9,56.9
.from Rune-Smith Durar##26409
.get Durar's Power Cell |q 12131/1
step
goto 77.1,48.6
.talk 26883
..turnin 12131
..accept 12138
step
goto 77,48.4
.talk 26885
..turnin 12184
..accept 12185
step
goto 77.4,52.5
.' Use your Golem Control Unit |use Golem Control Unit##36936
.kill Lightning Sentry##26407+ |n
.get 10 Charge Level |q 12138/1
step
goto 81.5,60.3
.' Use your Overseer's Disguise Kit |use Overseer Disguise Kit##37071
.click Loken's Pedastal##7812 |tip Go up the hill into this building at the end of the path.
.' Receive the Message from Loken |q 12185/1
step
goto 77.1,48.6
.talk 26883
..turnin 12138
..accept 12153
..accept 12154
step
goto 77,48.4
.talk 26885
..turnin 12185
step
'Go into this building and downstairs to 77,63 |goto 76.5,63.2
.' Use Raegar's Explosives next to the Dun Argol Power Core |use Raegar's Explosives##36935 |modelnpc Dun Argol Power Core##27075
.' Destroy the Dun Argol Power Crystal |q 12154/1
step
goto 76.2,63.2
.' Use your Golem Control Unit to ride in your War Golem |use Golem Control Unit##36865
.' Use your EMP skill to stun The Anvil and remove Iron Thane Furyhammer's Shield |petaction EMP
.kill Iron Thane Furyhammer##26405 |q 12153/1
step
'Click the Leave Vehicle button to stop controlling the golem |script VehicleExit() |outvehicle
step
goto 77.1,48.6
.talk 26883
..turnin 12153
..turnin 12154
step
'Hearth to Westfall Brigade Encampment |goto Grizzly Hills,59.5,26.3,0.5 |use Hearthstone##6948 |noway |c
step
|fly Amberpine Lodge
step
goto 31.2,59.5
.talk 27295
..turnin 12248
..turnin 12250
step
|fly Zim'Torga
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Zul'Drak (75-77)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\Sholazar Basin (77-78)
startlevel 75.75
dynamic on
step
goto Zul'Drak 32,74.4
.talk 29137
..turnin 12789
|only if havequest(12789)
step
goto 32,75.6
.talk 29733
..accept 12859
step
goto 32.2,75.7
.talk 29687
..accept 12902
step
goto 32.2,75.7
.talk 29690
..accept 12861
step
goto 34.9,83.9
.click Orders From Drakuru##8032
..turnin 12902
..accept 12883
step
goto 34.9,81
.from Drakuru Berserker##29656, Drakuru Prophet##29697, Drakuru Blood Drinker##29654
.get Drakuru "Lock Openers"|n
.' Use your Drakuru "Lock Openers" next to Captured Rageclaws |use Drakuru "Lock Opener"##41161
.' Free 8 Captured Rageclaws |q 12861/1 |modelnpc Captured Rageclaw##29686+
.' Use your Rageclaw Fire Extinguisher next to burning huts |use Rageclaw Fire Extinguisher##41131
.' Douse 15 Hut Fires |q 12859/1
step
goto 32.2,75.7
.talk 29687
..turnin 12883
..accept 12884
..accept 12894
step
goto 32.2,75.7
.talk 29690
..turnin 12861
step
goto 32,75.6
.talk 29733
..turnin 12859
step
goto 14.1,73.8
.talk 28518
..turnin 12884
..accept 12630
step
goto 15.5,69.8
.kill Withered Troll##28519+ |n
.' Use Stefan's Steel Toed Boot on Nass |use Stefan's Steel Toed Boot##38659
.' Collect 10 Hair Samples |q 12630/1
step
.from Withered Troll##28519+
.collect 1 Writhing Choker##38673|n
.use Writhing Choker##38673
..accept 12633 |or
.'- OR -
.collect 1 Unliving Choker##38660|n
.use Unliving Choker##38660
..accept 12631 |or
step
goto 14.1,73.8
.talk 28518
..turnin 12630
..turnin 12633 |only if havequest(12633)
..turnin 12631 |only if havequest(12631)
step
goto 14.1,73.8
.talk 28518
..accept 12638 |only if completedq(12633)
..accept 12637 |only if completedq(12631)
step
goto 14.3,74
.talk 28532
..accept 12795
.' Tell her Stefan said she would demonstrate the item's purpose
.' Expose the Choker's Purpose |q 12637/1
|only if havequest(12637)
step
goto 14.3,74
.talk 28532
..accept 12795
.' Tell her Stefan said she would demonstrate the item's purpose
.' Expose the Choker's Purpose |q 12638/1
|only if havequest(12638)
step
goto 14.1,73.8
.talk 28518
..turnin 12638 |only if havequest(12638)
..turnin 12637 |only if havequest(12637)
step
goto 14.1,73.8
.talk 28518
..accept 12643 |only if completedq(12638)
..accept 12629 |only if completedq(12637)
step
goto 19.9,73.5
.kill Putrid Abomination##28564+ |n
.get 5 Putrid Abomination Guts|q 12643/1 |or
.clicknpc Gooey Ghoul Drool##29856
.get 5 Gooey Ghoul Drool|q 12643/2
|only if havequest(12643)
step
goto 19.9,73.5
.kill Putrid Abomination##28564+ |n
.get 5 Putrid Abomination Guts|q 12629/1 |or
.clicknpc Gooey Ghoul Drool##29856
.get 5 Gooey Ghoul Drool|q 12629/2
|only if havequest(12629)
step
goto 14.1,73.8
.talk 28518
..turnin 12643 |only if havequest(12643)
..turnin 12629 |only if havequest(12629)
step
goto 14.1,73.8
.talk 28518
..accept 12648 |only if completedq(12629)
..accept 12649 |only if completedq(12643)
step
goto 19.9,75.5
.' Use the Ensorcelled Choker to wear a ghoul costume |use Ensorcelled Choker##38699
.talk 28589
..accept 12652
..buy 1 Bitter Plasma|q 12649/1
step
goto 20.5,74.8
.' Use your Bowels and Brains Bowel near Decaying Ghouls |use Bowels and Brains Bowl##38701
.' Feed 10 Decaying Ghouls |q 12652/1 |modelnpc Decaying Ghoul##28565
|tip Be careful of the Blightguards, they will attack you through your disguise. |modelnpc Blightguard##28603
step
goto 19.9,75.5
.talk 28589
..turnin 12652
step
goto 14.1,73.8
.talk 28518
..turnin 12649 |only if havequest(12649)
..turnin 12648 |only if havequest(12648)
..accept 12661
step
goto 25.3,64
.talk 29689
..turnin 12894
..accept 12903
step
goto 25.3,64
.talk 29688
..accept 12901
step
goto 17.6,57.6
.' Find Gerk |q 12903/2
.talk 29455
..accept 12904
step
goto 15.7,59.4
.' Find Burr |q 12903/3 |tip Laying on a metal table. |modelnpc Burr##29454
step
goto 19.5,57.7
.from Vargul Deathwaker##29449, Vargul Runelord##29450, Vargul Slayer##29451 |q 12904/1
.click Scourge Scrap Metal##8040
.get 10 Scourge Scrap Metal|q 12901/1
step
goto 17.6,57.6
.talk 29455
..turnin 12904
step
goto 19.7,56.4
.talk 29647
..accept 12912
step
goto 25.1,51.6
.' Find Crusader Dargath |q 12903/1 |modelnpc Crusader Dargath##29468
step
goto 28.4,44.9
.' Use your Ensorcelled Choker to become a ghoul |use Ensorcelled Choker##38699
.' Stand on this green circle
.'Get teleported up to Overlord Drakuru |goto Zul'Drak,28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12664 |only if not completedq(12238)
..accept 12663 |only if completedq(12238)
step
goto 29.9,47.8
.talk 28666
.' Go on the tour of Zul'Drak
.' Complete the tour of Zul'Drak |q 12664/1
|only if havequest(12664)
step
goto 29.9,47.8
.talk 28666
.' Go on the tour of Zul'Drak
.' Complete the tour of Zul'Drak |q 12663/1
|only if havequest(12663)
step
goto 27.1,46.2
.talk 28503
..turnin 12664
.' Complete Overlord Drakuru's task |q 12661/1 |c
|only if havequest(12664)
step
goto 27.1,46.2
.talk 28503
..turnin 12663
.' Complete Overlord Drakuru's task |q 12661/1 |c
|only if havequest(12663)
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.8 <5 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12661
..accept 12669
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12673
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.5 |noway |c
step
goto 27.2,45.1
.' Use your Scepter of Suggestion on Blight Geists |use Scepter of Suggestion##39157 |modelnpc Blight Geist##28750
.' Use the Harvest Blight Crystal ability near Crystallized Blight |petaction Harvest Blight Crystal |tip The Crystallized Blight look like orange crystals on the ground around this area.
.' Follow the Blight Geists back to the teleport pad
.' Collect 7 Blight Crystals |q 12673/1
step
goto 26.8,47
.' Use your Diluting Additive next to the big cauldron 5 times |use Diluting Additive##39154 |tip It's a big cauldron on the back of a cart.
.' Dilute the Cauldron 5 times |q 12669/2
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12673
.' Complete Drakuru's task |q 12669/1
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9 <5 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12669
..accept 12677
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12686
step
goto 27.1,43.9
.click Harvested Blight Crystal##285
.get 5 Harvested Blight Crystal|q 12677/2
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9 <5 |noway |c
step
goto 29.7,49.6
.' Use your Scepter of Empowerment on a Servant of Drakuru |use Scepter of Empowerment##39206 |modelnpc Servant of Drakuru##28802
.' Use the abilities on your Servant of Drakuru's pet bar to fight Darmuk at [30.4,51.5] |n
.kill Darmuk##28793+ |q 12686/1
step
ding 76
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12686
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9 <5 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12677
..accept 12676
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12690
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.1 |noway |c
step
goto 32.1,40.6
.' Use your Scepter of Command on a Bloated Abomination |use Scepter of Command##39238 |modelnpc Bloated Abomination##28843+
.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
.' Use the Burst at the Seams ability on your pet hotbar |petaction Burst at the Seams
.' Kill 60 Drakkari Skullcrushers |q 12690/1
.' Lure 3 Drakkari Chieftains |q 12690/2
step
goto 30.6,45.3
.' Use your Explosive Charges next to Scourgewagons |use Explosive Charges##39165 |tip They look like small catapult carts.
.' Destroy 5 Scourgewagons |q 12676/1
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12690
..accept 12710
.' Complete Drakuru's task |q 12676/2
step
goto 28.4,44.9
.' Stand on this blue circle on the small platform above the green circle
.' Teleport up to Drakuru's upper chamber |goto 27.4,42.5,0.5 |noway |c
step
goto 27.2,42.3
.click Musty Coffin##7225
.' Explore Drakuru's upper chamber |q 12710/1
step
goto 28.4,44.9|n
.' Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2,0.5 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12710
.' Learn Drakuru's secret |q 12676/3
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.5 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12676
step
goto 25.3,64
.talk 29688
..turnin 12901
..turnin 12912
..accept 12914
step
goto 25.3,64
.talk 29689
..turnin 12903
step
goto 23.9,62.4
.from Banshee Soulclaimer##29646
.get 6 Banshee Essence|q 12914/1
step
goto 15.9,71.5
.kill Icetouched Earthrager##29436+ |n
.get 6 Diatomaceous Earth|q 12914/2
step
goto 25.3,64
.talk 29688
..turnin 12914
..accept 12916
step
goto 19.7,56.4
.' Click the Scourge Enclosure |tip It is Gymer's huge cage
.' Blow Up the Scourge Enclosure |q 12916/1
.talk 29647
..turnin 12916
step
goto 39.4,67
.talk 28059
..turnin 12795
..accept 12503
..accept 12740
step
goto 40.8,66.3
.talk 28791
.home The Argent Stand
step
goto 40.5,65.6
.talk 28062
..accept 12565
step
goto 38.4,67.1
.'Kill 10 Scourge |q 12503/1
.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders |use Crusader Parachute##39615
.' It won't work on all of them
.' Equip 10 Argent forces with a parachute |q 12740/1
.kill Scourge mobs|n
..collect 10 Drakkari Offerings##38551 |q 12565
' |from Carrion Eater##28022+, Rampaging Geist##28026+, Rotting Abomination##28023+
|modelnpc Argent Crusader##28029+
|modelnpc Argent Shieldman##28028+
step
goto 36.7,72.6
.click Zim'Abwa##7936
..turnin 12565
step
goto 39.4,67
.talk 28059
..turnin 12503
..turnin 12740
step
goto 40.3,66.6
.talk 28039
..accept 12505
..accept 12596
step
goto 40.5,65.6
.talk 28062
..accept 12506
step
goto 35.6,52.2
.talk 28045
..accept 12799
step
goto 35,52.1
.talk 28205
..accept 12557
step
'Go into the 2 rooms next to you:
.' They are items on shelves that you can click
.click Muddy Mire Maggot##6484 |q 12557/1
.click Withered Batwing##7924 |q 12557/2
.click Chilled Serpent Mucus##228 |q 12557/4
.click Amberseed##7918 |q 12557/3
step
goto 35,52.1
.talk 28205
..turnin 12557
.' Complete Alchemist Finklestein's task |q 12596/4
step
goto 36.6,60.5
.kill Lost Drakkari Spirit##29129+ |n
.get 5 Ancient Ectoplasm|q 12799/1
step
goto 35.6,52.2
.talk 28045
..turnin 12799
..accept 12609
..accept 12610
step
goto 36.1,51.1
.kill Trapdoor Crawler##28221+ |n
.get 7 Fresh Spider Ichor|q 12609/1
.kill Zul'Drak Bat##28233+ |n
.get 7 Unblemished Bat Wing|q 12610/1
step
goto 35.6,52.2
.talk 28045
..turnin 12609
..turnin 12610
step
goto 40.4,48.2
.talk 28056
..turnin 12505
..accept 12504
step
goto 40.4,48.2
.talk 28099
..accept 12508
step
goto 40.4,47
.talk 28041
.' Tell 10 Argent Soldiers told to report back to the sergeant |q 12504/1
.kill Sseratus mobs |n
.kill 10 Followers of Sseratus|q 12508/1
.get a Strange Mojo|n
.' Click the Strange Mojo in your bags |use Strange Mojo##38321
..accept 12507
' |from Champion of Sseratus##, Priest of Sseratus##, Drakkari Snake Handler##28034+
step
'Go inside the building to 40,39 |goto 40,39
.' Investigate the Main building at the Altar of Sseratus |q 12506/1
step
goto 40.4,48.2
.talk 28056
..turnin 12504
step
goto 40.4,48.2
.talk 28099
..turnin 12508
step
goto 40.5,65.6
.talk 28062
..turnin 12506
..turnin 12507
..accept 12510
step
goto 40.2,68.9
.talk 28309
..accept 12562
step
goto 40.2,73.6
.kill 10 Drakkari Water Binder##28303+ |q 12562/1
.kill Crazed Water Spirit##16570+ |n
.collect 3 Water Elemental Link##38323|n
.' Use the Water Elemental Links to create Tethers to the Plane of Water |use Water Elemental Link##38323
.' Use the Tethers to the Plane of Water |use Tether to the Plane of Water##38324
.kill Watery Lords that spawn|n
.get 3 Precious Elemental Fluids|q 12510/1
' |from Watery Lord##28118+
step
goto 40.2,68.9
.talk 28309
..turnin 12562
step
goto 40.5,65.6
.talk 28062
..turnin 12510
..accept 12514
step
goto 41.3,65.1
.talk 28204
..accept 12527
step
goto 41.4,57.4
.clicknpc Zul'Drak Rat##28202+
.collect 25 Zul'Drak Rat##38380 |n
.' Use the Zul'Drak Rats on Lurking Basilisks |use Zul'Drak Rat##38380 |modelnpc Lurking Basilisk##28145+
.' Click Gorged Lurking Basilisks
.get 5 Basilisk Crystals|q 12527/1
.click Muddlecap Fungus##7916+
.get 10 Muddlecap Fungus|q 12514/1
step
goto 40.5,65.6
.talk 28062
..turnin 12514
..accept 12516
step
goto 35,52.1
.talk 28205
..turnin 12527
step
goto 40.2,42.6
.' Use your Modified Mojo on the Prophet of Sseratus |use Modified Mojo##38332
.kill 1 Muddled Prophet of Sseratus##28151+ |q 12516/1
step
'Hearth to The Argent Stand |goto Zul'Drak,40.8,66.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.5,65.6
.talk 28062
..turnin 12516
..accept 12623
step
goto 48.2,63.9
.talk 28043
..accept 12599
step
goto 46.9,61.4
.click Dead Thornwood##7938
.get 20 Dead Thornwood|q 12599/1
step
goto 48.2,63.9
.talk 28043
..turnin 12599
.' Complete Captain Grondel's Task |q 12596/3
step
goto 48.8,78.9
.talk 28042
..accept 12597
step
goto 44.9,79.5
.click Mature Water-Poppy##7935
.get 5 Mature Water-Poppy |q 12597/1
step
goto 48.8,78.9
.talk 28042
..turnin 12597
.' Complete Captain Brandon's Task |q 12596/1
step
goto 58.1,72.4
.talk 28044
..accept 12598
step
goto 58.7,72.5
.talk 28125
..accept 12512
step
goto 53.6,75
.' Use your Crusader's Bandage on Crusader Lamoof |use Crusader's Bandage##38330 |modelnpc Crusader Lamoof##28141
.' Escort Crusader Lamoof back to Dr. Rogers at [58.1,72.4] |n |tip He won't be able to keep up with your mount so don't use one.
.' Save Crusader Lamoof |q 12512/2
step
goto 49.4,74.7
.' Use your Crusader's Bandage on Crusader Josephine |use Crusader's Bandage##38330 |modelnpc Crusader Josephine##28143
.' Escort Crusader Josephine back to Dr. Rogers at [58.1,72.4] |n |tip She won't be able to keep up with your mount so don't use one.
.' Save Crusader Josephine |q 12512/3
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574 |tip They look like dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12598/1
step
goto 50.7,69.9
.' Use your Crusader's Bandage on Crusader Jonathan |use Crusader's Bandage##38330 |modelnpc Crusader Jonathan##28133
.' Escort Crusader Jonathan back to Dr. Rogers at [58.1,72.4] |n |tip He won't be able to keep up with your mount so don't use one.
.' Save Crusader Jonathan |q 12512/1
step
goto 58.1,72.4
.talk 28044
..turnin 12598
..accept 12606
.' Complete Captain Rupert's Task |q 12596/2
step
goto 58.7,72.5
.talk 28125
..turnin 12512
step
goto 58.1,72
.talk 28283
..accept 12552
step
goto 58.3,72
.talk 28284
..accept 12553
step
goto 57.6,75.2
.kill 8 Hath'ar Necromagus##28257+ |q 12552/1
.kill Hath'ar Skimmer##28258+ |n
.get 5 Intact Skimmer Spinneret|q 12553/1
.' You can find more Necromagi and Skimmers at [58.6,82.9]
step
goto 58.1,72
.talk 28283
..turnin 12552
step
goto 58.3,72
.talk 28284
..turnin 12553
..accept 12583
step
goto 58.1,72.4
.talk 28044
..accept 12584
step
goto 56.7,69.7
.from Nerubian Cocoon##28413+
.' Free 3 Captive Footmen |q 12606/1
step
goto 48.8,75.6
.click Crashed Plague Sprayer##7937
.get Plague Sprayer Parts|q 12583/1
step
goto 58.1,72.4
.talk 28044
..turnin 12606
step
goto 58.3,72
.talk 28284
..turnin 12583
..accept 12555
step
goto 58.3,74.3
.' Use your Tangled Skein Thrower on Plague Sprayers |use Tangled Skein Thrower##38515 |modelnpc Plague Sprayer##28274+
.' Web and destroy 5 Plague Sprayers |q 12555/1
step
goto 61,78.6
.click Chunk of Saronite##7836
.get 10 Chunks of Saronite |q 12584/1
step
goto 58.3,72
.talk 28284
..turnin 12555
step
'Make sure you have 10 Drakkari Offerings in your bags |collect 10 Drakkari Offerings##38551 |q 12565 |future
.' If not, grind around this area until you do.
step
'Hearth to The Argent Stand |goto Zul'Drak,40.8,66.3,0.5 |use Hearthstone##6948 |noway |c
step
goto Zul'Drak,40.8,66.6
.talk 28244
..turnin 12584
step
goto 40.3,66.6
.talk 28039
..turnin 12596
step
goto 59.5,58.1
.talk 28479
..turnin 12623
..accept 12627
..accept 12615
step
goto 59.4,57.2
.click Zim'Torga##7958
..turnin 12615
step
goto 59.3,57.3
.talk 29583
.home Zim'Torga
step
goto 59.2,56.2
.talk 28484
..accept 12622
step
goto 57.6,61.7
.click Purple Cauldron##7411
.' Disturb the Purple Cauldron |q 12627/3
step
goto 55.7,64.3
.click Green Cauldron##7410
.' Disturb the Green Cauldron |q 12627/2
step
goto 57.2,65.3
.click Blue Cauldron##7407
.' Disturb the Blue Cauldron |q 12627/1
step
goto 58.8,62.7
.click Red Cauldron##7408
.' Disturb the Red Cauldron |q 12627/4
step
.from Jin'Alai Warrior##28388+, Jin'Alai Medicine Man##28504+
.' Kill Chulo the Mad, Gawanil, and Kutube'sa when they spawn.
.click Treasure of Kutube'sa##2450
.get 1 Treasure of Kutube'sa |q 12622/1
.click Treasure of Gawanil##2450
.get 1 Treasure of Gawanil |q 12622/2
.click Treasure of Chulo the Mad##2450
.get 1 Treasure of Chulo the Mad |q 12622/3
|modelnpc Chulo the Mad##28496
|modelnpc Gawanil##28495
|modelnpc Kutube'sa##28494
step
goto 59.5,58.1
.talk 28479
..turnin 12627
..accept 12628
step
goto 60,57.9
.talk 28527
..accept 12635
step
goto 59.2,56.2
.talk 28484
..turnin 12622
..accept 12640
step
goto 59.4,56.4
.talk 28480
..accept 12639
step
goto 63.8,70.5
.talk 28401
..turnin 12628
..accept 12632
step
goto 62.9,70.6
.click Har'koan Relic##7356
.get 10 Har'koan Relic |q 12635/1
 .from Cursed Offspring of Har'koa##28404+
.' Use your Whisker of Har'koa on their corpses |use Whisker of Har'koa##38676
.' Resurrect 7 Cursed Offsprings of Har'koa |q 12632/1
step
goto 63.8,70.5
.talk 28401
..turnin 12632
..accept 12642
step
goto 60,57.9
.talk 28527
..turnin 12635
..accept 12650
..accept 13549
step
goto 59.5,58.1
.talk 28479
..accept 12655
step
goto 56.4,52.8
.from Frozen Earth##28411+
.get 7 Essence of the Frozen Earth |q 12639/1
.from Elemental Rift##28452+
.' Seal 7 Elemental Rifts |q 12640/1
.collect 10 Drakkari Offerings##38551|q 12655
step
goto 54,49.1
.from Priests of Rhunok##28417+
.get 7 Rhunokian Artifact |q 12650/1
step
goto 53.4,39.2
.talk 28561
..turnin 12642
..accept 12646
step
goto 54,47.3
.from Prophet of Rhunok##28442
.get Arctic Bear God Mojo|q 12646/1
step
goto 53.4,39.2
.talk 28561
..turnin 12646
..accept 12647
step
goto 53.4,35.9
.from Rhunok's Tormentor##28575
.collect 1 Tormentor's Incense##38696 |q 12647
step
goto 53.5,34.5
.' Use your Tormentor's Incense next to Rhunok's body |use Tormentor's Incense##38696
.kill 1 Rhunok##28416 |q 12647/1
step
goto 53.4,39.2
.talk 28561
..turnin 12647
..accept 12653
step
goto 59.3,44.5
.click Zim'Rhuk##7958
..turnin 12655
step
goto 59.2,56.2
.talk 28484
..turnin 12640
..accept 12659
step
goto 59.4,56.4
.talk 28480
..turnin 12639
..accept 12662
step
goto 60,57.9
.talk 28527
..turnin 12650
step
goto 63.8,70.5
.talk 28401
..turnin 12653
..accept 12665
step
goto 63.8,70.5
.talk 28401
.' Ask to call one of her children to carry you into the Altar of Quetz'lun
.' Reveal Quetz'lun's fate |q 12665/1
step
'When you return to [63.8,70.5] |goto 63.8,70.5
.talk 28401
..turnin 12665
..accept 12666
step
goto 64.1,69.9
.from Har'koan Subduer##28403+, Claw of Har'koa##28402+
.get 8 Sacred Adornment|q 12666/1
step
ding 77
step
goto 63.8,70.5
.talk 28401
..turnin 12666
..accept 12667
step
goto 74.3,66.7
.' Use To'kini's Blowgun on Frost Leopards and Icepaw Bears around this area |use To'kini's Blowgun##44890
.' Click the mobs when they get knocked out and lift their tail to check if they are male or female
.' Recover 3 Female Frost Leopards |q 13549/1
.' Recover 3 Female Icepaw Bears |q 13549/2
|modelnpc Frost Leopard##29327
|modelnpc Icepaw Bear##29319
step
goto 75.4,58.6
.talk 28030
..turnin 12667
..accept 12672
step
goto 74.6,59.8
.click Underworld Power Fragment##6573
.get 10 Underworld Power Fragment|q 12672/1
step
goto 75.4,58.6
.talk 28030
..turnin 12672
..accept 12668
step
'They look like altars all around this whole area.
.kill Quetz'lun Worshippers and Serpent-Touched Berserkers next to the Soul Fonts |n
.'Kill 12 Trolls near a Soul Font |q 12668/1
' |from Quetz'lun Worshipper##28747, Serpent-Touched Berserker##28748
step
goto 75.4,58.6
.talk 28030
..turnin 12668
..accept 12674
step
goto 74.5,57.4
.' Use Quetz'lun's Hexxing Stick on High Priest Mu'funu |use Quetz'lun's Hexxing Stick##39158
.from High Priest Mu'funu##28752
.' Hex High Priest Mu'funu at death |q 12674/1
step
goto 73.5,60.8
.' Use Quetz'lun's Hexxing Stick on High Priest Tua-Tua |use Quetz'lun's Hexxing Stick##39158
.from High Priest Tua-Tua##28754
.' Hex High Priest Tua-Tua at death |q 12674/2
step
goto 76,54.9
.' Use Quetz'lun's Hexxing Stick on High Priest Hawinni |use Quetz'lun's Hexxing Stick##39158
.from High Priest Hawinni##28756
.' Hex High Priest Hawinni at death |q 12674/3
step
goto 75.4,58.6
.talk 28030
..turnin 12674
..accept 12675
step
goto 63.8,70.5
.talk 28401
..turnin 12675
..accept 12684
step
goto 64.2,52.6
.click Heb'Jin's Drum##7535
.' Use your Bat Net on Heb'Jin's Bat to pin it to the ground |use Bat Net##39041
.kill 1 Heb'Jin##28636 |q 12662/1
step
goto 63.6,54.2
.from Heb'Drakkar Headhunter##28600+, Heb'Drakkar Striker##28465+
.' Use Ahunae's Knife on their corpses to scalp them |use Ahunae's Knife##38731
.' Scalp 10 Heb'Drakkar trolls |q 12659/1
step
goto 70.5,50.4
.from Blood of Mam'toth##28779+
.get 7 Blood of Mam'toth |q 12684/1
step
'Hearth to Zim'Torga |goto Zul'Drak,59.3,57.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.4,56.4
.talk 28480
..turnin 12662
step
goto 59.2,56.2
.talk 28484
..turnin 12659
step
goto 60,57.9
.talk 28527
..turnin 13549
step
goto 63.8,70.5
.talk 28401
..turnin 12684
..accept 12685
step
goto 75.2,58.6
.' Use Quetz'lun's Ritual next to Quetz'lun's body |use Quetz'lun's Ritual##39187
.kill 1 Drained Prophet of Quetz'lun##28795 |q 12685/1
step
goto 59.5,58.1
.talk 28479
..turnin 12685
step
goto 60,57.9
.talk 28527
..accept 12709
step
goto 60.3,57.8
.talk 28401
..accept 12712
step
goto 59.4,56.4
.talk 28480
..accept 12708
step
goto 59.2,56.2
.talk 28484
..accept 12707
step
goto 69.5,41.1
.' Use your Medallion of Mam'toth on Enraged Mammoths to ride them |use Medallion of Mam'toth##39268 |modelnpc Enraged Mammoth##28851+
.' Ride the Mammoth |invehicle
.' Use the abilities on your mammoth hotbar
.' Trample 12 Mam'toth Disciples to death |q 12707/1
step
goto 68.2,35.3
.from Drek'Maz##28918
.collect 1 Drek'Maz's Tiki##39315 |q 12712
step
goto 67.9,32.8
.from Yara##28917|n
.collect 1 Yara's Sword##39313 |q 12712
step
goto 63.8,37.2
.from Tiri##28916
.collect 1 Tiri's Magical Incantation##39316 |q 12712
step
'Click Tiri's Magical Incantation in your bags |use Tiri's Magical Incantation##39316
.collect 1 Tiki Dervish Ceremony##39314|q 12712
step
goto 69.2,35.9
.' Kill 12 Enchanted Tiki Warriors |q 12708/1
.click Zol'Maz Stronghold Cache##2450
.get 12 Zol'Maz Stronghold Cache |q 12709/1
step
goto 66.2,33.4
.' Use your Tiki Dervish Ceremony |use Tiki Dervish Ceremony##39314
.from Warlord Zol'Maz##28902
.get Key of Warlord Zol'Maz |q 12712/1
step
goto 60.3,57.8
.talk 28401
..turnin 12712
..accept 12721
step
goto 60,57.9
.talk 28527
..turnin 12709
step
goto 59.4,56.4
.talk 28480
..turnin 12708
step
goto 59.2,56.2
.talk 28484
..turnin 12707
step
|fly Gundrak
step
goto 78.1,24.2
.' Click the 4 Akali Chain Anchors |model Akali Chain Anchor##7936
.' Unfetter Akali from his chains |q 12721/1
step
|fly Zim'Torga
step
goto 59.5,58.1
.talk 28479
..turnin 12721
step
|fly Dalaran
step
goto Dalaran 68.6,42
.talk 28160
..accept 12521
step
.talk 28160
.' Tell him you are ready to fly to Sholazar Basin
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Sholazar Basin (77-78)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)
startlevel 77.35
dynamic on
step
goto Sholazar Basin,39.7,58.7
.talk 27987
..turnin 12521
step
goto 27.1,59.9
.talk 28032
..accept 12524
step
.home Nesingwary Base Camp
step
goto 26.9,58.9
.talk 28497
..accept 12624
step
goto 25.3,58.5
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine|q 12522/1
step
goto 39.7,58.7
..accept 12489
only if completedq(12521)
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |goal Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 37.4,46.1
.'Kill 15 Venture Company member |q 12524/1
.kill Venture Company mobs |n
.get Golden Engagement Ring |q 12624/1
' |from Venture Co. Excavator##28123+, Venture Co. Ruffian##28124+
step
goto 27.2,59.9
.talk 28032
..turnin 12524
..accept 12525
step
goto 26.9,58.9
.talk 28497
..turnin 12624
step
goto 27.1,58.6
.talk 27986
..turnin 12489
..turnin 12688
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts|q 12523/1
step
goto 35.8,50.3
.kill 1 Meatpie##28188 |q 12525/2 |tip Meatpie is a blue ogre that walks up and down this platform, and around this area.
.kill 1 Foreman Swindlegrin##28186 |q 12525/1 |tip Foreman Swindlegrin is on a machine shredder walking around on top of this platform.
step
goto 27.2,59.9
.talk 28032
..turnin 12525
step
goto 25.4,58.5
.talk 28033
..turnin 12523
step
goto 25.4,58.5
.talk 28266
..accept 12696
step
goto 25.3,58.5
.talk 28037
.fpath Nesingwary Base Camp
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |goal Shot apple on Lucky Wilhelm's Head |q 12589/1
.' If you walk right up to him at these coordinates 27.0,60.2 you should be able to do this in one shot.
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber##28001+ |q 12549/1
.kill 15 Shardhorn Rhino##28009+ |q 12520/1
.kill Dreadsabers and Shardhorn Rhinos|n
.'Kill 60 Game Animals |goal 60 Game Animals Killed |q 12592/1
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 26.7,59.5
.talk 28046
..accept 12804
step
goto 26.8,60.1
.talk 29157
..accept 12634
step
goto 27.1,59.9
.talk 28328
..turnin 12592
step
goto 27.2,59.9
.talk 28032
..accept 12551
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29.5,66.4
.kill Longneck Grazer##28129+ |n
.get 5 Longneck Grazer Steak|q 12804/1
step
goto 29,62.5
.kill 15 Mangal Crocolisk##28002+ |q 12551/1
step
goto 36.3,65.8
.kill Emperor Cobra##28011+ |n
.get 5 Intact Cobra Fang|q 12543/1
step
goto 37.6,61.8
.' Click the Sturdy Vines |tip They look like brown vines that hang from trees around this area.  Sometimes a Dwarf will fall out and give you fruit you need.
.' Click the fruit that falls to the ground or talk to the dwarf that falls
.get Orange|q 12634/1
.get 2 Banana Bunch|q 12634/2
.get Papaya|q 12634/3
step
goto 50,61.5
.talk 28746
..turnin 12696
..accept 12699
..accept 12803
step
goto 50.5,62.1
.talk 28568
..accept 12654
step
goto 48.6,64
.' Click the Raised Mud underwater |tip They look like piles of dirt underwater in this lake.
.get Vic's Keys |q 12699/1
step
goto 50,61.5
.talk 28746
..turnin 12699
..accept 12671
step
goto 50,61.5
'You go flying in a plane
.' Use the abilities on your hotbar to fight the bats
.' The engine blows up and you have to fly back to Pilot Vic at [50.1,61.4] |n
.' Land the plane inside the blue crystal circle
.' Use the Land Flying Machine ability on your hotbar to land the plane |petaction Land Flying Machine
.' Complete the Reconnaissance Flight |goal Reconnaissance Flight |q 12671/1
step
goto 50,61.5
.talk 28746
..turnin 12671
step
goto 39.9,43.7
.' Click the Dreadsaber Tracks |tip They look like brown paw prints on the ground around this area.
.' Identify 3 Shango Tracks |goal 3 Shango Track identified |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 26.7,59.5
.talk 28046
..turnin 12804
step
goto 26.8,60.1
.talk 29157
..turnin 12634
..accept 12644
step
goto 26.7,60
.talk 28566
..'Tell him you are ready to start the distillation process
.' Click the items on the ground or on the machine that he yells at you during the process, it's random
.' Click the barrel on the ground when the process is done
.get Thunderbrew's Jungle Punch |q 12644/1
step
goto 26.8,60.1
.talk 29157
..turnin 12644
..accept 12645
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 27.4,59.4
.' Use your Jungle Punch Sample on Hadrius Harlowe |use Jungle Punch Sample##38697 |tip Standing next to a tiki torch.
.' Complete Hadrius' taste test |goal Hadrius' taste test |q 12645/2
step
goto 27.1,58.6
.' Use your Jungle Punch Sample on Hemet Nesingwary |use Jungle Punch Sample##38697 |tip Standing in front of a tent.
.' Complete Hemet's taste test |goal Hemet's taste test |q 12645/1
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |goal Location of Farunn revealed |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.' Click Sandferns |tip They look like ferns on the beach.
.get 5 Sandfern|q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 50.5,62.1
.' Use your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697 |tip Standing in front of a tent.
.' Complete Tamara's taste test |goal Tamara's taste test |q 12645/3
step
'Fly to Nesingwary Base Camp |goto Sholazar Basin,25.4,58.2,0.5 |noway |c
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 26.8,60.1
.talk 29157
..turnin 12645
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.kill Bushwhacker that spawns|n
.get Bushwhacker's Jaw |q 12569/1
' |from Bushwhacker##28317
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528 |tip This quest is only available immediately after killing Pitch in the previous guide step.
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530 |tip You must have the quest "The Ape Hunter's Slave" active in your quest log in order to talk to Goregek the Gorilla Hunter and accept this quest.
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager##28098+ |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger##28096+ |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch##28213 |q 12530/1
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.4,79.1 |c |q 12534
.' The path down to The Sapphire Queen starts here
step
'Follow the path down to 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen|q 12534/1
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp##28086+ |q 12533/1
.kill 9 Sapphire Hive Drone##28085+ |q 12533/2
step
'Go outside to 55,69.1 |goto 55,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Use your chicken net to stop the chickens from running |use Chicken Net##38689
.' Click the Chicken Escapees
.get 12 Captured Chicken|q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
ding 78
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster|q 12535/1
step
goto 49.8,85
.' He travels up and down the river bank, so you may need to search for him
.from Serfex the Reaver##28083
.get Claw of Serfex|q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |goal Travel to Mistwhisper Refuge. |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |goal Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.kill 12 Mistwhisper Gorloc |q 12538/1
' |from Mistwhisper Oracle##28110
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.kill the crocodile that spawns|n  //Not sure what this mob is called.
.' Locate the Injured Rainspeaker Oracle |goal Locate Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |goal Escort the Injured Rainspeaker Oracle to Rainspaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip##28358 |q 12571/2
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12572/1
.kill 10 Emperor Cobra##28011 |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |goal Extend Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 42.1,28.7
.talk 28771
..accept 12683
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer##28080+ |q 12576/1
.kill 6 Frenzyheart Scavenger##28081+ |q 12576/2
step
goto 41.3,19.8
.kill Warlord Tartek##28105|q 12575/1
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure|q 12575/2
step
goto 39.7,38
.from Bittertide Hydra##28003
.' They will spit Hydra Sputum on you
.' Use your Sample Container in your bags when you have the Hydra Sputum debuff |use Sample Container##39164
.' Collect 5 Sputum Samples |goal 5 Sputum Samples Collected |q 12683/1
.kill 5 Bittertide Hydra##28003+ |q 12683/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 42.1,28.7
.talk 28771
..turnin 12683
step
'Hearth to Nesingwary Base Camp |goto Sholazar Basin,26.8,59.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake##28378+ |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs |tip The Primordial Drake Eggs look like white eggs next to trees around this area.
.' Click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling|q 12605/1
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
step
goto 42.1,28.7
.talk 28771
..accept 12681
step
goto 42.1,28.9
.talk 28374
..accept 12607
..accept 12658
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar |petaction Hand Over Mammoth
.' Deliver the Shattertusk Mammoth |goal Shattertusk Mammoth Delivered |q 12607/1
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto 54.5,27.9
.kill Goretalon Rocs##28004+ |n
.get 5 Twisted Roc Talon|q 12681/1
.' Click the Roc Eggs |tip The Roc Eggs look like white eggs in nests on the ground around this area.
.get 7 Roc Egg|q 12658/1
step
goto 42.1,28.7
.talk 28771
..turnin 12681
step
goto 42.1,28.9
.talk 28374
..turnin 12658
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 64.5,48.7
.talk 27801
..turnin 12803
..accept 12561
step
goto 67.3,51.4
.kill 6 Blighted Corpse##28101+ |q 12561/1
.kill 10 Bonescythe Ravager##28108+ |q 12561/2
step
goto 64.5,48.7
.talk 27801
..turnin 12561
..accept 12611
step
goto 66.5,44.2
.' Fight Thalgran Blightbringer |tip He's a tall undead standing on this small hill.
.' Use Freya's Ward in your bags to reflect Thalgran Blightbringer's Deathbolts back at him |use Freya's Ward##38657 |tip Deathbolts are a purple shadow spell when he's casting it.
.kill 1 Thalgran Blightbringer##28443 |q 12611/1
step
goto 64.5,48.7
.talk 27801
..turnin 12611
..accept 12612
..accept 12805
step
goto 65.1,60.3
.' Click the Cultist Corpse |tip On the ground at the very top of the pillar, next to a huge red crystal.
..turnin 12612
..accept 12608
step
goto 69.7,57.9
.kill Lifeblood Elemental##29124+ |n
.' Use your Lifeblood Gem on their corpses |use Lifeblood Gem##40397
.' Recover 8 Lifeblood Energy |goal 8 Lifeblood Energy Recovered |q 12805/1
step
goto 75.3,54.1
.' Travel to Mosswalker Village |goal Travel to Mosswalker Village. |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |goal 6 Mosswalker Victims Rescued |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard|q 12579/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
step
goto 64.5,48.7
.talk 27801
..turnin 12608
..turnin 12805
..accept 12617
..accept 12660
step
goto 57.5,41.1
.kill 8 Cultist Infiltrator##28373+ |q 12617/1
.' Click the Unstable Explosives |tip The Unstable Explosives look like big metal spiked balls on the ground around this area.
.' Destroy 4 Unstable Explosives |goal 4 Unstable Explosives destroyed |q 12660/1
step
goto 64.5,48.7
.talk 27801
..turnin 12617
..turnin 12660
..accept 12620
step
goto 50.1,37.3
.' Fly to the very top of this tall pillar
.' Stand under the big floating structure
.' Use Freya's Horn |use Freya's Horn##38684
.' Release The Lifewarden's Wrath |goal The Lifewarden's Wrath |q 12620/1
step
goto 64.5,48.7
.talk 27801
..turnin 12620
..accept 12621
step
goto 64.5,48.7
.talk 27801
.' Ask her how you can help
.get Freya's Pact |q 12621/1
step
goto 64.5,48.7
.talk 27801
..turnin 12621
..accept 12559
step
'Hearth to Nesingwary Base Camp |goto Sholazar Basin,26.8,59.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.4,39.1|n
.' The path to Activation Switch Gamma starts here |goto 28.4,39.1,0.5 |noway |c |tip It's a big balcony you'll have to fly to.
step
goto 26.2,35.5
.' Click the Activations Switch Gamma |goal Activation Switch Gamma |q 12559/1 |tip It looks like a rectangle upright control panel in the middle between 3 huge windows.
step
goto 64.5,48.7
.talk 27801
..turnin 12559
..accept 12613
step
goto 80.4,55.8
.' Click the Timeworn Coffer |tip It's a big stone box sitting on the big balcony.
..accept 12691
step
goto 89.1,52.9
.' Click the Activation Switch Theta |goal Activation Switch Theta |q 12613/1 |tip At the very end of the hallway, it's a rectangle upright control panel.
step
goto 80.3,54.9
.kill Sholazar Guardian##28069+ |n
.get Huge Stone Key|q 12691/1
step
goto 80.4,55.8
.' Click the Timeworn Coffer |tip It's a big stone box sitting on the big balcony.
..turnin 12691
step
goto 64.5,48.7
.talk 27801
..turnin 12613
..accept 12548
step
goto 40.3,82.9|n
.' Stand inside the light to go through the Waygate |goto Un'Goro Crater |noway |c
step
goto Un'Goro Crater,47.4,9.2
.talk 28092
..turnin 12548
..accept 12547
step
'Go up the steps and into the tunnel to 48.2,2.5 |goto 48.2,2.5
.from High Cultist Herenn##28601
.get Omega Rune|q 12547/1
step
goto 47.4,9.2
.talk 28092
..turnin 12547
..accept 12797
step
goto 50.5,7.8|n
.' Stand inside the light to go through the Waygate |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,64.5,48.7
.talk 27801
..turnin 12797
step
'Hearth to Nesingwary Base Camp |goto Sholazar Basin,26.8,59.2,0.1 |use Hearthstone##6948 |noway |c
step
'Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,35,45.3|n
.' The path down to Rin Duoctane starts here |goto 35,45.3,0.4 |noway |c
step
'Go into the sewer to 30.9,50.2 |goto 30.9,50.2
.talk 30490
..accept 12853
step
'Go northeast to The Storm Peaks |goto The Storm Peaks |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)
startlevel 78.65
dynamic on
step
goto The Storm Peaks,41.0,86.4
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
.' Click the Charred Wreckage |tip They look like various metal parts on the ground around this area.
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.kill Savage Hill gnolls |n
.' Click Dried Gnoll Rations |tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
.get 16 Dried Gnoll Rations|q 12827/1
' |from Savage Hill Brute##29623, Savage Hill Mystic##29622, Savage Hill Scavenger##29404
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
.' Click Sparksocket's Tools |tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
.get Sparksocket's Tools |q 12819/1
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
.' Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676 |tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Attackers |q 12820/1
' |from Garm Invader##29619+
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench |tip Standing next to some debris.
.' Retrieve a bomb from the dispenser
.collect U.D.E.D.##40686|q 12828
step
'HURRY HURRY to 43.9,79.0 |goto 43.9,79.0
.' Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686 |tip They walk around this area spread out.
.' Click the Mammoth Meat on the ground
.get 8 Hearty Mammoth Meat|q 12828/1
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Digger##29413+ |n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.from Icetip Crawler##29461
.get 1 Icetip Venom Sac |q 12831/1
step
'Go into the cave to 40.4,77.8 |goto 40.4,77.8
.kill 12 Crystalweb Spiders |q 12829/1
' |from Crystalweb Weaver##29411, Icetip Crawler##29461
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3 |goal Escort the Injured Goblin Miner to K3. |q 12832/1
step
'Fly up to [39.8,73.3] |goto 39.8,73.3
.kill Sifreldar Storm Maiden##29323+ |n
.collect 5 Cold Iron Key##40641|n
.' Click the Rusty Cages
.' Free 5 Goblin Prisoners |goal 5 Goblin Prisoner freed |q 12843/1
.' Click the K3 Equipment |tip The K3 Equipment looks like wooden crates on the ground around town.
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
.' Click the Transporter Power Cell |tip It looks like a small red barrel.
.get Transporter Power Cell|q 12821/2
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731 |tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter |goal Garm Teleporter Activated |q 12821/1
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
'Go inside the cave to 50.5,77.8 |goto 50.5,77.8
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431 |tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut##29626 |q 12823/2
step
goto 48.1,81.9
.kill 6 Garm Watcher##29409+ |q 12822/1
.kill 8 Snowblind Devotee##29407+ |q 12822/2
step
'Go outside and go to 50.0,81.8 |goto 50.0,81.8
.talk 29432
..turnin 12823
..accept 12824
step
Fly up into the cave to 42.8,68.9|goto 42.8,68.9
.talk 29481
..turnin 12846
..accept 12841
step
ding 79
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
.' Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837 |tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |goal 6 Exhausted Vrykul Disciplined |q 12906/1
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal##30147|q 12907/1
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
'Follow the path in the mine east out to the other side to 47.5,69.1 |goto 47.5,69.1
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
..'Tell her to skip the warm up
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
.' Listen to Lok'lira's proposal |goal Listen to Lok'lira's proposal |q 12970/1
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
.' Click Icefang to ride him |tip Standing down the hill, Icefang is a white bear.
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
.' Burn 7 Frostworgs |goal 7 Frostworgs Burned |q 12851/1
.' Burn 15 Frost Giants |goal 15 Frost Giants Burned |q 12851/2
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to [63.9,62.5] |goto 63.9,62.5
.' Click the Captive Proto-Drakes to ride them |tip The Captive Proto-Drakes are chained up flying in the sky.
.' Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard |tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners |goal 9 Rescued Brunnhildar Prisoners |q 12856/1
.' Free 3 Proto-Drakes |goal 3 Freed Proto-Drakes |q 12856/2
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
.kill Icemane Yeti##29875+ |n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar inside this cave |kill 8 Ravenous Jormungar |q 12989/1
step
'Follow the path in the cave to 54.8,60.4 |goto 54.8,60.4
.' Click the Injured Icemaw Matriarch |tip She's a big white bear laying on the ground inside this cave.
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |goal Icemaw Matriarch Rescued |q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak |tip He's a big white yeti.
.' Defeat Kirgaraak |goal Kirgaraak Defeated |q 12996/1
step
'Click the red arrow to get off the bear |script VehicleExit() |outvehicle |c
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
goto 49.1,69.4
.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear##30174+ |q 12997/1
step
'Click the red arrow to get off the bear |script VehicleExit() |outvehicle |c
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
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
.kill Hyldsmeet Drakerider##29694+ |n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders |goal 10 Hyldsmeet Drakerider Defeated |q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History |goal Thorim's History Heard |q 13064/1
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
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612 |tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |goal 30 Plagued Proto-Drake Egg |q 12925/1
step
goto 24,61.8
.kill 1 Yulda the Stormspeaker##30046 |q 12968/1 |tip Yulda the Stormspeaker is standing inside this house.
.' Click the Harpoon Crate |tip The Harpoon Crate looks like a huge square chest.
..accept 12953
step
goto 26,59.8
.' Click the Valkyrion Harpoon Guns |tip They look like bronze dragon guns.
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
.' Start 6 Fires |goal 6 Fires Started |q 12953/1
step
'Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
step
'Hearth to K3 |goto The Storm Peaks,41.0,85.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676 |tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader##29619+ |q 12833/1
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
.' Click the Granite Boulders and get them 1 at a time |tip The Granite Boulders look like big grey rocks on the ground around this area.
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giant##29375+ |q 12915/2
.collect Slag Covered Metal##41556 |q 12922 |future |n
.use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.from Seething Revenants
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.' Click a Granite Boulder and get one
.' Use Thorim's Charm of Earth on Fjorn |use Thorim's Charm of Earth##41505 |tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill Fjorn##29503 |q 12915/1
step
goto 77.2,62.9
.' Click Fjorn's Anvil |tip Fjorn's Anvil is a huge anvil.
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
.' Click Snorri to accompany on him |invehicle |c |tip Standing on the side of the road.
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow |tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
.kill 10 Seething Revenant##29504+ |q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri |script VehicleExit() |outvehicle |c
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
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
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
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
.' Click the Frozen Iron Scraps |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.' Click the Horn Fragments |tip The Horn Fragments look like grey scraps on the ground around this area.
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
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977
step
goto 72.1,51.8
.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |goal 5 Niffelem Forefather freed |q 12977/1
.' Free 5 Restless Frostborn |goal 5 Restless Frostborn freed |q 12977/2
' |from Niffelem Forefather##29974, Restless Frostborn Ghost##30144
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
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
.' Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
.kill the Stormforged Ambushers that spawn|n
.get 8 Stormforged Eye|q 12985/1
' |from Stormforged Ambusher##30208+
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
.' Mount Hodir's Helm |goal Hodir's Helm Mounted |q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oils inside this cave|n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
' |from Viscous Oil##30325
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
.kill 1 Jormuttar##30340 |q 13011/1
step
'Go outside and go to 33.4,58 |goto 33.4,58
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.' Click the Small Proto-Drake Eggs |tip They are big spiked brown eggs on top of this mountain in a nest.
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
.' Click the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus |goal Veranus Lured |q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.4,60.2
.talk 30105
..turnin 13011
step
goto 65.4,60.2
.talk 30105
..'Ask him what has become of Krolmir
.' Discover Krolmir's Fate |goal Krolmir's Fate Discovered |q 13010/1
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
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel##29984+ |q 13005/1
.kill 20 Iron Dwarf Assailant##29978+ |q 13005/2
step
'Fly up into the building to 55.3,43.3 |goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Eisenfaust##30341 |q 13035/1 |tip He's inside this Hall of the Shaper building in the very back of the room.
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Halefnir the Windborn##30376 |q 13035/2 |tip Standing in the middle of this huge staircase.
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Duronn the Runewrought##30353 |q 13035/3 |tip Standing at the bottom of this huge staircase.
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
.' Witness the Reckoning |goal Witness the Reckoning |q 13047/1
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
.'You will fly to Frosthold |goto 28.6,74.6,0.5 |noway |c
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
.' Locate the Missing Scout |goal Locate Missing Scout |q 12864/1
step
goto 46.5,68.3
.kill Vrykul |n |tip Inside this mine.
.' Get 10 Relics of Ulduar |q 12870/1
' |from Captive Vrykul##29427+, Garhal##30147+, Exhausted Vrykul##30146+
step
'Go outside to 44.5,60.4 |goto 44.5,60.4
.kill Ice Steppe Rhino##29469+ |n
.collect 8 Fresh Ice Rhino Meat##41340|q 12865
step
goto 36.1,64.1
.' Click the Disturbed Snow |tip It's a pile of snow on the ground.
.get Burlap-Wrapped Note|q 12854/1
step
goto 33.2,73.7
.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain |use Fresh Ice Rhino Meat##41340
.' Feed 8 Stormcrest Eagles |goal 8 Stormcrest Eagles fed |q 12865/1
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
.' Click Eagle Eggs on the ground |tip They look like white eggs sitting on the ground around this area, usually next to trees.
.get 15 Stormcrest Eagle Egg|q 12867/1
.kill 8 Frostfeather Screecher##29792+ |q 12866/1
.kill 8 Frostfeather Witch##29793+ |q 12866/2
step
goto 36.4,64.1
.' Use the Frosthound's Collar in your bags next to this broken down tent |use Frosthound's Collar##41430
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track down the thief |goal Track down thief |q 12855/1
step
goto 48.5,60.8
.kill Tracker Thulin##29695+ |q 12855/2 |tip He's sitting on the ground inside this small cave.
.collect Brann's Communicator##40971 |q 12871
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12855
..accept 12858
step
goto 37.6,43.5
.kill Library Guardian##29724+ |n
.collect 6 Inventor's Disk Fragment##41130 |n
.' Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
.get The Inventor's Disk |q 12858/1
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12858
..accept 12860
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179 |tip They look like floating round star things.
.' Gather 7 Hidden Data |goal 7 Hidden Data gathered |q 12860/1
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12860
..accept 13415
step
goto 37.4,46.8
.' Click the Inventor's Library Console |tip Inside the building, all the way at the end of the hall.
..turnin 13415
..accept 12872
step
'Click the Charged Disk in your bags |use Charged Disk##44704
.kill Archivist Mechaton that spawns|n
.get Norgannon's Shell |q 12872/1
' |from Archivist Mechaton##29775
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12872
..accept 12871
..accept 12885
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12885
..accept 12930
step
'Hearth to Frosthold |goto The Storm Peaks,28.7,74.4,0.5 |use Hearthstone##6948 |noway |c
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
..'Tell him you are ready for your test |goto The Storm Peaks,53.5,35.1,0.5 |c
step
goto 53.6,35.1
.' Click the Battered Storm Hammer |tip It's a big hammer on the ground next to a dead body.
.collect Battered Storm Hammer##42624|q 12874
step
goto 53.5,37.9
.' Use your Battered Storm Hammer on The Iron Watcher repeatedly |use Battered Storm Hammer##42624
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
.' The path to An Experienced Guide and Unwelcome Guests starts here |goto The Storm Peaks,27.0,66.9,0.2 |noway |c
step
goto 26.3,66.7
.kill Stormforged mobs inside this cave|n
.kill 10 Stormforged Invaders |q 12876/1
.get 5 Frostweave Cloth|q 12930/2
' |from Stormforged Loreseeker##29843, Stormforged Monitor##29862
step
goto 25.2,68.5
.talk 29751
..turnin 12875
..accept 12877
step
'Go outside to 27.1,67.3 |goto 27.1,67.3
.from the Stormforged Monitor##29862
.get Frostgrip's Signet Ring |q 12877/1
step
goto 39.6,59.8
.talk 30052
..turnin 12877
..accept 12986
step
'Fly to the top of this temple to 52.6,56.9 |goto 52.6,56.9
.' Use Creteus's Mobile Databank at the top of this temple |use Creteus's Mobile Databank##42679
.' Investigate the Temple of Winter |goal Temple of Winter Investigated |q 12986/2
step
goto 64.3,46.7
.' Use Creteus's Mobile Databank in this broken temple |use Creteus's Mobile Databank##42679
.' Investigate the Temple of Life |goal Temple of Life Investigated |q 12986/3
step
'Fly to the top of this temple to 53.5,42.3 |goto 53.5,42.3
.' Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
.' Investigate the Temple of Order |goal Temple of Order Investigated |q 12986/4
step
'Fly to the top of this temple to 45.6,49.2 |goto 45.6,49.2
.' Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
.' Investigate the Temple of Invention |goal Temple of Invention Investigated |q 12986/1
step
goto 39.6,59.8
.talk 30052
..turnin 12986
..accept 12878
step
goto 41.5,62.1|n
.' The path to The Hidden Relic starts here |goto The Storm Peaks,41.5,62.1,0.2 |noway |c
step
'Go inside the cave to 44.5,64.5 |goto 44.5,64.5
.' Click The Guardian's Charge |tip It's at the very lowest level of the cave.
..turnin 12878
..accept 12879
step
'Go outside the cave to 38.2,61.7 |goto 38.2,61.7
.talk 30082
..turnin 12879
..accept 12880
step
goto 39.6,56.4
.talk 30382
..turnin 12880
..accept 12973
step
'Click Brann's Flying Machine next to you
.kill the dwarves that jump on the plane as you fly|n // Not sure what these dwarves are called.
.' Accompany Brann Bronzebeard to Frosthold |goal Accompany Brann Bronzebeard to Frosthold. |q 12973/1
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
.' Click the red arrow on your hotbar to get off the eagle |script VehicleExit()
.talk 29732
..turnin 12869
step
goto 28.3,29.4
.' Click the Enchanted Earth |tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliffside.
.get 7 Enchanted Earth|q 12930/1
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
home Bouldercrag's Refuge
step
goto 28.1,36.7
.kill Stormforged Raiders and Stormforged Reavers|n
.kill 10 Stormforged Attacker|q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders |goal 8 Fallen Earthen Defenders healed |q 12937/1
' |from Stormforged Raider##29377, Stormforge Reaver##29382
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7 |goto 27.5,49.7
.kill 3 Stormforged Taskmaster##29369 |q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes |goal 8 Attempt to free Captive Mechagnome |q 12957/1
.' Click Ore Carts |tip They look like carts with ore in them.
.get 5 Dark Ore Sample|q 12964/1
step
'Go outside and inside the building to 31.4,38.1 |goto 31.4,38.1
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
.kill Stormforged mobs|n
.kill 10 Nidavelir Stormforged|q 12978/1
' |from Stormforged Champion##29370, Stormforged Magus##29374, Stormforged War Golem##29380
step
goto 24,42.6
.' Right-click Loken's Fury |tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.' Right-click Loken's Power |tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.' Right-click Loken's Favor |tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Favor |q 12965/3
step
goto 25,42.9
.kill 10 Nidavelir Stormforged|q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
' |from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12965
step
goto 31.3,38.2
.talk 30152
..turnin 12978
..turnin 12979
..accept 12980
step
ding 80
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
.kill 10 Stormforged Artificer##29376+ |q 12991/1
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
.kill Iron Colossus##30300 |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend 70-80\\Icecrown (78-80)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)
startlevel 78.65
dynamic on
step
goto Icecrown,87.8,78.1
.talk 30433
..fpath The Argent Vanguard
step
goto 87.5,75.8
.talk 28179
..accept 13036
step
goto 87.1,75.8
.talk 30223
..turnin 13036
..accept 13008
step
goto 86.8,76.7
.talk 30226
..accept 13040
step
goto 86.1,75.8
.talk 30224
..accept 13039
step
goto 84.4,74.3
.kill 15 Forgotten Depths Nerubian |q 13039/1
.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
.get 10 Forgotten Depths Venom Sac|q 13040/1
.' Click Webbed Crusaders |tip They look like white squirming cocoons on the ground around this area.
.' Free 8 Webbed Crusaders |goal 8 Webbed Crusader Freed |q 13008/1
' |from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
step
goto 86.1,75.8
.talk 30224
..turnin 13039
step
goto 86.8,76.7
.talk 30226
..turnin 13040
step
goto 87.1,75.8
.talk 30223
..turnin 13008
..accept 13044
step
goto 87.0,79.0
.talk 30227
..turnin 13044
..accept 13045
step
goto 87.1,79.1
.' Click an Argent Skytalon dragon to ride it |invehicle |tip They look like dragons under white canopies.
step
goto 79.0,67.4
.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
.' Once you pick up a Captured Crusader, fly to [86.9,76.5] |n
.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
.' Repeat this process 2 more times
.' Rescue 3 Captured Crusaders |goal 3 Captured Crusader Rescued |q 13045/1
step
.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle
step
goto 87.5,75.8
.talk 28179
..turnin 13045
..accept 13070
step
goto 85.6,76.0
.talk 30657
..turnin 13070
..accept 13086
step
goto 85.3,75.9
.' Click the Argent Cannon to get on it |invehicle |tip It looks like a white cannon on top of a wall tower.
step
'Use the skills on your hotbar to kill scourge mobs and dragons
.kill 100 Scourge Attacker |q 13086/1
.kill 3 Frostbrood Destroyer |q 13086/2
' |from Forgotten Depths Slayer##30593, Frostbrood Destroyer##30575
step
.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle
step
goto 85.6,76.0
.talk 30657
..turnin 13086
step
goto 86.0,75.8
.talk 30677
..accept 13105 |only DeathKnight
..accept 13104 |only !DeathKnight
step
goto 83.0,72.9
.talk 30596
..turnin 13105 |only DeathKnight
..turnin 13104 |only !DeathKnight
..accept 13118
..accept 13122
step
goto 83.0,73.1
.talk 30686
..accept 13130
step
goto 83.0,73.1
.talk 30714
..accept 13135
step
goto 82.9,72.8
.talk 30683
..accept 13110
step
goto 80.4,68.2
.kill 8 Reanimated Crusader##31043+ |q 13118/3
.kill 3 Forgotten Depths Underking##31039+ |q 13118/2
.from Reanimated Crusader##30202+, Forgotten Depths Underking##30541+
.get 15 Scourgestone |q 13122/1
.' Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
.' Free 10 Restless Souls |goal 10 Restless Soul Freed |q 13110/1
step
goto 78.7,60.2
.kill 3 Forgotten Depths High Priest##31037+ |q 13118/1
.' You can find another Forgotten Depths High Priest at [76.2,61.0] |n
step
goto 82.9,72.8
.talk 30683
..turnin 13110
step
goto 83.0,72.9
.talk 30596
..turnin 13118
..turnin 13122
..accept 13125
step
goto 77.6,62.2
.' Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
.kill Salranax the Flesh Render##30829 |q 13125/1
step
goto 79.7,60.9
.' Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
.kill High Priest Yath'amon##30831 |q 13125/3
step
goto 76.6,54.1
.' Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
.kill Underking Talonox##30830 |q 13125/2
step
'Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown,83.0,72.6,0.5 |noway |c
step
goto 83.0,72.9
.talk 30596
..turnin 13125
step
'Go south to Crystalsong Forest |goto Crystalsong Forest |noway |c
step
goto Crystalsong Forest,59.9,57.2
.from Unbound Ent##30862+, Unbound Dryad##30860+
.get 8 Crystallized Energy |q 13135/1
.' Click Crystalline Heartwood |tip They look like pink glowing tree stumps on the ground around this area.
.get 10 Crystalline Heartwood |q 13130/1
step
goto 73.6,64.0
.' Click Ancient Elven Masonry |tip They look like blue stone pieces of a building on the ground around this area.
.get 10 Ancient Elven Masonry |q 13130/2
.' You can find more Ancient Elven Masonry around [79.6,61.3] |n
step
'Go northwest to Icecrown |goto Icecrown |noway |c
step
goto Icecrown,83.0,73.1
.talk 30686
..turnin 13130
step
goto 83.0,73.1
.talk 30714
..turnin 13135
step
goto 82.9,72.8
.talk 30683
..accept 13139
step
goto 86.0,75.8
.talk 30677
..turnin 13139
..accept 13141
step
goto 80.1,72.0
.' Stand next to the Pile of Crusader Skulls
.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
.' Defend the Banner of the Crusade against oncoming attackers
.' Complete the Battle for Crusaders' Pinnacle |goal Battle for Crusaders' Pinnacle |q 13141/1
step
goto 82.9,72.8
.talk 30683
..turnin 13141
..accept 13157
step
goto 79.8,71.8
.talk 31044
..turnin 13157
..accept 13068
step
goto 79.4,72.9
.talk 31241
..accept 13225
step
goto 79.8,30.8
.talk 30562
..turnin 13068
..accept 13072
step
goto 79.8,71.8
.talk 31044
..turnin 13072
..accept 13073
step
goto 87.1,77.0
.talk 30630
..' Ask her for a portal to Moonglade
..' Click the Moonglade Portal that appears next to you |goto Moonglade |noway |c
step
goto Moonglade,36.2,41.8
.talk 11832
..turnin 13073
..accept 13074
step
goto 33.7,44.1
.' Click Emerald Acorns |tip They look like brown pinecones on the ground around this area.
.get 3 Emerald Acorn|q 13074/1
step
'Right click your Fitfull Dream buff to awaken from the nightmare |nobuff Spell_Nature_Sleep |q 13074 |tip The Fitfull Dream buff icon looks like a closed eye.
step
goto 36.2,41.8
.talk 11832
..turnin 13074
..accept 13075
step
.talk 11832
.' Tell him you wish to return to Arch Druid Lilliandra.
' Click the Moonglade Return Portal that appears next to you |goto Icecrown |noway |c
step
goto 79.8,30.8
.talk 30562
..turnin 13075
..accept 13076
step
goto 79.8,71.8
.talk 31044
..turnin 13076
..accept 13077
step
|fly Wyrmrest Temple
step
goto Dragonblight,57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 13077
..accept 13078
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto 43.2,51.7
.' There should be a fight happening, so just wait around until the fight is over |tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
.' At the end of the fight, a Ruby Watcher will blow a lot of fire on the ground and the Dahlia's Tears will spawn
.' Click the Dahlia's Tears |tip They look like yellow flowers on the ground.
.get Dahlia's Tears |q 13078/1
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 13078
..accept 13079
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
fly Crusaders' Pinnacle
step
goto 79.8,30.8
.talk 30562
..turnin 13079
..accept 13080
step
goto 79.8,71.8
.talk 31044
..turnin 13080
..accept 13081
step
'Click the Portal to Shattrath that appears near you |goto Shattrath City |noway |c
step
goto Shattrath City,54,44.8
.talk 18481
..turnin 13081
..accept 13082
step
fly Crusaders' Pinnacle
step
goto Icecrown,79.8,30.8
.talk 30562
..turnin 13082
step
goto 79.8,30.8
.talk 192833
..accept 13083
step
goto 79.8,71.8
.talk 31044
..turnin 13083
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
..talk 30344
...turnin 13225
...accept 13231
step
'On the Skybreaker airship:
.talk 29799
..accept 12887
step
'On the Skybreaker airship:
.talk 32302
..accept 13336
..accept 13341
step
'On the Skybreaker airship:
.talk 31259
..accept 13300
step
'On the Skybreaker airship:
.talk 30345
..accept 13296
step
goto 62.6,51.3
.talk 31808
..turnin 13341
..accept 13309
step
 goto Icecrown,62.5,51.1
.talk 31737
..accept 13284
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |goal 4 Alliance troops escorted to Ymirhem |q 13284/1 |tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |goal 10 Saronite Mine Slave rescued |q 13300/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c
step
goto 57.3,57.0
.kill 20 Ymirheim Vrykul|q 13336/1
' |from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
step
goto 57.0,62.5
.talk 31776
..turnin 13296
..accept 13280
step
goto 57.0,62.5
'Click Geargrinder's Jumpbot to get in the robot |invehicle
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot |petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |goal Alliance Battle Standard planted |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane |invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around |petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators |goal 4 Skybreaker Infiltrators dropped |q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 69.0,67.3
.talk 31304
..' Ask him what happened here
.' Question the Dying Soldier |goal Dying Soldier Questioned |q 13231/1
step
goto 69.0,67.3
.talk 31304
..accept 13232
step
goto 68.8,67.2
.talk 31304
..' Tell 5 Dying Soldiers to travel well
.' Kill 5 Dying Alliance Soldiers |goal 5 Dying Alliance Soldiers slain |q 13232/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
..talk 30344
...turnin 13231
...turnin 13232
...accept 13290
...accept 13286
step
'On the Skybreaker airship:
.talk 29799
..turnin 13286
..accept 13287
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 30345
..turnin 13290
..accept 13291
step
goto 69.9,64.3
.' Click Abandoned Armor |tip They look like metal armor chest pieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13291
.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13291
.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13291
step
goto 68.8,67.5
.' Use Smuggled Solution 3 times |use Smuggled Solution##44048
.' Conduct 3 Field Tests |goal 3 Field Tests Conducted |q 13291/1
step
goto 68.8,66.6
.' Kill 5 Hulking Abominations |goal 5 Hulking Abominations Slain |q 13287/1
.' Kill 5 Malefic Necromancer |goal 5 Malefic Necromancers Slain |q 13287/2
.' Kill 5 Shadow Adept |goal 5 Shadow Adepts Slain |q 13287/3
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2:[64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13287
..accept 13288
step
'On the Skybreaker airship:
.talk 30345
..turnin 13291
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to [69.1,61.6] |n
.' Use your Burst at the Seams ability to explode the mobs around this area |petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |goal 15 Icy Ghouls Exploded |q 13288/1
.' Explode 15 Vicious Geists |goal 15 Vicious Geists |q 13288/2
.' Explode 15 Risen Alliance Soldiers |goal 15 Risen Alliance Soldiers Exploded |q 13288/3
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13288
..accept 13315
step
goto 55.1,43.9
.' Visit Aldur'thar South |goal Aldur'thar South Visited |q 13315/1
step
goto 54.7,38.9
.' Visit Aldur'thar Central |goal Aldur'thar Central Visited |q 13315/2
step
goto 57.5,35.2
.' Visit Aldur'thar North |goal Aldur'thar North Visited |q 13315/3
step
goto 51.3,35.3
.' Visit Aldur'thar Northwest |goal Aldur'thar Northwest Visited |q 13315/4
step
goto 44.3,21.5
.' Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265 |tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular |q 12887/1
step
goto 44.1,24.7
.talk 29804
..turnin 12887
..accept 12891
step
goto 43.7,24.8
.from Shadow Cultist##29717+
.get 1 Cultist Rod|q 12891/1
.from Morbid Carcass##29719+
.get 1 Abomination Hook|q 12891/2
.from Vault Geist##29720+
.get 1 Geist Rope|q 12891/3
.from Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence|q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840
.' Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
.' Turn The Leaper |q 12893/3
step
goto 44.4,27.0
.from Vile##29769
.' Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
.' Turn Vile |q 12893/1
step
goto 41.8,24.5
.from Lady Nightswood##29770
.' Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
.' Turn Lady Nightswood |q 12893/2
step
goto 44.1,24.7
.talk 29804
..turnin 12893
..accept 12896
step
'The entrance to the Shadow Vault starts here |goto 43.7,23.6,0.3 |c
step
goto 44.9,19.9
.click General's Weapon Rack##7950 |tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
.' General Lightsbane spawns
.kill General Lightsbane##29851 |q 12896/1
step
'Leave the Shadow Vault |goto 43.7,23.6,0.3 |c
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 12896
..accept 12898
..turnin 13315
..accept 13318
..accept 13319
..accept 13320
step
goto 53.9,46.9
.' Kill Overseer Faedris |goal Overseer Faedris Killed |q 13319/1 |tip He's standing in a tent.
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion##44246 |q 13318
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |goal 3 Dark Subjugators dragged and dropped |q 13318/1
step
goto 54.7,32.6
.' Kill Overseer Jhaeqon |goal Overseer Jhaeqon Killed |q 13319/2 |tip He's standing in a tent.
step
goto 53.7,29.2
.' Kill Overseer Veraj |goal Overseer Veraj Killed |q 13319/3 |tip He's standing under a white canopy.
step
goto 49.7,34.4
.' Use your Partitioned Flask next to the big cauldron with purple smoke |use Partitioned Flask##44251
.' Collect the Dark Sample |goal Dark Sample Collected |q 13320/3
step
goto 49.1,34.2
.' Use your Partitioned Flask next to the big cauldron with green smoke |use Partitioned Flask##44251
.' Collect the Green Sample |goal Green Sample Collected |q 13320/2
step
goto 49.0,33.2
.' Use your Partitioned Flask next to the big cauldron with gray or blue smoke |use Partitioned Flask##44251
.' Collect the Blue Sample |goal Blue Sample Collected |q 13320/1
step
goto 49.4,31.2
.' Kill Overseer Savryn |goal Overseer Savryn Killed |q 13319/4 |tip He's standing under a white canopy.
step
goto 42.8,24.9
.talk 29343
..turnin 12898
..accept 12938
..accept 13106
step
goto 44.0,22.2
.talk 30308
..home The Shadow Vault
step
goto 44.7,20.3
.talk 30002
..turnin 12938
..accept 12939
step
goto 43.6,24.7
.talk 30074
..accept 12955
step
goto 37.9,25.1
.' Watch out for the Mjordin Combatants. They will attack you!
.talk 30081
..' Challenge him to a duel
.' Defeat Efrem the Faithful |q 12955/2
step
goto 36.1,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle |q 12955/4
step
goto 37.5,24.6
.' Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
..' Challenge and defeat 6 Mjordin Combatants |q 12939/1
step
goto 37.1,22.5
.talk 30086
..' Tell her you heard vrykul women cannot fight at all
.' Defeat Sigrid Iceborn |q 12955/1
step
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun |q 12955/3
step
'Hearth to The Shadow Vault |goto Icecrown,44.0,22.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.7,20.3
.talk 30002
..turnin 12939
..accept 12943
step
goto 43.6,24.7
.talk 30074
..turnin 12955
..accept 12999
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
..kill Thane Ulfrang the Mighty##29919 |q 12943/1
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains |q 12949/1
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
step
goto 41.0,23.9
.talk 30056
..turnin 12949
..accept 12951
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
step
goto 42.8,24.9
.talk 29343
..turnin 12951
..accept 12995
..accept 13085
step
goto 43.3,24.8
.talk 30216
..accept 12992
step
goto 43.1,21.1
.talk 30218
..turnin 13085
..accept 12982
step
goto 44.7,20.3
.talk 30002
..turnin 12943
..accept 13084
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13318
..turnin 13319
..accept 13386
..accept 13342
step
'On the Skybreaker airship:
.talk 30345
..turnin 13320
..accept 13321
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic |use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13321
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13342
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |goal Dark Messenger summoned |q 13342/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |goal Writhing Mass Banished |q 13321/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13342
..accept 13345
step
'On the Skybreaker airship:
.talk 30345
..turnin 13321
step
.' Go into the building at [51.9,32.7] |goto 51.9,32.7,0.5 |c |q 13345
step
goto Icecrown,51.9,30.8
.from Cult Researcher##32297+
..collect Cult of the Damned Research - Page 1##44459|n
..collect Cult of the Damned Research - Page 2##44460|n
..collect Cult of the Damned Research - Page 3##44461|n
..' Use a Cult of the Damned Research Page to combine them |use Cult of the Damned Research - Page 1##44459
..get Cult of the Damned Thesis##44462|q 13345/1
step
goto 33.0,28.1
.kill 15 Jotunheim vrykul|q 12992/1
.collect 15 Vrykul Bones##43089|q 13092|future
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |goal 15 Ebon Blade Banner planted near vrykul corpse |q 12995/1
.collect 8 Jotunheim Cage Key##42422|q 12982|n
.' Click Jortunheim Cages |tip They look like wooden cages on the ground around this area.
.' Set free 8 Ebon Blade Prisoners |goal 8 Ebon Blade Prisoners set free |q 12982/1
.' Click Vrykul Banners |tip They look like big wooden posts with red banners hanging from them around this area.
.' Burn 10 Vrykul banners |goal 10 Vrykul banners burned |q 13084/1
' |from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
step
goto 32.5,42.9
.talk 30232
..turnin 12999
..accept 13092
..turnin 13092
..accept 13042
step
'The entrance to The Underhalls starts here |goto 32.6,32.1,0.5 |c
step
goto 36.1,33.0
.talk 30406
..accept 13059
step
goto 33.1,37.7
.' Use Bethod's Sword in the middle of the room |use Bethod's Sword##42928
.' Issue a challenge using Bethod's Sword |goal Challenge issued using Bethod's Sword |q 13059/1
.kill Thane Illskar##30475 |q 13059/2
step
goto 34.0,36.3
.kill Apprentice Osterkilgr##30409 |q 13042/2
.' Beat the information out of Apprentice Osterkilgr |goal Information beaten out of Apprentice Osterkilgr |q 13042/1
.collect Dr. Terrible's "Building a Better Flesh Giant"##42772 |n
.' Click Dr. Terrible's "Building a Better Flesh Giant" in your bags |use Dr. Terrible's "Building a Better Flesh Giant"##42772
..accept 13043
step
goto 33.4,33.2
.' Click Nergeld to control him |tip He's a big undead monster.
.'Use Nergeld's abilities to kill Dr. Terrible |tip The best way to kill Dr. Terrible is to knock him, and all the other mobs, away using Nergeld's shout ability.  Then, target Dr. Terrible and pull him close with Nergeld's chain ability.  When Dr. Terrible is close to you, use Nergeld's punch ability to get his health down quickly.  When Dr. Terrible tries to heal, use Nergeld's shout ability to interrupt him, then pull him close again and resume punching him.
.kill Dr. Terrible##30404 |q 13043/1
step
goto 36.1,33.0
.talk 30406
..turnin 13059
step
'Leave The Underhalls |goto 32.6,32.1,0.5 |c
step
goto 32.5,42.9
.talk 30232
..turnin 13042
..turnin 13043
..accept 13091
step
goto 31.4,41.2
.' Click the huge Lock Gate to control a Water Terror
.' Use the Water Terror's abilities to kill mobs around this area
.' Slay 10 Jotunheim vrykul while possessing a Water Terror |goal 10 Jotunheim vrykul slain while possessing a Water Terror |q 13091/1
step
'Click the red arrow on your vehicle hot bar to stop controlling the Water Terror |script VehicleExit() |outvehicle |c
step
goto 32.5,42.9
.talk 30232
..turnin 13091
..accept 13121
step
'The entrance to Kul'galar Keep starts here |goto 25.1,61.3,0.5 |c
step
goto 26.2,62.3
.' Click the Eye of the Lich King |tip It's a blue floating ball up on a stage.
.' Grasp the Eye of the Lich King and focus
.' Gain information for The Bone Witch |goal Information gained for The Bone Witch |q 13121/1
step
'Leave Kul'galar Keep |goto 25.1,61.3,0.5 |c
step
goto 32.5,42.9
.talk 30232
..turnin 13121
..accept 13133
step
'The entrance to the Halls of the Ancestors starts here |goto 27.9,47.2,0.5 |c
step
goto 27.4,47.9
.talk 30718
..' Waken them to see if it is Iskalder
.' Use The Bone Witch's Amulet on Iskalder |use The Bone Witch's Amulet##43166
.' Bring Iskalder back to The Bone Witch at [32.5,42.9] |n
.' Deliver Iskalder to The Bone Witch |goal Iskalder delivered to The Bone Witch |q 13133/1
step
goto 32.5,42.9
.talk 30232
..turnin 13133
step
goto 35.4,66.3
.talk 30631
..turnin 13106
..accept 13117
step
goto 36.8,70.7
.' Click a Summoning Altar |tip They look like small stone stages with green summoning circles on them on the ground around this area.
.' Investigate a Summoning Altar |goal Summoning Altar investigated |q 13117/1
step
goto 35.4,66.3
.talk 30631
..turnin 13117
..accept 13119
..accept 13120
step
goto 30.5,65.1
.' Click the Cauldron Area Orb Stand |tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Cauldron Area Orb Stand |goal Orb placed in cauldron area |q 13120/3
step
goto 32.6,70.6
.' Click the Abomination Lab Orb Stand |tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Abomination Lab Orb Stand |goal Orb placed in abomination lab |q 13120/1
step
goto 34.6,69.6
.' Click the Flesh Giant Lab Orb Stand |tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Flesh Giant Lab Orb Stand |goal Orb placed in flesh giant lab |q 13120/2
step
goto 37.0,71.1
.from Master Summoner Zarod##30746
.collect 1 Master Summoner's Staff##43159 |q 13119
step
goto 36.7,70.7
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the First Summoning Altar |goal First Summoning Altar destroyed |q 13119/1
step
goto 36.6,71.6
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Second Summoning Altar |goal Second Summoning Altar destroyed |q 13119/2
step
goto 37.4,71.5
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Fourth Summoning Altar |goal Fourth Summoning Altar destroyed |q 13119/4
step
goto 37.8,70.7
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Third Summoning Altar |goal Third Summoning Altar destroyed |q 13119/3
step
goto 35.4,66.3
.talk 30631
..turnin 13119
..turnin 13120
..accept 13134
step
goto 34.0,70.0
.click Embalming Fluid##8544
.' Destroy 5 Vats of Embalming Fluid |goal 5 Vats of Embalming Fluid destroyed |q 13134/2
.click the Blood Orbs##8365
.' Shatter 5 Blood Orbs |goal 5 Blood Orbs shattered |q 13134/1
.from Spiked Ghoul##30597+
.collect 1 Jagged Shard##43242|n
.' Click the Jagged Shard in your bags |use Jagged Shard##43242
..accept 13136
step
goto 34.4,68.9
.from Spiked Ghoul##30597+ |tip You can find them all around this area.
.get 10 Jagged Shard|q 13136/1
step
goto 35.4,66.3
.talk 30631
..turnin 13134
step
goto 35.5,66.4
.talk 30708
..turnin 13136
..accept 13138
..accept 13140
step
goto 51.8,86.7
.talk 31444
..turnin 13386
..accept 13387
step
goto 52.2,87.4
.kill 10 Hulking Horror##31413+ |q 13387/1
step
goto 51.8,86.7
.talk 31444
..turnin 13387
..accept 13388
step
goto 54.4,86.3
.' Click the Saronite Bomb Stack |tip It looks like a pile of big spiked round bombs.
..turnin 13388
..accept 13389
step
goto 54.0,87.3
.' Click the Pulsing Crystal underwater |tip This is underground in Naz'anak: The Forgotten Depths.
..turnin 13389
..accept 13390
step
goto 53.8,86.9
.talk 31237
..turnin 13390
..accept 13391
step
goto 54.5,87.4
.from Faceless Lurker##31691+ |tip They look like elephant men with squid arms underground in Naz'anak: The Forgotten Depths.
.get 3 Faceless One's Blood |q 13391/1
step
goto 53.8,86.9
.talk 31237
..turnin 13391
..accept 13392
step
goto 53.8,86.8
.' Click the Surface Portal |tip It looks like a small round green and black portal underground in Naz'anak: The Forgotten Depths.
..' Go to the surface |goto Icecrown,49.1,71.6,0.5 |noway |c
step
goto 58.1,70.9
.' Use your Bag of Jagged Shards while standing on the big platform with fire shooting out of it |use Bag of Jagged Shards##43289
.get Smelted Bar|q 13138/1
step
goto 58.9,73.3
.from Skeletal Runesmith##30921+
.get 5 Runed Saronite Plate|q 13140/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13392
..accept 13393
..turnin 13345
..accept 13332
step
goto 66.0,53.7
.from Scavenging Geist##31847+
.get 5 Demolisher Parts|q 13393/1
step
goto 68.0,51.9
.talk 31868
..turnin 13393
step
goto 68.0,51.6
.talk 32408
..accept 13394
step
goto 68.0,51.8
.' Click the Refurbished Demolisher to drive it |invehicle |tip It looks like a big wooden catapult machine.
step
goto 65.4,47.9
.' Use the catapult's abilities around this area to:
.kill 150 Decomposed Ghoul##31812+ |q 13394/1
.kill 20 Frostskull Magus##31813+ |q 13394/2
.kill 2 Bone Giant##31815+ |q 13394/3
step
goto 64.5,44.0
.talk 32404
..turnin 13394
..accept 13395
step
goto 64.9,43.9
.' Use your abilities as Arthas to kill Lordaeron Footsoldiers and turn them into Ghoulish Minions
.' Raise 100 Ghoulish Minions |goal 100 Ghoulish Minions Raised |q 13395/1
step
'Click the red arrow on your vehicle hot bar to stop controlling Arthas |script VehicleExit() |outvehicle |c
step
goto 64.5,44.0
.talk 32404
..turnin 13395
..accept 13396
step
goto 50.6,38.5
.' Use your Barricade Construction Kit near the floating orbs that glow pink |use Barricade Construction Kit##44127
.' Construct 8 Barricades |q 13332/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13396
..accept 13397
..turnin 13332
..accept 13334
step
'On the Skybreaker airship:
.talk 30344
..accept 13314
step
goto 43.3,58.2
.kill 5 Scourge Banner-Bearer##31900+ |q 13334/1
.kill 20 Converted Hero##32255+ |q 13334/2
.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons
.' When they hit the ground, fly down and loot their bodies
.get 6 Orgrim's Hammer Dispatch##44220+ |q 13314/1
step
goto 49.4,39.3
.kill 5 Scourge Converter##32257+ |q 13334/3
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13314
step
'On the Skybreaker airship:
.talk 29799
..turnin 13334
step
goto 71.5,37.6
.talk 32423
..accept 13398
step
goto 69.7,36.7
.kill 8 Cultist Corrupter##31738+ |q 13397/2
.kill 3 Vrykul Necrolord##31783+ |q 13397/3
.from Frostbrood Whelp##31718+
.get 6 Whelp Bone Dust|q 13398/1
step
goto 71.5,37.6
.talk 32423
..turnin 13398
..accept 13399
step
goto 72.3,36.7
.kill 5 Wyrm Reanimator##31731+ |q 13397/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13397
step
'Hearth to The Shadow Vault |goto Icecrown,44.0,22.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.1,21.1
.talk 30218
..turnin 12982
step
goto 44.7,20.3
.talk 30002
..turnin 13084
step
goto 43.6,25.1
.talk 30074
..accept 13069
step
goto 43.3,24.8
.talk 30216
..turnin 12992
..accept 13071
step
goto 42.8,24.9
.talk 29343
..turnin 12995
..accept 12806
step
goto 44.1,24.5
.talk 30946
..accept 13168
step
goto 44.1,24.7
.' Click an Eye of Domination |tip They look like red globes floating above small metal pillars.
.' Seize Control of an Eidolon Watcher |goal Sieze Control of an Eidolon Watcher |q 13168/1
step
goto 44.1,24.5
.talk 30946
..turnin 13168
..accept 13171
..accept 13169
..accept 13170
step
goto 44.1,24.7
.' Click an Eye of Domination |tip They look like red globes floating above small metal pillars.
.' Seize Control of an Eidolon Watcher |invehicle |c
step
goto 41.5,32.4
.' Use your Eidolon Watcher abilities around this area to:
.' Feed 18 Hungering Plaguehounds |goal 18 Hungering Plaguehounds fed |q 13169/1
.' Assassinate 20 Restless Lookouts |goal 20 Restless Lookouts assassinated |q 13170/1
.' Banish 10 Scourge Crystals |goal 10 Banished Scourge Crystals |q 13171/1 |tip The Scourge Crystals look like big crystals floating above small stone pillars around this area.
step
goto 44.1,24.5
.talk 30946
..turnin 13171
..turnin 13169
..turnin 13170
..accept 13172
..accept 13174
step
goto 44.1,24.5
.talk 30946
..' Tell him you are prepared to join the assault |invehicle
step
'Use your Firebomb ability as you fly around to:
.' Slaughter 80 Weeping Quarry Undead |goal 80 Weeping Quarry Undead slaughtered |q 13172/1
step
'Click the red arrow on your vehicle hot bar to stop riding the skeleton mount |script VehicleExit() |outvehicle |c
step
goto 37.2,41.6
.' Click the Weeping Quarry Schedule |tip It looks like a rolled up white scroll laying on the back of this wagon, next to a bunch of wooden boxes.
.get Weeping Quarry Schedule|q 13174/4
step
goto 38.7,39.4
.' Click the Weeping Quarry Map |tip It looks like a tan piece of paper laying on a wooden box, next to a bunch of wooden boxes and a canopy.
.get Weeping Quarry Map|q 13174/3
step
goto 39.2,36.7
.' Click the Weeping Quarry Ledger |tip It looks like a rolled up white scroll laying on the corner of a wooden box, under a canopy.
.get Weeping Quarry Ledger|q 13174/2
step
goto 39.1,33.6
.' Click the Weeping Quarry Document |tip It looks like an unrolled white scroll with black writing on it, laying on the corner of a wooden box, under a canopy.
.get Weeping Quarry Document|q 13174/1
step
goto 44.1,24.5
.talk 30946
..turnin 13172
..turnin 13174
..accept 13155
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it |invehicle |c |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |goal 8 Vrykul buildings set ablaze |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake |outvehicle |c |q 13071
step
goto 19.3,47.8
.talk 31078
.fpath Death's Rise
step
goto 19.5,48.2
.talk 29344
..turnin 12806
..accept 12807
step
goto 19.5,48.2
.talk 29344
..' Tell him you would hear his tale |goal Lord-Commander Arete's tale listened to. |q 12807/1
step
goto 19.5,48.2
.talk 29344
..turnin 12807
..accept 12810
step
goto 19.7,48.4
.talk 29396
..accept 12813
step
goto 19.9,48.3
.talk 29456
..accept 12838
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses |use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |goal 10 Scarlet Onslaught corpse transformed |q 12813/1
.' Click Scarlet Onslaught Trunks |tip They look like small wooden boxes on the ground around this area.
.' You can find trunks here: [Icecrown,5.7,38.6]
.get 5 Onslaught Intel Documents|q 12838/1
.collect Note from the Grand Admiral##40666|n
.' Click the Note from the Grand Admiral in your bags |use Note from the Grand Admiral##40666
..accept 12839
step
goto 10.5,40.8
.from Ravenous Jaws##29392 |tip They are sharks in the water.
.' Use your Gore Bladder on their corpses |use Gore Bladder##40551
.' Collect 10 Blood from Ravenous Jaws |goal 10 Blood collected from Ravenous Jaws |q 12810/1
step
goto 19.5,48.2
.talk 29344
..turnin 12810
..accept 12814
..turnin 12839
..accept 12840
step
goto 19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 8.5,44.3
.from Onslaught Gryphon Rider##29333+
.collect 1 Onslaught Gryphon Reins##40970|q 12814
step
goto 7.0,41.9
.from Captain Hartford##29490 |tip Standing on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Hartford for information |goal Captain Hartford beaten for information and killed |q 12840/2
step
goto 5.7,41.9
.from Captain Welsington##29489 |tip Standing on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Welsington for information |goal Captain Welsington beaten for information and killed |q 12840/1
.' Use your Onslaught Gryphon Reins in your bags |use Onslaught Gryphon Reins##40970
.' Take control of an Onslaught Gryphon |invehicle |q 12814
step
goto 19.6,47.8
.' Use the Deliver Gryphon ability on your gryphon hotbar next to Uzo Deathcaller |tip He's standing on a bunch of scattered straw on the ground.
.' Deliver the Onslaught Gryphon to Uzo Deathcaller |q 12814/1
step
goto 19.6,47.8
.talk 29405
..turnin 12814
..accept 12815
step
goto 19.5,48.2
.talk 29344
..turnin 12840
step
goto 12.5,44.4
.' Use your Bone Gryphon in your bags |use Bone Gryphon##40600
.' Ride a Bone Gryphon |invehicle |q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider##29333+ |q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon |script VehicleExit() |outvehicle |c
step
goto 19.6,47.8
.talk 29405
..turnin 12815
step
goto 35.5,66.4
.talk 30708
..turnin 13138
..turnin 13140
..accept 13211
step
goto 35.4,66.3
.talk 30631
..accept 13152
step
'The entrance to the Sanctum of Reanimation starts here |goto 34.4,68.4,0.5 |c
step
goto 34.6,67.7
.' Use Olakin's Torch on Festering Corpses |use Olakin's Torch##43524 |tip They look like dead soldiers on the ground inside this cave.
.' Burn 7 Festering Corpses |goal 7 Festering Corpse burned |q 13211/1
step
goto 35.8,67.0
.' Follow the path in the cave to this spot
.' Click the Metal Stake |tip It looks like a big metal spike sticking out of the ground.
.' Free Patches |goal Patches freed |q 13152/1
.' Help Patches kill Doctor Sabnok |goal Help Patches kill Doctor Sabnok |q 13152/2
step
'Leave the Sanctum of Reanimation |goto 34.4,68.4,0.5 |c
step
goto 35.4,66.3
.talk 30631
..turnin 13152
step
goto 35.5,66.4
.talk 30708
..turnin 13211
step
goto 35.4,66.3
.talk 30631
..accept 13144
step
goto 35.1,69.4
.' Click Grasping Arms |tip They look like green arms on the ground that reach up sometimes.
.' Get a Burning Skeleton minion
.' With a Burning Skeleton minion, go to [32.2,71.2]
.' Stand next to Chained Abominations with your Burning Skeleton to burn them |tip They look like fat white abominations chained to the big spikes around the edge of this platform.
.' Repeat this process 2 more times
.' Burn 3 Chained Abominations |goal 3 Chained Abominations burned |q 13144/1
step
goto 35.4,66.3
.talk 30631
..turnin 13144
..accept 13212
step
goto 34.0,69.2
.from Corpulent Horror##30696+
.get Olakin's Torso |q 13212/1
.get Olakin's Legs |q 13212/2
.get Olakin's Left Arm |q 13212/3
.get Olakin's Right Arm |q 13212/4
step
goto 35.4,66.3
.talk 30631
..turnin 13212
..accept 13220
step
'The entrance to the Sanctum of Reanimation starts here |goto 34.4,68.4,0.5 |c
step
goto 34.7,66.0
.' Click the Spool of Thread |tip It looks like a red spool with white thread wound on it, sitting on a small metal chest with a skull on it, in a small side room in the Sanctum of Reanimation.
.collect 1 Spool of Thread##43567 |q 13220
step
goto 36.6,67.6
.' Follow the path in the cave all the way to the end into the doctor's big lab.
.' Click The Doctor's Cleaver |tip It looks like a butcher's cleaver stuck in a bloody metal table.
.collect 1 The Doctor's Cleaver##43568 |q 13220
step
goto 35.6,66.7
.' Follow the path in the cave back up into the main entrance room of the cave
.' Use Crusader Olakin's Remains while standing on the big black stone slab made of skulls |use Crusader Olakin's Remains##43564
.' Revive Crusader Olakin Sainrith |goal Crusader Olakin Sainrith revived |q 13220/1
step
'Leave the Sanctum of Reanimation |goto 34.4,68.4,0.5 |c
step
goto 35.4,66.3
.talk 30631
..turnin 13220
..accept 13235
step
goto 29.8,61.3
.talk 31306
..' Tell him let's kill this... thing... and get this over with
.kill Morbidus##30698 |q 13235/1
step
goto 35.4,66.3
.talk 30631
..turnin 13235
step
goto 31.8,64.8
.talk 31279
..accept 13482
.' Escort Father Kamaros to safety |goal Escort Father Kamaros to safety |q 13482/1
step
goto 49.2,73.1
.talk 32497
..turnin 13399
..accept 13400
step
goto 49.2,73.9
.' Click a Bloodstained Stone |tip They look like pointed rocks on the ground around this area.
.' Fight Illidan using your Arthas abilities |tip The best way to kill Illidan is to just keep parrying his attacks until your mana is full.  Once your mana is full, use your knockback ability, followed immediately by your Annihilate ability.  Keep repeating this process until Illidan is dead.
.' Find out the Prince's Destiny |goal The Prince's Destiny |q 13400/1
step
goto 49.2,73.1
.talk 32497
..turnin 13400
..accept 13401
step
goto 54.1,71.2
.talk 30944
..turnin 13155
..accept 13143
step
goto 55.5,71.5
.' Fight a Lithe Stalker until you see a message in your chat that it's weak |tip You can find Lithe Stalkers up on this high bridge.
.' Use your Sigil of the Ebon Blade on a weakened Lithe Stalker |use Sigil of the Ebon Blade##43315
.' Bring the Lithe Stalker off the bridge to [55.4,70.8]
.' Return the Subdued Lithe Stalker |goal Subdued Lithe Stalker Returned |q 13143/1
step
goto 54.1,71.2
.talk 30944
..turnin 13143
..accept 13145
step
goto 56.1,79.8
.' Explore the Altar of Sacrifice |goal Altar of Sacrifice explored |q 13145/1
step
goto 59.0,73.8
.' Explore the Runeworks |goal Runeworks explored |q 13145/4
step
goto 58.0,71.3
.' Explore the Blood Forge |goal Blood Forge explored |q 13145/2
step
goto 60.4,68.7
.' Explore the Icy Lookout |goal Icy Lookout explored |q 13145/3
step
goto 54.1,71.2
.talk 30944
..turnin 13145
..accept 13146
..accept 13147
..accept 13160
step
goto 54.3,70.6
.' Click the Eye of Domination |tip It looks like a red globe floating above a small metal pillar.
.' Seize control of a Lithe Stalker |invehicle |c |q 13146
step
goto 57.7,73.7
.' Start 5 Worker Fights |q 13147/1 |tip To start a Worker Fight, use your Lithe Stalker Throw Rock ability on Umbral Brutes when they get close to the skeletons around this area.
.' Deliver 4 Scourge Bomb Gifts |q 13146/1 |tip The Scourge Bombs look like spiked round metal bombs on the ground around this area.  Use your Lithe Stalker Iron Chain ability on the Scourge Bombs.  Then, drag the Scourge Bombs next to Lumbering Atrocities.  Lumbering Atrocities look like abominations around this area.
step
goto 59.6,76.2
.' Use your Lithe Stalker Leap ability to jump up the cliff to this spot.
.' Destroy 12 Iceskin Sentries |q 13160/1 |tip The Iceskin Sentries look like gargoyles sitting high up on the cliffside.  Use your Lithe Stalker Leap ability to jump around to them.  Once you get close to them, use your Lithe Stalker Heave ability to destroy them.
step
'Click the red arrow on your hot bar to stop controlling a Lithe Stalker |outvehicle |c
step
goto 54.1,71.2
.talk 30944
..turnin 13146
..turnin 13147
..turnin 13160
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13401
..accept 13402
step
'On the Skybreaker airship:
.talk 31259
..turnin 13482
step
goto 79.8,71.8
.talk 31044
..turnin 13402
..accept 13403
step
goto 46.1,76.6
.from Cultist Acolyte##32507+
.collect 1 Cultist Acolyte's Hood##44784 |q 13403
.' Use your Cultist Acolyte's Hood |use Cultist Acolyte's Hood##44784
.' Become disguised as a cultist |havebuff Ability_Rogue_MasterOfSubtlety |q 13403
step
goto 44.4,76.2
.talk 32239
..' Tell him you're ready and follow him into the cathedral
.' Watch the cutscene
.' See Tirion's Gambit |goal Tirion's Gambit |q 13403/1
step
goto 42.8,78.8|n
.' Click the Escape Portal that appears after the cutscene |goto Icecrown,80.2,70.3,0.5 |noway |c
step
goto 79.8,71.8
.talk 31044
..turnin 13403
step
'Hearth to The Shadow Vault |goto Icecrown,44.0,22.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,24.8
.talk 30216
..turnin 13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Arathi Highlands",[[
author support@zygorguides.com
condition end achieved(4896)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-27)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (27-30)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Badlands",[[
author support@zygorguides.com
condition end achieved(4900)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-46)\\Badlands (44-46)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Blasted Lands",[[
author support@zygorguides.com
condition end achieved(4909)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Burning Steppes",[[
author support@zygorguides.com
condition end achieved(4901)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Cape of Stranglethorn",[[
author support@zygorguides.com
condition end achieved(4905)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (32-36)\\The Cape of Stranglethorn (32-36)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Duskwood",[[
author support@zygorguides.com
condition end achieved(4907)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands",[[
author support@zygorguides.com
condition end achieved(4892)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Hinterlands",[[
author support@zygorguides.com
condition end achieved(4897)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-31)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (31-34)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Loch Modan",[[
author support@zygorguides.com
condition end achieved(4899)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn",[[
author support@zygorguides.com
condition end achieved(4906)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-32)\\Northern Stranglethorn (26-32)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Redridge Mountains",[[
author support@zygorguides.com
condition end achieved(4902)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (15-16)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Searing Gorge",[[
author support@zygorguides.com
condition end achieved(4910)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (46-49)\\Searing Gorge (46-49)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows",[[
author support@zygorguides.com
condition end achieved(4904)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Western Plaguelands",[[
author support@zygorguides.com
condition end achieved(4893)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Westfall",[[
author support@zygorguides.com
condition end achieved(4903)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-14)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (14-15)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Eastern Kingdoms 1-60\\Wetlands",[[
author support@zygorguides.com
condition end achieved(4898)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (21-23)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (23-25)"
leechsteps "Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (25-26)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Ashenvale",[[
author support@zygorguides.com
condition end achieved(4925)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Bloodmyst Isle",[[
author support@zygorguides.com
condition end achieved(4926)
step
goto Azuremyst Isle,49.40,51.0
.talk 17232
..accept 9538
step
'Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
.' Read the Stillpine Furbolg Language Primer |q 9538/1
step
goto 49.4,51.0
.clicknpc Totem of Akida##17360
..turnin 9538
..accept 9539
step
goto 55.2,41.7
.' Follow Stillpine Ancestor Akida as he runs up the hill
.clicknpc Totem of Coo##17361
..turnin 9539
..accept 9540
|modelnpc Stillpine Ancestor Akida##17379
step
goto 55.6,41.6
.' Follow Stillpine Ancestor Coo to the edge of the cliff
.' He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540
|modelnpc Stillpine Ancestor Coo##17391
step
goto Azuremyst Isle,64.5,39.8
.clicknpc Totem of Tikti##17362
..turnin 9540
..accept 9541
step
goto 63.8,40.2
.' Follow Stillpine Ancestor Tikti to the river
.' He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541
|modelnpc Stillpine Ancestor Tikti##17392
step
goto Azuremyst Isle,63,67.9
.clicknpc Totem of Yor##17363 |tip It is underwater.
..turnin 9541
..accept 9542
step
goto 61.0,69.5
.' Follow Stillpine Ancestor Yor out of the water
.' He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542
|modelnpc Stillpine Ancestor Yor##17393
step
goto Azuremyst Isle,28.1,62.4
.' Follow Stillpine Ancestor Yor as he runs
.clicknpc Totem of Vark##17364
..turnin 9542
..accept 9544
|modelnpc Stillpine Ancestor Yor##15926
step
goto Azuremyst Isle,28.5,66.4
.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
.collect Bristlelimb Key##23801 |n
.click Bristlelimb Cage##1787
.' Free 8 Stillpine Captives |q 9544/1
step
goto Azuremyst Isle,49.41,51.0
.talk 17114
..turnin 9544
..accept 9559
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9559
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Darkshore",[[
author support@zygorguides.com
condition end achieved(4928)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Desolace",[[
author support@zygorguides.com
condition end achieved(4930)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (33-35)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (35-37)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Dustwallow Marsh",[[
author support@zygorguides.com
condition end achieved(4929)
#include "Dustwallow_Marsh"
step
goto Dustwallow Marsh,68.2,48.6
.talk 4944
..accept 27425
step
goto 66.3,49.0
.talk 4968
..accept 27240
step
goto 66.6,45.2
.talk 6272
.home Theramore Isle
step
goto 71.5,56.3 |n
.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,85.8,31.7
.talk 29611
..turnin 27240
..accept 27241
step
'Hearth to Theramore Isle |goto Dustwallow Marsh,66.6,45.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Dustwallow Marsh,66.3,49.0
.talk 4968
..turnin 27241
step
goto 46.6,24.6
.talk 23568
..turnin 27425
..accept 27426
..accept 27427
step
goto 42.9,14.3
.from Grimtotem Elder##23714+
.collect 4 Grimtotem Note##33050 |n
.' Click the Grimtotem Notes |use Grimtotem Note##33050
.get Grimtotem Battle Plan |q 27426/1
.' Click Blackhoof Armaments |tip They look like wooden racks with weapons laying on them around this area.
.get 7 Blackhoof Armaments |q 27427/1
step
goto 46.6,24.6
.talk 23568
..turnin 27426
..turnin 27427
..accept 27428
step
goto 46.0,57.1
.talk 6546
..turnin 27428
..accept 27429
step
goto 47.4,47.5
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the East Tent |q 27429/3
step
goto 47.2,46.6
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the Northeast Tent |q 27429/2
step
goto 46.6,46.0
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the North Tent |q 27429/1
step
goto 46.0,57.1
.talk 6546
..turnin 27429
..accept 27430
step
goto 68.2,48.6
.talk 4944
..turnin 27430
..accept 27291
step
goto 63.7,42.8
.' Use your Wreath next to the Hyal Family Monument |use Wreath##33082 |tip It looks like a tombstone.
.' Lay the Wreath at the Hyal Monument |q 27291/1
step
goto 68.2,48.6
.talk 4944
..turnin 27291
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Felwood",[[
author support@zygorguides.com
condition end achieved(4931)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (48-49)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (49-51)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Feralas",[[
author support@zygorguides.com
condition end achieved(4932)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Feralas (37-41)\\Feralas (37-41)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Silithus",[[
author support@zygorguides.com
condition end achieved(4934)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Silithus (55-56)\\Silithus (55-56)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Stonetalon Mountains",[[
author support@zygorguides.com
condition end achieved(4936)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (27-33)\\Stonetalon Mountains (27-33)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Southern Barrens",[[
author support@zygorguides.com
condition end achieved(4937)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (33-35)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (35-37)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Tanaris",[[
author support@zygorguides.com
condition end achieved(4935)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (45-47)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (47-48)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Thousand Needles",[[
author support@zygorguides.com
condition end achieved(4938)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Un'Goro Crater",[[
author support@zygorguides.com
condition end achieved(4939)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Kalimdor 1-60\\Winterspring",[[
author support@zygorguides.com
condition end achieved(4940)
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)"
leechsteps "Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Hellfire Peninsula",[[
author support@zygorguides.com
condition end achieved(1189)
startlevel 00.00
dynamic on
#include "Hellfire_Peninsula"
step
goto Hellfire Peninsula,68.3,28.6
.talk 20793
..accept 10394
step
goto 65.9,31.9
.kill 10 Gan'arg Servant##16947+ |q 10394/1
.kill Razorsaw##20798 |q 10394/2
step
goto 68.3,28.6
.talk 20793
..turnin 10394
..accept 10396
step
goto 64.1,33.0
.kill 3 Fel Cannon MKI##22461+ |q 10396/1
step
goto 68.3,28.6
.talk 20793
..turnin 10396
..accept 10397
step
goto 53.1,26.5
.kill Warbringer Arix'Amal##19298 |q 10397/1
..get Burning Legion Gate Key |q 10397/3
.' Kill Warbringer Arix'Amal
.get Burning Legion Missive|n
.' Click the Burning Legion Missive |use Burning Legion Missive##29588
..accept 10395
step
goto 53.0,27.5
.' Click the Rune of Spite
.' Close the Burning Legion Gate |q 10397/2
step
goto 51.3,30.5
.talk 16915
..accept 10236
step
goto 47.5,42.0
..get 6 Shredder Spare Parts##28554 |q 10236/1
..' They look like boxes on the ground around this area
step
goto 51.3,30.5
.talk 16915
..turnin 10236
..accept 10238
step
goto 45.1,41.1
.' Click the cage to free Manni |q 10238/1
step
goto 46.4,45.2
.' Click the cage to free Moh |q 10238/2
step
goto 47.5,46.6
.' Click the cage to free Jakk |q 10238/3
step
goto 51.3,30.5
.talk 16915
..turnin 10238
..accept 10629
.' Use your Felhound Whistle |use Felhound Whistle##30803
step
goto 48.2,30.7
.kill Deranged Helboar##16863+ |n
.' Click the Felhound Poo
..get Shredder Keys|q 10629/1
step
goto 51.3,30.5
.talk 16915
..turnin 10629
..accept 10630
step
goto 51.6,31.8|n
.' Enter the mine |goto 51.6,31.8,0.1 |noway |c
step
goto 54.0,31.7
.kill Urga'zz##18976 |q 10630/1
step
goto 51.6,31.8|n
.' Leave the mine |goto 51.6,31.8,0.2 |noway |c
step
goto 51.3,30.5
.talk 16915
..turnin 10630
step
goto 68.3,28.6
.talk 20793
..turnin 10397
step
goto 56.7,66.5
.talk 16839
..turnin 10395
step
goto 54.7,62.3
.talk 16822
.' Fly to the Temple of Telhamat |goto 25.1,37.2,0.5 |c
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus##19188+ |q 10132/1
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
.from Goliathon|n
.' Revitalize Fallen Sky Ridge |q 10351/1
step
goto 16.0,51.6
.talk 19294
 ..turnin 10351
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Zangarmarsh",[[
author support@zygorguides.com
condition end achieved(1190)
startlevel 00.00
dynamic on
leechsteps "Zygor's Alliance Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Terokkar Forest",[[
author support@zygorguides.com
condition end achieved(1191)
startlevel 68.97
dynamic on
step
'You must complete the Terokkar Forest Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Terokkar Forest (64-65)")
.' Skip to the next step in the guide
step
goto Shattrath City,48.2,18.7
.talk 22429
..accept 10917
step
goto 58.0,15.2
.talk 19045
..accept 10180
step
goto Terokkar Forest,50.2,17.4
.from Shienor Talonite##18449+, Shienor Sorcerer##18450+
.get 30 Arakkoa Feather |q 10917/1
step
goto 58.0,53.4
.talk 18704
..accept 10035
step
goto 43.3,51.7
.from Trachela##21515 |tip It's a big two-headed white bird that flies around this area.
.collect Trachela's Carcass##30618 |q 10035
step
goto 37.0,49.5
.talk 18675
..accept 10030
step
goto 32.4,56.5
.' Click Restless Bones |tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
.get 10 Restless Bones |q 10030/1
step
goto 26.9,55.6
.' Use Trachela's Carcass next to Torgos's Bane |use Trachela's Carcass##30618 |tip It's a big blue-glowing bird scarecrow.
.from Torgos##18707
.get Tail Feather of Torgos |q 10035/1
step
goto 31.2,52.7 |n
.' Enter the crypt |goto 31.2,52.7,0.5 |noway |c
step
goto 30.6,49.1
.talk 22377
..accept 10887
step
goto 33.8,51.6 |n
.' Protect Akuno and escort him to this spot |goto 33.8,51.6,0.5 |noway |c |q 10887
.' Help Akuno find his way to the Refugee Caravan |q 10887/1
step
goto 38.1,51.8
.talk 22370
..turnin 10887
step
goto 37.5,50.8
.talk 22278
..accept 10842
step
goto 47.0,55.4 |n
.' Follow the path down into the Tomb of Light |goto 47.0,55.4 |c
step
.' Kill Vengeful Souls inside the Tomb of Light
..goal 5 Vengeful Draenei Slain |q 10842/1
step
goto 47.0,55.4 |n
.' Exit the Tomb of Lights |goto 47.0,55.4 |c
step
goto 37.3,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 37.3,65.6,0.5 |noway |c
step
goto 35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10030
..accept 10031
..turnin 10227
..accept 10228
step
goto 37.3,65.6 |n
.' Go outside and fly from this spot |goto 37.3,65.6,0.5 |noway |c
step
goto 31.7,64.9
.kill 10 Lost Spirit##18460+ |q 10031/1
step
goto 31.0,76.2
.talk 22481
..accept 10929
step
goto 31.1,76.5
.talk 22456
..accept 10877
step
goto 31.4,75.7
.talk 22364
..accept 10873
step
goto 37.6,77.3
.' Use your Fumper while standing on the ground |use Fumper##31810 |tip You can just keep using it in the same spot, it doesn't matter.
.from Mature Bone Sifter##22482+
.get 8 Mature Bone Sifter Carcass |q 10929/1
step
goto 31.0,76.2
.talk 22481
..turnin 10929
..accept 10930
step
goto 40.1,77.5
.kill 10 Broken Skeleton##16805+ |q 10031/2
.' You can find more around [48.2,71.9]
step
goto 43.9,76.4
.' Collect Restless Bones from the ground as you travel
.' Click the Massive Treasure Chest
..get the Dread Relic |q 10877/1
step
goto 48.0,75.1
.from Decrepit Clefthoof##22105+
.' Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825 |tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
.from Hai'shulud##22038
.get Enormous Bone Worm Organs |q 10930/1
step
goto 49.7,76.2
.talk 22462
..accept 10920
step
goto 52.6,78.5
.kill 20 Dreadfang Widow##18467+ |q 10920/1
.' Break the Netherweb Victim pods
..goal 6 Sha'tar Warrior Freed |q 10873/1
step
goto 49.7,76.2
.talk 22462
..turnin 10920
..accept 10921
step
goto 54.2,81.7
.kill Terokkarantula##20682 |q 10921/1
step
goto 49.7,76.2
.talk 22462
..turnin 10921
..accept 10926
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 42.1,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 42.1,65.6,0.5 |noway |c
step
goto Terokkar Forest 44.9,65.6 |n
.' Enter Sethekk Halls here. |goto Sethekk Halls |noway |c
step
goto 72.2,35.5
.talk 18933
..turnin 10180
step
goto Terokkar Forest,42.1,65.6 |n
.' Go outside and fly from this spot |goto 42.1,65.6,0.5 |noway |c
step
goto 31.4,75.7
.talk 22364
..turnin 10926
step
goto 31.1,76.5
.talk 22456
..turnin 10877
..accept 10923
step
goto 31.0,76.2
.talk 22481
..turnin 10930
step
goto 37.0,49.5
.talk 18675
..turnin 10031
step
goto 37.5,50.8
.talk 22278
..turnin 10842
step
goto 58.0,53.4
.talk 18704
..turnin 10035
step
goto 50.0,67.8
.from Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
.collect 20 Doom Skull##31812 |q 10923
step
goto 48.7,67.2
.' Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811 |tip It looks like a purple glowing symbol on the ground.
.kill Teribus the Cursed##22441+ |q 10923/1
step
goto 31.1,76.5
.talk 22456
..turnin 10923
step
goto 31.4,75.7
.talk 22364
..turnin 10873
step
goto Shattrath City,53.7,32.6
.talk 19715
..turnin 10228
step
goto 52.6,21.0
.talk 22292
..turnin 10898
step
goto 50.3,18.3
.talk 22429
..turnin 10917
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Nagrand",[[
author support@zygorguides.com
condition end achieved(1192)
startlevel 00.00
dynamic on
step
'You must complete the Nagrand Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Nagrand (65-67)")
.' Skip to the next step in the guide
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9856
step
goto 71.4,40.6
.talk 18218
..accept 9859
step
goto 71.5,40.8
.talk 18180
..accept 9851
step
goto 54.2,70
.talk 18416
..accept 9982
step
goto 55.4,68.8
.talk 18183
..accept 9954
step
goto 59.8,23.2
.talk 18099
..accept 9853
step
goto 47.0,23.8
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.collect 7 Warmaul Skull##24502 |q 9853
step
goto 42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9977/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
step
goto 29.1,25.0
.' Use your Warmaul Skulls in this big purple circle |use Warmaul Skull##24502 |tip It's on a high plateau.
.from Gurok the Usurper##18182
.get Gurok's Earthen Head |q 9853/1
step
goto 31.5,31.4
.from Gutripper##18257 |tip He's a big black bird that flies around this area.
.get Eye of Gutripper |q 9856/1
step
goto 27.0,23.6
.' Enter the cave |goto 27.0,23.6 |noway |c
step
goto 29.5,26.0
.talk 18445
..turnin 9954
..accept 9955
step
goto 27.0,23.6
.' Leave the cave |goto 27.0,23.6 |noway |c
step
goto 27.6,11.3 |n
.' Enter the cave |goto 27.6,11.3,0.5 |noway |c
step
goto 25.9,13.7
.' Follow the path up inside the cave
.from Cho'war the Pillager##18423
..collect Cho'war's Key##25648
step
goto 27.6,11.3 |n
.' Leave the cave |goto 27.6,11.3,0.5 |noway |c
step
goto 27.0,23.6
.' Enter the cave |goto 27.0,23.6 |noway |c
step
goto 29.5,26.0
.' Click Corki's cage and set him free |q 9955/1
step
goto 27.3,43.1
.talk 18417
..turnin 9982
..accept 9991
step
'You will fly off on a nether drake:
.' Survey the Forge Camps |q 9991/1
step
goto 27.3,43.1
.talk 18417
..turnin 9991
..accept 9999
step
goto 25.2,38.3
.kill 2 Felguard Legionnaire##17152+ |q 9999/1
.kill 3 Mo'arg Engineer##16945+ |q 9999/2
.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto 23.6,34.6
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto 25.8,53.8
.from Bach'lor##18258 |tip He is a talbuk that walks around following these points:
.get Hoof of Bach'lor |q 9859/1
.' Point 1:  [25.8,53.8]
.' Point 2:  [24.0,44.0]
.' Point 3:  [28.8,34.6]
.' Point 4:  [30.8,36.6]
step
goto 33.2,42.3
.from Murkblood Brute##18211+
.talk 18209
..accept 9879
.' Escort and protect the Kurenai Captive
.' Free the Kurenai Captive |q 9879/1
step
goto 40.8,61.1
.from Banthar##18259 |tip He's a huge clefthoof that walks around this area, so you may need to search for him.
.get Horn of Banthar |q 9851/1
step
goto 39.9,57.6
.from Murkblood Invader##18238+ |tip They are a group of 3 riding on elephants.  They walk on this road back and forth, so you may need to search for them.
.collect Murkblood Invasion Plans##24559 |n
.' Click the Murkblood Invasion Plans in your bags |use Murkblood Invasion Plans##24559
..accept 9871
step
goto 55.5,68.7
.talk 18183
..turnin 9955
..turnin 9879
..turnin 9871
step
goto 55.4,68.8
.talk 18183
..accept 9873
step
goto 30.9,42.4
..kill Ortor of Murkblood##18204 |q 9873/1
step
goto 55.5,68.7
.talk 18183
..turnin 9873
step
goto 61.7,67.2
.talk 19035
..accept 10111
step
goto 61.3,67.0
.' Fly up to the nest in the tree
.' Click the Mysterious Egg |tip It looks like a big white egg with light blue spots on it.
.' Attempt to Steal the Egg |q 10111/1
.from Windroc Matriarch##19055
.get Severed Talon of the Matriarch |q 10111/2
step
goto 61.7,67.2
.talk 19035
..turnin 10111
step
goto 71.6,40.5
.talk 18200
..turnin 9856
step
goto 71.4,40.6
.talk 18218
..turnin 9859
step
goto 71.5,40.8
.talk 18180
..turnin 9851
..accept 9852
step
goto 59.8,23.2
.talk 18099
..turnin 9853
step
goto Terokkar Forest,35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10227
..accept 10228
step
goto Shattrath City,77.3,34.9
.talk 18584
..' Tell him Altruis sent you
.from Sal'salabim##18584
.' Persuade Sal'salabim |q 10004/1
step
goto 77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.4
.talk 18585
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Raliq the Drunk##18585
.get Raliq's Debt |q 10009/1
step
goto Shattrath City,53.7,32.6
.talk 19715
..turnin 10228
..accept 10231
step
goto 43.6,29.7
.talk 19720
.' Tell him Ezekiel said that you might have a certain book...
.' Beat down "Dirty" Larry for information |q 10231/1
..turnin 10231
..accept 10251
step
goto Zangarmarsh,80.8,91.2
.talk 18586
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Coosh'coosh##18586
.get Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.6,58.1
.talk 18588
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Floon##18588
.get Floon's Debt |q 10009/3
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
goto Nagrand,51.8,56.8
.talk 19844
..turnin 10251
..accept 10252
step
goto Nagrand,44.5,65.4
.from Tusker##18290
.get Heart of Tusker |q 9852/1
step
goto 30.1,64.2
.from Aged Clefthoof##17133+
.get Aged Clefthoof Blubber##28668 |q 10252/3
.' They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
goto 25.2,49.1
.from Mountain Gronn##19201+
..get Mountain Gronn Eyeball |q 10252/1
.' More can be found around [26.9,30.2], up and down the ramp
step
goto 30.9,32.9
.from Greater Windroc##17129+
..get Flawless Greater Windroc Beak |q 10252/2
step
goto 27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto 25.0,36.1
.from Demos, Overseer of Hate##18535
.collect Fel Cannon Activator##25770 |q 10011
step
goto 25.1,36.0
.' Use your Fel Cannon Activator on the Fel Cannon: Hate |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from Xirkos, Overseer of Fear##18536
.collect Fel Cannon Activator##25771 |q 10011
step
goto 19.4,50.8
.' Use your Fel Cannon Activator on the Fel Cannon: Fear |use Fel Cannon Activator##25771
.' Destroy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
goto 71.5,40.8
.talk 18180
..turnin 9852
step
goto 51.8,56.9
.talk 19844
..turnin 10252
step
goto 54.7,70.9
.talk 18408
..accept 9938
step
goto 46.4,63.7
.kill Durn the Hungerer##18411 |q 9938/1 |tip He is a huge brown mobs that walks all around this area.  You will probably need to search for him.
step
goto 54.7,70.9
.talk 18408
..turnin 9938
step
goto Shadowmoon Valley,39.6,53.6
.talk 21357
..turnin 11044
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
..accept 10587
only if rep ('The Aldor') >= Neutral
step
goto Shadowmoon Valley,71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10587
..accept 10637
only if rep ('The Aldor') >= Neutral
step
goto 69.3,48.7
.from Sunfury Warlock##21503+, Sunfury Summoner##21505+
.collect Scroll of Demonic Unbanishing##30811 |q 10637
only if rep ('The Aldor') >= Neutral
step
goto 70.0,51.4
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811 |tip He's a big fat dragon, holding a huge sword.
.' Free Azaloth |q 10637/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10637
..accept 10640
only if rep ('The Aldor') >= Neutral
step
goto Shadowmoon Valley,55.7,58.2
.talk 21954
..accept 10687
only if rep ('The Scryers') >= Neutral
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
only if rep ('The Scryers') >= Neutral
step
goto 69.3,48.7
.from Sunfury Warlock##21503+, Sunfury Summoner##21505+
.collect Scroll of Demonic Unbanishing##30811 |q 10688
only if rep ('The Scryers') >= Neutral
step
goto 70.0,51.4
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811 |tip He's a big fat dragon, holding a huge sword.
.' Free Azaloth |q 10688/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
only if rep ('The Scryers') >= Neutral
step
.' Go to Nagrand |goto Nagrand
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10640 |only if rep ('The Aldor') >= Neutral
..turnin 10689 |only if rep ('The Scryers') >= Neutral
..accept 10641
..accept 10668
..accept 10669
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He is a winged demon that walks around this area, so you may need to search for him.
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
..turnin 10646
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Blade's Edge Mountains",[[
author support@zygorguides.com
condition end achieved(1193)
startlevel 00.00
dynamic on
step
'You must complete the Blade's Edge Mountains Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)")
|confirm
step
goto Blade's Edge Mountains,55.4,45.3
.talk 22995
..accept 10989
step
goto 55.5,44.9
.talk 22941
..turnin 10989
..accept 10995
..accept 10996
..accept 10997
step
goto 61.0,47.6
.from Grulloc##20216
.' Click Grulloc's Dragon Skull |tip It's a big white skull that spawns on the ground after you kill Grulloc.
.get Grulloc's Dragon Skull |q 10995/1
step
goto 64.6,54.9
.from Maggoc##20600 |tip He is a brown giant that patrols this path to the west and the east, so you will probably need to search for him.
.' Click Maggoc's Treasure Chest |tip It's a brown wooden box that spawns on the ground after you kill Maggoc.
.get Maggoc's Treasure Chest |q 10996/1
step
goto 55.5,44.9
.talk 22941
..turnin 10995
..turnin 10996
step
goto 62.2,40.1
.talk 22127
..' Ask him if he has another Felsworn Gas Mask
.collect Felsworn Gas Mask##31366 |future |q 10821
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |future |q 10821
step
goto 73.3,40.1
.' Click the Legion Communicator |tip It looks like a metal altar sitting on the ground.
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Skip to the next step in the guide
step
goto 75.3,41.7
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Skip to the next step in the guide
step
goto 73.8,41.0
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Skip to the next step in the guide
step
goto 75.4,40.6
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Skip to the next step in the guide
step
goto 74.0,39.9
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Skip to the next step in the guide
step
goto 74.3,42.5
.kill Doomcryer##19963 |q 10821/1
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
.' Use the Artillery on the Warp-Gate ability 7 times
.' Destroy the South Warp-Gate |q 10911/1
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master##19747 |q 10912/1
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
goto Terokkar Forest,20.5,17.7
.from Slaag##22199 |tip He is a brown giant inside this big round building.  You will have to fly to reach it.
.' Click Slaag's Standard |tip It's a flag hanging on a wooden pole that spawns after you kill Slaag.
.get Slaag's Standard |q 10997/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
..turnin 10997
..accept 10998
step
goto 77.5,30.5
.' Stand in this ring of fire on the ground
.from Vim'gol the Vile##22911
.' Click Vim'gol's Vile Grimoire |tip It's a red book that spawns on Vim'gol the Vile's stomach after you kill him.
.get Vim'gol's Vile Grimoire |q 10998/1
step
goto 55.5,44.9
.talk 22941
..turnin 10998
..accept 11000
step
goto 60.0,24.1
.' Use Vim'gol's Grimoire while standing on the stone table |use Vim'gol's Grimoire##32467
.from Sundered Spirit##22912+
.' Protect The Soulgrinder |tip It is a purple circular object that appears after you read Vim'gol's Grimoire.
.from Skulloc Soulgrinder##22910
.' Click Skulloc's Soul |tip It's a big green glowing orb that appears after you kill Skulloc Soulgrinder.
.get Skulloc's Soul |q 11000/1
step
goto 55.5,44.9
.talk 22941
..turnin 11000
..accept 11009
step
goto 53.3,41.2
.talk 22103
..accept 10805
step
goto 66.6,20.1
..kill Fingrom##20757 |q 10805/4
step
 goto 65.3,21.5
..kill 10 Bladespire Enforcer##19997+ |q 10805/1
..kill 5 Bladespire Battlemage##19996+ |q 10805/2
..kill 5 Bladespire Ravager##20729+ |q 10805/3
step
goto 53.3,41.2
.talk 22103
..turnin 10805
..accept 10806
step
goto 64.2,18.5
.' Use your Sablemane Signet here |use Sablemane's Signet##31808
..kill Goc##20555 |q 10806/1
step
goto 53.3,41.2
.talk 22103
..turnin 10806
step
goto 28.8,57.4
.talk 23233
..turnin 11009
..accept 11025
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
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
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11058
step
goto 27.7,68.1
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11058/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11080
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11030
step
goto 32.8,40.5
.' Click a Fel Crystalforge |tip It looks like a metal machine with green bubbling floating out of it quickly.
..' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
..accept 11061
step
goto 28.8,57.4
.talk 23233
..accept 11062
step
goto 27.4,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.4,52.7
.talk 23334
..accept 11119
step
goto 27.9,52.2
.talk 23473
..turnin 11119
step
goto 28.0,51.5
.talk 23335
..accept 11065
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11065/1
step
goto 28.8,57.4
.talk 23233
..accept 11059
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11059
step
goto 31.8,63.8
.' Click the Apexis Monument |tip It's a huge floating crystal that changes colors.
..' Insert 35 Apexis Shards, and begin!
.' Click any of the 4 big colored buttons on the ground |tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
.from Apexis Guardian##22275
.get Apexis Guardian's Head |q 11059/1
step
goto 28.8,57.4
.talk 23233
..turnin 11059
step
goto 28.0,51.5
.talk 23335
..turnin 11065
step
goto 27.4,52.7
.talk 23334
..accept 11078
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11078
step
goto 27.2,64.8
.' Click Rivendark's Egg |tip It looks like a big brown spiked egg sitting in a nest on the ground.
..' Place 35 Apexis Shards near the dragon egg to crack it open
.from Rivendark##23061
.get Dragon Teeth |q 11078/1
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11061
step
goto 27.4,52.7
.talk 23334
..turnin 11078
step
goto 54.4,10.8
.' Click the Bash'ir Crystalforge |tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
..' Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
.get Unstable Flask of the Sorcerer |q 11061/1
step
goto 28.4,57.6
.talk 23316
..turnin 11061
step
goto 28.5,58.1
.talk 23300
..accept 11079
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11079
step
goto 33.9,44.2
.' Click the Fel Crystal Prism |tip It's a big green crystal floating in green smoke above 4 metal vents.
..' Place 35 Apexis Shards into the prism
.' There are 4 different demons that can spawn:
.from Mo'arg Incinerator##23354
.from Braxxus##23353
.from Galvanoth##22281
.from Zarcsin##23355
.get Fel Whip |q 11079/1
step
goto 28.5,58.1
.talk 23300
..turnin 11079
step
goto 28.8,57.4
.talk 23233
..accept 11091
step
goto 28.1,58.7
.talk 23428
..turnin 11091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Netherstorm",[[
author support@zygorguides.com
condition end achieved(1194)
startlevel 00.00
dynamic on
step
'You must complete the Netherstorm Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Netherstorm (68-70)")
|confirm
step
goto Netherstorm,57.5,86.4
.talk 19488
..accept 10320
step
goto 58.3,86.4
.talk 19481
..accept 10256
step
goto 62.8,78.9
..kill Naberius##20483 |q 10320/1
step
goto 51.9,70.7
.from Apex##19940+ |He is a giant with purple crystals on his back who patrols around this area. Some searching may be required.
..collect Apex's Crystal Focus##28786 |q 10256
step
goto 57.5,86.4
.talk 19488
..turnin 10320
step
goto 58.4,86.3
.' Use Apex's Crystal Focus next to Archmage Vargoth's Orb |use Apex's Crystal Focus##28786
.' Discover the Keymaster's identity |q 10256/1
step
goto 58.3,86.4
.talk 19481
..turnin 10256
step
goto 46.7,56.9
.talk 20066
..accept 10311
step
goto 48.1,63.5
.talk 20281
..turnin 10311
..accept 10310
step
.' Escort Drijya while he sabotages the warp-gate.
.' Burning Legion warp-gate sabotaged |q 10310/1
step
goto 46.7,56.9
.talk 20066
..turnin 10310
step
goto 45.9,36.0
.talk 20084
..accept 10268
step
goto 32.7,65.0
.talk 19570
..turnin 10237
..accept 10247
step
goto 37.3,63.7
.talk 19832
..turnin 10247
..accept 10248
step
goto 37.4,63.7
.' Use Scrap Reaver X6000 Controller |use Scrap Reaver X6000 Controller##28634
.from Negatron##19851+
.' Complete the Scrap Reaver X6000 Test |q 10248/1
step
goto Netherstorm,37.3,63.8
.talk 19832
..turnin 10248
..accept 10249
step
goto 32.1,64.7
.' Click the Wanted Poster |It is a wooden poster just outside of the inn.
..accept 10261
..accept 10701
step
goto 32.0,64.2
.talk 19467
..accept 10323
..accept 10407
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.1
.talk 19468
..accept 10365
.talk 19469
..accept 10202
only if rep ('The Scryers') >= Neutral
step
goto 20.4,68.9
.from Arcane Annihilator##18856 |tip He is a gold elite robot that patrols around Manaforge B'naar. Some searching may be required.
..get Annihilator Servo |q 10261/1
step
goto 19.2,74.6
.kill Netherock##20772 |q 10701/1 |tip He is a giant with purple crystals on his back who spawns here and walks southeast along the cliff edge near Manaforge B'naar.
step
goto 32.7,65.0
.talk 19570
..turnin 10701
step
goto 33.0,64.7
.talk 19645
..turnin 10261
step
.' Go inside of Manaforge Ara to [26.7,36.8] |goto 26.7,36.8
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10323/2
only if rep ('The Aldor') >= Neutral
step
goto 26.0,38.8
.' Click the Ara Control Console
.' Click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |goal Manaforge Duro Shut Down |q 10323/1
only if rep ('The Aldor') >= Neutral
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10407/1
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10407/2
step
goto 32.0,64.2
.talk 19467
..turnin 10323
..turnin 10407
..accept 10410
step
'Hearth to The Stormspire |goto Netherstorm,43.4,36.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.0,36.0
.talk 20067
..accept 10290
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 44.5,21.6
.from Farahlon Breaker##18886+ |tip If you're careful you can avoid having to fight the Farahkib Shardlings
..get 4 Raw Farahlite |q 10290/1
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 60.1,31.7
.talk 20907
..turnin 10438
..accept 10439
step
goto 60.6,32.1
.talk 20985
.' Speak to Captain Saeed |q 10439/2
.' Tell him, "Let's go!"
step
.' Follow Captain Saeed and his men to 60.8,39.3 |goto 60.8,39.3
.talk 20985
.' Tell him, "I am ready"
..kill Dimensius the All-Devouring##19554 |q 10439/1
step
goto 60.1,31.7
.talk 20907
..turnin 10439
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..accept 10408
step
goto 53.7,42.4
.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
..kill Nexus-King Salhadaar##20454+ |q 10408/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10408
step
goto 44.1,36.1
.talk 20067
..turnin 10290
..accept 10293
step
goto 45.9,36.0
.talk 20084
..turnin 10276
..accept 10280
step
goto Netherstorm 45.8,36.3
.talk 22899
..accept 10969
step
goto 59.5,32.4
.talk 20448
..turnin 10969
..accept 10970
step
goto 49.7,17.5
.from Cragskaar##20202
.get Farahlite Core |q 10293/1
step
goto 44.1,36.0
.talk 20067
..turnin 10293
step
|fly Shattrath
step
goto Shattrath City 54.1,44.9
.talk 18481
..turnin 10280
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Outland 60-70\\Shadowmoon Valley",[[
author support@zygorguides.com
condition end achieved(1195)
startlevel 68.97
dynamic on
step
'You must complete the Shadowmoon Valley Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Alliance Leveling Guides\\Outland 60-70\\Shadowmoon Valley (68-70)")
|confirm
step
goto Shadowmoon Valley,38.2,54.0
.' Click the Wanted Poster |tip It looks like a wooden poster attached to the wall as you enter Wildhammer Stronghold.
..accept 10648
step
goto 36.3,57.1
.talk 21773
..accept 10772
step
goto 47.5,57.2
.talk 21293
..accept 10578
step
goto 51.3,62.9
.' Discover the Path of Conquest |q 10772/1
step
'Use your Wildhammer Flare Gun in your bag |use Wildhammer Flare Gun##31310
.talk 22059
..turnin 10772
..accept 10773
step
goto 51.7,65.0
.kill 20 Eclipsion Soldier##22016+ |q 10773/1
.kill 10 Eclipsion Cavalier##22018+ |q 10773/2
.kill 10 Son of Corok##19824+ |q 10773/3
step
'Use your Wildhammer Flare Gun |use Wildhammer Flare Gun##31310
.talk 22059
..turnin 10773
..accept 10774
step
goto 52.9,69.8
.kill Corok the Mighty##22011 |q 10774/2 |tip Be careful to avoid the patrolling mobs.
.kill Chancellor Bloodleaf##22012 |q 10774/1
.get Illidan's Command |q 10774/3
step
'Use your Wildhammer Flare Gun |use Wildhammer Flare Gun##31310
.talk 22059
..turnin 10774
..accept 10775
step
goto 51.7,65.0
.from 20 Eclipsion Soldier##22016+, Eclipsion Cavalier##22018, Eclipsion Spellbinder##22017+
.get 10 Illidari Tabard |q 10775/1
step
'Use your Wildhammer Flare Gun |use Wildhammer Flare Gun##31310
.talk 22059
..turnin 10775
..accept 10776
step
goto 41.9,69.1
.' Use your Enchanted Illidari Tabard |use Enchanted Illidari Tabard##31279
.from Crazed Colossus##19823+
.' Slay 5 Crazed Colossus while in disguise |q 10776/1
step
goto 36.2,56.9
.talk 21773
..turnin 10776
step
goto 23.0,35.3
.from Overseer Ripsaw##21499
.collect Illidari-Bane Shard##30756 |n
.' Use the Illidari-Bane Shard in your bags |use Illidari-Bane Shard##30756
..accept 10621
step
goto 36.8,54.8
.talk 19370
..turnin 10621
..accept 10626
step
goto 25.2,33.4
.from Makazradon##21501 |tip He is a giant winged demon who walks around Legion Hold, so you may need to search for him.
.get Makazradon's Glaive |q 10626/1
step
goto 22.9,38.3
.from Morgroron##21500 |tip He is a giant winged demon who walks around Legion Hold, so you may need to search for him.
.get Morgroron's Glaive |q 10626/2
step
goto 36.8,54.8
.talk 19370
..turnin 10626
..accept 10662
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10662
step
goto Shadowmoon Valley,54.9,49.3
.from Uvuros##21102
.get Uvuros' Fiery Mane |q 10648/1
step
goto 61.4,57.0
.from Ruul the Darkener##21315 |tip He patrols around Netherwing Fields so you may need to search for him.
.get Third Fragment of the Cipher of Damnation |q 10578/1
step
goto 63.5,60.9
.talk 21657 |tip He is flying high above Netherwing Fields, you may need to search for him.
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked##11980 |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.click Zuluhed's Chains##181
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
'Karynaku will fly you back to the Netherwing Fields |goto 59.5,58.7,0.3 |noway |c
step
goto 59.3,58.7
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
step
goto 58.2,70.8
.talk 21797
..accept 10636
..accept 10634
step
goto 69.8,85.9
.' Equip the Spectrecles in your bags |equipped Spectrecles##30721 |use Spectrecles##30721
.from Vhel'kur##21801 |tip He is a dragon flying around in the sky. If he does not show up as attackable try unequiping and re-equipping your Spectrecles. You will need to stand on the tallest hill and pull him to you. If you can't reach him you may need to ask someone for help.
.get Gorefiend's Armor |q 10634/1
.' You can get a new pair of Spectrecles from Zorus the Judicator here: [37.1,56.3]
step
goto 58.3,70.8
.talk 21797
..turnin 10634
step
 goto 52.5,57.3
.' Equip the Spectrecles in your bags |equipped Spectrecles##30721 |use Spectrecles##30721
.' Starting from this bridge, follow the main road clockwise around Shadowmoon Valley
.from Ghostrider of Karabor##21784 |tip You will only be able to see them if you have your Spectrecles equipped.
.get Gorefiend's Truncheon |q 10636/1
step
goto 58.2,70.8
.talk 21797
..turnin 10636
..accept 10645
step
goto 58.2,70.8
.' Use the abilities on your action bar to do the following:
.from Karsius the Ancient Watcher##21877
.' Slay Karsius the Ancient Watcher |q 10645/1
step
goto 47.5,57.2
.talk 21293
..turnin 10578
..accept 10579
step
goto 38.3,54.0
.talk 21775
..turnin 10648
step
goto 37.1,56.5
.talk 21774
..turnin 10645
step
'Hearth to Altar of Sha'tar |goto Shadowmoon Valley,61.1,28.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 53.9,23.5
.talk 21183
..turnin 10579
..accept 10588
step
goto 43.1,44.9
.' Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
.' Go to [42.8,44.7]
.talk 21183 |tip It may take a minute or so for him to show up.
..' Tell him you are ready.
.' Follow Oronok Torn-heart
.kill Cyrukh the Firelord##21181 |q 10588/1
step
goto 42.2,45.1
.talk 21024
..turnin 10588
step
goto 53.3,59.0
.from Val'zareq the Conqueror##21979 |tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
.collect The Journal of Val'zareq##31345 |n
.' Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
..accept 10793
step
goto 51.4,72.8
.' Click the Crystal Prison |tip It looks like a big green floating crystal.
..turnin 10793
step
goto 69.9,61.5
.talk 22112
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked##11980 |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
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
..accept 11012 |instant |tip You need to have Artisan riding skill to start this quest.
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Borean Tundra",[[
author support@zygorguides.com
condition end achieved(33)
leechsteps "Zygor's Alliance Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Howling Fjord",[[
author support@zygorguides.com
condition end achieved(34)
leechsteps "Zygor's Alliance Leveling Guides\\Northrend 70-80\\Howling Fjord (70-72)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Dragonblight",[[
author support@zygorguides.com
condition end achieved(35)
step
'You must complete the Dragonblight Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
.' Skip to the next step in the guide
step
goto Dragonblight,60.0,55.2
.talk 26983
..accept 12149
step
goto 67.4,70.2
.kill Bloodfeast##27008 |q 12149/2 |tip He walks around this area next to the tall cliffs.
step
goto 67.0,50.4
.kill Iceshatter##27007 |q 12149/1 |tip He walks around this frozen lake looking area.
step
goto 67.6,38.8
.kill Drakegore##27009 |q 12149/3 |tip He walks back and forth along this small ledge.
step
goto 60.0,55.2
.talk 26983
..turnin 12149
..accept 12148
step
goto 52.2,60.6
.from Bonesunder##27006
.get Emblazoned Battle Horn |q 12148/1
step
goto 60.0,55.2
.talk 26983
..turnin 12148
..accept 12150
step
.goto 72.8,50.0
.from Dregmar Runebrand##27003 |tip He will either be inside this small cave or walking around in front of it.
.' Hear the Name of the Magnataur Warlord |q 12150/1 |tip You only have to fight him until he is at 20% health.
step
goto 60.0,55.2
.talk 26983
..turnin 12150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Grizzly Hills",[[
author support@zygorguides.com
condition end achieved(37)
leechsteps "Zygor's Alliance Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Zul'Drak",[[
author support@zygorguides.com
condition end achieved(36)
step
'You must complete the Zul'Drak Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
.' Skip to the next step in the guide
step
goto Zul'Drak,58.1,72.0
.talk 28283
..accept 12554
step
goto 61.0,78.0
.from Malas the Corrupter##28255
.get Head of the Corrupter |q 12554/1
step
goto 58.1,72.0
.talk 28283
..turnin 12554
step
goto 59.5,58.1
.talk 28479
..accept 12729
step
goto 72.6,58.0
.from Altar Warden##28784+
.get Gusty Essence of the Warden |q 12729/2
step
goto 58.3,46.6
.from Guardian of Zim'Rhuk##28597+
.get Unblemished Heart of the Guardian |q 12729/1
step
goto 70.0,21.0
.talk 33025
..accept 13556
step
goto 71.5,21.0
.from Gundrak Raptor##29334+
.' Click Gundrak Raptor Eggs |tip They look like small brown-ish eggs on the ground around this area.
.get 12 Gundrak Raptor Egg |q 13556/1
step
goto 70.0,21.0
.talk 33025
..turnin 13556
step
goto 60.3,57.8
.talk 28401
..turnin 12729
step
goto 48.4,56.4
.talk 30007
..accept 12954
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12954
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Sholazar Basin",[[
author support@zygorguides.com
condition end achieved(39)
leechsteps "Zygor's Alliance Leveling Guides\\Northrend 70-80\\Sholazar Basin (77-78)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\The Storm Peaks",[[
author support@zygorguides.com
condition end achieved(38)
leechsteps "Zygor's Alliance Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Northrend 70-80\\Icecrown",[[
author support@zygorguides.com
condition end achieved(40)
map Icecrown
step
'You must complete the Icecrown Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
.' Skip to the next step in the guide
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..accept 13294
..accept 13346
step
goto 67.8,58.0
.from Pustulent Horror##31139+
.get 5 Pustulant Spine |q 13294/1
step
goto 51.9,32.9 |n
.' Enter this huge doorway |goto 51.9,32.9,0.5 |noway |c
step
goto 50.5,30.0
.' Click Alumeth's Skull |tip It looks like a metal chest with a white skull on the front of it, sitting on the ground next to the wall.
.collect Alumeth's Skull##44476 |q 13346
step
goto 52.8,30.7
.' Click Alumeth's Heart |tip It looks like a metal chest with a white skull on the front of it, sitting on the ground next to long table.
.collect Alumeth's Heart##44477 |q 13346
step
goto 52.8,29.8
.' Click Alumeth's Scepter |tip It looks like a metal chest with a white skull on the front of it, sitting on the ground next to long table.
.collect Alumeth's Scepter##44478 |q 13346
step
goto 53.0,29.0
.' Click Alumeth's Robes |tip It looks like a metal chest with a white skull on the front of it, sitting on the ground next to long table.
.collect Alumeth's Robes##44479 |q 13346
step
'Use Alumeth's Skull |use Alumeth's Skull##44476
.collect Alumeth's Remains##44480 |q 13346
step
goto 51.9,28.7
.' Use Alumeth's Remains next to this huge crystal |use Alumeth's Remains##44480
.from Alumeth the Ascended##32300
.' Defeat Alumeth the Ascended |q 13346/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13294
..accept 13295
..turnin 13346
..accept 13298
..accept 13337
step
goto 45.5,46.5
.' Use your Rune of Distortion next to Grimkor's Orb |use Rune of Distortion##44186 |tip It's a green winged pedastal with a blinking orb sitting on it, sitting on this high platform.
.kill Grimkor the Wicked##32162 |q 13337/1
step
goto 63.2,62.1 |n
.' Enter this huge doorway |goto 63.2,62.1,0.5 |noway |c
step
goto 60.7,62.2
.from Coprous the Defiled##31198
.' Defeat Coprous the Defiled |q 13298/1
step
goto 61.5,63.8
.' Use your Pustulant Spinal Fluid next to the Plague Cauldron |use Pustulant Spinal Fluid##44010 |tip It looks like a huge pot with bright green bubbling liquid in it.
.' Continue using your Pustulant Spinal Fluid next to the Plague Cauldron in between fights
.' Neutralize the Plague Cauldron |q 13295/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13295
..turnin 13298
..turnin 13337
..accept 13335
step
goto 47.3,63.4
.from Skeletal Reaver##32467+
.' Use your Volatile Acid on their corpses |use Volatile Acid##44653
.' Dissolve 6 Skeletal Reaver Bones |q 13335/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13335
..accept 13338
..accept 13339
step
goto 49.8,66.7
.' Click the Shard of Despair |tip It looks like a big floating purple crystal above a stone pedastal on the middle layer of this bridge.
.get Broken Shard of Despair |q 13339/2
step
goto 45.8,69.5
.' Click the Shard of Suffering |tip It looks like a big floating purple crystal above a stone pedastal on the middle layer of this bridge.
.get Broken Shard of Suffering |q 13339/3
step
goto 47.8,68.1
.' Click the Shard of Despair |tip It looks like a big floating purple crystal above a stone pedastal on the top layer of this bridge.
.get Broken Shard of Horror |q 13339/1
step
goto 44.6,70.5
.kill 5 Harbinger of Horror##32278+ |q 13338/1
.kill 5 Corp'rethar Guardian##32280+ |q 13338/2
step
goto 54.1,71.2
.talk 30944
..accept 13161
..accept 13162
..accept 13163
step
goto 56.0,80.5
.kill Rokir##31160 |q 13161/1
step
goto 59.1,71.4
.kill Baelok##31159 |q 13163/1
step
goto 61.9,68.6
.kill Sapph##31161 |q 13162/1
step
goto 54.1,71.2
.talk 30944
..turnin 13161
..turnin 13162
..turnin 13163
..accept 13164
step
goto 55.2,82.7 |n
.' Go between the huge wall slots |goto 55.2,82.7,0.5 |noway |c
step
goto 54.5,86.1
.kill Orbaz Bloodbane##31283 |q 13164/1
step
goto 54.1,71.2
.talk 30944
..turnin 13164
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13338
..turnin 13339
step
goto 32.5,42.9
.talk 30232
..accept 13137
step
goto 28.7,51.9
.' Click the Battlescar Signal Fire |tip It looks like an unlit bonfire on this high platform.
.from Possessed Iskalder##30924
.' Defeat Iskalder in Battle |q 13137/1
step
goto 32.5,42.9
.talk 30232
..turnin 13137
..accept 13142
step
goto 18.2,56.4
.' Click the War Horn of Jotunheim |tip It's a big white horn at the very top of this huge building.
.kill Overthane Balargarde##31016 |q 13142/1
step
goto 32.5,42.9
.talk 30232
..turnin 13142
..accept 13213
step
goto 30.7,28.9
.talk 31135
..turnin 13213
]])
ZygorGuidesViewer:RegisterGuideSorting({
"Eastern Kingdoms 1-60",
"Kalimdor 1-60",
"Outland 60-70",
"Northrend 70-80",
"Cataclysm 80-85",
"Loremaster"})
ZygorGuidesViewer:RegisterGuideSorting({
"Dwarf (1-5)",
"Gnome (1-5)",
"Human (1-5)",
"Worgen (1-13)",
"Death Knight (55-58)"})
