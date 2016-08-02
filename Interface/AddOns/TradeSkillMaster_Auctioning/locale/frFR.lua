-- ------------------------------------------------------------------------------ --
--                           TradeSkillMaster_Auctioning                          --
--           http://www.curse.com/addons/wow/tradeskillmaster_auctioning          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Auctioning Locale - frFR
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Auctioning/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "frFR")
if not L then return end

L["2 to 12 hrs"] = "2h à 12h" -- Needs review
L["30min to 2hrs"] = "30min à 2h" -- Needs review
-- L["Above max expires."] = ""
-- L["Above max price. Not posting."] = ""
-- L["Above max price. Posting at max price."] = ""
-- L["Above max price. Posting at min price."] = ""
-- L["Above max price. Posting at normal price."] = ""
L["Add a new player to your whitelist."] = "Ajouter un nouveau joueur à votre liste blanche"
L["Add player"] = "Ajouter un joueur"
-- L["AH Shortfall To Bags"] = ""
-- L["Allow Partial Stack"] = ""
L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = "Toutes les enchères à ou en dessous de la durée choisie seront ignorée. Choisir \"<aucune>\" n'ignorera aucune vente suivant la durée restante."
-- L["At above max price and not undercut."] = ""
-- L["At normal price and not undercut."] = ""
-- L["Auction Buyout"] = ""
-- L["Auction Buyout (Stack Price):"] = ""
-- L["Auction has been bid on."] = ""
-- L["Auctioning operations contain settings for posting, canceling, and resetting items in a group. Type the name of the new operation into the box below and hit 'enter' to create a new Auctioning operation."] = ""
-- L["Auction not found. Skipped."] = ""
L["Auction Settings"] = "Paramètres de l'enchère" -- Needs review
-- L["auctions of|r %s"] = ""
-- L["Below min price. Posting at max price."] = ""
-- L["Below min price. Posting at min price."] = ""
-- L["Below min price. Posting at normal price."] = ""
-- L["Bid Percent"] = ""
-- L["Blacklisted Players"] = ""
-- L["Blizzard failed to properly post %d auction(s). They have been re-added to the post queue so you can try posting them again."] = ""
-- L["Cancel All"] = ""
L["Cancel All Auctions"] = "Annuler toutes les enchères" -- Needs review
-- L["Cancel Auctions with Bids"] = ""
-- L["Cancel Filter:"] = ""
L["Canceling all auctions."] = "Annulation de toutes les enchères."
-- L["Canceling auction which you've undercut."] = ""
-- L["Canceling %d / %d"] = ""
L["Canceling to repost at higher price."] = "Annulation pour reposter à un prix plus élevé."
-- L["Canceling to repost at reset price."] = ""
-- L["Canceling to repost higher."] = ""
-- L["Canceling undercut auctions."] = ""
-- L["Canceling undercut auctions and to repost higher."] = ""
-- L["Cancel Items Matching Filter"] = ""
-- L["Cancel Low Duration"] = ""
L["Cancel Scan Finished"] = "Annulation terminée"
-- L["Cancel Settings"] = ""
-- L["Cancel to Repost Higher"] = ""
-- L["Cancel Undercut Auctions"] = ""
-- L["Cannot buy items until the post scan is complete."] = ""
-- L["Cannot buy this item because you have already posted it."] = ""
-- L["Cheapest auction below min price."] = ""
-- L["Click to show auctions for this item."] = ""
-- L["Confirm Complete Sound"] = ""
-- L["Confirming %d / %d"] = ""
-- L["Could not post %s because there is no pricing data for this item. Please ensure that you have AuctionDB and/or WoWuction price data."] = ""
-- L["Currently Owned:"] = ""
L["Delete"] = "Supprimer"
-- L["Did not cancel %s because your cancel to repost threshold (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not cancel %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not cancel %s because your undercut (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because the owner of the lowest auction (%s) is on both the blacklist and whitelist which is not allowed. Adjust your settings to correct this issue."] = ""
-- L["Did not post %s because you or one of your alts (%s) is on the blacklist which is not allowed. Remove this character from your blacklist."] = ""
-- L["Did not post %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not post %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not post %s because your undercut (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not reset %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not reset %s because your reset max cost (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset max item cost (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset min profit (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset resolution (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your undercut (%s) is invalid. Check your settings."] = ""
-- L["Disable Invalid Price Warnings"] = ""
L["Done Canceling"] = "Annulation terminé"
L["Done Posting"] = "Enchère(s) crée(s)"
--[==[ L[ [=[Done Posting

Total value of your auctions: %s
Incoming Gold: %s]=] ] = "" ]==]
-- L["Done Resetting"] = ""
--[==[ L[ [=[Done Scanning!

Could potentially reset %d items for %s profit.]=] ] = "" ]==]
L["Don't Post Items"] = "Ne pas poster les objets"
L["Duration"] = "Durée" -- Needs review
-- L["Edit Post Price"] = ""
-- L["Enable Reset Scan"] = ""
-- L["Expires:"] = ""
-- L["Expires / Max Expires:"] = ""
L["General"] = "Général"
-- L["General Operation Options"] = ""
L["General Options"] = "Options générales" -- Needs review
-- L["General Reset Settings"] = ""
L["General Settings"] = "Paramètres généraux"
-- L["Group:"] = ""
-- L["Group To Bags"] = ""
-- L["Group To Bank"] = ""
L["Help"] = "Aide"
L["How long auctions should be up for."] = "Combien de temps les enchères doivent elles durer. "
-- L["How many auctions at the lowest price tier can be up at any one time. Setting this to 0 disables posting for any groups this operation is applied to."] = ""
L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = "Combien d'objets doivent être vendu en une seule enchère, 20 signifiera une seul pile de 20 objets."
-- L["How many items you want to keep in your bags (and additional sources) and not have Auctioning post."] = ""
-- L["How much to undercut other auctions by. Format is in \"#g#s#c\". For example, \"50g30s\" means 50 gold, 30 silver, and no copper."] = ""
-- L["If an item can't be posted for at least this amount higher than its current value, it won't be canceled to repost higher."] = ""
-- L["If checked, a cancel scan will cancel any auctions which can be reposted for a higher price."] = ""
-- L["If checked, a cancel scan will cancel any auctions which have been undercut and are still above your minimum price."] = ""
-- L["If checked, Auctioning will ignore all auctions that are posted at a different stack size than your auctions. For example, if there are stacks of 1, 5, and 20 up and you're posting in stacks of 1, it'll ignore all stacks of 5 and 20."] = ""
-- L["If checked, groups which the opperation applies to will be included in a reset scan."] = ""
-- L["If checked, the minimum, normal and maximum prices of the first operation for the item will be shown in tooltips."] = ""
-- L["If checked, TSM will not print out a chat message when you have an invalid price for an item. However, it will still show as invalid in the log."] = ""
-- L["If checked, whenever you post an item at its normal price, the buyout will be rounded up to the nearest gold."] = ""
-- L["If enabled, a partial stack will be posted if you don't have enough for a full stack. This has no effect if the stack size is 1."] = ""
-- L["If enabled, instead of not posting when a whitelisted player has an auction posted, Auctioning will match their price."] = ""
-- L["If you have created TSM groups and assigned Auctioning operations, they will be listed here for selection."] = ""
-- L["Ignore Auctions Below Min"] = ""
-- L["Ignore Low Duration Auctions"] = ""
L["Info"] = "Info" -- Needs review
-- L["Invalid seller data returned by server."] = ""
L["Item"] = "Objet" -- Needs review
-- L["Item/Group is invalid (see chat)."] = ""
-- L["Items will not be posted after they have expired this number of times in a row. A value of 0 will disable this feature."] = ""
-- L["Keeping undercut auctions posted."] = ""
-- L["Keep Posted"] = ""
-- L["Keep Quantity"] = ""
-- L["Lists the groups with auctioning operations. Left click to select/deselect the group, Right click to expand/collapse the group."] = ""
-- L["Log Info:"] = ""
-- L["Low Duration"] = ""
-- L["Lowest auction by whitelisted player."] = ""
-- L["Lowest Buyout"] = ""
-- L["Lowest Buyout:"] = ""
-- L["% Market Value"] = ""
-- L["Match Stack Size"] = ""
-- L["Match Whitelist Players"] = ""
L["Max Cost:"] = "Coût max:" -- Needs review
-- L["Max Cost Per Item"] = ""
-- L["Max Expired to Bags"] = ""
-- L["Max Expired to Bank"] = ""
-- L["Max Expires"] = ""
-- L["Maximum amount already posted."] = ""
L["Maximum Price"] = "Prix maximum" -- Needs review
L["Maximum Price:"] = "Prix maximum:" -- Needs review
-- L["Max Inventory Quantity"] = ""
L["Max Price Per:"] = "Prix max pour:" -- Needs review
L["Max Quantity:"] = "Quantité max:" -- Needs review
-- L["Max Quantity to Buy"] = ""
-- L["Max Reset Cost"] = ""
-- L["Minimum Price"] = ""
-- L["Minimum Price:"] = ""
-- L["Min/Normal/Max Prices:"] = ""
-- L["Min Profit:"] = ""
-- L["Min Reset Profit"] = ""
-- L["Must wait for scan to finish before starting to reset."] = ""
-- L["No-Group Posting:"] = ""
-- L["No Items to Reset"] = ""
L["No name entered."] = "Aucun nom entré."
L["<none>"] = "<aucune>"
-- L["Non Group to Bags"] = ""
-- L["Non Group to Bank"] = ""
-- L["No posting."] = ""
-- L["Normal Price"] = ""
L["Normal Price:"] = "Prix normal:" -- Needs review
-- L["Not canceling."] = ""
-- L["Not canceling auction at reset price."] = ""
-- L["Not canceling auction below min price."] = ""
-- L["Not enough items in bags."] = ""
-- L["Nothing to Move"] = ""
-- L["Not resetting."] = ""
L["Operation"] = "Opération" -- Needs review
-- L["Other Auctioning Searches"] = ""
L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = "Pourcentage du prix d'achat en prix de départ, si vous choisissez par exemple 90%. Sur une vente à 100or, le prix de départ sera de 90or"
-- L["Player Name"] = ""
-- L["Play the selected sound when all posts / cancels are confirmed for a post / cancel scan."] = ""
-- L["Play the selected sound when a post / cancel scan is complete and items are ready to be posted / canceled (the gray bar is all the way across)."] = ""
-- L["Post"] = ""
-- L["Post at Maximum Price"] = ""
-- L["Post at Minimum Price"] = ""
-- L["Post at Normal Price"] = ""
-- L["Post Cap"] = ""
-- L["Post Cap To Bags"] = ""
-- L["Posted at whitelisted player's price."] = ""
-- L["Posting at normal price."] = ""
-- L["Posting at whitelisted player's price."] = ""
-- L["Posting at your current price."] = ""
-- L["Posting %d / %d"] = ""
-- L["Posting %d stack(s) of %d for %d hours."] = ""
-- L["Posting Price Settings"] = ""
L["Post Scan Finished"] = "Création des enchères terminée"
-- L["Post Settings"] = ""
-- L["Preparing Filter %d / %d"] = ""
-- L["Preparing Filters..."] = ""
-- L["Preparing to Move"] = ""
-- L["Price Resolution"] = ""
-- L["Price to post at if there are none of an item currently on the AH."] = ""
L["Profit:"] = "Profit:"
L["Profit Per Item"] = "Profit par objet"
-- L["Quantity (Yours)"] = ""
-- L["Quick Post"] = ""
-- L["Quick Post from Bags"] = ""
-- L["Repost Higher Threshold"] = ""
L["Reset"] = "Réinitialiser" -- Needs review
-- L["Reset Scan Finished"] = ""
L["Reset Settings"] = "Réinitialiser les paramètres" -- Needs review
-- L["Resetting %d / %d"] = ""
-- L["Resetting enabled."] = ""
-- L["Restart"] = ""
L["Return to Summary"] = "Retour au résumé" -- Needs review
L["Right-Click to add %s to your friends list."] = "Clic-droit pour ajouter %s à votre liste d'amis." -- Needs review
-- L["Round Normal Price"] = ""
-- L["Running Scan..."] = ""
-- L["Save New Price"] = ""
L["Scan Complete!"] = "Scan terminé !" -- Needs review
-- L["Scan Complete Sound"] = ""
L["Scanning %d / %d"] = "Scan %d / %d" -- Needs review
L["Scanning %d / %d (Page %d / %d)"] = "Scan %d / %d (Page %d / %d)" -- Needs review
-- L["Select a duration in this dropdown and click on the button below to cancel all auctions at or below this duration."] = ""
-- L["Select the groups which you would like to include in the scan."] = ""
L["Seller"] = "Vendeur"
-- L["'%s' has an Auctioning operation of '%s' which no longer exists."] = ""
-- L["'%s' has an Auctioning operation of '%s' which no longer exists. Auctioning will ignore this group until this is fixed."] = ""
-- L["Shift-Click to buy auctions for this item."] = ""
-- L["Shift-Right-Click to show the options for this item's Auctioning group."] = ""
-- L["Shift-Right-Click to show the options for this operation."] = ""
L["Show All Auctions"] = "Afficher toutes les enchères" -- Needs review
-- L["Show Auctioning values in Tooltip"] = ""
-- L["Show Item Auctions"] = ""
-- L["Show Log"] = ""
-- L["%s item(s) to buy/cancel"] = ""
-- L["Skip"] = ""
-- L["Sources to Include in Keep Quantity"] = ""
L["Stack Size"] = "Taille de la pille"
-- L["Start Cancel Scan"] = ""
-- L["Starting Scan..."] = ""
-- L["Start Post Scan"] = ""
-- L["Start Reset Scan"] = ""
-- L["Stop"] = ""
-- L["Target Price"] = ""
-- L["Target Price:"] = ""
-- L["Test Selected Sound"] = ""
-- L["The filter cannot be empty. If you'd like to cancel all auctions, use the 'Cancel All Auctions' button."] = ""
-- L["The lowest price you want an item to be posted for. Auctioning will not undercut auctions below this price."] = ""
-- L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = ""
-- L["The maximum price you want an item to be posted for. Auctioning will not undercut auctions above this price."] = ""
-- L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = ""
L["The player \"%s\" is already on your whitelist."] = "Le joueur \"%s\" figure déjà dans votre liste blanche."
-- L["These buttons allow you to quickly cancel auctions regardless of having TSM groups with Auctioning operations."] = ""
-- L["These buttons will start a Post, Cancel, or Reset scan for the groups you have selected."] = ""
-- L["The seller name of the lowest auction for %s was not given by the server. Skipping this item."] = ""
-- L["These will toggle between the module specific tabs."] = ""
-- L["This button lets you quickly post items from your bags without setting up groups / operations for them."] = ""
-- L["This button will de-select all groups."] = ""
-- L["This button will move all items in the selected groups from the bank to your bags."] = ""
-- L["This button will move all items in the selected groups from your bags to the bank."] = ""
-- L["This button will move all items in the selected groups that have exceeded the max expires setting from the bank to your bags."] = ""
-- L["This button will move all items in the selected groups that have exceeded the max expires setting from your bags to the bank."] = ""
-- L["This button will move all items NOT in the selected groups from the bank to your bags."] = ""
-- L["This button will move all items NOT in the selected groups from your bags to the bank."] = ""
-- L["This button will move items in the selected groups from the bank to your bags. It will take into account the number you already have on the auction house (across all players) or pending in your mailbox (current player only) and only move what the shortfall is."] = ""
-- L["This button will move items in the selected groups up to your post cap (sum of post caps if you have multiple operations) from the bank to your bags."] = ""
-- L["This button will select all groups."] = ""
-- L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = ""
-- L["This dropdown determines what Auctioning will do when the market for an item goes above your maximum price. You can post the items at one of your configured prices."] = ""
-- L["This dropdown determines what Auctioning will do when the market for an item goes below your minimum price. You can not post the items, post at one of your configured prices, or have Auctioning ignore all the auctions below your minimum price (and likely undercut the lowest auction above your mimimum price)."] = ""
-- L["This feature requires the TSM_Shopping module."] = ""
-- L["This is a comma-separated list of players which you'd like to blacklist. This means that Auctioning will ignore your minimum price if the cheapest auction is posted by somebody on your blacklist and undercut them no matter what price they are posting at."] = ""
-- L["This is the maximum amount you want to pay for a single item when reseting."] = ""
-- L["This is the maximum quantity of an item you want to buy in a single reset scan."] = ""
-- L["This is the maximum quantity of an item you want to have in your inventory after a reset scan."] = ""
-- L["This item does not have any seller data."] = ""
-- L["This number of undercut auctions will be kept on the auction house (not canceled) when doing a cancel scan."] = ""
L["Total Cost"] = "Coût total" -- Needs review
L["Under 30min"] = "Moins de 30min" -- Needs review
-- L["Undercut Amount"] = ""
-- L["Undercut by whitelisted player."] = ""
-- L["Undercutting blacklisted player."] = ""
-- L["Undercutting competition."] = ""
-- L["WARNING: You minimum price for %s is below its vendorsell price (with AH cut taken into account). Consider raising your minimum price, or vendoring the item."] = ""
-- L["When Above Maximum"] = ""
-- L["When Below Minimum"] = ""
L["Whitelist"] = "Liste Blanche"
L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = "La liste blanche vous permet de configurer d'autres personnages (excepté vous & vos alts) que vous ne voulez pas concurrencer. Toutefois, si quelqu'un de votre liste blanche poste au même prix d'achat mais avec un prix de départ inférieur, ça les concurrencera toujours. "
-- L["Will cancel all your auctions at or below the specified duration, including ones you didn't post with Auctioning."] = ""
-- L["Will cancel all your auctions, including ones which you didn't post with Auctioning."] = ""
-- L["Will cancel all your auctions which match the specified filter, including ones which you didn't post with Auctioning."] = ""
L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = "Annulera les ventes en cours, même si quelqu'un a enchérie dessus. Attention, ceci vous coutera une somme supplémentaire d'or."
-- L["Will do a post scan for any items in your bags which aren't in a group with an Auctioning operation using some generic settings."] = ""
L["You do not have any players on your whitelist yet."] = "Vous n'avez encore aucun joueur dans votre liste blanche."
L["You do not need to add \"%s\", alts are whitelisted automatically."] = "Vous n'avez pas besoin d'ajouter \"%s\", les alts sont ajoutés automatiquement."
-- L["Your auction has not been undercut."] = ""
-- L["Your Buyout"] = ""
-- L["You've been undercut."] = ""
