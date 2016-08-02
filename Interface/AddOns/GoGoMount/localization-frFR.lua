﻿if GetLocale() == "frFR" then
	BINDING_HEADER_GOGOHEADER = "GoGoMount"
	BINDING_NAME_GOGOBINDING = "Monter/descendre de monture"
	BINDING_NAME_GOGOBINDING2 = "Monter/descendre de monture (non volante)"
	BINDING_NAME_GOGOBINDING3 = "Monter/descendre de monture avec passager"
	GoGo_Variables.Localize = {
	Skill = {
		Engineering = "Ingénierie",
		Riding = "Monte",
		Tailoring = "Couture",
	},
	String = {
		AutoExcludeFlyingMountsInNoFlyAreas = "Automatically exclude flying mounts in \"no fly\" areas", -- Requires localization
		AutoExcludeFlyingMountsInNoFlyAreas_Long = "With this option enabled, GoGoMount will automatically remove all mounts that can fly from the random mount selection when it believes you can't actually fly.  This is almost the same as using key binding #2 for GoGoMount.  This will be useful while leveling up, in battle grounds, etc.  Note that if your list of favorite mounts contains all mounts that can fly and you trying mounting in a battle ground with this option enabled, you may not mount at all.", -- Requires localization
		AutomaticallyRemoveBuffs = "Supprimer automatiquement les buffs qui empêchent l'utilisation des montures",
		AutoStartCrusaderAura = "Aura du croisé automatique",
		AutoStartCrusaderAura_Long = "Active automatiquement l'Aura du croisé quand GoGoMount est utilisé pour invoquer une monture.",
		Clear = "Effacer",
		ClearGlobalFavoriteMounts = "Effacer les montures favorites globales",
		CurrentZone = "Zone actuelle",
		CurrentZoneDescription = "Les montures désignées comme favorites pour cette zone seront les seules que GoGoMount y invoquera. Toutes les autres montures et formes de voyages seront ignorées. Effacer cette liste permet à GoGoMount d'utiliser toutes les montures (ou les favorites globales s'il y en a)",
		CurrentZoneExclusions = "Exclusions de la zone actuelle",
		CurrentZoneFavorites = "Favoris de la zone actuelle",
		DisableFlyingFromWater = "Désactiver les montures volantes dans l'eau",
		DisableInCombat = "Désactiver les boutons GoGoMount en combat",
		DisableInCombat_Long = "Cette option désactive les boutons de GoGoMount pendant les combats. Utile pour les druides en forme d'ours qui cliqueraient accidentellement sur un bouton de GoGoMount. Doit être activée ou désactivée avant d'entrer en combat.",
		DisableUnknownMountNotices = "Désactiver les annonces de monture inconnue",
		DisableUpdateNotices = "Désactiver les annonces de mise à jour",
		DruidFlightPreference = "Toujours utiliser la forme de vol même sans se déplacer",
		DruidOptions = "Options pour Druides",
		DruidSingleClick = "Passer à une forme de voyage en un seul clic",
		EnableAutoDismount = "Activer la descente de monture automatique",
		ExtraPassengerMounts = "Montures avec passagers", -- Needs review
		ExtraPassengerMountsDescription = "Cette liste de montures avec passagers est utilisée pour ajouter ces montures à la sélection aléatoire lorsque le bouton \"Montures avec passagers\" est pressé. Cela vous permettra de définir des listes de montures préférées à l'exception des montures avec passagers mais de toujours les avoir à disposition lorsque vous utilisez le bouton \"Montures avec passagers\" . Ces montures ne seront pas utilisées si elles sont marquées comme exclues dans la liste d'exclusion globale ou pour la zone actuelle.", -- Needs review
		Favorites = "Favoris",
		GlobalExclusions = "Exclusions globales",
		GlobalExclusionsDescription = "Ces montures seront toujours ignorées. Même si ces montures sont désignées comme favorites, elles ne seront pas utilisées.",
		GlobalFavorites = "Favoris globaux",
		GlobalPreferences = "Préférences globales",
		GlobalZoneDescription = "Les montures favorites sélectionnées ici seront utilisées seulement s'il n'y pas de favoris de zone désignés pour la zone actuelle.",
		HunterOptions = "Options pour Chasseurs",
		NewVersionFound = "Une nouvelle version de GoGoMount est disponible.",
		NoShapeInRandom = "Ne pas randomiser les formes avec les montures",
		PaladinOptions = "Options pour paladins",
		RemoveBuffs = "Supprimer les buffs qui empêchent l'utilisation des montures",
		RemoveBuffs_Long = "GoGoMount va tenter d'annuler les buffs et formes activés par des sorts ou objets et qui empêchent d'invoquer une monture. Ceci fonctionne seulement pour les buffs connus et nécessite parfois de cliquer 2 fois sur le bouton de GoGoMount.",
		ShamanOptions = "Options pour le Chaman", -- Needs review
		ShamanSingleClick = "Du Loup Fantôme à la monture en un simple clique", -- Needs review
		UnknownMountFound = "Une monture inconnue a été trouvée dans votre liste. Veuillez la communiquer afin qu'elle soit ajoutée à une future version de GoGoMount",
		UseAspectOfThePackInstead = "Utiliser Aspect de la meute au lieu d'Aspect du guépard",
		UseAspectOfThePackInstead_Long = "Si activé, GoGoMount lancera Aspect de la meute plutôt qu'Aspect du guépard. Les préférences locales ou globales outrepassent ce réglage. Si c'est activé pour utiliser Aspect de la meute et que votre préférence de zone est réglée sur Aspect du guépard, ce dernier sera utilisé.",
		ZoneExclusionsDescription = "Les exclusions spécifiques à une zone fonctionnent comme les exclusions globales mais spécifiques pour cette zone. Les montures désignées ici comme exclues ne seront jamais invoquées dans cette zone.",
	},
	Talent = {
		AncestralSwiftness = "Rapidité ancestrale",
		FeralSwiftness = "Célérité farouche",
	},
	Zone = {
		AbyssalDepths = "Profondeurs Abyssales",
		AmaniMountains = "Montagnes des Amani", -- Needs review
		AQ40 = "Temple d'Ahn'Qiraj",
		AzuremystIsle = "Île de Brume-Azur",
		BloodmystIsle = "Île de Brume-Sang",
		CrumblingDepths = "Profondeurs Désagrégées",
		Dalaran = "Dalaran",
		DarkbreakCove = "Crique du Sombre brisant",
		Deepholm = "Le Tréfonds",
		DireMaul = "Hache-Tripes",
		EversongWoods = "Bois des Chants éternels",
		Ghostlands = "Les terres Fantômes",
		Icecrown = "La Couronne de glace",
		Ironforge = "Forgefer",
		IsleOfQuelDanas = "Île de Quel'Danas",
		KrasusLanding = "Aire de Krasus",
		LegionsRest = "Le Repos de la Légion",
		Lghorek = "L'ghorek",
		Nespirah = "Nespirah",
		ShimmeringExpanse = "Étendues Chatoyantes",
		SholazarBasin = "Bassin de Sholazar",
		SilvermoonCity = "Lune-d'argent",
		SilverTideHollow = "Creux des Flots argentés",
		TempleOfBethekk = "Temple de Bethekk",
		TempleOfEarth = "Temple de la Terre",
		TenebrousCavern = "Caverne Ténébreuse",
		ThalassianPass = "Passe Thalassienne",
		ThalassianRange = "Chaîne Thalassienne", -- Needs review
		TheCerebrillum = "Le Cervellium",
		TheExodar = "L'Exodar",
		TheFrozenSea = "La mer Gelée",
		TheOculus = "L'Oculus",
		TheStormPeaks = "Les pics Foudroyés",
		TheTempleOfAtalHakkar = "Le temple d'Atal'Hakkar",
		TheUnderbelly = "Les Entrailles",
		TheVioletCitadel = "Citadelle Pourpre",
		TheVortexPinnacle = "La cime du Vortex",
		TolBarad = "Tol Barad",
		TolBaradPeninsula = "Péninsule de Tol Barad",
		TwistingNether = "Le Néant distordu",
		Vashjir = "Vashj'ir",
		Wintergrasp = "Joug-d'hiver",
	},
}

end --if