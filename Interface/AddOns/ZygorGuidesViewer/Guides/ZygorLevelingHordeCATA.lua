local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Goblin (1-13)",[[
author support@zygorguides.com
condition suggested raceclass('Goblin') and not completedq(25267) and not raceclass('DEATHKNIGHT')
condition suggested !exclusive
condition end completedq(25267) or raceclass('DEATHKNIGHT')
condition valid raceclass('Goblin') !!Goblin only.
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (10-12)
startlevel 1
dynamic on
step
goto Kezan,56.4,76.9
.talk 34668
..accept 14138
step
goto 60.2,74.6
.talk 36471
..turnin 14138
..accept 14075
..accept 14069
step
goto 66.7,80.6
.clicknpc Defiant Troll##34830+
.' Adjust 8 Attitudes |q 14069/1
step
goto 74.6,83.5
.kill 8 Tunneling Worm##34865+ |q 14075/1
.' You can find more Tunneling Worms at [71.0,76.2]
step
goto 60.2,74.6
.talk 36471
..turnin 14075
..turnin 14069
..accept 25473
step
ding 2
        step
goto 56.4,76.9
.talk 34668
..turnin 25473
..accept 28349
step
goto 58.2,76.5
.talk 34874
..turnin 28349
..accept 14071
step
'Use your Keys to the Hot Rod in your bags |invehicle |c |use Keys to the Hotrod##46856
step
goto 58.1,86.0
.' Go into the big beam of white light
.' Pick up Izzy |q 14071/2
'|modelnpc Izzy##38647
step
goto 59.8,49.7
.' Go into the big beam of white light
.' Pick up Gobber |q 14071/4
'|modelnpc Gobber##36463
step
goto 47.9,37.5
.' Go into the big beam of white light
.' Pick up Ace |q 14071/3
'|modelnpc Ace##36180
step
goto 58.2,76.5
..turnin 14071
..accept 24567
step
goto 56.5,76.9
.talk 34668
..accept 14070
step
goto 56.3,77.1
.talk 35053
..accept 26712
only if _G['UnitSex']("player")==2  // male
step
goto 56.4,76.8
.talk 35054
..accept 26711
only if _G['UnitSex']("player")==3  // female
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 48.8,57.6
.talk 37106
..turnin 24567
..accept 24488
step
goto 49.0,60.3
.click Replacement Parts##9116+
.get 6 Replacement Parts |q 24488/1
step
goto 48.8,57.6
.talk 38738
..turnin 24488
..accept 24502
step
goto 47.7,57.8
.clicknpc Bilgewater Buccaneer##48526
'Use your Throw Footbomb ability on your hotbar on Steamwheedle Sharks |tip They look like shredders walking toward you on the footbomb field.
.' Footbomb 8 Steamwheedle Sharks |q 24502/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24502
..accept 24503
step
'Use your Kick Footbomb ability on your hotbar while aiming through the 2 tall gray chimney smokestacks |tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
.' Kick a Footbomb Through the Smokestacks |q 24503/1
step
goto 48.8,57.6
.talk 38738
..turnin 24503
..accept 24520
step
ding 3
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 45.2,74.7
.from Bruno Flameretardant##34835
.' Beat down Bruno Flameretardant |q 14070/1
step
goto 41.6,81.9
.from Sudsy Magee##34878
.' Beat down Sudsy Magee |q 14070/4
step
goto 35.1,77.8
.from Jack the Hammer##34877
.' Beat down Jack the Hammer |q 14070/3
step
goto 36.8,70.4
.from Frankie Gearslipper##34876
.' Beat down Frankie Gearslipper |q 14070/2
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 30.1,71.9
.talk 35120
..turnin 26712 |only if _G['UnitSex']("player")==2  // male
..turnin 26711 |only if _G['UnitSex']("player")==3  // female
..accept 14109 |or |only if _G['UnitSex']("player")==2  // male
..accept 14110 |or |only if _G['UnitSex']("player")==3  // female
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 37.7,55.5
.talk 35128
..' Tell him you need a hip, new outfit
.get Hip New Outfit |q 14109/2 |only if _G['UnitSex']("player")==2  // male
.get Hip New Outfit |q 14110/2 |only if _G['UnitSex']("player")==3  // female
step
goto 34.8,45.7
.talk 35126
..' Tell him to set you up with the phattest, shiniest bling
.get Shiny Bling |q 14109/1 |only if _G['UnitSex']("player")==2  // male
.get Shiny Bling |q 14110/1 |only if _G['UnitSex']("player")==3  // female
step
goto 40.4,45.8
.talk 35130
..' Tell her you need some cool shades
.get Cool Shades |q 14109/3 |only if _G['UnitSex']("player")==2  // male
.get Cool Shades |q 14110/3 |only if _G['UnitSex']("player")==3  // female
step
goto 56.4,76.9
.talk 34668
..turnin 24520
..turnin 14070
step
goto 56.3,77.1
.talk 39426
..turnin 14109
only if _G['UnitSex']("player")==2  // male
step
goto 56.3,76.8
.talk 35054
..turnin 14110
only if _G['UnitSex']("player")==3  // female
step
goto 57.9,77.2
.talk 34692
..accept 14009 |noobsolete
only Goblin Priest
step
goto 61.0,77.7
.' Use your Shadow Word: Pain ability on the Training Dummies
.' Practice Shadow Word: Pain 3 times |q 14009/2
'|from Training Dummy##48304
only Goblin Priest
step
goto 57.9,77.2
.talk 34692
..turnin 14009
only Goblin Priest
step
goto 59.4,77.6
.talk 34693 |tip She walks around this area, so you may need to search for her.
..accept 14010 |noobsolete
only Goblin Rogue
step
goto 61.0,77.7
.' Use Sinister Strike on one of the Training Dummies to build up combo points, then use Eviscerate on it
.' Practice Eviscerate 3 times |q 14010/2
'|from Training Dummy##48304
only Goblin Rogue
step
goto 59.4,77.6
.talk 34693 |tip She walks around this area, so you may need to search for her.
..turnin 14010
only Goblin Rogue
step
goto 57.9,74.4
.talk 34696
..accept 14012 |noobsolete
only Goblin Warlock
step
goto 61.0,77.7
.' Use your Corruption ability on the Training Dummy
.' Practice Corruption 3 times |q 14012/2
'|from Training Dummy##48304
only Goblin Warlock
step
goto 57.9,74.4
.talk 34696
..turnin 14012
only Goblin Warlock
step
goto 59.4,73.8
.talk 34689
..accept 14008 |noobsolete
only Goblin Mage
step
goto 60.7,77.7
.' Use your Frost Nova ability on the Training Dummy
.' Practice Frost Nova 2 times |q 14008/2
'|from Training Dummy##48304
only Goblin Mage
step
goto 59.4,73.8
.talk 34689
..turnin 14008
only Goblin Mage
step
goto 60.3,77.8
.talk 34697
..accept 14013 |noobsolete
only Goblin Warrior
step
goto 60.7,77.7
.' Use your Charge ability on the Training Dummy
.' Practice Charge 1 time |q 14013/2
'|from Training Dummy##48304
only Goblin Warrior
step
goto 60.3,77.8
.talk 34697
..turnin 14013
only Goblin Warrior
step
goto 59.7,76.0
.talk 34695
..accept 14011 |noobsolete
only Goblin Shaman
step
goto 60.8,77.9
.' Use Primal Strike on the Training Dummy
.' Practice Primal Strike 2 times |q 14011/2
'|from Training Dummy##48304
only Goblin Shaman
step
goto 59.8,76.1
.talk 34695
..turnin 14011
only Goblin Shaman
step
goto 60.5,77.6
.talk 38122
..accept 14007 |noobsolete
only Goblin Hunter
step
goto 60.8,77.9
.' Use your Steady Shot ability on the Training Dummy
.' Practice Steady Shot 3 times |q 14007/2
.from Training Dummy##48304
only Goblin Hunter
step
goto 60.5,77.6
.talk 38122
..turnin 14007
only Goblin Hunter
step
goto 56.3,77.1
.talk 39426
..accept 14113
only if _G['UnitSex']("player")==2  // male
step
 goto 56.3,76.8
.talk 35054
..accept 14153
only if _G['UnitSex']("player")==3  // female
step
goto 59.4,80.6
.' Use your Bubbly ability on goblins that are drinking |petaction Bubbly |important
.' Use your Bucket ability on goblins that look dazed |petaction Bucket |important
.' Use your Dance ability on goblins that are dancing |petaction Dance |important
.' Use your Fireworks ability on goblins that are holding orange fireworks |petaction Fireworks |important
.' Use your Hors D'oeuvres ability on goblins that are eating |petaction Hors D'oeuvres |important
.' Entertain 10 Partygoers |q 14113/1 |only if _G['UnitSex']("player")==2  // male
.' Entertain 10 Partygoers |q 14153/1 |only if _G['UnitSex']("player")==3  // female
step
goto 56.4,76.9
.talk 34668
..turnin 14113 |only if _G['UnitSex']("player")==2  // male
..turnin 14153 |only if _G['UnitSex']("player")==3  // female
..accept 14115
step
goto 59.5,79.7
.kill 12 Pirate Party Crasher##35200+ |q 14115/1
step
ding 4
step
goto 56.4,76.9
.talk 34668
..turnin 14115
..accept 14116
step
goto 56.7,77.0
.' Go upstairs
.talk 39582
..turnin 14116
..accept 14120
step
goto 59.7,77.1
.talk 34668
..turnin 14120
..accept 14122
step
goto 59.1,76.0
.talk 36729 |tip She walks around this area, so you may need to search for her.
..accept 14123
step
goto 60.0,78.2
.talk 34874
..accept 14121
step
goto 63.0,77.8
.talk 36471
..accept 14124
step
goto 67.2,77.6
.' Use your Kablooey Bombs on the green mining nodes around this area |use Kablooey Bombs##48768
.click Kaja'mite Chunk##9436+
.get 12 Kaja'mite Chunk |q 14124/1
step
goto 63.0,77.8
.talk 36471
..turnin 14124
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 35.8,49.1
.' Run over Hired Looters with your car all around this area |tip They look like pirates throwing explosives in the streets all around this area.
.get 12 Stolen Loot |q 14121/1
step
goto 30.2,71.3
.clicknpc First Bank of Kezan Vault##35486
.' Access the First Bank of Kezan Vault |q 14122/1
.' Use the abilities on your toolbar in the correct order when it tells you to
.get Personal Riches |q 14122/2
step
'Use your Keys to the Hot Rod in your bags |invehicle |use Keys to the Hot Rod##46856
step
goto 24.4,40.9
'Your Mook disguise should activate automatically here
.' Wear the Mook Disguise |havebuff Interface\Icons\INV_Mask_02
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise if you agro them.
'|modelnpc Keensnout Potbelly##35613
step
goto 19.9,30.6
.click The Ultimate Bomb##8936
.get The Ultimate Bomb |q 14123/3
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise if you agro them.
'|modelnpc Keensnout Potbelly##35613
step
goto 12.9,35.2
.click The Goblin Lisa##9191
.get The Goblin Lisa |q 14123/2
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise if you agro them.
'|modelnpc Keensnout Potbelly##35613
step
goto 16.7,46.3
.click Maldy's Falcon##6925 |tip It is located on the second floor of the building.
.get Maldy's Falcon |q 14123/1
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise if you agro them.
'|modelnpc Keensnout Potbelly##35613
step
'Hearth to KTC Headquarters |goto Kezan,56.8,77.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.1,76.0
.talk 36729 |tip She walks around this area, so you may need to search for her.
..turnin 14123
step
goto 59.7,77.1
.talk 34668
..turnin 14122
step
goto 60.0,78.3
.talk 34874
..turnin 14121
step
goto 59.7,77.1
.talk 34668
..accept 14125
step
ding 5
step
goto 56.1,76.9
.click Defective Generator##9210
.' Overload the Defective Generator |q 14125/1
step
goto 56.1,74.7
.click Leaky Stove##348
.' Activate the Leaky Stove |q 14125/2
step
goto 56.6,75.0
.click Flammable Bed##9308
.' Drop a Cigar on the Flammable Bed |q 14125/3
step
goto 59.5,76.8
.click Gasbot Control Panel##356
.' Set the KTC Headquarters Ablaze with Gasbot |q 14125/4
step
goto 59.6,76.5
.talk 37602
..turnin 14125
step
goto 59.7,77.1
.talk 34668
..accept 14126
step
goto 59.7,77.1
.talk 34668
..' Tell her you're ready to go
.' Ride with Sassy to Gallywix's Yacht |goto 21.4,13.2,0.5 |noway |c
step
goto 21.0,13.4
.talk 39582
..turnin 14126
step
goto The Lost Isles,24.6,77.9
.talk 36608
..accept 14239 |instant
step
goto 24.77,77.9
.talk 36600
..' You will be offered one of these two quests
..accept 14001 |or
..accept 14474 |or
step
goto 26.0,80.1
.click Goblin Escape Pod##9092+
.' Rescue 6 Goblin Survivors |q 14001/1
step
goto 26.0,80.1
.click Goblin Escape Pod##9092+
.' Rescue 6 Goblin Survivors |q 14474/1
step
goto 27.9,75.5
.talk 35650
..' You will only be able to turn in one of these two quests
..turnin 14001
..turnin 14474
..accept 14014
step
goto 27.9,74.4
.talk 35758
..accept 14019
step
goto 27.9,74.3
.talk 35786
..accept 14473
step
goto 27.2,69.8
.kill 6 Teraptor Hatchling##36740+ |q 14473/1
.' Use your Nitro-Potassium Bananas on Bomb-Throwing Monkeys |use Nitro-Potassium Bananas##49028
.' Feed 10 Bomb-Throwing Monkeys |q 14019/1
.click Crate of Tools##9116+
.get 8 Crate of Tools |q 14014/1
'|modelnpc Bomb-Throwing Monkey##34699
step
goto 27.8,74.3
.talk 35786
..turnin 14473
step
goto 27.9,74.4
.talk 35758
..turnin 14019
step
goto 27.9,75.5
.talk 35650
..turnin 14014
..accept 14248
step
ding 6
step
goto 31.3,79.3
.talk 35769
..turnin 14248
..accept 14021
..accept 14031
step
goto 31.8,76.8
.' Escort the Frightened Miner and protect him
.' Use your KTC Snapflash near the floating green camera hologram on the left wall as you enter the cave |use KTC Snapflash##49887
.' Capture Cave Painting 1 |q 14031/1
step
goto 32.5,76.6
.' Escort the Frightened Miner and protect him
.' Use your KTC Snapflash near the floating green camera hologram, it will be on the roof of the cave after take the ramp down |use KTC Snapflash##49887
.' Capture Cave Painting 2 |q 14031/2
step
goto 33.9,75.3
.' Escort the Frightened Miner and protect him
.' Use your KTC Snapflash near the floating green camera hologram, it will be on the right wall |use KTC Snapflash##49887
.' Capture Cave Painting 3 |q 14031/3
step
goto 31.4,74.1
.' Escort the Frightened Miner and protect him
.' Make the Kaja'mite Ore mining a success! |q 14021/1
.' Use your KTC Snapflash near the floating green camera hologram, it will be next to a big face statue with spiked teeth |use KTC Snapflash##49887
.' Capture the Pygmy Altar |q 14031/4
step
goto 31.2,74.1
.talk 35837
..accept 14233
step
goto 31.5,78.2 |n
.' Leave the cave |goto The Lost Isles,31.4,78.4,0.5 |noway |c
step
goto 31.3,79.3
.talk 35769
..turnin 14021
step
goto 27.9,75.5
.talk 35650
..turnin 14031
..turnin 14233
..accept 14234
step
goto 37.6,78.0
.talk 35875
..turnin 14234
..accept 14235
step
goto 35.4,75.7
.talk 35893
..turnin 14235
..accept 14236
step
'Use your Weed Whacker |use Weed Whacker##49108
.' Become a weed whacker |havebuff Interface\Icons\Ability_Whirlwind |c |q 14236
step
goto 35.3,75.1
.' Spin around next to the plants all around this area
.' Mow down 100 Deadly Jungle Plants |q 14236/1
step
goto 35.4,75.7
.talk 35893
..turnin 14236
..accept 14303
step
goto 37.6,78.0
.talk 35875
..turnin 14303
..accept 14237
step
goto 34.6,66.8
.talk 35893
..turnin 14237
..accept 14238
step
'Use your Infrared Heat Focals |use Infrared Heat Focals##49611
.' Wear the Infrared Heat Focals |havebuff INTERFACE\ICONS\inv_helmet_47 |q 14238
step
goto 31.2,65.6
.kill 10 SI:7 Assassin##36092+ |q 14238/1
step
goto 34.6,66.8
.talk 35917
..turnin 14238
..accept 14240
.' You will ride Bastia to Scout Brax |invehicle |c 
'|modelnpc Bastia##39152
step
goto 25.3,59.8
.talk 36112
..turnin 14240
..accept 14241
step
goto 24.6,64.3
.from SI:7 Operative##36103+
.get Gyrochoppa Keys |q 14241/1
step
goto 23.2,67.5
.clicknpc Gyrochoppa##36127
..turnin 14241
..accept 14242
step
goto 11.8,62.7
.' Go downstairs in the ship
.talk 36161
.' Locate the Precious Cargo |q 14242/1
step
goto 11.8,62.7
.talk 36161
..turnin 14242
..accept 14326
step
goto 12.4,63.1
.' Go upstairs on the ship
.talk 36161
..turnin 14326
..accept 14243
step
'Use your Lightning Strike ability on the Alliance Sailors in the tiny boats as you fly around
.kill 50 Alliance Sailor##36176+ |q 14243/1
step
goto 35.9,66.7
.talk 36188
..turnin 14243
..accept 14445
step
goto 36.0,67.5
.talk 36425
..turnin 14445
..accept 14244
step
goto 36.3,66.6
.click Rocket Sling##9112
..' Choose Up, Up & Away!
.' Survive the Rocket Sling Trip |q 14244/1
step
goto 44.5,64.4
.talk 36470
..turnin 14244
..accept 14245
step
goto 45.5,65.4
.click Town-In-A-Box Plunger##9277
.' Set Off the Town-In-A-Box |q 14245/1
step
ding 7
step
goto 45.4,64.8
.talk 36471
..turnin 14245
..accept 27139
step
goto 45.3,65.2
.talk 38120
..turnin 27139
..accept 24671
step
goto 46.5,65.4
.clicknpc Wild Clucker##38111+
.' Capture 10 Wild Cluckers |q 24671/1
step
goto 45.3,65.2
.talk 38120
..turnin 24671
step
goto 45.3,64.8
.talk 38122
..accept 24741
step
goto 49.2,73.9
.' Use your Wild Clucker Eggs while standing in Raptor Traps around this area near Spiny Raptors |use Wild Clucker Eggs##50232 |tip They look like big spiked metal traps on the ground around this area.  Don't kill the Spiny Raptors by attacking them.
.click Raptor Egg##3851+
.get 5 Spiny Raptor Egg |q 24741/1
'|modelnpc Spiny Raptor##38187
step
goto 45.3,64.9
.talk 38122
..turnin 24741
step
goto 45.3,65.2
.talk 38120
..accept 24744
step
goto 45.6,56.6
.from Mechachicken##38224 |tip You can find Mechachicken patrolling on either side of the beach within the basin.
.' You can also find Mechachicken at these locations: [44.1,53.9]
.' [43.8,56.0]
.click The Biggest Egg Ever##1411
.get The Biggest Egg Ever |q 24744/1
step
goto 45.3,65.2
.talk 38120
..turnin 24744
..accept 24816
step
goto 42.5,62.6
.from Ravenous Lurker##36681+ |tip While killing Ravenous Lurkers avoid the patrolling elite 'The Hammer' in the area.
.get 6 Shark Parts |q 24816/1
'|modelnpc The Hammer##36682
step
goto 45.3,65.6
.talk 39199
..turnin 24816
..accept 24817
step
goto 43.6,65.1
.click Mechashark X-Steam Controller##6424
.' Use the Mechashark X-Steam Controller |q 24817/1
step
goto 42.1,66.3
' Use the abilities on your toolbar to kill The Hammer.
.kill The Hammer##36682 |q 24817/2
step
goto 45.3,65.2
.talk 38120
..turnin 24817
..accept 24856
step
goto 52.2,73.1
.talk 38432
..turnin 24856
..accept 24858
step
goto 52.2,73.2
.talk 38381
..accept 24859
step
goto 53.7,79.1
.from Vashj'elan Warrior##38359+, Vashj'elan Siren##38360+
.get 5 Intact Naga Hide |q 24859/1
.click Naga Banner##9267+
.' Replace 10 Naga Banners |q 24858/1
step
goto 52.2,73.2
.talk 38381
..turnin 24859
step
goto 52.2,73.2
.talk 38432
..turnin 24858
..accept 24864
step
ding 8
step
goto 58.1,80.3
.' Use your Irresistible Pool Pony in the water |use Irresistible Pool Pony##50602
.' Ride your Irresistible Pool Pony |havebuff Interface\Icons\Ability_Mount_RidingHorse |q 24864
step
goto 58.9,83.1
.talk 44589
.' Lure 12 Naga Hatchlings |q 24864/1
'|modelnpc Naga Hatchling##44580
step
goto 52.2,73.1
.talk 38432
..turnin 24864
..accept 24868
step
goto 54.1,90.1
.' Follow Ace as he runs with the Naga Hatchlings
.from Faceless of the Deep##38448
.' Deal with the leader of the naga |q 24868/1
'|modelnpc Ace##36180
step
goto 52.2,73.1
.talk 38432
..turnin 24868
..accept 24897
step
'Hearth to Town-In-A-Box |goto 45.0,65.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.2,64.9
.talk 38387
..turnin 24897
..accept 24901
step
goto 45.7,65.1
.clicknpc B.C. Eliminator##38526
.' Use the Fire Cannon ability on your toolbar to shoot at the Oomlot Warriors
.' Defeat 30 Oomlot Warriors |q 24901/1
step
goto 45.2,64.9
.talk 38869
..turnin 24901
..accept 24924
step
goto 56.6,72.0
.talk 38647
..turnin 24924
..accept 24925
..accept 24929
step
goto 59.2,69.0 |n
.' Follow the path up |goto 59.2,69.0,0.5 |noway |c
step
goto 63.0,68.6
.kill Yngwie##38696 |q 24929/1
step
goto 58.9,71.4
.from Oomlot Shaman##38644+ |tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
.' Free 5 Goblin Captives |q 24925/1
|modelnpc Goblin Captive##38643
step
goto 56.6,71.9
.talk 38647
..turnin 24925
..turnin 24929
..accept 24937
step
goto 45.2,64.9
.talk 38387
..turnin 24937
..accept 24940
step
goto 51.8,47.1
.talk 38738
..turnin 24940
..accept 24942
step
goto 51.9,47.2
.talk 36471
..accept 24945
step
goto 51.7,47.4
.talk 39199
..accept 24946
step
'Use your Super Booster Rocket Boots |use Super Booster Rocket Boot##52013
.' Wear the Super Booster Rocket Boots in your inventory |havebuff Interface\Icons\INV_Gizmo_RocketBoot_01 |q 24946
step
'As you are going through the next areas, be sure to click any Rockin' Powders you find along the way
.click Rockin' Powder##49+
|confirm
step
goto 59.6,40.2
.kill Gaahl##38808 |q 24945/1
step
'Use your Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
.' Wear the Super Booster Rocket Boots in your inventory |havebuff Interface\Icons\INV_Gizmo_RocketBoot_01 |q 24946
step
goto 58.8,47.1
.kill Malmo##38809 |q 24945/2
step
'Use your Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
.' Wear the Super Booster Rocket Boots in your inventory |havebuff Interface\Icons\INV_Gizmo_RocketBoot_01 |q 24946
step
goto 63.6,52.7
.kill Teloch##38810 |q 24945/3
.click Rockin' Powder##49+
.get 5 Rockin' Powder |q 24946/1
step
'Use your Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
.' Wear the Super Booster Rocket Boots in your inventory |havebuff Interface\Icons\INV_Gizmo_RocketBoot_01 |q 24946
step
goto 56.5,44.1
.' Use your Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
.' Go near Goblin Zombies with your Super Booster Rocket Boots active
.kill 50 Goblin Zombie##38816+ |q 24942/1
step
ding 9
step
goto 51.8,47.1
.talk 38738
..turnin 24942
step
goto 51.9,47.2
.talk 36471
..turnin 24945
step
goto 51.7,47.4
.talk 38124
..turnin 24946
step
goto 51.8,47.1
.talk 38738
..accept 24952
step
'Use your Rockin' Powder Infused Rocket Boots in your bags |use Rockin' Powder Infused Rocket Boots##52032 |q 24952/1
step
goto 68.9,46.4
.talk 38120
..turnin 24952
..accept 24954
step
goto 68.0,44.4
.from Child of Volcanoth##38845+
.get 10 Fire Gland |q 24954/1
step
goto 68.9,46.4
.talk 38120
..turnin 24954
..accept 24958
step
goto 71.1,53.1
.' Use your Bootzooka repeatedly on Volcanoth |use Bootzooka##52043 |tip He's a huge turtle inside a cave.  Move to the side and take cover behind the rock on the left when Volcanoth is about to breathe fire.
.' Kill Volcanoth |q 24958/1
|modelnpc Volcanoth##50058
step
goto 72.9,57.0
.talk 38928
..turnin 24958
..accept 25023
step
goto 36.8,43.1
.talk 38935
..turnin 25023
..accept 25024
step
goto 36.3,43.4
.talk 39065
..accept 25093
step
goto 37.4,41.9
.talk 38387
..accept 25058
step
goto 32.3,42.9
.' Use your Satchel of Grenades on the land mines |use Satchel of Grenades##52280 |tip They are all along this beach.
.from Commander Arrington##39141
.get Commander Arrington's Head |q 25093/1
step
goto 30.8,33.9
.' Use your Satchel of Grenades on the land mines |use Satchel of Grenades##52280 |tip They are all along this beach.
.from Alexi Silenthowl##39143
.get Alexi Silenthowl's Head |q 25093/3
step
goto 33.4,27.9
.' Use your Satchel of Grenades on the land mines |use Satchel of Grenades##52280 |tip They are all along this beach.
.from Darkblade Cyn##39142
.get Darkblade Cyn's Head |q 25093/2
step
goto 33.4,34.1
.kill 15 Alliance Paratrooper##39069+ |q 25024/1
.' Use your Satchel of Grenades on the land mines |use Satchel of Grenades##52280 |tip They are all along this beach.
.' Detonate 10 Land Mines |q 25058/1
step
goto 34.1,38.7 |n
.' Follow the path up |goto 34.1,38.7,0.5 |noway |c |or
.' Or
.' Click here to take an alternate route. [36.1,34.1] |goto 36.1,34.1 <5 |c |or
step
goto 37.4,41.9
.talk 38387
..turnin 25058
step
goto 36.8,43.1
.talk 38935
..turnin 25024
step
goto 36.3,43.4
.talk 39065
..turnin 25093
step
goto 37.4,41.9
.talk 38387
..accept 25066
step
goto 37.4,41.9
.talk 38869
..' Tell her to get you up into the skies
.' You will get in an airplane |invehicle |c |q 25066
step
goto 33.7,38.8
.' Use your abilities on your hotbar to Gnomeregan Stealth Fighters |tip They are airplanes flying around in the sky.
.' Shoot down 10 Gnomeregan Stealth Fighters |q 25066/1
|tip Controlling this vehicle is very similar to swimming.
step
goto 37.4,41.9 |n
.' Click the red arrow on your hotbar to stop flying to plane |outvehicle |noway |c |q 25066
step
goto 37.4,41.9
.talk 38387
..turnin 25066
..accept 25098
step
goto 36.8,43.1
.talk 38935
..turnin 25098
..accept 25099
step
goto 33.8,38.8
.talk 35893
..turnin 25099
..accept 25100
.' You will ride Bastia to Slinky Sharpshiv |invehicle |c 
'|modelnpc Bastia##39152
step
goto 53.7,34.9
.talk 38517
..turnin 25100
..accept 25109
step
goto 54.1,36.0 |n
.' Enter the cave |goto 54.1,36.0,0.5 |noway |c
step
goto 53.2,36.5
.talk 38124
..turnin 25109
..accept 25110
step
ding 10
step
goto 54.6,36.0
.click Kaja'Cola Zero-One##9357
.get Kaja'Cola Zero-One |q 25110/1
step
goto 53.2,36.5
.talk 38124
..turnin 25110
step
'Next to you:
.talk 39199
..accept 25122
..accept 25123
step
'As you go you through area collect 9 cans of Kaja'Cola
.click Kaja'Cola Zero-One##9357+ |tip You will be using these goblins within the area.
'|modelnpc Kezan Citizen##38745
|confirm
step
goto 55.8,32.1
.from Blastshadow the Brutemaster##39194
.click Blastshadow's Soulstone##8552
.collect Blastshadow's Soulstone##52481 |n
.' Use Blastshadow's Soulstone on Blastshadow the Brutemaster's corpse |use Blastshadow's Soulstone##52481
.' Destroy Blastshadow's Soulstone |q 25123/1
step
'Next to you:
.talk 39199
..turnin 25123
step
goto 57.0,35.0
.click Kaja'Cola Zero-One##9357+ |tip You will need 9 total, just get as many as you can find for now.
.' Use a Kaja'Cola Zero-One on Izzy |use Kaja'Cola Zero-One##52484
.' Free Izzy's mind |q 25122/2
'|modelnpc Izzy##36429
step
goto 56.9,37.2
.click Kaja'Cola Zero-One##9357+ |tip You will need 9 total, just get as many as you can find for now.
.' Use a Kaja'Cola Zero-One on Ace |use Kaja'Cola Zero-One##52484
.' Free Ace's mind |q 25122/1
'|modelnpc Ace##36180
step
goto 57.0,32.1
.click Kaja'Cola Zero-One##9357+ |tip You will need 9 total, just get as many as you can find for now.
.' Use a Kaja'Cola Zero-One on Gobber |use Kaja'Cola Zero-One##52484
.' Free Gobber's mind |q 25122/3
.' Use a Kaja'Cola Zero-One on Kezan Citizens and Goblin Survivors |use Kaja'Cola Zero-One##52484
.' Free 6 other goblin's minds |q 25122/4
'|modelnpc Gobber##36463
'|modelnpc Kezan Citizen##38745
step
Next to you:
.talk 39199
..turnin 25122
..accept 25125
step
goto 56.6,28.5 |n
.' Leave the cave |goto 56.6,28.5,0.5 |noway |c
step
goto 56.3,27.3
.clicknpc Mine Cart##39341
..turnin 25125
..accept 25184
.' Ride the Mine Cart |q 25184/1
step
goto 54.4,16.9
.talk 38124
..turnin 25184
..accept 25200
step
goto 54.4,16.9
.talk 38738
..accept 25201
step
goto 54.2,17.7
.kill 10 Steamwheedle Shark##39354+ |q 25200/1
.click Spare Shredder Parts##7835
.get 10 Spare Shredder Parts |q 25201/1
step
goto 54.4,16.9
.talk 38124
..turnin 25200
step
goto 54.4,16.9
.talk 38738
..turnin 25201
step
goto 54.4,16.9
.talk 38124
..accept 25204
step
goto 54.1,17.2
.talk 38441
..accept 25203
only if _G['UnitSex']("player")==2  // male
step
goto 54.0,17.0
.talk 38647
..accept 25202
only if _G['UnitSex']("player")==3  // female
step
 goto 50.8,13.8
.click Valve #1##353
.' Release Valve #1 |q 25204/1
step
goto 50.5,13.1
.click Valve #3##353
.' Release Valve #3 |q 25204/3
step
goto 50.2,11.8
.click Valve #2##353
.' Release Valve #2 |q 25204/2
step
goto 49.9,12.7
.click Valve #4##353
.' Release Valve #4 |q 25204/4
step
goto 49.9,13.9
.kill Chip Endale##39363 |q 25203/1
only if _G['UnitSex']("player")==2  // male
step
goto 49.9,13.9
.from Chip Endale##39363
.collect Still-Beating Heart |q 25202/1
only if _G['UnitSex']("player")==3  // female
step
goto 51.4,13.1
.click Platform Control Panel##356
..turnin 25204
..accept 25207
.click Big Red Button##339
.' Destroy the KTC Oil Platform |q 25207/1
step
goto 54.2,17.2
.talk 38441
..turnin 25203
only if _G['UnitSex']("player")==2  // male
step
goto 54.0,17.0
.talk 38647
..turnin 25202
only if _G['UnitSex']("player")==3  // female
step
goto 54.4,16.9
.talk 38124
..turnin 25207
..accept 25213
.' You will ride a Shredder to Sassy Hardwrench |invehicle |c
|modelnpc Bilgewater Shredder##48526
step
goto 43.6,25.3
.talk 38869
..turnin 25213
..accept 25243 |only if _G['UnitSex']("player")==2  // male
..accept 25244 |only if _G['UnitSex']("player")==3  // female
step
goto 43.9,25.3
.talk 38120
..accept 25214
step
goto 39.7,27.1
.from Candy Cane##39426
.get Fickle Heart |q 25243/1
only if _G['UnitSex']("player")==2  // male
step
goto 39.7,27.1
.kill Candy Cane##39426 |q 25244/1
only if _G['UnitSex']("player")==3  // female
step
goto 40.9,25.5
.clicknpc Captured Goblin##39456+ |tip They are in wooden cages all around this area.
.' Launch 8 cages |q 25214/1
step
goto 43.9,25.3
.talk 38120
..turnin 25214
step
goto 43.6,25.3
.talk 38869
..turnin 25243 |only if _G['UnitSex']("player")==2  // male
..turnin 25244 |only if _G['UnitSex']("player")==3  // female
step
goto 43.6,25.3
.talk 38869
..accept 25251
step
ding 11
step
goto 43.9,25.2
.clicknpc Ultimate Footbomb Uniform##39592
.' Take control of the Ultimate Footbomb Uniform |q 25251/1
step
goto 42.3,18.5 |n
.' Follow the path up |goto 42.3,18.5,0.5 |noway |c
step
goto 43.5,20.0
.' Use the abilities on your hotbar to kill Trade Prince Gallywix |tip Stand behind Trade Prince Gallywix when you are fighting him.
.' Deal with Trade Prince Gallywix |q 25251/2
'|modelnpc Trade Prince Gallywix##39615
step
goto 43.6,25.3
.talk 38869
..turnin 25251
..accept 25265
step
goto 42.1,17.4
.talk 38935
..turnin 25265
..accept 25266
step
goto 42.6,16.4
.talk 38869
..' Tell her to set sail for Orgrimmar before the island blows for good! |goto Durotar |noway |c
step
goto Durotar,57.7,9.8
.talk 39609
..turnin 25266
..accept 25267
.' You will ride a Battleworg to you Garrosh's Chamber |invehicle |c
|modelnpc Battleworg##39610
step
goto Orgrimmar,49.2,72.3
.talk 3144
..accept 26803
step
goto 48.1,70.5
.talk 39605
..turnin 25267
..accept 25275
step
goto 47.6,71.2
.talk 35068
..accept 26642
step
goto 51.2,63.1 |n
.' Ride the elevator up |goto 51.2,63.1,0.5 |noway |c
step
goto 49.7,59.2
.talk 3310
..turnin 26803
..accept 26804
step
goto 49.7,59.2
.talk 3310
.' Fly to Razor Hill, Durotar |goto Durotar,53.0,43.6,0.5 |noway |c
step
goto Durotar,52.0,43.5
.talk 3139
..turnin 26804
..accept 26806
step
goto 53.1,43.6
.talk 41140
..turnin 26806
step
goto 50.8,43.6
.talk 3336
..accept 840
step
'Go west to Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 840
..turnin 26642
..accept 871
step
goto 67.5,38.7
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
.click Wolf Chains##8721+
.' Free 3 Wolves |q 13878/1
step
goto 66.8,49.8
.kill 8 Razormane Plunderer##3267+ |q 871/1
.kill 3 Razormane Hunter##3265+ |q 871/2
step
goto 67.1,45.5
.talk 34284
..turnin 13878
step
ding 12
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
.kill 5 Razormane Thornweaver##3268+ |q 872/1
.kill 5 Razormane Defender##3266+ |q 872/2
.click Crossroads Supply Crate##5531+
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
.clicknpc Lead Caravan Kodo##34430
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip To kill them very easily, spam the 1 button and the Tab key on your keyboard together.
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
goto 54.6,41.5
.talk 34578
..' Tell him to bring it on
.clicknpc Head Caravan Kodo##34577
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click the Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto 50.0,59.9
.talk 3338
..accept 845
..accept 903
step
goto 49.6,57.9
.talk 3934
.home The Crossroads
step
goto 48.7,59.6
.talk 3429
..turnin 13975
step
goto 43.2,51.6
.from Savannah Huntress##3415+
.get 5 Huntress Claws |q 903/1
.from Zhevra Runner##3242+
.get 4 Zhevra Hooves |q 845/1
step
'Hearth to The Crossroads |goto 49.5,57.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.0,59.8
.talk 3338
..turnin 845
..turnin 903
step
ding 13
step
goto 48.7,58.7
.talk 3615
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
'Go northeast out of Orgrimmar to Azshara |goto Azshara |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)
startlevel 80.00
dynamic on
step
goto Orgrimmar 49.7,76.5
.click Warchief's Command Board##10014
..accept 27721
.' You will automatically accept a quest by entering Orgrimmar
..accept 28790
step
goto 50.5,38.4
.talk 45244
..turnin 28790
..accept 28805
step
goto 50.8,37.8
.clicknpc Waters of Farseeing##50088
.' Witness the Vision of the Farseer |q 28805/1
step
goto 50.5,38.4
.talk 45244
..turnin 28805
step
goto 39.9,50.9
.talk 15188
..' Ask him to please send you to Moonglade
.' You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27721
..accept 25316
step
goto 46.1,45.5
.talk 39140
.' You will fly to Mount Hyjal |goto Mount Hyjal,63.6,23.3,0.5 |noway |c
step
goto Mount Hyjal,63.1,24.1
.talk 40843
.home Nordrassil
step
goto 62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.6
.talk 39925
..accept 25460
step
goto 64.0,22.5
.talk 40278
..accept 25370
step
goto 65.8,20.8
.kill 8 Scalding Rock Elemental##40229+ |q 25460/1
.click Juniper Berries##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |tip They look like small blue flying dragons around this area.
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926+ |q 25370/1
|modelnpc Faerie Dragon##
step
goto 64.0,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.6
.talk 39925
..turnin 25460
step
goto 55.9,15.8
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.0,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 15362
..turnin 25317
..accept 25319
step
goto 47.7,35.5
.talk 39869
..accept 25472
step
goto 47.8,29.4
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.7,33.2
.' Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
.kill 30 Unbound Flame Spirit |q 25323/1
.' You can find more Blazebound Revenants at [48.5,29.2]
step
goto 47.7,35.5
.talk 15362
..turnin 25323
..accept 25464
step
goto 44.1,27.0
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
step
goto 47.7,35.5
.talk 15362
..turnin 25464
step
goto 47.7,35.5
.talk 39869
..accept 25430
step
goto 48.4,19.0
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.4,20.7
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,19.0
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.6,17.3 |n
.' Enter the cave |goto 52.6,17.3,0.5 |noway |c
step
goto 56.8,18.8
.' Follow the path in the cave
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.6,17.3 |n
.' Leave the cave
.' Deliver Arch Druid Fandral Staghelm |q 25325/1
step
goto 52.2,17.4
.talk 40178
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.8,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 34.6,24.5
.kill 6 Twilight Hunter##39437+ |q 25255/1
.kill 4 Twilight Proveditor##39436+ |q 25233/1 |tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
.click Twilight Supplies##9379+ |tip You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.8,19.7
.talk 39427
..turnin 25233
..turnin 25234
step
goto 35.7,19.4
.talk 39429
..turnin 25255
..accept 25269
step
goto 30.1,31.7
.talk 39432
..turnin 25269
..accept 25270
step
goto 29.0,31.4
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25270/1
step
goto 30.1,31.7
.talk 39432
..turnin 25270
..accept 25272
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25272/1
step
goto 32.5,37.4
.talk 39622
..turnin 25272
step
goto 29.6,29.3
.talk 39622
..accept 25279
step
goto 28.4,29.9
.talk 39432
..turnin 25279
..accept 25277
step
goto 28.3,30.0
.talk 39435
..accept 25300
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.9,32.1
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 26.5,35.0
.click Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.5
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 26.9,36.3 |n
.' Enter the cave |goto 26.9,36.3,0.5 |noway |c
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.6,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
goto 26.7,39.2
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.' Slay 8 Minions of Gar'gol |q 25277/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.4,29.9
.talk 39432
..turnin 25277
..accept 25354
..accept 25355
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 29.1,40.7
.kill 8 Twilight Stormcaller##39843+ |q 25354/1
.kill 5 Howling Riftdweller##39844+ |q 25354/2
.click Lightning Channel##9816
.get Charged Condenser Jar |q 25355/1
step
'Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
.talk 39622
..turnin 25355
..accept 25617
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 25.8,41.5,0.3 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25617
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
goto 29.6,41.8
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.click Twilight Arms Crate##9393+
.' Destroy 10 Twilight Arms Crates |q 25575/1
step
goto 26.3,42.0
.talk 40837
..turnin 25576
step
goto 26.3,41.9
.talk 40834
..turnin 25575
..turnin 25577
..accept 25599
step
goto 30.7,41.7
.kill Cindermaul##40844 |q 25599/1
.click Battered Stone Chest##1387
.get Tome of Openings |q 25599/2
step
goto 26.3,41.9
.talk 40834
..turnin 25599
..accept 25600
step
goto 31.9,46.3
.click Portal Runes##2670+
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25612
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 26.3,40.9,0.3 |noway |c
step
goto 28.4,29.9
.talk 39432
..turnin 25354
..turnin 25612
step
goto 28.4,29.8
.talk 46987
..accept 27874
step
goto 28.2,29.9
.talk 39434
..accept 25630
step
goto 19.0,40.9
.talk 39927
..turnin 25630
..accept 25381
..accept 25382
step
goto 19.2,37.9
.talk 39930
..accept 25385
step
goto 19.0,37.0
.talk 39928
..accept 25404
step
goto 19.6,36.4
.talk 41860
.fpath Grove of Aessina
step
goto 22.3,44.9
.talk 39933
..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
.' Persuade Blackhorn |q 25404/1
step
goto 22.3,44.9
.talk 39933
..turnin 25404
..accept 25408
step
goto 21.1,42.6
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.5,45.3
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
step
'Next to you:
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.7,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 11.3,38.2
.kill 10 Raging Firestorm##39939+ |q 25381/1
.kill 6 Twilight Inferno Lord##39974+ |q 25382/1
.clicknpc Panicked Bunny##39997+, Terrified Squirrel##39998+
.get 10 Frightened Animal |q 25385/1
step
goto 19.0,40.9
.talk 39927
..turnin 25381
..turnin 25382
step
goto 19.2,37.9
.talk 39930
..turnin 25385
..accept 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25412
..accept 25428
step
goto 14.6,42.2
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 12.5,44.6
.clicknpc Injured Fawn##39999+ |tip You need 3 of them.
.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
.' Escort 3 Injured Fawns Home |q 25392/1
step
goto 19.2,37.9
.talk 39930
..turnin 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25428
..accept 29066
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 19.0,37.0
.talk 39928
..turnin 29066
step
goto 13.7,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 13.9,34.1
.clicknpc Hyjal Bear Cub##52688+
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow spot at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.7,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 16.4,51.8
.kill 8 Charbringer##40336+ |q 25490/1
step
goto 27.1,62.6
.talk 5769
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 34.0,53.2
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768+
.get 10 Hyjal Seedling |q 25491/1
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 42.2,45.4
.talk 41006
..accept 25655
..accept 25656
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 40.4,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 36.9,43.4
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Slay 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.4
.talk 41006
..turnin 25655
..turnin 25656
..accept 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25665
..accept 25664
step
goto 38.4,44.2
.click Harpy Signal Fire##7290
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 39.2,37.1
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.4
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.' Go upstairs in the Shrine of Aviana
.talk 40997
..accept 25740
step
ding 81
step
goto 27.1,62.6
.talk 5769
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
goto 33.0,64.6
.click Flameward##7340
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click Codex of Shadows##470
..accept 25763
step
goto 30.9,76.7
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##454+
.get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.1,76.7
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
.kill 3 Twilight Juggernaut##41031+ |q 25761/1
.click Shadow Cloak Generator##9532+
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.from Sethria##41255
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 37.4,52.3
.' Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340 |tip He will become friendly.
.get Nemesis Shell Fragment |q 25507/1
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,47.9
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.3,48.0
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 39.2,58.1 |n
.' Go inside the blue portal |goto 38.8,58.0,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.2
.click Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.clicknpc Aviana's Guardian##40723 |invehicle
step
goto 36.4,53.2
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Visit the Guardian Flag |q 25523/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.kill 10 Twilight Knight Rider##39835+ |q 25525/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.kill 10 Twilight Lancer##40660+ |q 25544/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 33.3,56.9
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs all around [35.8,53.6]
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
.' Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c |q 25832
step
'Don't forget to equip your real weapon again
.' Skip to the next step in the guide
step
goto 39.1,57.6 |n
.' Go inside the blue glowing orb |goto 38.8,58.6,0.3 |noway |c
step
goto 44.3,48.0
.talk 41308
..turnin 25832
step
goto 27.1,62.6
.talk 5769
..turnin 25507
..accept 25510
step
goto 27.1,63.0
.talk 40331
..turnin 25502
step
goto 24.7,55.7
.talk 41504
..turnin 25510
..accept 25514
..accept 25519
step
goto 24.0,55.9
.click Rod of Subjugation##9469
.' Disable the First Rod of Subjugation |q 25514/1
step
goto 25.2,54.9
.click Rod of Subjugation##9469
.' Disable the Second Rod of Subjugation |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.8,57.1
.from Deep Corruptor##40561+
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 5769
..turnin 25520
step
goto 27.0,62.6
.talk 46998
..accept 25830
step
goto 27.4,55.5
.talk 41381
..turnin 25830
..accept 25842
step
goto 26.6,53.2
.kill 5 Fiery Tormentor##41396+ |q 25842/1
step
goto 27.4,55.5
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 5769
..turnin 25372
..accept 25843
step
goto 41.6,60.7
.talk 41504
..turnin 25843
..accept 25904
step
goto 42.2,60.6
.talk 41507
..accept 25881
..accept 25899
step
goto 53.9,54.5
.from Twilight Field Captain##41502
.get Glyph of Opening |q 25904/1
step
goto 49.4,53.1
.kill 10 Twilight Scorchlord##41500+ |q 25899/1
.talk 41499 |tip They look like dead night elves laying on the ground all around this area.
..' Tell them to get on their feet
.' Rescue 8 Lost Wardens |q 25881/1
step
goto 41.9,60.8
.talk 41504
..turnin 25904
..accept 25906
step
goto 57.1,55.9
.talk 41492
..turnin 25881
..accept 25886
..turnin 25899
step
goto 56.9,56.0
.talk 41497
..accept 25901
step
goto 56.5,57.9
.click Warden's Arrow##8094+
.get 15 Warden's Arrow |q 25901/1
step
goto 60.9,58.8
.kill 4 Twilight Field Captain##41502+ |q 25886/1
step
goto 56.9,56.0
.talk 41497
..turnin 25901
step
goto 57.1,56.0
.talk 41492
..turnin 25886
step
goto 64.8,54.3 |n
.' Go inside the blue portal |goto 64.5,53.5,0.5 |noway |c
step
goto 64.3,53.6
.talk 41498
..turnin 25906
..accept 25910
..accept 25915
step
goto 65.8,57.1
.' Follow the path down
.' Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you |tip They are big floating red crystals around this area.
.' Examine the Nemesis Crystal |q 25915/1
step
goto 64.3,58.0
.kill 4 Shadowflame Master##41563+ |q 25910/1
.kill 10 Molten Tormentor##41565+ |q 25910/2
step
goto 64.3,53.6
.talk 41498
..turnin 25910
..turnin 25915
..accept 25923
step
goto 62.7,62.2
.' Follow the path down
.' Fight Nemesis |tip He's a huge turtle standing on a big island in the lava.
.' Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
.kill Nemesis##40340 |q 25923/1
step
goto 64.3,53.6
.talk 41498
..turnin 25923
..accept 25928
step
goto 64.8,53.6 |n
.' Go inside the blue portal |goto 64.9,54.5,0.3 |noway |c
step
goto 41.8,60.7
.talk 41504
..turnin 25928
..accept 25653
step
'Hearth to Nordrassil |goto 63.1,24.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 62.1,24.9
.talk 40928
..turnin 25653
..accept 25597
step
goto 71.9,58.1
.talk 41024
..turnin 25597
..accept 25274
step
goto 73.6,60.4
.talk 39619
.' Lure the Twilight Recruit away from the group to 72.4,58.8
.' Use your Blackjack on the Twilight Recruit |use Blackjack##52683
.from Twilight Recruit##39619
.get Twilight Recruitment Papers |q 25274/1
step
goto 71.9,58.1
.talk 41024
..turnin 25274
..accept 25276
step
goto 76.9,62.0
.talk 39442
..turnin 25276
..accept 25223
..accept 25224
step
goto 77.0,62.2
.talk 39451
..accept 25330
step
goto 79.8,62.9
.kill 8 Fiery Instructor##40564+ |q 25223/1
.click Flame Blossom##2312+
.get 5 Flame Blossom |q 25224/1
.' Use your Frostgale Crystal on an Immolated Supplicant |use Frostgale Crystal##52819 |tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common.
.' Save an Immolated Supplicant |q 25330/1
step
goto 77.0,62.2
.talk 39451
..turnin 25330
step
goto 76.9,62.0
.talk 39442
..turnin 25223
..turnin 25224
..accept 25291
step
goto 89.6,59.1
.talk 39413
..turnin 25291
..accept 25509
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25296
step
goto 90.2,56.4
.talk 39406
..accept 25294
step
goto 89.5,55.5
.click Crate of Scrolls##8704
.get Twilight Communique |q 25296/1
step
goto 92.0,51.5
.click Hyjal Battleplans##222
.get Hyjal Battleplans |q 25296/2
step
goto 88.3,51.9
.from Spinescale Basilisk##39658+
.collect 5 Charred Basilisk Meat##52708 |q 25294
.click Darkwhisper Lodestone##2571+
.' Break 5 Darkwhisper Lodestones |q 25509/1
step
'Use your Fiery Leash |use Fiery Leash##52717
.' You will summon the Spawn of Smolderos
.' Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
.' Feed the Spawn of Smolderos 5 Times |q 25294/1
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25296
..accept 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25509
..accept 25499
step
goto 88.7,57.4
.' Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
.' Run away from the Blazing Trainer for 1 minute
.' Complete your Physical Training |q 25499/1
step
goto 89.6,59.1
.talk 39413
..turnin 25499
..accept 25299
step
'Use your Orb of Ascension |use Orb of Ascension##52828
.' Use the abilities on your hotbar to answer Yes or No to the questions |tip You will see the questions display in your chat window.
.' You must answer 10 questions correctly
.' Complete your Mental Training |q 25299/1
step
goto 89.6,59.1
.talk 39413
..turnin 25299
..accept 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25294
..accept 25494
step
goto 92.1,48.4
.kill 5 Failed Supplicant##39752+ |q 25309/1
step
goto 84.7,46.8
.from Spinescale Matriarch##40403
.get Spiked Basilisk Hide |q 25494/1
step
goto 77.6,48.1
.' Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
.' Put on your Ogre Disguise |havebuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 76.6,49.1
.talk 40489
..' Tell him one of the boys is causing some trouble outside
.kill High Cultist Azennios##40491 |q 25308/1
step
'Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 88.2,58.5
.click Outhouse Hideout##3332
..turnin 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25494
..accept 25496
step
goto 77.8,51.4
.talk 40409
..' Tell him Instructor Devoran sends a contender against his raptor
.' Wait until your Spawn of Smolderos kills his raptor, Butcher
.from Gromm'ko##40409
.' Complete the Grudge Match |q 25496/1
step
goto 90.2,56.4
.talk 39406
..turnin 25496
step
goto 89.6,59.1
.talk 39413
..accept 25310
..accept 25311
step
goto 64.7,64.7
.' Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
.' Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
.kill Garnoth, Fist of the Legion##39726 |q 25310/1
step
goto 66.1,65.9
.kill 10 Horrorguard##48725+ |q 25311/1
step
goto 89.6,59.1
.talk 39413
..turnin 25310
..turnin 25311
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25314
step
goto 79.0,56.1
.kill Okrog##40922 |q 25314/1 |tip You will find him walking along this road, so you may need to search for him.
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25314
..accept 25601
step
goto 89.6,59.1
.talk 39413
..turnin 25601
..accept 25315
step
goto 95.2,51.3
.click Initiation Podium##9481
.' Use the abilities on your hotbar to respond to what the crowd says |tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
.' Please the crowd 10 times
.' Give your Graduation Speech |q 25315/1
step
'Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
goto 95.3,51.3
.talk 41025
..turnin 25315
..accept 25531
step
goto 72.2,74.7
.talk 41025
..turnin 25531
..accept 25608
step
goto 72.6,75.1 |n
.clicknpc Emerald Drake##40934 |invehicle |q 25608
step
goto 78.7,64.0
.' Use your Aerial Swipe ability on Twilight Stormwakers |tip They fly in the air around this area.
.kill 5 Twilight Stormwaker##40573+ |q 25608/1
.' Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
.' Kill 40 Twilight's Hammer Units |q 25608/2
step
goto 72.1,73.7 |n
.' Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle |q 25608
step
goto 72.2,74.7
.talk 41025
..turnin 25608
step
goto 72.1,74.0
.talk 40772
..accept 25548
step
goto 71.9,74.1
.talk 40773
..accept 25554
step
goto 71.6,75.3
.talk 43549
.fpath Gates of Sothann
step
goto 59.7,80.8
.click Burning Litanies##7693
.get The Burning Litanies |q 25554/2
step
goto 58.1,78.9
.click Tome of Flame##6894
.get Tome of Flame |q 25554/3
step
goto 56.8,83.8
.click Ascendant's Codex##6893
.get Ascendant's Codex |q 25554/1
step
goto 59.1,83.9
.click Pure Twilight Egg##9455
..accept 25644
step
goto 59.0,80.2
.kill 4 Flame of Ascendant##40709+ |q 25548/1
.kill 5 Twilight Subjugator##40463+ |q 25548/2
step
goto 71.9,74.1
.talk 40773
..turnin 25554
..accept 25555
step
goto 72.1,74.0
.talk 40772
..turnin 25548
..accept 25549
step
goto 72.2,73.9
.talk 40816
..turnin 25644
..accept 25552
step
goto 59.3,78.0
.from Young Twilight Drake##40687
.get Young Twilight Drake Skull |q 25552/1
step
goto 57.4,68.0
.' Use your Horn of Cenarius |use Horn of Cenarius##55153
.kill Azralon the Gatekeeper##40814 |q 25555/1
step
goto 60.4,72.5
.kill 4 Twilight Augur##40713+ |q 25549/1
.kill 4 Twilight Retainer##40767+ |q 25549/2
.kill 1 Emissary of Flame##40755 |q 25549/3
.' You can find more the Emissary of Flame patrolling between the above coordinate and [55.0,67.1]
step
goto 71.9,74.1
.talk 40773
..turnin 25555
step
goto 72.1,74.0
.talk 40772
..turnin 25549
..accept 25550
step
goto 72.2,74.0
.talk 40816
..turnin 25552
..accept 25553
step
goto 54.8,85.8
.' Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
.kill Desperiona##40974 |q 25553/1
step
goto 43.4,83.6
.' Use your Drums of the Turtle God |use Drums of the Turtle God##55179
.kill King Moltron##40998 |q 25550/1
step
goto 72.1,74.0
.talk 40772
..turnin 25550
step
goto 72.3,74.0
.talk 40816
..turnin 25553
step
goto 71.9,74.1
.talk 40773
..accept 25551
step
goto 55.6,66.2 |n
.' Enter the blue swirling portal |goto 44.5,79.4,0.5 |noway |c |q 25551
step
goto 44.7,79.2
.talk 40803
..' Tell him you are ready to begin to battle against Rangaros |tip You will only be able to talk to him if the battle hasn't started yet.
.' Run down the path and fight Ragnaros
.' You will assist 3 NPC's when killing Ragnaros |tip Do not attack and fight Ragnaros directly, just let the NPC's fight him.  Instead, kill the fire elementals that periodically attack the NPC's you're assisting.  Make sure to kill all the fire elementals and the NPC's will take care of everything else and kill Ragnaros for you.
.kill Ragnaros##41634 |q 25551/1
step
goto 49.0,77.1 |n
.click Portal to Hyjal##10015
.' Teleport to the Gates of Sothann |goto 72.2,74.8,0.5 |noway |c |q 25551
step
goto 72.1,74.0
.talk 40772
..turnin 25551
step
ding 82
step
goto 72.1,74.0
.talk 40772
..accept 27399
step
goto 71.6,75.3
.talk 43549
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,50.5,38.4
.talk 45244
..turnin 27399
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)
startlevel 80.00
dynamic on
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
.click Orgrimmar Axe##9562+ |tip They can be a little hard to see from far away, so keep an eye out for them.
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
.click Stormwind Locker##9280+ |tip Swim inside the sunken ship, there are a lot of Stormwind Lockers in there.
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
.clicknpc Abyssal Seahorse##39996
.' Use the abilities on your hotbar when you are told to |tip You will have to use the corresponding arrow abilities to the arrows that display in the middle of your screen.
.' Subdue an Abyssal Seahorse |q 25371/2
step
goto 46.0,46.9
.talk 41248
..turnin 25371
step
goto 46.6,46.7
.talk 41847
..accept 27685
step
goto 53.4,43.0
.talk 39667
..turnin 27685
..accept 25587
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 56.8,29.8
.' Go to this spot
.' Scout Smuggler's Hole |q 25587/1
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 54.0,34.6
.' Go to this spot
.' Signal Adarrah |q 25587/2
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 56.1,31.1
.talk 40852
.fpath Smuggler's Scar
step
goto 57.1,28.8
.talk 39883
..turnin 25587
..accept 25598
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 48.3,39.6
.talk 39669
..' Tell him to make for that cave to the west
.' Rescue Mack and Samir |q 25598/1
step
goto 49.7,40.9
.click Sunken Crate##336
..accept 25388
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.1,28.8
.talk 39883
..turnin 25598
..turnin 25388
..accept 25390
..accept 25389
step
goto 57.3,28.9
.talk 39884
..accept 25602
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 51.7,42.3
.from Clacksnap Pincer##39918+
.get 4 Clacksnap Tail |q 25389/1
.collect Tattered Treasure Map##53053 |n
.' Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
..accept 25377
.click Adarrah's Jewelry Box##1+
.get 6 Adarrah's Keepsake |q 25390/1
step
goto 55.5,38.8
.click Keg of Gunpowder##472
.get Keg of Gunpowder |q 25602/1
step
goto 57.2,37.8
.from Akasha##39964
.get Horde Chest Key |q 25377/1
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.1,28.8
.talk 39883
..turnin 25390
..turnin 25389
step
goto 57.3,28.9
.talk 39884
..turnin 25602
step
goto 57.1,28.8
.talk 39883
..accept 25459
step
goto 57.3,29.3
.talk 40983
..accept 25358
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 55.3,38.9
.talk 46338
..accept 25651
step
goto 57.8,35.2
.click Sunken Horde Chest##9281
..turnin 25377
step
goto 56.8,36.3
.from Brinescale Serpent##39948+
.' Slay 4 Brinescale Serpent |q 25459/1
.click Sunken Cargo##7539+
.get 5 Sunken Cargo |q 25358/1
step
goto 52.1,51.5
.from Gilblin Hoarder##41016+
.click Pilfered Cannonballs##4177+
.collect 50 Pilfered Cannonball##55185 |n
.' Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
.get Barrel of Gunpowder |q 25651/1
step
goto 55.3,38.9
.talk 46338
..turnin 25651
..accept 25657
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.3,29.3
.talk 40983
..turnin 25358
step
goto 57.1,28.8
.talk 39883
..turnin 25459
step
goto 56.4,30.1
.click Broken Bottle##238
..accept 25638
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 46.3,46.9
.talk 40105
..turnin 25638
..accept 25794
step
'Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
step
goto 46.3,46.9
.talk 40105
..turnin 25794
..accept 26000
step
goto 58.3,48.8
.' Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190 |tip It looks like a round-ish metal gun on the deck of the ship.
.' Feed the Explosive Grub to Gnaws |q 25657/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25657
..accept 27699
step
goto 58.4,50.1
.click Gnaws' Tooth##9517+
.get 5 Gnaws' Tooth |q 27699/1
step
goto 55.3,38.9
.talk 46338
..turnin 27699
..accept 25670
step
goto 58.3,48.8
.' Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220 |tip It looks like a round-ish metal gun on the deck of the ship.
.' While in Gnaws' mouth, spam the ability on your hotbar |tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
.' Slay Gnaws |q 25670/1
step
goto 61.5,63.4 |n
.' Enter the cave |goto 61.5,63.4,0.5 |noway |c
step
goto 64.0,59.8
.talk 41863
..turnin 26000
step
goto 63.9,59.9
.talk 41341
..accept 26007
step
goto 64.0,59.8
.talk 41885
..' Ask him to tell you his name
.' Debrief Gurrok |q 26007/1
step
goto 63.9,59.9
.talk 41341
..turnin 26007
..accept 25887
step
goto 58.4,48.7
.talk 46458
..turnin 25670
..accept 25732
step
goto 53.6,58.0
.from King Gurboggle##41018
.get The Pewter Pounder |q 25732/1
step
goto 58.4,48.7
.talk 46458
..turnin 25732
..accept 25743
step
'Use The Pewter Pounder |use The Pewter Pounder##55806
.' Destroy The Pewter Prophet |q 25743/1
step
goto 58.4,48.6
.talk 46463
..turnin 25743
step
goto 58.7,72.4
.' Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
.' Take control of a Famished Great Shark |invehicle |q 25887
step
goto 57.5,72.4
.' Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians |tip They are nagas all around this area.
.' Eat 10 Zin'jatar Guardians Alive |q 25887/1
.' Use the Return to Safety ability on your hotbar
.' Go back to the Deepmist Grotto |outvehicle |q 25887
step
goto 61.1,63.9 |n
.' Enter the cave |goto 61.1,63.9,0.5 |noway |c
step
goto 63.9,59.9
.talk 41341
..turnin 25887
step
goto 63.9,59.9
.talk 41341
.home Deepmist Grotto
step
goto 64.0,59.8
.talk 41885
..accept 26040
step
goto 63.9,59.4
.talk 41347
..accept 26008
step
goto 64.2,59.9
.talk 41344
..accept 25884
step
goto 61.1,63.9 |n
.' Leave the cave |goto 61.1,63.9,0.5 |noway |c
step
goto 60.3,69.9
.click Naga Tridents##9552
..accept 25883
step
goto 57.7,75.4
.' Swim around on all 3 layers of the naga Holding Pens
.from Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
.' Slay 12 Zin'jatar Naga |q 25884/1
.get 7 Wiggleweed Sprout |q 26040/1
.' Use your Breathstone on Imprisoned Warriors |use Breathstone##56169 |tip They looks like dead orcs in big balls of light all around on the naga Holding Pens.
.' Free 10 Imprisoned Warriors |q 26008/1
.click Naga Tridents##9552+
.' Destroy 6 Naga Weapons |q 25883/1
step
'Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25884
..accept 27708
step
'Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25883
step
goto 60.1,81.2
.from Warden Azjakir##41530
.' Slay the Zin'jatar Warden |q 27708/1
step
'Hearth to Deepmist Grotto |goto 63.8,59.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 63.9,59.9
.talk 41341
..turnin 27708
..accept 25471
step
goto 64.0,59.8
.talk 41885
..turnin 26040
step
goto 63.9,59.4
.talk 41347
..turnin 26008
step
goto 48.3,72.5 |n
.' Enter the cave |goto 48.3,72.5,0.5 |noway |c
step
goto Shimmering Expanse,56.0,13.7
.talk 39226
..turnin 25471
..accept 25334
step
goto 56.0,13.7
.talk 39226
..' Tell him you are ready to join him in the vision
.' Share in Farseer Gadra's Spirit Vision |q 25334/1
step
'Next to you:
.talk 40398
..turnin 25334
step
goto 56.0,13.7
.talk 39226
..accept 25164
step
goto 55.9,13.4
.from Zin'jatar Fathom-Stalker##40162+
.' Fend Off the Naga Attack |q 25164/1 |tip You have to kill 50 nagas.
.from Fathom-Lord Zin'jatar##40161
.' Defeat Fathom-Lord Zin'jatar |q 25164/2
step
goto 56.0,13.7
.talk 39226
..turnin 25164
step
goto 55.5,12.5
.talk 39877
..accept 25221
step
goto 52.0,18.0
.' Follow the path outside the cave
.' Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
.kill 20 Fleeing Zin'jatar Fathom-Stalker##40174+ |q 25221/1
step
goto 53.3,33.1
.talk 39877
..turnin 25221
..accept 25222
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
step
goto 49.5,41.2
.talk 40851
.fpath Silver Tide Hollow
step
goto 49.4,42.6
.talk 39876
..turnin 25222
..accept 25215
..accept 25216
step
goto 49.2,42.6
.talk 39875
..accept 25219
step
goto 49.1,42.0
.talk 39878
..accept 25220
step
goto 49.1,42.0
.talk 39878
.home Silver Tide Hollow
step
goto 50.3,41.1
.clicknpc Dead Zin'jatar Raider##39911+
.' Bring them to [50.8,45.9] |tip You have to drag them one at a time.
.' Dispose of 3 Dead Zin'jatar Raiders |q 25215/1
step
goto 59.6,40.1
.kill 12 Spiketooth Eel##40200+ |q 25220/1
.clicknpc Coilshell Sifter##39422+
.get 10 Coilshell Sifter |q 25219/1
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
step
goto 49.5,42.4
.talk 39876
..turnin 25215
step
goto 49.2,42.6
.talk 39875
..turnin 25219
step
goto 49.1,42.0
.talk 39878
..turnin 25220
step
goto 41.3,34.2
.talk 39882
..turnin 25216
..accept 25218
step
goto 41.3,34.1
.talk 40227
..accept 25360
step
goto 40.5,35.5
.' Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608 |tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
.' Fill Sambino's Air Balloon |q 25218/1
.kill 10 Green Sand Crab##39418+ |q 25360/1
.get Sambino's Air Valve |q 25218/2
step
goto 41.3,34.2
.talk 39882
..turnin 25218
..accept 25217
step
goto 41.2,34.2
.talk 40227
..turnin 25360
step
goto 42.7,34.0
.' Use one of Sambino's Modified Totems while standing on an orange spot on the ground: |tip You will only get one of the four totems to use, it's random.
.' Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
.' Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
.' Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
.' Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
.' Defend Sambino's Modified Totem
.' Take a Drill Sample |q 25217/1
step
goto 41.3,34.2
.talk 39882
..turnin 25217
..accept 25456
step
goto 50.1,39.0 |n
.' Enter Silver Tide Hollow |goto 50.1,39.0,0.5 |noway |c
step
goto 49.6,42.1
.talk 39876
..turnin 25456
..accept 25359
step
goto 64.1,42.3
.talk 40221
..turnin 25359
..accept 25439
..accept 25441
step
goto 65.8,43.1
.' Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
.' Trap 30 Swarming Serpents |q 25441/1
.kill 10 Zin'jatar Ravager##40275+ |q 25439/1
step
goto 64.1,42.3
.talk 40221
..turnin 25439
..accept 25440
..turnin 25441
step
goto 67.3,49.7
.kill Fathom-Lord Zin'jatar##40510 |q 25440/1
.collect Luminescent Pearl##54614 |n
.' Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
..accept 25442
step
goto 64.1,42.3
.talk 40221
..turnin 25440
step
'Hearth to Silver Tide Hollow |goto 49.1,42.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.2,42.6
.talk 39875
..turnin 25442
..accept 25890
step
goto 50.4,41.1 |n
.' Leave the cave |goto 50.4,41.1,0.5 |noway |c
step
goto 51.8,48.6 |n
.' Enter Nespirah |goto 51.8,48.6,0.5 |noway |c
step
'Run up the spiral ramp and follow Earthmender Duarn around after he spawns:
.' Find a way to communicate with Nespirah |q 25890/1
step
goto 51.6,52.2
.talk 41531
..turnin 25890
..accept 25900
step
goto 51.6,52.2
.talk 41531
..' Tell him whenever he's ready
.' Speak with Earthmender Duarn |q 25900/1
step
goto 51.6,52.2
.talk 41531
..turnin 25900
..accept 25907
..accept 25908
step
goto 55.0,53.3
.kill 7 Idra'kess Sentinel##41466+ |q 25908/1
.kill 7 Idra'kess Enchantress##41467+ |q 25908/2
.' Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178 |tip They are in the trenches with the huge pearls.
.' Rescue 7 Pearl Miners |q 25907/1
step
goto 51.6,52.2
.talk 41531
..turnin 25907
..turnin 25908
..accept 25989
step
goto 53.6,59.9
.' Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184 |tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
.clicknpc Deepseeker Crab##41520
.get Deepseeker Crab |q 25989/1
step
goto 51.6,52.2
.talk 41531
..turnin 25989
..accept 25990
step
goto 51.6,52.2
.talk 41531
..' Tell him let's speak with Nespirah
.' Speak with Earthmender Duarn |q 25990/1
step
goto 51.6,52.2
.talk 41531
..turnin 25990
..accept 25991
step
goto 60.2,63.7
.talk 41810
..turnin 25991
..accept 25993
step
goto 60.2,63.7
.talk 41811
..accept 25992
step
goto 60.1,63.4
.talk 41813
..accept 25994
step
goto 61.3,60.7
.from Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
.get 5 Mysterious Pearl |q 25994/1
.click Idra'kess Weapon Rack##9557+
.get 4 Purloined Polearm |q 25992/1
.' Attack Nespirah Abscesses |tip They look like red lumps sitting on the ground around this area.
.' Attack 7 Nespirah Abscesses |q 25993/1
step
goto 60.1,63.4
.talk 41813
..turnin 25994
step
goto 60.2,63.7
.talk 41810
..turnin 25993
step
goto 60.2,63.7
.talk 41811
..turnin 25992
step
goto 60.2,63.7
.talk 41810
..accept 25995
step
goto 62.9,57.2 |n
.' Follow the path up |goto 62.9,57.2,0.5 |noway |c
step
goto 57.4,56.4
.kill Overseer Idra'kess##41731 |q 25995/1 |tip Kill the Idra'kess Mistresses when instructed to.
step
goto 60.3,52.8 |n
.' Follow the path down |goto 60.3,52.8,0.5 |noway |c
step
goto 51.6,52.2
.talk 41531
..turnin 25995
..accept 25996
.' Listen as Duarn speaks to Nespirah |q 25996/1
step
goto 50.3,55.4
.' Follow Erunak Stonespeaker when he runs away
.clicknpc Swiftfin Seahorse##41776
.' Escape on Erunak's Seahorse |q 25996/2
step
goto 50.8,63.4
.talk 40871
.fpath Legion's Rest
step
goto 51.2,63.0
.talk 40917
..turnin 25996
..accept 25592
step
goto 51.2,63.0
.talk 40916
..accept 25593
step
goto 51.6,62.8
.talk 40919
..accept 25595
step
goto 51.7,62.5
.talk 40918
..accept 25594
step
goto 51.6,62.6
.talk 42908
.home Legion's Rest
step
goto 49.5,64.8 |n
.' Leave the cave |goto 49.5,64.8,0.5 |noway |c
step
goto 49.4,62.2
.from Snapjaw Grouper##40912+
.get 8 Snapjaw Grouper Meat |q 25595/1
.clicknpc Spiralung##39745+
.collect Spiralung##55141 |q 25593 |n
.' Use your Spiralungs on Nespirah Survivors |use Spiralung##55141 |tip They look like Horde mobs swimming in place around the rock air bubble cracks around this area.
.' Rescue 8 Shell Survivors |q 25593/1
.click Fiasco's Stray Part##6314+
.get 12 Fiasco's Stray Parts |q 25594/1
step
goto 59.6,69.0
.kill 10 Redgill Scavenger##40911+ |q 25592/1 |tip They swim above the plants pretty high from the ground.
step
goto 49.5,64.8 |n
.' Swim down under the big stone slab
.' Enter the cave |goto 49.5,64.8,0.5 |noway |c
step
goto 51.7,62.5
.talk 40918
..turnin 25594
step
goto 51.2,63.0
.talk 40916
..turnin 25593
step
goto 51.2,63.0
.talk 40917
..turnin 25592
step
goto 51.6,62.8
.talk 40919
..turnin 25595
step
goto 51.3,62.4
.talk 40920
..accept 25954
step
goto 51.2,63.0
.talk 40916
..accept 25955
..accept 25952
step
goto 51.2,63.0
.talk 40917
..accept 25953
step
goto 40.5,74.8
.' Go to this spot in the ruins
.' Scout the Structures South of Quel'Dormir Gardens |q 25955/3
step
goto 40.5,75.5
.click Broken Prong##9512
..accept 25956
step
goto 39.7,67.7
.click Ranger Valarian##3412
.' Read the Ranger Valarian Statue |q 25954/3
step
goto 38.5,66.0
.click High Priestess Siralen##3412
.' Read the High Priestess Siralen Statue |q 25954/4
step
goto 35.8,63.0
.' Go to this spot in the ruins
.' Scout the Tunnel West of Quel'Dormir Gardens |q 25955/2
step
goto 38.6,59.0
.click Queen Azshara##3412
.' Read the Queen Azshara Statue |q 25954/2
step
goto 39.7,59.0
.click Lestharia Vashj##3412
.' Read the Lestharia Vashj Statue |q 25954/1
step
goto 39.2,57.7
.' Go to this spot in the ruins
.' Scout the Northern Quel'Dormir Gardens |q 25955/1
step
goto 40.7,62.0
.from Azsh'ir Monitor##40877+ |tip They look like small green eyeballs floating above small stands on the ground around this area.
.' Destroy 8 Azsh'ir Monitor |q 25953/1
.kill 10 Azsh'ir Patroller##39638+ |q 25952/1
.collect Ancient Elven Etching##62282 |n
.' Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62282
..accept 27717
step
'Hearth to Legion's Rest |goto 51.6,62.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.3,62.4
.talk 40920
..turnin 25954
..turnin 27717
step
goto 51.2,63.0
.talk 40916
..turnin 25955
..turnin 25952
..turnin 25956
step
goto 51.2,63.0
.talk 40917
..turnin 25953
step
goto 51.6,62.8
.talk 40919
..accept 25957
step
goto 40.5,75.6
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground in the ruins.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 25957
step
goto 40.6,75.3
.talk 40978
..accept 25619
step
goto 39.7,69.5
.' Use the abilities on your hotbar
.from Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
.' Slay 10 Kvaldir defenders |q 25619/1
step
goto 40.6,75.3
.talk 40978
..turnin 25619
..accept 25620
step
goto 39.4,59.0
.talk 40640
..turnin 25620
..accept 25637
step
goto 39.0,58.6
.talk 41050
..accept 25658
step
goto 35.6,60.4
.' Go to the top level of the ruins
.' Use the abilities on your hotbar
.from Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
.' Kill 16 Kvaldir invaders on the terrace |q 25637/1
.click Nar'shola Ward##6913+
.' Activate 6 Nar'shola Wards |q 25658/1
step
goto 37.2,77.5
.talk 41050
..turnin 25658
step
goto 36.4,78.7
.talk 41049
..turnin 25637
..accept 25659
step
goto 28.6,78.6
.' Use the abilities on your hotbar
.kill Varkul the Unrelenting##41115 |q 25659/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25659
step
goto 40.6,75.1
.talk 40919
..turnin 25957
..accept 25958
step
goto 40.6,75.0
.clicknpc Tamed Seahorse##50592
.' You will ride to the Ruins of Vashj'ir |goto 39.6,54.7,0.5 |noway |c
step
goto 39.8,54.0
.talk 40916
..turnin 25958
..accept 25959
step
goto 39.5,54.0
.talk 40917
..accept 25960
step
goto 39.5,54.7
.talk 40918
..accept 25962
step
goto 40.4,55.8
.' Use your Box of Crossbow Bolts on Horde Lookouts |use Box of Crossbow Bolts##56247 |tip They look like Horde mobs either standing or on sea horses around this area with crossbows.
.' Restock 8 Horde Lookouts |q 25960/1
step
goto 37.5,78.4
.from Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
.' Slay 10 Southern Naga Forces |q 25959/1
.click Bloated Kelp Bulb##9535+
.get 8 Bloated Kelp Bulb |q 25962/1
step
goto 39.5,54.7
.talk 40918
..turnin 25962
step
goto 39.5,54.0
.talk 40917
..turnin 25960
step
goto 39.8,54.0
.talk 40916
..turnin 25959
..accept 25963
step
goto 39.5,54.7
.talk 40918
..' Tell him you're ready to begin the assault on the terrace
.' Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
.kill 100 Azsh'ir Soldier##41249+ |q 25963/2
.kill 20 Azsh'ir Wave Screamer##41250+ |q 25963/3
.kill 12 Azsh'ir Archaean##42549+ |q 25963/4
step
goto 39.1,78.7
.talk 40916
..turnin 25963
..accept 25965
step
goto 39.1,78.5
.talk 40917
..accept 25964
step
goto 34.0,67.8
.' Go to this spot at the entrance of the tunnel
.' Scout the Tunnel to the North |q 25965/1
step
goto 31.0,72.2
.' Go to this spot at the entrance of the tunnel
.' Scout the Northwestern Terrace |q 25965/2
step
goto 36.0,75.0
.talk 41784 |tip They look like Horde mobs spread out on the ground around this whole area.
..' Tell them they should get moving.
.' Rescue 6 Injured Assault Volunteers |q 25964/1
step
goto 39.1,78.7
.talk 40916
..turnin 25965
step
goto 39.1,78.5
.talk 40917
..turnin 25964
step
goto 39.1,78.6
.talk 40919
..accept 25966
step
goto 28.9,78.6
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground on the stone terrace.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 25966
step
goto 29.0,78.5
.talk 42076
..accept 25858
step
goto 34.4,78.7
.talk 42072
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Fathom-Lord Zin'jatar |q 25858/1
step
goto 36.8,79.8
.talk 41455
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Overseer Idra'kess |q 25858/3
step
goto 39.2,78.0
.talk 42071
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Lady Sira'kess |q 25858/2
step
goto 46.2,79.6
.talk 42074
..turnin 25858
..accept 25859
step
goto 46.3,78.6
.talk 41476
..accept 25862
step
goto 57.2,89.9
.click Crucible of Nazsharin##9565
..turnin 25862
..accept 25863
step
goto 57.2,85.2
.talk 41457
..accept 25861
step
goto 58.7,86.4
.' Aggro a Kvaldir High-Shaman, but don't kill him |tip They stand inside the buildings around this area.
.' Lure the Kvaldir High-Shaman back to Executioner Verathress at [57.2,85.2]
.' Bring Kvaldir High-Shaman to the executioner |q 25861/1
step
goto 57.2,85.2
.talk 41457
..turnin 25861
step
goto 57.2,87.5
.' Use the abilities on your hotbar
.kill 20 Vrykul Ledge Kvaldir |q 25859/1
step
goto 46.4,79.0
.talk 42076
..turnin 25863
step
goto 46.4,79.3
.talk 42074
..turnin 25859
step
goto 46.4,79.0
.talk 42076
..accept 26191 |instant
.' Witness the Continuing Story of the Battlemaiden |q 25966/1
step
goto 29.6,78.9
.talk 40919
..turnin 25966
..accept 25967
step
goto 29.5,79.0
.clicknpc Tamed Seahorse##48866
.' You will ride to Legion's Rest |goto 50.6,63.4,0.5 |noway |c
step
goto 51.2,63.0
.talk 40917
..turnin 25967
..accept 25968
step
goto 50.4,79.0
.talk 41770
..turnin 25968
..accept 25970
..accept 25971
step
goto 50.4,79.0
.talk 40921
..accept 25969
step
goto 48.4,84.0
.click Horde Survival Kit##7539
.get Horde Survival Kit |q 25970/1
step
goto 48.4,83.8
.kill 10 Muckskin Scrounger##41566+ |q 25969/1
step
goto 51.3,84.3
.from Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+
.click Coil of Kvaldir Rope##7548+
.get 8 Coil of Kvaldir Rope |q 25971/1
step
goto 50.4,79.0
.talk 41770
..turnin 25970
..turnin 25971
..turnin 25969
..accept 25972
step
goto 50.4,79.1
.' Swim up to the rescue balloon on the surface
.click Survival Kit Remnants##7539
.collect Rescue Flare##56188 |n
.' Use your Rescue Flare in your bags |use Rescue Flare##56188
.' Fire a rescue flare towards the Horde ships |q 25972/2
step
goto 50.4,79.1
.talk 40921
..turnin 25972
..accept 25973
step
'Hearth to Legion's Rest |goto 51.6,62.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.2,63.0
.talk 40917
..turnin 25973
step
goto 51.6,62.8
.talk 40919
..accept 26135
step
goto 33.2,77.8
.' Go to the very top of the naga terrace and into the dome temple
.' Infiltrate the Quel'Dormir Temple |q 26135/1
step
goto 33.1,77.8
.' Swim up a bit inside the temple
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It looks like a bright flashing light inside the temple.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 26135
step
goto 33.1,77.9
.talk 41456
..accept 25896
step
goto 33.1,75.9
.talk 42077
..accept 25629
step
goto 33.1,61.0
.talk 41980
..' Tell him the mistress awaits
.' Gather Fathom-Caller Azrajar |q 25896/2
step
goto 33.1,73.0
.talk 41985 |tip They look like pink and yellow nagas with pink shields around them all around this area.
..' Tell them they are needed for the ritual
.' Gather 6 Sira'kess Tide Priestesses |q 25896/1
.' Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
.' Relieve 8 Naz'jar Honor Guards |q 25629/1
step
goto 33.1,75.9
.talk 42077
..turnin 25629
step
goto 33.1,77.9
.talk 41456
..turnin 25896
..accept 25860
step
goto 33.1,76.9
.' Use the abilities on your hotbar
' |from Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+
.kill 20 Attacking Kvaldir |q 25860/1
step
goto 33.1,77.9
.talk 41456
..turnin 25860
..accept 25951
step
goto 37.9,78.5
.' Use the abilities on your hotbar
.from Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
.' Hold the eastern end of Quel'Dormir Terrace |q 25951/1
step
goto 41.9,78.6
.' Use the abilities on your hotbar
.from Hagrim Hopebreaker##42063 |tip He spawns when the naga allies arrive
.' Push the Kvaldir back across the bridge |q 25951/2
step
goto 42.5,78.6
.talk 42077
..turnin 25951
.' Witness the Concluding Story of the Battlemaiden |q 26135/2
step
'Hearth to Legion's Rest |goto 51.6,62.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.6,62.8
.talk 40919
..turnin 26135
..accept 26006
step
goto 49.6,65.1
.' Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
.clicknpc Rope Ladder##41020
.' Jump up onto the boat |goto 64.7,68.7,0.5 |noway |c
step
goto 49.5,65.6
.talk 43225
.fpath Stygian Bounty
step
goto Vashj'ir,64.5,68.8
.talk 42410
..turnin 26006
..accept 26221
step
goto 64.4,68.7
.talk 45460
..accept 27442
step
goto 64.6,68.7
.' Board the Verne once it arrives |q 26221/1 |tip It's a boat, so you may have a to wait a few minutes for it.
step
'Ride the boat
.' Secure Tenebrous Cavern |q 26221/2
step
goto Abyssal Depths,53.9,59.6
.talk 40873
.fpath Tenebrous Cavern
step
goto 51.4,61.5
.talk 41663
..turnin 26221
step
goto 51.5,60.8
.talk 41669
..accept 26122
step
goto 51.2,60.5
.talk 43141
.home Tenebrous Cavern
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 55.8,46.6
.from Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+ |tip They Scourgut Remoras swim in place beneath the big purple ledge plants that grow out of the sides of the tall rock formations around this area.
.' Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
.get 4 Terrapin Oil |q 26122/1
.get 4 Remora Oil |q 26122/2
.get 4 Hammerhead Oil |q 26122/3
step
goto 56.7,58.1 |n
.' Enter the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 51.5,60.8
.talk 41669
..turnin 26122
..accept 26126
step
goto 51.5,60.5
.click Fuel Sampling Station##3491
..' Click "Let's get started!"
.' Choose the Hammerhead Oil Sample 3 Times
.' Choose the Remora Oil Sample 2 Times
.' Mix the samples together!
.collect Promising Fuel Sample##56833 |q 26126
step
goto 51.5,60.8
.talk 41669
..' Tell him you made a Promising Fuel Sample
.' Create the perfect bio-fuel |q 26126/1
step
goto 51.5,60.8
.talk 41669
..turnin 26126
step
goto 51.4,61.5
.talk 41663
..accept 26086
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 42.9,51.0
.talk 41908
..turnin 26086
..accept 26087
step
goto 45.1,56.1
.from Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
.get 6 Glow-Juice |q 26087/1
step
goto 42.9,51.0
.talk 41908
..turnin 26087
..accept 26088
..accept 26089
step
'Use your Fish Hat |use Fish Hat##56813
.' Get the Lure buff |havebuff Interface\Icons\Ability_Vehicle_ElectroCharge |q 26088
step
goto 46.4,54.9
.kill 4 Coldlight Hunter##41925+ |q 26089/1
.kill 4 Coldlight Oracle##41926+ |q 26089/2
.collect Enormous Eel Egg##56812 |n
.' Click your Enormous Eel Egg in your bags |use Enormous Eel Egg##56812
..accept 26090
.' Get near Coldlight Nibblers |tip They look like small fish that hang out in the tips of the huge tube plants around this area.
.get 30 Underlight Nibbler |q 26088/1
step
goto 42.9,51.0
.talk 41908
..turnin 26088
..turnin 26089
..turnin 26090
..accept 26091
..accept 26092
step
goto 44.4,53.7
.' Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56815 |tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
.from Weakened Great-Eel##41927
.' Avenge Orako's Wolf |q 26091/2
step
goto 42.9,51.0
.talk 41908
..turnin 26091
step
'Hearth to Tenebrous Cavern |goto 51.2,60.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.4,61.5
.talk 41663
..turnin 26092
step
goto 51.5,60.9
.talk 41670
..accept 25974
..accept 25980
step
goto 51.5,60.8
.talk 41669
..accept 25982
step
goto 51.5,60.7
.talk 41668
..accept 25976
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 52.5,21.3
.from Fathom-Caller Azrajar##41590
.' Use your Horde Standard on Fathom-Caller Azrajar's corpse |use Horde Standard##56255
.' Plant a banner in Fathom-Caller Azrajar's corpse |q 25980/1
step
goto 43.7,16.7
.click Deepfin Plunder##259+
.get 6 Deepfin Plunder |q 25976/1
step
goto 50.2,18.2
' |from Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+
.kill 10 Sira'kess naga |q 25974/1
.from Merciless One##41601+
.get 6 Merciless Head |q 25982/1
.' You can find more Merciless Heads around [43.4,19.0]
step
goto 56.7,58.1 |n
.' Enter the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 51.5,60.8
.talk 41668
..turnin 25976
step
goto 51.5,60.8
.talk 41669
..turnin 25982
..accept 25988
.' Watch the cutscene
.' Wear the Mindless One |q 25988/1
step
goto 51.5,60.8
.talk 41669
..turnin 25988
..accept 25984
step
goto 51.5,60.9
.talk 41670
..turnin 25974
..turnin 25980
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c
step
goto 42.6,37.8
.talk 41636
..turnin 25984
..accept 26071
..accept 26057
step
goto 42.7,37.9
.talk 41600
..accept 26072
step
goto 42.7,37.9
.talk 41639
..accept 26096
step
goto 46.4,35.0
.' Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
.from Faceless Defiler##41644+ |tip Kill them next to Erunak's Confinement Totem you put down.
.' Confine 5 Faceless Defiler Energies |q 26072/1
' |from Crushing Eel##41646+, Trench Stalker##41645+, Deep Remora##41647+
.kill 8 Defiled Scalding Chasm wildlife |q 26071/1
.click Scalding Shroom##10057+
.get 5 Scalding Shroom |q 26096/1
step
goto 42.7,37.8
.talk 41636
..turnin 26071
step
goto 42.7,37.9
.talk 41600
..turnin 26072
step
goto 42.7,37.9
.talk 41639
..turnin 26096
step
goto 42.7,37.9
.talk 41600
..accept 26111
step
goto 47.0,28.0
.click Stonespeaker's Luring Totem##9575
.from Ick'thys the Unfathomable##41648
.get The Brain of the Unfathomable |q 26111/1
step
goto 52.6,27.8
.talk 41640
..turnin 26057
..accept 26065
step
goto 54.8,28.2
.' Use Valoren's Shrinkage Totem next to Tentacle Horrors |use Valoren's Shrinkage Totem##57409
.from Shrunken Tentacle Horror##41641+
.' Kill all the Tentacle Horrors attacking Wil'hai
.' Free Wil'hai |q 26065/1
step
goto 52.6,27.8
.talk 41640
..turnin 26065
step
goto 42.7,37.9
.talk 41600
..turnin 26111
..accept 26130
step
goto 42.7,37.8
.talk 41636
..accept 26133
step
goto 36.3,47.0
.' Swim down into the cave
.kill Ur'Goz##41654 |q 26130/1
step
goto 34.6,54.6
.kill Sku'Bu##41655 |q 26130/2
step
goto 29.6,53.0
.kill Neph'Lahim##41656 |q 26130/3
step
goto 31.9,51.3
.kill 8 Nether Fiend##41650+ |q 26133/1
step
goto 42.7,37.8
.talk 41636
..turnin 26133
step
goto 42.7,37.9
.talk 41600
..turnin 26130
..accept 26140
step
goto 36.6,42.1 |n
.' Enter L'ghorek |goto 36.6,42.1,0.5 |noway |c
step
goto 38.5,45.3
.talk 42197
..turnin 26140
..accept 26141
..accept 26142
step
goto 27.0,54.0
.from Twilight Champion##41652+, Twilight Candidate##41657+
.collect Twilight Cage Key##57118 |n
.' Click the Twilight Cage Key in your bags |use Twilight Cage Key##57118
..accept 26149
step
goto 27.5,55.7
.click Ancient Conduit##9639+
.' Destroy 5 Ancient Conduits |q 26142/1
.from Twilight Candidate##41657+
.get 7 Runestone of Binding |q 26141/1
.click Cage##1787+
.' Rescue 5 Horde Prisoners |q 26149/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26149
step
goto 38.5,45.3
.talk 42197
..turnin 26141
..turnin 26142
..accept 26154
step
goto 34.9,54.0
.' Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172 |tip You can run through the groups of mobs, they won't attack you, even though they are red.
.' Possess a Bound Torrent |q 26154/1
step
goto 36.3,52.8
.' Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
.kill 50 Twilight Devotee##42281+ |q 26154/2
.kill 10 Faceless Overseer##42285+ |q 26154/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26154
..accept 26143
step
goto 33.1,55.8
.' Use the abilities on your hotbar on Hallazeal the Ascended
.kill Hallazeal the Ascended##41659 |q 26143/1
step
goto 38.5,45.3
.talk 42197
..turnin 26143
..accept 26182
step
'Hearth to Tenebrous Cavern |goto 51.2,60.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.6,60.9
.talk 41600
..turnin 26182
..accept 26194
step
goto 51.6,60.9
.talk 41600
..' Tell him you are prepared
.' Ride the boat until it stops
.' Fight in the Battle for Abyssal Breach |q 26194/1
step
goto 69.8,34.4
.talk 44540
..turnin 26194
step
ding 82
step
goto 56.0,58.1 |n
.' Enter the Tenebrous Cavern |goto 56.0,58.1,0.5 |noway |c
step
goto 53.9,59.6
.talk 40873
.' Fly to Silver Tide Hollow, Vashj'ir |goto Shimmering Expanse,49.4,41.7,0.5 |noway |c
step
goto Kelp'thar Forest,49.3,87.9
.talk 43216
.fpath Sandy Beach
step
goto Shimmering Expanse,61.0,28.4
.talk 43220
.fpath Sandy Beach
step
goto 61.0,28.4
.talk 43220
.' Fly to Brill, Tirisfal Glades |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)
startlevel 82.00
dynamic on
step
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27722
step
goto 50.5,38.4
.talk 45244
..turnin 27442 |tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
..turnin 27722
..accept 27203
step
goto 50.1,37.8
.click Portal to the Maelstrom##5231
.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
step
goto The Maelstrom,33.4,50.2
.talk 45042
..turnin 27203
..accept 27123
step
goto 32.5,52.0
.clicknpc Wyvern##45005
.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
step
goto Deepholm,49.6,53.0
.talk 43065
..turnin 27123
..accept 26245
step
goto 49.7,52.9
.talk 43397
..accept 27136
..accept 26244
step
goto 49.5,53.3
.talk 42573
..accept 26409
step
goto 49.2,51.9
.talk 45300
.home Temple of Earth
step
goto 46.5,57.3
.talk 42574
..turnin 26409
..accept 26410
..accept 27135
step
goto 45.5,57.9
.from Rockslice Flayer##42606+
.get 5 Quartzite Resin |q 26410/1
step
goto 46.5,57.3
.talk 42574
..turnin 26410
step
goto 51.1,61.6
.' Use your Depleted Totem |use Depleted Totem##60835
.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
.' Energize the Totem 8 Times |q 27136/1
step
goto 52.0,58.9
.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
.from Magmatooth##45099
.get The Burning Heart |q 27135/1
step
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 46.5,57.3
.talk 42574
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |tip He's laying on the ground next to Initiate Goldmine.
.' Apply the Explosive Bonding Compound |q 26411/1
step
goto 46.5,57.3
.talk 42574
..turnin 26411
..accept 26413
step
goto 49.5,53.3
.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
step
goto 49.5,53.3
.talk 42573
..turnin 26413
..accept 26484
step
goto 56.1,74.2
.clicknpc Slain Cannoneer##43032
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.clicknpc Captain Skullshatter##43048
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.click Captain's Log##6891
..accept 26246
step
goto 56.7,76.4
.clicknpc Unexploded Artillery Shell##43044 |tip You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental##43026+ |q 26244/1
step
goto 49.6,52.9
.talk 43065
..turnin 26245
..turnin 26246
step
goto 49.7,52.9
.talk 43397
..turnin 26244
step
goto 49.6,53.0
.talk 43065
..accept 26247
step
goto 62.4,52.6
.talk 42684
..turnin 26247
..accept 26248
..accept 26249
step
'All around on this air ship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
.' Receive 6 Slain Crew Member Information |q 26248/1
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.click Bottle of Whiskey##9712 |tip Located on the life boat.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.click Spool of Rope##7538
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26427
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26248
..accept 26251
..accept 26250
step
'Go onto the main deck of the ship and go down the stairs to the deck below:
.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
.talk 42801
.' Subdue Mor'norokk the Hateful |q 26250/1
step
'All around on this lower deck of the air ship:
.kill 6 Twilight Saboteur##42885+ |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.clicknpc Stormbeak##42716
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.6,53.0
.talk 43065
..turnin 26255
..accept 26258
step
goto 49.7,52.9
.talk 43397
..accept 26259
step
goto 59.4,58.2
.' Go to this spot
.' Reach Deathwing's Fall |q 26258/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26258
..accept 26256
step
goto 61.5,60.6
.from Twilight Bloodshaper##43218+
.get Twilight Orders |q 26256/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26256
..accept 26261
step
goto 62.8,59.5
.click Slavemaster's Coffer##41
.collect Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.click Ball and Chains##181+ |tip They are attached to the feet of the Enslaved Miners around this area.
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.click Forgemaster's Log##6891
..turnin 26260
..accept 27007
step
goto 70.6,61.2
.' Go to this spot
.' Reach Upper Silvermarsh |q 27007/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27007
..accept 27010
step
goto 71.8,64.3
.click Trogg Crate##9855
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect Maziel's Research##60816 |n
.' Click Maziel's Research in your bags |use Maziel's Research##60816
..accept 27100
step
goto 74.9,64.8
.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
.' Watch the dialogue
.' Uncover the World Pillar Fragment Clue |q 27010/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27010
..accept 27061
step
goto 72.5,65.2
.from Mercurial Ooze##43158+
.get 4 Twilight Research Notes |q 27100/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27100
..accept 27101
step
goto 67.2,70.2
.click Maziel's Journal##2530
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 72.8,62.0
.kill Maziel##44967 |q 27102/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27102
step
goto 69.5,68.0 |n
.' Leave the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 64.5,82.1
.talk 44010
..turnin 27061
..accept 26766
..accept 26768
step
goto 68.2,77.9
.from Scalesworn Cultist##44221+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26768
step
goto 59.9,83.6
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch##44148 |q 26771/1
step
goto 64.5,82.1
.talk 44010
..turnin 26771
..accept 26857
step
goto 64.6,82.2
.talk 44222
..accept 26861
step
goto 68.7,75.0
.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
.' Disrupt the Twilight Gate |q 26861/1
step
goto 71.2,75.1
.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
.' Disrupt the Elemental Gate |q 26861/2
step
goto 69.9,76.7
.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
.' Defeat 8 Abyssion's Underlings |q 26857/1
step
goto 64.6,82.2
.talk 44222
..turnin 26861
step
goto 64.5,82.2
.talk 44010
..turnin 26857
..accept 26876
step
goto 69.9,76.9
.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
.from Abyssion##44289
.click The First Fragment of the World Pillar##9779
.get The Upper World Pillar Fragment |q 26876/1
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.6,53.0
.talk 43065
..turnin 26876
step
goto 49.7,52.9
.talk 43397
..turnin 26259
step
goto 27.9,68.7
.talk 43071
..turnin 26484
..accept 27931
step
goto 30.6,77.7
.talk 47195
..turnin 27931
..accept 27932
..accept 27933
step
goto 32.2,79.1
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490 |tip They look like glowing giants that walk around this area.
.kill 5 Sundered Emerald Colossus##44229+ |q 27932/1
.from Jade Rager##44220+
.get 6 Elemental Ore |q 27933/1
step
goto 30.6,77.7
.talk 47195
..turnin 27932
..turnin 27933
..accept 27934
step
goto 30.6,77.7
.talk 47195
..' Tell him you are ready for the ritual
.' Complete the One With the Ground Ritual |q 27934/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27934
..accept 27935
step
goto 46.9,89.1
.kill Avalanchion##44372 |q 27935/1
step
goto 43.4,82.0 |n
.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
step
goto 27.9,68.7
.talk 43071
..turnin 27935
..accept 26499
step
goto 28.2,69.6
.talk 43160
..accept 26500
step
goto 29.7,68.8
kill 12 Stone Trogg Ambusher |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
.' Grant the Stonefather's Boon 12 times |q 26499/1
step
goto 28.2,69.6
.talk 43160
..turnin 26500
..accept 26502
step
goto 27.9,68.7
.talk 43071
..turnin 26499
..accept 26501
step
goto 27.3,67.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Armory |q 26501/1
.click Thunder Stone##9722+
.get 12 Thunder Stone |q 26502/1
step
goto 24.5,62.4
.talk 43168
..turnin 26501
..accept 26537
step
goto 24.8,62.2
.talk 43169
..turnin 26502
..accept 26564
step
goto 24.6,62.2
.talk 43319
..accept 26591
step
goto 23.9,60.3
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |tip They look like dwarves laying on the ground around this area.
.' Patch up 10 Injured Earthen |q 26591/1
.click Catapult Part##9860+
.get 6 Catapult Part |q 26564/1
' |from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
.kill 12 Fractured Battlefront stone troggs |q 26537/1
step
goto 24.5,62.4
.talk 43168
..turnin 26537
step
goto 24.6,62.2
.talk 43319
..turnin 26591
step
goto 24.8,62.2
.talk 43169
..turnin 26564
step
goto 24.5,62.4
.talk 43168
..accept 26625
step
goto 22.6,56.9
.from Troggzor the Earthinator##43456
.get The Earthinator's Cudgel |q 26625/1
step
goto 24.5,62.4
.talk 43168
..turnin 26625
step
goto 24.8,62.2
.talk 43169
..accept 27126
step
goto 20.7,61.6
.talk 45043
..turnin 27126
..accept 26632
step
goto 20.7,61.6
.talk 45043
..' Tell him you're ready to escort the catapult
.' Safely Escort the Earthen Catapult |q 26632/1
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.clicknpc Earthen Catapult##43952
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombard 30 Reinforcements |q 26755/1
step
goto 22.7,52.0
.talk 43897
..turnin 26755
..accept 26762
step
goto 22.8,52.1
.talk 43898
..accept 26770
step
goto 22.6,47.6
.clicknpc Deactivated War Construct##43984
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic##43995+ |q 26770/1
step
goto 22.8,52.1
.talk 43898
..turnin 26770
step
goto 22.7,52.0
.talk 43897
..turnin 26762
..accept 26834
step
goto 27.6,44.8
.talk 44143
..turnin 26834
..accept 26791
..accept 26792
step
goto 27.6,44.7
.clicknpc War Guardian##44126
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstrosity##44035+ |q 26792/2
.clicknpc Giant Mushroom##44049+
.' Destroy 5 Giant Mushrooms |q 26791/2
step
goto 27.6,44.8
.talk 44143
..turnin 26791
..turnin 26792
..accept 26835
step
goto 22.7,52.0
.talk 43897
..turnin 26835
..accept 26836
step
goto 24.5,31.1
.from Bouldergut##44151
.' Rescue Stonefather Oremantle |q 26836/1
step
goto 22.7,52.0
.talk 43897
..turnin 26836
..accept 27937
step
goto 28.0,68.6
.talk 44204
..turnin 27937
..accept 27938
step
goto 28.0,68.7
.click The Stonefather's Safe##7608
.get The Middle Fragment of the World Pillar |q 27938/1
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,53.3
.talk 42573
..turnin 27938
step
goto 49.6,53.0
.talk 43065
..accept 26326
step
goto 46.1,45.6
.talk 42730
..turnin 26326
..accept 26312
..accept 26314
step
goto 46.2,45.7
.talk 42731
..accept 26313
step
goto 44.3,43.7
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
step
goto 46.2,45.7
.talk 42731
..turnin 26313
step
goto 46.1,45.6
.talk 42730
..turnin 26312
..turnin 26314
step
goto 46.2,45.7
.talk 42731
..accept 26315
step
goto 49.2,40.1
.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
.' Seek Peace with Boden the Imposing |q 26315/1
step
goto 46.2,45.7
.talk 42731
..turnin 26315
..accept 26328
step
goto 56.5,42.7
.talk 42467
..turnin 26328
..accept 26376
..accept 26377
step
goto 56.5,41.0
.talk 42899
..accept 26375
step
goto 60.2,39.4
.kill Dragul Giantbutcher##42921 |q 26376/1
step
goto 59.5,41.5
.click Jade Crystal Cluster##9694+
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
step
'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
.collect Jade Crystal Composite##58783 |q 26377
step
goto 59.6,41.4
.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
.' Lure an Agitated Tunneler |q 26377/1
step
goto 59.3,40.6
' |from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
.kill 12 Lorthuna's Gate Cultists |q 26376/2
step
goto 56.5,41.0
.talk 42899
..turnin 26375
step
goto 56.5,42.7
.talk 42467
..turnin 26376
..turnin 26377
..accept 26426
step
goto 51.7,31.6
.' Get next to Felsen the Enduring |tip He's a big white rock giant.
.' Find Felsen the Enduring |q 26426/1
step
goto 58.4,25.7
.' Fly to the mouth of this cave
.' Find the entrance to the Crumbling Depths |q 26426/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26426
..accept 26869
step
goto 58.7,25.9 |n
.' Enter the cave |goto 58.7,25.9,0.5 |noway |c
step
goto 64.5,21.7 |n
.' Follow the path |goto 64.5,21.7,0.5 |noway |c
step
goto 65.3,18.4 |n
.' Follow the path |goto 65.3,18.4,0.5 |noway |c
step
goto 66.4,20.6
.click Gigantic Painite Cluster##9815
..turnin 26869
..accept 26871
step
goto 64.3,23.5 |n
.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
step
goto 58.3,25.5 |n
.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
step
goto 56.5,42.7
.talk 42467
..turnin 26871
..accept 26436
step
goto 34.3,34.3
.talk 42469
..turnin 26436
..accept 26438
..accept 26437
step
goto 34.6,34.2
.talk 43344
..accept 26439
step
goto 30.5,46.8
' |from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+
.kill 12 Jaspertip flayers |q 26438/1
.click Chalky Crystal Formation##9715+
.get 8 Chalky Crystal Formation |q 26437/1
.clicknpc Dormant Stonebound Elemental##43115+
.' Reform 6 Stonebound Elementals |q 26439/1
step
goto 34.3,34.3
.talk 42469
..turnin 26438
..turnin 26437
step
goto 34.5,34.4
.talk 43344
..turnin 26439
step
goto 34.3,34.3
.talk 42469
..accept 28869
step
'Next to you:
.talk 43116
..turnin 28869
..accept 26440
step
goto 30.1,47.7
.' Get next to the huge green crystals
.' Bring Pebble to the crystal formation |q 26440/1
step
'Next to you:
.talk 43116
..turnin 26440
..accept 26441
step
goto 34.3,34.3
.talk 42469
..turnin 26441
..accept 26507
..accept 26575
step
goto 47.6,26.8
.kill Gorgonite##43339 |q 26575/1
step
goto 47.5,26.8
.clicknpc Petrified Stone Bat##43182+
.get 12 Petrified Stone Bat |q 26507/1
step
'Next to you:
.talk 43116
..turnin 26507
step
goto 34.3,34.3
.talk 42469
..turnin 26575
..accept 26576
..accept 26577
step
goto 39.9,19.4
.talk 42466
..turnin 26576
..accept 26656
step
goto 39.9,19.4
.talk 42466
..' Tell him you are ready to escort a group of elementals across the open.
.' Speak to Terrath the Steady |q 26656/1
step
goto 51.1,14.7
.' Go to this spot
.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Be careful not to fly to quickly or you the rock elementals will disappear when you get too far away from them.
step
goto 39.9,19.4
.talk 42466
..turnin 26656
..accept 26657
..accept 26658
step
goto 35.4,22.5
.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
.get Stonework Mallet |q 26658/1
step
goto 39.9,19.4
.talk 42466
..turnin 26658
step
goto 36.5,18.8
.kill 6 Stone Drake##42522+ |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
step
goto 33.1,24.1
.talk 42466
..turnin 26659
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 72.2,54.0
.talk 42472
..turnin 26577
..accept 26578
..accept 26579
..accept 26580
step
goto 71.8,47.6
.talk 43395
..turnin 26580
..accept 26581
step
goto 73.6,40.8
.kill 8 Fungal Behemoth##42475+ |q 26579/1
.from Doomshroom##43388+ |tip They look like orange mushrooms around this area.
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
step
goto 71.8,47.6
.talk 43395
..turnin 26581
..accept 26582
step
goto 72.2,54.0
.talk 42472
..turnin 26578
..turnin 26579
..turnin 26582
..accept 26584
..accept 26585
step
goto 68.5,26.4
.talk 43442
..accept 26583
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 68.5,26.3
.talk 43442
..turnin 26583
step
goto 69.4,24.8
.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
.click Verlok Miracle-Grow##6895+
.get 8 Verlok Miracle-Grow |q 26585/1
step
goto 72.2,54.0
.talk 42472
..turnin 26584
..turnin 26585
..accept 26750
step
ding 83
step
goto 56.3,12.2
.talk 42465
..turnin 26750
..accept 26752
step
'Watch the dialogue
.' Attend the Stonemother's Audience |q 26752/1
step
goto 56.1,13.5
.talk 43809
..turnin 26752
..accept 26827
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
.' Skip to the next step in the guide
step
goto 51.5,51.8
.talk 44633
..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
.' Skip to the next step in the guide
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed. |tip You will probably need to wait for him to respawn.
.' Rally 5 Earthen Ring |q 26827/1
step
goto 51.3,50.1
.talk 44823
..accept 27005
step
goto 51.3,50.0
.talk 44818
..accept 27008
step
goto 49.6,53.0
.talk 43065
..turnin 26827
..accept 26828
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27008/1
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27005/1
step
goto 51.3,50.1
.talk 44823
..turnin 27005
step
goto 51.3,50.0
.talk 44818
..turnin 27008
..accept 27043
step
goto 51.3,50.1
.talk 44823
..accept 27041
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27043/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27043/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27043/3
step
goto 40.2,67.5
.click One-Time Decryption Engine##9842+
.' Decrypt 6 Plans |q 27041/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27041
..accept 27059
step
goto 39.1,73.9
.click Waygate Controller##9849
.' Destroy the Waygate |q 27059/1
step
goto 39.9,62.2
.kill Haethen Kaul##44835 |q 27043/4 |tip He's up on a huge floating rock.
step
goto 51.3,50.0
.talk 44823
..turnin 27059
..accept 28293
step
goto 51.3,50.0
.talk 44818
..turnin 27043
step
goto 63.3,25.0
.talk 44025
..turnin 26828
..accept 26829
..accept 26832
step
goto 62.6,26.9
.talk 44080
..accept 26831
step
goto 62.4,31.8
.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
.' Defeat High Priestess Lorthuna |q 26832/2
step
goto 58.9,32.9
.from Boldrich Stonerender##42923
.' Defeat Boldrich Stonerender |q 26832/1
step
goto 63.1,38.1
.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
.' Defeat Zoltrik Drakebane |q 26831/1
step
goto 64.1,36.9
.talk 42614
..turnin 26831
step
goto 60.3,33.2
' |from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
.kill 15 Twilight Precipice Cultists |q 26829/1
step
goto 63.3,25.0
.talk 44025
..turnin 26829
..turnin 26832
..accept 26833
step
goto 49.6,53.0
.talk 43818
..turnin 26833
..accept 26875
step
goto 50.7,49.6
' |from Twilight Heretic##44681+
.kill 12 Twilight Invaders |q 26875/1
.kill Desecrated Earthrager##44683+ |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
step
goto 49.6,52.9
.kill High Priestess Lorthuna##43837 |q 26971/1
step
goto 49.6,52.9
.talk 43835
..turnin 26971
step
goto 49.8,53.4
.talk 43792
..accept 26709
step
goto 56.4,12.1
.talk 42465
..turnin 26709
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.9,53.1
.click Portal to Orgrimmar##4395
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)
startlevel 83.00
dynamic on
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 28557
step
goto 49.1,70.5
.talk 47571
..turnin 28293 |tip You will only be able to turn in this quest if you completed the Deepholm guide section.
step
goto 49.7,59.2
.talk 3310
.' Fly to Dawnrise Expedition, Tanaris |goto Tanaris,33.3,77.3,0.5 |noway |c
step
goto Tanaris,30.5,65.5
.talk 44833
..turnin 28557
..accept 27003
step
goto 30.5,65.7
.clicknpc Lady Humps##46536
.' Watch the cutscenes
.' Escort the Caravan |q 27003/1
step
goto Uldum,59.7,71.8
.talk 46873
..turnin 27003
step
goto 59.6,72.0
.talk 46872
..accept 27922
step
goto 61.7,71.1
.click Neferset Frond##10097
.' Watch the cutscene
.' Uncover the Neferset Secret |q 27922/1
step
goto 59.6,72.0
.talk 46872
..turnin 27922
..accept 27923
..accept 28105
step
goto 59.7,72.0
.talk 46875
..accept 27924
step
goto 60.0,74.0
.from Kavem the Callous##47567
.get Neferset Key |q 28105/1
step
goto 60.8,73.9
.from Neferset Denizen##48267+
.click Neferset Armor##10100+
.get 6 Neferset Armor |q 27924/1
.' Use your Brazier Torch next to Bales of Hay |tip They look like bundles of yellow straw sitting on the ground around this area. |use Brazier Torch##63027
.' Burn 5 Bales of Hay |q 27923/1
step
goto 59.7,72.0
.talk 46875
..turnin 27924
step
goto 59.6,72.0
.talk 46872
..turnin 27923
..turnin 28105
..accept 28112
step
goto 54.9,32.7
.talk 47684
..turnin 28112
..accept 28134
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 56.2,33.6
.talk 48275
.fpath Ramkahen
step
goto 53.0,27.7
.talk 47715
..' Tell him you might be able to help
.' Speak with Sun Priest Asaris |q 28134/2
step
goto 53.0,27.7
.talk 47715
..accept 28141
..accept 28145
step
goto 46.3,21.0
.from Wastewander Outrider##45905+
.get 4 Relic of the Sun King |q 28141/1
.from Venomblood Scorpid##45859+
.' Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
.' Drain 8 Venomblood Scorpids |q 28145/1
step
goto 53.0,27.7
.talk 47715
..turnin 28141
..turnin 28145
..accept 28502
step
goto 45.7,16.2
.kill Warlord Ihsenn##47755 |q 28502/1
step
goto 53.0,27.7
.talk 47715
..turnin 28502
step
goto 49.7,39.2
.talk 47930
..' Tell him the king wishes to be informed about recent Neferset activity
.' Speak with Asaq |q 28134/3
step
goto 49.7,39.1
.talk 47318
..accept 27993
step
goto 60.3,38.3
.talk 46603
..' Tell him King Phaoris sent you to ask him about Neferset activity
.' Speak with Nomarch Teneth |q 28134/1
step
goto 60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto 64.4,22.3
.' Go to this spot
.' Investigate Khartut's Tomb |q 27993/1
step
goto 64.4,22.3
.talk 44860
..turnin 27993
..accept 27141
step
goto 64.3,22.2
.click Powder Keg##472
.' Watch the cutscene
.' Assist Harrison at Khartut's Tomb |q 27141/1
step
goto 64.6,28.6
.talk 45180
..turnin 27141
step
goto 64.6,28.7
.talk 45186
..accept 27179
step
goto 64.8,29.6
.click Elaborate Disc##8342
..accept 27176
step
goto 66.1,29.0
.from Mangy Hyena##45202
.' You will accept a quest
..accept 27187
step
goto 68.2,31.5
.from Skarf##45204
.from Sultan Oogah##45205
.collect Sultan's Staff##60865 |q 27176
step
'Use your Elaborate Disc |use Elaborate Disc##60859
.get Shaft of the Stars |q 27176/1
step
goto 66.1,29.0
.from Sand Pygmy##45190+
.click Ornate Tablet Fragment##6420+
.get 10 Ornate Tablet Fragment |q 27179/1
.from Mangy Hyena##45202+
.' Eradicate 12 Mangy Hyenas |q 27187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27187
step
goto 64.6,28.6
.talk 45180
..turnin 27179
..turnin 27176
..accept 27196
step
goto 64.6,28.6
.talk 45180
..' Tell him you're ready!
.' Follow Harrison Jones |tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
.' Accompany Harrison Jones to the Chamber of the Stars |q 27196/1
step
goto 64.5,28.0
.talk 45296
..turnin 27196
..accept 27511
step
goto 65.7,25.8
.' Go to this spot
.' Examine the Northern Hieroglyphs |q 27511/2
step
goto 64.4,29.9
.' Go to this spot
.' Examine the Ancient Mechanism |q 27511/1
step
goto 63.4,32.5
.talk 45874
..accept 27541
step
goto 63.4,32.5
.talk 45874
..' Take the scout's spectacles.
.get Broken Spectacles |q 27541/1
step
goto 63.4,33.9
.' Go to this spot
.' Examine the Southern Hieroglyphs |q 27511/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27511
step
goto 64.5,28.0
.talk 45296
..turnin 27541
..accept 27549
..accept 28602
step
goto 63.3,28.0
.click Suspended Starlight##9933+
.get 7 Suspended Starlight |q 27549/1
.' Walk near the skeletons laying on the ground around this area
.from Tormented Tomb-Robber##45765+
.get 6 Piece of Rope |q 28602/1
step
goto 64.5,28.0
.talk 45296
..turnin 27549
step
goto 64.5,28.0
.talk 45296
..turnin 28602
..accept 27431
step
goto 64.5,28.0
.talk 45296
..' Ask him what you can do to help
.' Watch the cutscene
.' Stay Out of Harrison's Way |q 27431/1
step
goto 64.5,28.0
.talk 45296
..turnin 27431
..accept 27624
step
goto 64.0,26.4
.click Watcher Head##10079
.get Orb of the Morning Star |q 27624/1
step
goto 66.8,28.1
.click Watcher Head##10079
.get Orb of the Evening Star |q 27624/2
step
goto 65.3,32.6
.click Watcher Head##10079
.get Orb of the Shooting Star |q 27624/4
step
goto 62.5,32.0
.click Watcher Head##10079
.get Orb of the North Star |q 27624/3
step
goto 64.5,28.0
.talk 45296
..turnin 27624
..accept 27669
step
goto 64.5,28.7
.' Use your Orbs of the Stars |use Orbs of the Stars##62054
.' Watch the cutscene
.' Reactivate the Obelisk of the Stars |q 27669/1
step
goto 63.9,33.9
.talk 48034
..turnin 27669
step
goto 54.9,32.7
.talk 47684
..turnin 28134
..accept 28135
step
goto 54.3,35.3
.talk 47005
..accept 27899
step
goto 45.2,38.0
.talk 45799
..turnin 28135
..accept 27520
step
goto 45.3,37.8
.talk 45772
..accept 27519
..accept 27595
step
goto 40.0,40.5
.talk 46003
..turnin 27595
..accept 27602
step
goto 39.6,45.4
.click Sand-Covered Hieroglyphs##5992
..turnin 27602
..accept 27623
step
goto 39.6,40.9
.clicknpc Colossus of the Sun##46041
.from Colossus of the Sun##46041
.get Stone of the Sun |q 27623/2
step
goto 41.2,37.6
.clicknpc Colossus of the Moon##46042
.from Colossus of the Moon##46042
.get Stone of the Moon |q 27623/1
step
goto 40.7,40.2
.kill 6 Scion of Al'Akir##45755+ |q 27520/1
.clicknpc Orsis Survivor##45715+
.' Rescue 8 Orsis Survivors |q 27519/1
step
goto 39.6,45.4
.click Sand-Covered Hieroglyphs##5992
..turnin 27623
..accept 27706
step
goto 39.6,45.4
.click Sacred Receptacle##6502
.get The Scepter of Orsis |q 27706/1
step
goto 44.0,57.1
.talk 46978
..turnin 27899
..accept 27900
..accept 27901
step
goto 44.3,58.2
.from Schnottz Air Officer##46993
.collect Efficient Excavations##62768 |n
.' Click the Efficient Excavations in your bags |use Efficient Excavations##62768
..accept 28132
step
goto 46.7,58.4
.from Schnottz Air Trooper##46979+
.' Slay 10 Schnottz Air Troopers |q 27900/1
.from Schnottz Air Officer##46993+
.collect Uldum Chest Key Code##62608 |n
.click Obelisk of the Sun Coffer##8685+
.collect 6 Titan Device Component##62610 |q 27901
step
'Use your Titan Device Components |use Titan Device Component##62610
.get Titan Activation Device |q 27901/1
step
goto 44.0,57.1
.talk 46978
..turnin 27900
..turnin 27901
..accept 27903
step
goto 45.2,58.8 |n
.' Follow the path down |goto 45.2,58.8,0.5 |noway |c
step
goto 47.1,58.8
.' Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611 |tip It looks like a huge statue at the bottom of the Chamber of the Sun, holding a fireball.
.from Titanic Guardian##47032 |tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
.get Lens of the Sun |q 27903/1
step
goto 45.6,57.8
.' Fly up onto the middle platform inside this cave
.clicknpc Titan Mechanism##50401
..turnin 27903
step
goto 44.0,57.1
.talk 46978
..accept 27905
.' Use the abilities on your hotbar to shoot down the airplanes that chase you
.' Escape the Obelisk of the Sun |q 27905/1
step
goto 54.6,41.8
.talk 48082
..turnin 27905
step
goto 45.2,38.0
.talk 45799
..turnin 27520
step
goto 45.3,37.8
.talk 45772
..turnin 27519
..turnin 27706
step
goto 45.2,38.0
.talk 45799
..accept 27628
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.9,32.7
.talk 47684
..turnin 27628
step
goto 55.0,34.0
.talk 47959
..accept 27630
..accept 27629
..accept 27631
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27630
..accept 27836
..accept 27837
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 52.9,40.8
.kill 8 Stillwater Slitherer##46868+ |q 27837/1
.click Slitherer Egg##7803+
.' Destroy 6 Slitherer Eggs |q 27836/1
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27836
..turnin 27837
..accept 28611
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 51.8,40.1 |n
.' Enter the underwater cave |goto 51.8,40.1,0.5 |noway |c
step
goto 49.9,40.1
.from Dark Ritualist Zakahn##49148
.' Stop the Neferset Ritual |q 28611/1
step
goto 51.8,40.1 |n
.' Leave the underwater cave |goto 51.8,40.1,0.5 |noway |c
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 28611
..accept 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 58.9,46.1
.talk 46134
..turnin 27631
..accept 28198
..accept 28201
step
goto 59.0,46.1
.talk 48012
..accept 28200
step
goto 59.6,47.3
.talk 46883
..turnin 28198
..accept 28210
step
goto 56.3,53.5
.talk 46136
..turnin 27629
..accept 27632
step
goto 55.6,53.7
.talk 46333
.' Recruit 8 Ramkahen Laborers |q 28201/1
step
goto 56.7,48.5
.from Riverbed Crocolisk##45321+ |tip They are all along and in this big river.
.get 20 Hardened Crocolisk Hide |q 28200/1
step
goto 59.0,46.1
.talk 48012
..turnin 28200
step
goto 58.9,46.1
.talk 46134
..turnin 28201
..accept 27839
step
goto 60.4,57.5
.' Use your Horn of Ramkahen |use Horn of Ramkahen##62534
.' When the cat men run in to attack the smugglers, go to 60.5,58.7
.click Ancient Tol'vir Weapon##10071
.get Ancient Tol'vir Armaments |q 27839/1
step
goto 58.1,60.8
.from Neferset Guard##46340+
.get Vir'Naal Delta Map |q 27632/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27632
..accept 27707
step
goto 55.5,59.5
.from Bloodsnarl Hyena##45353+
.' Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1
step
'Next to you:
.talk 48022
..turnin 28210
..accept 28276
step
goto 56.9,62.4
.talk 48237
..turnin 28276
..accept 28277
step
goto 56.9,62.4
.talk 48237
..' Tell him let's see what he and his lions can do
.' Use the abilities on your hotbar to use the lions to kill the hyenas
.kill 30 Bloodsnarl Scavenger##48209+ |q 28277/1
step
goto 56.9,62.4
.talk 48237
..turnin 28277
..accept 28291
step
goto 71.3,73.7
.talk 46425
..' Tell him you're looking for Tahet
.' Fight the enemies that attack
.' Discover Tahet's Whereabouts |q 27707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27707
..accept 27738
step
goto 58.3,82.9
.talk 46496
.from Gorebite##46278
.from Caimas the Pit Master##46276 |tip Make him chase you.  Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area.  Baby Crocs will damage him and slow his run speed down.  Eventually, he will die.
.' Free Tahet |q 27738/1
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.9,14.2
.kill Scalemother Hevna##46871 |q 27838/1 |tip She's a snake underwater.
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 58.9,46.1
.talk 46134
..turnin 28291
..turnin 27839
step
goto 56.3,53.5
.talk 46136
..turnin 27738
..accept 28533
step
goto 54.9,32.7
.talk 47684
..turnin 28533
.' Watch the cutscene
..accept 28561
step
goto 67.2,42.9
.talk 48761
..turnin 28561
..accept 28498
step
goto 67.3,42.8
.talk 48501
..accept 28499
step
goto 71.7,46.1
' |from Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
.kill 10 Neferset intruder |q 28499/1
.click Atulhet's Record Fragment##6420+
.get 8 Atulhet's Record Fragment |q 28498/1
step
goto 67.3,42.8
.talk 48501
..turnin 28499
step
goto 67.2,42.9
.talk 48761
..turnin 28498
..accept 28500
step
goto 78.2,45.7
.from Raider Lord Havat##49214
.get The Cypher of Keset |q 28500/1
step
goto 67.2,42.9
.talk 48761
..turnin 28500
..accept 28501
step
goto 66.7,41.8
.talk 49228
.' Use the abilities on your hotbar to command and heal the troops
.' Complete the Defense of Nahom |q 28501/1
step
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
step
goto 67.2,42.9
.talk 48761
..turnin 28501
..accept 28623
step
goto 67.3,42.8
.talk 48501
..accept 27755
step
goto 69.8,58.9
.kill Mekgineer Mixeltweed##46592 |q 27755/2 |tip He walks around this area in a metal spider-like machine.
.kill 6 Crazed Digger##46590+ |q 27755/1
.collect A.I.D.A. Communicator##62483 |n
.' Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
..accept 27760
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
..turnin 27760
..accept 27761
..accept 27777
step
goto 73.3,72.8
.' Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
.from Twizzleflux the Insane##46587
.get Core Access Codes |q 27777/1
step
goto 78.8,62.1
.' Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click First Bomb Cluster##9277
.' Disarm the First Bomb Cluster |q 27761/1
step
goto 79.0,64.3
.' Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Second Bomb Cluster##9277
.' Disarm the Second Bomb Cluster |q 27761/2
step
goto 79.0,64.9
.' Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Third Bomb Cluster##9277
.' Disarm the Third Bomb Cluster |q 27761/3
step
goto 79.0,63.6
.' Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
.clicknpc Unstable Bomb Bot##46888+
.' Deactivate 4 Unstable Bomb Bots |q 27761/4
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
..turnin 27761
..turnin 27777
..accept 27778
step
goto 77.0,62.9
.click Maintenance Tools##7764
.collect Maintenance Axe##62621 |q 27778
step
goto 77.0,63.0
.clicknpc Wibson Mainframe##46715
.' Hack the Wibson Mainframe |q 27778/1
step
goto 77.3,63.3
.talk 46750
..turnin 27778
..accept 27779
step
goto 81.9,58.8
.' Roll down the hill as the Fusion Core
.' Run over gnomes all around this area
.' Obliterate 1000 Crazed Gnomes |q 27779/1
step
goto 77.6,62.4
.' Roll back up the hill
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 27779
step
goto 77.3,63.3
.talk 46750
..turnin 27779
step
goto 52.0,65.5
.talk 48564
..turnin 28623
..accept 28480
..accept 28483
step
goto 52.9,65.5
.talk 49345
..accept 28486
step
goto 54.1,71.2
.talk 49244
.' Protect the rangers as they run up the path
.' Secure Higher Ground |q 28486/1
step
goto 47.5,77.3
.kill High Priest Sekhemet##47730 |q 28480/2
step
goto 50.6,87.0
.kill Scorpion-Lord Namkhare##47742 |q 28480/1
step
goto 48.7,84.9
.from Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
.get 10 Neferset Insignia |q 28483/1
step
goto 52.9,65.5
.talk 49345
..turnin 28486
step
goto 52.0,65.5
.talk 48564
..turnin 28480
..turnin 28483
..accept 28520
step
goto 52.0,82.3
.kill Dark Pharaoh Tekahn##47753 |q 28520/1
step
goto 24.4,64.5
.talk 47670
..turnin 28132
..accept 27926
step
goto 22.5,63.2
.talk 47176
..' Ask him what he thinks of our host
.' Mingle with Ambassador Laurent |q 27926/1
step
goto 22.5,63.2
.talk 47185
..' Ask him what he knows of our generous host
.' Mingle with a Refined Gentleman |q 27926/2
step
goto 22.3,63.2
.talk 47187
..' Ask him how he finds the Commander
.' Mingle with a Budding Artist |q 27926/3
step
goto 22.2,63.2
.talk 47189
..' Ask her how she has been enjoying her time here
.' Mingle with an Aspiring Starlet |q 27926/4
step
goto 22.0,64.5
.talk 49528
.home Schnottz's Landing
step
goto 22.3,64.9
.talk 48273
.fpath Schnottz's Landing
step
goto 24.4,64.5
.talk 47670
..turnin 27926
..accept 27928
step
goto 24.4,64.1
.talk 47159
..accept 27939
step
goto 40.6,68.9
.from Diseased Vulture##47202
.' You will accept a quest
..accept 27940
step
goto 40.6,68.9
.from Diseased Vulture##47202+
.' Slay 8 Diseased Vultures |q 27940/1
.from Shaggy Desert Coyote##47190+
.get 5 Desert Coyote Pelt |q 27928/1
.clicknpc Desert Fox##47201 |tip It runs around a lot, so you will probably have to search for it to find it.
.get The Desert Fox |q 27939/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27940
step
'Hearth to Schnottz's Landing |goto 22.0,64.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 24.4,64.5
.talk 47670
..turnin 27928
..accept 27941
step
goto 24.4,64.2
.talk 47159
..turnin 27939
..accept 27942
..accept 27943
step
goto 31.2,63.6
.from Furious Specter##47220+
.' Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
.get 5 Furious Spectral Essence |q 27943/1
.clicknpc Dead Trooper##47219+
.get 10 Trooper Uniform |q 27941/1
.click Well-preserved Idol##10092+
.get 8 Well-preserved Idol |q 27942/1
step
goto 24.4,64.5
.talk 47670
..turnin 27941
step
goto 24.4,64.1
.talk 47159
..turnin 27942
..turnin 27943
..accept 27950
step
goto 24.4,64.1
.talk 47159
..' Tell him the perimeter is secure
.' Witness Gobbles' Transformation Ritual |q 27950/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27950
step
goto 24.4,64.1
.talk 47159
..accept 27969
step
'Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
.' Wear the Uniform |havebuff INTERFACE\ICONS\inv_chest_leather_08 |q 27969
step
goto 23.2,60.1
.talk 47292
..' Tell them they're behind schedule
.' Motivate 6 Slackers |q 27969/1 |tip You won't motivate all of the Slacking Laborers you talk to.
.' You can find more Slacking Laborers around [20.5,60.5]
step
goto 24.5,64.2
.talk 47159
..turnin 27969
step
goto 24.4,64.5
.talk 47670
..accept 28002
step
goto 22.5,64.0
.talk 47707
..' Ask him if he saw anything
.' Counsel the Budding Artist |q 28002/4
step
goto 22.4,63.8
.talk 47516
..' Ask him who could have done such a thing
.' Question the Prolific Writer |q 28002/1
step
goto 22.2,63.9
.talk 47519
..' Ask her if she is all right
..' Soothe the Privileged Socialite |q 28002/2
step
goto 22.3,64.1
.talk 47520
..' Ask him doesn't he want to know what happened to the man
.' Chasten the Pretentious Businessman |q 28002/3
step
goto 24.4,64.5
.talk 47670
..turnin 28002
step
goto 24.4,64.1
.talk 47159
..accept 27990
step
goto 21.3,64.6
.clicknpc Schnottz's Siege Tank##47743
.' Ride in Schnottz's Siege Tank
.' Use the Fire Cannon ability on your hotbar on Decrepit Watchers |tip They are giants fighting all around this area.
.' Obliterate 7 Decrepit Watchers |q 27990/1
step
goto 24.4,64.1
.' Go to this spot
.' Return to Schnottz |q 27990/2
step
goto 24.4,64.1
.talk 47940
..turnin 27990
..accept 28187
step
goto 24.4,64.1
.talk 47940
..' Tell him let's move
.' Follow Commander Schnottz
.' Accompany Schnottz to Safety |q 28187/1
step
goto 22.5,63.2
.talk 47972
..turnin 28187
..accept 28193
step
goto 21.9,64.1
.' Go to this spot
.' Visit Schnottz's Guests |q 28193/1
step
goto 21.9,64.0
.talk 47967
..accept 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28193
..accept 28195
step
goto 22.3,67.6
.from Captain Margun##47981 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Margun |q 28195/1
step
goto 24.9,69.0
.from Captain Cork##47980 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Cork |q 28195/2
step
goto 26.1,68.6
.from Captain Kronkh##47978 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Kronkh |q 28195/3
step
goto 24.9,68.4
.from Schnottz Sea Trooper##47982+ |tip Kill them on all 3 of the pirate ships around this area.
.get 6 Fresh Sailor Uniform |q 28194/1
step
goto 21.9,64.0
.talk 47967
..turnin 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28195
..accept 28267
step
goto 22.5,63.2
.talk 47972
..' Tell him you suppose you're ready...
.' Watch the cutscene
.' Go 'Out Back' With Schnottz |q 28267/1
step
goto 23.6,60.3
.talk 48162
..turnin 28267
..accept 28269
step
goto 22.3,64.9
.talk 48273
.' Fly to Ramkahen, Uldum |goto 56.3,33.6,0.5 |noway |c
step
goto 54.9,32.7
.talk 47684
..turnin 28520
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 67.3,42.8
.talk 48501
..turnin 27755
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 27.0,7.5
.talk 48186
..turnin 28269
..accept 28273
step
goto 26.6,7.2
.talk 49406
.home Oasis of Vir'sar
step
goto 26.6,8.4
.talk 48274
.fpath Oasis of Vir'sar
step
goto 26.6,8.0
.talk 48203
..turnin 28273
..accept 28274
step
'Watch the cutscene
.' Accompany Sullah |q 28274/1
step
goto 29.6,21.9
.talk 48431
..turnin 28274
..accept 28350
..accept 28352
..accept 28351
step
goto 29.9,38.2
.from Wild Camel##51193+
.' Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241 |tip You will see a message flash on your screen telling you to capture the camel.
.' Capture 3 Wild Camels |q 28352/1
step
goto 29.9,38.2
.from Wild Camel##51193+
.get 5 Meat Scrap |q 28350/1
.from Cavorting Pygmy##51217+
.' Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232 |tip You will see a message flash on your screen telling you to cage the pygmy.
.' Capture 5 Sand Pygmies |q 28351/1
step
goto 29.6,21.8
.talk 48431
..turnin 28350
..turnin 28352
..turnin 28351
..accept 28353
step
'Hearth to Oasis of Vir'sar |goto 26.6,7.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 27.0,7.5
.talk 48186
..turnin 28353
..accept 28271
..accept 28272
step
goto 38.2,21.6
.from Schnottz Overseer##48205+
.from Schnottz Excavator##48204+
.' Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
.click Pillaged Loot Sack##10201+
.get 7 Ancient Copper Scroll |q 28272/1
step
goto 27.0,7.6
.talk 48186
..turnin 28271
..turnin 28272
..accept 28363
step
goto 29.6,21.8
.talk 48431
..turnin 28363
..accept 28367
step
goto 38.4,22.6
.' Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699 |tip The big dragon that flies around this area can see through your cloaking, so be careful not to get too close to it.
.click Schnottz Powder Keg##33+
.' Sabotage 7 Powder Kegs |q 28367/1
step
goto 27.0,7.5
.talk 48186
..turnin 28367
..accept 28402
step
goto 36.7,20.8 |n
.' Enter the building |goto 36.7,20.8,0.5 |noway |c
step
goto 33.5,17.8 |n
.' Fly down this hole |goto 33.5,17.8,0.5 |noway |c
step
goto 35.0,19.2
.from Schnottz Elite Trooper##48668+
.' Slay 10 Schnottz Elite Troopers |q 28402/1
step
goto 36.1,20.3
.talk 48528
..turnin 28402
..accept 28403
step
goto 36.1,20.3
.talk 48528
..' Tell him you are ready when he is
.' Follow Harrison Jones
.' Upload the Titan Data |q 28403/1
step
goto 39.0,23.2
.talk 48558
..turnin 28403
..accept 28404
step
goto 39.6,23.6
.from Lunar Crystal##48529+ |tip They look like glowing floating spiked crystal balls.
.' Defeat the Titan Guardian |q 28404/1
step
goto 39.0,23.2
.talk 48558
..turnin 28404
step
goto 42.2,25.9
.talk 48621
..accept 28482
step
goto 41.4,5.6
.talk 48698
..turnin 28482
..accept 28497
step
goto 41.4,5.6
.clicknpc Confiscated Artillery##49499
.' Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
.' Slay 100 Schnottz Infantrymen |q 28497/1
step
goto 41.4,5.6
.talk 48698
..turnin 28497
..accept 28613
step
goto 36.1,15.8
.talk 47158
..turnin 28613
..accept 27748
.' Follow Harrison Jones and fight the Obsidian Colossus |tip Occasionally, crates will parachute onto the ground and become treasure chest with glowing jewels floating above them.  Run up next to the treasure chest to gain healing or attack power bonuses.  Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
.from Obsidian Colossus##46646
.' Defeat the Obsidian Colossus |q 27748/1
step
goto 33.3,19.7
.talk 49151
..turnin 27748
..accept 28612
.' Watch the cutscene
.' Discover the Coffer of Promise |q 28612/1
step
goto 32.6,30.9
.talk 49204
..turnin 28612
..accept 28621
step
goto 32.6,30.7
.talk 49203
..turnin 28621
..accept 28622
step
goto 32.0,29.9
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the North Signal Flare |q 28622/1
step
goto 31.4,30.8
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the West Signal Flare |q 28622/2
step
goto 32.0,31.6
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the South Signal Flare |q 28622/3
step
goto 44.9,67.3
.talk 49248
..turnin 28622
..accept 28633
step
goto 45.0,67.3
.click Coffer of Promise##9968
.get Titan Discs |q 28633/1
step
goto 44.9,67.3
.talk 49351
..turnin 28633
step
ding 84
step
'Hearth to Oasis of Vir'sar |goto 26.6,7.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 26.6,8.4
.talk 48274
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",[[
author support@zygorguides.com
startlevel 84.00
endlevel 85
dynamic on
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 28717
step
goto 48.1,70.5
.talk 39605
..turnin 28717
..accept 26293
step
goto 47.9,71.0
.talk 42637
..accept 26311
step
goto 71.0,50.8
.talk 42638
..' Ask him to give you a map
.from Twilight Nightblade##42707+
.talk 42638
..' Tell him yes, a map of the coastal approaches
.get Twilight Highlands Coastal Chart |q 26311/1
step
goto 48.0,71.0
.talk 42637
..turnin 26311
step
goto 75.2,0.4
.talk 42672
..turnin 26293
..accept 26294
step
goto 73.9,8.1
.clicknpc Hellscream Demolisher##42673
.' Discover a Faulty Demolisher |q 26294/1
.clicknpc Chief Engineer##42671
.' Discipline the Chief Engineer |q 26294/2
step
goto 48.1,70.5
.talk 39605
..turnin 26294
..accept 26324
step
'Go northeast to Azshara |goto Azshara |noway |c
step
goto Azshara,59.9,50.4
.talk 42641
..turnin 26324
..accept 26374
..accept 26335
step
goto 60.2,50.4
.talk 42640
..accept 26358
step
goto 57.4,50.6
.clicknpc AWOL Grunt##42646+ |tip They can be just standing in one place, or walking around.
.' Discipline 12 AWOL Grunts |q 26374/1
step
goto 54.5,51.2
.talk 42643
..turnin 26358
..accept 26361
step
goto 53.5,47.4
.click Foebreaker Blueprints##9677
..turnin 26335
..accept 26337
step
goto 55.5,50.3
.clicknpc Smoot##42644 |tip He runs around this area, so you may need to search a little for him, or just stand in this spot and wait for him to run by.
.click Induction Samophlange##2911
.get Induction Samophlange |q 26361/1
step
goto 56.5,52.5
.talk 42777
..' Tell him nobody shorts Garrosh Hellscream
.' Fight the Bilgewater Foreman
.' Intimidate a Bilgewater Foreman |q 26337/1
step
goto 54.5,51.2
.talk 42643
..turnin 26361
..accept 26372
step
goto 60.2,50.4
.talk 42641
..turnin 26374
..turnin 26337
step
goto 60.2,50.4
.talk 42640
..turnin 26372
..accept 28849
step
goto 50.7,73.9
.talk 50367
..turnin 28849
..accept 26388
step
goto 50.8,73.8
.' Ride the zeppelin to Twilight Highlands
.' Accompany the Air Fleet |q 26388/1
step
goto Twilight Highlands,82.4,50.3
.clicknpc Emergency Rampless Debarkation Device##42603
.' Parachute down to a ship below |goto 82.5,50.1,0.1 |noway |c
step
goto 82.5,49.8
.talk 42978
..turnin 26388
..accept 26539
step
goto 82.6,49.9
.talk 43193
..accept 26538
step
goto 78.8,51.7
.talk 43187
..turnin 26539
..accept 26549
step
goto 76.5,49.5
.talk 43191
..' Ask him if he has medical supplies you can take back with you
.' Persuade the Medicine Man |q 26538/1
step
goto 76.5,49.5
.talk 43191
..turnin 26538
..accept 26540
step
goto 75.4,55.5
.' Watch the dialogue
.' Conclude the Negotiations |q 26549/1
step
goto 73.8,53.9
.talk 43190
..turnin 26549
..accept 26608
step
goto 82.5,49.8
.talk 42978
..turnin 26608
step
goto 82.6,49.9
.talk 43193
..turnin 26540
..accept 26619
step
goto 76.6,49.5
.talk 43581
..turnin 26619
..accept 26621
step
goto 76.7,51.5
.kill 10 Dragonmaw Enforcer##43575+ |q 26621/2
.kill 4 Dragonmaw Warlock##43394+ |q 26621/3
.talk 43577
.talk 43578
..' Tell them to either be a warrior or a shaman |tip Choose the type of helper you think you'll need.  If you want extra dps, tell them to be warriors.  If you want healing, tell them to be shamans.  You have to do this with 3 of them, so you can mix it up, depending on what you need.
.' Arm 3 Dragonmaw Civilians |q 26621/1
step
goto 76.6,49.5
.talk 43581
..turnin 26621
..accept 26622
step
goto 75.5,55.6
.kill Warchief Mor'ghor##43189 |q 26622/1 |tip You can still talk to Dragonmaw Workers and Merchants and ask them to fight with you as either warriors or shamans.
step
goto 74.8,53.1
.talk 43943
..turnin 26622
..accept 26786
step
goto 74.3,53.3
.talk 44042
..accept 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26786
..accept 26784
step
goto 68.4,48.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 26784/1
.click Verrall River Muck##10352+
.get 10 Verrall River Muck |q 26788/1
step
goto 74.3,53.3
.talk 44042
..turnin 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26784
..accept 26798
step
goto 73.7,53.9
.' Go inside the portal to Orgrimmar |tip It looks like a swirling portal with a stone ring with purple symbols around it.
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,48.1,70.5
.talk 39605
..turnin 26798
..accept 26830
step
goto 43.6,63.6
.talk 44160
..' Ask him if a secret cult has infiltrated the Orgrimmar skyway
.' Reveal Sauranok's Guilt |q 26830/1
.kill Sauranok the Mystic##44120 |q 26830/2
step
goto 48.1,70.5
.talk 39605
..turnin 26830
..accept 26840
step
goto 50.2,39.5
.click Portal to Twilight Highlands##10357
.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,73.8,52.8
.talk 47174
.fpath Dragonmaw Port
step
goto 75.3,54.9
.talk 44169
..turnin 26840
..accept 27583
..accept 27607
step
goto 75.9,52.7
.talk 49498
.home Dragonmaw Post
step
goto 78.2,62.5
.talk 46089
..turnin 27607
..accept 27610
..accept 27611
step
goto 77.5,65.2
.' Go to this spot
.' Scout the Beach Head Control Point |q 27610/1
step
goto 77.0,63.4
.kill 12 Highbank Marine##45174+ |q 27611/1
step
goto 78.2,62.5
.talk 46089
..turnin 27610
..turnin 27611
step
goto 78.5,62.6
.talk 46090
..accept 27622
step
goto 68.3,61.7
.clicknpc Salvageable Shredder##46100
.' Locate the Salvageable Shredder |q 27622/1
.' Kill the enemies that attack the Salvageable Shredder
.' Defend the Salvageable Shredder |q 27622/2
step
goto 78.5,62.6
.talk 46090
..turnin 27622
..accept 28583
step
goto 70.2,43.3
.talk 45982
..turnin 27583
..accept 27584
step
goto 70.3,43.4
.talk 45983
..accept 27586
step
goto 71.1,42.4
.from Blackscale Mistress##45985+, Blackscale Raider##45984+
.' Slay 15 Blackscale Naga |q 27584/1
.click Unexploded Mortar Shell##9943+
.get 8 Unexploded Mortar Shell |q 27586/1
step
goto 70.2,43.3
.talk 45982
..turnin 27584
step
goto 70.3,43.4
.talk 45983
..turnin 27586
..accept 27606
step
goto 71.4,41.7
.' Use your Heth'Jatari Conch in the middle of the Heth'Jatari Banners |use Heth'Jatari Conch##61928 |tip They look like purple flags on golden rods on the beach.
.kill Fathom-Lord Heth'Jatar##46009 |q 27606/1 |tip Red arrows will appear on the ground near you while you fight him.  Lure Fathom-Lord Heth'Jatar next to those arrows.  He will get bombarded with mortars and it will be much easier to kill him.
step
goto 70.3,43.4
.talk 45983
..turnin 27606
step
goto 70.2,43.3
.talk 45982
..accept 27690
step
goto 54.8,44.2
.talk 46313
..turnin 27690
..accept 27751
..accept 27929
step
goto 55.1,43.6
.talk 46318
..accept 27747
step
goto 53.8,43.3
.talk 46319
..accept 27750
step
goto 53.3,42.9
.talk 49762
.home Bloodgulch
step
goto 54.1,42.2
.talk 47156
.fpath Bloodgulch
step
goto 52.3,40.6
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider##46321+ |q 27929/1
step
goto 49.1,37.3
.click Thundermar Ale Keg##7490+
.' Smash 10 Wildhammer Kegs |q 27747/1
.click Wildhammer Food Stores##229
.get 15 Wildhammer Food Stores |q 27750/1
.' You can find more around [46.2,37.4]
|model Wildhammer Food Stores##10034
|model Wildhammer Food Stores##224
step
goto 51.1,38.8
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 27751/1
step
goto 53.8,43.3
.talk 46319
..turnin 27750
step
goto 55.1,43.6
.talk 46318
..turnin 27747
step
goto 54.8,44.2
.talk 46313
..turnin 27751
..turnin 27929
..accept 28041
step
goto 55.1,43.6
.talk 46318
..accept 28038
step
goto 58.0,44.2
.from Untamed Gryphon##46158
.get Fresh Gryphon Carcass |q 28041/1
.' Click the Quest Complete box that appears beneath your minimap
..turnin 28041
..accept 28043
step
goto 50.7,58.4
.talk 46936
..turnin 28038
step
goto 47.1,63.8
.' Use your Gryphon Carcass Bait on a Highland Black Drake |use Gryphon Carcass Bait##62917 |tip They are orange dragons around this area.
.from Baited Black Drake##47422
.clicknpc Baited Black Drake##47422 |tip Eventually, the Baited Black Drake will surrender once you've weakened it enough.
.' Ride the Baited Black Drake back to Bloodgulch
.' Capture the Baited Black Drake |q 28043/1
step
goto 54.4,43.9
.talk 47417
..turnin 28043
..accept 28123
step
goto 53.3,42.7
.talk 46323
..accept 27947
step
goto 53.2,42.7
.talk 46324
..accept 27945
step
goto 49.1,28.2
.click The Demon Chain##10146
.get The Demon Chain |q 28123/1
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 27947
..accept 27951
step
goto 58.0,32.6
.kill 10 Shaman of the Black##46322+ |q 27951/1
.from Obsidian Stoneslave##47226+
.get Black Diamond Heart |q 27945/1
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 27951
..accept 27954
step
goto 77.6,16.6
.talk 48993
..turnin 28583
..accept 28588
step
goto 77.7,16.6
.talk 49439
..accept 28584
step
goto 77.7,16.7
.talk 49441
..accept 28586
step
goto 77.5,16.3
.' Follow the path up the ramps
.' Use your Blast Tape next to Faulty Valves |use Blast Tape##65146 |tip They look like red wheel handles spraying out black liquid on the metal platforms.
.' Seal 10 Faulty Valves |q 28584/1
.kill 10 Wildhammer Raider##49632+ |q 28588/1
step
goto 81.1,15.5
.' Use your Emergency Pool Pony on Krazzworks Laborers |use Emergency Pool Pony##65162 |tip They are goblins in the water all around the area surrounding the big island.
.' Rescue 10 Krazzworks Laborers |q 28586/1
'|talk Krazzworks Laborer##49548
step
goto 77.7,16.7
.talk 49439
..turnin 28584
step
goto 77.7,16.7
.talk 49441
..turnin 28586
step
goto 77.6,16.6
.talk 48993
..turnin 28588
..accept 28589
step
goto 75.5,17.9
.clicknpc Krazz Cannon##49680
.' Use your Fire Stuff ability to shoot at Wildhammer Stormtalon flying in the sky around this area
.kill 15 Wildhammer Stormtalon##49683+ |q 28589/2
step
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 28589
step
goto 77.6,16.6
.talk 48993
..turnin 28589
..accept 28590
step
'On the ship you are standing on:
.talk 49378
..turnin 28590
..accept 28591
step
.clicknpc Skyshredder Turret##49135
.' Use the abilities on your hotbar to shoot at the Alliance enemies and cannons
.kill 80 Highbank Marksman##49366+ |q 28591/1
.kill 12 Highbank Cannoneer##49025+ |q 28591/2
.kill 4 Highbank Cannon##49060+ |q 28591/3
step
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 28591
step
'On the ship you are standing on:
.talk 49378
..turnin 28591
..accept 28593
..accept 28594
step
'On the ship you are standing on:
.talk 49379
..accept 28592
step
goto 81.5,78.8
.' Go to this spot
.' Use Ticker's Explosives on the boat |use Ticker's Explosives##64669
.' Place the Highbank Boat Bomb |q 28592/1
step
goto 79.8,77.4
.' Go to this spot
.' Use Ticker's Explosives in the doorway |use Ticker's Explosives##64669
.' Place the Highbank Keep Bomb |q 28592/2
step
goto 80.0,72.5
.' Go to this spot
.' Use Ticker's Explosives inside at the bottom of the tower |use Ticker's Explosives##64669
.' Place the Highbank Tower Bomb |q 28592/3
step
goto 79.5,78.2 |n
.' Go down the stairs |goto 79.5,78.2,0.5 |noway |c
step
goto 79.5,77.6
.click Induction Samophlange##2911
.get Induction Samophlange |q 28593/1
step
goto 80.8,75.6
' |from Highbank Marksman##49024+, Highbank Guardsman##49023+, Highbank Prison Guard##49029+
.kill 10 Highbank Defenders |q 28594/1
step
goto 82.1,80.0
.talk 49000
..turnin 28593
..turnin 28594
step
goto 81.8,80.4
.talk 49002
..turnin 28592
step
goto 82.1,80.0
.talk 49000
..accept 28595
step
goto 82.1,81.3
.clicknpc Krazzworks Gyrocopter##50268
.' Ride back to The Krazzworks |goto 75.5,17.8,0.5 |noway |c
step
goto 77.6,16.6
.talk 48993
..turnin 28595
step
'Hearth to Bloodgulch |goto 53.3,42.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.3,42.7
.talk 46323
..turnin 27954
..accept 27955
step
goto 53.3,42.8
.click Eye of Twilight##7011
.' Watch the cutscene
.' Peer into the Eye |q 27955/1
step
goto 53.3,42.7
.talk 46323
..turnin 27955
step
goto 53.2,42.7
.talk 46324
..turnin 27945
..accept 27375
step
goto 54.4,43.9
.talk 47417
..turnin 28123
..accept 28133
step
goto 36.4,38.1
.talk 47671
..' Tell her you are ready to fight Torth!
.kill Torth##47669 |q 28133/1
step
goto 36.4,38.1
.talk 47671
..turnin 28133
step
goto 36.4,38.0
.talk 47751
..accept 28149
step
goto 36.7,38.0
.talk 47723
..accept 28147
step
goto 36.9,38.0
.talk 47133
.fpath The Gullet
step
goto 39.4,47.3
.click Windspeaker Pylon##10037
.get Windspeaker Charm |q 28149/1
step
goto 40.2,45.1
.from Twilight Windwarper##47724+
.get 8 Twilight Garment Scrap |q 28147/1
.from Storm Vortex##47728+
.get 5 Breath of the Vortex |q 28149/2
step
goto 36.7,37.9
.talk 47723
..turnin 28147
..accept 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28149
..accept 28166
step
goto 40.6,32.9
.click The Light of Souls##7956
.get The Light of Souls |q 28166/1
step
goto 39.0,32.3
.from Glopgut Hurler##47768+, Glopgut Pounder##47765+
.' Slay 10 Glopgut Ogres |q 28151/1
step
goto 36.7,38.0
.talk 47723
..turnin 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28166
..accept 28170
step
goto 36.0,37.9 |n
.' Enter the cave |goto 36.0,37.9,0.5 |noway |c
step
goto 35.0,36.6
.talk 47826
..' Tell him you are ready
.' Enter the Spirit Realm |havebuff Interface\Icons\Achievement_Halloween_Ghost_01 |q 28170
step
goto 35.1,35.9 |n
.' Follow this path |goto 35.1,35.9,0.5 |noway |c
step
goto 34.3,35.6
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the First Shrine |q 28170/1
step
goto 34.8,36.2 |n
.' Follow this path up |goto 34.8,36.2,0.5 |noway |c
step
goto 33.4,37.2
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Second Shrine |q 28170/2
step
goto 34.8,37.4 |n
.' Follow this path |goto 34.8,37.4,0.5 |noway |c
step
goto 34.2,37.8
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Third Shrine |q 28170/3
step
goto 36.0,37.9 |n
.' Leave the cave |goto 36.0,37.9,0.5 |noway |c
step
goto 36.4,38.0
.talk 47751
..turnin 28170
step
goto 44.0,10.6
.talk 45332
..turnin 27375
..accept 27299
step
goto 41.8,11.4
.kill 3 Tentacle of Iso'rath##45394+ |q 27299/1
step
goto 44.0,10.6
.talk 45332
..turnin 27299
..accept 27300
step
goto 44.0,11.3
.talk 45391
..accept 27301
step
goto 44.4,11.6
.talk 45432
..accept 27302
step
goto 44.2,18.1
.talk 45362
..turnin 27301
..accept 27303
step
goto 42.3,17.2
' |from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
.kill 12 Drakgor cultists |q 27300/1
.from Bound Fleshburner##45358+
.get 5 Fleshburner Heart |q 27303/1
.click Barrel of Pyreburn Oil##457+
.get 10 Pyreburn Oil |q 27302/1
step
goto 44.4,11.6
.talk 45432
..turnin 27302
step
goto 43.8,11.3
.talk 45386
..turnin 27303
step
goto 44.0,10.6
.talk 45332
..turnin 27300
..accept 27376
step
goto 44.5,10.6
.clicknpc Earthen Ring Gryphon##45435
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Fight the oozes that attack
.' Try to fight as long as you can
.' Survive Iso'rath's defenses |q 27377/1
.' Click the Quest Complete box that appears beneath your minimap
..turnin 27377
..accept 27378
step
'Deathwing will attack you and Thrall
.' Aid Thrall in battling Deathwing |q 27378/1
.' Click the Quest Complete box that appears beneath your minimap
..turnin 27378
..accept 27379
step
goto 49.6,15.8
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Brain of Iso'rath##47960
.' Kill Iso'rath |q 27380/1
step
goto 44.0,10.6
.talk 45332
..turnin 27380
step
goto 44.1,10.5
.talk 48264
..accept 27486
step
goto 27.6,21.4
.' You will get captured by a red dragon
.' Meet with Lirastrasza |q 27486/1
step
goto 29.3,25.9
.talk 45528
..turnin 27486
..accept 27504
step
goto 29.9,31.3
.talk 45522
..turnin 27504
..accept 27505
step
goto 29.8,31.4
.talk 45562
..accept 27506
step
goto 29.7,33.1
.' Protect the Vermillion Menders while they heal Celastrasza to full health
.' Defend 5 Vermillion Menders |q 27505/1
.from Twilight Wyrmkiller##45748+
.' Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
.' Reclaim 6 Dragonkin corpses |q 27506/1
step
goto 29.9,31.3
.talk 45522
..turnin 27505
step
goto 29.8,31.4
.talk 45562
..turnin 27506
step
goto 29.9,31.3
.talk 45522
..accept 27564
step
goto 29.3,25.9
.talk 45528
..turnin 27564
..accept 27507
..accept 27509
step
goto 29.3,26.0
.talk 45518
..accept 27508
step
goto 28.6,24.9
.talk 47121
.fpath Vermillion Redoubt
step
goto 18.4,16.7 |n
.' Enter the cave |goto 18.4,16.7,0.5 |noway |c
step
goto 18.0,16.9
.' Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
.' Destroy the Twilight Portal |q 27509/1
step
goto 20.9,15.7
' |from Twilight Abductor##45642+, Twilight Flamequencher##45618+
.kill 12 Twilight invaders |q 27507/1
.clicknpc Vermillion Egg##45682+
.get 6 Vermillion Egg |q 27508/1
step
goto 29.3,26.0
.talk 45528
..turnin 27507
..turnin 27509
step
goto 29.3,26.0
.talk 45518
..turnin 27508
step
goto 29.3,26.0
.talk 45528
..accept 27576
step
goto 27.3,36.8
.talk 47492
..turnin 27576
..accept 28091
..accept 28090
step
goto 25.6,37.9
.from Twilight Spearwarder##47490+
.get Twilight Caravan Cargo Key |q 28090/1
.click Twilight Caravan Chest##10106+
.get Twilight's Hammer Gatestone |q 28090/2
.kill 8 Twilight Spearwarder##47490+ |q 28091/1
step
goto 27.3,36.8
.talk 47492
..turnin 28091
..turnin 28090
..accept 28097
step
goto 29.6,41.0
.talk 47493
..turnin 28097
..accept 28092
step
'Next to you:
.talk 47374
..accept 28094
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28092/1
step
'Next to you:
.talk 47374
..turnin 28092
..accept 28093
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28094/1
step
'Next to you:
.talk 47374
..turnin 28094
step
goto 22.8,56.1
.' Go to this spot
.' Secure the Entrance to Grim Batol |q 28093/1
step
goto 22.1,56.6
.talk 47605
..turnin 28093
step
goto 21.8,57.0
.talk 47603
..accept 28712
step
goto 14.9,16.3
.talk 49417
..turnin 28712
step
goto 14.1,15.4
.talk 49810
..accept 28758
step
goto 14.1,15.1
.clicknpc Vermillion Vanguard##49910
.' Use the abilities on your hotbar on Twilight Shadowdrakes |tip They are blue dragons that fly around in the air in the area you fly to.
.kill 8 Twilight Shadowdrake##49873+ |q 28758/1
step
goto 22.1,56.6
.talk 47605
..turnin 28758
..accept 28171
step
goto 59.1,69.8
.talk 47902
..turnin 28171
..accept 28191
..accept 28173
step
goto 59.0,69.8
.talk 47904
..accept 28175
step
goto 63.9,78.0
.' Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
.' Plant Alexstrasza's Tear |q 28175/1
step
goto 62.7,76.2
' |from Obsidian Viletongue##47796+, Obsidian Charscale##47797+
.kill 10 Obsidian Dragonkin |q 28191/1
.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip They are red dragons that fly in the sky around this area.  You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
.kill 8 Obsidian Pyrewing##46141+ |q 28173/1
step
goto 59.1,69.8
.talk 47902
..turnin 28191
..turnin 28173
step
goto 59.0,69.8
.talk 47904
..turnin 28175
step
goto 59.1,69.8
.talk 47902
..accept 28176
step
goto 59.3,82.5
.' Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
.' Hatch the Obsidian Whelps |q 28176/1
step
goto 55.4,83.5 |n
.' Enter the cave |goto 55.4,83.5,0.5 |noway |c
step
goto 49.8,85.8
.' Go to this spot
.' Infiltrate the Obsidian Lair |q 28176/2
step
goto 44.9,91.0
.talk 47905
..turnin 28176
..accept 28247
.from Obsidia##47929
.' Defeat Obsidia |q 28247/1
step
goto 55.4,83.5 |n
.' Leave the cave |goto 55.4,83.5,0.5 |noway |c
step
goto 59.1,69.8
.talk 47902
..turnin 28247
..accept 28249
step
goto 45.3,75.4
.talk 45658
..turnin 28249
..accept 27493
step
goto 45.3,75.3
.talk 45665
..accept 27497
..accept 27491
step
goto 45.8,76.2
.talk 47116
.fpath Crushblow
step
goto 45.1,76.7
.talk 49747
.home Crushblow
step
goto 45.8,76.0
.talk 45947
..' Tell him you're here to lead your wind rider squad and drop off the Kor'kron assassins
.' Get your Wind Rider Squad |q 27491/1
step
goto 39.2,64.5
.' Go to this spot and land on the flashing red X on the ground
.' Drop off the Kor'kron |q 27491/2
step
goto 38.8,64.3
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northern Building |q 27497/1
step
goto 40.0,64.4
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northeastern Building |q 27497/2
step
goto 40.4,69.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southwestern Building |q 27497/3
step
goto 41.4,71.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southern Building |q 27497/4
step
goto 41.1,69.8
' |from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
.kill 10 Bloodeye Clan ogres & ettins |q 27493/1
step
goto 45.3,75.3
.talk 45665
..turnin 27497
..turnin 27491
step
goto 45.3,75.4
.talk 45658
..turnin 27493
..accept 27495
step
goto 38.1,66.2
.click Hidden Explosives##9393
.' Detonate the Hidden Explosives |q 27495/1
.' Click the Quest Complete box that appears beneath your minimap
..turnin 27495
..accept 27499
step
goto 40.5,62.3
.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
.' Signal the Attack |q 27499/1
.' Click the Quest Complete box that appears beneath your minimap
..turnin 27499
..accept 27501
step
goto 39.8,71.3 |n
.' Enter the cave |goto 39.8,71.3,0.5 |noway |c
step
goto 37.6,71.3
.from Za'brox##46017
.get Za's Head |q 27501/1
.get Brox's Head |q 27501/4
step
goto 38.7,70.2
.from Beeble'phod##46018
.get Phod's Head |q 27501/2
.get Beeble's Head |q 27501/3
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.3,75.3
.talk 45665
..turnin 27501
..accept 27503
step
goto 38.9,64.0
.talk 46117
..' Tell him you're ready
.' Speak to the Squad commander |q 27503/1
step
'Follow the Kor'kron Squad Commander and the Kor'kron Assassins up the path
.' Escort the Kor'kron |q 27503/2
.' Click the Quest Complete box that appears beneath your minimap
..turnin 27503
..accept 27638
step
goto 36.4,65.9
.talk 45675
..turnin 27638
..accept 27653
..accept 27655
..accept 27658
step
goto 37.5,88.7
.talk 46242
..turnin 27658
..accept 27659
..accept 27660
step
goto 37.6,88.7
.talk 46243
..accept 27662
step
goto 44.1,81.4
.click Air Portal Controller##9849
.kill Debilitated Aetharon##46270 |q 27659/2
step
goto 38.0,80.2
.click Earth Portal Controller##9849
.kill Debilitated Apexar##46273 |q 27659/1
step
goto 33.2,62.4
.click Water Portal Controller##9849
.kill Debilitated Edemantus##46272 |q 27659/3
step
goto 27.6,63.9
.talk 46413
..turnin 27660
..accept 27661
step
goto 35.2,67.4
' |from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
.kill 10 Twilight Citadel cultists |q 27655/1
.from Dark Assassin##46202+ |tip They look like black shades that wander around this whole area.  They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
.get 5 Dark Assassin's Pendant |q 27653/1
.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
.' Free 10 Enslaved Elementals |q 27662/1
step
goto 40.8,79.0
.kill Lord Cannon##46785 |q 27661/1
step
goto 37.6,88.7
.talk 46243
..turnin 27662
step
goto 37.5,88.7
.talk 46242
..turnin 27659
step
goto 36.4,65.9
.talk 45675
..turnin 27653
..turnin 27655
..accept 27689
..accept 27696
step
goto 27.6,63.9
.talk 46413
..turnin 27661
..accept 27798
step
goto 35.1,61.1
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an anchor, drowned underwater.
.' Extract Artifact Information |q 27798/1
step
goto 36.4,65.9
.talk 45675
..turnin 27798
step
goto 36.1,70.7
.kill Master Klem##46342 |q 27689/2 |tip Garona Halforcen will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27696/1
step
goto 42.3,83.5
.kill Mia the Rose##46343 |q 27689/3 |tip She's in a small room at the top of this big building.  Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson##46341 |q 27689/1 |tip Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 36.4,65.9
.talk 45675
..turnin 27689
..turnin 27696
..accept 27701
step
goto 32.4,68.7
.' Use The Elementium Axe |use The Elementium Axe##62248
.' Free Lirastrasza |q 27701/1
step
goto 36.4,65.9
.talk 45675
..turnin 27701
..accept 27703
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They look like blue dragons laying on the ground all around this area.  You will need to fly around and search for them, as there aren't many of them at one time.  Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
.' Deliver 5 Coup de Graces |q 27703/1
step
goto 36.4,65.9
.talk 45675
..turnin 27703
..accept 27712
step
goto 37.5,88.7
.talk 46243
..turnin 27712
..accept 28885
step
goto 37.5,88.7
.talk 46243
..' Tell him you're ready for that wild ride
.' Ride the Mine Cart to the End of the Line |q 28885/2
step
'Next to you:
.talk 46513
..turnin 28885
..accept 27742
..accept 27743
step
goto 37.4,93.2
.click Elementium Shard##10035+ |tip Do this as you walk.
.clicknpc Twilight Rune of Earth##46671
..accept 27744
step
goto 35.2,90.4
.click Elementium Shard##10035+ |tip Do this as you walk.
.click Twilight Rune of Water##465
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.click Elementium Shard##10035+ |tip Do this as you walk.
.click Twilight Rune of Air##465
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.click Elementium Shard##10035+ |tip Do this as you walk.
.click Twilight Rune of Fire##465
.' Destroy the Rune of Fire |q 27744/4
step
goto 34.5,86.3
' |from Twilight Miner##46610+, Depths Overseer##46579+
.kill 12 Elementium Depths cultists |q 27743/1
.click Elementium Shard##10035+ |tip You can also kill Elementium Spinner to get Elementium Shards.
.get 6 Elementium Shard |q 27742/1
step
'Next to you:
.talk 46513
..turnin 27742
..turnin 27743
..turnin 27744
..accept 27745
step
goto 36.4,83.8
.from Magmatooth##46611
.get Fire Portal Controller |q 27745/2
step
goto 36.4,83.8
.' Use your Fire Portal Controller |use Fire Portal Controller##62394
.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
step
goto 37.5,88.7
.talk 46243
..turnin 27745
..accept 27783
step
goto 36.4,65.9
.talk 45675
..turnin 27783
..accept 27786
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.4,88.0
.clicknpc The Hammer of Twilight##46717
..turnin 27786
..accept 27788
.' Watch the cutscene
.' Survive Skullcrusher's Backhand |q 27788/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain##46732 |q 27788/2 |tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.3,75.4
.talk 45658
..turnin 27788
step
ding 85
step
Congratulations, you are now level 85!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Cataclysm 80-85\\Mount Hyjal",[[
author support@zygorguides.com
condition end achieved(4870)
leechsteps "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Cataclysm 80-85\\Vashj'ir",[[
author support@zygorguides.com
condition end achieved(4982)
leechsteps "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Cataclysm 80-85\\Deepholm",[[
author support@zygorguides.com
condition end achieved(4871)
leechsteps "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Cataclysm 80-85\\Uldum",[[
author support@zygorguides.com
condition end achieved(4872)
leechsteps "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Cataclysm 80-85\\Twilight Highlands",[[
author support@zygorguides.com
condition end achieved(5501)
leechsteps "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
]])
