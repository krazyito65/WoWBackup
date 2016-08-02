local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCCATA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Cat
condition end haspet(62019)
pet 459
step
goto Elwynn Forest 44.6,53.4
.' The _Cat_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Cat##62019
|modeldisplay 5585
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Chicken",[[
description This guide will walk you through obtaining
description the Flying pet: Chicken
condition end haspet(62664)
pet 646
step
goto Elwynn Forest 77.6,66.2
.' The _Chicken_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Chicken##62664
|modeldisplay 29331
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dusk Spiderling",[[
description This guide will walk you through obtaining
description the Beast pet: Dusk Spiderling
condition end haspet(61253)
pet 396
step
goto Duskwood 63.8,26.1
.' The _Dusk Spiderlings_ are level 5-6. Challenge one to a pet battle and capture it.
.learnpet Dusk Spiderling##61253
|modeldisplay 14952
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fawn",[[
description This guide will walk you through obtaining
description the Critter pet: Fawn
condition end haspet(61165)
pet 447
step
goto Elwynn Forest 45.1,67.4
.' The _Fawn_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Fawn##61165
|modeldisplay 654
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mouse",[[
description This guide will walk you through obtaining
description the Critter pet: Mouse
condition end haspet(61143)
pet 385
step
goto Duskwood 22.1,37.8
.' The _Mouse_ is level 5 or 6. Challenge one to a pet battle and capture it.
.learnpet Mouse##61143
|modeldisplay 4959
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mr. Chilly",[[
description This guide will walk you through obtaining
description the Aquatic pet: Mr. Chilly
condition end haspet(29726)
pet 192
step
'This pet is available to all players who merge their World of Warcraft account with a Battle.net account.
.learnpet Mr. Chilly##29726
|modeldisplay 26452
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Polly",[[
description This guide will walk you through obtaining
description the Flying pet: Polly
condition end haspet(61322)
pet 409
step
goto Northern Stranglethorn 50.8,66.6
.' _Polly_ is a level 8 Creature flying in circles around this point. Challenge one to a pet battle and capture it.
.learnpet Polly##61322
|modeldisplay 5866
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Prairie Dog",[[
description This guide will walk you through obtaining
description the Critter pet: Prairie Dog
condition end haspet(61141)
pet 386
step
goto Mulgore 35.0,7.6
.' The _Prairie Dogs_ in this area are level 1. Challenge one to a pet battle and capture it.
.learnpet Prairie Dog##61141
|modeldisplay 1072
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Rabbit
condition end haspet(61080)
pet 378
step
goto Elwynn Forest 61.2,68.1
.' The _Rabbit_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Rabbit##61080
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rat Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Rat Snake
condition end haspet(61258)
pet 399
step
goto Duskwood 34.0,37.2
.' The _Rat Snake_ is level 6. Challenge one to a pet battle and capture it.
.learnpet Rat Snake##61258
|modeldisplay 3126
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Redridge Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Redridge Rat
condition end haspet(61168)
pet 392
step
goto Redridge Mountains 67.6,31.4
.' The _Redridge Rats_ are around level 5. Challenge one to a pet battle and capture it.
.learnpet Redridge Rat##61168
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Roach",[[
description This guide will walk you through obtaining
description the Critter pet: Roach
condition end haspet(61169)
pet 424
step
goto Duskwood 34.0,37.2
.' The _Roach_ can be found when challenging Rat Snakes and Dusk Spiderlings.
.' The _Roach_ is level 5 or 6. Challenge a Rat Snake or Dusk Spiderling to a pet battle and if the Roach is there capture it.
.learnpet Roach##61169
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Skunk",[[
description This guide will walk you through obtaining
description the Critter pet: Skunk
condition end haspet(61255)
pet 397
step
goto Duskwood 23.8,29.4
.' The _Skunk_ is level 5 or 6. Challenge one to a pet battle and capture it.
.learnpet Skunk##61255
|modeldisplay 16633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Smolderweb Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Smolderweb Hatchling
condition end haspet(10598)
pet 90
step
goto Blackrock Spire,29.8,38.0
.' Click here to continute. |confirm
step
goto 37.1,40.9
.' Jump off the ledge here.
.' Click here to continute. |confirm
step
goto 38.8,48.4
.' Click here to continute. |confirm
step
goto 52.8,37.9
.' Click here to continute. |confirm
step
goto 58.9,42.9
.' Click here to continute. |confirm
step
goto 66.8,43.8
.' Click here to continute. |confirm
step
goto 66.4,57.8
.' Click here to continute. |confirm
step
goto 64.0,56.9
.' jump off the Ledge here.
.' Click here to continute. |confirm
step
goto 59.6,58.1
.' Click here to continute. |confirm
step
goto 59.4,64.6
.' Click here to continute. |confirm
step
goto 64.1,63.1
.' Click here to continute. |confirm
step
goto 66.2,50.0
.' Click here to continute. |confirm
step
goto 57.3,48.4
.' Click here to continute. |confirm
step
goto 49.4,53.1
.' Click here to continute. |confirm
step
goto 50.1,65.2
.' Click here to continute. |confirm
step
goto 58.4,70.5
.' Once you get to the ramp go up and on the right will be _Mother Smolderweb_.
.from Mother Smolderweb##10596
.collect Smolderweb Egg##68673
|modeldisplay 4456
step
.learnpet Smolderweb Hatchling##10598 |use Smolderweb Egg##68673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Snake
condition end haspet(61142)
pet 387
step
goto Feralas 38.3,20.7
.' The _Snakes_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Snake##61142
|modeldisplay 1206
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Harvester",[[
description This guide will walk you through obtaining
description the Mechanical pet: Tiny Harvester
condition end haspet(61160)
pet 389
step
goto Westfall 40.6,52.4
.' The _Tiny Harvester_ is level 3. Challenge one to a pet battle and capture it.
.learnpet Tiny Harvester##61160
|modeldisplay 41886
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Adder",[[
description This guide will walk you through obtaining
description the Beast pet: Adder
condition end haspet(61325)
pet 635
step
goto Durotar 45.4,25.7
.' The _Adders_ in this area are level 1. Challenge one to a pet battle and capture it.
.learnpet Adder##61325
|modeldisplay 1986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Albino Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Albino Snake
condition end haspet(7561)
pet 74
step
'Go to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,58.6,39.6
.talk 28951
.buy 1 Albino Snake##44822
|modeldisplay 8173
step
.learnpet Albino Snake##7561 |use Albino Snake##44822
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Alpine Chipmunk",[[
description This guide will walk you through obtaining
description the Critter pet: Alpine Chipmunk
condition end haspet(62189)
pet 487
step
goto Stonetalon Mountains 74.5,70.3
.' The _Alpine Chipmunks_ in this area are level 6. Challenge one to a pet battle and capture it.
.learnpet Alpine Chipmunk##62189
|modeldisplay 36620
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Alpine Hare",[[
description This guide will walk you through obtaining
description the Critter pet: Alpine Hare
condition end haspet(61690)
pet 441
step
goto Dun Morogh 52.6,58.2
.' The _Alpine Hare_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Alpine Hare##61690
|modeldisplay 23926
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Amethyst Shale Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Amethyst Shale Hatchling
condition end haspet(62182)
pet 838
step
goto Deepholm 56.7,55.9
.' The _Amethyst Shale Hatchlings_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Amethyst Shale Hatchling##62182
|modeldisplay 36604
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ancona Chicken",[[
description This guide will walk you through obtaining
description the Flying pet: Ancona Chicken
condition end haspet(7394)
pet 52
step
'Go to Thousand Needles |goto Thousand Needles |noway |c
step
goto 85.6,91.6
.talk 41135
.buy 1 Ancona Chicken##11023
'|modeldisplay 589
step
.learnpet Ancona Chicken##7394 |use Ancona Chicken##11023
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Arctic Fox Kit",[[
description This guide will walk you through obtaining
description the Beast pet: Arctic Fox Kit
condition end haspet(62864)
pet 558
step
'This pet can only be obtained when it is snowing in _The Storm Peaks_
|confirm
step
goto The Storm Peaks 45.8,56.7
.' The _Arctic Hares_ in this area are level 21. Challenge one to a pet battle and capture it.
.learnpet Arctic Fox Kit##62864
|modeldisplay 42757
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Arctic Hare",[[
description This guide will walk you through obtaining
description the Critter pet: Arctic Hare
condition end haspet(62693)
pet 641
step
goto Borean Tundra 77.9,24.0
.' The _Arctic Hares_ in this area are level 20-21. Challenge one to a pet battle and capture it.
.learnpet Arctic Hare##62693
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Armadillo Pup",[[
description This guide will walk you through obtaining
description the Critter pet: Armadillo Pup
condition end haspet(48242)
pet 272
step
'This pet _requires_ your _guild_ to have the achievement _"Critter Kill Squad"_ completed
.' _50,000_ critters killed |achieve 5144
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Armadillo Pup##63398
|modeldisplay 36591
step
.learnpet Armadillo Pup##48242 |use Armadillo Pup##63398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ash Lizard",[[
description This guide will walk you through obtaining
description the Beast pet: Ash Lizard
condition end haspet(62364)
pet 632
step
goto Un'Goro Crater 52.3,42.9
.' The _Ash Lizards_ in this are are around level 15. Challenge one to a pet battle and capture it.
.learnpet Ash Lizard##62364
|modeldisplay 36583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ash Spiderling",[[
description This guide will walk you through obtaining
description the Beast pet: Ash Spiderling
condition end haspet(61420)
pet 427
step
goto Searing Gorge 62.1,35.9
.' The _Ash Spiderlings_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
.learnpet Ash Spiderling##61420
|modeldisplay 14952
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ash Viper",[[
description This guide will walk you through obtaining
description the Beast pet: Ash Viper
condition end haspet(61385)
pet 425
step
goto Burning Steppes 50.3,34.5
.' The _Ash Vipers_ in this area are around level 15. Challenge one to a pet battle and capture it.
.learnpet Ash Viper##61385
|modeldisplay 4268
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Azure Whelpling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Azure Whelpling
condition end haspet(7547)
pet 57
step
'Go to _Winterspring_ |goto Winterspring |noway |c
step
'Kill _any_ and _all_ mobs here to farm for your _Azure Whelpling_ |tip This has a .01% drop rate, you may be farming for a while
.collect 1 Azure Whelpling##34535
'|modeldisplay 6293
step
.learnpet Azure Whelpling##7547 |use Azure Whelpling##34535
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Baby Ape",[[
description This guide will walk you through obtaining
description the Beast pet: Baby Ape
condition end haspet(61324)
pet 411
step
'This pet can only be obtained when it is raining in _The Cape of Stranglethorn_
|confirm
step
goto The Cape of Stranglethorn 60.1,83.6
.' The _Baby Apes_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Baby Ape##61324
|modeldisplay 21362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Baby Blizzard Bear",[[
description This guide will walk you through obtaining
description the Beast pet: Baby Blizzard Bear
condition end haspet(32841)
pet 202
step
' Reward for being logged in during the World of Warcraft 4th Anniversary Event.
.learnpet Baby Blizzard Bear##32841
|modeldisplay 16189
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Bananas",[[
description This guide will walk you through obtaining
description the Beast pet: Bananas
condition end haspet(23234)
pet 156
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
.learnpet Bananas##23234
|modeldisplay 21362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Baneling",[[
description This guide will walk you through obtaining
description the Magic pet: Baneling
condition end haspet(66984)
pet 903
step
'This pet is available only to people who bought the Collector's Edition of Starcraft II: Heart of the Swarm.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
.learnpet Baneling##66984
|modeldisplay 45527
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Bat",[[
description This guide will walk you through obtaining
description the Flying pet: Bat
condition end haspet(61829)
pet 626
step
goto Eastern Plaguelands 62.2,26.2
.' The _Bats_ in this area are around level 12-13. Challenge one to a pet battle and capture it.
.learnpet Bat##61829
|modeldisplay 4732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Beetle
condition end haspet(61319)
pet 406
step
goto The Cape of Stranglethorn 48.3,35.0
.' The _Beetles_ in this area are level 9. Challenge one to a pet battle and capture it.
.learnpet Beetle##61319
|modeldisplay 7511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Biletoad",[[
description This guide will walk you through obtaining
description the Aquatic pet: Biletoad
condition end haspet(62815)
pet 649
step
goto Northern Barrens 62.5,56.5
.' The _Biletoads_ in this area are around level 3. Challenge one to a pet battle and capture it.
.learnpet Biletoad##62815
|modeldisplay 1924
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Black Lamb",[[
description This guide will walk you through obtaining
description the Critter pet: Black Lamb
condition end haspet(60649)
pet 374
step
goto Elwynn Forest 72.4,76.4
.' The _Black Lamb_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Black Lamb##60649
|modeldisplay 42906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Black Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Black Rat
condition end haspet(61257)
pet 398
step
.' Enter the crypt here |goto Duskwood 23.5,35.2 <5 |c
step
goto 25.6,34.5
.' The _Black Rat_ is level 5 or 6. Challenge one to a pet battle and capture it.
.learnpet Black Rat##61257
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Black Tabby Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Black Tabby Cat
condition end haspet(7383)
pet 42
step
'Go to _Hillsbrad Foothills_ |goto Hillsbrad Foothills |noway |c
step
'_Kill_ any and all mobs in _Hillsbrad Foothills_ |tip Every mob here has a chance to drop the Black Tabby Cat's carrier
.collect 1 Cat Carrier (Black Tabby)##8491
'|modeldisplay 5448
step
.learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blighted Squirrel",[[
description This guide will walk you through obtaining
description the Critter pet: Blighted Squirrel
condition end haspet(61890)
pet 455
step
goto Silverpine Forest 76.8,22.8
.' The _Blighted Squirrels_ in this area are around level 4-5. Challenge one to a pet battle and capture it.
.learnpet Blighted Squirrel##61890
|modeldisplay 42334
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blighthawk",[[
description This guide will walk you through obtaining
description the Undead pet: Blighthawk
condition end haspet(61826)
pet 456
step
goto Western Plaguelands 47.1,67.5
.' The _Blighthawks_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
.learnpet Blighthawk##61826
|modeldisplay 42265
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blue Clockwork Rocket Bot",[[
description This guide will walk you through obtaining
description the Mechanical pet: Blue Clockwork Rocket Bot
condition end haspet(40295)
pet 254
step
'Go to Dalaran |goto Dalaran |noway |c
step
goto 44.8,46.2
.talk 29716
.buy 1 Blue Clockwork Rocket Bot##54436
'|modeldisplay 22778
step
.learnpet Blue Clockwork Rocket Bot##40295 |use Blue Clockwork Rocket Bot##54436
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blue Dragonhawk Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Blue Dragonhawk Hatchling
condition end haspet(21056)
pet 145
step
'Go to _Netherstorm_ |goto Netherstorm |noway |c
step
goto 43.4,35.2
.talk 20980
.buy 1 Blue Dragonhawk Hatchling##29958
'|modeldisplay  38631
step
.learnpet Blue Dragonhawk Hatchling##21056 |use Blue Dragonhawk Hatchling##29958
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blue Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Blue Moth
condition end haspet(21010)
pet 138
step
'Go to The Exodar |goto The Exodar |noway |c
step
goto 30.8,34.6
.talk 21019
.buy 1 Blue Moth Egg##29901
'|modeldisplay  17798
step
.learnpet Blue Moth##21010 |use Blue Moth Egg##29901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blue Moth",[[
description This guide will walk you through obtaining
description the Flying pet:Blue Moth
condition end haspet(21010)
pet 138
step
'You will have to buy these from a _neutral Auction House_, as they are _not_ available to _Horde characters_
.buy 1 Blue Moth Egg##29901
'|modeldisplay 19771
step
.learnpet Blue Moth##21010 |use Blue Moth Egg##29901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Borean Marmot",[[
description This guide will walk you through obtaining
description the Critter pet: Borean Marmot
condition end haspet(62695)
pet 639
step
goto Borean Tundra 44.9,41.7
.' The _Borean Marmots_ in this area are level 20-21. Challenge one to a pet battle and capture it.
.learnpet Borean Marmot##62695
|modeldisplay 1072
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Brilliant Kaliri",[[
description This guide will walk you through obtaining
description the Flying pet: Brilliant Kaliri
condition end haspet(54374)
pet 325
step
.' Obtain 125 _pets_ using our Pets and Mounts guide.
.' Menagerie |achieve 5877
step
'Check your _mailbox_ for your _prize_!
.collect 1 Brilliant Kaliri##71387
'|modeldisplay 38776
step
.learnpet Brilliant Kaliri##54374 |use Brilliant Kaliri##71387
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Brown Marmot",[[
description This guide will walk you through obtaining
description the Critter pet: Brown Marmot
condition end haspet(61752)
pet 449
step
goto The Hinterlands 69.6,55.8
.' The _Brown Marmots_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Brown Marmot##61752
|modeldisplay 2838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Brown Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Brown Rabbit
condition end haspet(20472)
pet 137
step
'Go to _Netherstorm_ |goto Netherstorm |noway |c
step
goto Netherstorm,43.4,35.2
.talk 20980
.buy 1 Brown Rabbit Crate##29364
'|modeldisplay 1560
step
.learnpet Brown Rabbit##20472 |use Brown Rabbit Crate##29364
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Calico Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Calico Cat
condition end haspet(34364)
pet 224
step
'Go to _Dalaran_ |goto Dalaran |noway |c
step
goto Dalaran,58.6,39.6
.talk 28951
.buy 1 Calico Cat##46398
'|modeldisplay 11709
step
.learnpet Calico Cat##34364 |use Calico Cat##46398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Carrion Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Carrion Rat
condition end haspet(62885)
pet 540
step
goto Mount Hyjal 78.5,49.5
.' The _Carrion Rats_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Carrion Rat##62885
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Celestial Dragon",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Celestial Dragon
condition end haspet(40624)
pet 255
step
'This pet is a reward for completing the Littlest Pet Shop Achievement
'You must acquire 150 unique vanity pets in order to earn this
'Earn the Littlest Pet Shop Achievement |achieve 5875
step
'Check your mailbox for Celestial Dragon
.collect Celestial Dragon##54810
|modeldisplay 31956
step
.learnpet Celestial Dragon##40624 |use Celestial Dragon##54810
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cenarion Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Cenarion Hatchling
condition end haspet(53623)
pet 316
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Cenarion Hatchling##70099
|modeldisplay 16943
step
.learnpet Cenarion Hatchling##53623 |use Cenarion Hatchling##70099
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cheetah Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Cheetah Cub
condition end haspet(62129)
pet 474
step
goto Northern Barrens 66.5,71.3
.' The _Cheetah Cubs_ are level 3. Challenge one to a pet battle and capture it.
.learnpet Cheetah Cub##62129
|modeldisplay 42362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Chuck",[[
description This guide will walk you through obtaining
description the Aquatic pet: Chuck
condition end haspet(26056)
pet 174
step
.' In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
.' Click here to continue. |confirm
step
label "daily"
goto Terokkar Forest,38.7,12.8
.talk 25580
.' This is 1 of 5 dailies Old Man Barlo can give you.
.accept 11665 |or |daily
step
.' Go West to Shattrath City |goto Shattrath City
only if havequest(11665)
step
goto Shattrath City,57.2,48.2
.' Click the Shattrath Portal to Stormwind |goto Stormwind City
only if havequest(11665)
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Stormwind City,49.0,87.4 |n
.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
only if havequest(11665)
step
goto Blasted Lands,55.0,53.9
.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
only if havequest(11665)
step
|fly Shattrath
only if havequest(11665)
step
.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
only if havequest(11665)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.turnin 11665 |or |daily
step
|use Bag of Fishing Treasures##35348
.collect 1 Chuck's Bucket##35350
.collect 1 Muckbreath's Bucket##33818
.collect 1 Snarly's Bucket##35349
.collect 1 Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
.' If you got one of the buckets above, click here. |next "use" |confirm
'|modeldisplay 22389
'|modeldisplay 23506
'|modeldisplay 23507
'|modeldisplay 22388
step
label "use"
.learnpet Chuck##26056 |use Chuck's Bucket##35350
.learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
.learnpet Snarly##26050 |use Snarly's Bucket##35349
.learnpet Toothy##24388 |use Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Clefthoof Runt",[[
description This guide will walk you through obtaining
description the Beast pet: Clefthoof Runt
condition end haspet(62620)
pet 518
step
goto Nagrand 59.5,60.7
.' The _Clefthoof Runts_ in this area are level 18. Challenge one to a pet battle and capture it.
.learnpet Clefthoof Runt##62620
|modeldisplay 42575
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cobra Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Cobra Hatchling
condition end haspet(32591)
pet 197
step
.' In order to get the Tickbird Hatchling, you will need to be aligned with the Oracles.  Do the Pre-Quests in the section below.
.' If you have done the Pre-quest, click here to go to the daily quests. |next "daily" |confirm
.' If you need to do the Pre-Quests in order to unlock the daily quests, click here. |next "prequest" |confirm
step
label "prequest"
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
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
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
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
.' Travel to Mistwhisper Refuge |q 12536/1
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
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
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
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
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
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
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
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
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
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to 72.2,57.3
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582 |daily
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
.' At this point, you will need to dailies to get to revered.
.' Click here to continue. |confirm
step
label "daily"
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
.talk 28667
..accept 12689 |daily |instant
..accept 12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
goto 54.6,56.4
.talk 28027
..turnin 12695 |only if not ZGV.completedQuests[12695]
..accept 12704 |daily
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |daily |or
..accept 12737 |daily |or
..accept 12736 |daily |or
..accept 12726 |daily |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |daily |or
..accept 12762 |daily |or
..accept 12705 |daily |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
.' Click here to reset the daily quests. |next "daily" |confirm
.' Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
goto Sholazar Basin,54.6,56.2
.talk 31910
.buy 1 Mysterious Egg##39878
step
'You will have to wait _3 days (real time)_ for this to hatch. |tip The drop rate for these pets is random. To get both pets you have to do this at least twice
|use Cracked Egg##39883
.collect 1 White Tickbird Hatchling##39899
.collect 1 Tickbird Hatchling##39896
.collect 1 Cobra Hatchling##39898
'|modeldisplay 22254
'|modeldisplay 26466
'|modeldisplay 28084
step
.learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
.learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
.learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cockatiel",[[
description This guide will walk you through obtaining
description the Flying pet: Cockatiel
condition end haspet(7390)
pet 47
step
'Go to _The Cape of Stranglethorn_ |goto The Cape of Stranglethorn |noway |c
step
goto 42.6,69.2
.talk 2663
.buy 1 Parrot Cage (Cockatiel)##8496.
'|modeldisplay 8819
step
.learnpet Cockatiel##7390 |use Parrot Cage (Cockatiel)##8496
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cockroach",[[
description This guide will walk you through obtaining
description the Critter pet: Cockroach
condition end haspet(61384)
pet 393
step
goto The Hinterlands 60.6,67.2
.' The _Cockroaches_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Cockroach##61384
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Coral Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Coral Snake
condition end haspet(62190)
pet 488
step
goto Stonetalon Mountains 33.1,17.7
.' The _Coral Snakes_ in this area are around level 5. Challenge one to a pet battle and capture it.
.learnpet Coral Snake##62190
|modeldisplay 36580
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Core Hound Pup",[[
description This guide will walk you through obtaining
description the Elemental pet: Core Hound Pup
condition end haspet(36871)
pet 244
step
'This is pet is only awarded for owners of the Blizzard Authenticator.
|confirm
step
'Check your _mailbox_ for your _prize_!
.collect 1 Core Hound Pup##49646
'|modeldisplay 30462
step
.learnpet Core Hound Pup##36871 |use Core Hound Pup##49646
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Creepy Crawly",[[
description This guide will walk you through obtaining
description the Critter pet: Creepy Crawly
condition end haspet(62116)
pet 468
step
goto Durotar 50.0,29.4
.' The _Creepy Crawly_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Creepy Crawly##62116
|modeldisplay 7511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crested Owl",[[
description This guide will walk you through obtaining
description the Flying pet: Crested Owl
condition end haspet(62242)
pet 507
step
goto Teldrassil 45.2,64.9
.' The _Crested Owl_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Crested Owl##62242
|modeldisplay 6300
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crimson Geode",[[
description This guide will walk you through obtaining
description the Elemental pet: Crimson Geode
condition end haspet(62927)
pet 559
step
goto Deepholm 62.9,33.1
.' The Crimson Geodes in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Crimson Geode##62927
|modeldisplay 42791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crimson Lasher",[[
description This guide will walk you through obtaining
description the Elemental pet: Crimson Lasher
condition end haspet(53661)
pet 318
step
'You will have to do the _Firelands dailies_ quests to complete the quest _"Filling the Moonwell"_
goto Molten Front,44.8,86.6
.talk 53881
..accept 29279
step
'Earn 125 Marks of the World tree to doing Firelands daily quests.
.earn 125 Mark of the World Tree##416
step
goto Mount Hyjal 27.2,63.6
.talk 52669
..turnin 29279
step
goto Molten Front,44.8,86.6
.talk 53881
.buy 1 Crimson Lasher##70160
'|modeldisplay 38429
step
.learnpet Crimson Lasher##53661 |use Crimson Lasher##70160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crimson Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Crimson Moth
condition end haspet(61314)
pet 421
step
' This pet will only join into a different pet battle.
|confirm
step
goto Northern Stranglethorn
.' The _Crimson Moth_ will be attached to a _Polly_. They are both level 7. Defeat _Polly_ and capture the _Crimson Moth_ when it is below 35% health.
.learnpet Crimson Moth##61314
|modeldisplay 36671
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crimson Shale Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Crimson Shale Hatchling
condition end haspet(62922)
pet 554
step
goto Deepholm 58.2,25.6 |n
.' Enter the cave here. |goto Deepholm 58.2,25.6 |noway |c
step
goto Deepholm 62.4,27.4
.' The _Crimson Shale Hatchlings_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Crimson Shale Hatchling##62922
|modeldisplay 36605
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crimson Whelpling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Crimson Whelpling
condition end haspet(7544)
pet 58
step
'Go to _Wetlands_ |goto Wetlands |noway |c
step
'Kill _any_ and _all_ mobs to farm for your _Tiny Crimson Whelpling_ |tip This has a .01% drop rate, you may be farming for a while
.collect 1 Tiny Crimson Whelpling##8499
'|modeldisplay  6290
step
.learnpet Crimson Whelpling##7544 |use Tiny Crimson Whelpling##8499
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crystal Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Crystal Beetle
condition end haspet(62925)
pet 556
step
goto Deepholm 55.9,47.0
.' The _Crystal Beetles_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Crystal Beetle##62925
|modeldisplay 15467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crystal Spider",[[
description This guide will walk you through obtaining
description the Beast pet: Crystal Spider
condition end haspet(62435)
pet 634
step
goto Winterspring 66.6,54.8
.' The _Crystal Spiders_ in this area are around level 14. Challenge one to a pet battle and capture it.
.learnpet Crystal Spider##62435
|modeldisplay 27861
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Curious Oracle Hatchling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Curious Oracle Hatchling
condition end haspet(33530)
pet 225
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Curious Oracle Hatchling##46545 |tip Back to the Orphanage (Dalaran)
'|modeldisplay 25924
step
.learnpet Curious Oracle Hatchling##33530 |use Curious Oracle Hatchling##46545 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Curious Wolvar Pup",[[
description This guide will walk you through obtaining
description the Humanoid pet: Curious Wolvar Pup
condition end haspet(33529)
pet 226
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
'|modeldisplay 25394
step
.learnpet Curious Wolvar Pup##33529 |use Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dark Whelpling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Dark Whelpling
condition end haspet(7543)
pet 56
step
'Go to _Wetlands_ |goto Wetlands |noway |c
step
goto 64.6,50.6
.from Ebon Whelp##42042
.collect 1 Dark Whelpling##10822 |tip This has a .09% drop rate, you may be farming for a while
'|modeldisplay  6288
step
.learnpet Dark Whelpling##7543 |use Dark Whelpling##10822
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Darkmoon Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Darkmoon Rabbit
condition end haspet(59358)
pet 848
step
'This pet is only available to players during the _Darkmoon Faire_.
|confirm
step
goto Elwynn Forest,41.8,69.5
.click the Portal to Darkmoon Island
.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
step
goto Darkmoon Island 78.0,82.2
.from Darkmoon Rabbit##58336 |tip The Darkmoon Rabbit is an Elite mob with over 150 Million health. Having a medium sized group is suggested.
.collect Darkmoon Rabbit##80008 |n
.learnpet Darkmoon Rabbit##59358
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Darkshore Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Darkshore Cub
condition end haspet(62250)
pet 508
step
goto Darkshore 40.6,74.0
.' The _Darkshore Cubs_ are around level 5. Challenge one to a pet battle and capture it.
.learnpet Darkshore Cub##62250
|modeldisplay 42412
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Darting Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Darting Hatchling
condition end haspet(35396)
pet 232
step
'Go to Dustwallow Marsh |goto Dustwallow Marsh |noway |c
step
goto 48.0,14.2
.click Dart's Nest##7202
.collect Darting Hatchling##48112 |tip There are more Dart's Nests at [49.1,17.5]
.' [47.9,19.0]
.' and [46.5,17.2]
'|modeldisplay 29805
step
.learnpet Darting Hatchling##35396 |use Darting Hatchling##48112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\De-Weaponized Mechanical Companion",[[
description This guide will walk you through obtaining
description the Mechanical pet: De-Weaponized Mechanical Companion
condition end haspet(43916)
pet 262
step
'Skipping to the next step |only if skill("Engineering")<475 |next
goto The Cape of Stranglethorn,43.0,72.0 |only if skill("Engineering")>=475
.talk 7406 |only if skill("Engineering")>=475
.learn De-Weaponized Mechanical Companion##84413 |only if skill("Engineering")>=475
.' Click here if you do not wish to learn this schematic |confirm |only if skill("Engineering")>=475
step
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 De-Weaponized Mechanical Companion##60216 |next "bought"
.' _Click here_ to _farm_ for this _pet_ |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 12 Obsidium Bar##54849
.collect 4 Handful of Obsidium Bolts##60224
.collect 8 Electrified Ether##67749
.collect 2 Jasper##52182
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(84413)==false
.create De-Weaponized Mechanical Companion##84413,Engineering,1 total |only if _G.IsSpellKnown(84413)==true
.collect 1 De-Weaponized Mechanical Companion##60216
'|modeldisplay 33559
step
.learnpet De-Weaponized Mechanical Companion##43916 |use De-Weaponized Mechanical Companion##60216
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Death's Head Cockroach",[[
description This guide will walk you through obtaining
description the Critter pet: Death's Head Cockroach
condition end haspet(62887)
pet 755
step
goto Mount Hyjal 58.6,69.1
.' The _Death's Head Cockroaches_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Death's Head Cockroach##62887
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Deathy",[[
description This guide will walk you through obtaining
description the Humanoid pet: Deathy
condition end haspet(51122)
pet 294
step
.' This pet is available only to people who attended the live stream of BlizzCon 2010.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 36896
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Deepholm Cockroach",[[
description This guide will walk you through obtaining
description the Critter pet: Deepholm Cockroach
condition end haspet(62924)
pet 555
step
goto Deepholm 56.7,55.9
.' The _Deepholm Cockroaches_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Deepholm Cockroach##62924
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Desert Spider",[[
description This guide will walk you through obtaining
description the Beast pet: Desert Spider
condition end haspet(62186)
pet 484
step
goto Silithus 46.7,73.4
.' The _Desert Spiders_ in this area are around level 16. Challenge one to a pet battle and capture it.
.learnpet Desert Spider##62186
|modeldisplay 36638
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Deviate Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Deviate Hatchling
condition end haspet(35395)
pet 233
step
'Go to _Wailing Caverns_ |noway |c |goto Wailing Caverns
step
'Traverse throughout the instance
.from Deviate Ravager##3636+, Deviate Guardian##3637+
.collect 1 Deviate Hatchling##48114 |tip This has a .2% drop rate, you might be farming here for a while
'|modeldisplay 29807
step
.learnpet Deviate Hatchling##35395 |use Deviate Hatchling##48114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Devouring Maggot",[[
description This guide will walk you through obtaining
description the Beast pet: Devouring Maggot
condition end haspet(62640)
pet 523
step
goto Howling Fjord 50.1,53.8
.' The Devouring Maggots in this area are around level 21. Challenge one to a pet battle and capture it.
.learnpet Devouring Maggot##62640
|modeldisplay 15554
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Diemetradon Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Diemetradon Hatchling
condition end haspet(62375)
pet 504
step
goto Un'Goro Crater 35.1,61.8
.' The _Diemetradon Hatchlings_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Diemetradon hatchling##62375
|modeldisplay 42464
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Disgusting Oozeling",[[
description This guide will walk you through obtaining
description the Magic pet: Disgusting Oozeling
condition end haspet(15429)
pet 114
step
'Go to _Western Plaguelands_ |goto Western Plaguelands |noway |c
step
goto 65.6,38.0
.from Vile Slime##1806+
.collect 1 Oozing Bag##20768
.' Open the Oozing Bag |use Oozing Bag##20768
.collect 1 Disgusting Oozeling##20769 |tip This has a low drop rate, you may be farming here for a while
'|modeldisplay  28012
step
.learnpet Disgusting Oozeling##15429 |use Disgusting Oozeling##20769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dragon Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Dragon Kite
condition end haspet(25110)
pet 169
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 22966
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dragonbone Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Dragonbone Hatchling
condition end haspet(62852)
pet 537
step
goto Dragonblight 62.8,67.3
.' The _Dragonbone Hatchlings_ are around level 22. Challenge one to a pet battle and capture it.
.learnpet Dragonbone Hatchling##62852
|modeldisplay 42735
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dung Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Dung Beetle
condition end haspet(62115)
pet 467
step
goto Orgrimmar 42.4,46.8
.' The _Dung Beetle_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Dung Beetle##62115
|modeldisplay 7511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Elementium Geode",[[
description This guide will walk you through obtaining
description the Elemental pet: Elementium Geode
condition end haspet(50722)
pet 293
step
'You can either _farm_ for this _pet_ using _Mining_ or _buy_ it from the _Auction House_:
.collect 1 Elementium Geode##67282
'|modeldisplay 37178
step
.learnpet Elementium Geode##50722 |use Elementium Geode##67282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Elfin Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Elfin Rabbit
condition end haspet(62178)
pet 479
step
goto Mount Hyjal 48.8,25.8
.' The _Elfin Rabbits_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Elfin Rabbit##62178
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Emerald Boa",[[
description This guide will walk you through obtaining
description the Beast pet: Emerald Boa
condition end haspet(62127)
pet 631
step
goto Un'Goro Crater 65.4,71.6
.' The _Emerald Boas_ in this area are around level _15_. Challenge one to a pet battle and capture it.
.learnpet Emerald Boa##62127
|modeldisplay 36578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Emerald Shale Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Emerald Shale Hatchling
condition end haspet(62915)
pet 837
step
goto Deepholm 50.0,54.8
.' The _Emerald Shale Hatchlings_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Emerald Shale Hatchling##62915
|modeldisplay 36603
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Emerald Whelpling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Emerald Whelpling
condition end haspet(7545)
pet 59
step
'Go to _Feralas_ |goto Feralas |noway |c
step
goto 48.8,9.0
.from Noxious Whelp##39384+ |tip This has a .09% drop rate, you may be farming for a while
.collect 1 Emerald Whelpling##8498
'|modeldisplay  6291
step
.learnpet Emerald Whelpling##7545 |use Emerald Whelpling##8498
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Essence of Competition",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Essence of Competition
condition end haspet(27346)
pet 180
step
'This pet is available only to people who participated in the Beijing 2008 Summer Olympics event in World of Warcraft.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 24620
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ethereal Soul-Trader",[[
description This guide will walk you through obtaining
description the Magic pet: Ethereal Soul-Trader
condition end haspet(27914)
pet 183
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 25002
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Eye of the Legion",[[
description This guide will walk you through obtaining
description the Undead pet: Eye of the Legion
condition end haspet(59020)
pet 348
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 40538
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fel Flame",[[
description This guide will walk you through obtaining
description the Elemental pet: Fel Flame
condition end haspet(62621)
pet 519
step
goto Shadowmoon Valley 49.4,36.5
.' The _Fel Flames_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Fel Flame##62621
|modeldisplay 42576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Feral Vermling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Feral Vermling
condition end haspet(63621)
pet 821
step
'This pet is a reward for completing the achievement _"Going to Need More Leashes"_
.' Check your mailbox for the pet after gathering 250 unique pets.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Festering Maggot",[[
description This guide will walk you through obtaining
description the Beast pet: Festering Maggot
condition end haspet(61830)
pet 457
step
goto Eastern Plaguelands 72.6,63.9
.' The _Festering Maggots_ in this area are around level 12-13. Challenge one to a pet battle and capture it.
.learnpet Festering Maggot##61830
|modeldisplay 9904
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fetish Shaman",[[
description This guide will walk you through obtaining
description the Undead pet: Fetish Shaman
condition end haspet(56266)
pet 346
step
'This pet is available only to people who bought the Collector's Edition of Diablo 3.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fire Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Fire Beetle
condition end haspet(61328)
pet 415
step
goto Searing Gorge 43.6,40.4
.' The _Fire Beeltes_ in this area are around level 14. Challenge one to a pet battle and capture it.
.learnpet Fire Beetle##61328
|modeldisplay 8971
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fire-Proof Roach",[[
description This guide will walk you through obtaining
description the Critter pet: Fire-Proof Roach
condition end haspet(62886)
pet 541
step
goto Mount Hyjal 87.2,56.7
.' The _Fire-Proof Roaches_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Fire-Proof Roach##62886
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Firefly",[[
description This guide will walk you through obtaining
description the Flying pet: Firefly
condition end haspet(21076)
pet 146
step
'Go to _Zangarmarsh_ |goto Zangarmarsh |noway |c
step
goto 42.2,34.6
.from Bogflare Needler##20197+
.collect 1 Captured Firefly##29960
'|modeldisplay 25861
step
.learnpet Firefly##21076 |use Captured Firefly##29960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fjord Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Fjord Rat
condition end haspet(62641)
pet 644
step
goto Howling Fjord 57.6,54.9
.' The _Fjord Rats_ are around level 21. Challenge one to a pet battle and capture it.
.learnpet Fjord Rat##62641
|modeldisplay 22175
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fjord Worg Pup",[[
description This guide will walk you through obtaining
description the Beast pet: Fjord Worg Pup
condition end haspet(62669)
pet 529
step
goto Howling Fjord 27.4,56.5
.' The _Fjord Worg Pups_ are around level 21. Challenge one to a pet battle and capture it.
.learnpet Fjord Worg Pup##62669
|modeldisplay 42617
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Flayer Youngling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Flayer Youngling
condition end haspet(62555)
pet 514
step
goto Hellfire Peninsula 58.0,13.2
.' The _Flayer Younglings_ in this area are level 18. Challenge one to a pet battle and capture it.
.learnpet Flayer Youngling##62555
|modeldisplay 42553
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fledgling Buzzard",[[
description This guide will walk you through obtaining
description the Flying pet: Fledgling Buzzard
condition end haspet(61171)
pet 395
step
goto Redridge Mountains 28.9,28.5
.' The _Fledgling Buzzards_ in this area are level 3-5. Challenge one to a pet battle and capture it.
.learnpet Fledgling Buzzard##61171
|modeldisplay 41887
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fledgling Nether Ray",[[
description This guide will walk you through obtaining
description the Flying pet: Fledgling Nether Ray
condition end haspet(62627)
pet 521
step
goto Netherstorm 64.9,41.9
.' The _Fledgling Nether Rays_ in this area are around level 19. Challenge one to a pet battle and capture it.
.learnpet Fledgling Nether Ray##62627
|modeldisplay 42578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Forest Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Forest Moth
condition end haspet(62177)
pet 478
step
goto Desolace 56.9,46.7
.' The _Forest Moth_ in this area are level 8. Challenge one to a pet battle and capture it.
.learnpet Forest Moth##62177
|modeldisplay 36944
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Forest Spiderling",[[
description This guide will walk you through obtaining
description the Beast pet: Forest Spiderling
condition end haspet(61320)
pet 407
step
goto The Cape of Stranglethorn 40.7,48.3
.' The _Forest Spiderling_ is level 9. Challenge one to a pet battle and capture it.
.learnpet Forest Spiderling##61320
|modeldisplay 2536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fox Kit",[[
description This guide will walk you through obtaining
description the Beast pet: Fox Kit
condition end haspet(48641)
pet 278
step
'Go to _Tol Barad_ |goto Tol Barad |noway |c
step
'Patrol around Tol Barad and kill all Baradin Foxes
.from Baradin Fox##47676+
.collect 1 Fox Kit##64403 |tip This has a .1% drop rate
'|modeldisplay 37709
step
.learnpet Fox Kit##48641 |use Fox Kit##64403
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Frigid Frostling",[[
description This guide will walk you through obtaining
description the Elemental pet: Frigid Frostling
condition end haspet(40198)
pet 253
step
'This requires the _Midsummer Fire Festival_ Holiday
.' Use the _Dungeon Finder_ to go to _The Slave Pens_ |goto The Slave Pens |noway |c
step
goto 32.6,50.8
.' Kill _Ahune_ to get _your prize_ |tip This will appear in your bags once you kill Ahune and can only be won once a day
.collect 1 Satchel of Chilled Goods##54536
step
|use Satchel of Chilled Goods##54536
.collect 1 Ice Chip##53641 |tip This has a 4% chance to drop from this item
'|modeldisplay 38192
step
.learnpet Frigid Frostling##40198 |use Ice Chip##53641
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Frog
condition end haspet(62312)
pet 495
step
goto Ashenvale 71.5,54.1
.' The _Frogs_ in this area are around level 5. Challenge one to a pet battle and capture it.
.learnpet Frog##62312
|modeldisplay 6297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Frosty",[[
description This guide will walk you through obtaining
description the Undead pet: Frosty
condition end haspet(28883)
pet 188
step
'This pet is available only to people who bought the Collector's Edition of the Wrath of the Lich King expansion pack.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 28456
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fungal Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Fungal Moth
condition end haspet(62916)
pet 756
step
goto Deepholm 68.7,24.7
.' The _Fungal Moths_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Fungal Moth##62916
|modeldisplay 36944
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gazelle Fawn",[[
description This guide will walk you through obtaining
description the Critter pet: Gazelle Fawn
condition end haspet(62176)
pet 477
step
goto Mulgore 33.8,31.5
.' The _Gazelle Fawns_ are level 1. Challenge one to a pet battle and capture it.
.learnpet Gazelle Fawn##62176
|modeldisplay 45085
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ghostly Skull",[[
description This guide will walk you through obtaining
description the Undead pet: Ghostly Skull
condition end haspet(29147)
pet 190
step
'Go to _Dalaran_ |goto Dalaran/2 |noway |c
step
goto 63.8,16.6
.talk 29537
.buy 1 Ghostly Skull##39973
'|modeldisplay 35320
step
.learnpet Ghostly Skull##29147 |use Ghostly Skull##39973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Giant Sewer Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Giant Sewer Rat
condition end haspet(31575)
pet 193
step
'_Obtaining_ this pet will require you to have _fishing_
|tip To have an easier time fishing for this pet, use the Fishing profession section of this guide to level up fishing |only if skill("Fishing")<430
|confirm
step
'Go to _Dalaran_ |goto Dalaran |noway |c
step
'The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7,0.3 |c
step
'_Cast_ your _fishing line_ in the _water down here_ and click on the _bobber_ when it bobs |cast Fishing##7620
.collect 1 Giant Sewer Rat##43698 |tip This has a very low drop rate. You may be fishing here for a while.
'|modeldisplay 36357
step
.learnpet Giant Sewer Rat##31575 |use Giant Sewer Rat##43698
|tip I Smell A Giant Rat!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Giraffe Calf",[[
description This guide will walk you through obtaining
description the Beast pet: Giraffe Calf
condition end haspet(62130)
pet 475
step
goto Southern Barrens 51.0,55.4
.' The _Giraffe Calfs_ are level 9. Challenge one to a pet battle and capture it.
.learnpet Giraffe Calf##62130
|modeldisplay 42363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gold Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Gold Beetle
condition end haspet(61438)
pet 430
step
goto Badlands 46.0,57.6
.' The _Gold Beetles_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Gold Beetle##61438
|modeldisplay 15467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Golden Pig",[[
description This guide will walk you through obtaining
description the Critter pet: Golden Pig
condition end haspet(25146)
pet 170
step
'This pet was given to players on China's servers during the 2007 New Year's event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 21304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grasslands Cottontail",[[
description This guide will walk you through obtaining
description the Critter pet: Grasslands Cottontail
condition end haspet(61704)
pet 443
step
goto Arathi Highlands 59.3,47.9
' The _Grasslands Cottontails_ are level 7. Challenge one to a pet battle and capture it.
.learnpet Grasslands Cottontail##61704
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Green Balloon",[[
description This guide will walk you through obtaining
description the Flying pet: Green Balloon
condition end haspet(56082)
pet 344
step
goto Darkmoon Island 49.6,81.4
.talk 55305
.buy Flimsy Green Balloon##75041
step
.learnpet Green Balloon##56082 |use Flimsy Green Balloon##75041
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Green Wing Macaw",[[
description This guide will walk you through obtaining
description the Flying pet: Green Wing Macaw
condition end haspet(7387)
pet 50
step
'Go to the _The Deadmines_ |tip This pet drops in normal mode only, so you'll have to walk here |goto The Deadmines |noway |c
step
'_Traverse_ through the _Deadmines_
.from Defias Pirate##657+
.collect 1 Parrot Cage (Green Wing Macaw)##8492 |tip This has a 2% drop rate. If you go through to the end of the instance, exit it and reset the dungeon. To reset a dungeon right click on your protrait and click "Reset all instances".
'|modeldisplay 5207
step
.learnpet Green Wing Macaw##7387 |use Parrot Cage (Green Wing Macaw)##8492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gregarious Grell",[[
description This guide will walk you through obtaining
description the Humanoid pet: Gregarious Grell
condition end haspet(54730)
pet 333
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grey Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Grey Moth
condition end haspet(62050)
pet 464
step
goto Azuremyst Isle 53.1,52.5
.' The _Grey Moths_ in this area are level 1. Challenge one to a pet battle and capture it.
.learnpet Grey Moth##62050
|modeldisplay 42343
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grizzly Squirrel",[[
description This guide will walk you through obtaining
description the Critter pet: Grizzly Squirrel
condition end haspet(62818)
pet 647
step
goto Grizzly Hills 13.9,69.4
.' The _Grizzly Squirrels_ are level 21. Challenge one to a pet battle and capture it.
.learnpet Grizzly Squirrel##62818
|modeldisplay 134
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grotto Vole",[[
description This guide will walk you through obtaining
description the Critter pet: Grotto Vole
condition end haspet(62884)
pet 539
step
goto Mount Hyjal 52.5,17.3 |n
.' Enter the cave here |goto Mount Hyjal 52.5,17.3 |noway |c
step
goto 54.4,19.4
.' The _Grotto Vole_ is level 23. Challenge one to a pet battle and capture it.
.learnpet Grotto Vole##62884
|modeldisplay 4959
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grunty",[[
description This guide will walk you through obtaining
description the Humanoid pet: Grunty
condition end haspet(34694)
pet 228
step
'This pet is available only to people who attended the live stream of BlizzCon 2009.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 29348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gryphon Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Gryphon Hatchling
condition end haspet(36908)
pet 245
step
.' This pet can be purchased for $25.00 from the official Blizzard Store. It also includes an out of game plushie.
.' After purchasing, check your in-game mailbox
.collect Gryphon Hatchling##49662
|modeldisplay 30412
step
.learnpet Gryphon Hatchling##36908 |use Gryphon Hatchling##49662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Guardian Cub",[[
description This guide will walk you through obtaining
description the Flying pet: Guardian Cub
condition end haspet(53283)
pet 311
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Guardian Cub##98736
|modeldisplay 38359
step
.learnpet Guardian Cub##98736 |use Pandaren Monk##72068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gundrak Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Gundrak Hatchling
condition end haspet(35400)
pet 234
step
'Go to _Zul'Drak_ |goto Zul'Drak |noway |c
step
goto 71.6,30.2
.from Gundrak Raptor##29334+ |tip This has a .1% drop rate, you might be farming here for a while
.collect 1 Gundrak Hatchling##48116
'|modeldisplay 29803
step
.learnpet Gundrak Hatchling##35400 |use Gundrak Hatchling##48116
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gurky",[[
description This guide will walk you through obtaining
description the Humanoid pet: Gurky
condition end haspet(16069)
pet 121
step
'This pet was offered as a fan website's gift around Christmas 2006, in Europe.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 15984
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Highlands Mouse",[[
description This guide will walk you through obtaining
description the Critter pet: Highlands Mouse
condition end haspet(62905)
pet 550
step
goto Twilight Highlands 20.1,16.4
.' The _Highlands Mouse_ is around level 23. Challenge one to a pet battle and capture it.
.learnpet Highlands Mouse##62905
|modeldisplay 4959
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Highlands Skunk",[[
description This guide will walk you through obtaining
description the Critter pet: Highlands Skunk
condition end haspet(62907)
pet 823
step
goto Twilight Highlands 24.3,19.5
.' The _Highlands Skunks_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Highlands Skunk##62907
|modeldisplay 16633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Highlands Turkey",[[
description This guide will walk you through obtaining
description the Flying pet: Highlands Turkey
condition end haspet(62906)
pet 645
step
goto Twilight Highlands 29.6,31.2
.' The _Highlands Turkeys_ are level 23. Challenge one to a pet battle and capture it.
.learnpet Highlands Turkey##62906
|modeldisplay 21774
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hippogryph Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Hippogryph Hatchling
condition end haspet(17255)
pet 130
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 16943
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hopling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Hopling
condition end haspet(64632)
pet 835
step
.' For this pet, you will need complete an achievement that requires access to the _Stormstout Brewery_, a level 85 Mists of Pandaria instance.
.' This achievement takes place throughout the _Stormstout Brewery_ and involves _Auntie Stormstout_, who can be found at the start of the instance.
.' It's recommended that you wait until the instance is cleared before doing this achievement.
|confirm
step
goto Stormstout Brewery/1 76.8,35.8
.talk 59822
.buy 5 Ling-Ting's Favorite Tea##80313 |n
.' Ling-Ting's Favorite Tea costs 5 gold each and grants a buff that will allow you to see the _Golden Hopling_.
|confirm
'|modelnpc 59824
step
.' _Trickling Passage_
.' Use Ling-Ting's Favorite Tea |use Ling-Ting's Favorite Tea##80313
.' The first is at [Stormstout Brewery/1 75.6,34.3]
.' The second is at [Stormstout Brewery/1 72.1,56.0]
.' The third is at [Stormstout Brewery/1 68.5,37.6]
|confirm
step
.' _Grain Cellar_
.' The fourth is at [Stormstout Brewery/1 55.6,46.0]
.' The fifth is at [Stormstout Brewery/1 55.8,53.4]
.' The sixth is at [Stormstout Brewery/1 43.8,42.5]
.' The seventh is at [Stormstout Brewery/1 34.9,42.2]
.' The eighth is at [Stormstout Brewery/1 41.7,63.1]
.' The ninth is at [Stormstout Brewery/1 40.9,72.7]
|confirm
step
.' _Mama's Pantry_
.' The tenth is at [Stormstout Brewery/1 34.4,65.1]
.' The eleventh is at [Stormstout Brewery/1 30.9,86.5]
|confirm
step
.' _Stormstout Brewhall_
.' The twefth is at [Stormstout Brewery/1 18.9,73.9]
.' The thirteenth is at [Stormstout Brewery/1 16.1,57.5]
.' The fourteenth is at [Stormstout Brewery/2 33.4,44.6]
.' The fifthteenth is at [Stormstout Brewery/2 48.3,73.3]
.' The sixteenth is at [Stormstout Brewery/2 69.7,34.0]
.' The seventeenth is at [Stormstout Brewery/2 74.8,64.9]
|confirm
step
.' _Stormstout Brewery_
.' The eighteenth is at [Stormstout Brewery/2 87.5,81.7]
|confirm
step
.' _Stormstout Brewhall_
.' The nineteenth is at [Stormstout Brewery/3 29.8,86.6]
.' the twentieth is at [Stormstout Brewery/3 26.4,44.0]
|confirm
step
.' _Stormstout Brewery_
.' The twenty-first is at [Stormstout Brewery/3 42.4,24.9]
.' The twenty-second is at [Stormstout Brewery/3 57.6,31.1]
|confirm
step
.' _The Great Wheel_
.' The twenty-third is at [Stormstout Brewery/3 59.0,48.0]
.' The twenty-fourth is at [Stormstout Brewery/3 69.7,33.3]
.' The twenty-fifth is at [Stormstout Brewery/3 63.2,68.8]
|confirm
step
.' _Stormstout Brewery_
.' The twenty-sixth is at [Stormstout Brewery/3 85.0,32.1]
|confirm
step
.' _The Tasting Room_
.' The twenty-seventh is at [Stormstout Brewery/4 52.8,22.5]
.' The twenty-eighth is at [Stormstout Brewery/4 43.0,81.1]
.' The twenty-ninth is at [Stormstout Brewery/4 63.9,73.5]
.' The thirtieth is at [Stormstout Brewery/4 48.6,52.4]
.' Earn the Ling-Ting's Herbal Journey achievement |achieve 6402
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Horde Balloon",[[
description This guide will walk you through obtaining
description the Flying pet: Horde Balloon
condition end haspet(54541)
pet 332
step
goto Orgrimmar,48,47
.talk 54004
..accept 29401
step
goto 50.2,49.8
.' Click on the _Windswept Balloon_ |tip They look like red balloons all over Orgrimmar
.get 5 Windswept Balloon##71034 |q 29401/1
step
goto Orgrimmar,48,47
.talk 54004
..turnin 29401
.collect 1 Horde Balloon##72045
'|modeldisplay 38342
step
.learnpet Horde Balloon##54541 |use Horde Balloon##72045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Horned Lizard",[[
description This guide will walk you through obtaining
description the Beast pet: Horned Lizard
condition end haspet(62894)
pet 851
step
goto Uldum 64.5,22.3
.' The _Horned Lizards_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Horned Lizard##62894
|modeldisplay 36583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Horny Toad",[[
description This guide will walk you through obtaining
description the Aquatic pet: Horny Toad
condition end haspet(62185)
pet 483
step
goto Desolace 41.2,25.4
.' The _Horny Toads_ in this area are level 7. Challenge one to a pet battle and capture it.
.learnpet Horny Toad##62185
|modeldisplay 36583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Huge Toad",[[
description This guide will walk you through obtaining
description the Aquatic pet: Huge Toad
condition end haspet(61368)
pet 648
step
goto Hillsbrad Foothills 64.4,38.8
.' The _Huge Toads_ in this area are level 23. Challenge one to a pet battle and capture it.
.learnpet Huge Toad##61368
|modeldisplay 5379
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hyacinth Macaw",[[
description This guide will walk you through obtaining
description the Flying pet: Hyacinth Macaw
condition end haspet(7391)
pet 49
step
'Go to _Northern Stranglethorn_ |goto Northern Stranglethorn |noway |c
step
'_Kill any and all mobs here_ |tip This pet is a zone drop and it has a very low drop rate. You might be farming for this for a while.
.collect 1 Parrot Cage (Hyacinth Macaw)##8494
'|modeldisplay 6192
step
.learnpet Hyacinth Macaw##7391 |use Parrot Cage (Hyacinth Macaw)##8494
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hyjal Bear Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Hyjal Bear Cub
condition end haspet(53658)
pet 317
step
'You will have to do the _Firelands dailies_ quests to complete the quest _"Calling the Ancients"_
goto Molten Front,44.8,89.8
.talk 53882
..accept 29283
step
'Earn 125 Marks of the World tree to doing Firelands daily quests.
.earn 125 Mark of the World Tree##416
step
goto Mount Hyjal 26.0,61.2
.talk 52906
..turnin 29283
step
goto Molten Front,44.8,89.8
.talk 53882
.buy 1 Hyjal Bear Cub##70140
'|modeldisplay 36863
step
.learnpet Hyjal Bear Cub##53658 |use Hyjal Bear Cub##70140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Imperial Eagle Chick",[[
description This guide will walk you through obtaining
description the Flying pet: Imperial Eagle Chick
condition end haspet(62819)
pet 534
step
goto Grizzly Hills 15.2,58.0
.' The _Imperial Eagle Chick_ is level 21. Challenge one to a pet battle and capture it.
.learnpet Imperial Eagle Chick##62819
|modeldisplay 42709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Infected Fawn",[[
description This guide will walk you through obtaining
description the Undead pet: Infected Fawn
condition end haspet(61827)
pet 628
step
goto Eastern Plaguelands 71.7,65.4
.' The _Infected Fawn_ in this area are around level 12-13. Challenge one to a pet battle and capture it.
.learnpet Infected Fawn##61827
|modeldisplay 45086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Infected Squirrel",[[
description This guide will walk you through obtaining
description the Undead pet: Infected Squirrel
condition end haspet(61828)
pet 627
step
goto Eastern Plaguelands 37.4,80.8
.' The _Infected Squirrels_ in this area are around level 12-13. Challenge one to a pet battle and capture it.
.learnpet Infected Squirrel##61828
|modeldisplay 10090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Infested Bear Cub",[[
description This guide will walk you through obtaining
description the Undead pet: Infested Bear Cub
condition end haspet(61758)
pet 453
step
goto Hillsbrad Foothills 31.6,71.1
.' The _Infested Bears_ are level 6. Challenge one to a pet battle and capture it.
.learnpet Infested Bear Cub##61758
|modeldisplay 42229
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Irradiated Roach",[[
description This guide will walk you through obtaining
description the Critter pet: Irradiated Roach
condition end haspet(61691)
pet 442
step
goto New Tinkertown 41.1,47.9
.' The _Irradiated Roaches_ are level 1. Challenge one to a pet battle and capture it.
.learnpet Irradiated Roach##61691
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jade Oozeling",[[
description This guide will walk you through obtaining
description the Magic pet: Jade Oozeling
condition end haspet(61718)
pet 446
step
goto The Hinterlands 57.4,43.5
.' The _Jade Oozelings_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Jade Oozeling##61718
|modeldisplay 42218
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jade Tentacle",[[
description This guide will walk you through obtaining
description the Elemental pet: Jade Tentacle
condition end haspet(66450)
pet 856
step
'This pet can only be obtained by completing the _"Time to Open a Pet Store"_ Achievement.
|modeldisplay 45133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jade Tiger",[[
description This guide will walk you through obtaining
description the Magic pet: Jade Tiger
condition end haspet(34930)
pet 231
step
'This pet was only available to players in China during the Jade tiger giveaway event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 29605
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jubling",[[
description This guide will walk you through obtaining
description the Aquatic pet: Jubling
condition end haspet(14878)
pet 106
step
'This _pet_ requires that the _Darkmoon Faire_ is in town |tip The Darkmoon Faire is in town every first week of the month
'You can either _buy_ these items from the _Auction House_ or go to _Blackrock Depths_ to _buy_ them from _Plugger Spazzring_
.collect 2 Dark Iron Ale Mug##11325
step
'Go to the _Darkmoon Faire_ and find _Morja_ |tip She's a female orc wearing a green outfit
.' _Throw_ your _Dark Iron Ale Mug_ down at the little frog, _Jubjub_, that is _running around this area_ |tip Do not throw this near Morja, or else you'll waste a Dark Iron Ale Mug
.' The _frog_ will go to _Morja_, when he does, _Morja_ will offer the _quest_
.talk 14871
..accept 7946
..turnin 7946
.collect 1 Unhatched Jubling Egg##19462
step
'Wait _7 days_ for your new _pet_
|use Unhatched Jubling Egg##19462
.collect 1 A Jubling's Tiny Home##19450
'|modeldisplay 1924
step
.learnpet Jubling##14878 |use A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\King Snake",[[
description This guide will walk you through obtaining
description the Beast pet: King Snake
condition end haspet(61443)
pet 438
step
goto Badlands 12.9,29.7
.' The King Snakes are around level 13. Challenge one to a pet battle and capture it.
.learnpet King Snake##61443
|modeldisplay 2954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Kirin Tor Familiar",[[
description This guide will walk you through obtaining
description the Elemental pet: Kirin Tor Familiar
condition end haspet(32643)
pet 199
step
.' The Kirin Tor Fmailiar requires that you do the _Higher Learning_ achievement.
.' Click here to begin. |confirm
step
'Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times), so this achievement may take you a while to get. |tip The book you want won't always be there.  Fake trash books spawn to make the achievement even harder to get, but keep at it.  Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
.' This is an achievement that you may want to dedicate a lot of time to, if you want it. |tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide.
.' Good luck!
.' Click this line to skip to the next step |confirm
step
label "RestartHigherLearning"
goto Dalaran,64.4,52.4
.' Click The Schools of Arcane Magic - Illusion |tip It looks like a brown book laying on a wooden crate.
.' Read The Schools of Arcane Magic - Illusion |achieve 1956/6
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 56.6,45.6
.' Click The Schools of Arcane Magic - Introduction |tip It looks like a blue book laying on ground next to a bookshelf inside this building.
.' Read The Schools of Arcane Magic - Introduction |achieve 1956/1
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 52.3,54.8
.' Click The Schools of Arcane Magic - Abjuration |tip It looks like a brown book laying on ground next to a small table inside this building.
.' Read The Schools of Arcane Magic - Abjuration |achieve 1956/2
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 43.6,46.7
.' Click The Schools of Arcane Magic - Enchantment |tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
.' Read The Schools of Arcane Magic - Enchantment |achieve 1956/5
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 46.8,40.0
.' Click The Schools of Arcane Magic - Transmutation |tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Transmutation |achieve 1956/8
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 46.8,39.1
.' Click The Schools of Arcane Magic - Necromancy |tip It looks like a blue book laying on a bookshelf upstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Necromancy |achieve 1956/7
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 30.8,46.0
.' Click The Schools of Arcane Magic - Conjuration |tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
.' Read The Schools of Arcane Magic - Conjuration |achieve 1956/3
.' Click this line to skip to the next step, if the correct book isn't there |confirm
step
goto 26.5,52.1
.' Click The Schools of Arcane Magic - Divination |tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
.' Read The Schools of Arcane Magic - Divination |achieve 1956/4
.' Click this line to skip to the next step, if the correct book isn't there |confirm |next "RestartHigherLearning"
step
|use The Schools of Arcane Magic - Mastery##43824 |tip You should receive this in your mailbox
.' Go to _Archmage Vargoth's_ tower |goto Dalaran,22.9,54.5,0.5 |noway |c
step
goto Dalaran,21.8,55.3
.talk 19481
.' Tell him you have _a book that may interest him_
.' Say _"Thank you!"_
.collect 1 Kirin Tor Familiar##44738
'|modeldisplay  14273
step
.learnpet Kirin Tor Familiar##32643 |use Kirin Tor Familiar##44738
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Landro's Lichling",[[
description This guide will walk you through obtaining
description the Undead pet: Landro's Lichling
condition end haspet(52343)
pet 302
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 30507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Landro's Lil' XT",[[
description This guide will walk you through obtaining
description the Mechanical pet: Landro's Lil' XT
condition end haspet(50468)
pet 285
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 32031
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Larva",[[
description This guide will walk you through obtaining
description the Beast pet: Larva
condition end haspet(62022)
pet 461
step
goto Ghostlands 29.4,47.0
.' The _Larva_ is level 3. Challenge one to a pet battle and capture it.
.learnpet Larva##62022
|modeldisplay 9906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lava Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Lava Beetle
condition end haspet(61386)
pet 429
step
goto Burning Steppes 66.3,44.8
.' The _Lava Beetles_ in this area are around level 15. Challenge one to a pet battle and capture it.
.learnpet Lava Beetle##61386
|modeldisplay 41981
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lava Crab",[[
description This guide will walk you through obtaining
description the Elemental pet: Lava Crab
condition end haspet(61383)
pet 423
step
goto Burning Steppes 27.2,58.2
.' The _Lava Crabs_ in this area are around level 15. Challenge one to a pet battle and capture it.
.learnpet Lava Crab##61383
|modeldisplay 28507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Leaping Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Leaping Hatchling
condition end haspet(35387)
pet 235
step
'Go to _Northern Barrens_ |goto Northern Barrens |noway |c
step
goto 62.8,20.2
.click Takk's Nest##7202
.collect 1 Leaping Hatchling##48118
'|modeldisplay 29802
step
.learnpet Leaping Hatchling##35387 |use Leaping Hatchling##48118
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Legs",[[
description This guide will walk you through obtaining
description the Magic pet: Legs
condition end haspet(53048)
pet 308
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Legs##69648 |tip Back to the Orphanage (Shattrath)
'|modeldisplay 38134
step
.learnpet Legs##53048 |use Legs##69648 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Leopard Scorpid",[[
description This guide will walk you through obtaining
description the Beast pet: Leopard Scorpid
condition end haspet(62896)
pet 545
step
goto Uldum 67.1,36.1
.' The _Leopard Scorpids_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Leopard Scorpid##62896
|modeldisplay 15469
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lifelike Toad",[[
description This guide will walk you through obtaining
description the Mechanical pet: Lifelike Toad
condition end haspet(12419)
pet 95
step
'_Skipping_ to the next _step_ |only if skill("Engineering")<1 and skill("Engineering")<265 |next
'This is a _very difficult_ _schematic_ to obtain, but it is _doable_ |only if skill("Engineering")>265
.' You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week |tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
.from Nefarian##11583 |only if skill("Engineering")>265
.collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
|use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
.' _Click here_ if you'd rather _buy_ it or have _someone else_ make it for you |confirm |only if skill("Engineering")>265
step
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Lifelike Mechanical Toad##15996 |next "bought"
.' Click here to _farm_ for this _pet_ |confirm
step
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Living Essence##12803
.collect 4 Thorium Widget##15994
.collect 1 Gold Power Core##10558
.collect 1 Rugged Leather##8170
step
'Have an _Engineer_ make this _pet_ for you |tip Ask in your guild or in trade chat |only if _G.IsSpellKnown(19793)==false
.create Lifelike Mechanical Toad##19793,Engineering,1 total |only if _G.IsSpellKnown(19793)==true
.collect 1 Lifelike Mechanical Toad##15996
'|modeldisplay 14936
step
label "bought"
.learnpet Lifelike Toad##12419 |use Lifelike Mechanical Toad##15996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' Deathwing",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Lil' Deathwing
condition end haspet(46896)
pet 268
step
'This pet is available only to people who bought the Collector's Edition of the Wrath of the Lich King expansion pack.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 35338
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' K.T.",[[
description This guide will walk you through obtaining
description the Undead pet: Lil' K.T.
condition end haspet(36979)
pet 249
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Lil' Phylactery##49693
|modeldisplay 30507
step
.learnpet Lil' K.T.##36979 |use Lil' Phylactery##49693
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' Ragnaros",[[
description This guide will walk you through obtaining
description the Elemental pet: Lil' Ragnaros
condition end haspet(51600)
pet 297
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Lil' Ragnaros##68385
|modeldisplay 37541
step
.learnpet Lil' Ragnaros##51600 |use Lil' Ragnaros##68385
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' Smoky",[[
description This guide will walk you through obtaining
description the Mechanical pet: Lil' Smoky
condition end haspet(9657)
pet 86
step
'Skipping to the next step |only if skill("Engineering")<205 |next
goto Gnomeregan,30.2,84.4 |only if skill("Engineering")>=205
.from Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+ |only if skill("Engineering")>=205
.collect 1 Schematic: Lil' Smoky##11827 |n |only if skill("Engineering")>=205
.learn Lil' Smoky##15633 |use Schematic: Lil' Smoky##11827 |only if skill("Engineering")>=205
.' Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Lil' Smoky##11826 |next "bought"
.' Click here to make this pet |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 1 Core of Earth##7075
.collect 2 Gyrochronatom##4389
.collect 1 Fused Wiring##7191
.collect 2 Mithril Bar##3860
.collect 1 Truesilver Bar##6037
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(15633)==false
.create Lil' Smoky##15633,Engineering,1 total |only if _G.IsSpellKnown(15633)==true
.collect 1 Lil' Smoky##11826
'|modeldisplay 24752
step
label bought
.learnpet Lil' Smoky##9657 |use Lil' Smoky##11826
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' XT",[[
description This guide will walk you through obtaining
description the Mechanical pet: Lil' XT
condition end haspet(40703)
pet 256
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Lil' XT##54847
|modeldisplay 32031
step
.learnpet Lil' XT##40703 |use Lil' XT##54847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Little Black Ram",[[
description This guide will walk you through obtaining
description the Beast pet: Little Black Ram
condition end haspet(61459)
pet 437
step
goto Loch Modan 58.1,68.3
.' The _Little Black Rams_ are level 3. Challenge one to a pet battle and capture it.
.learnpet Little Black Ram##61459
|modeldisplay 42068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Little Fawn",[[
description This guide will walk you through obtaining
description the Critter pet: Little Fawn
condition end haspet(32939)
pet 203
step
'Obtain _75 pets_ using our Pets and Mounts guide.
.' _Lil' Game Hunter_ |achieve 2516
step
'Check your _mailbox_ for your _prize_!
.collect 1 Little Fawn's Salt Lick##44841
'|modeldisplay 23786
step
.learnpet Little Fawn##32939 |use Little Fawn's Salt Lick##44841
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lizard Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Lizard Hatchling
condition end haspet(61321)
pet 408
step
goto Northern Stranglethorn 62.1,52.6
.' The _Lizard Hatchlings_ in this area are level 8. Challenge one to a pet battle and capture it.
.learnpet Lizard Hatchling##61321
|modeldisplay 36583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Locust",[[
description This guide will walk you through obtaining
description the Critter pet: Locust
condition end haspet(62893)
pet 543
step
goto Uldum 56.1,23.8
.' The _ Locusts_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Locust##62893
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Long-tailed Mole",[[
description This guide will walk you through obtaining
description the Critter pet: Long-tailed Mole
condition end haspet(61317)
pet 404
step
goto The Cape of Stranglethorn 40.0,67.5
.' The _Long-tailed Moles_ in this area are around level 9-10. Challenge one to a pet battle and capture it.
.learnpet Long-tailed Mole##61317
|modeldisplay 4959
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lost of Lordaeron",[[
description This guide will walk you through obtaining
description the Undead pet: Lost of Lordaeron
condition end haspet(61905)
pet 458
step
goto Tirisfal Glades 79.7,55.2
.' The _Lost of Lordaeron_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Lost of Lordaeron##61905
|modeldisplay 42304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lucky",[[
description This guide will walk you through obtaining
description the Critter pet: Lucky
condition end haspet(23198)
pet 155
step
'This pet is available only to people who attended the 2007 Blizzrd Worldwide Invitational Event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 21328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lucky",[[
description This guide will walk you through obtaining
description the Critter pet: Lucky
condition end haspet(23114)
pet 154
step
'This pet is available only to people who attended the 2007 Blizzrd Worldwide Invitational Event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 21328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lucky Quilen Cub",[[
description This guide will walk you through obtaining
description the Critter pet: Lucky Quilen Cub
condition end haspet(63832)
pet 671
step
'This pet is available only to people who bought the Collector's Edition of the Mists of Pandaria expansion pack.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 43255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lurky",[[
description This guide will walk you through obtaining
description the Humanoid pet: Lurky
condition end haspet(15358)
pet 111
step
'This pet is available only to people who bought the European Collector's Edition of the Burning Crusade expansion pack.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 15398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mac Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Mac Frog
condition end haspet(62892)
pet 542
step
goto Uldum 55.8,29.4
.' The _Mac Frogs_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Mac Frog##62892
|modeldisplay 6297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Macabre Marionette",[[
description This guide will walk you through obtaining
description the Undead pet: Macabre Marionette
condition end haspet(34770)
step
'HOW DO WE GET THIS PET!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Maggot",[[
description This guide will walk you through obtaining
description the Beast pet: Maggot
condition end haspet(61753)
pet 450
step
goto Howling Fjord 50.6,54.7
.' The _Maggots_ in this area are level 21. Challenge one to a pet battle and capture.
.learnpet Maggot##61753
|modeldisplay 9904
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mana Wyrmling",[[
description This guide will walk you through obtaining
description the Magic pet: Mana Wyrmling
condition end haspet(20408)
pet 136
step
'Go to Netherstorm |goto Netherstorm |noway |c
step
goto 43.4,35.2
.talk 20980
.buy 1 Mana Wyrmling##29363
'|modeldisplay 19600
step
.learnpet Mana Wyrmling##20408 |use Mana Wyrmling##29363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mechanical Chicken",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanical Chicken
condition end haspet(8376)
pet 83
step
title +Hunting down quests
.' Going to _Find OOX-17/TN!_ |only if not completedq(351) |next "find1"
.' Going to next step |next |only if completedq(351)
step
title +Hunting down quests
.' Going to _Find OOX-22/FE!_ |only if not completedq(25475) |next "find2"
.' Going to next step |next |only if completedq(25475)
step
title +Hunting down quests
.' Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
.' Going to the end |next "end" |only if completedq(485)
step
label find1
title + Find OOX-17/TN!
'Go to _Tanaris_ |goto Tanaris |noway |c
step
goto 33.6,47.8
.from Centipaar Swarmer##5457+,Centipaar Sandreaver##5460+,Centipaar Worker##5458+,Centipaar Tunneler##5459+,Centipaar Wasp##5455+
.collect 1 OOX-17/TN Distress Beacon##8623 |tip This also has a high chance of dropping off of scarabs and Trolls in Zul Farrak
step
|use OOX-17/TN Distress Beacon##8623
..accept 351
step
goto 59.8,64
.talk 7784
..turnin 351
..accept 648
step
'_Follow_ Homing Robot OOX-17/TN and _protect_ it
.' Escort OOX-17/TN to safety |q 648/1
step
title +Hunting down quests
.' Going to _Find OOX-22/FE!_ |only if not completedq(25475) |next "find2"
.' Going to next step |next |only if completedq(25475)
step
title +Hunting down quests
.' Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
.' Going to the end |next "end" |only if completedq(485)
step
label find2
title +Find OOX-22/FE!
'Go to Feralas |goto Feralas |noway |c
step
goto Feralas,55.3,56.4
.from Feral Scar Yeti##39896+
.collect 1 OOX-22/FE Distress Beacon##8705
step
|use OOX-22/FE Distress Beacon##8705
..accept 25475
step
goto Feralas,53.3,55.7
.talk 7807
..turnin 25475
..accept 25476
step
'_Follow_ Homing Robot OOX-22/FE and _protect_ it
.' Escort OOX-22/FE to safety |q 25476/1
step
title +Hunting down quests
.' Going to _Find OOX-09/HL!_ |only if not completedq(485) |next "find3"
.' Going to the _end_ |next "end" |only if completedq(485)
step
label find3
title +Find OOX-09/HL!
'Go to _The Hinterlands_ |goto The Hinterlands |noway |c
step
goto The Hinterlands,80.4,58.0
.from Saltwater Snapjaw##2505+ |tip This has a very low drop rate, you may be killing these for a while
.collect 1 OOX-09/HL Distress Beacon##8704
step
|use OOX-09/HL Distress Beacon##8704
..accept 485
step
goto 49.4,37.8
.talk 7806
..turnin 485
..accept 836
step
'_Follow_ Homing Robot OOX-09/HL and _protect_ it
.' Escort OOX-09/HL to safety |q 836/1
step
label end
title + Mechanical Chicken
'Go to _The Cape of Stranglethorn_ |goto The Cape of Stranglethorn |c
step
goto 43.0,72.0
.talk 648
..turnin 25476
..turnin 648
..turnin 836
step
goto 43.0,72.0
.talk 648
..turnin 3721
.collect 1 Mechanical Chicken##10398
'|modeldisplay 6909
step
.learnpet Mechanical Chicken##8376 |use Mechanical Chicken##10398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mechanical Pandaren Dragonling",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanical Pandaren Dragonling
condition end haspet(64899)
pet 844
step
'You can either create this battle pet, or purchase it from an Auction House. You must be a level _575 Engineer_ to create this pet.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mechanical Squirrel",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanical Squirrel
condition end haspet(2671)
pet 39
step
'To get this _recipe_ you can fish in _Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns_, or you can kill any mob in the world _under level 16_ |only if skill("Engineering")>=75
.collect 1 Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
|use Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
.' Click here if _you don't want to get the recipe_ yourself |confirm
|only if skill("Engineering")>=75
step
'You can either _buy_ this item from the _Auction House_ or _farm_ for it:
.buy 1 Mechanical Squirrel Box##4401 |next "bought"
.' Click here to _make_ the _Mechanical Squirrel_ |confirm
step
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Handful of Copper Bolts##4359
.collect 1 Copper Bar##2840
.collect 2 Malachite##774
step
'Have an _Engineer_ make this pet for you |tip Ask in your guild or in trade chat |only if _G.IsSpellKnown(3928)==false
.create Mechanical Squirrel Box##3928,Engineering,1 total |only if _G.IsSpellKnown(3928)==true
.collect 1 Mechanical Squirrel Box##4401
'|modeldisplay 26532
step
label bought
.learnpet Mechanical Squirrel##2671 |use Mechanical Squirrel Box##4401
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Minfernal",[[
description This guide will walk you through obtaining
description the Magic pet: Minfernal
condition end haspet(62317)
pet 500
step
goto Felwood 41.9,42.5
.' The _Minfernals_ are around level 14. Challenge one to a pet battle and capture it.
.learnpet Minfernal##62317
|modeldisplay 46003
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mini Diablo",[[
description This guide will walk you through obtaining
description the Magic pet: Mini Diablo
condition end haspet(11326)
pet 93
step
'These pets are available only to people who bought the Collector's Edition of World of Warcraft.
.' You may only choose one.
.' If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 10992
|modeldisplay 10993
|modeldisplay 10990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mini Thor",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mini Thor
condition end haspet(42078)
pet 258
step
'This pet is available only to people who bought the Collector's Edition of Starcraft 2.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 32670
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mini Tyrael",[[
description This guide will walk you through obtaining
description the Humanoid pet: Mini Tyrael
condition end haspet(29089)
pet 189
step
'This pet is available only to people who attended the Blizzard World Wide Invitational 2008 in France.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 25900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Miniwing",[[
description This guide will walk you through obtaining
description the Flying pet: Miniwing
condition end haspet(22445)
pet 149
step
'Go to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 52.6,21.0
.talk 22292
..turnin 10898
.collect Miniwing##31760
'|modeldisplay 20996
step
.learnpet Miniwing##22445 |use Miniwing##31760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Moccasin",[[
description This guide will walk you through obtaining
description the Beast pet: Moccasin
condition end haspet(61372)
pet 422
step
goto Swamp of Sorrows 54.3,52.1
.' The _Moccasins_ are level 14. Challenge one to a pet battle and capture it.
.learnpet Moccasin##61372
|modeldisplay 1986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mojo",[[
description This guide will walk you through obtaining
description the Aquatic pet: Mojo
condition end haspet(24480)
pet 165
step
'This _pet_ requires _several_ _Amani Hex Sticks_ and a bit of _good luck_
.' Go to _Heroic Zul'Aman_ using the _Dungeon Finder_ |goto Zul'Aman |noway |c |tip Or you can walk here, going through the Eastern Plaguelands portal to the Ghostlands
step
'Use your _Amani Hex Sticks_ on the _Forest Frogs_ down in the _water_ of _Zul'Aman_ |use Amani Hex Stick##33865
.collect 1 Mojo##33993
'|modeldisplay 23311
step
.learnpet Mojo##24480 |use Mojo##33993
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Molten Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Molten Hatchling
condition end haspet(61425)
pet 428
step
goto Searing Gorge 43.6,40.4
.' The _Molten Hatchlings_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
.learnpet Molten Hatchling##61425
|modeldisplay 42051
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mountain Skunk",[[
description This guide will walk you through obtaining
description the Critter pet: Mountain Skunk
condition end haspet(61677)
pet 633
step
goto Stonetalon Mountains 74.3,68.0
.' The _Mountain Skunks_ in this area are around level 6. Challenge one to a pet battle and capture it.
.learnpet Mountain Skunk##61677
|modeldisplay 16633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mr. Grubbs",[[
description This guide will walk you through obtaining
description the Critter pet: Mr. Grubbs
condition end haspet(50586)
pet 286
step
'Go to _Eastern Plaguelands_ |goto Eastern Plaguelands |noway |c
step
goto Eastern Plaguelands 9.0,66.3
.talk 45417
..turnin 27683
..accept 27367
..accept 27370
|only if not completedq(27372)
step
goto 4.1,36.0
.talk 45428
..turnin 27367
..accept 27368
|only if not completedq(27372)
step
goto 4.7,35.6 |n
.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
|only if not completedq(27372)
step
goto 5.1,33.4
.from Crypt Stalker##8555+, Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+ |tip All inside this tunnel.
.get 8 Crypt Bile |q 27368/1
|only if not completedq(27372)
step
goto 4.7,35.6 |n
.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
|only if not completedq(27372)
step
goto Eastern Plaguelands,4.1,36.0
.talk 45428
..turnin 27368
..accept 27369
|only if not completedq(27372)
step
goto 3.4,38.0
.click Banshee's Bell##9889+ |tip They are located right along the edge of the water
.get 10 Banshee's Bells |q 27369/1
|only if not completedq(27372)
step
goto 9.0,66.5
.talk 45417
..turnin 27369
|only if not completedq(27372)
step
goto 18.4,74.8
.talk 45429
..turnin 27370
..accept 27371
|only if not completedq(27372)
step
goto 18.6,76.9
.kill 5 Death's Step Miscreation##45444+ |q 27371/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27371
..accept 27372
|only if not completedq(27372)
step
goto 17.2,68.7
.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
.get 10 Plaguehound Blood |q 27372/1
.' You can find more Plague Hound Runts around [Eastern Plaguelands,14.4,63.0].
|only if not completedq(27372)
step
goto 9.0,66.5
.talk 45417
..turnin 27372
|only if not completedq(27372)
step
.talk 45400
..turnin 27555 |tip To see the dropped item for Mr. Grubbs you must have the buff "Fiona's Lucky Charm" on you. In order to receive this buff you must have Fiona's Caravan active. See the Full Caravan achievement section of this guide for more guidance.
step
goto Eastern Plaguelands,72.2,63.3
.from Carrion Grub##8603+
.collect 1 Hidden Stash##61387 |n
|use Hidden Stash##61387
.collect Mr. Grubbs##66076 |tip This has a small chance of dropping from this item, you may be farming for a while
'|modeldisplay 15554
step
.learnpet Mr. Grubbs##50586 |use Mr. Grubbs##66076
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Muckbreath",[[
description This guide will walk you through obtaining
description the Aquatic pet: Muckbreath
condition end haspet(24389)
pet 164
step
.' In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
.' Click here to continue. |confirm
step
label "daily"
goto Terokkar Forest,38.7,12.8
.talk 25580
.' This is 1 of 5 dailies Old Man Barlo can give you.
.accept 11665 |or |daily
step
.' Go West to Shattrath City |goto Shattrath City
only if havequest(11665)
step
goto Shattrath City,57.2,48.2
.' Click the Shattrath Portal to Stormwind |goto Stormwind City
only if havequest(11665)
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Stormwind City,49.0,87.4 |n
.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
only if havequest(11665)
step
goto Blasted Lands,55.0,53.9
.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
only if havequest(11665)
step
|fly Shattrath
only if havequest(11665)
step
.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
only if havequest(11665)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.turnin 11665 |or |daily
step
|use Bag of Fishing Treasures##35348
.collect 1 Chuck's Bucket##35350
.collect 1 Muckbreath's Bucket##33818
.collect 1 Snarly's Bucket##35349
.collect 1 Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
.' If you got one of the buckets above, click here. |next "use" |confirm
'|modeldisplay 22389
'|modeldisplay 23506
'|modeldisplay 23507
'|modeldisplay 22388
step
label "use"
.learnpet Chuck##26056 |use Chuck's Bucket##35350
.learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
.learnpet Snarly##26050 |use Snarly's Bucket##35349
.learnpet Toothy##24388 |use Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Murkablo",[[
description This guide will walk you through obtaining
description the Humanoid pet: Murkablo
condition end haspet(54438)
pet 329
step
'This pet is available only to people who attended the live stream of BlizzCon 2011.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 38803
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Murkimus the Gladiator",[[
description This guide will walk you through obtaining
description the Humanoid pet: Murkimus the Gladiator
condition end haspet(33578)
pet 217
step
'This pet was available only to those who participated in at least 200 matches in the 2009 Arena Tournament.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 28734
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Murky",[[
description This guide will walk you through obtaining
description the Humanoid pet: Murky
condition end haspet(15186)
pet 107
step
'This pet is available only to people who attended the live stream of BlizzCon 2005.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 15369
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nether Faerie Dragon",[[
description This guide will walk you through obtaining
description the Flying pet: Nether Faerie Dragon
condition end haspet(62395)
pet 557
step
goto Feralas 58.8,47.5
.' The _Nether Faerie Dragons_ are around level 11. Challenge one to a pet battle and capture it.
.learnpet Nether Faerie Dragon##62395
|modeldisplay 42467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nether Ray Fry",[[
description This guide will walk you through obtaining
description the Flying pet: Nether Ray Fry
condition end haspet(28470)
pet 186
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
.' Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
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
.' Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
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
'|modelnpc Skyguard Prisoner##23383
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
.' Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
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
.buy Nether Ray Fry##38628
|modeldisplay 25457
step
.learnpet Nether Ray Fry##28470 |use Nether Ray Fry##38628
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nether Roach",[[
description This guide will walk you through obtaining
description the Critter pet: Nether Roach
condition end haspet(62625)
pet 638
step
goto Netherstorm 64.9,41.9
.' The _Nether Roaches_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Nether Roach##62625
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Netherwhelp",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Netherwhelp
condition end haspet(18381)
pet 131
step
'This pet is available only to people who bought the Collector's Edition of the Burning Crusade expansion pack.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 17723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nightsaber Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Nightsaber Cub
condition end haspet(52344)
pet 303
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 37846
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nordrassil Wisp",[[
description This guide will walk you through obtaining
description the Magic pet: Nordrassil Wisp
condition end haspet(62888)
pet 547
step
goto Mount Hyjal 58.6,27.5
.' The _Nordrassil Wisps_ in this area are around level 22. Challenge one to a pet battle and capture it.
.learnpet Nordrassil Wisp##62888
|modeldisplay 45820
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nuts",[[
description This guide will walk you through obtaining
description the Critter pet: Nuts
condition end haspet(54227)
pet 323
step
'Obtain _100 pets_ using our Pets and Mounts guide.
.' _Petting Zoo_ |achieve  5876
step
'Check your _mailbox_ for your _prize_!
.collect Nut's Acorn##71140
'|modeldisplay 38693
step
.learnpet Nuts##54227 |use Nut's Acorn##71140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Oasis Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Oasis Moth
condition end haspet(62895)
pet 544
step
goto Uldum 57.9,24.0
.' The _Oasis Moths_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Oasis Moth##62895
|modeldisplay 36944
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Obsidian Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Obsidian Hatchling
condition end haspet(35399)
pet 236
step
'Go to _Dalaran_ |goto Dalaran |noway |c
step
goto Dalaran,58.6,39.6
.talk 28951
.buy 1 Obsidian Hatchling##48120
'|modeldisplay 29809
step
.learnpet Obsidian Hatchling##35399 |use Obsidian Hatchling##48120
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Oily Slimeling",[[
description This guide will walk you through obtaining
description the Elemental pet: Oily Slimeling
condition end haspet(62697)
pet 530
step
goto Borean Tundra 57.5,25.4
.' The _Oily Slimelings_ in this area are around level 20-21. Challenge one to a pet battle and capture it.
.learnpet Oily Slimeling##62697
|modeldisplay 42781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Onyx Panther",[[
description This guide will walk you through obtaining
description the Magic pet: Onyx Panther
condition end haspet(35468)
pet 240
step
'This pet is only available to players on the Korean servers during the 2007 Korea World Event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 29819
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Onyxian Whelpling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Onyxian Whelpling
condition end haspet(36607)
pet 243
step
'This pet was available only to those who attended the World of Warcraft 5th Anniversary Event.
|modeldisplay 30356
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Panda Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Panda Cub
condition end haspet(11325)
pet 92
step
'These pets are available only to people who bought the Collector's Edition of World of Warcraft.
.' You may only choose one.
.' If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 10992
|modeldisplay 10993
|modeldisplay 10990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pandaren Monk",[[
description This guide will walk you through obtaining
description the Humanoid pet: Pandaren Monk
condition end haspet(36911)
pet 248
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Pandaren Monk##49665
|modeldisplay 30414
step
.learnpet Pandaren Monk##69541 |use Pandaren Monk##49665
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pandaren Water Spirit",[[
description This guide will walk you through obtaining
description the Elemental pet: Pandaren Water Spirit
condition end haspet(66950)
step
'HOW DO WE GET THIS PET!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Parrot",[[
description This guide will walk you through obtaining
description the Flying pet: Parrot
condition end haspet(61313)
pet 403
step
goto Un'Goro Crater 73.0,69.3
.' The _Parrots_ in this area are around level 15. Challenge one to a pet battle and capture it.
.learnpet Parrot##61313
|modeldisplay 8816
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Peanut",[[
description This guide will walk you through obtaining
description the Critter pet: Peanut
condition end haspet(23266)
pet 159
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Elekk Training Collar##32622 |tip Back to the Orphanage (Shattrath)
'|modeldisplay 23437
step
.learnpet Peanut##23266 |use Elekk Training Collar##32622 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Peddlefeet",[[
description This guide will walk you through obtaining
description the Humanoid pet: Peddlefeet
condition end haspet(16085)
pet 122
step
'This _pet_ is sold by _Lovely Merchants_ during the _Love is in the Air_ Holiday |tip The merchants are in the captial cities
.collect 40 Love Token##49927
step
.talk 37674
.buy 1 Truesilver Shafted Arrow##22235
'|modeldisplay 15992
step
.learnpet Peddlefeet##16085 |use Truesilver Shafted Arrow##22235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pengu",[[
description This guide will walk you through obtaining
description the Aquatic pet: Pengu
condition end haspet(32595)
pet 198
step
#include dailies_rep_mount,rep="The Kalu'ak"
step
'Go to _Dragonblight_ |goto Dragonblight |noway |c
step
goto 48.6,75.6
.talk 32763
.buy 1 Nurtured Penguin Egg##44723
'|modeldisplay 27433
step
.learnpet Pengu##32595 |use Nurtured Penguin Egg##44723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Perky Pug",[[
description This guide will walk you through obtaining
description the Critter pet: Perky Pug
condition end haspet(37865)
pet 250
step
'Use the _dungeon finder_ to take you to _complete random heroic dungeons_
.' Use the _Dungeon Finder_ to group with _100 random players total_ |achieve 4478
step
'Check your _mailbox_ for your _prize_!
.collect 1 Perky Pug##49912
'|modeldisplay 37651
step
.learnpet Perky Pug##37865 |use Perky Pug##49912
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Personal World Destroyer",[[
description This guide will walk you through obtaining
description the Mechanical pet: Personal World Destroyer
condition end haspet(43800)
pet 261
step
'Skipping to the next step |next |only if skill("Engineering")<475 |next
goto Tanaris,52.2,28.2 |only if skill("Engineering")>=475
.talk 8126 |only if skill("Engineering")>=475
.learn Personal World Destroyer##84412 |only if skill("Engineering")>=475
.' Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=475
step
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Personal World Destroyer##59597 |next "bought"
.' Click here to make this pet |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 10 Obsidium Bar##54849
.collect 8 Handful of Obsidium Bolts##60224
.collect 8 Electrified Ether##67749
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(84412)==false
.create Personal World Destroyer##84412,Engineering,1 total |only if _G.IsSpellKnown(84412)==true
.collect 1 Personal World Destroyer##59597
'|modeldisplay 33512
step
label bought
.learnpet Personal World Destroyer##43800 |use Personal World Destroyer##59597
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pet Bombling",[[
description This guide will walk you through obtaining
description the Mechanical pet: Pet Bombling
condition end haspet(9656)
pet 85
step
'Skipping to next step |only if skill("Engineering")<205 |next
goto Gnomeregan,31.2,31.0 |only if skill("Engineering")>=205
.' Kill Mekgineer Thermaplugg |only if skill("Engineering")>=205
.collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
.learn Pet Bombling##15628 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
.' Click here if you do not want to get this schematic |confirm |only if skill("Engineering")>=205
step
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Pet Bombling##11825 |next "bought"
.' Click here to make this pet |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 1 Big Iron Bomb##4394
.collect 1 Heart of Fire##7077
.collect 1 Fused Wiring##7191
.collect 6 Mithril Bar##3860
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(15628)==false
.create Pet Bombling##15628,Engineering,1 total |only if _G.IsSpellKnown(15628)==true
.collect 1 Pet Bombling##11825
'|modeldisplay 19139
step
.learnpet Pet Bombling##9656 |use Pet Bombling##11825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Phoenix Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Phoenix Hatchling
condition end haspet(26119)
pet 175
step
'Use the _Dungeon Finder_ to queue for the Magisters' Terrace dungeon, or go there directly.
.' Click here to continue |confirm
step
goto Magisters' Terrace,8.6,50.6
.from Kael'thas Sunstrider##24664
.collect Phoenix Hatchling##35504
|modeldisplay 23574
step
.learnpet Phoenix Hatchling##46599 |use Phoenix Hatchling##35504
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Poley",[[
description This guide will walk you through obtaining
description the Beast pet: Poley
condition end haspet(16456)
pet 124
step
'This pet was only available to those in China during the iCoke event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 16189
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Porcupette",[[
description This guide will walk you through obtaining
description the Critter pet: Porcupette
condition end haspet(61086)
pet 381
step
'This pet is obtained in a _Sack of Pet Supplies_ that you recieve from completing Pet Tamer Battles.
|confirm
step
.collect 1 Porcupette##89587
.learnpet Porcupette##61086 |use Porcupette##89587
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Proto-Drake Whelp",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Proto-Drake Whelp
condition end haspet(32592)
pet 196
step
'This _pet_ requires you to have access to the _Oracle Dailies_ in _Sholazar Basin_, or you can _buy_ it from the _Auction House_
goto Sholazar Basin,54.6,56.2
.talk 31910
.buy 1 Mysterious Egg##39878
step
.' In order to get a Cobra Hatchling, you will need to be at least _Revered_ with The Oracles.
.' If you have done the Pre-quest, click here to go to the daily quests. |next "daily" |confirm
.' If you need to do the Pre-Quests in order to unlock the daily quests, click here. |next "prequest" |confirm
.' If you are already _Revered_, click here. |next "egg" |confirm
step
label "prequest"
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
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
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
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
.' Travel to Mistwhisper Refuge |q 12536/1
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
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
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
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
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
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
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
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
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
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to 72.2,57.3
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582 |daily
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
.' At this point, you will need to dailies to get to revered.
.' Click here to continue. |confirm
step
label "daily"
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
.talk 28667
..accept 12689 |daily |instant
..accept 12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
goto 54.6,56.4
.talk 28027
..turnin 12695 |only if not ZGV.completedQuests[12695]
..accept 12704 |daily
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |daily |or
..accept 12737 |daily |or
..accept 12736 |daily |or
..accept 12726 |daily |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |daily |or
..accept 12762 |daily |or
..accept 12705 |daily |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
.' Click here to reset the daily quests. |next "daily" |confirm
.' Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
goto Sholazar Basin,54.6,56.2
.talk 31910
.buy 1 Mysterious Egg##39878
step
'You will have to wait _3 days (real time)_ for this to hatch. |tip The drop rate for this pet is random. If you don't get it the first time, you have to buy another eggs and wait 3 more days to try again
|use Cracked Egg##39883
.collect 1 Proto-Drake Whelp##44721
'|modeldisplay  24101
step
.learnpet Proto-Drake Whelp##32592 |use Proto-Drake Whelp##44721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Purple Puffer",[[
description This guide will walk you through obtaining
description the Aquatic pet: Purple Puffer
condition end haspet(54383)
pet 328
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 38777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Qiraji Guardling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Qiraji Guardling
condition end haspet(62526)
pet 513
step
'You can only get this pet during summer.
|confirm
step
goto Silithus 46.3,33.9
.' The Qiraji Guardlings are around level 16. Challenge one to a pet battle and capture it.
.learnpet Qiraji Guardling##62526
|modeldisplay 42523
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rabbot",[[
description This guide will walk you through obtaining
description the Mechanical pet: Rabbot
condition end haspet(62434)
pet 510
step
goto Winterspring 60.2,50.6
.' The _Rabbots_ are level 17. Challenge one to a pet battle and capture it.
.learnpet Rabbot##62434
|modeldisplay 33559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rabid Nut Varmint 5000",[[
description This guide will walk you through obtaining
description the Mechanical pet: Rabid Nut Varmint 5000
condition end haspet(62120)
pet 472
step
goto Stonetalon Mountains 68.5,58.0
.' The _Rabid Nut Varmint 5000s_ in this area are around level 5. Challenge one to a pet battle and capture it.
.learnpet Rabid Nut Varmint 5000##62120
|modeldisplay 26532
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Rat
condition end haspet(61366)
pet 417
step
goto Desolace 51.1,58.1
.' The _Rats_ in this area are level 7-8. Challenge one to a pet battle and capture it.
.learnpet Rat##61366
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rattlesnake",[[
description This guide will walk you through obtaining
description the Beast pet: Rattlesnake
condition end haspet(61439)
pet 431
step
goto Badlands 72.5,43.9
.' The _Rattlesnakes_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Rattlesnake##61439
|modeldisplay 35804
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ravager Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Ravager Hatchling
condition end haspet(62051)
pet 465
step
goto Bloodmyst Isle 65.1,52.7
.' The _Ravager Hatchlings_ in this area are level 3-5. Challenge one to a pet battle and capture it.
.learnpet Ravager Hatchling##62051
|modeldisplay 42344
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ravasaur Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Ravasaur Hatchling
condition end haspet(35397)
pet 237
step
'Go to _Un'Goro Crater_ |goto Un'Goro Crater |noway |c
step
goto 68.9,61.2
.click Ravasaur Matriarch's Nest##7202
.collect 1 Ravasaur Hatchling##48122
.' They can also be found at
.' [68.9,66.9]
.' [62.0,73.6]
.' [62.2,65.3]
.' [63.0,63.2]
'|modeldisplay 29804
step
.learnpet Ravasaur Hatchling##35397 |use Ravasaur Hatchling##48122
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Razormaw Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Razormaw Hatchling
condition end haspet(35398)
pet 238
step
'Go to _Wetlands_ |goto Wetlands |noway |c
step
goto 69.9,29.1
.click Ravasaur Matriarch's Nest##7202
.collect 1 Razormaw Hatchling##48124
'|modeldisplay 29808
step
.learnpet Razormaw Hatchling##35398 |use Razormaw Hatchling##48124
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Razzashi Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Razzashi Hatchling
condition end haspet(35394)
pet 239
step
'Go to _Northern Stranglethorn_ |goto Northern Stranglethorn |noway |c
step
'Kill _any_ and _all_ mobs here to farm for your _Razzashi Hatchling_
.collect 1 Razzashi Hatchling##48126
'|modeldisplay 29806
step
.learnpet Razzashi Hatchling##35394 |use Razzashi Hatchling##48126
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Red Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Red Moth
condition end haspet(21009)
pet 139
step
'Go to Netherstorm |goto Netherstorm |noway |c
step
goto 43.4,35.2
.talk 20980
.buy 1 Red Moth Egg##29902
'|modeldisplay 19986
step
.learnpet Red Moth##21009 |use Red Moth Egg##29902
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Red-Tailed Chipmunk",[[
description This guide will walk you through obtaining
description the Critter pet: Red-Tailed Chipmunk
condition end haspet(61757)
pet 452
step
goto Hillsbrad Foothills 56.3,65.7
.' The _Red-Tailed Chipmunk_ is level 6. Challenge one to a pet battle and capture it.
.learnpet Red-Tailed Chipmunk##61757
|modeldisplay 36620
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Restless Shadeling",[[
description This guide will walk you through obtaining
description the Undead pet: Restless Shadeling
condition end haspet(61375)
pet 439
step
'You can only obtain this pet when it is _Early Morning_ in game.
|confirm
step
goto Deadwind Pass 54.1,78.0
.' The _Restless Shadelings_ are around level 15. Challenge one to a pet battle and capture it.
.learnpet Restless Shadeling##61375
|modeldisplay 41976
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Robo-Chick",[[
description This guide will walk you through obtaining
description the Mechanical pet: Robo-Chick
condition end haspet(62119)
pet 471
step
goto Winterspring 68.6,53.8
.' The Robo-Chicks in this area are level 17. Challenge one to a pet battle and capture it.
.learnpet Robo-Chick##62119
|modeldisplay 7920
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rock Viper",[[
description This guide will walk you through obtaining
description the Beast pet: Rock Viper
condition end haspet(62184)
pet 482
step
goto Mount Hyjal 78.1,59.8
.' The _Rock Vipers_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Rock Viper##62184
|modeldisplay 4268
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rocket Chicken",[[
description This guide will walk you through obtaining
description the Mechanical pet: Rocket Chicken
condition end haspet(25109)
pet 168
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 22903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ruby Sapling",[[
description This guide will walk you through obtaining
description the Elemental pet: Ruby Sapling
condition end haspet(62020)
pet 460
step
goto Eversong Woods 52.2,58.1
.' The _Ruby Saplings_ are level 1. Challenge one to a pet battle and capture it.
.learnpet Ruby Sapling##62020
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rusty Snail",[[
description This guide will walk you through obtaining
description the Critter pet: Rusty Snail
condition end haspet(62313)
pet 496
step
goto Ashenvale 14.8,25.8
.' The _Rusty Snails_ are level 4. Challenge one to a pet battle and capture it.
.learnpet Rusty Snail##62313
|modeldisplay 42409
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sand Kitten",[[
description This guide will walk you through obtaining
description the Beast pet: Sand Kitten
condition end haspet(62257)
pet 491
step
goto Tanaris 33.1,71.0
.' The _Sand Kittens_ are level 13. Challenge one to a pet battle and capture it.
.learnpet Sand Kitten##62257
|modeldisplay 5586
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sand Scarab",[[
description This guide will walk you through obtaining
description the Critter pet: Sand Scarab
condition end haspet(54745)
pet 665
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 39694
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Scalded Basilisk Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Scalded Basilisk Hatchling
condition end haspet(62628)
pet 528
step
goto Blade's Edge Mountains 75.8,20.1
.' The _Scalded Basilisk Hatchlings_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Scalded Basilisk Hatchling##62628
|modeldisplay 42580
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Scarab Hatchling",[[
description This guide will walk you through obtaining
description the Critter pet: Scarab Hatchling
condition end haspet(62524)
pet 512
step
goto Ahn'Qiraj: The Fallen Kingdom 58.2,16.6
.' The _Scarab Hatchlings_ are around level 16. Challenge one to a pet battle and capture it.
.learnpet Scarab Hatchling##62524
|modeldisplay 35113
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Scorpid",[[
description This guide will walk you through obtaining
description the Beast pet: Scorpid
condition end haspet(61326)
pet 414
step
goto Thousand Needles 79.0,94.3
.' The _Scorpids_ in this area are around level 13. Challenge one to a pet battle and capture it.
.learnpet Scorpid##61326
|modeldisplay 15469
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Scorpling",[[
description This guide will walk you through obtaining
description the Beast pet: Scorpling
condition end haspet(61329)
pet 416
step
goto Blasted Lands 58.8,59.7
.' The _Scorplings_ are around level 16. Challenge one to a pet battle and capture it.
.learnpet Scorpling##61329
|modeldisplay 41960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Scourged Whelpling",[[
description This guide will walk you through obtaining
description the Undead pet: Scourged Whelpling
condition end haspet(62854)
pet 538
step
goto Icecrown 74.2,42.6
.' The _Scourged Whelplings_ in this area are level 22. Challenge one to a pet battle and capture it.
.learnpet Scourged Whelpling##62854
|modeldisplay 42737
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sea Gull",[[
description This guide will walk you through obtaining
description the Flying pet: Sea Gull
condition end haspet(62953)
pet 560
step
goto Tanaris 57.1,33.9
.' The _Sea Gulls_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Sea Gull##62953
|modeldisplay 34160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Searing Scorchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Searing Scorchling
condition end haspet(25706)
pet 172
step
'This _pet_ requires you to have done the _Firelands Pre-quests_ and dailies to enter the _Molten Front_
.' Go to the _Molten Front_ |goto Molten Front |noway |c
.earn 30 Mark of the World Tree##416
step
goto Molten Front 47.0,90.8
.talk 52822
.buy 1 Zen'Vorka's Cache##71631
step
|use Zen'Vorka's Cache##71631
.collect 1 Scorched Stone##34955 |tip If you don't get this the first time you will have to earn 30 more Marks of the World Tree to try again
'|modeldisplay  33427
step
.learnpet Searing Scorchling##25706 |use Scorched Stone##34955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Senegal",[[
description This guide will walk you through obtaining
description the Flying pet: Senegal
condition end haspet(7389)
pet 51
step
'Go to _The Cape of Stranglethorn_ |goto The Cape of Stranglethorn |noway |c
step
goto 42.6,69.2
.talk 2663
.buy 1 Parrot Cage (Senegal)##8495
'|modeldisplay 6191
step
.learnpet Senegal##7389 |use Parrot Cage (Senegal)##8495
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Shimmershell Snail",[[
description This guide will walk you through obtaining
description the Critter pet: Shimmershell Snail
condition end haspet(62246)
pet 493
step
goto Darkshore 56.5,16.7
.' The _Shimmershell Snails_ are around level 5. Challenge one to a pet battle and capture it.
.learnpet Shimmershell Snail##62246
|modeldisplay 42407
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Shore Crab",[[
description This guide will walk you through obtaining
description the Aquatic pet: Shore Crab
condition end haspet(61158)
pet 388
step
goto Azshara 47.3,87.3
.' The _Shore Crabs_ in the area are around level 3. Challenge one to a pet battle and capture it.
.learnpet Shore Crab##61158
|modeldisplay 41581
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Siamese Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Siamese Cat
condition end haspet(7380)
pet 44
step
'Go to _Netherstorm_ |goto Netherstorm |noway |c
step
goto Netherstorm,43.4,35.2
.talk 20980
.buy 1 Cat Carrier (Siamese)##8490
'|modeldisplay 5585
step
.learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sidewinder",[[
description This guide will walk you through obtaining
description the Beast pet: Sidewinder
condition end haspet(62523)
pet 511
step
goto Silithus 66.9,64.4
.' The _Sidewinders_ in this area are around level 16. Challenge one to a pet battle and capture it.
.learnpet Sidewinder##62523
|modeldisplay 35804
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Silithid Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Silithid Hatchling
condition end haspet(62258)
pet 494
step
'This pet can only be obtained in _Tanaris_ during a _Sandstorm_.
|confirm
step
goto Tanaris 54.8,64.8
.' The _Silithid Hatchlings_ are level 13. Challenge one to a pet battle and capture it.
.learnpet Silithid Hatchling##62258
|modeldisplay 42416
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Silky Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Silky Moth
condition end haspet(62373)
pet 503
step
goto Un'Goro Crater 51.8,72.5
.' The _Silky Moths_ in this are are around level 15. Challenge one to a pet battle and capture it.
.learnpet Silky Moth##62373
|modeldisplay 36952
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Silver Pig",[[
description This guide will walk you through obtaining
description the Critter pet: Silver Pig
condition end haspet(25147)
pet 171
step
'This pet was given to players on China's servers during the 2007 New Year's event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 21304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Singing Cricket",[[
description This guide will walk you through obtaining
description the Critter pet: Singing Cricket
condition end haspet(64232)
pet 820
step
'This pet is rewarded for the Achievement: _Pro Pet Mob_.
|confirm
step
'Raise 75 pets to level 25 |achieve 6582
step
'Check your in-game mail for your reward!
.collect 1 Singing Cricket Cage##88147
.learnpet Singing Cricket##64232 |use Singing Cricket Cage##88147
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Singing Sunflower",[[
description This guide will walk you through obtaining
description the Elemental pet: Singing Sunflower
condition end haspet(51090)
pet 291
step
'Go to Hillsbrad Foothills |noway |c |goto Hillsbrad Foothills
step
goto 33.6,49.2
.talk 49687
..accept 28733
step
'Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_ |tip Right click on the orbs that fall onto the field
.' When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
.' _Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
.' Massive Wave Survived |q 28733/1
step
goto 33.6,49.2
.talk 49687
..turnin 28733
step
goto 33.6,49.2
.talk 49687
..accept 28617
step
'Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_ |tip Right click on the orbs that fall onto the field
.' When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
.' _Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
.'_ Massive Wave Survived_ |q 28617/1
step
goto 33.6,49.2
.talk 49687
..turnin 28617
step
goto 33.6,49.2
.talk 49687
..accept 28744
step
'Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_ |tip Right click on the orbs that fall onto the field
.' When you _gather_ enough _energy_, you can place a _plant_ on the _field_ to help your _fight against the undead_
.' _Sunflowers_ are used to _gather more sunlight_ that can be collected, _spitters_ are your _primary offense_ in starting out
|tip Plant at least 3 Sunflowers before any offense. The initial undead are very slow and can be killed easily. It's best to plant as many sunflowers as you can in this beginning time in order to have enough for the waves later. If you fail, you can always try again!
.' _Massive Wave Survived_ (1)|q 28744/1
.' _Massive Wave Survived_ (2) |q 28744/2
step
goto 33.6,49.2
.talk 49687
..turnin 28744
step
goto 33.6,49.2
.talk 49687
..accept 28747
step
'Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_ |tip Right click on the orbs that fall onto the field
.' Create _3 Sunflowers_ in the _back rows_ of your _field_. By then you should be dealing with about _3 undead_. Build _a few Rocknuts_ to hold them off
.' Next, you'll want to plant _Spitters_ to kill those _undead_, once you have enough _solar power_
.' Start planting more _Sunflowers_, the _key_ to _winning_ is making_ two full rows of Sunflowers_
.' _Balance_ making those with a _full row of Spitters_ and a _full row of Freezyas_. You should also place a _full row of Rocknuts_ for extra _protection_
.' Then try and _stockpile_ solar power for _Pumpkin Bombs_ and _Strangler Vines_
.' _Massive Wave Survived_ (1) |q 28747/1
.' _Massive Wave Survived_ (2) |q 28747/2
step
goto 33.6,49.2
.talk 49687
..turnin 28747
step
goto 33.6,49.2
.talk 49687
..accept 28748
step
'Gather _sun light_ (the little orbs that fall) to _increase_ your _energy_ |tip Right click on the orbs that fall onto the field
.' Create _3 Sunflowers_ in the _back rows_ of your _field_. By then you should be dealing with about _3 undead_. Build _a few Rocknuts_ to hold them off
.' Next, you'll want to plant _Spitters_ to kill those _undead_, once you have enough _solar power_
.' Start planting more _Sunflowers_, the _key_ to _winning_ is making_ two full rows of Sunflowers_
.' _Balance_ making those with a _full row of Spitters_ and a _full row of Freezyas_. You should also place a _full row of Rocknuts_ for extra _protection_
.' Then try and _stockpile_ solar power for _Pumpkin Bombs_ and _Strangler Vines_
.' _Warden Stillwater Defeated_ |q 28748/1
step
goto 33.6,49.2
.talk 49687
..turnin 28748
.collect 1 Brazie's Sunflower Seeds##66067
'|modeldisplay 37157
step
.learnpet Singing Sunflower##51090 |use Brazie's Sunflower Seeds##66067
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sinister Squashling",[[
description This guide will walk you through obtaining
description the Elemental pet: Sinister Squashling
condition end haspet(23909)
pet 162
step
'This requires the _Hallow's End_ Holiday
.' Use the _Dungeon Finder_ to go to the _World Event Dungeon - Headless Horsemen_ |goto Scarlet Monastery |noway |c
step
.from Headless Horseman##23682
.collect 1 Loot-Filled Pumpkin |tip This will appear in your bags once you kill the Headless Horsemen and can only be won once a day
|use Loot-Filled Pumpkin##54516
.collect 1 Sinister Squashling##33154
'|modeldisplay 36494
step
.learnpet Sinister Squashling##23909 |use Sinister Squashling##33154
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Skittering Cavern Crawler",[[
description This guide will walk you through obtaining
description the Beast pet: Skittering Cavern Crawler
condition end haspet(62638)
pet 637
step
goto Blade's Edge Mountains 35.1,85.3
.' The _Skittering Cavern Crawlers_ are around level 18. Challenge one to a pet battle and capture it.
.learnpet Skittering Cavern Crawler##62638
|modeldisplay 20923
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snarly",[[
description This guide will walk you through obtaining
description the Aquatic pet: Snarly
condition end haspet(26050)
pet 173
step
.' In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
.' Click here to continue. |confirm
step
label "daily"
goto Terokkar Forest,38.7,12.8
.talk 25580
.' This is 1 of 5 dailies Old Man Barlo can give you.
.accept 11665 |or |daily
step
.' Go West to Shattrath City |goto Shattrath City
only if havequest(11665)
step
goto Shattrath City,57.2,48.2
.' Click the Shattrath Portal to Stormwind |goto Stormwind City
only if havequest(11665)
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Stormwind City,49.0,87.4 |n
.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
only if havequest(11665)
step
goto Blasted Lands,55.0,53.9
.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
only if havequest(11665)
step
|fly Shattrath
only if havequest(11665)
step
.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
only if havequest(11665)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.turnin 11665 |or |daily
step
|use Bag of Fishing Treasures##35348
.collect 1 Chuck's Bucket##35350
.collect 1 Muckbreath's Bucket##33818
.collect 1 Snarly's Bucket##35349
.collect 1 Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
.' If you got one of the buckets above, click here. |next "use" |confirm
'|modeldisplay 22389
'|modeldisplay 23506
'|modeldisplay 23507
'|modeldisplay 22388
step
label "use"
.learnpet Chuck##26056 |use Chuck's Bucket##35350
.learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
.learnpet Snarly##26050 |use Snarly's Bucket##35349
.learnpet Toothy##24388 |use Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snow Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Snow Cub
condition end haspet(61689)
pet 440
step
goto Dun Morogh 51.1,44.6
.' The _Snow Cubs_ are level 1. Challenge one to a pet battle and capture it.
.learnpet Snow Cub##61689
|modeldisplay 42203
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snowshoe Hare",[[
description This guide will walk you through obtaining
description the Critter pet: Snowshoe Hare
condition end haspet(61755)
pet 640
step
goto Hillsbrad Foothills 46.8,20.3
.' The _Snowshoe Hares_ are around level 6. Challenge one to a pet battle and capture it.
.learnpet Snowshoe Hare##61755
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snowy Owl",[[
description This guide will walk you through obtaining
description the Flying pet: Snowy Owl
condition end haspet(7554)
pet 69
step
goto Winterspring
.' The _Snowy Owls_ in this area are around level 13. Challenege one to a pet battle and capture it.
.learnpet Snowy Owl##7554
|modeldisplay 6298
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Soul of the Aspects",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Soul of the Aspects
condition end haspet(58163)
pet 347
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Soul of the Aspects##78916
|modeldisplay 40019
step
.learnpet Soul of the Aspects##58163 |use Soul of the Aspects##78916
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spawn of Onyxia",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Spawn of Onyxia
condition end haspet(62201)
pet 489
step
goto Dustwallow Marsh 52.2,75.9
.' The _Spawn of Onyxia_ are around level 12. Challenge one to a pet battle and capture it. |tip They are a rare spawn, so you may have to wait around a while for one.
.learnpet Spawn of Onyxia##62201
|modeldisplay 42745
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spectral Tiger Cub",[[
description This guide will walk you through obtaining
description the Magic pet: Spectral Tiger Cub
condition end haspet(36511)
pet 242
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 30409
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Speedy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Speedy
condition end haspet(16547)
pet 125
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
'|modeldisplay 37810
step
.learnpet Speedy##16547 |use Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spider",[[
description This guide will walk you through obtaining
description the Beast pet: Spider
condition end haspet(61327)
pet 412
step
goto Hillsbrad Foothills 33.9,72.3 |n
.' Enter the cave here. |goto Hillsbrad Foothills 33.9,72.3 |noway |c
step
goto Hillsbrad Foothills 34.2,71.0
.' The _Spiders_ in this area are level 6. Challenge one to a pet battle and capture it.
.learnpet Spider##61327
|modeldisplay 2536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spiky Lizard",[[
description This guide will walk you through obtaining
description the Beast pet: Spiky Lizard
condition end haspet(61441)
pet 433
step
goto Silithus 39.8,38.9
.' The _Spiky Lizards_ are around level 16. Challenge one to a pet battle and capture it.
.learnpet Spiky Lizard##61441
|modeldisplay 36585
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spiny Lizard",[[
description This guide will walk you through obtaining
description the Beast pet: Spiny Lizard
condition end haspet(62114)
pet 466
step
goto Durotar 45.8,20.5
.' The _Spiny Lizards_ in this area are level 1-2. Challenge one to a pet battle and capture it.
.learnpet Spiny Lizard##62114
|modeldisplay 36583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spirit Crab",[[
description This guide will walk you through obtaining
description the Undead pet: Spirit Crab
condition end haspet(62034)
pet 463
step
goto Ghostlands 13.7,33.2
.' The _Spirit Crabs_ are level 3. Challenge one to a pet battle and capture it.
.learnpet Spirit Crab##62034
|modeldisplay 42342
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spirit of Competition",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Spirit of Competition
condition end haspet(27217)
pet 179
step
'This pet is available only to people who participated in the Beijing 2008 Summer Olympics event in World of Warcraft.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 24393
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spirit of Summer",[[
description This guide will walk you through obtaining
description the Elemental pet: Spirit of Summer
condition end haspet(16701)
pet 128
step
'This _pet_ is _only availiable_ during the _ Midsummer Fire Festival_ Holiday
.collect 350 Burning Embers##23247
step
'Go to any Midsummer Merchant in your capital cities
.talk 26124
.buy 1 Captured Flame##23083
'|modeldisplay 20608
step
.learnpet Spirit of Summer##16701 |use Captured Flame##23083
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sporeling Sprout",[[
description This guide will walk you through obtaining
description the Humanoid pet: Sporeling Sprout
condition end haspet(62564)
pet 515
step
goto Zangarmarsh 15.9,61.1
.' The _Sporeling Sprouts_ are around level 18. Challenge one to a pet battle and capture it.
.learnpet Sporeling Sprout##62564
|modeldisplay 42554
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spotted Bell Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Spotted Bell Frog
condition end haspet(62370)
pet 502
step
goto Un'Goro Crater 66.4,64.6
.' The _Spotted Bell Frogs_ in this area are around level _15_. Challenge one to a pet battle and capture it.
.learnpet Spotted Bell Frog##62370
|modeldisplay 6297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spring Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Spring Rabbit
condition end haspet(32791)
pet 200
step
'This _pet_ is sold by _Noble Garden Merchants_ during the _Noblegarden_ Holiday |tip The merchants are in the Durotar, Eversong Woods, Mulgore, and Tirisfal Glades
.collect 100 Noblegarden Chocolate##44791
step
'Go to any Noblegarden Merchant
.talk 32837
.buy 1 Spring Rabbit's Foot##44794
'|modeldisplay 28998
step
.learnpet Spring Rabbit##32791 |use Spring Rabbit's Foot##44794
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sprite Darter Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Sprite Darter Hatchling
condition end haspet(9662)
pet 87
step
'Go to Feralas |goto Feralas |noway |c
step
goto 71.6,43.6
.from Sprite Darter##5278
.collect 1 Sprite Darter Egg##11474 |tip This has a .05% drop rate, you may be farming here for a while
'|modeldisplay 15404
step
.learnpet Sprite Darter Hatchling##9662 |use Sprite Darter Egg##11474
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stinkbug",[[
description This guide will walk you through obtaining
description the Critter pet: Stinkbug
condition end haspet(62256)
pet 492
step
goto Tanaris 40.0,27.2
.' The _Stinkbugs_ are level 13. Challenge one to a pet battle and capture it.
.learnpet Stinkbug##62256
|modeldisplay 7511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stinker",[[
description This guide will walk you through obtaining
description the Critter pet: Stinker
condition end haspet(23274)
pet 160
step
'Obtain _50 pets_ using our Pets and Mounts guide.
.' Use this Pets and Mounts guide to find 50 pets.
.' Shop Smart, Shop Pet...Smart |achieve 1250
step
'Check your _mailbox_ for your _prize_!
.collect Reeking Pet Carrier##40653
'|modeldisplay 26301
step
.learnpet Stinker##23274 |use Reeking Pet Carrier##40653
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stone Armadillo",[[
description This guide will walk you through obtaining
description the Critter pet: Stone Armadillo
condition end haspet(62187)
pet 485
step
'You can only obtain this pet at night.
|confirm
step
goto Desolace 57.1,15.3
.' The _Stone Armadillos_ are level 7. Challenge one to a pet battle and capture it.
.learnpet Stone Armadillo##62187
|modeldisplay 42381
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stormwind Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Stormwind Rat
condition end haspet(62954)
pet 675
step
goto Stormwind City 66.6,73.8
.' The _Stormwind Rat_ is level 2. Challenge one to a pet battle and capture it.
.learnpet Stormwind Rat##62954
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stowaway Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Stowaway Rat
condition end haspet(62921)
pet 553
step
goto Deepholm 47.6,52.9
.' This pet will normally join the battle with a _Topaz Shale Hatchling_
.' Challenge and capture the pet when it is at less than 35% health.
.learnpet Stowaway Rat##62921
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Strand Crab",[[
description This guide will walk you through obtaining
description the Aquatic pet: Strand Crab
condition end haspet(61312)
pet 401
step
goto Northern Stranglethorn 34.8,48.0
.' The _Strand Crabs_ are around level 7. Challenge one to a pet battle and capture it.
.learnpet Strand Crab##61312
|modeldisplay 32789
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stripe-Tailed Scorpid",[[
description This guide will walk you through obtaining
description the Beast pet: Stripe-Tailed Scorpid
condition end haspet(61440)
pet 432
step
goto Terokkar Forest 24.9,29.1
.' The _Stripe-Tailed Scorpids_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Stripe-Tailed Scorpid##61440
|modeldisplay 15469
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stunted Shardhorn",[[
description This guide will walk you through obtaining
description the Beast pet: Stunted Shardhorn
condition end haspet(62816)
pet 532
step
goto Sholazar Basin 27.5,56.1
.' The _Stunted Shardhorn_ in this area are around level 21. Challenge one to a pet battle and capture it.
.learnpet Stunted Shardhorn##62816
|modeldisplay 42708
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Swamp Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Swamp Moth
condition end haspet(61370)
pet 402
step
goto Swamp of Sorrows 39.6,52.9
.' The _Swamp Moths_ are level 14. Challenge one to a pet battle and capture it.
.learnpet Swamp Moth##61370
|modeldisplay 36944
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tainted Cockroach",[[
description This guide will walk you through obtaining
description the Critter pet: Tainted Cockroach
condition end haspet(62314)
pet 497
step
goto Shadowmoon Valley 50.1,30.5
.' The _Tainted Cockroaches_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Tainted Cockroach##62314
|modeldisplay 2177
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tainted Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Tainted Moth
condition end haspet(62315)
pet 498
step
goto Felwood 39.0,68.1
.' The _Tainted Moths_ are around level 14. Challenge one to a pet battle and capture it.
.learnpet Tainted Moth##62315
|modeldisplay 36944
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tainted Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Tainted Rat
condition end haspet(62316)
pet 499
step
goto Felwood 36.5,59.3
.' The _Tainted Rats_ are around level 14. Challenge one to a pet battle and capture it.
.learnpet Tainted Rat##62316
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Terky",[[
description This guide will walk you through obtaining
description the Beast pet: Temple Snake
condition end haspet(62999)
pet 1073
step
'This pet was only available during the iCoke promotion in Taiwan.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 15398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tickbird Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Tickbird Hatchling
condition end haspet(32589)
pet 194
step
.' In order to get the _Tickbird Hatchling_, you will need to be aligned with the Oracles.  Do the Pre-Quests in the section below.
.' If you have done the Pre-quest, click here to go to the daily quests. |next "daily" |confirm
.' If you need to do the Pre-Quests in order to unlock the daily quests, click here. |next "prequest" |confirm
step
label "prequest"
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
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
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
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
.' Travel to Mistwhisper Refuge |q 12536/1
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
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
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
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
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
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
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
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
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
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to 72.2,57.3
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582 |daily
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
.' At this point, you will need to dailies to get to revered.
.' Click here to continue. |confirm
step
label "daily"
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
.talk 28667
..accept 12689 |daily |instant
..accept 12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
goto 54.6,56.4
.talk 28027
..turnin 12695 |only if not ZGV.completedQuests[12695]
..accept 12704 |daily
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |daily |or
..accept 12737 |daily |or
..accept 12736 |daily |or
..accept 12726 |daily |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |daily |or
..accept 12762 |daily |or
..accept 12705 |daily |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
.' Click here to reset the daily quests. |next "daily" |confirm
.' Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
goto Sholazar Basin,54.6,56.2
.talk 31910
.buy 1 Mysterious Egg##39878
step
'You will have to wait _3 days (real time)_ for this to hatch. |tip The drop rate for these pets is random. To get both pets you have to do this at least twice
|use Cracked Egg##39883
.collect 1 White Tickbird Hatchling##39899
.collect 1 Tickbird Hatchling##39896
.collect 1 Cobra Hatchling##39898
'|modeldisplay 22254
'|modeldisplay 26466
'|modeldisplay 28084
step
.learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
.learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
.learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Bog Beast",[[
description This guide will walk you through obtaining
description the Elemental pet: Tiny Bog Beast
condition end haspet(61686)
pet 509
step
goto Wetlands 51.6,30.1
.' The Tiny Bog Beasts are around level 6. Challenge one to a pet battle and capture it.
.learnpet Tiny Bog Beast##61686
|modeldisplay 42202
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Green Dragon",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Tiny Green Dragon
condition end haspet(14755)
pet 757
step
'This pet was only available to those in China during the iCoke event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 14778
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Red Dragon",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Tiny Red Dragon
condition end haspet(14756)
pet 758
step
'This pet was only available to those in China during the iCoke event.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 14779
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Shale Spider",[[
description This guide will walk you through obtaining
description the Elemental pet: Tiny Shale Spider
condition end haspet(48982)
pet 279
step
'Go to Deepholm |goto Deepholm |noway |c
step
goto 61.3,26.2
.talk 44968
..accept 27048 |tip You need the quest item from this quest in order to reach this pet. If this quest isn't here you'll have to try another day, and if the mob isn't there you can keep this quest for the quest item to try again later.
step
goto 63.1,20.9 |tip This is up on the ledge where Pebble would be |n
.' _Face_ to the _southwest_ where you can see some _Deep Spiders_ walking around on a _ledge_
.' Use _Ricket's Tickers_ to _blast yourself_ over to that _ledge_ |use Ricket's Tickers##65514 |tip Be sure that you are in front of the bomb and facing the way you want to go
.' Reach the ledge |goto 62.3,22.1,0.5 |noway |c
step
goto 61.2,22.6
.from Jadefang##49822
.collect 1 Tiny Shale Spider##64494 |tip If this mob isn't here you'll have to try again later
'|modeldisplay 36636
step
.learnpet Tiny Shale Spider##48982 |use Tiny Shale Spider##64494
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Sporebat",[[
description This guide will walk you through obtaining
description the Flying pet: Tiny Sporebat
condition end haspet(25062)
pet 167
step
'You will need to complete the Sporeggar quest chain and dailies in Zangarmarsh to reach Exalted.
.' Click here to continue to Sporeggar reputation section |confirm
step
#include "darkportal"
step
|fly Zabra'jin
step
label	"back up"
goto Zangarmarsh,19.1,64.2
.talk 17923
.accept 9739 |repeatable
.accept 9743 |repeatable
.' Turn in these two quests 4 times to go from unfriend to friendly.
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291
..collect Mature Spore Sac##24290 |tip They are on the ground throughout the area.
|only if rep('Sporeggar')<=Neutral
step
goto Zangarmarsh,19.1,64.2
.talk 17923
.turnin 9739 |repeatable
..turnin 9743 |repeatable
|only if rep('Sporeggar')<=Neutral
|next "back up" |only if rep('Sporeggar')<=Neutral
step
.' Once you have reached honored, you can farm the quest _Now That We're Friends..._ and _Bring Me A Shrubbery!_
.' Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
.' or
.' Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
step
label	"hibiscus"
goto 50.3,40.9 |n
.' Swim down through the pipe underwater to the other side. |goto 51.9,38.1,0.5 |c
step
goto Zangarmarsh,54.2,34.4 |n
.' Enter the Underbog |goto Zangarmarsh,54.2,34.4,0.5 |noway |c
|only if rep('Sporeggar')>=Friendly
step
label	"hibiscus_1"
goto The Underbog 31.5,65.3
.talk 54674
.accept 29691
step
'You can find the Sanguine Hibiscus on the ground scattered through out the Underbog, they look like red flowers.
.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
.get 5 Sanguine Hibiscus##24246 |q 29691/1
step
goto The Underbog 31.5,65.3
.talk 54674
.turnin 29691
step
label	"hibiscus_r"
.' Click here to go farming for more _Sanguine Hibiscus_ |confirm
.' or
.' Click here if you would like to farm Naga for more reputation |confirm |next "grind_1"
step
.' You can find the Sanguine Hibiscus on the ground scattered through out the instance, they look like red flowers.
.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
.collect Sanguine Hibiscus##24246 |n
.' You need 5 Sanguine Hibiscus for 750 Reputation.
.' 40 Sanguine Hibiscus = 6,000 Reputation.
.' 80 Sanguine Hibiscus = 12,000 Reputation.
.' Click when you are ready to turn in |confirm
|only if rep('Sporeggar')>=Friendly
step
goto The Underbog 31.5,65.3
.talk 54674
.accept 29692 |instant |repeatable
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
step
label	"grind_1"
goto Zangarmarsh 19.5,50.0
.talk 17856
.accept 9726
|only if rep('Sporeggar')>=Friendly
step
label	"grind_r"
goto 19.5,50.0
.talk 17856
..accept 9727 |repeatable
.' or
.' Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1"
|only if rep('Sporeggar')>=Friendly
step
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
|only if havequest (9726)
step
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9727/1
.kill 6 Bloodscale Enchantress##18088+ |q 9727/2
|only if havequest (9727)
|next "grind_2"
step
goto 19.5,50.0
.talk 17856
.turnin 9726
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest (9726)
step
label	"grind_2"
goto 19.5,50.0
.talk 17856
.turnin 9727
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest (9727)
step
label "exalted"
#include misc_rep_mount,rep="Sporeggar"
|tip You will have to complete the Sporeggar quest chain and dailies in Zangarmarsh to reach Exalted
.collect 30 Glowcap##24245 |tip These can be found all over Zangarmarsh, or you can pick them in The Underbog
step
goto Zangarmarsh,17.8,51.2
.talk 18382
.buy 1 Tiny Sporebat##34478
'|modeldisplay  20833
step
.learnpet Tiny Sporebat##25062 |use Tiny Sporebat##34478
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Twister",[[
description This guide will walk you through obtaining
description the Elemental pet: Tiny Twister
condition end haspet(61703)
pet 445
step
goto Arathi Highlands 46.0,52.6
.' The _Tiny Twisters_ are around level 7. Challenge one to a pet battle and capture it.
.learnpet Tiny Twister##61703
|modeldisplay 30424
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Toad",[[
description This guide will walk you through obtaining
description the Aquatic pet: Toad
condition end haspet(61369)
pet 420
step
goto Silverpine Forest 76.8,23.1
.' The _Toads_ in this area are around level 3-4. Challenge one to a pet battle and capture it.
.learnpet Toad##61369
|modeldisplay 901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tol'vir Scarab",[[
description This guide will walk you through obtaining
description the Critter pet: Tol'vir Scarab
condition end haspet(62899)
pet 546
step
goto Uldum 66.8,21.8
.' The _Tol'vir Scarabs_ are around level 23. Challenge one to a pet battle and capture it.
.learnpet Tol'vir Scarab##62899
|modeldisplay 42771
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Toothy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Toothy
condition end haspet(24388)
pet 163
step
.' In order to earn these pets, you will need to do the fishing dailies from Old Man Barlo in Terokkar Forest.
.' Click here to continue. |confirm
step
label "daily"
goto Terokkar Forest,38.7,12.8
.talk 25580
.' This is 1 of 5 dailies Old Man Barlo can give you.
.accept 11665 |or |daily
step
.' Go West to Shattrath City |goto Shattrath City
only if havequest(11665)
step
goto Shattrath City,57.2,48.2
.' Click the Shattrath Portal to Stormwind |goto Stormwind City
only if havequest(11665)
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Stormwind City,49.0,87.4 |n
.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
only if havequest(11665)
step
goto Blasted Lands,55.0,53.9
.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
only if havequest(11665)
step
|fly Shattrath
only if havequest(11665)
step
.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
only if havequest(11665)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.turnin 11665 |or |daily
step
|use Bag of Fishing Treasures##35348
.collect 1 Chuck's Bucket##35350
.collect 1 Muckbreath's Bucket##33818
.collect 1 Snarly's Bucket##35349
.collect 1 Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
.' If you got one of the buckets above, click here. |next "use" |confirm
'|modeldisplay 22389
'|modeldisplay 23506
'|modeldisplay 23507
'|modeldisplay 22388
step
label "use"
.learnpet Chuck##26056 |use Chuck's Bucket##35350
.learnpet Muckbreath##24389 |use Muckbreath's Bucket##33818
.learnpet Snarly##26050 |use Snarly's Bucket##35349
.learnpet Toothy##24388 |use Toothy's Bucket##33816
.' Click here to go back to the start of the dailies. |next "daily" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Topaz Shale Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Topaz Shale Hatchling
condition end haspet(62181)
pet 480
step
goto Deepholm 47.4,52.1
.' The _Topaz Shale Hatchlings_ in this area are level 22-23. Challenge one to a pet battle and capture it.
.learnpet Topaz Shale Hatchling##62181
|modeldisplay 36648
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Toxic Wasteling",[[
description This guide will walk you through obtaining
description the Magic pet: Toxic Wasteling
condition end haspet(38374)
pet 251
step
'_Obtaining_ this pet requires the _"Love is in the Air" Holiday_
.' Use the _Dungeon Finder_ to go to the _Crown Chemical Co._ event |goto Shadowfang Keep |noway |c
step
goto 39.4,50.4
.from Apothecary Hummel##36296, Apothecary Frye##36272, Apothecary Baxter##36565
.collect 1 Toxic Wasteling##50446 |tip This has a low drop rate, you may be farming here for a while
'|modeldisplay 38376
step
.learnpet Toxic Wasteling##38374 |use Toxic Wasteling##50446
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tranquil Mechanical Yeti",[[
description This guide will walk you through obtaining
description the Mechanical pet: Tranquil Mechanical Yeti
condition end haspet(15699)
pet 116
step
'Use the _Engineering profession_ section of this guide to level your _Engineering to 250_ |only if skill("Engineering")>1 and skill("Engineering")<250
'You learn this recipe by completing the quest _"Are We There Yeti"_ from _Umi Rumplesnicker_ in _Everlook_, then complete the quest _"A Yeti of Your Own"_ and she will _teach_ you how to make it |only if skill("Engineering")>=250
.learn Tranquil Mechanical Yeti##26011 |only if skill("Engineering")>=250 |next make
.' Click here if you do not wish to learn this recipe |confirm |only if skill("Engineering")>1
'_ Auto skipping_ to next step |next |only if skill("Engineering")<1
step
'You can either _buy_ this item from the _Auction House_ or _farm_ for it:
.buy 1 Tranquil Mechanical Yeti##21277 |next "bought"
.' Click here to _make_ the _Tranquil Mechanical Yeti_ |confirm
step
label make
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Cured Rugged Hide##15407
.collect 4 Thorium Widget##15994
.collect 2 Globe of Water##7079
.collect 2 Truesilver Transformer##18631
.collect 1 Gold Power Core##10558
step
'Have an _Engineer_ make this pet for you |tip Ask in your guild or in trade chat |only if _G.IsSpellKnown(26011)==false
.create Tranquil Mechanical Yeti##26011,Engineering,1 total |only if _G.IsSpellKnown(26011)==true
.collect 1 Tranquil Mechanical Yeti##21277
'|modeldisplay 934
step
label bought
.learnpet Tranquil Mechanical Yeti##15699 |use Tranquil Mechanical Yeti##21277
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tree Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Tree Frog
condition end haspet(7549)
pet 65
step
'This _pet_ requires that the _Darkmoon Faire_ is in town |tip The Darkmoon Faire is in town every first week of the month
'Go to the _Darkmoon Faire_ and find _Flik_ |tip He's a child orc walking around with frogs following him
.talk 14860
.buy 1 Tree Frog Box##11026
'|modeldisplay 6295
step
.learnpet Tree Frog##7549 |use Tree Frog Box##11026
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tree Python",[[
description This guide will walk you through obtaining
description the Beast pet: Tree Python
condition end haspet(61318)
pet 405
step
goto Un'Goro Crater 60.1,80.6
.' The _Tree Pythons_ in this area around around level 15. Challenge one to a pet battle and capture it.
.learnpet Tree Python##61318
|modeldisplay 36578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tundra Penguin",[[
description This guide will walk you through obtaining
description the Aquatic pet: Tundra Penguin
condition end haspet(62835)
pet 536
step
goto Dragonblight 11.4,62.8
.' The _Tundra Penguins_ in this area are level 22. Challenge one to a pet battle and capture it.
.learnpet Tundra Penguin##62835
|modeldisplay 25390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Turkey",[[
description This guide will walk you through obtaining
description the Flying pet: Turkey
condition end haspet(62648)
pet 525
step
goto Howling Fjord 59.8,61.6
.' The _Turkeys_ in this area are level 21. Challenge one to a pet battle and capture it.
.learnpet Turkey##62648
|modeldisplay 45968
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Turquoise Turtle",[[
description This guide will walk you through obtaining
description the Aquatic pet: Turquoise Turtle
condition end haspet(62121)
pet 473
step
goto Azshara 60.0,89.5
.' The _Turquiose Turtles_ are level 3. Challenge one to a pet battle and capture it.
.learnpet Turquoise Turtle##62121
|modeldisplay 27881
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tuskarr Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Tuskarr Kite
condition end haspet(36482)
pet 241
step
'This pet can only be obtained by redeeming codes from the World of Warcraft trading card game.
|modeldisplay 30157
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Twilight Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Twilight Beetle
condition end haspet(62118)
pet 469
step
goto Mount Hyjal 44.5,21.2
.' The _Twilight Beetles_ in this area are around level 23. Challenge one to a pet battle and capture it.
.learnpet Twilight Beetle##62118
|modeldisplay 36644
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Twilight Fiendling",[[
description This guide will walk you through obtaining
description the Magic pet: Twilight Fiendling
condition end haspet(62914)
pet 552
step
goto Twilight Highlands 60.0,47.3
.' The _Twilight Fiendlings_ are level 23. Challenge one to a pet battle and capture it.
.learnpet Twilight Fiendling##62914
|modeldisplay 42783
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Twilight Iguana",[[
description This guide will walk you through obtaining
description the Beast pet: Twilight Iguana
condition end haspet(62255)
pet 505
step
goto Thousand Needles 35.1,58.7
.' The _Twilight Iguanas_ in this area are around level 13. Challenge one to a pet battle and capture it.
.learnpet Twilight Iguana##62255
|modeldisplay 42415
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Twilight Spider",[[
description This guide will walk you through obtaining
description the Beast pet: Twilight Spider
condition end haspet(62117)
pet 470
step
goto Twilight Highlands 66.5,69.2
.' The _Twilight Spiders_ in this area are level 23. Challenge one to a pet battle can capture it.
.learnpet Twilight Spider##62117
|modeldisplay 36236
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Vampiric Batling",[[
description This guide will walk you through obtaining
description the Undead pet: Vampiric Batling
condition end haspet(28513)
pet 187
step
'This pet was only available to players during the Scourge Invasion event for Wrath of the Lich King.
|modeldisplay 4185
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Venomspitter Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Venomspitter Hatchling
condition end haspet(62191)
pet 506
step
goto Stonetalon Mountains 55.4,74.3
.' The _Venomspitter Hatchlings_ in this area are around level 5. Challenge one to a pet battle and capture it.
.learnpet Venomaspitter Hatchling##62191
|modeldisplay 42382
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Venus",[[
description This guide will walk you through obtaining
description the Elemental pet: Venus
condition end haspet(66491)
pet 855
step
.' Obtain 400 _unique pets_ using our Pets and Mounts guide.
.' That's a Lot of Pet Food |achieve 7501
step
'Check your _mailbox_ for your _prize_!
.collect 1 Venus##89736
|modeldisplay 45195
step
.learnpet Venus##66491 |use Venus##89736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Warbot",[[
description This guide will walk you through obtaining
description the Mechanical pet: Warbot
condition end haspet(34587)
pet 227
step
'This pet was available only to players during the World of Warcraft Mountain Dew Promotion.
.' If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 29279
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Warpstalker Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Warpstalker Hatchling
condition end haspet(62583)
pet 517
step
goto Terokkar Forest 49.8,21.1
.' The _Warpstalker Hatchlings_ in this area are around level 18. Challenge one to a pet battle and capture it.
.learnpet Warpstalker Hatchling##62583
|modeldisplay 38236
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Water Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Water Snake
condition end haspet(61367)
pet 418
step
goto Durotar 44.2,33.5
.' The _Water Snakes_ in this area are level 1. Challenge one to a pet battle and capture it.
.learnpet Water Snake##61367
|modeldisplay 1986
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Water Waveling",[[
description This guide will walk you through obtaining
description the Elemental pet: Water Waveling
condition end haspet(62820)
pet 535
step
goto Zul'Drak 40.1,74.5
.' The _Water Wavelings_ are around level 22. Challenge one to a pet battle and capture it.
.learnpet Water Waveling##62820
|modeldisplay 30159
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wharf Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Wharf Rat
condition end haspet(61323)
pet 410
step
goto The Cape of Stranglethorn 42.9,71.6
.' The _Wharf Rats_ in this area are around level 9-10. Challenge one to a pet battle and capture it.
.learnpet Wharf Rat##61323
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\White Tickbird Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: White Tickbird Hatchling
condition end haspet(32590)
pet 195
step
.' In order to get the Tickbird Hatchling, you will need to be aligned with the Oracles.  Do the Pre-Quests in the section below.
.' If you have done the Pre-quest, click here to go to the daily quests. |next "daily" |confirm
.' If you need to do the Pre-Quests in order to unlock the daily quests, click here. |next "prequest" |confirm
step
label "prequest"
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
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
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
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
.' Travel to Mistwhisper Refuge |q 12536/1
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
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
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
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
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
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
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
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
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
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to 72.2,57.3
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582 |daily
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
.' At this point, you will need to dailies to get to revered.
.' Click here to continue. |confirm
step
label "daily"
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
.talk 28667
..accept 12689 |daily |instant
..accept 12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
goto 54.6,56.4
.talk 28027
..turnin 12695 |only if not ZGV.completedQuests[12695]
..accept 12704 |daily
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |daily |or
..accept 12737 |daily |or
..accept 12736 |daily |or
..accept 12726 |daily |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |daily |or
..accept 12762 |daily |or
..accept 12705 |daily |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
.' Click here to reset the daily quests. |next "daily" |confirm
.' Become Revered with The Orcales. |condition rep('The Oracles')>=Revered |next "egg"
step
label "egg"
goto Sholazar Basin,54.6,56.2
.talk 31910
.buy 1 Mysterious Egg##39878
step
'You will have to wait _3 days (real time)_ for this to hatch. |tip The drop rate for these pets is random. To get both pets you have to do this at least twice
|use Cracked Egg##39883
.collect 1 White Tickbird Hatchling##39899
.collect 1 Tickbird Hatchling##39896
.collect 1 Cobra Hatchling##39898
'|modeldisplay 22254
'|modeldisplay 26466
'|modeldisplay 28084
step
.learnpet White Tickbird Hatchling##32590 |use White Tickbird Hatchling##39899
.learnpet Tickbird Hatchling##32589 |use Tickbird Hatchling##39896
.learnpet Cobra Hatchling##32591 |use Cobra Hatchling##39898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Widow Spiderling",[[
description This guide will walk you through obtaining
description the Beast pet: Widow Spiderling
condition end haspet(61259)
pet 400
step
goto Duskwood 31.2,39.5
.' The _Widow Spiderling_ can be found when challenging Dusk Spiderlings. Challenge a Dusk Spiderling to a pet battle and if the Widow Spiderling is there capture it.
.learnpet Widow Spiderling##61259
|modeldisplay 41949
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wildhammer Gryphon Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Wildhammer Gryphon Hatchling
condition end haspet(62900)
pet 548
step
goto Twilight Highlands 55.5,15.3
.' The _Wildhammer Gryphon Hatchlings_ are level 23. Challenge one to a pet battle and capture it.
.learnpet Wildhammer Gryphon Hatchling##62900
|modeldisplay 30412
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Willy",[[
description This guide will walk you through obtaining
description the Magic pet: Willy
condition end haspet(23231)
pet 157
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.collect 1 Sleepy Willy##32617 |tip Back to the Orphanage (Shattrath)
'|modeldisplay 21381
step
.learnpet Willy##23231 |use Sleepy Willy##32617 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wind Rider Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Wind Rider Cub
condition end haspet(36909)
pet 246
step
.' This pet can be purchased for $25.00 from the official Blizzard Store. It also includes an out of game plushie.
.' After purchasing, check your in-game mailbox
.collect Wind Rider Cub##49663
|modeldisplay 30413
step
.learnpet Wind Rider Cub##36909 |use Wind Rider Cub##49663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Winterspring Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Winterspring Cub
condition end haspet(52831)
pet 306
step
'Go to _Winterspring_ |goto Winterspring |noway |c
step
goto Winterspring,59.8,51.6
.talk 52830
.buy 1 Winterspring Cub##69239
'|modeldisplay 37712
step
.learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wood Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Wood Frog
condition end haspet(7550)
pet 64
step
'This _pet_ requires that the _Darkmoon Faire_ is in town |tip The Darkmoon Faire is in town every first week of the month
'Go to the _Darkmoon Faire_ and find _Flik_ |tip He's a child orc walking around with frogs following him
.talk 14860
.buy 1 Wood Frog Box##11027
'|modeldisplay 901
step
.learnpet Wood Frog##7550 |use Wood Frog Box##11027
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Worg Pup",[[
description This guide will walk you through obtaining
description the Beast pet: Worg Pup
condition end haspet(10259)
pet 89
step
.' Go To Lower Blackrock Spire
.' Click here to continute. |confirm
step
goto Blackrock Spire,29.8,38.0
.' Click here to continute. |confirm
step
goto 37.1,40.9
.' Jump off the ledge here.
.' Click here to continute. |confirm
step
goto 38.8,48.4
.' Click here to continute. |confirm
step
goto 52.8,37.9
.' Click here to continute. |confirm
step
goto 58.9,42.9
.' Click here to continute. |confirm
step
goto 66.8,43.8
.' Click here to continute. |confirm
step
goto 66.4,57.8
.' Click here to continute. |confirm
step
goto 64.0,56.9
.' Jump off the Ledge here.
.' Click here to continute. |confirm
step
goto 59.6,58.1
.' Click here to continute. |confirm
step
goto 59.4,64.6
.' Click here to continute. |confirm
step
goto 64.1,63.1
.' Click here to continute. |confirm
step
goto 66.2,50.0
.' Click here to continute. |confirm
step
goto 57.3,48.4
.' Click here to continute. |confirm
step
goto 49.4,53.1
.' Click here to continute. |confirm
step
goto 50.1,65.2
.' Click here to continute. |confirm
step
goto 51.5,75.0
.' Click here to continute. |confirm
step
goto 43.0,60.2
.' Click here to continute. |confirm
step
goto 47.1,71.3
.' Click here to continute. |confirm
step
goto 47.8,79.9
.' Click here to continute. |confirm
step
goto 47.9,79.9
.' Click here to continute. |confirm
step
goto 52.3,80.1
.' Click here to continute. |confirm
step
goto 54.8,85.2
.from Quartermaster Zigris##9736
.collect 1 Worg Carrier##12264 |tip This has a 25% chance to drop from this mob
'|modeldisplay 9569
step
.learnpet Worg Pup##10259 |use Worg Carrier##12264
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Yellow Balloon",[[
description This guide will walk you through obtaining
description the Flying pet: Yellow Balloon
condition end haspet(56083)
pet 345
step
step
goto Darkmoon Island 49.6,81.4
.talk 55305
.buy Flimsy Yellow Balloon##75042
step
.learnpet Yellow Balloon##56083 |use Flimsy Yellow Balloon##75042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Yellow Moth",[[
description This guide will walk you through obtaining
description the Flying pet: Yellow Moth
condition end haspet(21008)
pet 140
step
'Go to The Exodar |goto The Exodar |noway |c
step
goto 30.8,34.6
.talk 21019
.buy 1 Yellow Moth Egg##29903
'|modeldisplay  19999
step
.learnpet Yellow Moth##21008 |use Yellow Moth Egg##29903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Yellow Moth",[[
description This guide will walk you through obtaining
description the Flying pet:Yellow Moth
condition end haspet(21008)
pet 140
step
'You will have to buy these from a _neutral Auction House_, as they are _not_ available to _Horde characters_
.buy 1 Yellow Moth Egg##29903
'|modeldisplay 17798
step
.learnpet Yellow Moth##21008 |use Yellow Moth Egg##29903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Yellow-Bellied Marmot",[[
description This guide will walk you through obtaining
description the Critter pet: Yellow-Bellied Marmot
condition end haspet(62904)
pet 549
step
goto Twilight Highlands 74.9,67.0
.' The _Yellow-Bellied Marmots_ in this area are level 23. Challenge one to a pet battle and capture it.
.learnpet Yellow-Bellied Marmot##62904
|modeldisplay
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Zergling",[[
description This guide will walk you through obtaining
description the Magic pet: Zergling
condition end haspet(11327)
pet 94
step
'These pets are available only to people who bought the Collector's Edition of World of Warcraft.
.' You may only choose one.
.' If you desperately want the other pets you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 10992
|modeldisplay 10993
|modeldisplay 10990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Zipao Tiger",[[
description This guide will walk you through obtaining
description the Magic pet: Zipao Tiger
condition end haspet(36910)
pet 247
step
'This was a promotional pet only offered to those on Taiwan's servers.
.' If you desperately want this pet you may be able to find a copy on Amazon or eBay. However, they are typically very expensive.
|modeldisplay 30402
]])
