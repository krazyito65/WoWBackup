local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAMOP") then return end
ZygorGuidesViewer:RegisterInclude("tillers_prequests",[[
goto Vale of Eternal Blossoms 87.0,60.8
.talk 64036
..accept 31372
step
goto Valley of the Four Winds 52.0,48.0
.talk 58721
..turnin 31372
..accept 30252
step
goto 51.8,48.8
.click Unbudging Rock
.' Clear 8 Unbudging Rocks |q 30252/1
step
goto 52.8,47.9
.talk 58646
..turnin 30252
step
goto 52.3,48.8
.talk 58646
..accept 30535
step
goto 52.9,52.2
.talk 58718
.' Tell him you're there to pick up seeds.
.' Get a Packet of Green Cabbage Seeds |q 30535/1
step
goto 52.3,48.8
.talk 58646
..turnin 30535
..accept 30254
step
goto 52.0,48.3
.clicknpc Untilled Soil##59985+
.' Till 2 patches of Soil. |q 30254/1
.' Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil. |use EZ-Gro Green Cabbage Seeds##80302
.' Plant seeds in 2 patches of Tilled Soil. |q 30254/2
|modelnpc Tilled Soil##58563
step
goto 52.3,48.8
.talk 58646
..turnin 30254
..accept 30255
step
goto 52.0,48.3
.' Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
.' Water 2 parched Ez-Gro Green Cabbage |q 30255/1
|modelnpc Parched EZ-Gro Green Cabbage##59987
step
goto 52.3,48.8
.talk 58646
..turnin 30255
..accept 30256
step
goto 52.0,48.3
.clicknpc Ripe EZ-Gro Green Cabbage##59833
.get 2 EZ-Gro Green Cabbage |q 30256/1
step
goto 52.3,48.8
.talk 58646
..turnin 30256
..accept 30257
step
goto 52.8,48.0
.click Dark Soil
.get Marsh Lily |q 30257/1
step
goto 53.1,51.8
.talk 58706
..turnin 30257
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Chee Chee",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Chee Chee after completing the Tillers prequests.
'Becoming _Best Friends_ with Chee Chee rewards you with _Chee Chee's Goodie Bag_, which contains leather and cloth, and he also gives you a _Sheep_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Chee Chee##58709
step
label tillers
#include "tillers_prequests"
step
label menu
'_Chee Chee_ is a _Stranger_ to you. |only if rep("Chee Chee")<=Stranger
'_Chee Chee_ is your _Aquaintance_. |only if rep("Chee Chee")==Aquaintance
'_Chee Chee_ is your _Buddy_. |only if rep("Chee Chee")==Buddy
'_Chee Chee_ is your _Friend_. |only if rep("Chee Chee")==Friend
'_Chee Chee_ is your _Good Friend_. |only if rep("Chee Chee")==GoodFriend
'_Chee Chee_ is your _Best Friend_. |only if rep("Chee Chee")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
|modelnpc Chee Chee##58709
step
label cooking
.' In order to create Chee Chee's favorite meal, you must have at least 555 skill points in _Way of the Wok_ Cooking.
.' Click here to continue |confirm |next stir_fry
.' Click here to go back to the menu |confirm |next menu
|modelnpc Chee Chee##58709
step
label	stir_fry
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Valley Stir Fry##104302
step
#include "auctioneer"
.buy 5 Reef Octopus##74864
.buy 5 Wildfowl Breast##74839
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_stir_fry_1
|tip You should at least have 525 fishing for this.
step
label	farm_stir_fry_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast fishing##131474
.collect 5 Reef Octopus##74864
step
'Skipping farming |next "+create_stir_fry" |only if step:Find("+farm_stir_fry_2"):IsComplete()
'Proceeding to Valley Stir Fry |next |only if default
step
label	farm_stir_fry_2
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 5 Wildfowl Breast##74839
|next create_stir_fry
step
label	create_stir_fry
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Valley Stir Fry##74647
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Blue Feather##79265
|next turnin2
step
label turnin1
goto Valley of the Four Winds 34.4,46.7
.talk 58709
..turnin 30402 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next cooking
|next quest1 |only if rep("Chee Chee")==Buddy
|next quest2 |only if rep("Chee Chee")==Friend
|next quest3 |only if rep("Chee Chee")==GoodFriend
.' Click here if Chee Chee is not in this location. |next altturnin1
step
label	cheechee_1
'Moving Forward to Chee Chee |next cheechee_2|only if default
'Moving Forward to Chee Chee |next quest1 |only if rep("Chee Chee")==Buddy
'Moving Forward to Chee Chee |next quest2 |only if rep("Chee Chee")==Friend
'Moving Forward to Chee Chee |next quest3 |only if rep("Chee Chee")==GoodFriend
step
label turnin2
goto Valley of the Four Winds 34.4,46.7
.talk 58709
..accept 30400 |instant |repeatable |tip Keep turning this in until you reach the next status.
|next cheechee_1 |only if default
|next quest1 |only if rep("Chee Chee")==Buddy
|next quest2 |only if rep("Chee Chee")==Friend
|next quest3 |only if rep("Chee Chee")==GoodFriend
.' Click here if Chee Chee is not in this location. |click |next altturnin2
step
quest1
goto 34.4,46.7
.talk 58709
..accept 31338
step
quest2
goto 34.4,46.7
.talk 58709
..accept 31339
step
quest3
goto 34.4,46.7
.talk 58709
..accept 31340
step
goto 34.4,46.7
.talk 58709
..accept A Wolf In Sheep's Clothing
step
label altturnin1
goto Valley of the Four Winds 53.0,52.0
.talk 58709
..turnin 30402 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next cooking
|next quest1 |only if rep("Chee Chee")==Buddy
|next quest2 |only if rep("Chee Chee")==Friend
|next quest3 |only if rep("Chee Chee")==GoodFriend
step
label	cheechee_2
.' Moving forward to Chee Chee |next |only if default
.' Moving forward to Chee Chee |next quest1 |only if rep("Chee Chee")==Buddy
.' Moving forward to Chee Chee |next quest2 |only if rep("Chee Chee")==Friend
.' Moving forward to Chee Chee |next quest3 |only if rep("Chee Chee")==GoodFriend
step
label altturnin2
goto Valley of the Four Winds 34.4,46.7
.talk 58709
..accept 30400 |instant |repeatable |tip Keep turning this in until you reach the next status.
|next cheechee_2 |only if default
|next quest1 |only if rep("Chee Chee")==Buddy
|next quest2 |only if rep("Chee Chee")==Friend
|next quest3 |only if rep("Chee Chee")==GoodFriend
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Ella",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Ella after completing the Tillers prequests.
'Becoming _Best Friends_ with Ella rewards you with a _Tree Seed Pack_, which contains Blossom Seeds, and she also gives you a _Cat_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Ella##58647
step
label tillers
#include "tillers_prequests"
step
label menu
'_Ella_ is a _Stranger_ to you. |only if rep("Ella")<=Stranger
'_Ella_ is your _Aquaintance_. |only if rep("Ella")==Aquaintance
'_Ella_ is your _Buddy_. |only if rep("Ella")==Buddy
'_Ella_ is your _Friend_. |only if rep("Ella")==Friend
'_Ella_ is your _Good Friend_. |only if rep ("Ella")==GoodFriend
'_Ella_ is your _Best Friend_. |only if rep("Ella")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
|modelnpc Ella##58647
step
label cooking
.' In order to create Ella's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next shrimp_dump
.' Click here to go back to the menu |confirm |next menu
|modelnpc Ella##58647
step
label	shrimp_dump
goto Valley of the Four Winds 52.5,51.8
.talk 58715
.learn Shrimp Dumplings##104307
step
#include "auctioneer"
.buy 5 Giant Mantis Shrimp##74857
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_shrimp_dump_1
|tip You should at least have 525 fishing for this.
step
label	farm_shrimp_dump_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast fishing##131474
.collect 5 Giant Mantis Shrimp##74857
step
label	create_shrimp_dump
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Shrimp Dumpling##104307,Cooking,25 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Jade Cat##79266
|next turnin2
step
label turnin1
goto Valley of the Four Winds 53.0,51.7
.talk 58647
..turnin 30386 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next cooking
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
.' Click here if Ella is not in this location. |confirm |next altturnin1
step
label	ella_1
'Moving to Ella |next
step
label turnin2
goto Valley of the Four Winds 53.0,51.7
.talk 58647
..turnin 30381 |tip Keep turning this in until you reach Buddy Status.
|next ella_1 |only if default
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
.' Click here if Ella is not in this location. |confirm |click |next altturnin2
step
quest1
goto 31.5,58.1
.talk 58647
..accept 31534
step
quest2
goto 31.5,58.1
.talk 58647
..accept 31537
step
quest3
goto 31.5,58.1
.talk 58647
..accept 31538
step
label altturnin1
goto Valley of the Four Winds 31.5,58.1
.talk 58647
..turnin 30386 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next cooking
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
step
label	ella_2
.' Moving forward to Ella |next |only if default
.' Moving forward to Ella |next quest1 |only if rep("Ella")==Buddy
.' Moving forward to Ella |next quest2 |only if rep("Ella")==Friend
.' Moving forward to Ella |next quest3 |only if rep("Ella")==GoodFriend
step
label altturnin2
goto Valley of the Four Winds 31.7,58.2
.talk 58647
..turnin 30381 |tip Keep turning this in until you reach Buddy Status.
|next ella_2 |only if default
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Fish Fellreed",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Fish Fellreed after completing the Tillers prequests.
'Becoming _Best Friends_ with Fish Fellreed rewards you with a _Special Seed Pack_, which contains Profession Seeds.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Fish Fellreed##58705
step
label tillers
#include "tillers_prequests"
step
label menu
'_Fish Fellreed_ is a _Stranger_ to you. |only if rep("Fish Fellreed")<=Stranger
'_Fish Fellreed_ is your _Aquaintance_. |only if rep("Fish Fellreed")==Aquaintance
'_Fish Fellreed_ is your _Buddy_. |only if rep("Fish Fellreed")==Buddy
'_Fish Fellreed_ is your _Friend_. |only if rep("Fish Fellreed")==Friend
'_Fish Fellreed_ is your _Good Friend_. |only if rep("Fish Fellreed")==GoodFriend
'_Fish Fellreed_ is your _Best Friend_. |only if rep("Fish Fellreed")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
|modelnpc Fish Fellreed##58705
step
label cooking
.' In order to create Fish Fellreed's favorite meal, you must have at least 550 skill points in _Way of the Oven_ Cooking.
.' Click here to continue |confirm |next twin_fish
.' Click here to go back to the menu |confirm |next menu
|modelnpc Fish Fellreed##58705
step
label	twin_fish
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Twin Fish Platter##104311
step
#include "auctioneer"
.buy 10 Krasarang Paddlefish##74865 |next create_twin_fish |or
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_twin_fish_1 |or
|tip You should at least have 525 fishing for this.
step
label	farm_twin_fish_1
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.collect 10 Krasarang Paddlefish##74865
step
label	create_twin_fish
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Twin Fish Platter##104311,Cooking,25 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Jade Cat##79266
|next turnin2
step
label turnin1
goto Valley of the Four Winds 41.7,30.1
.talk 58705
..turnin 30427 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Fish Fellreed |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 41.7,30.1
.talk 58705
..turnin 30424 |tip Keep turning this in until you reach Best Friend Status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Gina Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Gina Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Gina Mudclaw rewards you with _Celebration Gift_, which contains fireworks, and he also gives you access to a mailbox on Halfhill.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Gina Mudclaw##58706
step
label tillers
#include "tillers_prequests"
step
label menu
'_Gina Mudclaw_ is a _Stranger_ to you. |only if rep("Gina Mudclaw")<=Stranger
'_Gina Mudclaw_ is your _Aquaintance_. |only if rep("Gina Mudclaw")==Aquaintance
'_Gina Mudclaw_ is your _Buddy_. |only if rep("Gina Mudclaw")==Buddy
'_Gina Mudclaw_ is your _Friend_. |only if rep("Gina Mudclaw")==Friend
'_Gina Mudclaw_ is your _Good Friend_. |only if rep("Gina Mudclaw")==GoodFriend
'_Gina Mudclaw_ is your _Best Friend_. |only if rep("Gina Mudclaw")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
|modelnpc Gina Mudclaw##58706
step
label cooking
.' In order to create Gina Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next mist_soup
.' Click here to go back to the menu |confirm |next menu
|modelnpc Gina Mudclaw##58706
step
label	mist_soup
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Swirling Mist Soup##104304
step
#include "auctioneer"
.buy 5 Jade Lungfish##74856
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_mist_soup_1
|tip You should at least have 525 fishing for this.
step
label	farm_mist_soup_1
goto The Jade Forest 23.6,25.6
.' Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##131474
.collect 5 Jade Lungfish##74856
step
label	create_mist_soup
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Swirling Mist Soup##104304,Cooking,25 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 44 Blue Feather##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 53.2,51.6
.talk 58706
..turnin 30390 |tip You can only turn this quest in 5 times a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Gina Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 53.2,51.6
.talk 58706
..turnin 30389 |tip Keep turning this in until you reach Best Friend Status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Haohan Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Haohan Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Haohan Mudclaw rewards you with three _Songbell Seeds_, and a mushan pet to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Haohan Mudclaw_ is a _Stranger_ to you. |only if rep("Haohan Mudclaw")<=Stranger
'_Haohan Mudclaw_ is your _Aquaintance_. |only if rep("Haohan Mudclaw")==Aquaintance
'_Haohan Mudclaw_ is your _Buddy_. |only if rep("Haohan Mudclaw")==Buddy
'_Haohan Mudclaw_ is your _Friend_. |only if rep("Haohan Mudclaw")==Friend
'_Haohan Mudclaw_ is your _Best Friend_. |only if rep("Haohan Mudclaw")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Haohan Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next tiger_steak
.' Click here to go back to the menu |confirm |next menu
step
label	tiger_steak
goto Valley of the Four Winds 53.0,51.4
.talk 58712
.learn Charbroiled Tiger Steak##104298
step
#include "auctioneer"
.buy 5 Raw Tiger Steak##74833
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_tiger_steak_1
step
label	farm_tiger_steak_1
goto The Jade Forest 62.5,24.3
.from Windward Tiger##63537+
.collect 5 Raw Tiger Steak##74833
step
label	create_tiger_steak
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Charbroiled Tiger Steak##104298,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Ruby Shard##79264
|next turnin2
step
label turnin1
goto Valley of the Four Winds 44.6,34.0
.talk 57402
..turnin 30414 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Haohan Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 44.6,34.1
.talk 57402
..turnin 30409 |tip Keep turning this in until you reach Best Friend Status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Jogu the Drunk",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Jogu the Drunk after completing the Tillers prequests.
'Becoming _Best Friends_ with Jogu the Drunk rewards you with a _Secret Stash_, which contains alcohol, and he will no longer charge for crop predictions.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Jogu the Drunk_ is a _Stranger_ to you. |only if rep("Jogu the Drunk")<=Stranger
'_Jogu the Drunk_ is your _Aquaintance_. |only if rep("Jogu the Drunk")==Aquaintance
'_Jogu the Drunk_ is your _Buddy_. |only if rep("Jogu the Drunk")==Buddy
'_Jogu the Drunk_ is your _Friend_. |only if rep("Jogu the Drunk")==Friend
'_Jogu the Drunk_ is your _Best Friend_. |only if rep("Jogu the Drunk")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Jogu the Drunk's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next carrots
.' Click here to go back to the menu |confirm |next menu
step
label	carrots
goto Valley of the Four Winds 52.8,51.8
.talk 58713
.learn Sauteed Carrots##104301
step
#include "auctioneer"
.buy 10 Juicycrunch Carrot##74841
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_carrots_1
step
label	farm_carrots_1
goto The Jade Forest 62.5,24.3
.from Windward Tiger##63537+
.collect 10 Juicycrunch Carrot##74841
step
label	create_carrots
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Sauteed Carrots##104301,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Lovely Apple##79267
|next turnin2
step
label turnin1
goto Valley of the Four Winds 53.5,52.6
.talk 58710
..turnin 30439 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Jogu the Drunk |confirm |next cooking
|next quest1 |only if rep("Jogu the Drunk")==Aquaintance
|next quest2 |only if rep("Jogu the Drunk")==Buddy
|next quest3 |only if rep("Jogu the Drunk")==Friend
|next quest4 |only if rep("Jogu the Drunk")==GoodFriend
step
label turnin2
goto Valley of the Four Winds 53.5,52.6
.talk 58710
..turnin 30435 |tip Keep turning this in until you reach the next friendship status.
|next quest1 |only if rep("Jogu the Drunk")==Aquaintance
|next quest2 |only if rep("Jogu the Drunk")==Buddy
|next quest3 |only if rep("Jogu the Drunk")==Friend
|next quest4 |only if rep("Jogu the Drunk")==GoodFriend
step
quest1
goto 53.5,52.6
.talk 58710
..accept 31320
step
quest2
goto 53.5,52.6
.talk 58710
..accept 31321
step
quest3
goto 53.5,52.6
.talk 58710
..accept 31322
step
quest4
goto 53.5,52.6
.talk 58710
..accept 31323
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Farmer Fung",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Farmer Fung after completing the Tillers prequests.
'Becoming _Best Friends_ with Farmer Fung rewards you with an _Enigma Seed_, which blooms into a random plant, and _Shaggy the Prize Yak_ for your farm
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Farmer Fung_ is a _Stranger_ to you. |only if rep("Farmer Fung")<=Stranger
'_Farmer Fung_ is your _Aquaintance_. |only if rep("Farmer Fung")==Aquaintance
'_Farmer Fung_ is your _Buddy_. |only if rep("Farmer Fung")==Buddy
'_Farmer Fung_ is your _Friend_. |only if rep("Farmer Fung")==Friend
'_Farmer Fung_ is your _Best Friend_. |only if rep("Farmer Fung")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Farmer Fung's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next wild_roast
.' Click here to go back to the menu |confirm |next menu
step
label	wild_roast
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Wildfowl Roast##104310
step
#include "auctioneer"
.buy 5 Wildfowl Breast##74839
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_wild_roast_1
step
label	farm_wild_roast_1
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 5 Wildfowl Breast##74839
step
label	create_wild_roast
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Wildfowl Roast##104310,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Marsh Lily##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 48.2,33.9
.talk 57298
..turnin 30421 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Farmer Fung |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 48.2,33.9
.talk 57298
..turnin 30420 |tip Keep turning this in until you reach Best Friend status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Old Hillpaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Old Hillpaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Old Hillpaw rewards you with a _Straw Hat_ and _Chickens_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
|modeldisplay Old Hillpaw##40249
step
label tillers
#include "tillers_prequests"
step
label menu
'_Old Hillpaw_ is a _Stranger_ to you. |only if rep("Old Hillpaw")<=Stranger
'_Old Hillpaw_ is your _Aquaintance_. |only if rep("Old Hillpaw")==Aquaintance
'_Old Hillpaw_ is your _Buddy_. |only if rep("Old Hillpaw")==Buddy
'_Old Hillpaw_ is your _Friend_. |only if rep("Old Hillpaw")==Friend
'_Old Hillpaw_ is your _Best Friend_. |only if rep("Old Hillpaw")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Old Hillpaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next turtle
.' Click here to go back to the menu |confirm |next menu
step
label	turtle
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Braised Turtle##104305
step
#include "auctioneer"
.buy 5 Raw Turtle Meat##74837
.buy 25 Juicycrunch Carrot##74841
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_turtle_1
step
label	farm_turtle_1
goto Valley of the Four Winds 67.3,29.4
.from Wyrmhorn Turtle##56256+
.collect 5 Raw Turtle Meat##74837
step
label	farm_turtle_2
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 25 Juicycrunch Carrot##74841
step
label	create_turtle
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Braised Turtle##104305,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Bluie Feather##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 31.0,53.1
.talk 58707
..turnin 30396 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Old Hillpaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 31.0,53.1
.talk 58707
..turnin 30394 |tip Keep turning this in until you reach Best Friend status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Sho",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Sho after completing the Tillers prequests.
'Becoming _Best Friends_ with Sho rewards you with a _Red Cricket_ Battle Pet and an _Orange Tree_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Sho_ is a _Stranger_ to you. |only if rep("Sho")<=Stranger
'_Sho_ is your _Aquaintance_. |only if rep("Sho")==Aquaintance
'_Sho_ is your _Buddy_. |only if rep("Sho")==Buddy
'_Sho_ is your _Friend_. |only if rep("Sho")==Friend
'_Sho_ is your _Best Friend_. |only if rep("Sho")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking.
.' Click here to continue |confirm |next eternal_blossom
.' Click here to go back to the menu |confirm |next menu
step
label	eternal_blossom
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Eternal Blossom Fish##104299
step
#include "auctioneer"
.buy 5 Jade Lungfish##74856
.buy 25 Striped Melon##74848
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_eternal_blossom_1
|tip You should at least have 525 fishing for this.
step
label	farm_eternal_blossom_1
goto The Jade Forest 55.0,71.1
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
.collect 5 Jade Lungfish##74856
step
'Skipping farming |next "+create_eternal_blossom" |only if step:Find("+farm_eternal_blossom_2"):IsComplete()
'Proceeding to Eternal Blossom Fish |next |only if default
step
label	farm_eternal_blossom_2
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 25 Striped Melon##74848
step
label	create_eternal_blossom
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Eternal Blossom Fish##104299,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 43 Lovely Apple##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 29.5,30.6
.talk 58708
..turnin 30408 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 29.5,30.6
.talk 58708
..turnin 30404 |tip Keep turning this in until you reach Best Friend status.
step
label quest
goto 29.5,30.6
.talk 58708
..accept 31529
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Tina Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Tina Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Tina Mudclaw rewards you by sending _Food_ and _Furniture_ to your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Tina Mudclaw_ is a _Stranger_ to you. |only if rep("Tina Mudclaw")<=Stranger
'_Tina Mudclaw_ is your _Aquaintance_. |only if rep("Tina Mudclaw")==Aquaintance
'_Tina Mudclaw_ is your _Buddy_. |only if rep("Tina Mudclaw")==Buddy
'_Tina Mudclaw_ is your _Friend_. |only if rep("Tina Mudclaw")==Friend
'_Tina Mudclaw_ is your _Best Friend_. |only if rep("Tina Mudclaw")==BestFriend
._
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking
.'_
.' Click here to gather gifts to raise your reputation. |confirm |next gifts
step
label cooking
.' In order to create Tina Mudclaw's favorite meal, you must have at least 550 skill points in Cooking.
.' Click here to continue |confirm |next fire_spirit
.' Click here to go back to the menu |confirm |next menu
step
label	fire_spirit
goto Valley of the Four Winds 52.5,51.7
.talk 58715
.learn Fire Spirit Salmon##104308
step
#include "auctioneer"
.buy 5 Emperor Salmon##74859
.buy 25 Scallions##74843
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_fire_spirit_1
|tip You should at least have 525 fishing for this.
step
label	farm_fire_spirit_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
.collect 5 Emperor Salmon##74859
step
label	farm_fire_spirit_2
goto Krasarang Wilds 62.0,40.6
.from Riverblade Raider##59714+, Riverblade Thief##64034+
.collect 25 Scallions##74843
|next create_fire_spirit
step
label	create_fire_spirit
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Fire Spirit Salmon##104308,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Ruby Shard##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 45.0,33.8
.talk 58761
..turnin 30433 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Tina Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 45.0,33.8
.talk 58761
..turnin 30428 |tip Keep turning this in until you reach Best Friend status.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Nat Pagle",[[
description This guide will help you get BestFriend with the individuals in MoP
step
label menu
'_Nat Pagle_ is a _Stranger_ to you. |only if rep("Nat Pagle")<=Stranger
'_Nat Pagle_ is your _Aquaintance_. |only if rep("Nat Pagle")==Aquaintance
'_Nat Pagle_ is your _Buddy_. |only if rep("Nat Pagle")==Buddy
'_Nat Pagle_ is your _Friend_. |only if rep("Nat Pagle")==Friend
'_Nat Pagle_ is your _Good Friend_. |only if rep("Nat Pagle")==GoodFriend
'_Nat Pagle_ is your _Best Friend_. |only if rep("Nat Pagle")==BestFriend
|confirm
step
label menu2
'In order to successfully gain rep with Nat Pagle you have to catch fish, so we recommend that you are at least 525 in Fishing.
'The fish you catch in this guide are unique, meaning you can only have one of each in your bag at any given time.
|confirm
step
label menu3
'Click here to be taken to catch the _Flying Tiger Gourami_. |confirm |next tiger
.'_
'Click here to be taken to catch the _Mimic Octopus_. |confirm |next octo
.'_
'Click here to be taken to catch the _Spinefish Alpha_. |confirm |next alpha
.'_
'Click here to turn in the fish to Nat Pagle for daily reputation gains. |confirm |next turnin
step
label tiger
goto Krasarang Wilds 64.0,28.3
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast fishing##131474
.collect 1 Flying Tiger Gourami##86542
..accept 31443 |use Flying Tiger Gourami##86542
|next menu3
step
label octo
goto Krasarang Wilds 71.0,47.9
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast fishing##131474.
.collect 1 Mimic Octopus##86545
..accept 31446 |use Mimic Octopus##86545
|next menu3
step
label alpha
goto Dread Wastes 37.8,23.0
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast fishing##131474.
.collect 1 Spinefish Alpha##86544
..accept 31444 |use Spinefish Alpha##86544
|next menu3
step
label turnin
goto Krasarang Wilds 68.4,43.5
.talk 63721
..turnin 31444
..turnin 31446
..turnin 31443
|next menu
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Lorewalkers",[[
description This guide will help you become Exalted with the Lorewalkers.
step
goto The Veiled Stair/5 54.8,16.0
.click The Defiant##
.achieve Between a Saurok and a Hard Place##6716/2
step
goto The Jade Forest 66.0,87.6
.click Watersmithing##215779
.achieve Fish Tales##6846/1
step
goto 55.9,56.8
.click The Emperor's Burden - Part 3##213421
.achieve The Seven Burdens of Shaohao##6855/3
step
goto 47.1,45.2
.click The Emperor's Burden - Part 1##215799
.achieve The Seven Burdens of Shaohao##6855/1
step
goto 35.7,30.5
.click The First Monks##213415
.achieve What is Worth Fighting For##6858/3
step
goto 37.3,30.1
.click Xin Wo Yin the Broken Hearted##213512
.achieve Legend of the Brewfathers##7230/2
step
goto 26.4,28.4
.click Hozen Speech##211990
.achieve Hozen in the Mist##6850/1
step
goto 42.3,17.4
.click Spirit Binders##213333
.achieve The Dark Heart of the Mogu##6754/3
step
goto 67.7,29.4
.click The Saurok##213327
.achieve Between a Saurok and a Hard Place##6716/1
step
goto Krasarang Wilds 72.2,31.1
.click Waiting for the Turtle##215765
.achieve Ballad of Liu Lang##6856/4
step
goto 51.0,31.7
.click The Lost Dynasty##213332
.achieve The Dark Heart of the Mogu##6754/2
step
goto 52.2,86.3 |n
.' Enter the cave here |goto Krasarang Wilds 52.2,86.3 |noway |c
step
goto 52.4,87.6
.click Hozen Maturity##211993
.achieve Hozen in the Mist##6850/2
step
goto 40.4,51.7 |n
.' Enter the Temple here |goto 40.4,51.7 |noway |c
step
goto 41.2,55.8 |n
.' Go up the stairs |goto 41.2,55.8 |noway |c
step
goto 40.5,56.6
.click The Emperor's Burden - Part 4##213422
.achieve The Seven Burdens of Shaohao##6855/4
step
goto 32.8,29.4
.click The Last Stand##213330
.achieve Between a Saurok and a Hard Place##6716/4
step
goto 30.5,38.5
.click Origins##215782
.achieve Fish Tales##6846/3
step
goto 78.8,11.1 |n
.' Follow the path up |goto 78.8,11.1 |noway |c
step
goto 81.4,11.5
.click Quan Tou Kuo the Two Fisted##213407
.achieve Legend of the Brewfathers##7230/1
step
goto Valley of the Four Winds 55.1,47.2
.click A Most Famous Bill of Sale##
.achieve Ballad of Liu Lang##6856/2
step
goto 20.3,55.9
.click The Birthplace of Liu Lang##
.achieve Ballad of Liu Lang##6856/1
step
goto 34.6,63.9
.click The Wondering Widow##
.achieve Ballad of Liu Lang##6856/3
step
goto 18.8,31.7
.click Pandaren Fighting Tactics##
.achieve What is Worth Fighting For##6858/1
step
goto 61.2,34.7
.click Waterspeakers##
.achieve Fish Tales##6846/2
step
goto 83.2,21.2
.click Embracing the Passion##
.achieve Hozen in the Mist##6850/3
step
goto Vale of Eternal Blossoms 68.8,44.3
.click The Emperor's Burden - Part 8##
.achieve The Seven Burdens of Shaohao##6855/8
step
goto 52.9,68.6
.click Always Remember##
.achieve What is Worth Fighting For##6858/2
step
goto 40.2,77.5
.click The Thunder King##
.achieve The Dark Heart of the Mogu##6754/4
step
goto 26.6,21.5
.click Together, We Are Strong##
.achieve What is Worth Fighting For##6858/4
step
goto Kun-Lai Summit 74.5,83.5
.click Role Call##
.achieve Fish Tales##6846/4
step
goto 67.8,48.4
.click The Emperor's Burden - Part 6##
.achieve The Seven Burdens of Shaohao##6855/6
step
goto 71.7,63.0
.click Yaungoil##
.achieve The Song of the Yaungol##6847/3
step
goto 63.0,40.8
.click Victory in Kun-Lai##
.achieve What is Worth Fighting For##6858/5
step
goto 50.3,79.3
.click Yaungol Tactics##
.achieve The Song of the Yaungol##6847/1
step
'Enter the Temple here |goto 52.8,46.8 |c
step
goto Kun-Lai Summit/17 58.2,70.5
.click Valley of the Emperors##
.achieve The Dark Heart of the Mogu##6754/1
step
'Leave the Temple here |goto Kun-Lai Summit/17 87.8,55.4 |c
step
goto Kun-Lai Summit 45.8,61.9
.click The Hozen Ravage##
.achieve Hozen in the Mist##6850/4
step
goto 44.7,52.4
.click Ren Yun the Blind##
.achieve Legend of the Brewfathers##7230/3
step
goto 43.8,51.2
.click The Emperor's Burden - Part 2##
.achieve The Seven Burdens of Shaohao##6855/2
step
goto 41.0,42.4
.click The Emperor's Burden - Part 7##
.achieve The Seven Burdens of Shaohao##6855/7
step
goto Townlong Steppes 65.4,50.0
.click Dominance##
.achieve The Song of the Yaungol##6847/2
step
goto 84.1,72.9
.click Trapped in a Strange Land##
.achieve The Song of the Yaungol##6847/4
step
goto 37.8,62.9
.click The Emperor's Burden - Part 5##
.achieve The Seven Burdens of Shaohao##6855/5
step
goto Dread Wastes 53.6,15.9 |n
.' Enter the cave here |goto 53.6,15.9 |noway |c
step
goto 52.5,10.1
.click Amber##
.achieve Heart of the Mantid Swarm##6857/3
step
goto 35.5,32.6
.click The Empress##
.achieve Heart of the Mantid Swarm##6857/4
step
goto 48.4,32.8
.click Cycle of the Mantid##
.achieve Heart of the Mantid Swarm##6857/1
step
goto 59.9,55.1
.click Mantid Society##
.achieve Heart of the Mantid Swarm##6857/2
step
goto 67.4,60.8
.click The Deserters##
.achieve Between a Saurok and a Hard Place##6716/3
step
'Check your in-game mailbox for items from Lorewalker Cho
.collect 1 The Ballad of Liu Lang##83780
.collect 1 The Dark Heart of the Mogu##83772
.collect 1 Between a Saurok and a Hard Place##83769
.collect 1 The Song of the Yaungol##83777
.collect 1 Hozen in the Mist##83770
.collect 1 Heart of the Mantid Swarm##83773
.collect 1 The Seven Burdens of Shaohao##83779
.collect 1 What is Worth Fighting For##83774
.collect 1 Fish Tales##83771
step
'Use each item in your bags to accept the quests.
.accept 31103 |use The Ballad of Liu Lang##83780
.accept 31095 |use The Dark Heart of the Mogu##83772
.accept 31055 |use Between a Saurok and a Hard Place##83769
.accept 31100 |use The Song of the Yaungol##83777
.accept 31093 |use Hozen in the Mist##83770
.accept 31097 |use Heart of the Mantid Swarm##83773
.accept 31102 |use The Seven Burdens of Shaohao##83779
.accept 31096 |use What is Worth Fighting For##83774
.accept 31094 |use Fish Tales##83771
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31096
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31100
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31102
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31095
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31103
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31093
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31097
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31094
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31055
.' Watch his story, then click here |confirm always
step
'Congratulations, you are now Exalted with the Lorewalkers!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Anglers",[[
description This guide will take you through The Anglers dailies
startlevel 90
step
'You must have fishing in order to accept dailies from this faction.
|confirm
step
label "start"
goto Vale of Eternal Blossoms 86.5,60.1
.talk 64033
..accept 31369
|only if not completedq(31369)
step
goto Krasarang Wilds 67.9,45.2
.talk 59584
..turnin 31369
|only if not completedq(31369)
step
'There will only be three dailies available from the following questgivers. It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
|confirm
step
goto 67.9,45.2
.talk 59584
..accept 30584 |daily |or
..accept 30586 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.5,44.6
.talk 60136
..accept 30678 |daily |or
..accept 30698 |daily |or
.'_
.' If this quest is unavailable today, click here. |confirm
step
goto 67.5,43.5
.talk 59586
..accept 30700 |daily |or
..accept 30588 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 68.3,43.5
.talk 60674
..accept 30754 |daily |or
..accept 30753 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.6,42.5
.talk 60135
..accept 30613 |daily |or
..accept 30658 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,42.1
.talk 60673
..accept 30585 |daily |or
..accept 30598 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.2,41.2
.talk 60675
..accept 30763 |daily |or
..accept 30701 |daily |or
.'_
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
.click Jagged Abalone##261
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
'Use your fishing skill to fish up 7 Dojani Eel. |cast Fishing##131474
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
goto 67.5,44.8
.click Goblin Fishing Raft
.' Ride a Goblin Fishing Raft |havebuff Rafting
|only if havequest(30698)
step
goto 64.3,50.7
'Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
.get 15 Shipwreck Debris |q 30698/1
.' You can find more Debris at [64.3,50.6]
|only if havequest(30698)
step
goto 65.2,47.5
.click Pristine Crane Egg##1867
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
goto 68.4,43.4
.talk 63721
.buy 1 Grand Commendation of the Anglers##93225
.' Use the Commendation of the Anglers you just purchased. |use Grand Commendation of the Anglers##93225
.' If you have already purchased this (either on this or another character), click here. |confirm
|only if rep("The Anglers")>=Revered
step
'You have reached the end of this guide.
.' Click here to go back to the dailies. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The August Celestials",[[
description This guide will take you through The August Celestials dailies
startlevel 90
step
#include "August_Celestials"
step
label end
'This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Order of the Cloud Serpent",[[
description This guide will take you through the Order of the Cloud Serpent dailies
startlevel 90
step
label	start
'Proceeding to Order of the Cloud Serpent Dailies |condition completedq(30142) |next "dailies" |only if completedq(30142)
'Moving to the Order of the Cloud Serpent prequests. |next |condition not completedq(30142) |only if not completedq(30142)
step
goto Vale of Eternal Blossoms 85.8,62.3
.talk 64484
..accept 31373
step
goto The Jade Forest 57.8,45.0
.talk 58228
..turnin 31373
step
goto 57.7,45.0
.talk 58564
..accept 30134
step
goto 65.3,31.7
.talk 58225
..turnin 30134
..accept 30135
..accept 30136
..accept 30137
step
goto 64.4,31.1
.' Use the Silken Rope in your bags on Windward Hatchlings |use Silken Rope##78947
.' Get 6 Hatchlings and bring them to [65.8,31.2]
.' Return 6 Windward Hatchlings to their nests. |q 30136/1
step
goto 68.1,31.2
.from Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+
.' Kill 8 Slitherscale saurok. |q 30135/1
.click Serpent Egg
.get 6 Serpent Egg##78959 |q 30137/1
step
goto 65.3,31.7
.talk 58225
..turnin 30135
..turnin 30136
..turnin 30137
..accept 30138
..turnin 30138
step
goto 65.3,31.7
.talk 58225 |tip You will only accept one of the following quests.
..accept 30139 |or
..accept 30140 |or
..accept 30141 |or
step
goto 57.6,45.1
.talk 58228 |tip You will only turn in one of the following quests.
..turnin 30139
..turnin 30140
..turnin 30141
..accept 30142
step
.' Watch the scene and see your egg hatch.
.' Egg Hatched. |q 30142/1
step
goto 57.6,45.1
.talk 58228
..turnin 30142
step
label dailies
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
..accept 30151 |daily |or 2
..accept 31704 |daily |or 2
..accept 30156 |daily |or 2
..accept 30154 |daily |or 2
..accept 30150 |daily |or 2
.'_
.' Click here if these quests are unavailable |confirm
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if not completedq(30143)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
..accept 30151 |daily |or 2
..accept 31704 |daily |or 2
..accept 30156 |daily |or 2
..accept 30154 |daily |or 2
..accept 30150 |daily |or 2
.'_
.' Click here if these quests are unavailable |confirm
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if completedq(30143)
step
goto 57.6,45.1
.talk 58228
..accept 30155 |daily |or 2
..accept 30158 |daily |or 2
..accept 31698 |daily |or 2
..accept 31706 |daily |or 2
..accept 31707 |daily |or 2
..accept 31712 |daily |or 2
.'_
.' Click here if these quests are unavailable |confirm |only if not havequest(30155) and not havequest(30158) and not havequest(31698) and not havequest(31706)
.' Click here if there no more quests available today |confirm |only if havequest(30155) or havequest(30158) or havequest(31698) or havequest(31706)
step
goto 57.5,44.7
.talk 58413
..accept 30148 |daily |only if skill("First Aid")>=525
..accept 30149 |daily |only if skill("Cooking")>=525
..accept 30147 |daily |only if skill("Archaeology")>=525
..accept 30146 |daily |only if skill("Fishing")>=525
step
goto 57.6,44.9
.talk 58564
..accept 31194 |daily |or
..accept 31703 |daily |or
..accept 31701 |daily |or
..accept 31702 |daily |or
..accept 31711 |daily |or
..accept 31721 |daily |or
..accept 31717 |daily |or
..accept 31720 |daily |or
..accept 31718 |daily |or
..accept 31715 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
step
goto 58.3,45.0
.talk 58509
..accept 31699 |daily |or
..accept 31700 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
step
goto 58.5,44.7
.talk 58510
..accept 30159 |daily |or
..accept 30157 |daily |or
.'_
.' Click here if these quests are unavailable today |confirm |only if not havequest(30159) or not havequest(30157)
step
goto 57.5,44.0
.talk 58508
..accept 31709 |daily
.'_
.' Click here if this quest is not available today |confirm
step
goto 57.3,43.5
.talk 58511
..accept 31708 |daily
..accept 31714 |daily
.'_
.' Click here if this quest is unavailable |confirm
|only if havequest(31711)
step
goto 58.6,43.7
.talk 58420
..accept 30152 |daily
.'_
.' Click here if this quest is unavailable |confirm
step
goto 58.0,43.7
.talk 58506
..accept 31713
.'_
.' Click here if this quest is unavailable |confirm
step
goto 58.6,43.7
.talk 58420
.' Tell her you are ready to start the Sky Race.
.' Ride your Dragon! |invehicle
|only if havequest(30152)
step
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4	58.1,46.0
'Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings
.' Pass 10 Checkpoints. |q 30152/1
.' Pass underneath the Finish Line |q 30152/2
|only if havequest(30152)
step
goto 57.3,43.5
.talk 58511
.' Challenge him to a duel!
.' Defeat Qua-Ro Whitebrow |q 31721/1
|only if havequest(31721)
step
goto 58.0,43.7
.talk 58506
.' Challenge him to a duel!
.' Defeat Ace Longpaw |q 31717/1
|only if havequest(31717)
step
goto 57.5,44.0
.talk 58508
.' Challnge him to a duel!
.' Defeat Big Bao |q 31718/1
|only if havequest(31718)
step
goto 58.5,44.7
.talk 58510
.' Challenge her to a duel!
.' Defeat Suchi the Sweet |q 31720/1
|only if havequest(31720)
step
goto 69.8,31.3
.kill Slitherscale Lizard-Lord##63536 |q 31194/1
|only if havequest(31194)
step
goto 68.1,31.2 |only if havequest(30155) or havequest(30158)
.from Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |only if havequest(30155)
.' Kill 8 Slitherscale saurok |q 30155/1 |only if havequest(30155)
.click Slitherscale Weapons |only if havequest(30158)
.get 5 Slitherscale Harpoon##79025 |q 30158/1 |only if havequest(30158)
.click Serpent Egg |only if havequest(30159)
.get 8 Serpent Eggs |q 30159/1 |only if havequest(30159)
step
goto 64.6,33.3
.from Saltback Turtle##58218+, Saltback Yearling##58219+
.collect 15 Saltback Meat Scrap##79028 |n
.' Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
.collect 3 Saltback Meat##79027 |n
.' Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1
step
goto 57.2,45.2
.' Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
.' Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
.' Catch the Ball 8 times. |q 30151/1
|only if havequest(30151)
step
goto 55.1,46.5
.click Hatchling Poop##9572 |tip It is all around this area.
.get 5 Tiny Bags of Poop |q 31704/1
|only if havequest(31704)
step
goto 55.1,46.5
.click Hatchling Poop##9572 |tip It is all around this area.
.get 5 Big Bags of Poop |q 31716/1
|only if havequest(31716)
step
goto 57.5,45.4
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31704
|only if havequest(31704)
step
goto 57.5,45.4
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31716
|only if havequest(31716)
step
goto 62.7,27.4
.kill Shadowfae Madcap##65613 |q 31703/1
|only if havequest(31703)
step
goto 64.7,25.7
.kill Windward Huntress##63538 |q 31701/1
|only if havequest(31701)
step
goto 63.8,22.3
.kill Windward Saber## |q 31702/1
|only if havequest(31702)
step
goto 62.8,24.7
.from Windward Tiger##63537 |only if havequest(30154)
.get 5 Tiger Flank##85282 |q 30154/1 |only if havequest(30154)
.kill 7 Shadowfae Trickster |q 31699/1 |only if havequest(31699)
.from Windward Alpha+, Windward Tiger##63537+ |only if havequest(31698)
.' Kill 8 Windward Tigers. |q 31698/1 |only if havequest(31698)
.click Stolen Boots |only if havequest(31700)
.get 14 Stolen Boots##89054 |q 31700/1 |only if havequest(31700)
step
'Enter the cave here. |goto 58.0,31.7 <5 |c
|only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707)
step
goto The Jade Forest/15 62.7,25.7
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Northeastern Sha Disturbance |q 31709/2
|only if havequest(31709)
step
goto The Jade Forest/15 37.0,31.9
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Northwestern Sha Disturbance |q 31709/1
|only if havequest(31709)
step
goto The Jade Forest/15 35.7,40.2
.kill Seed of Doubt |q 31711/1
|only if havequest(31711)
step
goto The Jade Forest/15 61.0,74.1
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Southern Sha Disturbance |q 31709/3
|only if havequest(31709)
step
.' Kill Widowspawn |only if havequest(31710)
.get 100 Tiny Spider Eye's |q 31710/1 |only if havequest(31710)
.kill 7 Weeping Widow |q 31706/1 |only if havequest(31706)
.click Serpent's Scale |only if havequest(31708)
.get 25 Serpent's Scale##88895 |q 31708/1 |only if havequest(31708)
.from Widow's Web##65634+ |only if havequest(31707)
.' Free 5 Sri-La Villagers |q 31707/1 |only if havequest(31707)
step
'Leave the cave. |goto The Jade Forest/15 75.8,19.0 |c
|only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707)
step
goto The Jade Forest 55.6,29.0
.kill Lord Oona##65628 |q 31715/1
|only if havequest(31715)
step
goto 55.2,28.4
.click Serpent
.collect 10 Rescued Serpent##88894 |q 31714/1
|only if havequest(31714)
step
goto 55.2,28.4
.from Oona Brewchugger##65624
.click Stolen Sri-La Keg
.' Collect 100 Sri-La Stout |q 31713/1
|modeldisplay 11025
|only if havequest(31713)
step
goto 55.2,28.0
.from Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+
.' Kill 13 Oona hozen |q 31712/1
|only if havequest(31712)
step
goto The Jade Forest 64.5,31.1
.' Use your Silken Rope on _Windward Hatchlings_. |use Silken Rope##78947
.' Bring the Windward Hatchlings to the nest at [63.4,31.4].
.' Return 6 Windward Hatchlings |q 30157/1
|modelnpc 58243
|modelnpc 58220
|modelnpc 58244
|only if havequest(30157)
step
'Use your First Aid skill to create 8 Windwood Banadages of Heavy Windwool Bandages, or buy them off of the auction house.
.create 8 Windwool Bandage##102697,First Aid,8 total |n
.collect 8 Windwool Bandage##72985 |or
.' or
.create 8 Heavy Windwool Bandage##102699,First Aid,8 total |n
.collect 8 Heavy Windwool Bandage##72986 |or
|only if havequest(30148)
step
goto 63.9,31.1
.' Use your Windwool Bandages on Injured Hatchlings |use Windwool Bandage##72985
.' or
.' Use your Heavy Windwool Bandages on Injured Hatclings |use Heavy Windwool Bandage##72986
.' Bandage 8 Injured Hatchlings |q 30148/1
|modelnpc Injured Hatchling##58416
|only if havequest(30148)
step
goto 57.0,43.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here |cast Fishing##7620
.get 10 Sugar Minnow##79046 |q 30146/1 |only if havequest(30146)
.collect 10 Golden Carp##74866 |only if havequest(30149)
|only if havequest(30146) or havequest(30149)
step
'Use your Cooking skill to create 5 Fish Cakes, or buy them off of the auction house.
.create 5 Fish Cake##104297,Cooking,5 total |q 30149/1
|only if havequest(30149)
step
goto The Jade Forest 55.1,47.2
.from Honeykeeper##58363+
..get 30 Honeycomb |q 30150/1
|only if havequest(30150)
step
goto 58.0,43.7
.talk 58506
..turnin 31713
|only if havequest(31713)
step
goto 57.6,44.9
.talk 58564 |tip You will only have a couple of these quests.
..turnin 31194
..turnin 31701
..turnin 31702
..turnin 30155
..turnin 30158
..turnin 31703
..turnin 30154
..turnin 31699
..turnin 31698
..turnin 31700
..turnin 31706
..turnin 31711
..turnin 31707
..turnin 30152
..turnin 31721
..turnin 31717
..turnin 31720
..turnin 31718
..turnin 30159
..turnin 31709
..turnin 30157
..turnin 31712
..turnin 30156
..turnin 31715
..turnin 31714
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31710
|only if havequest(31710)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if not completedq(30143)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if completedq(30143)
step
'Open your world map, find dig sites in Pandaria, then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.get 6 Serpentrider Relic## |q 30147/1
|only if havequest(30147)
step
goto 57.5,44.7
.talk 58413
..turnin 30148 |only if skill("First Aid")>=525
..turnin 30149 |only if skill("Cooking")>=525
..turnin 30147 |daily |only if skill("Archaeology")>=525
..turnin 30146 |daily |only if skill("Fishing")>=525
step
goto 57.5,45.4
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 30150
|only if havequest(30150)
step
goto 57.6,44.9
.talk 58564
..turnin 30151
|only if havequest(30151)
step
goto 57.6,44.9
.talk 58564
..accept 31705 |daily
|only if completedq(30151)
step
goto 57.0,41.2
.' Use the Golden Honey in your bags |use Golden Honey##89113
.kill Orchard Needler |q 31705/1
|only if havequest(31705)
step
goto 57.6,44.9
.talk 58564
..turnin 31705
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label revered
goto 56.6,44.4
.talk 58414
.buy 1 Grand Commendation of the Order of the Cloud Serpent##93229
.' Use the Commendation of the Order of the Cloud Serpent##93229 you just purchased. |use Grand Commendation of the Order of the Cloud Serpent##93229
.' If you have already purchased this (either on this or another character), click here. |confirm
|only if rep("Order of the Cloud Serpent")>=Revered
step
goto 57.6,44.9
.talk 58564
..accept 30143
step
goto 58.6,43.7
.talk 58420
.' Ask Instructor Windbalde how your serpent is doing.
.' Speak to Instructor Windblade |q 30143/1
step
goto 58.6,43.7
.talk 58420
..turnin 30143
..accept 30144
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c
|only if havequest(30144)
step
'Fly your Cloud Serpent through the rings made from clouds.
.' Fly through 6 Cloud Rings |q 30144/1
step
goto 58.6,43.7
.' Click the Leave Vehicle button |outvehicle |c
step
goto 58.6,43.7
.talk 58420
..turnin 30144
..accept 30145
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c
|only if havequest(30145)
step
'Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide. If you move too slowly or get too far away from the guide, the course will restart.
.' Finish the course |q 30145/1
step
goto 58.6,43.7
.talk 58420
..turnin 30145
..accept 30187
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c
|only if havequest(30187)
step
path	strict; curved; loop
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4
'Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings
.' Pass 10 Checkpoints |q 30187/1
step
goto 58.6,43.7
.talk 58420
..turnin 30187
|next "end"
step
label exalted
goto 57.6,45.0
.talk 58564
..accept 31811
step
'Watch the cinematic
.' Join the Order of the Cloud Serpent |q 31811/1
step
goto 57.6,45.0
.talk 58564
..turnin 31811
step
Proceeding to the next step |next end |only if default
Proceeding to Riding the Skies Quest |next exalted |only if rep('Order of the Cloud Serpent')==Exalted
step
label	exalted
goto 57.7,44.9
.talk 58564
..accept 31810
step
goto 57.7,44.9
.talk 58564
..turnin 31810
step
label end
'This the end of our daily guide.
.' Click here to go back to the beginning |confirm |next start
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Shado-Pan",[[
description This guide will take you through the Shado-Pan dailies
startlevel 90
step
#include "Shado_Pan_Daily_A"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Tillers",[[
description This guide will take you through The Tillers dailies
startlevel 90
#include "A_Tillers_DailyQuest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Golden Lotus",[[
description This guide will take you through The Golden Lotus dailies
startlevel 90
#include "Golden_Lotus"
step
label end
'You have reached the end of our guide.
.' Click here to go back to the beginning of the guide. |confirm |next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Klaxxi",[[
description This guide will take you through The Klaxxi dailies
startlevel 90
step
'This guide requires that you have completed all of the quests in the Dread Wastes.
|confirm
step
label	klaxxi start
goto Dread Wastes 55.0,35.9
.talk 62538
..accept 31231 |daily |or 2
..accept 31235 |daily |or 2
..accept 31109 |daily |or 2
..accept 31267 |daily |or 2
..accept 31111 |daily |or 2
..accept 31505 |daily |or 2
.'
.' Click here if no quests are available today |confirm |only if not havequest(31109) and not havequest(31231) and not havequest(31235) and not havequest(31267) and not havequest(31111)
|confirm |only if havequest(31109) or havequest(31231) or havequest(31235) or havequest(31267) or havequest(31111)
step
goto 54.3,36.1
.talk 62180
..accept 31232 |daily |or 2
..accept 31233 |daily |or 2
..accept 31496 |daily |or 2
..accept 31270 |daily |or 2
..accept 31269 |daily |or 2
..accept 31507 |daily |or 2
.'_
|confirm
step
goto 54.3,35.9
.talk 65253
..accept 31271 |daily |or 2
..accept 31502 |daily |or 2
..accept 31503 |daily |or 2
..accept 31234 |daily |or 2
..accept 31508 |daily |or 2
..accept 31509 |daily |or 2
.'_
|confirm
|only if completedq(31606)
step
goto 54.3,35.8
.talk 63758
..accept 31238 |daily |or 2
..accept 31487 |daily |or 2
..accept 31494 |daily |or 2
..accept 31268 |daily |or 2
..accept 31024 |daily  |or 2
..accept 31808 |daily |or 2
..accept 31506 |daily |or 2
.'_
|confirm
step
goto 54.9,36.2
.talk 62151
..accept 31216 |daily
.'_
|confirm
|only if completedq(31211)
step
goto 54.8,36.2
.talk 63785
..accept 31237 |daily |or
..accept 31510 |daily |or
..accept 31272 |daily |or
..accept 31504 |daily |or
.'_
|confirm
|only if completedq(31439)
step
goto 55.0,35.4
.talk 62774
..accept 31959
|only if rep("The Klaxxi")>=Exalted
step
goto 55.1,35.9
.talk 62538
.' Tell him:
.' <Please Fly me to the Terrace of Gurthan.> |invehicle
|only if havequest(31237)
step
goto 67.9,24.3
.' Kill creatures until you get the buff:
.' Pheremone Tracking |havebuff Interface\Icons\Ability_Rogue_BloodyEye
.' Locate and kill Eye's of the Empress. |tip Start looking for red mist on the groud first.
.kill 6 Eye of the Emepress##63783+ |q 31237/1
|only if havequest(31237)
step
'In order to do the 'hidden' quest for this area, you must have at least one other person to help you.
|confirm
|only if havequest(31237)
step
goto 66.2,31.8
.' Around this location you should be able to see a _green rune_ and a _red rune_.
.' One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_. This will cause a level 90 Elite to spawn.
.from Warlord Gurthan##65502
.collect Ashes of Warlord Gurthan##88715
|only if havequest(31237)
step
.' Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
..accept 31677
|only if havequest(31237)
step
goto 54.9,36.2
.talk 62151
.' Talk to Xaril and tell him:  |q 31216/1
.' <I am ready to fly, Xaril.> |invehicle
|only if havequest(31216)
step
'Use the _Venom Bomb_ to kill the small enemies.
.' Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies.
.kill 200 Mantid |q 31216/2
.kill 3 Kunchong |q 31216/3
|only if havequest(31216)
step
'Click the Return to Klaxxl'vess button on your action bar |outvehicle
|only if havequest(31216)
step
goto 50.8,41.3
.clicknpc Kovok##63765
.' Locate Kovok. |q 31808/1
|only if havequest(31808)
step
'Use the abilities on your hotbar to complete your task.
.from Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
.' Kill 200 Mantid. |q 31808/2
|only if havequest(31808)
step
goto 55.0,35.9
.talk 62538
.' Ask him to fly you to the Clutches of Shek'zeer. |invehicle
|only if havequest(31109)
step
goto 38.3,30.3
'Use the Sonic Divebomb ability on your new hotbar to land. |outvehicle
|only if havequest(31109)
step
'Enter this building. |goto 37.0,28.1 <5 |c
|only if havequest(31496)
step
goto 37.4,29.3
.click Central Feeder##12991
.' Sample the Central Feeder |q 31496/1
|only if havequest(31496)
step
'Leave this building. |goto 37.0,28.1 <5 |c
|only if havequest(31496)
step
'Enter this building. |goto 39.3,29.3 <5 |c
|only if havequest(31496)
step
goto 39.1,30.5
.click Northeast Feeder##12991
.' Sample the Northeast Feeder |q 31496/4
|only if havequest(31496)
step
'Leave this building. |goto 39.3,29.3 <5 |c
|only if havequest(31496)
step
goto 39.3,30.9
.kill Vess-Guard Na'kal##64890 |q 31503/1
|only if havequest(31503)
step
'Enter this building. |goto 38.3,32.0 <5 |c
|only if havequest(31496)
step
goto 37.9,33.1
.click East Feeder##12991
.' Sample the East Feeder |q 31496/2
|only if havequest(31496)
step
'Leave this building. |goto 38.3,32.0 <5 |c
|only if havequest(31496)
step
'Enter this building. |goto 36.3,32.3 <5 |c
|only if havequest(31496)
step
goto 37.0,32.8
.click North Feeder##12991
.' Sample the North Feeder |q 31496/3
|only if havequest(31496)
step
'Leave this building. |goto 36.3,32.3 <5 |c
|only if havequest(31496)
step
goto 35.2,31.3
.from Shek'zeer Needler##64714+
.get 24 Needler Wings##87401 |q 31502/1
|only if havequest(31502)
step
goto 66.0,19.3
.from Greatback Mushan##62029
.get 6 Mushan Tongue##85665 |q 31238/1
.' You can find more Mushan around [56.9,23.4]
|only if havequest(31238)
step
goto 73.2,22.5
'Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if havequest(31235)
.' Destroy 20 Dreadspinner Eggs |q 31235/1 |only if havequest(31235)
.kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if havequest(31231)
|only if havequest(31235) or havequest(31231)
step
goto 68.1,30.0
.click Gurthani Tablet
.get 8 Gurthani Tablet##85634 |q 31232/1
|only if havequest(31232)
step
goto 67.7,37.1
.from Mire Beast##63731+
.get 1 Pristine Mire Beast Eye## |q 31234/1
|only if havequest(31234)
step
goto 66.6,43.8
.click Amber Tap |tip These are located on trees. Look for Sapfly packs to find these easier. |modelnpc Sapfly##62386
.click Amber Pot
.get 6 Amber Sap##85664 |q 31233/1
|only if havequest(31233)
step
goto 42.0,33.7
.click Pheromone Mine
.' Disable 8 Pheromone Mines |q 31504/1
.' You can find more mines around [48.1,31.4]
|only if havequest(31504)
step
goto 44.9,35.6
.' Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if havequest(31487)
.kill 4 Dread Kunchong##64717 |q 31487/1 |only if havequest(31487)
.kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if havequest(31487)
.click Kunchong Cage |only if havequest(31494)
.' Free 8 Kunchong Hatchlings |q 31494/1 |only if havequest(31494)
|only if havequest(31487) or havequest(31494)
step
goto 44.4,43.0
.from Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
.' Kill 40 Shek'zeer Mantid. |q 31109/1
|only if havequest(31109)
step
goto 41.4,33.2
.from Karanosh##64724 |tip He wanders around this area, so you may have to search for him.
.collect Enormous Kunchong Mandibles##87878
.' Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
..accept 31599
|only if havequest(31109)
step
goto 58.6,51.1
.kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |only if havequest(31270)
.from Chillwater Turtle##62160+ |only if havequest(31024)
.get 4 Meaty Turtle Haunch##82869 |q 31024/1 |only if havequest(31024)
|only if havequest(31270) or havequest(31024)
step
goto 62.0,65.8
.kill 3 Ik'thik Genemancer##63257+ |q 31271/1
.kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2
|only if havequest(31271)
step
goto 61.4,70.3
.' Use the Sonic Emitter in your bags on Ik'thik Amberstingers. |use Sonic Emitter##85884
.from Ik'thik Amberstinger##63728+
.get 3 Amber-Encrusted Brain##85885 |q 31268/1
|only if havequest(31268)
step
goto 60.7,67.7
.from Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+ |tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
.kill 6 Infected wildlife |q 31272/1
|only if havequest(31272)
step
'Enter the tunnel here. |goto 66.8,63.8 <5 |c
|only if havequest(31269)
step
goto 66.5,66.0
.kill Mistblade Scale-Lord##63179 |q 31269/1
|only if havequest(31269)
step
'Leave the tunnel. |goto 66.8,63.8 <5 |c
|only if havequest(31269)
step
goto 67.2,59.3
.kill 6 Mistblade Ripper##61970+ |q 31267/1
|only if havequest(31267)
step
goto 55.1,35.9
.talk 62538
.' Ask him to fly you to Zan'vess |invehicle
|only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
step
goto 31,70
'Use the Sonic Divebomb ability on your new hotbar to land. |outvehicle
|only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
step
'As you complete quests in this area:
.click Dreadspore Bulbs##391
.' Destroy 15 Dreadspore Bulbs |q 31509/1 |n
|confirm
|only if havequest(31509)
step
goto 31.5,69.6
.from Kypari Crawler##65231+ |only if havequest(31508)
.get 6 Kyparite Shards |q 31508/1 |only if havequest(31508)
.from Thought-Bound Miner##64970+ |only if havequest(31506)
.get 6 Zan'thik Shackles |q 31506/1 |only if havequest(31506)
.kill 6 Zan'thik Impaler##64971+ |q 31111/1 |only if havequest(31111)
.kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |only if havequest(31111)
|only if havequest(31506) or havequest(31111) or havequest(31508)
step
goto 33.4,61.0
.from Kypa'rak##65229
.collect 1 Massive Kyparite Core
.'_
.' Click the Massive Kyparite Core in your bags |use Massive Kyrapite Core##87871
..accept 31598
|only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
step
goto 29.1,74.7
..kill Vess-Guard Vik'az##64979+ |q 31505/1
|only if havequest(31505)
step
goto 23.0,77.3
.kill 6 Zan'thik Amberhusk##64982+ |q 31507/1
|only if havequest(31507)
step
'All around this area
.click Dreadspore Bulbs##391
.' Destroy 15 Dreadspore Bulbs |q 31509/1
|only if havequest(31509)
step
goto 24.2,86.2
.click Adjunct Sek'ot##11609
.kill Adjunct Sek'ot##64995 |q 31510/1
step
goto 55.0,35.9
.talk 62538
..turnin 31231
..turnin 31235
..turnin 31109
..turnin 31267
..turnin 31111
..turnin 31505
..turnin 31677
step
goto 54.9,36.2
.talk 62151
..turnin 31216
step
goto 54.8,36.2
.talk 63785
..turnin 31237
..turnin 31510
..turnin 31272
..turnin 31504
step
goto 54.3,36.1
.talk 62180
..turnin 31232
..turnin 31233
..turnin 31496
..turnin 31270
..turnin 31269
..turnin 31507
step
goto 55.0,35.4
.talk 64599
..turnin 31598
..turnin 31599
|only if havequest(31598) or havequest(31599)
step
goto 54.3,35.9
.talk 65253
..turnin 31271
..turnin 31502
..turnin 31503
..turnin 31234
..turnin 31508
..turnin 31509
|only if completedq(31606)
step
goto 54.3,35.8
.talk 63758
..turnin 31238
..turnin 31487
..turnin 31494
..turnin 31268
..turnin 31024
..turnin 31808
..turnin 31506
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next end |only if default
step
goto 55.0,35.6
.talk 64599
.buy 1 Grand Commendation of the Klaxxi##92522
.' Use the Commendation of the Klaxxi you just purchased. |use Grand Commendation of the Klaxxi##92522
.' If you have already purchased this (either on this or another character), click here. |confirm
|only if rep("The Klaxxi")>=Revered
step
goto 55.1,35.9
.talk 62538
..accept 31018
step
goto 29.0,42.4 |n
.' Enter this tunnel |goto 29.0,42.4 <5 |noway |c
step
goto 30.7,40.3
.kill Adjunct Ek'vem##62073+ |q 31018/1
step
goto 33.4,40.2
.kill Adjunct Ikkess##62074+ |q 31018/2
step
goto 33.4,44.3
.kill Adjunct Suruz##62075+ |q 31018/3
step
goto 30.7,44.4
.kill Adjunct Tzikzi##62076+ |q 31018/4
step
goto 31.9,42.5
.click Ancient Amber Chunk
.' Wake Xaril the Poisoned Mind |q 31018/5
step
goto 29.0,42.4 |n
.' Exit the tunnel here |goto 29.0,42.4 <5 |noway |c
step
goto 28.6,42.1
.talk 62151
..turnin 31018
..accept 31208
..accept 31209
..accept 31210
step
goto 24.7,41.8
.from Ruby Venomtail##63588+, Dread Scarab##63587+
.get 150 Scarab Wing |q 31209/1
.get 8 Venomous Stinger |q 31208/1
.click Dreadshade##5031
.get 8 Dreadshade |q 31210/1
.' You can find more around [26.4,36.4]
.' And here [26.2,30.8]
step
goto 28.6,42.1
.talk 62151
..turnin 31208
..turnin 31209
..turnin 31210
step
goto 28.6,42.1
.talk 62151
..accept 31211
step
goto 28.6,42.1
.talk 62151
.' Tell him:
.' <I am ready to fly, Xaril.> |invehicle |q 31211
step
'Use the _Venom Syrum_ to kill the small enemies.
.' Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies.
.' Speak to Xaril the Poisoned Mind |q 31211/1
.kill 200 Mantid |q 31211/2
.kill 3 Kunchong |q 31211/3
'|from Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
step
goto 54.9,36.2
.talk 62151
..turnin 31211
step
goto 54.8,34.1
.talk 64815
..accept 31439
step
goto 56.3,58.2
.' Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
.' Awaken Hisek the Swarmkeeper |q 31439/1
step
goto 56.3,58.2
.talk 64672
..turnin 31439
..accept 31441
step
goto 56.2,57.6
.kill Kor'ik##64583+ |q 31441/1
step
goto 56.3,57.6
.talk 64705
..turnin 31441
..accept 31458
..accept 31465
step
goto 55.6,47.1
.click Kypari Ik Beacon##11971
.' Deactivate Kypari Ik Resonating Crystal |q 31458/2
step
goto 50.5,45.8
.kill 5 Ik'thik Whisperer##64622+ |q 31458/1
.from Ik'thik Swarmborn##64831+
.get 6 Venom-Coated Mandible |q 31465/1
step
goto 54.8,36.2
.talk 63785
..turnin 31458
..turnin 31465
|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next klaxxi start
step
label "exalted"
goto 40.4,34.4
.talk 66776
.' Report to Malik the Unscathed |q 31959/1
step
.' Click the Auto complete quest box that appears below your minimap:
..turnin 31959
..accept 31609
step
.' While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
|confirm
|modelnpc 66789
|modelnpc 66788
|modelnpc 66790
step
goto 44.6,35.2
.kill Akkolon##66783 |q 31609/1
|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
step
goto 41.6,39.8
.kill Shox'tik##66784 |q 31609/2
|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
step
goto 43.8,29.6
.kill Manifestation of Terror##66785 |q 31609/3
|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
step
goto 43.4,33.0
.kill 25 Mantid Subjugates |q 31609/4
step
goto 55.0,35.9
.talk 62538
..turnin 31609
..accept 31612
step
.' Follow Kil'ruk the Wind-Rever into the chamber
.' Walk with Kil'ruk |q 31612/1
step
.' Next to you:
.talk 66800
..turnin 31612
|next end
step
label end
'This is the end of this guide.
.' Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])
