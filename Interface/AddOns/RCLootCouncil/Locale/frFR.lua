-- Translate RCLootCouncil to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCLootCouncil", "frFR")
if not L then return end

L["Abort"] = "Annuler"
L["Accept Whispers"] = "Autoriser les chuchotements"
L["accept_whispers_desc"] = "Permet aux joueurs de vous chuchoter leur(s) objet(s) \195\169quip\195\169(s) pour qu'il(s) soit(-ent) ajout\195\169 \195\160 la fen\195\170tre de vote."
L["Acknowledged as 'response'"] = "Reconnu comme \" %s \""
L["Active"] = "Activ\195\169"
L["active_desc"] = "D\195\169cocher pour d\195\169sactiver RCLootCouncil. Cette option est utile si vous faites partie d'un groupe de raid, mais que vous n'y participez pas. Remarque : cette option est r\195\169initialis\195\169e apr\195\168s chaque d\195\169connexion."
L["add"] = "ajouter"
L["Add Item"] = "Ajouter un objet"
L["Add Note"] = "Ajouter une note"
L["Add ranks"] = "Ajouter des rangs"
L["add_ranks_desc"] = "D\195\169finir le rang minimum pour pouvoir participer au conseil du butin :"
L["add_ranks_desc2"] = "S\195\169lectionnez un rang ci-dessus pour ajouter au conseil tous les membres de ce rang et au-dessus.\
Cliquez sur les rangs \195\160 gauche pour ajouter des joueurs pr\195\169cis au conseil.\
Cliquez sur l'onglet 'Conseil actuel' pour afficher votre s\195\169lection."
L["Add rolls"] = "Ajouter un lancer de d\195\169s"
L["All items"] = "Tous les objets"
L["All items has been awarded and  the loot session concluded"] = "Tous les objets ont \195\169t\195\169 attribu\195\169s, la session de butin est termin\195\169e"
L["Alt click Looting"] = "Butin en Alt-clic"
L["alt_click_looting_desc"] = "Active le butin en Alt-clic, c.-\195\160-d. qu'une session sera lanc\195\169e en laissant appuyer le bouton Alt et en cliquant (clic gauche) avec la souris sur un objet."
L["Alternatively, flag the loot as award later."] = "Sinon, d\195\169signer le butin comme devant \195\170tre attribu\195\169 plus tard." -- Needs review
L["Always use RCLootCouncil when I'm Master Looter"] = "Toujours utiliser RCLootCouncil lorsque je suis ma\195\174tre du butin"
L["Always use when leader"] = "Toujours utiliser lorsque je suis chef"
L["A new session has begun, type '/rc open' to open the voting frame."] = "Une nouvelle session a d\195\169but\195\169, tapez '/rc open' pour ouvrir la fen\195\170tre de vote."
L["Announce Awards"] = "Annoncer les attributions"
L["announce_awards_desc"] = "Active l'annonce des attributions dans la fen\195\170tre de discussion."
L["announce_awards_desc2"] = "Choisissez dans quel(s) canal(-aux) vous voulez que les annonces soient faites et quel message y soit annonc\195\169.\
Utilisez &p en lieu du nom du joueur \195\160 qui l'objet est attribu\195\169, &i pour l'objet attribu\195\169 et &r pour le motif."
L["Announce Considerations"] = "Annoncer les objets en examen"
L["announce_considerations_desc"] = "Active, \195\160 chaque d\195\169but de session, l'annonce des objets en train d'\195\170tre examin\195\169s."
L["announce_considerations_desc2"] = "D\195\169finissez le canal dans lequel vous voulez que les annonces soient faites et quel message y soit annonc\195\169.\
Votre message servira d'en-t\195\170te \195\160 la liste d'objets."
L["Announcements"] = "Annonces"
L["Anonymous Voting"] = "Vote anonyme"
L["anonymous_voting_desc"] = "Activer le vote anonyme, c.-\195\160-d. que les joueurs ne verront pas qui a vot\195\169 pour qui."
L["Append realm names"] = "Ajouter le nom du royaume"
L["Are you sure you want to abort?"] = "\195\138tes-vous certain de vouloir quitter ?"
L["Are you sure you want to give #item to #player?"] = "\195\138tes-vous certain de vouloir attribuer %s \195\160 %s ?"
L["Ask me every time I become Master Looter"] = "Me demander \195\160 chaque fois que je suis ma\195\174tre du butin"
L["Ask me when leader"] = "Me demander lorsque je suis chef"
L["Auto Award"] = "Attribution automatique"
L["auto_award_desc"] = "Active l'attribution automatique."
L["Auto awarded 'item'"] = "%s a \195\169t\195\169 attribu\195\169 automatiquement"
L["Auto Award to"] = "Attribuer automatiquement \195\160"
L["auto_award_to_desc"] = "Joueur \195\160 qui les objets seront automatiquement attribu\195\169s. Une liste de s\195\169lection des membres du raid s'affichera si vous \195\170tes dans un groupe de raid. "
L["Auto Enable"] = "Activation automatique"
L["auto_enable_desc"] = "Cochez cette case pour que le butin soit toujours g\195\169r\195\169 par RCLootCouncil. En laissant cette case vide, l'add-on vous demandera \195\160 chaque fois que vous entrez dans un raid ou que vous \195\170tes nomm\195\169 ma\195\174tre du butin si vous voulez l'utiliser."
L["Auto Loot"] = "Fouille automatique"
L["Autoloot BoE"] = "Butin automatique des LqE"
L["autoloot_BoE_desc"] = "Active la fouille automatique des objets LqE (li\195\169s quand \195\169quip\195\169s)."
L["auto_loot_desc"] = "Active la fouille automatique de tous les objets pouvant \195\170tre \195\169quip\195\169s"
L["Auto Open"] = "Ouverture automatique"
L["auto_open_desc"] = "Cochez cette case pour que la fen\195\170tre de vote s'ouvre automatiquement lorsque n\195\169cessaire. La fen\195\170tre de vote peut indiff\195\169remment \195\170tre ouverte en tapant /rc open. Remarque : cette option n\195\169cessite la permission du ma\195\174tre du butin."
L["Autopass"] = "Passer automatiquement"
L["Auto Pass"] = "Passer automatiquement"
L["Auto pass BoE"] = "Passer automatiquement sur les objets LqE"
L["auto_pass_boe_desc"] = "D\195\169cocher pour ne jamais passer automatiquement sur des objets li\195\169s quand \195\169quip\195\169s."
L["auto_pass_desc"] = "Cocher pour passer automatiquement sur les objets inutilisables par votre classe."
L["Autopassed on 'item'"] = "Vous avez automatiquement pass\195\169 sur %s"
L["Auto Start"] = "Lancement automatique"
L["auto_start_desc"] = "Active le lancement automatique, c.-\195\160-d. qu'une session sera lanc\195\169e avec tous les objets \195\169ligibles. En d\195\169sactivant cette option, une liste d'objets modifiable s'affichera avant chaque d\195\169but de session. "
L["Autostart isn't supported when testing"] = "Le lancement automatique n'est pas pris en charge dans la fonction de test"
L["award"] = "attribuer"
L["Award"] = "Attribuer"
L["Award Announcement"] = "Annonces des attributions"
L["Award for ..."] = "Attribuer \195\160 ..."
L["Award later?"] = "Attribuer plus tard ?"
L["Award Reasons"] = "Motifs de l'attribution"
L["award_reasons_desc"] = "Motifs d'attribution ne pouvant \195\170tre choisis lors de la s\195\169lection d'une r\195\169ponse.\
Utilis\195\169s lorsque vous modifiez une r\195\169ponse en passant par le menu du clic droit ou en cas d'attribution automatique."
L["Awards"] = "Attributions"
L["Banking"] = "La banque"
L["Button"] = "Bouton"
L["Buttons and Responses"] = "Boutons et r\195\169ponses"
L["buttons_and_responses_desc"] = "Configurer les boutons de r\195\169ponse qui s'afficheront dans la fen\195\170tre de butin des joueurs.\
L'ordre des r\195\169ponses ci-dessous d\195\169termine l'ordre dans lequel seront tri\195\169es les r\195\169ponses dans la fen\195\170tre de vote, et s'affiche de gauche \195\160 droite dans la fen\195\170tre de butin. Utilisez le curseur pour d\195\169finir le nombre de boutons que vous voulez voire appara\195\174tre (max. %d).\
Un bouton 'Passer' est automatiquement ajout\195\169 tout \195\160 droite."
L["Cancel"] = "Annuler"
L["Candidate didn't respond on time"] = "Le candidat n'a pas r\195\169pondu dans le temps imparti."
L["Candidate has disabled RCLootCouncil"] = "Le candidat a d\195\169sactiv\195\169 RCLootCouncil"
L["Candidate is selecting response, please wait"] = "Le candidat est en train de r\195\169pondre, veuillez patienter."
L["Candidate removed"] = "Candidat retir\195\169"
L["Cannot autoaward:"] = "Attribution automatique impossible :"
L["Cannot give 'item' to 'player' due to Blizzard limitations. Gave it to you for distribution."] = "Impossible d'attribuer %s \195\160 %s en raisons des restrictions fix\195\169es par Blizzard. L'objet vous a \195\169t\195\169 attribu\195\169 pour que vous puissiez le distribuer."
L["Change Response"] = "Modifier la r\195\169ponse"
L["Changing LootMethod to Master Looting"] = "Le syst\195\168me de butin a \195\169t\195\169 chang\195\169 en Ma\195\174tre du butin"
L["Changing loot threshold to enable Auto Awarding"] = "Le seuil de qualit\195\169 est en train d'\195\170tre modifi\195\169 afin que l'attribution automatique puisse \195\170tre activ\195\169e"
L["Channel"] = "Canal"
L["channel_desc"] = "Le canal dans lequel sera envoy\195\169 le message."
L["chat_commands"] = "- config    - Ouvre les param\195\168tres de l'interface\
- council   - Ouvre l'interface du conseil\
- history   - Ouvre l'historique du butin (autrement 'h' ou 'his')\
- version   - Ouvre le v\195\169rificateur de version (autrement 'v' ou 'ver')\
- open      - Ouvre la fen\195\170tre de vote\
- reset     - R\195\169initialise la position des fen\195\170tres de l'add-on\
- test (#)  - Simule une session de butin comportant # objets, 1 si le nombre n'est pas sp\195\169cifi\195\169\
- whisper   - Affiche une aide pour les commandes de chuchotement\
- add [item]- Ajoute un objet \195\160 la fen\195\170tre de la session\
- award     - Lance une session avec les objets r\195\169cup\195\169r\195\169s se trouvant dans votre inventaire\
- winners   - Affiche les vainqueurs \195\160 qui ont \195\169t\195\169 attribu\195\169s les objets r\195\169cup\195\169r\195\169s se trouvant dans votre inventaire"
L["chat tVersion string"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s - %s"
L["chat version String"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s"
L["Check this to loot the items and distribute them later."] = "Cocher cette case pour r\195\169cup\195\169rer les objets et les attribuer plus tard."
L["Check to append the realmname of a player from another realm"] = "Cocher pour ajouter le nom du royaume d'un joueur provenant d'un autre royaume"
L["Check to have all frames minimize when entering combat"] = "Cocher pour minimiser toutes les fen\195\170tres en entrant en combat. "
L["Choose when to use RCLootCouncil"] = "Choisir quand utiliser RCLootCouncil"
L["Clear Loot History"] = "Effacer l'historique du butin"
L["clear_loot_history_desc"] = "Supprimer la totalit\195\169 de l'historique du butin."
L["Click to add note to send to the council."] = "Cliquer pour ajouter une note qui sera transmise au conseil."
L["Click to expand/collapse more info"] = "Cliquer pour afficher ou masquer des informations suppl\195\169mentaires"
L["Click to switch to 'item'"] = "Cliquer pour passer \195\160 %s"
L["Close"] = "Fermer"
L["config"] = "configuration"
L["confirm_usage_text"] = "|cFF87CEFA RCLootCouncil |r\
Souhaitez-vous utiliser RCLootCouncil avec ce groupe ?"
L["Could not Auto Award i because the Loot Threshold is too high!"] = "Attribution automatique de %s impossible car le seuil de qualit\195\169 est trop \195\169lev\195\169 !"
L["Could not find 'player' in the group."] = "Le joueur %s n'a pas \195\169t\195\169 trouv\195\169 dans le groupe."
L["Couldn't find any councilmembers in the group"] = "Aucun membre du conseil n'a \195\169t\195\169 trouv\195\169 dans le groupe"
L["council"] = "conseil"
L["Council"] = "Conseil"
L["Current Council"] = "Conseil actuel"
L["current_council_desc"] = "Cliquer pour retirer certains joueurs du conseil."
L["Date"] = true
L["days and x months"] = "%s et %d mois"
L["days, x months, y years"] = "%s, %d mois et %d ans"
L["Deselect responses to filter them"] = "D\195\169s\195\169lectionner les r\195\169ponses avant de pouvoir les filtrer"
L["Diff"] = true
L["Disenchant"] = "D\195\169senchanter"
L["disenchant_desc"] = "S\195\169lectionner cette option pour que ce motif soit choisi lorsque vous attribuez un objet par le biais du bouton 'D\195\169senchanter'"
L["DPS"] = true
L["Dropped by:"] = "D\195\169pouill\195\169 sur :"
L["Enable Loot History"] = "Activer l'historique du butin"
L["enable_loot_history_desc"] = "Active l'historique. RCLootCouncil ne r\195\169pertoriera rien si cette option est d\195\169sactiv\195\169e."
L["Enter your note:"] = "Saisissez votre note"
L["Everyone have voted"] = "Tout le monde a vot\195\169"
L["Filter"] = "Filtrer"
L["Following winners was registered:"] = "Les vainqueurs suivants ont \195\169t\195\169 r\195\169pertori\195\169s :"
L["Free"] = "Gratuit"
L["From:"] = "De :"
L["g1"] = true
L["g2"] = true
L["General"] = "G\195\169n\195\169ral"
L["General options"] = "Param\195\168tres g\195\169n\195\169raux"
L["Greed"] = "Cupidit\195\169"
L["Group"] = "Groupe"
L["Group Council Members"] = "Membres du groupe au conseil"
L["group_council_members_desc"] = "Ajouter au conseil des joueurs provenant d'un autre royaume ou d'une autre guilde."
L["group_council_members_head"] = "Ajouter au conseil des membres de votre groupe actuel."
L["Guild"] = "Guilde"
L["Guild Council Members"] = "Membres de la guilde au conseil"
L["Healer"] = "Soigneur"
L["help"] = "aide"
L["Hide Votes"] = "Masquer les votes"
L["hide_votes_desc"] = "Seuls les joueurs ayant d\195\169j\195\160 vot\195\169 pourront voir le r\195\169sultat des votes."
L["history"] = "historique"
L["ignore_input_desc"] = "Introduisez l'ID d'un objet pour l'ajouter \195\160 la liste des objets ignor\195\169s, emp\195\170chant ainsi \195\160 RCLootCouncil de l'ajouter \195\160 l'avenir \195\160 une session"
L["ignore_input_usage"] = "Cette fonction n'accepte que l'ID des objets (num\195\169ro)"
L["Ignore List"] = "Objets ignor\195\169s"
L["ignore_list_desc"] = "Objets ignor\195\169s par RCLootCouncil. Cliquez sur un objet pour le retirer de la liste."
L["Ignore Options"] = "Param\195\168tres des objets ignor\195\169s"
L["ignore_options_desc"] = "G\195\169rez quels objets devraient \195\170tre ignor\195\169s par RCLootCouncil. Si vous ajoutez un objet qui n'a pas \195\169t\195\169 mis en cache, vous devez changer d'onglet puis revenir dans celui-ci pour que vous puissiez voir l'objet en question appara\195\174tre dans la liste."
L["ilvl"] = true
L["ilvl: x"] = "ilvl : %d"
L[" is not active in this raid."] = "n'est pas activ\195\169 pour ce raid."
L["Item"] = "Objet"
L["Item has been awarded"] = "L'objet a \195\169t\195\169 attribu\195\169"
L["Item received and added from 'player'"] = "Objet re\195\167u de %s et ajout\195\169."
L["Item(s) replaced:"] = "Objet(s) remplac\195\169s :"
L["Items under consideration:"] = "Objets en train d'\195\170tre examin\195\169s"
L["Latest 'item' won:"] = "Dernier %s remport\195\169 :"
L["Log"] = "Journal"
L["log_desc"] = "Active le r\195\169pertoriage dans l'historique du butin."
L["Loot announced, waiting for answer"] = "Butin divulgu\195\169, en attente d'une r\195\169ponse"
L["Looted items to award later"] = "Objets r\195\169cup\195\169r\195\169s qui seront attribu\195\169s plus tard"
L["Loot Everything"] = "Tout fouiller"
L["loot_everything_desc"] = "Active la fouille automatique des non-objets (p. ex. les montures, les jetons de sets de tier)"
L["Loot History"] = "Historique du butin"
L["loot_history_desc"] = "RCLootCouncil enregistre automatiquement les informations pertinentes durant les sessions.\
Les donn\195\169es brutes sont enregistr\195\169es dans le fichier \".../SavedVariables/RCLootCouncil.lua\".\
Remarque : les joueurs autres que le ma\195\174tre du butin peuvent uniquement enregistrer les donn\195\169es qui leur sont envoy\195\169es par ce dernier."
L["Looting options"] = "Param\195\168tres de fouille"
L["Loot won:"] = "Butin remport\195\169 :"
L["Lower Quality Limit"] = "Seuil inf\195\169rieur de qualit\195\169"
L["lower_quality_limit_desc"] = "D\195\169terminez le seuil inf\195\169rieur de qualit\195\169 des objets qui seront automatiquement attribu\195\169s (cette qualit\195\169 est comprise).\
Remarque : cette option prime le seuil de qualit\195\169 par d\195\169faut. "
L["Mainspec/Need"] = "Sp\195\169cialisation principale / besoin"
L["Master Looter"] = "Ma\195\174tre du butin"
L["master_looter_desc"] = "Remarque : ces param\195\168tres ne sont utilis\195\169s que lorsque vous \195\170tes ma\195\174tre du butin."
L["Message"] = true
L["message_desc"] = "Message \195\160 envoyer au canal pr\195\169d\195\169fini."
L["Minimize in combat"] = "Minimiser en combat"
L["Minor Upgrade"] = "L\195\169g\195\168re am\195\169lioration"
L["ML sees voting"] = "MdB voit les votes"
L["ml_sees_voting_desc"] = "Permet au ma\195\174tre du butin de voir qui a vot\195\169 pour qui."
L["Multi Vote"] = "Vote multiple"
L["multi_vote_desc"] = "Active le vote multiple, ce qui permet aux votants de voter pour plusieurs candidats."
L["Name"] = "Nom"
L["'n days' ago"] = "il y a %s"
L["Need"] = "Besoin"
L["Never use RCLootCouncil"] = "Ne jamais utiliser RCLootCouncil"
L["No"] = "Non"
L["No (dis)enchanters found"] = "Aucun (d\195\169s)enchanteur trouv\195\169"
L["No entries in the Loot History"] = "Aucune entr\195\169e dans l'historique du butin"
L["No items to award later registered"] = "Aucun objet devant \195\170tre attribu\195\169 plus tard enregistr\195\169"
L["None"] = "Aucun"
L["No session running"] = "Aucune session en cours"
-- L["Not announced"] = ""
L["Not cached, please reopen."] = "Pas gard\195\169 en cache, veuillez rouvrir."
L["Note"] = true
L["Notes"] = true
L["notes_desc"] = "Permet aux candidats d'envoyer une note au conseil en plus du choix de leur r\195\169ponse."
L["Not Found"] = "Introuvable"
L["Not installed"] = "Pas install\195\169"
L["Now handles looting"] = "G\195\168re \195\160 pr\195\169sent l'attribution du butin"
L["No winners registered"] = "Aucun vainqueur r\195\169pertori\195\169"
L["Number of buttons"] = "Nombre de boutons"
L["number_of_buttons_desc"] = "Glisser pour modifier le nombre de boutons."
L["Number of reasons"] = "Nombre de motifs"
L["number_of_reasons_desc"] = "Glisser pour modifier le nombre de motifs."
L["Observe"] = "Observateurs"
L["observe_desc"] = "Autorise aux joueurs qui ne sont pas membres du conseil de voir la fen\195\170tre de vote. Ils ne pourront n\195\169anmoins pas prendre part au vote."
L["Officer"] = "Officier"
L["Offline or RCLootCouncil not installed"] = "Hors ligne ou RCLootCouncil n'est pas install\195\169"
L["Offspec/Greed"] = "Sp\195\169cialisation secondaire / cupidit\195\169"
L["open"] = "ouvrir"
L["Open the Loot History"] = "Ouvrir l'historique du butin"
L["open_the_loot_history_desc"] = "Cliquer pour ouvrir l'historique du butin."
L["Party"] = "Groupe"
L["Pass"] = "Passer"
L["'player' has asked you to reroll"] = "%s a demand\195\169 que vous relanciez les d\195\169s"
L["'player' has ended the session"] = "%s a mis fin \195\160 la session"
L["&p was awarded with &i for &r!"] = "&p a re\195\167u &i pour &r !"
L["Raid"] = true
L["Raid Warning"] = "Alerte raid"
L["Rank"] = "Rang"
L["RCLootCouncil Loot Frame"] = "Fen\195\170tre du butin de RCLootCouncil"
L["RCLootCouncil Loot History"] = "Historique du butin de RCLootCouncil"
L["RCLootCouncil Session Setup"] = "Param\195\169trage de session de RCLootCouncil"
L["RCLootCouncil Version Checker"] = "V\195\169rificateur de version de RCLootCouncil"
L["RCLootCouncil Voting Frame"] = "Fen\195\170tre de vote de RCLootCouncil"
L["Reannounce ..."] = "R\195\169annoncer ..."
L["Reason"] = "Motif"
L["reason_desc"] = "Motif d'attribution qui sera indiqu\195\169 dans l'historique du butin lorsqu'un objet sera automatiquement attribu\195\169."
L["Remove All"] = "Retirer tous les joueurs"
L["remove_all_desc"] = "Retirer tous les membres du conseil"
L["Remove from consideration"] = "Retirer de la liste"
L["reset"] = "r\195\169initialiser"
L["reset_announce_to_default_desc"] = "R\195\169initialise tous les param\195\168tres des annonces avec les param\195\168tres par d\195\169faut."
L["reset_buttons_to_default_desc"] = "R\195\169initialise tous les boutons, les couleurs et les r\195\169ponses avec les param\195\168tres par d\195\169faut."
L["Reset to default"] = "R\195\169initialiser"
L["reset_to_default_desc"] = "R\195\169initialise les motifs d'attribution avec les param\195\168tres par d\195\169faut."
L["Response"] = "R\195\169ponse"
L["Response color"] = "Couleur de la r\195\169ponse"
L["response_color_desc"] = "D\195\169finir une couleur pour la r\195\169ponse."
L["Responses from Chat"] = "R\195\169ponses de la fen\195\170tre de discussion"
L["responses_from_chat_desc"] = "Dans le cas o\195\185 un joueur n'a pas install\195\169 l'add-on (le bouton 1 sera utilis\195\169 par d\195\169faut si aucun mot-clef n'a \195\169t\195\169 saisi).\
Par exemple : \"/w Nom_du_ma\195\174tre_du_butin [Objet] cupidit\195\169\" indiquera que vous avez choisi l'option cupidit\195\169 pour un objet.\
Vous pouvez d\195\169finir ci-dessous les mots-clef qui pourront \195\170tre utilis\195\169s pour chaque bouton. Seuls les caract\195\168res A-Z, a-z et 0-9 sont accept\195\169s dans les mots-clef. Tous les autres caract\195\168res sont consid\195\169r\195\169s comme une s\195\169paration.\
Les joueurs peuvent afficher une liste des mots-clef en chuchotant 'rchelp' au ma\195\174tre du butin une fois l'add-on activ\195\169 (p. ex. dans un raid).\
"
L["Role"] = "R\195\180le"
L["Roll"] = "D\195\169s"
L["Say"] = "Dire"
L["Self Vote"] = "Vote pour soi"
L["self_vote_desc"] = "Permet aux votants de voter pour eux."
L["Send History"] = "Envoyer l'historique"
L["send_history_desc"] = "Envoyer les donn\195\169es \195\160 tous les membres du raid, que vous enregistriez vous-m\195\170me les donn\195\169es ou non. RCLootCouncil n'enverra de donn\195\169es que si vous \195\170tes le ma\195\174tre du butin."
L["Sent whisper help to 'player'"] = "Chuchotement d'aide envoy\195\169 \195\160 %s"
L["session_error"] = "Une erreur est survenue, veuillez relancer la session"
L["Set the text for button i's response."] = "D\195\169finir le texte pour la r\195\169ponse du bouton %d"
L["Set the text on button 'number'"] = "D\195\169finir le texte du bouton %i"
L["Set the whisper keys for button i."] = "D\195\169finissez les mots-clef de chuchotement du bouton &d."
L["Silent Auto Pass"] = "Passer automatiquement (silencieux)"
L["silent_auto_pass_desc"] = "Cocher pour masquer les messages li\195\169s \195\160 la fonction \"passer automatiquement\""
L["Something went wrong :'("] = "Une erreur s'est produite :'("
L["Start"] = "D\195\169buter"
L["Status texts"] = "Textes de statut"
L["Tank"] = true
L["test"] = true
L["Test"] = true
L["test_desc"] = "Cliquer pour simuler pour vous et tous les membres de votre raid une session de butin o\195\185 vous \195\170tes le ma\195\174tre du butin."
L["Text color"] = "Couleur du texte"
L["text_color_desc"] = "Couleur du texte lorsqu'il sera affich\195\169."
L["Text for reason #i"] = "Texte du motif #"
L["The following council members have voted"] = "Les membres du conseil suivants ont vot\195\169"
L["The item would now be awarded to 'player'"] = "L'objet serait attribu\195\169 \195\160 %s dans ces conditions"
L["The loot is already on the list"] = "Le butin fait d\195\169j\195\160 partie de la liste"
L["The Master Looter doesn't allow multiple votes."] = "Le ma\195\174tre du butin n'a pas autoris\195\169 le vote multiple."
L["The Master Looter doesn't allow votes for yourself."] = "Le ma\195\174tre du butin n'a pas autoris\195\169 de voter pour soi."
L["The session has ended."] = "La session est termin\195\169e."
L["This item"] = "Cet objet"
L["This item has been awarded"] = "Cet objet a \195\169t\195\169 attribu\195\169"
L["Time:"] = "Heure :"
L["Total items received:"] = "Nombre total d'objets re\195\167us :"
L["Total items won:"] = "Nombre total d'objets remport\195\169s :"
L["tVersion_outdated_msg"] = "La derni\195\168re version de test de RCLootCouncil est : %s"
L["Unable to give 'item' to 'player' - (player offline, left group or instance?)"] = "Impossible d'attribuer %s \195\160 %s - (joueur d\195\169connect\195\169, a quitt\195\169 le groupe ou l'instance ?)"
L["Unable to give out loot without the loot window open."] = "Impossible d'attribuer d'objet sans que la fen\195\170tre de butin ne soit ouverte."
L["Unguilded"] = "Sans guilde" -- Needs review
L["Unknown"] = "Inconnu"
L["Unknown/Chest"] = "Inconnu / Plastron"
L["Unknown date"] = "Date inconnue"
L["Unvote"] = "Retirer vote"
L["Upper Quality Limit"] = "Seuil sup\195\169rieur de qualit\195\169"
L["upper_quality_limit_desc"] = "D\195\169terminez le seuil sup\195\169rieur de qualit\195\169 des objets qui seront automatiquement attribu\195\169s (cette qualit\195\169 est comprise).\
Remarque : cette option prime le seuil de qualit\195\169 par d\195\169faut. "
L["Usage"] = "Utilisation"
L["Use the same setting when entering a raid as the group leader?"] = "Utiliser les m\195\170mes param\195\168tres que le chef de groupe en rejoignant un raid ?"
L["version"] = true
L["Version"] = true
L["Version Check"] = "V\195\169rifier la version"
L["version_check_desc"] = "Lance le module du v\195\169rificateur de version."
L["version_outdated_msg"] = "Votre version %s est d\195\169pass\195\169e. La derni\195\168re version est %s, veuillez mettre \195\160 jour RCLootCouncil."
L["Vote"] = "Voter"
L["Voters"] = "Votants"
L["Votes"] = true
L["Voting options"] = "Param\195\168tres de vote"
L["Waiting for item info"] = "En attente des informations de l'objet"
L["Waiting for response"] = "En attente d'une r\195\169ponse"
L["whisper"] = "chuchoter"
L["whisper_guide"] = "[RCLootCouncil] : num\195\169ro r\195\169ponse [objet1] [objet2]. Num\195\169ro : num\195\169ro de l'objet que vous d\195\169sirez. R\195\169ponse : un des mots-clef pr\195\169d\195\169finis. Ins\195\169rez le lien de(s) l'objet(s) en question (num\195\169ro) dans la fen\195\170tre de discussion en ajoutant le mot-clef ad\195\169quat. Par exemple : en tapant '1 cupidit\195\169 [objet1]', vous auriez choisi cupidit\195\169 pour l'objet num\195\169ro 1."
L["whisper_guide2"] = "[RCLootCouncil] : vous recevrez un message de confirmation si vous avez \195\169t\195\169 ajout\195\169 \195\160 la session."
L["whisper_help"] = "Les membres du raid peuvent utiliser le syst\195\168me de chuchotement si un joueur n'a pas install\195\169 cet add-on.\
En chuchotant 'rchelp' au ma\195\174tre du butin, ils verront s'afficher un guide en plus d'une liste de mots-clef, qui peuvent \195\170tre modifi\195\169s dans l'onglet 'Boutons et r\195\169ponses'.\
Le ma\195\174tre du butin est conseill\195\169 d'activer l'option 'Annoncer les objets en examen', puisque le num\195\169ro de chaque objet est n\195\169cessaire pour pouvoir utiliser le syst\195\168me de chuchotement.\
Remarque : les joueurs devraient malgr\195\169 tout installer l'add-on, sans quoi toutes les informations concernant les joueurs ne seront pas disponibles."
L["whisperKey_greed"] = "cupidit\195\169, sp\195\169secondaire, offsp\195\169, os, 2"
L["whisperKey_minor"] = "petitup, petit, 3"
L["whisperKey_need"] = "besoin, sp\195\169principale, mainsp\195\169, ms, 1"
L["Windows reset"] = "R\195\169initialisation des fen\195\170tres"
L["winners"] = "vainqueurs"
L["x days"] = "%d jours"
L["x out of x have voted"] = "%d sur %d ont vot\195\169"
L["Yell"] = "Crier"
L["Yes"] = "Oui"
L["You are not allowed to see the Voting Frame right now."] = "Vous n'\195\170tes pas autoris\195\169 \195\160 voir la fen\195\170tre de vote pour le moment."
L[" you are now the Master Looter and RCLootCouncil is now handling looting."] = "vous \195\170tes le ma\195\174tre du butin et RCLootCouncil g\195\168re \195\160 pr\195\169sent le butin."
L["You cannot initiate a test while in a group without being the MasterLooter."] = "Vous ne pouvez lancer de test dans un groupe sans \195\170tre le ma\195\174tre du butin."
L["You cannot use the menu when the session has ended."] = "Vous ne pouvez utiliser le menu si la session est termin\195\169e."
L["You cannot use this command without being the Master Looter"] = "Vous ne pouvez utiliser cette commande sans \195\170tre le ma\195\174tre du butin"
L["You can only auto award items with a quality lower than 'quality' to yourself due to Blizaard restrictions"] = "En raison des restrictions fix\195\169es par Blizzard, vous ne pouvez vous attribuer automatiquement que des objets de qualit\195\169 inf\195\169rieure \195\160 %s."
L["You can't start a loot session while in combat."] = "Impossible de d\195\169buter une session de butin en combat."
L["You can't start a session before all items are loaded!"] = "Impossible de lancer une session tant que tous les objets n'ont pas \195\169t\195\169 charg\195\169s !"
L["You haven't set a council! You can edit your council by typing '/rc council'"] = "Vous n'avez pas choisi de conseil ! Vous pouvez modifier votre conseil en tapant '/rc council'"
L["You're already running a session."] = "Une session est d\195\169j\195\160 en cours"
L["Your note:"] = "Votre note :"

