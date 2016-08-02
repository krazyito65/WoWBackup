local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Azure Water Strider",[[
description This guide will help you acquire the Azure Water Strider Mount.
model 41711
condition end hasmount(118089)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |confirm |next
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Azure Water Strider##81354
.learnmount Azure Water Strider##118089 |use Reins of the Azure Water Strider##81354
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Orange Water Strider",[[
description This guide will help you acquire the Orange Water Strider Mount.
model 43715
condition end hasmount(127272)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |confirm |next
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Orange Water Strider##87792
.learnmount Orange Water Strider##127272 |use Reins of the Orange Water Strider##87792
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Jade Water Strider",[[
description This guide will help you acquire the Jade Water Strider Mount.
model 43714
condition end hasmount(127274)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |confirm |next
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Jade Water Strider##87793
.learnmount Jade Water Strider##127274 |use Reins of the Jade Water Strider##87793
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Crimson Water Strider",[[
description This guide will help you acquire the Crimson Water Strider Mount.
model 43713
condition end hasmount(127271)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |confirm |next
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Crimson Water Strider##87791
.learnmount Crimson Water Strider##127271 |use Reins of the Crimson Water Strider##87791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Golden Water Strider",[[
description This guide will help you acquire the Golden Water Strider Mount.
model 43716
condition end hasmount(127278)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |confirm |next
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Golden Water Strider##87794
.learnmount Golden Water Strider##127278 |use Reins of the Golden Water Strider##87794
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Black Riding Goat",[[
description This guide will help you acquire the Black Riding Goat Mount.
model 44836
condition end hasmount(130138)
step
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Click here to be taken to begin becoming Exalted with The Tillers. |confirm |next "dailies"
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "tillers_prequests"
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the Black Riding Goat##89391
.learnmount Black Riding Goat##130138 |use Reins of the Black Riding Goat##89391
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Brown Riding Goat",[[
description This guide will help you acquire the Brown Riding Goat Mount.
model 44807
condition end hasmount(130086)
step
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Click here to be taken to begin becoming Exalted with The Tillers. |confirm |next "dailies"
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "tillers_prequests"
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the Brown Riding Goat##89362
.learnmount Brown Riding Goat##130086 |use Reins of the Brown Riding Goat##89362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\White Riding Goat",[[
description This guide will help you acquire the White Riding Goat Mount.
model 44837
condition end hasmount(130137)
step
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Click here to be taken to begin becoming Exalted with The Tillers. |confirm |next "dailies"
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "tillers_prequests"
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the White Riding Goat##89390
.learnmount White Riding Goat##130137 |use Reins of the White Riding Goat##89390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Regal Riding Crane",[[
description This guide will help you acquire the Regal Riding Crane Mount.
model 43706
condition end hasmount(127177)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Regal Riding Crane##87783
.learnmount Regal Riding Crane##127177 |use Reins of the Regal Riding Crane##87783
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Azure Riding Crane",[[
description This guide will help you acquire the Azure Riding Crane Mount.
model 43704
condition end hasmount(127174)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Azure Riding Crane##87781
.learnmount Azure Riding Crane##127174 |use Reins of the Azure Riding Crane##87781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Golden Riding Crane",[[
description This guide will help you acquire the Golden Riding Crane Mount.
model 43705
condition end hasmount(127176)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Golden Riding Crane##87782
.learnmount Golden Riding Crane##127176 |use Reins of the Golden Riding Crane##87782
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blonde Riding Yak",[[
description This guide will help you acquire the Blonde Riding Yak Mount.
model 43712
condition end hasmount(127220)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Blonde Riding Yak##87789
.learnmount Blonde Riding Yak##127220 |use Reins of the Blonde Riding Yak##87789
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Grey Riding Yak",[[
description This guide will help you acquire the Grey Riding Yak Mount.
model 43711
condition end hasmount(127216)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Grey Riding Yak##87788
.learnmount Grey Riding Yak##127216 |use Reins of the Grey Riding Yak##87788
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Grand Expedition Yak",[[
description This guide will help you acquire the Grand Expedition Yak Mount.
model 42703
condition end hasmount(122708)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Grand Expedition Yak##84101
.learnmount Grand Expedition Yak##122708 |use Reins of the Grand Expedition Yak##84101
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Golden Cloud Serpent",[[
description This guide will help you acquire the Golden Cloud Serpent Mount.
model 41991
condition end hasmount(123993)
step
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Click here to be taken to the reputation guide to become Exalted with The Order of the Cloud Serpent. |confirm |next
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |confirm |next "buy"
step
step
goto Vale of Eternal Blossoms 60.6,21.7
.talk 64533
..accept 31375
step
goto The Jade Forest 57.8,45.0
.talk 58228
..turnin 31375
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
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Golden Cloud Serpent##85429
.learnpet Golden Cloud Serpent##123993 |use Reins of the Golden Cloud Serpent##85429
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jade Cloud Serpent",[[
description This guide will help you acquire the Jade Cloud Serpent Mount.
model 40590
condition end hasmount(113199)
step
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Click here to be taken to the reputation guide to become Exalted with The Order of the Cloud Serpent. |confirm |next
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |confirm |next "buy"
step
step
goto Vale of Eternal Blossoms 60.6,21.7
.talk 64533
..accept 31375
step
goto The Jade Forest 57.8,45.0
.talk 58228
..turnin 31375
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
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Jade Cloud Serpent##79802
.learnpet Jade Cloud Serpent##113199 |use Reins of the Jade Cloud Serpent##79802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Azure Cloud Serpent",[[
description This guide will help you acquire the Azure Cloud Serpent Mount.
model 41989
condition end hasmount(123992)
step
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Click here to be taken to the reputation guide to become Exalted with The Order of the Cloud Serpent. |confirm |next
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |confirm |next "buy"
step
step
goto Vale of Eternal Blossoms 60.6,21.7
.talk 64533
..accept 31375
step
goto The Jade Forest 57.8,45.0
.talk 58228
..turnin 31375
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
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Azure Cloud Serpent##85430
.learnpet Azure Cloud Serpent##123992 |use Reins of the Azure Cloud Serpent##85430
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Green Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Green Shado-Pan Riding Tiger Mount.
model 44759
condition end hasmount(129932)
step
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |confirm |next "dailies"
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |confirm |next "buy"
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|only if not completedq(31389)
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Green Shado-Pan Riding Tiger##89305
.learnmount Shado-Pan Riding Tiger##129932 |use Reins of the Green Shado-Pan Riding Tiger##89305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Red Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Red Shado-Pan Riding Tiger Mount.
model 44757
condition end hasmount(129935)
step
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |confirm |next "dailies"
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |confirm |next "buy"
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|only if not completedq(31389)
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Red Shado-Pan Riding Tiger##89306
.learnmount Red Shado-Pan Riding Tiger##129935 |use Reins of the Red Shado-Pan Riding Tiger##89306
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blue Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Blue Shado-Pan Riding Tiger Mount.
model 43900
condition end hasmount(129934)
step
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |confirm |next "dailies"
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |confirm |next "buy"
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|only if not completedq(31389)
step
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Blue Shado-Pan Riding Tiger##89307
.learnmount Blue Shado-Pan Riding Tiger##129934 |use Reins of the Blue Shado-Pan Riding Tiger##89307
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering August Cloud Serpent",[[
description This guide will help you acquire the Thundering August Cloud Serpent Mount.
model 43686
condition end hasmount(129918)
step
.' This mount requires you to be _Exalted_ with _The August Celestials_.
.' Click here to be taken to the reputation guide to become Exalted with The August Celestials. |confirm |next "dailies"
.' Click here to be taken to The August Celestials Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "August_Celestials"
step
label "buy"
goto Vale of Eternal Blossoms 62.7,23.3
.talk 64001
.buy Reins of the Thundering August Cloud Serpent##89304
.learnmount Thundering August Cloud Serpent##129918 |use Reins of the Thundering August Cloud Serpent##89304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering Jade Cloud Serpent",[[
description This guide will help you acquire the Thundering Jade Cloud Serpent Mount.
model 43686
condition end hasmount(124408)
step
.' This mount requires you to be _Exalted_ with your guild, and for your guild to have completed Tier 14 content
|confirm
step
goto Orgrimmar 48.2,75.6
.talk 46572
.buy 1 Reins of the Thundering Jade Cloud Serpent##85666
.learnmount Thundering Jade Cloud Serpent##124408 |use Reins of the Thundering Jade Cloud Serpent##85666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Imperial Quilen",[[
description This guide will help you acquire the Imperial Quilen Mount.
model 43254
condition end hasmount(124659)
step
.' This mount requires you to purchase the World of Warcraft: Mists of Pandaria Collector's Edition
.' You may be able to find a copy of this mount on eBay or Amazon, but they are typically very expensive.
|confirm
step
.' Check your in-game mail for your new mount!
.learnmount Imperial Quilen##124659 |use Imperial Quilen##85870
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Red Flying Cloud",[[
description This guide will help you acquire the Red Flying Cloud Mount.
model 44808
condition end hasmount(130092)
step
.' This mount requires you to be _Exalted_ with _The Lorewalkers_.
.' In order to become Exalted with the Lorewalkers, refer to the Zygor Guides Reputation section.
.' Exalted with the Lorewalkers |achieve 6548
step
goto Vale of Eternal Blossoms 82.2,29.4
.talk 64605
.buy Disc of the Red Flying Cloud##89363
.learnmount Red Flying Cloud##130092 |use Disc of the Red Flying Cloud##89363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Pandaren Flying Kite",[[
description This guide will help you acquire the Pandaren Flying Kite Mount.
model 41903
condition end hasmount(118737)
step
.' This mount requires you to have the Achievement: Pandaren Ambassador
.' Earn Exalted with all of the Pandaren reputations. |only if not achieved(6827)
|confirm
step
.' Check your in-game mail for your new mount!
.collect 1 Pandaren Kite String##81559
.learnmount Pandaren Flying Kite##118737 |use Pandaren Kite String##81559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Obsidian Nightwing",[[
description This guide will help you acquire the Obsidian Nightwing Mount.
model 42498
condition end hasmount(124659)
step
.' You can only obtain this mount through the Recruit-A-Friend program.
|confirm
step
.' Check your in-game mail for your new mount!
.collect 1 Heart of the Nightwing##83086
.learnmount Obsidian Nightwing##124659 |use Heart of the Nightwing##83086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Amber Scorpion",[[
description This guide will help you acquire the Amber Scorpion Mount.
model 43090
condition end hasmount(123886)
step
.' This mount requires you to be _Exalted_ with _The Klaxxi_.
.' In order to become Exalted with the Shado-Pan, refer to the Zygor Guides Reputation section.
.' Click here to be taken to The Klaxxi Quartermaster to purchase the mount. |confirm |next "buy"
step
'You are _Neutral_ with _The Klaxxi_. |only if rep("The Klaxxi")<=Neutral
'You are _Friendly_ with _The Klaxxi_. |only if rep("The Klaxxi")==Friendly
'You are _Honored_ with _The Klaxxi_. |only if rep("The Klaxxi")==Honored
'You are _Revered_ with _The Klaxxi_. |only if rep("The Klaxxi")==Revered
'You are _Exalted_ with _The Klaxxi_. |only if rep("The Klaxxi")==Exalted
'Exalted with The Klaxxi |achieve 6366
step
label "buy"
goto Dread Wastes 55.0,35.6
.talk 64599
.buy Reins of the Amber Scorpion##85262
.learnmount Amber Scorpion##123886 |use Reins of the Amber Scorpion##85262
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Onyx Cloud Serpent",[[
description This guide will help you acquire the Onyx Cloud Serpent Mount.
model 41990
condition end hasmount(127154)
step
.' This mount requires you to be _Exalted_ with _Shado-Pan_.
.' In order to become Exalted with the Shado-Pan, refer to the Zygor Guides Reputation section.
.' Exalted with the Shado-Pan |achieve 6366
step
label "quest"
goto Townlong Steppes 49.5,70.5
.talk 63009
..accept 31266
step
goto 48.8,58.6
.kill Shan'ze Spymaster##63888 |q 31266/1
step
goto Townlong Steppes 49.5,70.5
.talk 63009
..turnin 31266
..accept 31277
step
goto 42.6,63.9
.talk 62304
.' Tell him you're ready to go.
|confirm
step
'At this point you will fight throught waves of mobs for a few minutes. When Hei Fang lands, you will need to assist the Shado-Pan in defeating him.
|confirm
step
goto 41.6,62.0
.from Hei Feng##62309
.' Put a stop to the Mogu Invasion of Niuzao Temple |q 31277/1
step
goto 49.0,70.6
.talk 62304
..turnin 31277
step
.learnmount Onyx Cloud Serpent##127154 |use Reins of the Onyx Cloud Serpent##87768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Red Dragon Turtle",[[
description This guide will help you acquire the Red Dragon Turtle Mount.
model 43721
condition end hasmount(127290)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Red Dragon Turtle##91007
step
.learnmount Red Dragon Turtle##127290 |use Reins of the Red Dragon Turtle##91007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Purple Dragon Turtle",[[
description This guide will help you acquire the Purple Dragon Turtle Mount.
model 43910
condition end hasmount(127289)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Purple Dragon Turtle##91006
step
.learnmount Purple Dragon Turtle##127289 |use Reins of the Purple Dragon Turtle##91006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Green Dragon Turtle",[[
description This guide will help you acquire the Green Dragon Turtle Mount.
model 42250
condition end hasmount(120395)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Green Dragon Turtle##91004
step
.learnmount Green Dragon Turtle##120395 |use Reins of the Green Dragon Turtle##91004
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Brown Dragon Turtle",[[
description This guide will help you acquire the Brown Dragon Turtle Mount.
model 43719
condition end hasmount(127288)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Brown Dragon Turtle##91005
step
.learnmount Brown Dragon Turtle##127288 |use Reins of the Brown Dragon Turtle##91005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blue Dragon Turtle",[[
description This guide will help you acquire the Blue Dragon Turtle Mount.
model 43718
condition end hasmount(127287)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Blue Dragon Turtle##91009
step
.learnmount Blue Dragon Turtle##127287 |use Reins of the Blue Dragon Turtle##91009
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Black Dragon Turtle",[[
description This guide will help you acquire the Black Dragon Turtle Mount.
model 43717
condition end hasmount(127286)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Black Dragon Turtle##91008
step
.learnmount Black Dragon Turtle##127286 |use Reins of the Black Dragon Turtle##91008
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Red Dragon Turtle",[[
description This guide will help you acquire the Great Red Dragon Turtle Mount.
model 42352
condition end hasmount(120822)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Red Dragon Turtle##91010
step
.learnmount Great Red Dragon Turtle##120822 |use Reins of the Great Red Dragon Turtle##91010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Purple Dragon Turtle",[[
description This guide will help you acquire the Great Purple Dragon Turtle Mount.
model 43726
condition end hasmount(127310)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Purple Dragon Turtle##91015
step
.learnmount Great Purple Dragon Turtle##127310 |use Reins of the Great Purple Dragon Turtle##91015
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Green Dragon Turtle",[[
description This guide will help you acquire the Great Green Dragon Turtle Mount.
model 43722
condition end hasmount(127293)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Green Dragon Turtle##91012
step
.learnmount Great Green Dragon Turtle##127293 |use Reins of the Great Green Dragon Turtle##91012
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Brown Dragon Turtle",[[
description This guide will help you acquire the Great Brown Dragon Turtle Mount.
model 43725
condition end hasmount(127308)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Brown Dragon Turtle##91014
step
.learnmount Great Brown Dragon Turtle##127308 |use Reins of the Great Brown Dragon Turtle##91014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Blue Dragon Turtle",[[
description This guide will help you acquire the Great Blue Dragon Turtle Mount.
model 43724
condition end hasmount(127302)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Brown Dragon Turtle##91013
step
.learnmount Great Blue Dragon Turtle##127302 |use Reins of the Great Blue Dragon Turtle##91013
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Black Dragon Turtle",[[
description This guide will help you acquire the Great Black Dragon Turtle Mount.
model 43723
condition end hasmount(127295)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Black Dragon Turtle##91011
step
.learnmount Great Black Dragon Turtle##127295 |use Reins of the Great Black Dragon Turtle##91011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Depleted-Kyparium Rocket",[[
description This guide will help you acquire the Depleted-Kyparium Rocket Mount.
model 43637
condition end hasmount(126507)
step
'Skipping to the next step |next |only if skill("Engineering")<600
goto Orgrimmar 56.8,56.5 |only if skill("Engineering")>=600
.talk 11017 |only if skill("Engineering")>=600
.learn Depleted-Kyparium Rocket##127138 |only if skill("Engineering")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Depleted-Kyparium Rocket##87250 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 12 Living Steel##72104
.collect 200 Kyparite##72093
.collect 3 Orb of Mystery##83092
.collect 12 High Explosive Gunpowder##77468
.collect 20 Ghost Iron Bolts##77467
.collect 12 Spirit of Harmony##76061 |tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
'Have an _Engineer make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(127138)==false
.create Depleted-Kyparium Rocket##127138,Engineering,1 total |only if _G.IsSpellKnown(127138)==true
.collect 1 Depleted-Kyparium Rocket##87250
step
label bought
.learnmount Depleted-Kyparium Rocket##126507 |use Depleted-Kyparium Rocket##87250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Geosynchronous World Spinner",[[
description This guide will help you acquire the Geosynchronous World Spinner Mount.
model 43638
condition end hasmount(126508)
step
'Skipping to the next step |next |only if skill("Engineering")<600
goto Orgrimmar 56.8,56.5 |only if skill("Engineering")>=600
.talk 11017 |only if skill("Engineering")>=600
.learn Geosynchronous World Spinner##127138 |only if skill("Engineering")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Geosynchronous World Spinner##87251 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 12 Living Steel##72104
.collect 12 Trillium Bar##72095
.collect 3 Orb of Mystery##83092
.collect 20 Ghost Iron Bolts##77467
.collect 12 Spirit of Harmony##76061 |tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
'Have an _Engineer make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(127139)==false
.create Geosynchronous World Spinner##127139,Engineering,1 total |only if _G.IsSpellKnown(127139)==true
.collect 1 Geosynchronous World Spinner##87251
step
label bought
.learnmount Geosynchronous World Spinner##126508 |use Geosynchronous World Spinner##87251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Sunstone Panther",[[
description This guide will help you acquire the Sunstone Panther Mount.
model 42501
condition end hasmount(121839)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Sunstone Panther##83830 |only if skill("Jewelcrafting")>=600
.learn Sunstone Panther##121843 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Sunstone Panther##87251 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Sun's Radiance##76142
.collect 2 Serpent's Eye##76734
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(121843)==false
.create Sunstone Panther##121843,Jewelcrafting,1 total |only if _G.IsSpellKnown(121843)==true
.collect 1 Sunstone Panther##83089
step
label bought
.learnmount Sunstone Panther##121839 |use Sunstone Panther##83089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jade Panther",[[
description This guide will help you acquire the Jade Panther Mount.
model 42502
condition end hasmount(121837)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Jade Panther##83845 |only if skill("Jewelcrafting")>=600
.learn Jade Panther##121844 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Jade Panther##83088 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Wild Jade##76139
.collect 2 Serpent's Eye##76734
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(121844)==false
.create Jade Panther##121844,Jewelcrafting,1 total |only if _G.IsSpellKnown(121844)==true
.collect 1 Jade Panther##83088
step
label bought
.learnmount Jade Panther##121837 |use Jade Panther##83088
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Sapphire Panther",[[
description This guide will help you acquire the Sapphire Panther Mount.
model 42500
condition end hasmount(121836)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Sapphire Panther##83932 |only if skill("Jewelcrafting")>=600
.learn Sapphire Panther##121842 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Sapphire Panther##83090 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 River's Heart##76138
.collect 2 Serpent's Eye##76734
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(121842)==false
.create Sapphire Panther##121842,Jewelcrafting,1 total |only if _G.IsSpellKnown(121842)==true
.collect 1 Sapphire Panther##83090
step
label bought
.learnmount Sapphire Panther##121836 |use Sapphire Panther##83090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Ruby Panther",[[
description This guide will help you acquire the Ruby Panther Mount.
model 42499
condition end hasmount(121838)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Ruby Panther##83931 |only if skill("Jewelcrafting")>=600
.learn Ruby Panther##121841 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Ruby Panther##83087 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Sun's Radiance##76142
.collect 2 Serpent's Eye##76734
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(121841)==false
.create Ruby Panther##121841,Jewelcrafting,1 total |only if _G.IsSpellKnown(121841)==true
.collect 1 Ruby Panther##83087
step
label bought
.learnmount Ruby Panther##121838 |use Ruby Panther##83087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jeweled Onyx Panther",[[
description This guide will help you acquire the Jeweled Onyx Panther Mount.
model 42185
condition end hasmount(120043)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Jeweled Onyx Panther##83877 |only if skill("Jewelcrafting")>=600
.learn Jeweled Onyx Panther##120045 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Jeweled Onyx Panther##82453 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 1 Jade Panther##83088
.collect 1 Sapphire Panther##83090
.collect 1 Ruby Panther##83087
.collect 1 Sunstone Panther##83089
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(120045)==false
.create Jeweled Onyx Panther##120045,Jewelcrafting,1 total |only if _G.IsSpellKnown(120045)==true
.collect 1 Jeweled Onyx Panther##82453
step
label bought
.learnmount Jeweled Onyx Panther##120043 |use Jeweled Onyx Panther##82453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Heavenly Onyx Cloud Serpent",[[
description This guide will help you acquire the Heavenly Onyx Cloud Serpent Mount.
model 43689
condition end hasmount(127158)
step
'You will need to be in a Raid group, as this will require defeating a World Boss.
|confirm
step
goto Kun-Lai Summit 50.5,82.1
.from Sha of Anger##60491
.collect Reins of the Heavenly Onyx Cloud Serpent##87771
step
.learnmount Heavenly Onyx Cloud Serpent##127158 |use Reins of the Heavenly Onyx Cloud Serpent##87771
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Heavenly Crimson Cloud Serpent",[[
description This guide will help you acquire the Heavenly Crimson Cloud Serpent Mount.
model 43692
condition end hasmount(127161)
step
'This mount is rewarded for completing the Achievement: _Glory of the Pandaria Raider_.
.' Complete all of the Pandaria Raid Achievements |only if not achieved(6932)
|confirm
step
'Check your in-game mail for your new mount!
.collect 1 Reins of the Heavenly Crimson Cloud Serpent##87773
.learnmount Heavenly Crimson Cloud Serpent##127161 |use Reins of the Heavenly Crimson Cloud Serpent##87773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Crimson Cloud Serpent",[[
description This guide will help you acquire the Crimson Cloud Serpent Mount.
model 41592
condition end hasmount(127156)
step
'This mount is rewarded for completing the Achievement: _Glory of the Pandaria Hero_.
.' Complete all of the Pandaria Heroic Dungeon Achievements |only if not achieved(6927)
|confirm
step
'Check your in-game mail for your new mount!
.collect 1 Reins of the Crimson Cloud Serpent##87769
.learnmount Crimson Cloud Serpent##127156 |use Reins of the Crimson Cloud Serpent##87769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Crimson Pandaren Phoenix",[[
description This guide will help you acquire the Crimson Pandaren Phoenix Mount.
model 44633
condition end hasmount(129552)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Crimson Pandaren Phoenix##89154 |tip You can only purchase one color, so choose carefully!
step
.learnmount Crimson Pandaren Phoenix##129552 |use Reins of the Crimson Pandaren Phoenix##89154
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Ashen Pandaren Phoenix",[[
description This guide will help you acquire the Ashen Pandaren Phoenix Mount.
model 45521
condition end hasmount(132117)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Ashen Pandaren Phoenix##90710 |tip You can only purchase one color, so choose carefully!
step
.learnmount Ashen Pandaren Phoenix##132117 |use Reins of the Ashen Pandaren Phoenix##90710
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Emerald Pandaren Phoenix",[[
description This guide will help you acquire the Emerald Pandaren Phoenix Mount.
model 45520
condition end hasmount(132118)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Emerald Pandaren Phoenix##90711 |tip You can only purchase one color, so choose carefully!
step
.learnmount Emerald Pandaren Phoenix##132118 |use Reins of the Emerald Pandaren Phoenix##90711
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Violet Pandaren Phoenix",[[
description This guide will help you acquire the Violet Pandaren Phoenix Mount.
model 45522
condition end hasmount(132119)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Violet Pandaren Phoenix##90712 |tip You can only purchase one color, so choose carefully!
step
.learnmount Violet Pandaren Phoenix##132119 |use Reins of the Violet Pandaren Phoenix##90712
]])
