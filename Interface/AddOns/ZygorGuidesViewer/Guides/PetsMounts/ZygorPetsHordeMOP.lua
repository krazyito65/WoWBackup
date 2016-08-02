local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHMOP") then return end
ZGV.CommonPets=true
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Chi-ji Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Chi-ji Kite
condition end haspet(66104)
pet 849
step
'This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
goto Orgrimmar 55.1,55.9
.talk 46716
.learn Chi-Ji Kite##127009
step
map Valley of the Four Winds
path 81.4,21.5	76.4,29.2	68.2,33.3
path 70.6,41.8	65.1,60.1	57.6,65.6
path 50.8,58.6	48.0,65.9	46.9,61.3
path 42.5,58.3	33.6,62.1	28.1,72.7
path 25.7,78.4	18.5,51.0	15.4,53.9
path 12.8,44.7	14.3,41.2	14.8,35.8
path 19.6,34.4	24.0,42.2	25.0,50.2
path 30.1,55.7	 35.8,54.8	41.5,48.9
#include "follow_path_herbs"
.' You need about 15 Shadow-giving herbs total
.collect Green Tea leaf##72234 |n
.collect Silkweed##72235 |n
.' You'll need about {_G.max(0 , (15-itemcount(72234,72235)))} more herbs in stacks of 5.
.' Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
.collect 4 Shadow Pigment##79251
step
goto Orgrimmar 55.4,55.9
.talk 46718
.buy 1 Light Parchment##39354
step
.create 1 Chi-Ji Kite##89368
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Chi-Ji Kite##89368
step
label "done"
.learnpet Chi-Ji Kite##66104 |use Chi-Ji Kite##89368
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fishy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Fishy
condition end haspet(62829)
step
'HOW DO WE GET THIS PET!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jade Crane Chick",[[
description This guide will walk you through obtaining
description the Flying pet: Jade Crane Chick
condition end haspet(65314)
pet 792
step
goto Orgrimmar 52.5,59.2
.talk 63626
.buy Jade Crane Chick##88148
step
.learnpet Jade Crane Chick##65314 |use Jade Crane Chick##88148
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Jade Owl",[[
description This guide will walk you through obtaining
description the Magic pet: Jade Owl
condition end haspet(61877)
pet 845
step
'This pet requires you to either have level 600 Jewelcrafting, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
'You must complete Dailies for the _Golden Lotus_ to get the recipe for this pet.
|confirm
step
.create 1 Jade Owl##82774
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Jade Owl##82774
step
label "done"
.learnpet Jade Owl##61877 |use Jade Owl##82774
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sapphire Cub",[[
description This guide will walk you through obtaining
description the Elemental pet: Sapphire Cub
condition end haspet(61883)
pet 846
step
'This pet requires you to either have level 600 Jewelcrafting, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
'You must complete Dailies for the _Golden Lotus_ to get the recipe for this pet.
|confirm
step
.create 1 Sapphire Cub##82775
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Jade Owl##82774
step
label "done"
.learnpet Jade Owl##61883 |use Sapphire Cub##82775
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Goldfish",[[
description This guide will walk you through obtaining
description the Aquatic pet: Tiny Goldfish
condition end haspet(63559)
pet 652
step
'This pet requires you to be _Honored_ with _The Anglers_
.' Click here to be taken to the guide that will raise your reputation with _The Anglers_. |confirm |next "reputation"
.' Click here to be taken directly to where you buy the pet. |confirm |next "vendor"
step
label "reputation"
'You must have fishing in order to accept dailies from this faction.
|confirm
step
goto Vale of Eternal Blossoms 60.9,23.8
.talk 64010
..accept 31370
|only if not completedq(31370)
step
goto Krasarang Wilds 67.9,45.2
.talk 59584
..turnin 31370
|only if not completedq(31370)
step
'There will only be three dailies available from the following questgivers. It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
|confirm
step
goto 67.9,45.2
.talk 59584
..accept 30584 |daily |or
..accept 30586 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.5,44.6
.talk 60136
..accept 30678 |daily |or
..accept 30698 |daily |or
.' If this quest is unavailable today, click here. |confirm
step
goto 67.5,43.5
.talk 59586
..accept 30700 |daily |or
..accept 30588 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.3,43.5
.talk 60674
..accept 30754 |daily |or
..accept 30753 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.6,42.5
.talk 60135
..accept 30613 |daily |or
..accept 30658 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,42.1
.talk 60673
..accept 30585 |daily |or
..accept 30598 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.2,41.2
.talk 60675
..accept 30763 |daily |or
..accept 30701 |daily |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,43.1
.clicknpc Frenzied Reef Shark##60408
.' Ride the shark. |invehicle |c
|only if havequest(30753)
step
'Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero.
.kill Frenzied Reef Shark##60408 |q 30753/1
|only if havequest(30753)
step
goto 69.1,37.9
.click Jagged Abalone
.get 9 Jagged Abalone Meat##80277 |q 30586/1
|only if havequest(30586)
step
'Enter the underwater cave here. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 73.9,38.4
.from Snapclaw##60401
.get Snapclaw's Claw##80831 |q 30700/1
|only if havequest(30700)
step
'Leave the cave. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 65.6,30.5
'Use your fishing skill to fish up 7 Dojani Eel.
.get 7 Dojani Eel |q 30584/1
|only if havequest(30584)
step
goto 62.4,40.9
.kill 8 Riverblade Raider##59714+ |q 30588/1
|only if havequest(30588)
step
goto 55.1,45.7
.from Viseclaw Fry##61090+, Viseclaw Fisher##58880+
.get 16 Viseclaw Fisher Eye##80832+ |q 30701/1
|only if havequest(30701)
step
goto 59.8,38.8
.click Suncrawler
.get 7 Suncrawler##81116 |q 30754/1
|only if havequest(30754)
step
goto 59.3,46.3
'Use your Goblin Fishing Bomb to kill Sting Rays. |use Goblin Fishing Bomb##80599 |tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
.from Sting Ray##60278+
.get 3 Stinger##80600+ |q 30678/1
|only if havequest(30678)
step
goto 36.8,43.3
'Use your fishing skill to fish up 5 Wolf Piranha.
.get 5 Wolf Piranha |q 30763/1
|only if havequest(30763)
step
goto 34.4,31.4
'Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears. |tip When Narjon spawns, make sure to equip your weapon quickly.
.from Narjon the Gulper##59689 |q 30585/1
.get Beloved Ring##80262 |q 30585/2
|only if havequest(30585)
step
goto 51.4,62.2
'Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Prickly Puffer##60037
.get 5 Prickly Puffer Spine##80529 |q 30658/1
|only if havequest(30658)
step
goto 57.5,53.5
.click Goblin Fishing Raft
.' Ride a Goblin Fishing Raft |havebuff Rafting
|only if havequest(30698)
step
goto 57.3,55.2
'Use you fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
.get 15 Shipwreck Debris |q 30698/1
.' You can find more Debris at [64.3,50.6]
|only if havequest(30698)
step
goto 65.2,47.5
.click Pristine Crane Egg
.get Pristine Crane Egg |q 30598/1
|only if havequest(30598)
step
goto 70.1,51.2
'Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Armored Carp##59936+
.get 5 Armored Carp##80437 |q 30613/1
|only if havequest(30613)
step
goto 68.2,42.7
'Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
.' Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
.get Silver Goby##80310 |q 30598/2
|only if havequest(30598)
step
goto 68.4,42.1
.talk 60673
..turnin 30585 |daily
..turnin 30598 |daily
step
goto 67.5,44.6
.talk 60136
..turnin 30678 |daily
..turnin 30698 |daily
step
goto 67.5,43.5
.talk 59586
..turnin 30700 |daily
..turnin 30588 |daily
step
goto 67.6,42.5
.talk 60135
..turnin 30613 |daily
..turnin 30658 |daily
step
goto 67.9,45.2
.talk 59584
..turnin 30584 |daily
..turnin 30586 |daily
step
goto 68.3,43.5
.talk 60674
..turnin 30754 |daily
..turnin 30753 |daily
step
goto 67.2,41.2
.talk 60675
..turnin 30763 |daily
..turnin 30701 |daily
step
goto 68.4,43.5
.talk 63721
.buy 1 Tiny Goldfish##85447
step
.learnpet Tiny Goldfish##63559 |use Tiny Goldfish##85447
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Yu'lon Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Yu'lon Kite
condition end haspet(66105)
pet 850
step
'This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
goto Orgrimmar 55.1,55.9
.talk 46716
.learn Yu'lon Kite##127007
step
map Valley of the Four Winds
path 81.4,21.5	76.4,29.2	68.2,33.3
path 70.6,41.8	65.1,60.1	57.6,65.6
path 50.8,58.6	48.0,65.9	46.9,61.3
path 42.5,58.3	33.6,62.1	28.1,72.7
path 25.7,78.4	18.5,51.0	15.4,53.9
path 12.8,44.7	14.3,41.2	14.8,35.8
path 19.6,34.4	24.0,42.2	25.0,50.2
path 30.1,55.7	 35.8,54.8	41.5,48.9
#include "follow_path_herbs"
.' You need about 15 Shadow-giving herbs total
.collect Green Tea leaf##72234 |n
.collect Silkweed##72235 |n
.' You'll need about {_G.max(0 , (15-itemcount(72234,72235)))} more herbs in stacks of 5.
.' Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
.collect 4 Shadow Pigment##79251
step
goto Orgrimmar 55.4,55.9
.talk 46718
.buy 1 Light Parchment##39354
step
.create 1 Yu'lon Kite##89367
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Yu'lon Kite##89367
step
label "done"
.learnpet Yu'lon Kite##66105 |use Yu'lon Kite##89367
]])
