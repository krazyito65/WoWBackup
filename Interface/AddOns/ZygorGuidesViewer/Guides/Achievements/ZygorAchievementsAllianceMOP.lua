local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsAMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Mystically Epic",[[
description Equip items in each slot that have at least an item level of 476
condition end achieved(6349)
step
.' To earn this achievement, you will need to use the Raid Finder.
.' When you down a boss, you may randomly be chosen to recieve a piece of gear.
.' Equip items with a 476 or greater Item Level in each slot. |achieve 6349 |next "finish"
|confirm
step
.' You progress will be tracked below per slot:
..' Head |achieve 6349/1
..' Neck |achieve 6349/2
..' Shoulder |achieve 6349/3
..' Chest |achieve 6349/4
..' Waist |achieve 6349/5
..' Legs |achieve 6349/6
..' Feet |achieve 6349/7
..' Wrist |achieve 6349/8
..' Hands |achieve 6349/9
..' Left Ring |achieve 6349/10
..' Right Ring |achieve 6349/11
..' First Trinket |achieve 6349/12
..' Second Trinket |achieve 6349/13
..' Cloak |achieve 6349/14
..' Weapon |achieve 6349/15
step
label "finish"
.' Congratulations, you have earned the _Mystically Epic_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Mystically Superior",[[
description Equip items in each slot that have at least an item level of 450
condition end achieved(6348)
step
.' To earn this achievement, you will need to be at the level cap.
.' Press (I) on your keyboard to open the Dungeon Finder and queue for normal instances.
.' Mogu'Shan Palace and Gate of the Setting Sun are two instances you can get 450
.' Equip items with a 450 or greater Item Level in each slot. |achieve 6348 |next "finish"
step
.' You progress will be tracked below per slot:
..' Head |achieve 6348/1
..' Neck |achieve 6348/2
..' Shoulder |achieve 6348/3
..' Chest |achieve 6348/4
..' Waist |achieve 6348/5
..' Legs |achieve 6348/6
..' Feet |achieve 6348/7
..' Wrist |achieve 6348/8
..' Hands |achieve 6348/9
..' Left Ring |achieve 6348/10
..' Right Ring |achieve 6348/11
..' First Trinket |achieve 6348/12
..' Second Trinket |achieve 6348/13
..' Cloak |achieve 6348/14
..' Weapon |achieve 6348/15
step
label "finish"
.' Congratulations, you have earned the _Mystically Superior_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Double Agent",[[
description Reach maximum level on both an Alliance and a Horde character
condition end achieved(7380)
step
.' To earn this achievement, you will need to level both an Alliance and a Horde character to level 90.
.' Reach level 90 with an Alliance and a Horde character |achieve 7380
step
.' Congratulations, you have earned the _Double Agent_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Dynamic Duo",[[
description Reach maximum level on two characters
condition end achieved(7382)
step
.' To earn this achievement, you will need to level 2 characters to level 90.
.' Keep in mind that raising at least one Alliance and Horde character to 90 will get you the _Double Agent_ achievement.
.' Raise two characters to level 90. |achieve 7382
step
.' Congratulations, you have earned the _Dynamic Duo_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Terrific Trio",[[
description Reach maximum level on three characters
condition end achieved(7383)
step
.' To earn this achievement, you will need to level 3 characters to level 90.
.' Keep in mind that raising at least one Alliance and Horde character to 90 will get you the _Double Agent_ achievement.
.' Raise three characters to level 90. |achieve 7383
step
.' Congratulations, you have earned the _Terrific Trio_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Quintessential Quintet",[[
description Reach maximum level on five characters
condition end achieved(7384)
step
.' To earn this achievement, you will need to level 5 characters to level 90.
.' Keep in mind that raising at least one Alliance and Horde character to 90 will get you the _Double Agent_ achievement.
.' Raise five characters to level 90. |achieve 7384
step
.' Congratulations, you have earned the _Quintessential Quintet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Grand Expedition Yak",[[
description This guide will walk you through
description obtaining the Grand Expedition Yak.
condition end achieved(7386)
step
.' In order to obtain this mount, you will need to have at least 120,000 gold.
|confirm
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Grand Expedition Yak##84101
.learnmount Grand Expedition Yak##122708 |use Reins of the Grand Expedition Yak##84101
.' Earn the Grand Expedition Yak achievement. |achieve 7386
step
.' Congratulations, you have earned the _Grand Expedition Yak_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Pandaren Cuisine",[[
description This guide will walk you through obtaining the Pandaren Cuisine achievement.
condition end achieved(7329)
step
'In order to get this achievement, it is suggested that you have a _Cooking_ skill of at least 525, and a Fishing skill of at least 500.
'If you don't have cooking, you may be able to buy all of the items needed from the _Auction House_.
|confirm
step
goto The Jade Forest 58.2,32.3
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Stand anywhere on the shore.
.' Use your Fishing skill to fish in the water |cast Fishing##7620
.collect 3 Golden Carp##74866
step
goto Valley of the Four Winds 53.6,51.2
.talk 64231
.learn Sliced Peaches##125117
step
goto Valley of the Four Winds 53.6,51.2
.talk 64231
.buy 1 Pandaren Peach##74660 |n
.create 1 Sliced Peaches##125117,Cooking,1 total |n
.' Eat the _Sliced Peaches_ you just created. |use Sliced Peaches##86057 |achieve 7329/1
step
goto 53.6,51.2
.talk 64231
.learn Perfectly Cooked Instant Noodles##125067
step
goto 53.6,51.2
.talk 64231
.buy 1 Instant Noodles##74854 |n
.create 1 Perfectly Cooked Instant Noodles##125067,Cooking,1 total |n
.' Eat the _Perfectly Cooked Instant Noodles_ you just created. |use Perfectly Cooked Instant Noodles##86026 |achieve 7329/2
step
goto 53.6,51.2
.talk 64231
.learn Toasted Fish Jerky##124225
step
goto 53.6,51.2
.talk 64231
.create 1 Toasted Fish Jerky##124225,Cooking,1 total |n
.' Eat the _Toasted Fish Jerky_ you just created. |use Toasted Fish Jerky##81402 |achieve 7329/3
step
goto 53.6,51.2
.talk 64231
.learn Dried Needle Mushrooms##124227
step
goto 53.6,51.2
.talk 64231
.buy 1 Needle Mushrooms##85583 |n
.create 1 Dried Needle Mushrooms##124227,Cooking,1total |n
.' Eat the _Dried Needle Mushrooms_ you just created. |use Dried Needle Mushrooms##81404 |achieve 7329/4
step
goto 53.6,51.2
.talk 64231
.learn Pounded Rice Cake##124223
step
goto 53.6,51.2
.talk 64231
.buy 1 Rice##74581 |n
.create 1 Pounded Rice Cake##124223,Cooking,1 total |n
.' Eat the _Pounded Rice Cake_ you just created. |use Pounded Rice Cake##81400 |achieve 7329/5
step
goto 53.6,51.2
.talk 64231
.learn Yak Cheese Curds##124224
step
goto 53.6,51.2
.talk 64231
.buy 1 Yak Milk##74852 |n
.create 1 Yak Cheese Curds##124224,Cooking,1 total |n
.' Eat the _Yak Cheese Curds_ you just created. |use Yak Cheese Curds##81401 |achieve 7329/6
step
goto 53.6,51.2
.talk 64231
.learn Dried Peaches##124226
step
goto 53.6,51.2
.talk 64231
.buy 1 Pandaren Peach##74660 |n
.create 1 Dried Peaches##124226,Cooking,1 total |n
.' Eat the _Dried Peaches_ you just created. |use Dried Peaches##81403 |achieve 7329/7
step
goto 53.6,51.2
.talk 64231
.learn Boiled Silkworm Pupa##124228
step
goto 53.6,51.2
.talk 64231
.buy 1 Silkworm Pupa##85584 |n
.create 1 Boiled Silkworm Pupa##124226,Cooking,1 total |n
.' Eat the _Boiled Silkworm Pupa_ you just created. |use Boiled Silkworm Pupa##81405 |achieve 7329/8
step
goto 53.6,51.2
.talk 64231
.learn Roasted Barley Tea##125078
step
goto 53.6,51.2
.talk 64231
.buy 1 Barley##74832 |n
.create 1 Roasted Barley Tea##125078,Cooking,1 total |n
.' Drink the _Roasted Barley Tea_ you just created. |use Roasted Barley Tea##81406 |achieve 7329/9
step
goto 53.6,51.2
.talk 64231
.learn Blanched Needle Mushrooms##124223
step
goto 53.6,51.2
.talk 64231
.buy 2 Needle Mushrooms##85583 |n
.create 1 Blanched Needle Mushrooms##124223,Cooking,1 total |n
.' Eat the _Blanched Needle Mushrooms_ you just created. |use Blanched Needle Mushrooms##81412 |achieve 7329/10
step
goto 53.6,51.2
.talk 64231
.learn Red Bean Bun##124229
step
goto 53.6,51.2
.talk 64231
.buy 1 Red Beans##85585 |n
.create 1 Red Bean Bun##124229,Cooking,1 total |n
.' Eat the _Red Bean Bun_ you just created. |use Red Bean Bun##81408 |achieve 7329/11
step
goto 53.6,51.2
.talk 64231
.learn Tangy Yogurt##124230
step
goto 53.6,51.2
.talk 64231
.buy 1 Yak Milk##74852 |n
.buy 1 Pandaren Peach##74660 |n
.create 1 Tangy Yogurt##124230,Cooking,1 total |n
.' Eat the _Tangy Yogurt_ you just created. |use Tangy Yogurt##81409 |achieve 7329/12
step
goto 53.6,51.2
.talk 64231
.learn Peach Pie##124232
step
goto 53.6,51.2
.talk 64231
.buy 2 Pandaren Peach##74660 |n
.create 1 Peach Pie##124232,Cooking,1 total
.' Eat the _Peach Pie_ you just created. |use Peach Pie##81411 |achieve 7329/13
step
goto 53.6,51.2
.talk 64231
.learn Skewered Peanut Chicken##124234
step
goto 53.6,51.2
.talk 64231
.buy 1 Farm Chicken##74659 |n
.create 1 Skewered Peanut Chicken##124234,Cooking,1 total |n
.' Eat the _Skewered Peanut Chicken_ you just created. |use Skewered Peanut Chicken##81413 |achieve 7329/14
step
goto 53.6,51.2
.talk 64231
.learn Pearl Milk Tea##125080
step
goto 53.6,51.2
.talk 64231
.buy 2 Yak Milk##74852 |n
.create 1 Pearl Milk Tea##125080,Cooking,1 total |n
.' Drink the _Pearl Milk Tea_ you just created. |use Pearl Milk Tea##81414 |achieve 7329/15
step
goto 53.6,51.2
.talk 64231
.learn Green Curry Fish##124321
step
goto 53.6,51.2
.talk 64231
.buy 1 Rice##74851 |n
.create 1 Green Curry Fish##124231,Cooking,1 total |n
.' Eat the _Green Curry Fish_ you just created. |use Green Curry Fish##81410 |achieve 7329/16
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Pandaren Delicacies",[[
description Sample 24 foods exclusive to Pandaria.
condition end achieved(7330)
step
.' For this achievement, you will have to 24 brand new foods introduced with the Mists of Pandaria.
.' These can either be obtained through the Auction House, other players or by creating them yourself.
.' Note that most of these recipies are obtained through being exalted with _The Tillers_.
|confirm
step
.' This is a list of the items you will need to collect and eat:
..' Rice Pudding |achieve 7330/1
..' Sauteed Carrots |achieve 7330/2
..' Ginseng Tea |achieve 7330/3
..' Swirling Mist Soup |achieve 7330/4
..' Shrimp Dumplings |achieve 7330/5
..' Wildfowl Roast |achieve 7330/6
..' Charbroiled Tiger Steak |achieve 7330/7
..' Golden Carp Consomme |achieve 7330/8
..' Fish Cake |achieve 7330/9
..' Valley Stir Fry |achieve 7330/10
..' Jade Witch Brew |achieve 7330/11
..' Wildfowl Ginseng Soup |achieve 7330/12
..' Braised Turtle |achieve 7330/13
..' Fire Spirit Salmon |achieve 7330/14
..' Twin Fish Platter |achieve 7330/15
..' Eternal Blossom Fish |achieve 7330/16
..' Sea Mist Rice Noodles |achieve 7330/17
..' Spicy Vegetable Chips |achieve 7330/18
..' Mad Brewer's Breakfast |achieve 7330/19
..' Spicy Salmon |achieve 7330/20
..' Mogu Fish Stew |achieve 7330/21
..' Steamed Crab Suprirse |achieve 7330/22
..' Chun Tian Spring Rolls |achieve 7330/23
..' Black Pepper Ribs and Shrimp |achieve 7330/24
.' Click here to farm and create these yourself. |confirm |next "create"
.' Click here to obtain them through other means. |confirm |next "player_ah"
step
label "player_ah"
.buy Rice Pudding##86069
.buy Sauteed Carrots##74643
.buy Ginseng Tea##75026
.buy Swirling Mist Soup##74644
.buy Shrimp Dumplings##74651
.buy Wildfowl Roast##74654
.buy Charbroiled Tiger Steak##74642
.buy Golden Carp Consomme##74636
.buy Fish Cake##74641
.buy Valley Stir Fry##74647
.buy Jade Witch Brew##75037
.buy Wildfowl Ginseng Soup##86070
.buy Braised Turtle##74649
.buy Fire Spirit Salmon##74652
.buy Twin Fish Platter##74655
.buy Eternal Blossom Fish##74645
.buy Sea Mist Rice Noodles##74648
.buy Spicy Vegetable Chips##86074
.buy Mad Brewer's Breakfast##75038
.buy Spicy Salmon##86073
.buy Mogu Fish Stew##74650
.buy Steamed Crab Surprise##74653
.buy Chun Tian Spring Rolls##74656
.buy Black Pepper Ribs and Shrimp##74646
|next "eat"
step
label "create"
.' This is a list of all the materials you will need.
..' The items listed here are from vendors.
.' 3 Black Pepper
.' 2 Ginseng
.' 2 Rice
.' 3 Rice Flour
.' 30 Scallions
.' 1 Yak Milk
|confirm
step
.' The Items showed here are from using _Ironpaw Tokens_.
..' You will get 25 per token for the items listem below:
.' 25 Green Cabbage
.' 30 Jade Squash
.' 32 Juicycrunch Carrot
.' 25 Mogu Pumpkin
.' 75 Pink Turnip
.' 25 Red Blossom Leek
.' 30 Striped Melon
.' 25 White Turnip
.' 30 Witchberries
|confirm
step
.' These items are also from _Ironpaw Tokens_.
..' You will only get 5 per token for meats and fish:
.' 5 Mushan Ribs
.' 5 Raw Crab Meat
.' 5 Raw Crocolisk Belly
.' 6 Raw Tiger Steak
.' 6 Raw Turtle Meat
.' 3 Wildfowl Breast
.' 2 Jade Lungfish
.' 6 Giant Mantis Shrimp
.' 4 Golden Carp
.' 1 Reef Octopus
.' 11 Emperor Salmon
.' 2 Krasarang Paddlefish
.' 5 Tiger Gourami
.' 5 Jewel Danio
.' 5 Redbelly Mandarin
|confirm
step
.' You will need to farm _Ironpaw Tokens_ to trade for most of these items.
.' _Nam Ironpaw_ in Valley of the Four Winds
.' You can use _Ironpaw Tokens_ to buy some of the materials needed for the recipies.
|confirm
step
.' He sells Green Cabbage, Jade Squash, Juciycrunch Carrots, Mogu Pumpkin, Pink Turnips, Red Blossom Leeks, Striped Melons, White Turnips and Witchberries in stacks of 25 per 1 Ironpaw Token.
.' The Rest of the materials, excluding Black Pepper, Ginseng, Rice, Rice Flour, Scallions and Yak Milk, he sells in stacks of 5 per 1 Ironpaw Token.
'|modelnpc 64395
|confirm
step
label	token_start
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end
.' Or
.' Click here to turn in _Spirit of Harmony's_ for Cooking Tokens. |confirm |next spirit
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/37)-curcount(402)))} Tokens_ to buy the ingredients you need.
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.floor(_G.max(0, itemcount(74847)/20))} Tokens_
.' You have enough Melon to turn in for _{_G.floor(_G.max(0, itemcount(74848)/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end
step
label	farm_meat
goto Dread Wastes 65.6,58.2
.from Coldbite Crocolisk##62023
.' You will need stacks of 20 meat to turn in for one token
.' You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014)/20)))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end
step
label	token_end
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have.
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
step
goto Valley of the Four Winds 53.6,51.2
.talk 64231
.buy 3 Black Pepper##74661
.buy 2 Ginseng##74845
.buy 2 Rice##74851
.buy 3 Rice Flour##74662
.buy 30 Scallions##74843
.buy 1 Yak Milk##74852
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy 1 Sack of Green Cabbages##87706
.buy 2 Sack of Jade Squash##87713
.buy 2 Sack of Juicycrunch Carrots##87707
.buy 1 Sack Mogu Pumpkins##87708
.buy 3 Sack of Pink Turnips##87715
.buy 1 Sack of Red Blossom Leeks##87710
.buy 2 Striped Melon##74848
.buy 1 Sack of White Turnips##87716
.buy 2 Sack of Witchberries##87712
.buy 1 Sack of Mushan Ribs##87702
.buy 1 Sack of Raw Crab Meat##87704
.buy 1 Sack of Crocolisk Belly##87730
.buy 2 Sack of Raw Tiger Steaks##87701
.buy 2 Sack of Raw Turtle Meat##87703
.buy 1 Sack of Wildfowl Breasts##87705
.buy 1 Sack of Jade Lungfish##87721
.buy 2 Sack of Giant Mantis Shrimp##87722
.buy 1 Sack of Golden Carp##87729
.buy 1 Sack of Reef Octopus##87727
.buy 3 Sack of Emperor Salmon##87723
.buy 1 Sack of Krasarang Paddlefish##87728
.buy 1 Sack of Tiger Gourami##87725
.buy 1 Sack of Jewel Danio##87726
.buy 1 Sack of Redbelly Mandarin##87724
step
label "create"
.create 1 Fish Cake##104297
step
.create 1 Golden Carp Consomme##104237
step
.create 1 Rice Pudding##125122
step
.create 1 Wildfowl Ginseng Soup##125121
step
.create 1 Spicy Salmon##125120
.' This recipie is from Bobo Ironpaw.
'|modelnpc 58717
step
.create 1 Spicy Vegetable Chips##125123
.' This recipie is from Bobo Ironpaw.
'|modelnpc 58717
step
.create 1 Ginseng Tea##124052
.' This recipie is from Kol Ironpaw.
'|modelnpc 58712
step
.create	1 Jade Witch Brew##124053
.' This recipie is from Kol Ironpaw.
'|modelnpc 58712
step
.create 1 Mad Brewer's Breakfast##124054
.' This recipie is from Kol Ironpaw.
'|modelnpc 58712
step
.create 1 Black Pepper Ribs and Shrimp##104300
.' This recipie is from Jian Ironpaw.
'|modelnpc 58716
step
.create 1 Charbroiled Tiger Steak##104298
.' This recipie is from Jian Ironpaw.
'|modelnpc 58716
step
.create 1 Eternal Blossom Fish##104299
.' This recipie is from Jian Ironpaw.
'|modelnpc 58716
step
.create 1 Chun Tian Spring Rolls##104312
.' This recipie is from Mei Mei Ironpaw.
'|modelnpc 58714
step
.create 1 Twin Fish Platter##104311
.' This recipie is from Mei Mei Ironpaw.
'|modelnpc 58714
step
.create 1 Wildfowl Roast##104310
.' This recipie is from Mei Mei Ironpaw.
'|modelnpc 58714
step
.create 1 Braised Turtle##104305
.' This recipie is from Yan Ironpaw.
'|modelnpc 58715
step
.create 1 Mogu Fish Stew##104306
.' This recipie is from Yan Ironpaw.
'|modelnpc 58715
step
.create 1 Swirling Mist Soup##104304
.' This recipie is from Yan Ironpaw.
'|modelnpc 58715
step
.create 1 Fire Spirit Salmon##104308
.' This recipie is from Anthea Ironpaw.
'|modelnpc 58713
step
.create 1 Shrimp Dumplings##104307
.' This recipie is from Anthea Ironpaw.
'|modelnpc 58713
step
.create 1 Steamed Crab Surprise##104309
.' This recipie is from Anthea Ironpaw.
'|modelnpc 58713
step
.create 1 Sauteed Carrots##104301
step
.create 1 Sea Mist Rice Noodles##104303
step
.create 1 Valley Stir Fry##104302
step
label "eat"
.' Eat Rice Pudding. |achieve 7330/1 |use Rice Pudding##86069
step
.' Eat Sauteed Carrots. |achieve 7330/2 |use Sauteed Carrots##74643
step
.' Drink Ginseng Tea. |achieve 7330/3 |use Ginseng Tea##75026
step
.' Eat Swirling Mist Soup. |achieve 7330/4 |use Swirling Mist Soup##74644
step
.' Eat Shrimp Dumplings. |achieve 7330/5 |use Shrimp Dumplings##74651
step
.' Eat Wildfowl Roast. |achieve 7330/6 |use Wildfowl Roast##74654
step
.' Eat Charbroiled Tiger Steak. |achieve 7330/7 |use Charbroiled Tiger Steak##74642
step
.' Eat Golden Carp Consomme. |achieve 7330/8 |use Golden Carp Consomme##74636
step
.' Eat a Fish Cake. |achieve 7330/9 |use Fish Cake##74641
step
.' Eat Valley Stir Fry. |achieve 7330/10 |use Valley Stir Fry##74647
step
.' Drink Jade Witch Brew. |achieve 7330/11 |use Jade Witch Brew##75037
step
.' Eat Wildfowl Ginseng Soup. |achieve 7330/12 |use Wildfowl Ginseng Soup##86070
step
.' Eat Braised Turtle. |achieve 7330/13 |use Braised Turtle##74649
step
.' Eat Fire Spirit Salmon. |achieve 7330/14 |use Fire Spirit Salmon##74652
step
.' Eat Twin Fish Platter. |achieve 7330/15 |use Twin Fish Platter##74655
step
.' Eat Eternal Blossom Fish. |achieve 7330/16 |use Eternal Blossom Fish##74645
step
.' Eat Sea Mist Rice Noodles. |achieve 7330/17 |use Sea Mist Rice Noodles##74648
step
.' Eat Spicy Vegetable Chips. |achieve 7330/18 |use Spicy Vegetable Chips##86074
step
.' Drink Mad Brewer's Breakfast. |achieve 7330/19 |use Mad Brewer's Breakfast##75038
step
.' Eat Spicy Salmon. |achieve 7330/20 |use Spicy Salmon##86073
step
.' Eat Mogu Fish Stew. |achieve 7330/21 |use Mogu Fish Stew##74650
step
.' Eat Steamed Crab Surprise. |achieve 7330/22 |use Steamed Crab Surprise##74653
step
.' Eat Chun Tian Spring Rolls. |achieve 7330/23 |use Chun Tian Spring Rolls##74656
step
.' Eat Black Pepper Ribs and Shrimp. |achieve 7330/24 |use Black Pepper Ribs and Shrimp##74646
step
.' Earn the Pandaren Delicacies Achievement. |achieve 7330
step
.' Congratulations, you have earned the Pandaren Delicacies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\To All the Squirrels I Once Caressed?",[[
description This guide will walk you through obtaining the To All the Squirrels I Once Caressed? achievement.
condition end achieved(6350)
step
goto The Jade Forest 66.5,84.9
.' Use the Love emote on a Coral Adder |script DoEmote("LOVE")
.' Love a Coral Adder |achieve 6350/4
step
goto The Jade Forest 28.3,43.9
.' Use the Love emote on a Leopard Tree Frog |script DoEmote("LOVE")
.' Love a Leopard Tree Frog |achieve 6350/9
step
goto The Jade Forest 36.7,58.5
.' Use the Love emote on a Shrine Fly |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/14
step
goto Krasarang Wilds 47.9,36.1
.' Use the Love emote on an Amethyst Spiderling |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/1
step
goto Krasarang Wilds 49.8,39.9
.' Use the Love emote on a Luyu Moth |script DoEmote("LOVE")
.' Love a Luyu Moth |achieve 6350/10
step
goto Valley of the Four Winds 60.4,51.6
.' Use the Love emote on a Bandicoot |script DoEmote("LOVE")
.' Love a Bandicoot |achieve 6350/2
step
goto Valley of the Four Winds 62.2,45.6
.' Use the Love emote on a Malayan Quillrat |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/11
step
goto Valley of the Four Winds 62.9,49.9
.' Use the Love emote on a Marsh Fiddler |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/12
step
goto Valley of the Four Winds 55.3,27.8
.' Use the Love emote on a Sifang Otter |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/15
step
goto Vale of Eternal Blossoms 39.6,48.8
.' Use the Love emote on a Dancing Water Skimmer |script DoEmote("LOVE")
.' Love a Dancing Water Skimmer |achieve 6350/5
step
goto Vale of Eternal Blossoms 40.2,48.8
.' Use the Love emote on a Gilded Moth |script DoEmote("LOVE")
.' Love a Gilded Moth |achieve 6350/7
step
goto Vale of Eternal Blossoms 72.0,23.7
.' Use the Love emote on a Golden Civet |script DoEmote("LOVE")
.' Love a Golden Civet |achieve 6350/8
step
goto Townlong Steppes 76.0,72.9
.' Use the Love emote on a Mongoose |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/13
step
goto Townlong Steppes 69.7,51.9
.' Use the Love emote on a Yakrat |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/17
step
goto Dread Wastes 48.8,76.0
.' Use the Love emote on an Emperor Crab |script DoEmote("LOVE")
.' Love an Emperor Crab |achieve 6350/6
step
goto Dread Wastes 64.7,32.9
.' Use the Love emote on a Clouded Hedgehog |script DoEmote("LOVE")
.' Love a Clouded Hedgehog |achive 6350/3
step
goto Dread Wastes 64.1,55.0
.' Use the Love emote on a Resilient Roach |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/16
step
goto Stonetalon Mountains 75.2,67.8
.' Use the Love emote on a Mountain Skunk |script DoEmote("LOVE")
.' Love an Amethyst Spiderling |achieve 6350/10
step
'Congratulations, you have obtained the To All the Squirrels I Once Caressed? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Shadow Hopper",[[
description This guide will walk you through obtaining the Shadow Hopper achievement.
condition end achieved(7289)
step
'In order to complete this achievement, you must be at least _Revered_ with the _Order of the Cloud Serpent_.
|confirm
step
goto The Jade Forest 57.7,44.9
.talk 58564
.' Tell her you want to practice playing catch with a baby serpent.
.collect 1 Bouncy Ball##79043
step
'Go to the open area around [57.3,43.9]
.' Click the Bouncy Ball in your bags. |use Bouncy Ball##79043
.' Run to the shadows that the ball creates as you juggle it. It will take a while to get 25 catches in a row. |tip The bounces from the baby serpent don't count for you.
.' Juggle a bouncy ball with a baby serpent 25 consecutive times. |achieve 7289
step
Congratulations, you have earned the Shadow Hopper achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Yak Attack",[[
description This guide will walk you through obtaining the Yak Attack achievement.
condition end achieved(7288)
step
'In order to complete this achievement, you have to unlock the dailies with the _August Celestials_.
|confirm
step
'The best time to do this is when Niuzao is charging around the perimeter, killing enemies along its path.
|confirm
step
goto Townlong Steppes 41.8,58.1
.' Round up as many mobs as you can, and tag them all by damaging each at least once.
.' Hold out as long as you can untill Niuzao rushed through them, killing them all
.' Kill 15 Sra'thik Attackers in 5 seconds |achieve 7288
step
Congratulations, you have earned the Yak Attack achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\The Ballad of Liu Lang",[[
description This guide will walk you through obtaining The Ballad of Liu Lang Achievement
condition end achieved(6856)
step
goto Krasarang Wilds 72.2,31.1
.click Waiting for the Turtle##
.achieve Ballad of Liu Lang##6856/4
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
'Congratulations, you have earned The Ballad of Liu Lang Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Fish Tales",[[
description This guide will walk you through obtaining Fish Tales Achievement
condition end achieved(6846)
step
goto The Jade Forest 66.0,87.6
.click Watersmithing##
.achieve Fish Tales##6846/1
step
goto Krasarang Wilds 30.5,38.5
.click Origins##
.achieve Fish Tales##6846/3
step
goto Valley of the Four Winds 61.2,34.7
.click Waterspeakers##
.achieve Fish Tales##6846/2
step
goto Kun-Lai Summit 74.5,83.5
.click Role Call##
.achieve Fish Tales##6846/4
step
'Congratulations, you have earned Fish Tales Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Between a Saurok and a Hard Place",[[
description This guide will walk you through obtaining Between a Saurok and a Hard Place Achievement
condition end achieved(6716)
step
goto The Veiled Stair/5 54.8,16.0
.click The Defiant##
.achieve Between a Saurok and a Hard Place##6716/2
step
goto The Jade Forest 67.7,29.4
.click The Saurok##
.achieve Between a Saurok and a Hard Place##6716/1
step
goto Krasarang Wilds 32.8,29.4
.click The Last Stand##
.achieve Between a Saurok and a Hard Place##6716/4
step
goto Dread Wastes 67.4,60.8
.click The Deserters##
.achieve Between a Saurok and a Hard Place##6716/3
step
'Congratulations, you have earned the Between a Saurok and a Hard Place Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\The Dark Heart of the Mogu",[[
description This guide will walk you through obtaining The Dark Heart of the Mogu Achievement
condition end achieved(6856)
step
goto The Jade Forest 42.3,17.4
.click Spirit Binders##
.achieve The Dark Heart of the Mogu##6754/3
step
goto Krasarang Wilds 51.0,31.7
.click The Lost Dynasty##
.achieve The Dark Heart of the Mogu##6754/2
step
goto Vale of Eternal Blossoms 40.2,77.5
.click The Thunder King##
.achieve The Dark Heart of the Mogu##6754/4
step
goto Kun-Lai Summit/17 58.2,70.5
.click Valley of the Emperors##
.achieve The Dark Heart of the Mogu##6754/1
step
'Congratulations, you have earned The Dark Heart of the Mogu Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\The Song of the Yaungol",[[
description This guide will walk you through obtaining The Song of the Yaungol Achievement
condition end achieved(6856)
step
goto Kun-Lai Summit 71.7,63.0
.click Yaungoil##
.achieve The Song of the Yaungol##6847/3
step
goto 50.3,79.3
.click Yaungol Tactics##
.achieve The Song of the Yaungol##6847/1
step
goto Townlong Steppes 65.4,50.0
.click Dominance##
.achieve The Song of the Yaungol##6847/2
step
goto Townlong Steppes 84.1,72.9
.click Trapped in a Strange Land##
.achieve The Song of the Yaungol##6847/4
step
'Congratulations, you have earned The Song of the Yaungol Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Hozen in the Mist",[[
description This guide will walk you through obtaining The Hozen in the Mist Achievement
condition end achieved(8650)
step
goto The Jade Forest 26.4,28.4
.click Hozen Speech##211990
.achieve Hozen in the Mist##6850/1
step
goto Krasarang Wilds 52.4,87.6
.click Hozen Maturity##211993
.achieve Hozen in the Mist##6850/2
step
goto Valley of the Four Winds 83.2,21.2
.click Embracing the Passion##
.achieve Hozen in the Mist##6850/3
step
goto Kun-Lai Summit 45.8,61.9
.click The Hozen Ravage##
.achieve Hozen in the Mist##6850/4
step
'Congratulations, you have earned The Hozen in the Mist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Heart of the Mantid Swarm",[[
description This guide will walk you through obtaining The Heart of the Mantid Swarm Achievement
condition end achieved(6856)
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
'Congratulations, you have earned The Heart of the Mantid Swarm Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\The Seven Burdens of Shaohao",[[
description This guide will walk you through obtaining The Seven Burdens of Shaohao Achievement
condition end achieved(6856)
step
goto The Jade Forest 55.9,56.8
.click The Emperor's Burden - Part 3##213421
.achieve The Seven Burdens of Shaohao##6855/3
step
goto 47.1,45.2
.click The Emperor's Burden - Part 1##215799
.achieve The Seven Burdens of Shaohao##6855/1
step
goto Krasarang Wilds 40.4,51.7 |n
.' Enter the Temple here |goto 40.4,51.7 |noway |c
step
goto 41.2,55.8 |n
.' Go up the stairs |goto 41.2,55.8 |noway |c
step
goto 40.5,56.6
.click The Emperor's Burden - Part 4##213422
.achieve The Seven Burdens of Shaohao##6855/4
step
goto Vale of Eternal Blossoms 68.8,44.3
.click The Emperor's Burden - Part 8##
.achieve The Seven Burdens of Shaohao##6855/8
step
goto Kun-Lai Summit 67.8,48.4
.click The Emperor's Burden - Part 6##
.achieve The Seven Burdens of Shaohao##6855/6
step
goto 43.8,51.2
.click The Emperor's Burden - Part 2##
.achieve The Seven Burdens of Shaohao##6855/2
step
goto 41.0,42.4
.click The Emperor's Burden - Part 7##
.achieve The Seven Burdens of Shaohao##6855/7
step
goto Townlong Steppes 37.8,62.9
.click The Emperor's Burden - Part 5##
.achieve The Seven Burdens of Shaohao##6855/5
step
'Congratulations, you have earned The Seven Burdens of Shaohao Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\What is Worth Fighting For",[[
description This guide will walk you through obtaining the What is Worth Fighting For Achievement
condition end achieved(6858)
step
goto The Jade Forest 35.7,30.5
.click The First Monks##213415
.achieve What is Worth Fighting For##6858/3
step
goto Krasarang Wilds 18.8,31.7
.click Pandaren Fighting Tactics##
.achieve What is Worth Fighting For##6858/1
step
goto Vale of Eternal Blossoms 52.9,68.6
.click Always Remember##
.achieve What is Worth Fighting For##6858/2
step
goto Kun-Lai Summit 63.0,40.8
.click Victory in Kun-Lai##
.achieve What is Worth Fighting For##6858/5
step
goto Valley of the Four Winds 26.6,21.5
.click Together, We Are Strong##
.achieve What is Worth Fighting For##6858/4
step
'Congratulations, you have earned the What is Worth Fighting For Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Lost and Found",[[
description This guide will walk you through obtaining The Lost And Found Achievement
condition end achieved(7281)
step
goto The Jade Forest 39.4,7.3
.click Wodin's Mantid Shaker |tip The item is a rare spawn, so keep checking back if it's not there the first time you go.
.collect Wodin's Mantid Shaker##85776
step
'Congratulations. you have earned the Lost and Found Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Legend of the Brewfathers",[[
description This guide will walk you through obtaining the Legend of the Brewfathers Achievement
condition end achieved(7230)
step
goto The Jade Forest 37.3,30.1
.click Xin Wo Yin the Broken Hearted##
.achieve Legend of the Brewfathers##7230/2
step
goto Krasarang Wilds 81.4,11.5
.click Quan Tou Kuo the Two Fisted##
.achieve Legend of the Brewfathers##7230/1
step
goto Kun-Lai Summit 44.7,52.4
.click Ren Yun the Blind##
.achieve Legend of the Brewfathers##7230/3
step
'Congratulations, you have earned the Legend of the Brewfathers Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Could We Find More Like That?",[[
description This guide will walk you through obtaining the Could We Find More Like That? Achievement
condition end achieved(7438)
step
goto The Jade Forest 46.6,17.0
.from Morgrinn Crackfang##50350 |tip Morgrinn patrols around in this area. Some searching may be required.
|achieve 7438/5
step
goto The Jade Forest 42.6,38.8
.from Mister Ferocious##50823
|achieve 7438/1
step
goto The Jade Forest 53.8,45.6
.from Ferdinand##51078 |tip He wanders around this area, so some searching may be necessary.
|achieve 7438/8
step
goto The Jade Forest 39.6,62.6
.from Krax'ik##50363
|achieve 7438/3
step
goto The Jade Forest 33.4,50.8
.from Aethis##50750
|achieve 7438/2
step
goto The Jade Forest 44.0,75.2
.from Kor'nas Nightsavage##50338 |tip He walks around in this area. Some searching may be necessary.
|achieve 7438/4
step
goto The Jade Forest 57.4,71.4
.from Urobi the Walker##50808
|achieve 7438/6
step
goto The Jade Forest 64.6,74.2
.from Sarnak##50782
|achieve 7438/7
step
'Congratulations, you have obtained the Could We Find More Like This? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Glorious!",[[
description This guide will walk you through obtaining the Glorious! achievement.
condition end achieved(7439)
step
'For this achievement, it's suggested that you are in a group of two or more. All of the mobs listed are rare-spawns, so you may also have to wait for them to respawn.
|confirm
step
goto The Jade Forest 46.6,17.0
.from Morgrinn Crackfang##50350 |tip Morgrinn patrols around in this area. Some searching may be required.
|achieve 7439/29
step
goto The Jade Forest 42.6,38.8
.from Mister Ferocious##50823
|achieve 7439/1
step
goto The Jade Forest 53.8,45.6
.from Ferdinand##51078 |tip He wanders around this area, so some searching may be necessary.
|achieve 7439/50
step
goto The Jade Forest 39.6,62.6
.from Krax'ik##50363
|achieve 7439/15
step
goto The Jade Forest 33.4,50.8
.from Aethis##50750
|achieve 7439/8
step
goto The Jade Forest 44.0,75.2
.from Kor'nas Nightsavage##50338 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/22
step
goto The Jade Forest 57.4,71.4
.from Urobi the Walker##50808
|achieve 7439/36
step
goto The Jade Forest 64.6,74.2
.from Sarnak##50782
|achieve 7439/43
step
goto Krasarang Wilds 67.2,23.0
.from Qu'nas##50352
|achieve 7439/31
step
goto Krasarang Wilds 56.2,35.2
.from Gaarn the Toxic##50340 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/24
step
goto Krasarang Wilds 56.2,46.8
.from Arness the Scale##50787
|achieve 7439/45
step
goto Krasarang Wilds 52.2,88.8
.from Spriggin##50830
|achieve 7439/3
step
goto Krasarang Wilds 41.6,55.2
.from Ruun Ghostpaw##50816
|achieve 7439/38
step
goto Krasarang Wilds 39.6,29.8
.from Go-Kan##50331
|achieve 7439/52
step
goto Krasarang Wilds 30.6,38.2
.from Cournith Waterstrider##50768
|achieve 7439/10
step
goto Krasarang Wilds 15.0,35.4
.from Torik-Ethis##50388
|achieve 7439/17
step
goto Valley of the Four Winds 88.6,18.0
.from Nasra Spothide##50811
|achieve 7439/37
step
goto Valley of the Four Winds 71.6,52.2
.from Salyin Warscout##50783 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/44
step
goto Valley of the Four Winds 57.2,33.0
.from Sele'na##50766 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/9
step
goto Valley of the Four Winds 37.0,25.6
.from Sulik'shor##50339
|achieve 7439/23
step
goto Valley of the Four Winds 37.8,60.6
.from Blackhoof##51059 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/51
step
goto Valley of the Four Winds 18.6,77.6
.from Jonn-Dar##50351
|achieve 7439/30
step
goto Valley of the Four Winds 11.0,53.0
.from Nal'lak the Ripper##50364
|achieve 7439/16
step
goto Valley of the Four Winds 16.8,35.2
.from Bonobos##50828 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/2
step
goto Vale of Eternal Blossoms 32.0,91.6
.from Major Nanners##50840
|achieve 7439/7
step
goto Vale of Eternal Blossoms 14.0,58.6
.from Kal'tik the Blight##50749
|achieve 7439/21
step
goto Vale of Eternal Blossoms 15.0,35.6
.from Kang the Soul Thief##50349
|achieve 7439/28
step
goto Vale of Eternal Blossoms 39.8,25.0
.from Urgolax##50359
|achieve 7439/35
step
goto Vale of Eternal Blossoms 42.6,56.6
.from Moldo One-Eye##50806 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/49
step
goto Vale of Eternal Blossoms 42.6,69.0
.from Ai-Ran the Shifting Cloud##50822
|achieve 7439/42
step
goto Vale of Eternal Blossoms 62.0,55.6
.from Sahn Tidehunter##50780
|achieve 7439/14
step
goto Vale of Eternal Blossoms 87.8,44.6
.from Yorik Sharpeye##50336
|achieve 7439/56
step
goto Kun-Lai Summit 73.8,77.4
.from Norlaxx the Outcast##50769 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/11
step
goto Kun-Lai Summit 58.4,73.8
.from Havak##50354 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/32
step
goto Kun-Lai Summit 50.4,80.4
.from Korda Torros##50332 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/53
step
goto Kun-Lai Summit 36.6,79.6
.from Ski'thik##50733
|achieve 7439/18
step
goto Kun-Lai Summit 46.2,61.8
.from Scritch##50831 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/4
step
goto Kun-Lai Summit 55.6,43.6
.from Borginn Darkfist##50341
|achieve 7439/25
step
goto Kun-Lai Summit 63.8,13.8
.from Nessos the Oracle##50789
|achieve 7439/56
step
goto Kun-Lai Summit 40.8,42.6
.from Ahone the Wanderer##50817
|achieve 7439/39
step
goto Townlong Steppes 63.0,35.6
.from Kah'tir##50355
|achieve 7439/33
step
goto Townlong Steppes 68.4,46.8
.from Lon the Bull##50333 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/54
step
goto Townlong Steppes 67.6,74.4
.from The Yowler##50832
|achieve 7439/5
step
goto Townlong Steppes 67.8,87.6
.from Eshelon##50772
|achieve 7439/12
step
goto Townlong Steppes 59.2,85.6
.from Siltriss the Sharpener##50791
|achieve 7439/47
step
goto Townlong Steppes 54.0,63.6
.from Norlaxx##50344
|achieve 7439/26
step
goto Townlong Steppes 32.0,61.8
.from Yul Wildpaw##50820
|achieve 7439/40
step
goto Townlong Steppes 47.8,84.0
.from Lith'ik the Stalker##50734 |tip He walks all around this tree, so you may need to search for him.
|achieve 7439/19
step
goto Dread Wastes 25.2,28.6
.from Dak the Breaker##50334
|achieve 7439/55
step
goto Dread Wastes 34.8,23.2
.from Ai-Li Skymirror##50821
|achieve 7439/41
step
goto Dread Wastes 37.8,29.6
.from Gar'lok##50739
.' You may also be able to find him around [39.2,41.8]
|achieve 7439/20
step
goto Dread Wastes 39.2,62.4
.from Omnis Grinlok##50805 |tip He walks around in this area. Some searching may be necessary.
|achieve 7439/48
step
goto Dread Wastes 55.2,63.8
.from Ik-Ik the Nimble##50836
|achieve 7439/6
step
goto Dread Wastes 64.2,58.6
.from Nalash Verdantis##50776
|achieve 7439/13
step
goto Dread Wastes 71.8,37.6
.from Karr the Darkener##50347
|achieve 7439/27
step
goto Dread Wastes 74.2,20.6
.from Krol the Blade##50356
|achieve 7439/34
step
Congratulations, you have earned the Glorious! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Wanderers, Dreamers, and You",[[
description This guide will walk you through obtaining the Wanderers, Dreamers, and You Achievement
condition end achieved(7518)
step
'This achievement requires that you are online on a Sunday during the Wanderer's Festival Event. The opening ceremony begins at 9pm server time, and the closing ceremony begins at 11pm server time.
|confirm
step
goto Krasarang Wilds 72.7,30.7
.' Attend either the opening or closing ceremony of the Wanderer's Festival |achieve 7518
step
'Congratulations, you have obtained the Wanderers, Dreamers, and You achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Restore Balance",[[
description This guide will walk you through obtaining the Restore Balance Achievement
condition end achieved(7381)
step
'Take the path and go up the stairs here |goto The Jade Forest 31.6,33.8 |c
step
'Follow the path up |goto The Jade Forest 32.8,33.8 |c
step
goto The Jade Forest 34.1,33.5
.click Broken Incense Burner |achieve 7381
step
'Congratulations, you have obtained the Restore Balance achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Explorer Achievement\\Pandaria",[[
description This guide will walk you through obtaining The Explorer Achievement
condition end achieved(6351)
step
#include "A_Explorer_Pandaria"
step
'Congratulations, you have earned The Explorer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Exploration Achievements\\Pandaria\\Is Another Man's Treasure",[[
description This guide will walk you through obtaining the Is Another Man's Treasure Achievement
condition end achieved(7284)
step
'For this achievement, you will have to gather 20 of the relics hidden throughout Pandaria. Each one of these objects is considered a rare-spawn, so you may need to come back and reference this guide at different times in order to get 20 treasures.
|confirm
step
goto The Jade Forest 39.4,7.3
.click Wodin's Mantid Shaker##213363
.collect Wodin's Mantid Shaker##85776
step
goto The Jade Forest 41.2,13.9
.click Hammer of Ten Thunders##213742
.collect Hammer of Ten Thunders##86198
.' This relic can also be in the following locations:
.' [40.2,13.7]
.' [43.0,11.6]
.' [41.8,17.6]
step
goto The Jade Forest 44.2,28.6
.click Ancient Pandaren Mining Pick##213364 |tip It's in this cave at a dead end next to a Mining Cart.
.collect Ancient Pandaren Mining Pick##85777
step
goto The Jade Forest 39.2,46.6
.clicknpc Jade Warrior Statue##64272
.collect Jade Infused Blade##86199
step
goto The Jade Forest 47.1,67.5
.click Ancient Jinyu Staff##213741 |tip This relic is all around this area, so you may need to search a bit.
.collect Ancient Jinyu Staff##86196
step
goto Krasarang Wilds 50.8,49.3
.click Pandaren Fishing Spear##213653
.collect Pandaren Fishing Spear##86124
step
goto Krasarang Wilds 52.3,88.7
.click Barrel of Banana Infused Rum##214439 |tip It's on top of this ship.
.collect Recipe: Banana Infused Rum##87266
step
goto Krasarang Wilds 42.3,92.0
.click Equipment Locker##213651
.' Loot the treasure chest you find here.
|confirm
step
goto Valley of the Four Winds 45.6,38.4
.talk 64191
.collect Ancient Pandaren Woodcutter##86079
step
goto Valley of the Four Winds 43.6,37.4
.click Cache of Pilfered Goods##213649
.' Loot the treasure chest you find here.
|confirm
step
goto Valley of the Four Winds 46.8,24.6
.talk 64004
.collect Ancient Pandaren Fishing Charm##85973
step
goto Valley of the Four Winds 17.5,35.7
.click Staff of the Hidden Master##213749 |tip This one can be hard to find. It's among the bamboo trees in this area, and it blends in with them.
.collect Staff of the Hidden Master##86218
step
goto Kun-Lai Summit 74.7,74.9
.click Sprite's Cloth Chest##213751
.' Loot the treasure chest you find here.
|confirm
step
goto Kun-Lai Summit 71.2,62.6
.click Stash of Yaungol Weapons##213842
.collect Sturdy Yaungol Spear##88723
step
goto Kun-Lai Summit 51.5,74.0
.click Hozen Warrior Spear##213768
.collect Hozen Warrior Spear##86394
step
goto Kun-Lai Summit 44.7,52.4
.click Tablet of Ren Yun##213765
.collect Tablet of Ren Yun##86393
step
goto Kun-Lai Summit 37.5,78.0 |n
.' Enter the cave here. |goto 37.5,78.0 |noway |c
step
goto Kun-Lai Summit 35.2,76.4
.clicknpc Frozen Trail Packer##64227
.collect Kafa Press##86125
step
goto Townlong Steppes 66.2,44.7
.click Yaungol Fire Carrier##213960
.collect Yaungol Fire Carrier##86518
step
goto Dread Wastes 48.8,30.0
.click Malik's Stalwart Spear##213964
.collect Malik's Stalwart Spear##86520
step
goto Dread Wastes 33.0,30.1
.click Amber Encased Necklace##213966
.collect Lucid Amulet of the Agile Mind##86521
step
goto Dread Wastes 28.9,41.9
.click Blade of the Poisoned Mind##213972
.collect Blade of the Poisoned Mind##86527
step
goto Dread Wastes 25.9,50.3
.click Bloodsoaked Chitin Fragment##213970
.collect Bloodsoaked Chitin Fragment##86525
step
goto Dread Wastes 30.2,90.8
.click Dissector's Staff of Mutation##213969
.collect Dissector's Staff of Mutation##86524
step
goto Dread Wastes 42.2,63.8
.clicknpc Glinting Rapana Whelk##65552 |tip It's a small snail roaming around this area, you may need to search for it.
.collect Manipulator's Talisman##86529
step
goto Dread Wastes 54.3,56.5
.click Swarmkeeper's Medallion##213971
.collect Swarmkeeper's Medallion##86526
step
goto Dread Wastes 56.7,77.7
.click Swarming Cleaver of Ka'roz##213968
.collect Swarming Cleaver of Ka'roz##86523
step
goto Dread Wastes 66.3,66.5
.click Blade of the Prime##213967
.collect Blade of the Prime##86522
step
goto Dread Wastes 71.8,36.1
.click Wind-Reaver's Dagger of Quick Strikes##213962
.collect Wind-Reaver's Dagger of Quick Strikes##86519
step
|achieve 7284
step
'Congratulations, you have obtained the Another Man's Treasure achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quests Achievements\\Pandaria\\Savior of Stoneplow",[[
description
description
condition end achieved(7502)
step
.' In order to earn this Achievement you will need to complete the quest hub "Marista" in the Krasarang Wilds.
|confirm
step
#include "A_Marista_Hub"
step
.' Earn the Savior of Stoneplow achievement. |achieve 7602
step
.' Congratulations, you have earned the _Savior of Stoneplow_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quests Achievements\\Pandaria\\Green Acres",[[
description This guide will walk you through obtaining the Green Acres Achievement.
condition end achieved(7292)
step
#include "tillers_prequests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quests Achievements\\Pandaria\\Yak Attack",[[
description This guide will walk you through obtaining the Yak Attack Achievement.
condition end achieved(7288)
step
.'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quests Achievements\\Pandaria\\Ain't Lost No More",[[
description This guide will walk you through obtaining the Ain't Lost No More Achievement.
condition end achieved(7296)
step
'For thie achievement you must be _Exalted_ with _The Tillers_, and _Best Friends_ with all of the _Tillers NPCs_.
|confirm
step
goto Valley of the Four Winds 44.6,29.0
.from Enormous Cattail Grouper |tip These mobs will only give you the drop if you are Exalted with the Tillers and Best Friends with the Tillers NPCs.
.collect 1 Old Map##86404
step
'Click the _Old Map_ in your bags. |use Old Map##86404
..accept 31312
step
goto 41.6,30.0
.talk 58705
..turnin 31312
..accept 31313
step
goto 54.2,44.4
.talk 64312
.' Speak to Grainstorer Pei |q 31313/1
step
goto 55.2,47.4
.talk 64315
.' Speak to Stonecarver Mac |q 31313/2
step
goto 56.2,45.2
.talk 64313
.' Speak to Mama Min |q 31313/3
step
goto 54.6,47.0
.talk 64327
.' Speak to Old Man Whitewhiskers |q 31313/4
step
goto 41.6,30.0
.talk 58705
..turnin 31313
..accept 31314
step
goto 37.4.24.2 |n
.' Enter the cave here |goto 37.4,24.2 |noway |c
step
goto 34.9,19.2
.click Hidden Treasure##213767
..turnin 31314
..accept 31315
step
'The cave entrance becomes blocked after you accept _The Heartland Legacy_. You wil have to use your hearthstone or teleport to continue.
|confirm
step
goto Valley of the Four Winds 53.8,47.4
.talk 64314
..turnin 31315
|achieve 7296
step
'Congratulations, you have earned the Ain't Lost No More achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quests Achievements\\Pandaria\\Proven Strength",[[
description This guide will walk you through obtaining the Ain't Lost No More Achievement.
condition end achieved(7297)
step
'For thie achievement you must be at least _Revered_ with _The Shado-Pan_.
|confirm
step
goto 49.4,70.6
.talk 63009
..accept 31127
.' Click here if this quest is unavailable today |confirm
step
goto 49.7,70.5
.talk 62550
.' Tell her you're here to challenge her! |q 31127/1
|only if havequest(31127)
step
goto 50.1,68.3
.talk 63125
.' Let's do this.
.' Defeat Chao the Voice |q 31127/2
|only if havequest(31127)
step
goto 49.4,70.6
.talk 63009
..turnin 31127
|only if havequest(31127)
step
goto 49.4,70.6
.talk 63009
..accept 31128
.' Click here if this quest is unavailable today |confirm
step
goto 49.3,72.0
.talk 62978
.' I'm here to challenge you! |q 31128/1
step
goto 50.6,67.8
.talk 63135
.' All right, let's do this!
.' Defeat Lao-Chin the Iron Belly |q 31128/2
|only if havequest(31128)
step
goto 49.6,70.5
.talk 63009
..turnin 31128
|only if havequest(31128)
step
goto 49.0,70.4
.talk 62304
..accept 31038
|only if rep('Shado-Pan')>=Honored
.' Click here if this quest is unavailable today |confirm
step
goto 48.9,70.1
.talk 62380
.' Ask her to meet in the Challenger's Ring. |q 31038/1
|only if havequest(31038)
step
goto 50.2,67.9
.talk 62834
.' I challenge you!
.' Defeat Snow Blossom |q 31038/2
|only if havequest(31038)
step
goto 49.0,70.4
.talk 62304
..turnin 31038
|only if havequest(31038)
step
goto 49.0,70.4
.talk 62304
..accept 31104
|only if rep('Shado-Pan')>=Revered
.' Click here if this quest is unavailable today |confirm
step
goto 48.9,70.0
.talk 62303
.' Ask her to meet you in the Challenger's Ring. |q 31104/1
|only if havequest(31104)
step
goto 50.4,67.7
.talk 62850
.' I challenge you!
.' Defeat Yalia Sagewhisper |q 31104/2
|only if havequest(31104)
step
goto 49.0,70.4
.talk 62304
..turnin 31104
|only if havequest(31104)
step
goto 49.0,71.3
.talk 63614
..accept 31221
|only if rep('Shado-Pan')>=Revered
.' Click here if this quest is unavailable today |confirm
step
goto 48.9,71.2
.talk 63616
.' Ask him to meet you in the Challenger's Ring. |q 31221/1
|only if havequest(31221)
step
goto 50.6,68.5
.talk 64471
.' Let's see if you can back that talk up.
.' Defeat Temwu of the Red Smoke |q 31221/2
|only if havequest(31221)
step
goto 49.0,71.3
.talk 63614
..turnin 31221
|only if havequest(31221)
step
goto 49.0,71.3
.talk 63614
..accept 31220
|only if rep('Shado-Pan')>=Honored
.' Click here if this quest is unavailable today |confirm
step
goto 49.0,70.9
.talk 63618
.' Ask him to meet you in the Challenger's Ring. |q 31220/1
|only if havequest(31220)
step
goto 50.7,68.2
.talk 64470
.' Let's go!
.' Defeat Hawkmaster Nurong |q 31220/2
|only if havequest(31220)
step
goto 49.0,71.3
.talk 63614
..turnin 31220
|only if havequest(31220)
step
|achieve 7297
step
'Congratulations, you have earned the Proven Strength achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Grill",[[
description This guide will walk you through
description becoming the Master of the Grill.
condition end achieved(7300)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Grill_ |confirm |next wotg
step
label wotg
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Grill"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7300)
|next "end" |only if achieved(7300)
step
label end
.' Earn the Master of the Grill achievement |achieve 7300
step
.' Congratulations, you have earned the Master of the Grill Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Wok",[[
description This guide will walk you through
description becoming the Master of the Wok.
condition end achieved(7301)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Wok_ |confirm |next wotw
step
label wotw
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Wok"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7301)
|next "end" |only if achieved(7301)
step
label end
.' Earn the Master of the Wok achievement |achieve 7301
step
.' Congratulations, you have earned the Master of the Wok Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Pot",[[
description This guide will walk you through
description becoming the Master of the Pot.
condition end achieved(7302)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Pot_ |confirm |next wotp
step
label wotp
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Pot"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7302)
|next "end" |only if achieved(7302)
step
label end
.' Earn the Master of the Pot achievement |achieve 7302
step
.' Congratulations, you have earned the Master of the Pot Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Steamer",[[
description This guide will walk you through
description becoming the Master of the Steamer.
condition end achieved(7303)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Steamer_ |confirm |next wots
step
label wots
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Steamer"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7303)
|next "end" |only if achieved(7303)
step
label end
.' Earn the Master of the Steamer achievement |achieve 7303
step
.' Congratulations, you have earned the Master of the Steamer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Oven",[[
description This guide will walk you through
description becoming the Master of the Oven.
condition end achieved(7304)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Oven_ |confirm |next woto
step
label woto
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Oven"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7304)
|next "end" |only if achieved(7304)
step
label end
.' Earn the Master of the Oven achievement |achieve 7304
step
.' Congratulations, you have earned the Master of the Oven Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of the Brew",[[
description This guide will walk you through
description becoming the Master of the Brew.
condition end achieved(7305)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' If you wish to level up all of your masteries together, please go to the Master of Pandaren Cooking Guide.
.' Click here to level up your cooking and only choose the _Way of the Brew_ |confirm |next wotb
step
label wotb
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_Brew"
step
label cooking_mastery_start
|next "520_up" |only if not achieved(7305)
|next "end" |only if achieved(7305)
step
label end
.' Earn the Master of the Brew achievement |achieve 7305
step
.' Congratulations, you have earned the Master of the Brew Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Master of Pandaren Cooking",[[
description This guide will walk you through
description becoming the Master of Pandaren Cooking.
condition end achieved(7306)
step
.' In order to earn this achievement, you will have to level your cooking skill.
.' This achievement requires that you are leveled in all ways of Pandaren Cooking.
|confirm |next mopc
step
label mopc
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandarian_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_520-600"
step
|next "520_up" |only if not achieved(7306)
|next "end" |only if achieved(7306)
step
label end
.' Earn the Master of Pandaren Cooking achievement |achieve 7306
step
.' Congratulations, you have earned the Master of Pandaren Cooking Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Now I Am the Master",[[
description This guide will walk you through the
description achievement Now I Am the Master.
condition end achieved(7306)
step
.' For this achievement, you will need to complete the Master of Pandaren Cooking achievement.
|condition completedq(31521) |next "daily" |only if completedq(31521)
|condition not completedq(31521) |next "cooking" |only if not completedq(31521)
step
label "cooking"
.' You will need to level your cooking to 600 with each of the 6 styles that have been introduced in Mists of Pandaria.
|confirm
step
.' Proceed to the 520-600 Cooking guide. |next "520_up" |only if skill("Cooking")>525
.' Proceed to the 1-520 Cooking guide. |next "520_down" |only if skill("Cooking")<525
step
label 520_down
#include "Pandaren_Cooking_1-520"
step
label 520_up
#include "Cooking_PreMasteries"
#include "Cooking_520-600"
step
|next "520_up" |only if not achieved(7306)
|next "daily" |only if completedq(31521)
step
label "daily"
.' You will need to complete daily quests and collect _100 Ironpaw Tokens_.
.earn 100 Ironpaw Token##402 |next "school_bell"
|condition default |next "dailyq"
step
label "dailyq"
#include "A_MOP_Cooking_Dailies"
step
|condition curcount(402)>=100  |next "school_bell" |only if curcount(402)>=100
|condition curcount(402)<=100 |next "dailyq" |only if curcount(402)<=100
step
label "school_bell"
goto Valley of the Four Winds 53.5,51.3
.talk 64395
.buy 1 Cooking School Bell##86425
step
label "nomi"
#include "Nomi_Dailies"
step
.'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Pandaren Gourmet",[[
description This guide will walk you through
description the Pandaren Gourmet achievement.
description This guide consists of 2 achievements.
condition end achieved(7326)
step
Sliced Peaches 7326/1
Krasarang Fritters 7326/2
Viseclaw Soup 7326/3
Perfectly Cooked INstant Noodles 7326/4
Toasted Fish Jerky 7326/5
Dried Needle Mushrooms 7326/6
Pounded Rice Cake 7326/7
Yak Cheese Curds 7326/8
Dried Peaches 7326/9
Boiled Silkworm Pupa 7326/10
Roasted Barley Tea 7326/11
Golden Carp Consomme 7326/12
Fish Cake 7326/13
Green Curry Fish 7326/14
Blanched Needle Mushrooms 7326/15
Red Bean Bun 7326/16
Tangy Yogurt 7326/17
Peach Pie 7326/18
Skewered Peanut Chicken 7326/19
Pearl Milk Tea 7326/20
Rice Pudding 7326/21
Wildfowl Ginseng Soup 7326/22
Fish Cake 7326/23
Spicy Vegetable Chips 7326/24
Spicy Salmon 7326/25
Sauteed Carrots 7326/26
Valley Stir Fry 7326/27
Sea Mist Rice Noodles 7326/28
Ginseng Tea 7326/29
Jade Witch Brew 7326/30
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Hydrophobia",[[
description You will need a Gear Score of 440
description Heroic Temple of the Jade Serpent
condition end achieved(6460)
step
.' For this achievement, you will need to be Level 90, as it requires heroic mode.
.' You will also need to have an Item Level of 440.
.' This achievement takes place in the _Temple of the Jade Serpent_, during the Wise Mari encounter.
'|modelnpc 56448
|confirm
step
.' There will be 3 attacks to look out for: _Corrupted Water_, _Hydrolance_ and _Wash Away_.
.' You will need to avoid being hit by these attacks.
.' _Corrupted Water_ is cast on the water surrounding Wise Mari. During the last phase, you will need to jump on the platforms while avoiding Wash Away.
.' _Hydrolance_ will be an attack that appears on the ground in a straight line, it should be easy enough to avoid.
.' _Wash Away_ Is used in the last phase, where he will channel a huge wall of water in a circular motion. Keep on the opposing end of the wall to stay safe from the attack.
.' Note that being hit even once will mess up your chance at earning this achievement.
.' Earn the _Hydrophobia_ achievement |achieve 6460
step
.' Congratulations, you have earned the Hydrophobia Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Cleaning Up",[[
description You will need a Gear Score of 440
description Heroic Temple of the Jade Serpent
condition end achieved(6475)
step
.' For this achievement, you will need to be Level 90, as it requires heroic mode.
.' You will also need to have an Item Level of 440.
.' This achievement takes place in the _Temple of the Jade Serpent_ and involves the Liu Flameheart and Sha of Doubt encounters.
'|modelnpc 56439
'|modelnpc 56732
|confirm
step
.' Upon defeating Liu Flameheart, you will gain a buff called _Purified Water_.
.' Your objective is to defeat the Sha of Doubt before the buff runs out.
.' The buff itself has a _5 minute timer_, so use any buffs you can spare to increase your DPS.
.' Earn the _Cleaning Up_ achievement |achieve 6475
step
.' Congratulations, you  have earned the Cleaning Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Seeds of Doubt",[[
description You will need a Gear Score of 440
description Heroic Temple of the Jade Serpent
condition end achieved(6671)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Hopocalypse Now!",[[
description You will need a Gear Score of 440
description Heroic Stormstout Brewery
condition end achieved(6420)
step
.' For this achievement, you will need to be Level 90, as it requires heroic mode.
.' You will also need to have an Item Level of 440.
.' This achievement takes place in the _Stormstout Brewery_, after the _Ook-Ook_ encounter.
'|modelnpc 56637
|confirm
step
.' After the first boss, there will be a path full of Vermin called _Hoppers_ and _Boppers_.
.' Upon killthing the Boppers, they will drop something called _Big Ol' Hammer_.
.' As you progress through the tunnel, more vermin gather. You will need the help of your tank to gather at least 100 enemies.
.' After the tank has gathered the enemies have only one person use the Big Ol' Hammer
.' Earn the _Hopocalypse Now!_ achievement |achieve 6420
step
.' Congratulations, you have earned the Hopocalypse Now! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Keep Rollin' Rollin' Rollin'",[[
description You will need a Gear Score of 440
description Heroic Stormstout Brewery
condition end achieved(6089)
step
.' For this achievement, you will need to be Level 90, as it requires heroic mode.
.' You will also need to have an Item Level of 440.
.' This achievement takes place in the _Stormstout Brewery_, after the _Ook-Ook_ encounter.
'|modelnpc 56637
|confirm
step
.' During the first encounter of Stormstout Brewery, barrels will spawn and roll around the room as you fight Ook-Ook.
.' Have the DPS in the group click the barrels and run them into the boss 20 times.
'|modelnpc 56637
'|modelnpc 56682
.' Earn the _Keep Rollin' Rollin' Rollin'_ |achieve 6089
step
.' Congratulations, you have earned the Keep Rollin' Rollin' Rollin' Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\How Did He Get Up There?",[[
description This achievement requires the instance Stormstout Brewery
condition end achieved(6400)
step
.' For this achievement, you will need to have access to the _Stormstout Brewery_, a level 85 Mists of Pandaria instance.
.' This achievement takes place in the _Stormstout Brewery_, after the _Ook-Ook_ encounter.
'|modelnpc 56637
|confirm
step
.' After you defeat _Ook-Ook_, there will be a path full of Vermin called _Hoppers_ and _Boppers_.
.' Upon killthing the Boppers, they will drop something called _Big Ol' Hammer_.
.' After you have a Big Ol' Hammer, have your tank gather up at least 5 of the vermin.
.' The _Hozen Clinger_ is under the banner at [22.8,67.2]
.' Drag the vermin up the path up into the room above where you defeated Ook-Ook and you will see a _Hozen Clinger_ hanging off the banners.
.' Use your Hammer and knock the vermin into the Hozen and knock him down. Note that it may take a few tries.
.' Earn the _How Did He Get Up There?_ achievement |achieve 6400
step
.' Congratulations, you have earned the How Did He Get Up There? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Ling-Ting's Herbal Journey",[[
description This achievement requires the instance Stormstout Brewery
condition end achieved(6402)
step
.' For this achievement, you will need to have access to the _Stormstout Brewery_, a level 85 Mists of Pandaria instance.
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
step
.' Congratulations, you have earned the Ling-Ting's Herbal Journey Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Glintrok N' Roll",[[
description You will need a Gear Score of 440
description Heroic Mogu'shan Palace
condition end achieved(6478)
step
.' This achievement requires Heroic Mogu'Shan Palace.
.' You will also need to have an Item Level of 440.
.' This achievement takes place after the first boss of the instance.
|confirm
step
.' At some point during the trash after the second boss, there will be a Glintrok Scout that spots you.
.' You will have _5 Minutes_ from that point to reach Gekkan, defeating him and his 4 Saurok.
.' Earn the _Glintrok N' Roll_ achievement |achieve 6478
step
.' Congratulations, you have earned the Glintrok N' Roll Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\What Does This Button Do?",[[
description You will need a Gear Score of 440
description Heroic Mogu'shan Palace
condition end achieved(6736)
step
.' This achievement requires Heroic Mogu'Shan Palace.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the final encounter with Xin the Weaponmaster.
|confirm
step
.' Be warned that this acheivement is very challanging.
.' At 33% Crossbow Traps activate about 30 seconds apart.
.' You will see a message _"You hear a faint clicking noise..."_
.' When this happens, crystals will spawn at the _Front Left_ of the room and the _Back Right_ of the room.
.' Have DPS from the group click the two crystals at the same time when they are both active, which will activate a new crystal, that will appear at the Back Left of the room.
.' Have the DPS standing at the mouth of the Crossbows at the first two crystal locations, and the tank standing at the new crystal location.
.' Have your Healer stand at the center of the room.
.' Earn the _What Does This Button Do?_ achievement |achieve 6736
step
Congratulations, you have earned the What Does This Button Do? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Respect",[[
description You will need a Gear Score of 440
description Heroic Shado-Pan Monastery
condition end achieved(6477)
step
.' This achievement requires Heroic Shado-Pan Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the second encounter with Master Snowdrift.
|confirm
'|modelnpc 56713
'|modelnpc 56395
step
.' For this achievement, you will need to use the _/bow_ emote for each _Shado-Pan Novice_ that you face.
.' They will bow to you upon being defeated.
.' Earn the _Respect_ achievement |achieve 6477
'|modelnpc 56395
step
.' Congratulations, you have earned the Respect Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\The Obvious Solution",[[
description You will need a Gear Score of 440
description Heroic Shado-Pan Monastery
condition end achieved(6472)
step
.' This achievement requires Heroic Shado-Pan Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the third encounter with the Sha of Violence.
|confirm
'|modelnpc 56719
step
.' For this achievement, you will need to _ALL_ of the remaining Sha enemies imprisoned in the Sealed Chambers, _THEN_ defeat the Sha of Violence.
.' Earn _The Obvious Solution_ achievement |achieve 6472
step
.' Congratulations, you have earned The Obvious Solution Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Hate Leads to Suffering",[[
description You will need a Gear Score of 440
description Heroic Shado-Pan Monastery
condition end achieved(6471)
step
.' This achievement requires Heroic Shado-Pan Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the fourth encounter with Taran Zhu.
|confirm
'|modelnpc 56884
step
.' For this,  you will need to let your _Hatred_ reach maximum level.
.' It's recommended that you wait til his health is low before letting it reach the max.
.' Once _EVERYONE_ in the group has maximum hatred, defeat Taran Zhu.
.' Earn the _Hate Leads to Suffering_ achievement |achieve 6471
'|modelnpc 56884
step
.' Congratulations, you have earned the Hate Leads to Suffering Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Bomberman",[[
description You will need a Gear Score of 440
description Heroic Gate of the Setting Sun
condition end achieved(6479)
step
.' This achievement requires Heroic Gate of the Setting Sun.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the first encounter with Saboteur Kip'tilak.
|confirm
'|modelnpc 56884
step
.' This achievement is tricky and fairly deadly.
.' Let Saboteur Kip'tilak throw out _Stable Munitions_ around the room.
.' When you count at least 15, damage Saboteur Kip'tilak to 70% health, which will trigger his _World in Flames_ ability.
.' It will detonate all of the explosives in the room, sending 4 waves in each direction from each of the munitions detonated.
.' Earn the _Bomberman_ achievement |achieve 6479
'|modelnpc 56906
step
.' Congratulations, you have earned the Bomberman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Mantid Swarm",[[
description You will need a Gear Score of 440
description Heroic Gate of the Setting Sun
condition end achieved(6945)
step
.' This achievement requires Heroic Gate of the Setting Sun.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the fourth encounter with Raigonn.
|confirm
'|modelnpc 56877
step
.' For this achievement, you will need to ignore any add that Raigonn summons during the encounter.
.' The tank will need to pick them up as they appear.
.' It will help to use _Crowd Control_ on them as well.
.' Hunters and Rogues can use _Misdirection_ and _Tricks of the Trade_ respectively to help the tank maintain threat on the adds.
.' Focus on DPSing Raigonn down quickly.
.' Earn the _Mantid Swarm_ achievement |achieve 6945
'|modelnpc 56877
step
.' Congratulations, you have earned the Mantid Swarm Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Humane Society",[[
description You will need a Gear Score of 440
description Heroic Scarlet Halls
condition end achieved(6684)
step
.' This achievement requires Heroic Scarlet Halls.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the first encounter with Houndmaster Braun.
|confirm
'|modelnpc 59303
step
.' For this achievement, you will need to control the hounds that accompany Houndmaster Braun.
.' The tank will need to pick them up as they appear.
.' It will help to use _Crowd Control_ on them as well.
.' Hunters and Rogues can use _Misdirection_ and _Tricks of the Trade_ respectively to help the tank maintain threat on the adds.
.' Focus on DPSing Houndmaster Braun down quickly.
.' Earn the _Humane Society_ achievement |achieve 6684
step
.' Congratulations, you have earned the Humane Society Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Mosh Pit",[[
description You will need a Gear Score of 440
description Heroic Scarlet Halls
condition end achieved(6427)
step
.' This achievement requires Heroic Scarlet Halls.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the second encounter with Armsmaster Harlan.
|confirm
'|modelnpc 58632
step
.' For this achievement, you will need your _Tank_ and _DPS_ to get caught in the Armsmasster's _Bladesof Light_ ability.
.' Be sure that there are also 4 _Scarlet Defenders_ along with you before getting caught.
.' You will need _HEAVY HEALS_ throughout the duration of the ability.
.' After surviving, defeat Armsmaster Harlan.
.' If applicable, you can have 3 players get caught with 5 Scarlet Defenders.
.' This is recommended if you have someone who can _OFF HEAL_ with the Healer.
.' Earn the _Mosh Pit_ achievement |achieve 6427
'|modelnpc 58632
'|modelnpc 58998
step
.' Congratulations, you have earned the Mosh Pit achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Burning Man",[[
description You will need a Gear Score of 440
description Heroic Scarlet Monastery
condition end achieved(6928)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the second encounter with Brother Korloff.
|confirm
'|modelnpc 59223
step
.' Before engaging in combat with Brother Korloff, clear all trash from the entire room.
.' Have the _Tank_ drag him to any of the six _Training Dummies_ in the room.
.' When _Brother Korloff_ uses _BLAZING FISTS_ or _FIRESTORM KICK_, face him at one of the dummies and Ignite it on fire.
.' The first 3 are located here. [Scarlet Monastery/2 56.1,40.0]
.' The second 3 are located here. [Scarlet Monastery/2 42.2,40.1]
.' Earn the _Burning Man_ achievement |achieve 6928
step
.' Congratulations, you have earned the Burning Man Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\And Stay Dead",[[
description You will need a Gear Score of 440
description Heroic Scarlet Monastery
condition end achieved(6929)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the final encounter with High Inquisitor Whitemane.
|confirm
step
.' Upon killing Commander Durand, High Inquisitor Whiteman comes out.
.' After a bit, she will start to cast an interruptable spell, _Mass Resurrection_.
.' _DO NOT_ interrupt it.
.' When the sell is finished, 13 Scarlet Judicators will come from [Scarlet Monastery/2 58.1,74.6].
.' Use any form of _Crowd Control_ that your group has.
.' _Hunters_ and _Rogues_  use _Misdirection_ and _Tricks of the Trade_ respectively to get aggro to your tanks.
.' Defeat all of the Scarlet Judicators, then kill Commander Durand and High Inquisitor WHitemane.
.' Earn the _And Stay Dead!_ achievement |achieve 6929
'|modelnpc 58605
'|modelnpc 03977
'|modelnpc 60040
step
.' Congratulations, you have earned the And Stay Dead! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Empowered Spiritualist",[[
description You will need a Gear Score of 440
description Heroic Scarlet Monastery
condition end achieved(6946)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the first encounter with Thalnos the Soulrender.
|confirm
step
.' For this achievement, you will need to leave 3 _Fallen Crusaders_ alive.
.' Be sure to DPS him down slowly.
.' As the fight progresses, he will cast a spell called _Empowering Spirits_, which will turn a Fallen Crusader into an _Empowered Zombie_.
.' For each Empowered Zombie present, you will need one less Fallen Crusader alive.
.' Once there are 3 _Empowered Zombies_, DPS should focus on Thalnos the Soulrender and defeat him as quickly as possible.
.' Having an Off-Healer might be good, but you will likely need all the dps you can get once all 3 zombies are active.
.' Earn the _Empowered Spiritualist_ achievement |achieve 6946
step
.' Congratulations, you have earned the Empowered Spiritualist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Attention to Detail",[[
description You will need a Gear Score of 440
description Heroic Scholomance
condition end achieved(6531)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the second encounter with Jandic Barov.
|confirm
step
.' This is a tricky achievement.
.' You will need to memorize Jandice Barov's features by paying attention to her appearance.
.' Look carefully at the neck, her facial markings, her headband color, hair style and eye color.
.' Earn the _Attention to Detail_ achievement |achieve 6531
'|modelnpc 59184
step
.' Congratulations, you have earned the Attention to Detail Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Rattle No More",[[
description You will need a Gear Score of 440
description Heroic Scholomance
condition end achieved(6394)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place during the third encounter with Rattlegore.
|confirm
step
.' Rattlegore gains a buff that stacks for each of his melee swings called _Rusted_.
.' To earn this achievement, you _MUST NOT_ let him get more than 5 stacks of this Buff.
.' The tank _MUST_ kite Rattlegore around the room when he has 5 stacks of rusted.
.' DPS needs to make sure they don't peel aggro off of the tank while they are kiting.
.' _Hunters_ and _Rogues_ be sure to use _Misdirection_ and _Tricks of the Trade_ respectively to redirect aggro.
.' Repeat this process until Rattlegore is defeated.
.' Earn the _Rattle No More_ achievement |achieve 6394
step
.' Congratulations, you have earned the Rattle No More Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Sanguinarian",[[
description You will need a Gear Score of 440
description Heroic Scholomance
condition end achieved(6396)
step
.' This achievement requires Heroic Scarlet Monastery.
.' You will also need to have an Item Level of 440.
.' This achievement takes place after the third encounter with Rattlegore.
|confirm
step
.'
.'Whenever you kill a Carver you CC the one with less stacks than the other, pull a new one and always kill the Carver with the highest number of stacks.
.' After defeating Rattlegore, there will be a room full of _Krastinovian Carvers_.
.' The goal here is to end up with a Carver that has 99 stacks of the buff _Boiling Bloodthirst_.
.' Start by pulling 3 _Krastinovian Carvers_.
.' Use _Crowd Control_ on one and kill another. _MAKE SURE YOU KILL THEM CLOSE TOGETHER_.
.' Refresh your Crowd Control, and pull another to you, killing one of the carvers with 2 stacks.
.' You should now have a carver with 4 stacks and 3 stacks.
.' From this point on, whenever you kill a carver, _ALWAYS_ CC the one with less stacks, pull a new one, then kill the carver with the highest stacks.
.' Earn the _Sanguinarian_ achievement |achieve 6396
'|modelnpc 59368
step
.' Congratulations, you have earned the Sanguinarian Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\A Brewing Storm",[[
description This guide will walk you through the A Brewing Storm Achievement.
author support@zygorguides.com
step
'Use the _Dungeon Finder_, and click the _Scenarios_ tab to queue for _A Brewing Storm_.
|confirm
step
goto A Brewing Storm 55.3,45.0
.talk 58740
.' Let's get this lightning party started, Blanche.
.' Defend the Brewing Process |tip Click on the Brewkegs when they light on fire to extinguish them. Avoid standing near the lightning rods when they light up.
.clicknpc Brewkeg##58916
|confirm
step
goto 55.3,44.9 |n
.talk 58740
.' Escort Blanche to [49.9,32.6] |goto 49.9,32.6 <5 |c
step
goto 30.2,68.3
.talk 58740
.' Let's kill some lizards, Blanche!
.from Borokhula the Destroyer##58739 |tip Borokhula will start to cast Swamp Smash in front of him, do not stand in it. When he begins to channel Earth Shattering, watch the ground and avoid the red circles, large spikes will come out of them. Designate one party member to add control. The adds can be quickly dispatched using the Boomer Brew Strike button on the screen, target an add and click it twice to instantly kill it.
|achieve 7252
step
'Congratulations, you have earned the A Brewing Storm Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Dungeon Achievements\\Arena of Annihilation",[[
description This guide will help you earn the Arena of Annihilation Achievement.
description You must be level 90 for this achievement.
condition end achieved(7271)
step
goto Proving Grounds 46.6,16.1
.talk 63315
..accept 31207
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Scar-Shell##63311 |tip Crushing Bite reduces the armor of whomever it hits by 50%. Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Jol'Grum##63312 |tip Whoever is holding the attention of Jol'Grum should remain still. The tank moving causes his rage bar to build. If the bar reaches 100, he will become Angry. This is a light enrage. He will cast Headbutt on the tank which knocks them back. He will also jump to the middle and use Smash, knocking all players back.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Little Liuyang##63313 |tip Liuyang will constantly shoot off Fireballs and paths of fire. Avoid stand in fire. At around 40%, Firewall will be cast. Run counter-clockwise while killing the Flmecoaxig Spirits. Kill them will cause a section of the firewall to vanish. There are three of them.
.from Flamecoaxing Spirit##63539
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Chagan Firehoof##63318 |tip He will use Trailblaze on a random player, this leaves fire on the ground. Hammertime does damage to whomever is tanking.
.from Batu##63872 |tip There is no real benefit to killing Batu, just ignore him until and kill Chagan.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Satay Byu##64281 |tip Satay Byu will apply Slowing Poison with his basic attacks. If Slowing Poison reaches 20 stacks it will root the target in place. Speed of the Jinja will rapidly strike in front of Satay, run away from this.
step
goto 50.1,18.1
.talk 63314
..turnin 31207
|achieve 7271
step
' Congratulations, you have earned the Arena of Annihilation Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Cat Fight!",[[
description
description
condition end achieved(6594)
step
.' This achievements simply requires that you win 10 pet battles.
.' You can either play against Players or NPCs.
.' Earnt he _Cat Fight!_ achievement |achieve 6594
step
Congratulations, you have earned the Cat Fight! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Experienced Pet Battler",[[
description
description
condition end achieved(6593)
step
.' This achievement will require that you _win 50 pet battles_.
.' PVP, NPC and Critter battles count towards this achievement.
.' Earn the _Experienced Pet Battler_ achievement |achieve 6593
step
.' Congratulations, you have earned the Experienced Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Master Pet Battler",[[
description This guide will help you earn the Master Pet Battler Achievement.
description
condition end achieved(6462)
step
.' This achievement simply requires that you _win 250 pet battles_.
.' You can either play against Players or NPCs.
.' Earn the _Master Pet Battler_ achievement |achieve 6462
step
Congratulations, you have earned the Master Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Grand Master Pet Battler",[[
description This guide will help you earn the Grand Master Pet Battler Achievement.
description
condition end achieved(6591)
step
.' This achievement simply requires that you _win 1000 pet battles_.
.' You can either play against Players or NPCs.
.' Earn the _Grand Master Pet Battler_ achievement |achieve 6591
step
Congratulations, you have earned the Grand Master Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Legendary Pet Battler!",[[
description This guide will help you earn the Legendary Pet Battler Achievement.
description
condition end achieved(6592)
step
.' This achievement simply requires that you _win 5000 pet battles_.
.' You can either play against Players or NPCs.
.' Earn the _Cat Fight!_ achievement |achieve 6592
step
Congratulations, you have earned the Legendary Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Pet Brawler!",[[
description This guide will help you earn the Pet Brawler Achievement.
description
condition end achieved(6595)
step
.' For this achievement, you will need to win 10 battles against _Another Player_.
.' Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge. |tip If you have a friend willing to help, that will make this much easier.
.' Earn the _Pet Brawler_ achievement |achieve 6595
step
.' Congratulations, you have earned the Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Experienced Pet Brawler!",[[
description This guide will help you earn the Experienced Pet Brawler Achievement.
description
condition end achieved(6596)
step
.' For this achievement, you will need to win 50 battles against _Another Player_.
.' Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge. |tip If you have a friend willing to help, that will make this much easier.
.' Earn the _Experienced Pet Brawler_ achievement |achieve 6596
step
.' Congratulations, you have earned the Experienced Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Master Pet Brawler!",[[
description This guide will help you earn the Master Pet Brawler Achievement.
description
condition end achieved(6597)
step
.' For this achievement, you will need to win 250 battles against _Another Player_.
.' Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge. |tip If you have a friend willing to help, that will make this much easier.
.' Earn the _Master Pet Brawler_ achievement |achieve 6597
step
.' Congratulations, you have earned the Master Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Grand Master Pet Brawler!",[[
description This guide will help you earn the Grand Master Pet Brawler Achievement.
description
condition end achieved(6598)
step
.' For this achievement, you will need to win 1000 battles against _Another Player_.
.' Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge. |tip If you have a friend willing to help, that will make this much easier.
.' Earn the _Grand Master Pet Brawler_ achievement |achieve 6598
step
.' Congratulations, you have earned the Grand Master Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Legendary Pet Brawler!",[[
description This guide will help you earn the Legendary Pet Brawler Achievement.
description
condition end achieved(6599)
step
.' For this achievement, you will need to win 5000 battles against _Another Player_.
.' Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge. |tip If you have a friend willing to help, that will make this much easier.
.' Earn the _Legendary Pet Brawler_ achievement |achieve 6599
step
.' Congratulations, you have earned the Legendary Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Big City Pet Brawlin' - Alliance",[[
description
description
condition end achieved(6584)
step
.' For this achievement, you will have to win a battle in each of the Alliance capitals.
.' You can face players or npcs.
|confirm
step
goto Stormwind City 54.9,92.0
.' _Stormwind Pet Battle_: |achieve 6584/1
.' You can find Squirrels around this area.
step
goto Ironforge 61.4,15.3
.' _Ironforge Pet Battle_: |achieve 6584/2
.' You can find Long-tailed Moles around this area.
step
goto Darnassus 32.6,42.0
.' _Darnassus Pet Battle_:  |achieve 6584/3
.' You can find Red-Tailed Chipmunks around this area.
step
goto The Exodar 73.1,35.3
.' _Exodar Pet Battle_: |achieve 6584/4
.' There are several spots to find critters in the Exodar.
[46.4,29.6]
[41.9,71.4]
[55.3,82.3]
step
.' Earn the _Big City Pet Brawlin' - Alliance_ achievement |achieve 6584
step
.' Congratulations, you have earned the Big City Pet Brawlin' - Alliance Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Big City Pet Brawlin' - Horde",[[
description
description
condition end achieved(6621)
step
.' For this achievement, you will have to face either a player or a random critter in the Capitals of the Horde.
|confirm
step
goto Orgrimmar 44.9,35.6
.' _Orgrimmar Pet Battle_: |achieve 6621/1
..' You can find critters near the wall here.
step
goto Thunder Bluff 24.6,12.5
.' _Thunder Bluff Pet Battle_: |achieve 6621/2
.' You can find critters near the ledge here.
step
goto Undercity 59.7,36.6
.' _Undercity_: |achieve 6621/3
.' You can find maggots in the canals.
step
goto Silvermoon City 78.5,77.3
.' _Silvermoon City_ |achieve 6621/4
.' Earn the _Big City Pet Brawlin' - Horde_ achievement |achieve 6621
step
.' Congratulations, you have earned the Big City Pet Brawlin' - Horde Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Big City Pet Brawler",[[
description
description
condition end achieved(6622)
step
.' In order to earn this achievement, you will need to complete the following tasks:
..' Big City Pet Brawlin' - Alliance |achieve 6584
..' Big City Pet Brawlin' - Horde |achieve 6621
.' Refer to the respective guides to earn the achievements listed above.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Local Pet Mauler",[[
description
description
condition end achieved(6558)
step
goto Durotar 36.9,26.2
.' Battle in Durotar |achieve 6558/1
.' Enemies in the area are level 1-3.
step
goto Azshara 29.8,77.2
.' Battle in Azshara |achieve 6558/7
step
goto Ashenvale 72.5,80.7
.' Battle in Ashenvale |achieve 6558/9
.' There are level 5 roaches in the area.
step
goto Northern Barrens 33.6,39.6
.' Battle in the Northern Barrens |achieve 6558/6
.' There are level 3 adders in the area.
step
goto Stonetalon Mountains  66.3,84.4
.' Battle in Stonetalon Mountains |achieve 6558/10
.' There are level 6 alpine chipmunks around rabbits around the area.
step
goto Southern Barrens 41.0,54.4
.' Battle in the Southern Barrens |achieve 6558/14
.' There are level 9 prarie dogs around this area.
step
goto Mulgore 62.3,66.5
.' Battle in Mulgore |achieve 6558/4
.' Mice, adders and prarie dogs around this area.
step
goto Dustwallow Marsh 32.8,46.6
.' Battle in Dustwallow Marsh |achieve 6558/17
.' There are level 12 Toads and Snakes around this area.
step
goto Thousand Needles 9.1,26.4
.' Battle in Thousand Needles |achieve 6558/12
.' There are level 13 Scorpids in the area.
step
goto Feralas 80.8,44.4
.' Battle in Feralas |achieve 6558/11
.' There are level 11 animals around this area.
step
.' Earn the _Local Pet Mauler_ achievement |achieve 6558
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\No Time To Heal",[[
description
description
condition end achieved(6620)
step
.' This achievement requires that you face players in the new _Pet Battle System_.
.' To earn this achievement, you will need to _win 5 times in a row without having a pet die in battle_.
.' To up your chances, try and use pets that have healing abilities and switch them out when they are low on health.
.' It also helps to have higher level pets than another player.
.' Earn the _No Time To Heal_ achievement |achieve 6620
step
Congratulations, you have earned the No Time to Heal Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Win Streak",[[
description
description
condition end achieved(6619)
step
.' Win 25 pet battles in a row.
.' It can be against anyone and anything.
.' It's suggested that you take a high level pet and battle against level 1's in starter / low level zones to get it done the fastest.
.' Earn the _Win Streak_ achievement |achieve 6619
step
.' Congratulations, you have earned the Win Streak Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\A Rare Catch",[[
description Capture a Rare Quality Battle Pet
condition end achieved(7462)
step
goto Elwynn Forest 44.6,53.4
.' The _Cats_ in this area are level 1.
.' Run around this area challenging pets to a Pet Battle until you find one that is of a _Rare_ quality according to the guide. Battle it until it is below 35% and capture it.
.' Capture a rare-quality Battle Pet. |achieve 7462
|modeldisplay 5585
step
.' Congratulations, you have earned the _A Rare Catch_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\An Uncommon Find",[[
description Capture an uncommon Quality Battle Pet
condition end achieved(7465)
step
goto Elwynn Forest 44.6,53.4
.' The _Cats_ in this area are level 1.
.' Run around this area challenging pets to a Pet Battle until you find one that is of an _Uncommon_ quality according to the guide. Battle it until it is below 35% and capture it.
.' Capture an uncommon-quality Battle Pet. |achieve 7465
|modeldisplay 5585
step
.' Congratulations, you have earned the _An Uncommon Find_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\He's Mine!",[[
description This guide will help you earn the He's Mine! Achievement.
description
condition end achieved(6554)
step
.' For this achievement, you will need to _capture 10 pets in Pet Battles_.
.' Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
.' Earn the _He's Mine!_ achievement |achieve 6554
step
.' Congratulations, you have earned the _He's Mine!_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Building a Team",[[
description This guide will help you earn the Building a Team Achievement.
description
condition end achieved(6555)
step
.' For this achievement, you will need to _capture 25 pets in Pet Battles_.
.' Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
.' Earn the _Building a Team_ achievement |achieve 6555
step
.' Congratulations, you have earned the _Building a Team_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Going to Need More Traps",[[
description This guide will help you earn the Going to Need More Traps Achievement.
description
condition end achieved(6556)
step
.' For this achievement, you will need to _capture 50 pets in Pet Battles_.
.' Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
.' Earn the _Going to Need More Traps_ achievement |achieve 6556
step
.' Congratulations, you have earned the _Going to Need More Traps_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Master Pet Hunter",[[
description This guide will help you earn the Master Pet Hunter Achievement.
description
condition end achieved(6557)
step
.' For this achievement, you will need to _capture 100 pets in Pet Battles_.
.' Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
.' Earn the _Master Pet Hunter_ achievement |achieve 6557
step
.' Congratulations, you have earned the _Master Pet Hunter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Zen Pet Hunter",[[
description This guide will help you earn the Zen Pet Hunter Achievement.
description
condition end achieved(7436)
step
.' For this achievement, you will need to _capture 200 pets in Pet Battles_.
.' Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
.' Earn the _Zen Pet Hunter_ achievement |achieve 7436
step
.' Congratulations, you have earned the _Zen Pet Hunter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Trainer Extraordinaire",[[
description This guide will help you earn the Trainer Extraordinaire Achievement.
description
condition end achieved(7482)
step
.' For this achievement, you will need to _earn 100 Pet Battle Achievement Points_.
.' Complete any of the other Achievement Guides in this section to gain achievement points.
.' Earn the _Trainer Extraordinaire_ achievement |achieve 7482
step
.' Congratulations, you have earned the _Trainer Extraordinaire_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Battle Master",[[
description This guide will help you earn the Battle Master Achievement.
description
condition end achieved(7483)
step
.' For this achievement, you will need to _earn 200 Pet Battle Achievement Points_.
.' Complete any of the other Achievement Guides in this section to gain achievement points.
.' Earn the _Battle Master_ achievement |achieve 7483
step
.' Congratulations, you have earned the _Battle Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Ultimate Trainer",[[
description This guide will help you earn the Ultimate Trainer Achievement.
description
condition end achieved(6600)
step
.' For this achievement, you will need to _earn 300 Pet Battle Achievement Points_.
.' Complete any of the other Achievement Guides in this section to gain achievement points.
.' Earn the _Ultimate Trainer_ achievement |achieve 6600
step
.' Congratulations, you have earned the _Ultimate Trainer_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Time to Open a Pet Store",[[
description This guide will help you earn the Time to Open a Pet Store Achievement.
description
condition end achieved(7521)
step
.' For this achievement, you will need to _earn 400 Pet Battle Achievement Points_.
.' Complete any of the other Achievement Guides in this section to gain achievement points.
.' Earn the _Time to Open a Pet Store_ achievement |achieve 7521
step
.' Congratulations, you have earned the _Time to Open a Pet Store_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\That's a Lot of Pet Food",[[
description Obtain a companion pet.
author support@zygorguides.com
condition end achieved(7501)
step
goto Elwynn Forest,44.2,53.4
.talk 6367
.buy Cat Carrier (Bombay)##8485 |n
.' Click the Cat Carrier in your bags |use Cat Carrier (Bombay)##8485
.' Earn the Can I Keep Him? Achievement |achieve 1017
step
.' If you would like to earn the other achievements that deal with pets, check out our Pets and Mounts guide!
.' The next step will show you your progress with pet related achievements.
.' Click here to proceed. |confirm
step
'Earn the Plenty Of Pets Achievement |achieve 15
'Earn the Plethora Of Pets Achievement |achieve 1248
'Earn the Shop Smart, Shop Pet...Smart Achievement |achieve 1250
'Earn the Lil' Game Hunter Achievement |achieve 2516
'Earn the Petting Zoo Achievement |achieve 5876
'Earn the Menagerie Achievement |achieve 5877
'Earn the Littlest Pet Shop Achievement |achieve 5875
'Earn the Going to Need More Leashes Achievement |achieve 7500
'Earn the That's a Lot of Pet Food Achievement |achieve 7501
step
'Congratulations!  You've earned:
.' Can I Keep Him? Achievement
.' Plenty Of Pets Achievement
.' Plethora Of Pets Achievement
.' Shop Smart, Shop Pet...Smart Achievement
.' Lil' Game Hunter Achievement
.' Petting Zoo Achievement
.' Menagerie Achievement
.' Littlest Pet Shop Achievement
.' Going to Need More Leashes Achievement
.' That's a Lot of Pet Food Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Newbie",[[
description This guide will walk you through obtaining the Newbie Achievement.
author support@zygorguides.com
condition end achieved(7433)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 3_.
.' Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 3.
.' Earn the _Newbie_ achievement |achieve 7433
step
.' Congratulations, you have earned the _Newbie_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Just a Pup",[[
description This guide will walk you through obtaining the Just a Pup Achievement.
author support@zygorguides.com
condition end achieved(6566)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 5_.
.' Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 5.
.' Earn the _Just a Pup_ achievement |achieve 6566
step
.' Congratulations, you have earned the _Just a Pup_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Growing Up",[[
description This guide will walk you through obtaining the Growing Up Achievement.
author support@zygorguides.com
condition end achieved(7433)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 10_.
.' Challenge NPCs to _Growing Up_ and win, gaining XP for your battle pet, until it reaches level 10.
.' Earn the _Growing Up_ achievement |achieve 6567
step
.' Congratulations, you have earned the _Growing Up_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Time for a Leash",[[
description This guide will walk you through obtaining the Time for a Leash Achievement.
author support@zygorguides.com
condition end achieved(7433)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 15_.
.' Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 15.
.' Earn the _Time for a Leash_ achievement |achieve 6568
step
.' Congratulations, you have earned the _Time for a Leash_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\Old Timer",[[
description This guide will walk you through obtaining the Old Timer Achievement.
author support@zygorguides.com
condition end achieved(7433)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 20_.
.' Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 20.
.' Earn the _Old Timer_ achievement |achieve 6569
step
.' Congratulations, you have earned the _Old Timer_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\All Growns Up!",[[
description This guide will walk you through obtaining the All Growns Up! Achievement.
author support@zygorguides.com
condition end achieved(7433)
step
.' For this Achievement, you will need to _Raise a Battle Pet to Level 25_.
.' Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 25.
.' Earn the _All Growns Up!_ achievement |achieve 6570
step
.' Congratulations, you have earned the _All Growns Up!_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Pet Battle System\\That was Close!",[[
description This guide will walk you through obtaining the That was Close! Achievement.
author support@zygorguides.com
condition end achieved(6571)
step
.' For this Achievement, you will need to _Capture a Battle Pet below 5% Health_.
|confirm
step
step
goto Elwynn Forest 44.6,53.4
.' The _Cats_ in this area are level 1.
.' Run around this area challenging pets to a Pet Battle. Fight until it is below 5% health and capture it. |tip If all your pets are too high level for this, you will have to capture one first, and battle against the others.
.' Capture a Battle Pet below 5% health. |achieve 6571
|modeldisplay 1986
step
.' Congratulations, you have earned the _That was Close!_ Achievement!
]])
