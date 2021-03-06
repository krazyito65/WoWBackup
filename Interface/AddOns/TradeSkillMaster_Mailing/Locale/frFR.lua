-- ------------------------------------------------------------------------------ --
--                            TradeSkillMaster_Mailing                            --
--            http://www.curse.com/addons/wow/tradeskillmaster_mailing            --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Mailing Locale - frFR
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/tradeskillmaster_mailing/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Mailing", "frFR")
if not L then return end

-- L["AH Mail:"] = ""
L[ [=[Automatically rechecks mail every 60 seconds when you have too much mail.

If you loot all mail with this enabled, it will wait and recheck then keep auto looting.]=] ] = [=[Vérifie automatiquement les courriers toute les 60 secondes lorsque vous avez trop de courriers.

Si vous récupérez tous les courriers avec cette option activée, la récupération automatique des courriers continuera après l'actualisation.]=]
L["Auto Recheck Mail"] = "Vérifier auto. les courriers"
L["BE SURE TO SPELL THE NAME CORRECTLY!"] = "ASSUREZ-VOUS DE TAPER LE NOM CORRECTEMENT !"
-- L["Bought %sx%d for %s from %s"] = ""
-- L["Buys"] = ""
L["Buy: %s (%d) | %s | %s"] = "Achat : %s (%d) | %s | %s"
-- L["Cancelled auction of %sx%d"] = ""
-- L["Cancels"] = ""
L["Cannot finish auto looting, inventory is full or too many unique items."] = "Impossible de finir de récupérer le courrier, l'inventaire est plein ou vous avez trop d'objets uniques."
--[==[ L[ [=[|cff99ffffShift-Click|r to automatically re-send after the amount of time specified in the TSM_Mailing options.
|cff99ffffCtrl-Click|r to perform a dry-run where Mailing doesn't send anything, but prints out what it would send (useful for testing your operations).]=] ] = "" ]==]
L["Clear"] = "Vider"
-- L["Clicking this button clears the item box."] = ""
-- L["Click this button to automatically mail items in the groups which you have selected."] = ""
-- L["Click this button to mail the item to the specified character."] = ""
-- L["Click this button to send all disenchantable items in your bags to the specified character. You can set the maximum quality to be sent in the options."] = ""
-- L["Click this button to send excess gold to the specified character (Maximum of 200k per mail)."] = ""
L["COD Amount (per Item):"] = "Montant contre-remboursement (Par objet) :"
-- L["COD: %s | %s | (%s) | %s | %s"] = ""
-- L["Could not loot item from mail because your bags are full."] = ""
-- L["Could not send mail due to not having free bag space available to split a stack of items."] = ""
-- L["Default Mailing Page"] = ""
-- L["Delete Empty NPC Mail"] = ""
L["Display Total Money Received"] = "Afficher l'argent total reçu"
-- L["Done sending mail."] = ""
-- L["Drag (or place) the item that you want to send into this editbox."] = ""
L["Enable Inbox Chat Messages"] = "Activer les messages dans la fenêtre de discussion"
L["Enable Sending Chat Messages"] = "Activer l'envoi des messages dans la discussion"
-- L["Enter name of the character disenchantable items should be sent to."] = ""
-- L["Enter the desired COD amount (per item) to send this item with. Setting this to '0c' will result in no COD being set."] = ""
L["Enter the name of the player you want to send excess gold to."] = "Entrez le nom du joueur à qui vous voulez envoyer l'argent en excès"
L["Enter the name of the player you want to send this item to."] = "Entrez le nom du joueur à qui vous voulez envoyer cet objet"
L["Expired: %s | %s"] = "Expiré : %s | %s"
-- L["Expires"] = ""
L["Failed to send mail:"] = "Impossible d’envoyer le mail :"
L["General"] = "Général"
L["General Settings"] = "Options générales"
-- L["Here you can select groups with TSM_Mailing operations to be automatically mailed to other characters."] = ""
-- L["If checked, a maximum quantity to send to the target can be set. Otherwise, Mailing will send as many as it can."] = ""
-- L["If checked, a 'Reload UI' button will be shown while waiting for the inbox to refresh. Reloading will cause the mailbox to refresh and may be faster than waiting for the next refresh."] = ""
-- L["If checked, information on mails collected by TSM_Mailing will be printed out to chat."] = ""
-- L["If checked, information on mails sent by TSM_Mailing will be printed out to chat."] = ""
-- L["If checked, mail from NPCs which have no attachments will automatically be deleted."] = ""
-- L["If checked, the Mailing tab of the mailbox will be the default tab."] = ""
-- L["If checked, the target's current inventory will be taken into account when determing how many to send. For example, if the max quantity is set to 10, and the target already has 3, Mailing will send at most 7 items."] = ""
-- L["If checked, the total amount of gold received will be shown at the end of automatically collecting mail."] = ""
-- L["Inbox Settings"] = ""
-- L["Inbox update in %d seconds."] = ""
L["Item (Drag Into Box):"] = "Objet (Déplacer ici) : "
-- L["Keep Free Bag Space"] = ""
-- L["Keep Quantity"] = ""
-- L["Lastly, click this button to send the mail."] = ""
L["Limit (In Gold):"] = "Limite (en or) :"
-- L["Lists the groups with mailing operations. Left click to select/deselect the group, Right click to expand/collapse the group."] = ""
-- L["Mail Disenchantables"] = ""
-- L["Mail Disenchantables Maximum Quality"] = ""
L["Mailing all to %s."] = "Envoi à %s." -- Needs review
-- L["Mailing operations contain settings for easy mailing of items to other characters."] = ""
-- L["Mailing up to %d to %s."] = ""
-- L["Mailing will keep this number of items in the current player's bags and not mail them to the target."] = ""
-- L["Mailing will not send any disenchantable items above this quality to the target player."] = ""
-- L["Mailing would send the following items to %s:"] = ""
L["Mail Selected Groups"] = "Envoyer les groupes sélectionnés"
L["Mail Send Delay"] = "Délai d'envoi de mail"
-- L["Make Mailing Default Mail Tab"] = ""
-- L["Maximum Quantity"] = ""
L["Max Quantity:"] = "Quantité max :"
-- L["Move Group To Bags"] = ""
-- L["Move Group to Bank"] = ""
-- L["Move Non Group Items to Bank"] = ""
-- L["Move Target Shortfall To Bags"] = ""
L["Multiple Items"] = "Objetsmultiples"
L["No Item Specified"] = "Aucun objet spécifié"
-- L["No Target Player"] = ""
-- L["No Target Specified"] = ""
-- L["Nothing to Move"] = ""
-- L["Not sending any gold as you either did not enter a limit or did not press enter to store the limit."] = ""
-- L["Not sending any gold as you have less than the specified limit."] = ""
-- L["Not Target Specified"] = ""
-- L["Open All Mail"] = ""
-- L["Open Mail Complete Sound"] = ""
-- L["Opens all mail containing canceled auctions."] = ""
-- L["Opens all mail containing expired auctions."] = ""
-- L["Opens all mail containing gold from sales."] = ""
-- L["Opens all mail containing items you have bought."] = ""
-- L["Opens all mail in your inbox. If you have more than 50 items in your inbox, the opening will automatically continue when the inbox refreshes."] = ""
L["Operation Settings"] = "Options d'opération"
-- L["Optionally specify a per-item COD amount."] = ""
-- L["Play the selected sound when Mailing is done opening all mail."] = ""
-- L["Preparing to Move"] = ""
-- L["Quick Send"] = ""
-- L["Restart Delay (minutes)"] = ""
-- L["Restock Target to Max Quantity"] = ""
-- L["Sales"] = ""
L["Sale: %s (%d) | %s | %s"] = "Vente : %s (%d) | %s | %s"
-- L["Send all %s to %s - No COD"] = ""
-- L["Send all %s to %s - %s per Item COD"] = ""
-- L["Send Disenchantable Items to %s"] = ""
-- L["Send Excess Gold to Banker"] = ""
-- L["Send Excess Gold to %s"] = ""
L["Sending..."] = "Envoi..."
-- L["Sending Settings"] = ""
L["Send Items Individually"] = "Envoyer les objets individuellement"
L["Sends each unique item in a seperate mail."] = "Envoyer les objets uniques séparément"
-- L["Send %sx%d to %s - No COD"] = ""
-- L["Send %sx%d to %s - %s per Item COD"] = ""
-- L["Sent all disenchantable items to %s."] = ""
L["Sent %s to %s."] = "%s envoyé à %s."
-- L["Sent %s to %s with a COD of %s."] = ""
-- L["Set Max Quantity"] = ""
-- L["Sets the maximum quantity of each unique item to send to the target at a time."] = ""
-- L["Shift-Click|r to leave mail with gold."] = ""
-- L["Shift-Click|r to leave the fields populated after sending."] = ""
-- L["Showing all %d mail."] = ""
-- L["Showing %d of %d mail."] = ""
-- L["Show Reload UI Button"] = ""
-- L["Skipping operation '%s' because there is no target."] = ""
-- L["Sold [%s]x%d for %s to %s"] = ""
-- L["Sources to Include in Restock"] = ""
-- L["Sources to Include in Restock:"] = ""
-- L["Specifies the default page that'll show when you select the TSM_Mailing tab."] = ""
-- L["Specify the item to be mailed here."] = ""
-- L["Specify the target player and the maximum quantity to send."] = ""
-- L["%s sent you a COD of %s for %s"] = ""
-- L["%s sent you a message: %s"] = ""
-- L["%s sent you %s"] = ""
-- L["%s sent you %s and %s"] = ""
-- L["%sShift-Click|r to continue opening after an inbox refresh if you have more than 50 items in your inbox."] = ""
L["%s to collect."] = "%s pour collecter"
-- L["Stopped opening mail to keep %d slots free."] = ""
-- L["Target:"] = ""
-- L["Target is Current Player"] = ""
-- L["Target Player"] = ""
-- L["Target Player:"] = ""
-- L["Test Selected Sound"] = ""
-- L["The name of the player you want to mail items to."] = ""
-- L["The 'Open All Mail' button will open all mail in your inbox (including beyond the 50-mail limit). The AH mail buttons below that will open specific types of mail from your inbox."] = ""
-- L["These buttons change what is shown in the mailbox frame. You can view your inbox, automatically mail items in groups, quickly send items to other characters, and more in the various tabs."] = ""
-- L["These will toggle between the module specific tabs."] = ""
L["This button will de-select all groups."] = "Ce bouton sert à désélectionner tous les groupes."
-- L["This button will move all items in the selected groups using the restock target settings from the bank to your bags."] = ""
-- L["This button will move items in the selected groups from the bank to your bags."] = ""
-- L["This button will move items in the selected groups from your bags to the bank."] = ""
-- L["This button will move items NOT in the selected groups from your bags to the bank."] = ""
L["This button will select all groups."] = "Ce bouton sert à sélectionner tout les groupes."
-- L["This feature makes it easy to mail all of your disenchantable items to a specific character. You can change the maximum quality of items to be sent in the options."] = ""
-- L["This feature makes it easy to maintain a specific amount of gold on the current character."] = ""
-- L["This is maximum amount of gold you want to keep on the current player. Any amount over this limit will be send to the specified character."] = ""
-- L["This is the maximum number of the specified item to send when you click the button below. Setting this to 0 will send ALL items."] = ""
-- L["This is where the items in your inbox are listed in an information and easy to read format."] = ""
-- L["This slider controls how long the mail sending code waits between consecutive mails. If this is set too low, you will run into internal mailbox errors."] = ""
-- L["This slider controls how much free space to keep in your bags when looting from the mailbox. This only applies to bags that any item can go in."] = ""
-- L["This tab allows you to quickly send any quantity of an item to another character. You can also specify a COD to set on the mail (per item)."] = ""
L["Total Gold Collected: %s"] = "Or collecté au total : %s"
-- L["TSM Groups"] = ""
-- L["TSM_Mailing Excess Gold"] = ""
-- L["When you shift-click a send mail button, after the initial send, it will check for new items to send at this interval."] = ""
-- L["Your auction of %s expired"] = ""
