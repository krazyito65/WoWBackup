local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\Farmer",[[
author support@zygorguides.com
description This guide section will assist you in achieving the Farmer Title.
step
'In order to achieve the Farmer Title, you must become exalted with _The Tillers._
|confirm
step
leechsteps "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Tillers Dailies"
step
Obtain the Farmer Title |achieve 6544
step
'Congratulations, you now have the title of _Farmer_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\The Beloved",[[
author support@zygorguides.com
description This guide section will assist you in achieving The Beloved Title.
step
'This Title requires that you have 70 Reputations raised to Exalted. Refer to the Zygor Guides Reputations section for help with this achievement. |achieve 6742
step
'Congratulations, you now have _The Beloved_ Title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\Scenaterdist",[[
author support@zygorguides.com
description This guide section will assist you in achieving the Scenaterdist Title.
step
'This Title requires that you complete all 7 Scenarios on a Saturday. Refer to the Zygor Guides Scenarios section for help with this achievement. |achieve 7509
step
'Congratulations, you now have the _Scenaterdist_ Title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\Master of the Ways",[[
author support@zygorguides.com
description This guide section will assist you in achieving the Master of the Ways Title.
step
'This Title requires that you complete level 600 in all six ways of Pandaren Cooking. Refer to the Zygor Guides Professions section for help with this achievement. |achieve 7306.
.' Achieved Master of the Wok. |achieve 7301
.' Achieved Master of the Grill. |achieve 7300
.' Achieved Master of the Brew. |achieve 7305
.' Achieved Master of the Steamer. |achieve 7303
.' Achieved Master of the Pot. |achieve 7302
.' Achieved Master of the Oven. |achieve 7304
step
'Congratulations, you now have the _Master of the Ways_ Title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\Zookeeper",[[
author support@zygorguides.com
description This guide section will assist you in achieving the Zookeeper Title.
step
'This Title requires that you capture every battle pet in the world. Refer to the Zygor Guides Pet Battles section for help with this achievement. |achieve 6590
.' Achieved Kalimdor Safari. |achieve 6585
.' Achieved Eastern Kingdoms Safari. |achieve 6586
.' Achieved Outland Safari. |achieve 6587
.' Achieved Northrend Safari. |achieve 6588
.' Achieved Pandaria Safari. |achieve 6589
step
'Congratulations, you now have the _Zookeeper_ Title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Mists of Pandaria Titles\\Tamer",[[
author support@zygorguides.com
description This guide section will assist you in achieving the Tamer Title.
step
'This Title requires that you defeat all of the Pet Tamers in the world. Refer to the Zygor Guides Pet Battles section for help with this achievement. |achieve 6607
.' Achieved Taming Kalimdor. |achieve 6602
.' Achieved Taming Eastern Kingdoms. |achieve 6603
.' Achieved Taming Outland. |achieve 6604
.' Achieved Taming Northrend. |achieve 6605
.' Achieved Taming Cataclysm. |achieve 7525
.' Achieved Taming Pandaria. |achieve 6606
step
'Congratulations, you now have the _Tamer_ Title!
]])
