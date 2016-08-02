<<color red>><<size 200%>> WARNING: This is not an official TradeSkillMaster module<</size>><</color>>

==TradeSkillMaster_CompetitorTracker module for TSM 3.0==

This is a module for [[http://www.curse.com/addons/wow/tradeskill-master|TradeSkillMaster]] that reports when WoW Auction House Competitors are online/offline and also saves this data for all characters on the same realm and faction.

If enabled the sync feature and then you add or remove someone from your friends list and relog to an alt, 
that person will be added/removed from the alt's friends list as well. Also, any entries on that alt's
list which isn't in the global list, will be added to the other characters whenever you log them in.


===Competitor Monitor===
*  You can change the location column to friendlist notes by right clicking on the Location header button. 
* Yellow colored <Away> status. (++R22++)

===Config ===
* If you do not want to synchronize/track everyone on your friendlist:
** enable the **Track only with mark** option, 
** and set  a desirable text - something like: auctioneer - to the **Track Mark** field, 
** You can use a [[http://www.wowwiki.com/Pattern_matching|regular expression ]] in the matching string. 
** Square brackets are only allowed in the string if you escape them with %, like this %[auc%] - In the current version the default [auc] string has been changed to %[auc%] This %[auc%] is the string what will be find [auc] in your friend list friend note
** then you can tag (mark)  every competitor in your friend list friend note with the text in the **Track Mark** field,
 so the addon will only track the tagged/marked persons. I use it to track my auction house competition, while playing on alts.
* Everyone knows that the goblins are the ultimate Auction House Traders.  If a tracked competitor has more ALT in the list, now You can select one of them  who list the items in the Auction House and will be the goblin charter in the list. The selection can be made on the new Management tab - You can select a competitor by clicking on the given competitor name in Competitor Tracker tree.
[[http://wow.curseforge.com/addons/competitortracker/images/8-management/|See the picture: Management]]
* Set a cap on how long online status ( the 'Now' column in Competitor Monitor) can remain true before automatically being reset. 
----

== How to get it to work ==
* Because this is a TradeSkillMaster module, you need to install TradeSkillMaster main module from here 
(http://www.curse.com/addons/wow/tradeskill-master). 
* Enable the competitor tracker module in the options.
* To access the options simply type "/tsm" and then click on the Options icon in the top left.

==== Command Line ====
* /TSM help
* /TSM ctrack - Opens the TSM window to the 'Competitor Tracker' page
* /TSM ctwindow - Toggles Competitor Monitor module/window
* /TSM ctwindow reset  -  to reset the monitor window position

==== Where to get it ====
*[[https://github.com/Kaboca/CompetitorTracker| GITHUB]] - Alpha Quality
* Curse - Beta, Release


==== Contacting the Authors ====
*  Please use the bug reporting feature to submit bug reports. 
** Read the Bug Reporting and Feature Requesting [[http://wow.curseforge.com/wiki/projects/how-to-file-tickets/|information]] 
** then submit a [[http://wow.curseforge.com/addons/competitortracker/tickets/| bug report or feature request]]. 
*  Please note that this is my first addon, and that English is not my native language. Please help me to correct the spelling errors in this text and also in the addon!


== Acknowledgments ==
*  It is heavily inspired by [[http://www.curse.com/users/Verna|Verna’s]]  [[http://www.curse.com/addons/wow/friendtracker|FriendTracker]]  (the addon no longer updated). 

Ideas for the mod came from  
*  [[http://wow.curseforge.com/addons/tradeskillmaster_craftingsniper/|TradeSkillMaster_CraftingSniper.]] 
*  [[http://wow.curseforge.com/addons/friends-share-resurrection/|FriendsShare]] 
*  and of course [[http://wow.curseforge.com/addons/tradeskill-master/|TradeSkillMaster]]

Please see the X-Credits field for more Acknowledgments.  Any code snippets borrowed or inspired from are credited in the code files. 