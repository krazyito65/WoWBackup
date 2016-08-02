-- EPGPLootmaster Locale
-- Please use the Localization App on Curseforge to Update this
-- http://wow.curseforge.com/addons/epgp_lootmaster/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("EPGPLootmaster", "esES")
if not L then return end

L["Add note"] = "A\195\177adir nota"
L["Allow candidates to add notes to each item."] = "Permitir a los candidatos a\195\177adir notas a cada objeto."
L["Allows you to manually set the response for a given candidate"] = "Te permite a\195\177adir una respuesta manual para un determinado candidato" -- Needs review
L["Always enable bidding"] = "Siempre activar la subasta" -- Needs review
L["Always: the bidding inputs will always be available when using the auto announcing features.\
\
Manual: Disable the bidding system by default and allow me to select per item (you should disable auto announce). Bidding system will be disabled when you're using the auto announcing system. You can by-pass the auto announcing system per item by alt+clicking an item on the native loot window."] = "Siempre: los datos de puja ser\195\161n siempre visibles cuando se usen las caracter\195\173sticas de anuncio autom\195\161tico.\
\
Manual: Deshabilita el sistema de subasta por defecto y me permite seleccionar objeto a objeto (debes deshabilitar el auto anunciamiento). El sistema de subasta ser\195\161 deshabilitado cuando est\195\169s usando el sistema de auto anunciamiento. Puedes saltarte este sistema objeto a objeto haciendo clic+alt en un objeto en al ventana nativa de despojo." -- Needs review
L["Always use EPGPLootmaster to distribute loot, without asking"] = "Siempre utilizar EPGPLootmaster para distribuir el bot\195\173n, sin preguntar" -- Needs review
L["Amount of buttons to display:"] = "Cantidad de botones a mostrar" -- Needs review
L["Announce loot"] = "Anunciar bot\195\173n" -- Needs review
L["Announce loot & request bids"] = "Anunciar bot\195\173n & petici\195\179n de pujas" -- Needs review
L["Ask me every time I become loot master"] = "Preguntarme cada vez que soy maestro despojador" -- Needs review
L["Attempts to send the loot to the candidate and awards %s GP to the candidate"] = "Intenta enviar el bot\195\173n al candidato y otorgarle %s GP" -- Needs review
L["Attempts to send the loot to the candidate and awards %s GP to the candidate for %s"] = "Intenta enviar el bot\195\173n al candidato y otorgarle %s GP por %s" -- Needs review
L["Attempts to send the loot to the candidate and doesn't award GP to the candidate, thus giving it for free."] = "Intenta enviar el bot\195\173n al candidato y no otorgarle GP, por consiguiente d\195\161ndoselo gratis." -- Needs review
L["Attempts to send the loot to the candidate for disenchantment."] = "Intenta enviar el bot\195\173n al candidato para ser desencantado." -- Needs review
L["Attempts to send the loot to the candidate for storage in bank."] = "Intenta enviar el bot\195\173n al candidato para guardarlo en el banco." -- Needs review
L["Auto announcement"] = "Anunciar autom\195\161ticamente" -- Needs review
L["Auto announcement threshold"] = "Umbral de anunciado autom\195\161tico" -- Needs review
L["Auto hiding"] = "Subastar autom\195\161ticamente" -- Needs review
L["Auto looting"] = "Repartir el bot\195\173n automaticamente" -- Needs review
L["Auto looting of items"] = "Repartici\195\179n de bot\195\173n autom\195\161tica" -- Needs review
L["Auto looting of %s to %s failed. Not a candidate for this loot."] = "La repartici\195\179n del botin %s autom\195\161ticamente a %s ha fallado. No es un candidato para este bot\195\173n." -- Needs review
L["Auto looting %s to %s"] = "Repartir el botin %s autom\195\161ticamente a %s" -- Needs review
L["Auto loot threshold (BoE and BoU items only)"] = "Umbral de repartici\195\179n de bot\195\173n (S\195\179lo objetos que se ligan al equiparse o usarse)" -- Needs review
L["Auto message: please install EPGPLootmaster from curse.com:  http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx"] = "Mensaje automatico: por favor, instale EPGPLootmaster desde curse.com: http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx" -- Needs review
L["Auto notice from %s: please update epgp_lootmaster from curse.com. If you fail to do so you might not get loot during raids."] = "Aviso autom\195\161tico de %s: por favor actualice epgp_lootmaster desde curse.com. Si no lo hace correctamente podr\195\173a no conseguir bot\195\173n durante las bandas." -- Needs review
L["Auto pass; Enchanter (%s)"] = "Pasar autom\195\161ticamente; Encantador (%s)" -- Needs review
L["Autopassing %s (not eligible)"] = "Pasando autom\195\161ticamente %s (no re\195\186ne los requisitos)" -- Needs review
L["Auto pass (not eligible)"] = "Pasar autom\195\161ticamente (no re\195\186ne los requisitos)" -- Needs review
L["bank"] = "banco"
L["Bid"] = "Puja" -- Needs review
L["Bidding system"] = "Sistema de pujas" -- Needs review
L[", BoE"] = ", se liga al equipar"
L[", BoP"] = ", se liga al recoger"
L[", BoU"] = ", se liga al usarlo"
L["Button 1"] = "Bot\195\179n 1" -- Needs review
L["Button 2"] = "Bot\195\179n 2" -- Needs review
L["Button 3"] = "Bot\195\179n 3" -- Needs review
L["Button 4"] = "Bot\195\179n 4" -- Needs review
L["Button 5"] = "Bot\195\179n 5" -- Needs review
L["Button 6"] = "Bot\195\179n 6" -- Needs review
L["Button 7"] = "Bot\195\179n 7" -- Needs review
L["Button caption"] = "T\195\173tulo del bot\195\179n" -- Needs review
L["Button text:"] = "Texto del bot\195\179n:" -- Needs review
L["Candidate"] = "Candidato" -- Needs review
L["Candidate did not respond on time."] = "El candidato no respondi\195\179 a tiempo." -- Needs review
L["Candidate's current equipment:"] = "Equipamiento actual del candidato:" -- Needs review
L["- Cannot distribute loot -"] = "- No se puede distribuir el bot\195\173n -"
L["\
\
|cFFFF8080WARNING: Alot of settings have been hidden because the EPGPLootmaster 'ML' module has been disabled. Please enabled it from the addon configuration screen.|r"] = "|cFFFF8080ALERTA: Muchas de las opciones de configuraci\195\179n est\195\161n ocultas porque el m\195\179dulo EPGPLootmaster 'ML' ha sido desactivado. Por favor, act\195\173valo desde la pantalla de gesti\195\179n de addons.|r" -- Needs review
L["Change this to the GP value you wish to set for this item"] = "Cambiar esto al valor de GP que desees establecer para este objeto" -- Needs review
L["Check if you want display incoming monitor updates. This function allows you to see the masterlooter interface so you can help in making decisions about the loot distribution."] = "Marca la casilla si quieres mostrar actualizaciones entrantes del monitor. Esta funci\195\179n te permite ver la interfaz del maestro despojador por lo que te puede ayudar a tomar decisiones sobre la distribuci\195\179n del bot\195\173n." -- Needs review
L["Check if you want send outgoing monitor messages. This functions allows other raidmembers to see the masterlooter interface so they can help in making decisions about the loot distribution. You will only send out messages if you are the master looter."] = "Marca la casilla si quieres enviar mensajes salientes del monitor. Esta funci\195\179n permite a otros miembros de la banda ver la interfaz del maestro despojador por lo que pueden ayudar a tomar decisiones sobre la distribuci\195\179n del bot\195\173n. S\195\179lo enviar\195\161 mensajes si eres el maestro despojador." -- Needs review
L["Checks whether players are locked to an instance."] = "Comprueba si los jugadores est\195\161n registrados en una instancia." -- Needs review
L["Check this if you want your candidates to send notes to you. The notes will show up as an icon on your loot interface. You can read them by hovering the icon. This allows your candidates to send you messages such as: 'Only needed if noone else needs' or 'Item B has higher priority'. You can disable this if you feel this slows the loot distribution down."] = "Marca la casilla si deseas que tus candidatos te env\195\173en notas. Las notas se mostrar\195\161n como un icono en tu interfaz de repartici\195\179n de bot\195\179n. Puedes leerlas pasando el rat\195\179n por encima del icono. Esto permite a tus candidatos enviarte mensajes tales como: 'Lo necesito s\195\179lo si nadie m\195\161s lo necesita' o 'El objeto B tiene mayor prioridad'. Puedes desactivar esto si crees que ralentizar\195\161 la distribuci\195\179n del bot\195\173n." -- Needs review
L["Check this to auto hide the Loot need/greed/pass selection interface when you are entering combat, it will restore automatically when you leave combat."] = "Marca la casilla para ocultar autom\195\161ticamente la interfaz de necesidad/codicia/pasar de selecci\195\179n del bot\195\173n cuando entres en combate, se restaurar\195\161 autom\195\161ticamente cuando abandones el combate." -- Needs review
L["Check this to auto hide the Master Looter/Monitor Interface when you are entering combat, it will restore automatically when you leave combat."] = "Marca la casilla para ocultar autom\195\161ticamente la interfaz de Monitor/Maestro Despojador cuando entres en combate, se restaurar\195\161 autom\195\161ticamente cuando salgas de combate." -- Needs review
L["Check this to auto hide the Master Looter/Monitor Interface when you are required to select need/greed/pass on loot."] = "Marca la casilla para ocultar autom\195\161ticamente la interfaz de Monitor/Maestro Despojador cuando se requiera seleccionar necesidad/codicia/pasar en el bot\195\173n." -- Needs review
L["Click and drag to move this window."] = "Haz clic y arrastra para mover esta ventana." -- Needs review
L["Click this to add a note to send to the master looter."] = "Haz clic para a\195\177adir una nota a enviar al maestro despojador." -- Needs review
L["Click to announce this item to all candidates"] = "Haz clic para anunciar este objeto a todos los candidatos" -- Needs review
L["Click to announce this item to all candidates and allow GP bid input"] = "Clic para anunciar este objeto a todos los candidatos y permitir la entrada de puja de GP" -- Needs review
L["Click to ask your loot council to vote for a player for the selected item"] = "Clic para preguntar a tu consejo de bot\195\173n para votar por un jugador por el objeto seleccionado" -- Needs review
L["Click to remove this item and all the candidate selections from your list."] = "Haz clic para quitar este objeto y todas las selecciones de los candidatos de tu lista." -- Needs review
L["Click to retrieve current equipment."] = "Haz clic para recuperar tu equipamiento actual." -- Needs review
L["Click to vote for this candidate"] = "Clic para votar por este candidato" -- Needs review
L["Close"] = "Cerrar" -- Needs review
L["Configure this selection button."] = "Configurar este bot\195\179n de selecci\195\179n." -- Needs review
L["Controls whether EPGPLootmaster is enabled or not."] = "Controla si EPGPLootmaster est\195\161 activado." -- Needs review
L["Could not add loot, master looter module not active"] = "No se pudo a\195\177adir el bot\195\179n, el m\195\179dulo de maestro despojador no est\195\161 activado" -- Needs review
L["Could not ask player if needed because %s is not cached"] = "No se pudo preguntar al jugador si lo necesitaba porque %s no est\195\161 en cach\195\177e" -- Needs review
L["could not display lootdropdown; loot not in table"] = "no se pudo mostrar el desplegable de bot\195\173n, el bot\195\173n no est\195\161 en la tabla" -- Needs review
L["Could not get itemcount for %s (no itemid found)"] = "No se pudo obtener la cuenta del objeto %s (no se encontr\195\179 el id del objeto)" -- Needs review
L["Could not redistribute %s because quantity != 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "No se pudo distribuir %s porque la cantidad != 1 (%s). Por favor enc\195\161rgate manualmente. Crea un ticket en curseforge si esto ocurre frecuentemente." -- Needs review
L["Could not redistribute %s because total quantity < 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "No se pudo distribuir %s porque la cantidad < 1 (%s). Por favor enc\195\161rgate manualmente. Crea un ticket en curseforge si esto ocurre frecuentemente." -- Needs review
L["Could not register loot"] = "No se pudo registrar el bot\195\173n" -- Needs review
L["Could not send command, no target specified"] = "No se pudo enviar el comando, no se especific\195\179 el objetivo" -- Needs review
L["Could not send %s to %s, candidate not found (offline, left group?)"] = "No se pudo enviar %s a %s, no se encontr\195\179 el candidato (desconectado, \194\191abandon\195\179 el grupo?)" -- Needs review
L["Could not send %s to %s, loot not found in cache"] = "No se pudo enviar %s a %s, bot\195\173n no encontrado en cach\195\169" -- Needs review
L["Could not send %s to %s, lootslotID not found (already looted or lootwindow closed?) "] = "No se pudo enviar %s a %s, lootslotID no encontrado (\194\191Ha ya recogido el bot\195\173n o cerrado la ventana de bot\195\173n?)" -- Needs review
L["default GP:"] = "GP predeterminado:"
L["Disallow voting for self"] = "No permitir votarse a uno mismo." -- Needs review
L["Discard loot"] = "Descartar bot\195\173n" -- Needs review
L["disenchanted"] = "desencantar"
L["Doubleclick to fold/unfold this window."] = "Doble clic para plegar/desplegar esta ventana." -- Needs review
L["\
Empty: use normal GP value \
50%: use 50% of normal GP value \
25: all items are worth 25 GP"] = "Vac\195\173o: usa el valor de GP normal\
50%: usa el 50% del valor de GP normal\
25: todos los objetos cuestan 25 GP"
L["Enable the bidding system"] = "Activa el sistema de subasta" -- Needs review
L["Enable the voting system"] = "Activa el sistema de voo" -- Needs review
L["EPGP is an in game, relational loot distribution system. LootMaster helps you distribute loot to your raid and registers this loot in the EPGP system."] = "EPGP es un sistema de distribuci\195\179n relacional de bot\195\173n directamente en el juego. LootMaster te ayuda a distribuir el bot\195\173n a tu banda y registra este bot\195\173n en el sistema EPGP." -- Needs review
L["EPGPLootmaster has a nice system where even raid members who don't have EPGPLootmaster installed can need/greed/pass on items. This will be done by whispering and sending chat messages to the raid channel. Enable this option to filter all these messages from your chat."] = "EPGPLootmaster tiene un buen sistema en el c\195\186al incluso los miembros de banda que no tengan instalado EPGPLootmaster puede darle a necesidad/codicia/pasar en objetos. Esto se hace susurrando y enviando mensajes de chat al canal de banda. Activa esta opci\195\179n para filtrar todos esos mensajes de tu chat." -- Needs review
L["EPGPLootmaster Notice!\
\
|cFFFF8080WARNING:|r you have EPGPLootmaster installed but EPGP is not enabled. \
\
Please make sure you have EPGP installed and enabled. If you fail to do so, no GP will be awarded for looted items.\
\
All other features of EPGPLootmaster such as announcing and distributing loot will still function without EPGP."] = "\194\161Aviso EPGPLootmaster!\
\
|cFFFF8080ADVERTENCIA:|r tienes instalado EPGPLootmaster pero EPGP no est\195\161 activado.\
\
Aseg\195\186rate que tienes EPGP instalado y activado. Si no lo haces correctamente, no se otorgar\195\161n GP para los objetos del bot\195\173n.\
\
Todas las otras caracter\195\173sticas de EPGPLootmaster como anunciar y distribuir el bot\195\173n a\195\186n funcionar\195\161n sin EPGP." -- Needs review
L["- - - - EPGPLootmaster - - - -\
\
You are the loot master, would you like to use EPGPLootmaster to distribute loot?\
\
(You will be asked again next time. Use /lm config to change this behaviour)"] = "- - - - EPGPLootmaster - - - -\
\
Eres el maestro despojador, \194\191quieres utilizar EPGPLootmaster para distribuir el bot\195\173n?\
\
(Se te volver\195\161 a preguntar la pr\195\179xima vez. Usa /lm config para cambiar este comportamiento)"
L["<ERROR> Could not increase GP in officernotes for %s %s (EPGP not installed or no rights?!)"] = "<ERROR> No se pudo incrementar GP en las notas de oficial por %s %s (\194\191EPGP no instalado o incorrecto?!) " -- Needs review
L["Error while parsing message '%s' from %s: %s"] = "Error mientras se procesaba el mensaje '%s' de %s: %s" -- Needs review
L["Extra functions"] = "Funciones extra" -- Needs review
L["fallback:"] = "Caso de error:" -- Needs review
L["Fill this field to override the GP value when players select this button. This only adds an entry to the master looter distribution popup, so the master looter always has the final choice."] = "Rellena este campo para sobreescribir el valor de GP cuando los jugadores seleccionen este bot\195\179n. Esto s\195\179lo a\195\177ade una entrada a la ventana emergente de distribuci\195\179n del maestro despojador, por lo que el maestro despojador siempre tiene la \195\186ltima palabra." -- Needs review
L["Filter chat announces and whispers."] = "Filtrar los anuncios de chat y susurros." -- Needs review
L["General config"] = "Configuraci\195\179n general" -- Needs review
L["Give loot and award %s GP"] = "Dar bot\195\173n y otorgar %s GP" -- Needs review
L["Give loot and award %s GP (100%%)"] = "Dar bot\195\173n y otorgar %s GP (100%%)" -- Needs review
L["Give loot and award %s GP Bid"] = "Dar bot\195\173n y recompensar la puja GP a %s" -- Needs review
L["Give loot and award %s GP for %s (%s)"] = "Dar bot\195\173n y otorgar %s GP por %s (%s)" -- Needs review
L["Give loot for bank"] = "Dar bot\195\173n al banco" -- Needs review
L["Give loot for disenchantment"] = "Dar bot\195\173n para desencantamiento" -- Needs review
L["Give loot for free"] = "Dar bot\195\173n gratis" -- Needs review
L["GP value:"] = "Valor de GP:" -- Needs review
L["GP value override"] = "Sobreescribir valor de GP" -- Needs review
L["Greed"] = "Codicia" -- Needs review
L["Greed / Alt"] = "Codicia / Alt" -- Needs review
L["Guild"] = "Hermandad" -- Needs review
L["Hide loot selection window when entering combat."] = "Ocultar ventana de selecci\195\179n del bot\195\173n cuando se entre en combate." -- Needs review
L["Hide monitor window when entering combat."] = "Ocultar ventana de monitor cuando se entre en combate." -- Needs review
L["Hide monitor window when loot selection opens."] = "Ocultar ventana de monitor cuando comience la selecci\195\179n del bot\195\173n." -- Needs review
L["Hiding lootmaster window, reopen with /lm show"] = "Ocultando ventana de maestro despojador, re\195\161brela con /lm show" -- Needs review
L["If you have people in your raid who are using old clients, you can use this to specify where their selection should go in your button setup. You may use each value only once."] = "Si tienes gente en tu banda que usan clientes antiguos, puedes usar esto para especificar donde su selecci\195\179n deber\195\173a ir en la configuraci\195\179n de botones. S\195\179lo puedes usar cada valor una vez." -- Needs review
L["If you set this to Mainspec, for example, old clients that select mainspec on their popups will have their selection go in this selection button category."] = "Si estableces esto a especializaci\195\179n principal, por ejemplo, los clientes antiguos que seleccionen especializaci\195\179n principal en sus ventanas emergentes har\195\161 que su selecci\195\179n vaya en esta categor\195\173a de seleccion de bot\195\179n." -- Needs review
L["ilevel: %s, GP: %s"] = "Nivel de objeto: %s, GP: %s" -- Needs review
L["ilevel: %s, GP: %s%s%s"] = "Nivel de objeto: %s, GP: %s%s%s" -- Needs review
L["iLvl"] = true -- Needs review
L["- inspect -"] = "- inspeccionar -"
L["Instances:"] = "Instancias:" -- Needs review
L[" (Invalid link)"] = " (Enlace no v\195\161lido)"
L["Invite selected"] = "Invitaci\195\179n seleccionada" -- Needs review
L["It is just a simple random roll to decide who gets the loot"] = "Es s\195\179lo una tirada de dados aleatoria para decidir quien obtiene el bot\195\173n" -- Needs review
L["Listen for incoming monitor updates"] = "Escuchar actualizaciones del monitor entrantes" -- Needs review
L["Looted"] = "Recogido el bot\195\173n" -- Needs review
L["looter: %s"] = "despojador: %s" -- Needs review
L[" (Loot not registered in CT_RaidTracker; please set it manually)"] = " (Bot\195\173n no registrado en CT_RaidTracker; por favor, establ\195\169celo manualmente)"
L[" (Loot registered in CT_RaidTracker)"] = " (Bot\195\173n registrado en CT_RaidTracker)"
L[" (Loot registered in HeadCount)"] = " (Bot\195\173n registrado en HeadCount)"
L["Loot selection timeout"] = "Tiempo de espera m\195\161ximo para selecci\195\179n del bot\195\173n" -- Needs review
L["Mainspec"] = "Especializaci\195\179n principal" -- Needs review
L["Mainspec / Need"] = "Especializaci\195\179n principal / Necesidad" -- Needs review
L["Making selection, please wait..."] = "Haciendo selecci\195\179n, por favor espere..." -- Needs review
L["Manual, disable bidding when auto announcing"] = "Manual, deshabilitar la puja cuando se auto anuncie" -- Needs review
L["Manually sets the response of this candidate to "] = "Establece la respuesta de este candidato manualmente a" -- Needs review
L["Manually sets the response of this candidate to pass. Please note that the candidate will receive a notice about this in whisper."] = "Establece la respuesta de este candidato manualmente a pasar. Por favor tenga en cuenta que el candidato recibir\195\161 un aviso sobre esto en un susurro" -- Needs review
L["Mask monitors while selecting"] = "Enmarcarar monitores mientras se selecciona" -- Needs review
L["Master Looter Module not enabled"] = "M\195\179dulo de Maestro Despojador no activo"
L["Minor Upgrade"] = "Mejora menor"
L["Monitoring"] = "Monitorizando" -- Needs review
L["** MONITORING ** Only %s may distribute this item **"] = "** MONITORIZANDO ** Solo %s puede distribuir este objeto **" -- Needs review
L["** MONITOR ONLY **"] = "** S\195\147LO MONITORIZACI\195\147N **"
L["Monitor text color"] = "Color del texto del monitor" -- Needs review
L["My note: %s"] = "Mi nota: %s"
L["Name of the default candidate (case sensitive):"] = "Nombre del candidato predeterminado (sensible a may\195\186sculas):"
L["Never auto announce"] = "Nunca auto anunciar"
L["Never use EPGPLootmaster to distribute loot"] = "Nunca usar EPGPLootmaster para distribuir el bot\195\173n"
L["No fallback"] = "Sin seguro" -- Needs review
L["no loot selected"] = "no se ha seleccionado bot\195\173n" -- Needs review
L["Noone has voted for %s"] = "Nadie ha votado por %s" -- Needs review
L["No response; not installed?"] = "No hay respuesta; \194\191no instalado?"
L["Normally candidates can send multiple whispers per loot to change their selection. For example they first selected need but then decided to change to greed and give more priority to someone else. If you enable this option only the first response will be counted."] = "Normalmente los candidatos puedes enviar m\195\186ltiples susurros por bot\195\173n para cambiar su selecci\195\179n. Por ejemplo si seleccionaron al principio necesidad pero despu\195\169s decidieron cambiar a codicia para dar prioridad a alg\195\186n otro. Activa esta opcion si s\195\179lo la primera respuesta es la que cuenta." -- Needs review
L["Not auto announcing (alt+click detected)"] = "No anunciar autom\195\161ticamente (alt+clic detectado)" -- Needs review
L["Not auto looting (alt+click detected)"] = "No recoger el bot\195\173n autom\195\161ticamente (alt+clic detectado)" -- Needs review
L["Note"] = "Nota" -- Needs review
L["Note added by "] = "Nota a\195\177adida por" -- Needs review
L["No time left"] = "Sin tiempo restante" -- Needs review
L["No timeout"] = "Sin tiempo de espera m\195\161ximo" -- Needs review
L["Not saved, available"] = "No se ha guardado, disponible" -- Needs review
L["Not yet announced to candidate"] = "No se ha anunciado a\195\186n al candidato" -- Needs review
L["Offline or lootmaster not installed?"] = "\194\191Desconectado o lootmaster no instalado?" -- Needs review
L["Offspec"] = "Especializaci\195\179n secundaria" -- Needs review
L["Offspec / Greed"] = "Especializaci\195\179n secundaria / Codicia" -- Needs review
L["Old client fallback compatibility"] = "Compatibilidad con el cliente antiguo" -- Needs review
L["Only accept first candidate response for each item."] = "Solo aceptar la primera respuesta del candidato para cada objeto." -- Needs review
L["Only BoE and BoU items will be filtered. BoP items will always send a monitor message."] = "Solo los objetos que se ligan al equipar y al usarse ser\195\161n filtrados. Los objetos que se ligan al recogerse siempre enviar\195\161n un mensaje de monitorizaci\195\179n." -- Needs review
L["Only listen for monitor messages from the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = "Solo escuchar mensajes de monitorizaci\195\179n de la banda para objetos que al menos cumplan esta calidad. (Por favor ten en cuenta que las recetas, etc, tambi\195\169n se incluyen)" -- Needs review
L["Only receive for equal or higher than"] = "Solo recibir si es igual o mayor que" -- Needs review
L["Only send for equal or higher than"] = "Solo enviar si es igual o mayor que" -- Needs review
L["Only send monitor messages to the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = "Solo enviar mensajes de monitorizaci\195\179n a la banda para objetos que al menos cumplan esta calidad. (Por favor ten en cuenta que las recetas, etc, tambi\195\169n se incluyen)" -- Needs review
L["Only send to promoted players in raid"] = "Solo enviar a jugador ascendidos en banda" -- Needs review
L["Only send to specific guildranks"] = "Solo enviar a rangos de hermandad espec\195\173ficos" -- Needs review
L["Only send to the following guildranks:"] = "Solo enviar a los siguientes rangos de hermandad:" -- Needs review
L["Opens up a testing popup and monitor window, so you can see what this will look like on your clients. After you're done testing just click the discard loot button to close the monitor window."] = "Abre la ventana emergente de comprobaci\195\179n y monitorizaci\195\179n para que puedas observar como se ver\195\161 en tus clientes. Despu\195\169s de que hayas acabado la comprobaci\195\179n, haz clic en el bot\195\179n de descartar bot\195\173n para cerrar la ventana de monitorizaci\195\179n." -- Needs review
L["Opens up the version checker frame."] = "Abre el marco de comprobaci\195\179n de versi\195\179n." -- Needs review
L["Open test popup and monitor windows"] = "Abrir las ventanas emergentes de comprobaci\195\179n y monitorizaci\195\179n" -- Needs review
L[" or %s"] = " o %s"
L["Pass"] = "Pasar" -- Needs review
L["Pass; Enchanter (%s)"] = "Pasar; Encantador (%s)" -- Needs review
L["Play audio warning on loot selection popup."] = "Reproduce un sonido de advertencia en la ventana emergente de selecci\195\179n de bot\195\173n." -- Needs review
L["Please click this button to vote for %s for the selected item"] = "Por favor haz clic en este bot\195\179n para votar por %s para el objeto seleccionado" -- Needs review
L["Please enable the lootmaster ML module."] = "Por favor active el m\195\179dulo lootmaster ML." -- Needs review
L["Please enter the name of the default candidate to receive the BoE and BoU items here."] = "Por favor introduce aqu\195\173 el nombre del candidato por defecto a recibir los objetos que se ligar al equipar y al usarse." -- Needs review
L[". Please note that the candidate will receive a notice about this in whisper."] = "Tenga en cuenta que el candidato recibir\195\161 un aviso sobre esto en un susurro." -- Needs review
L["Raidinfo Check"] = "Comprobaci\195\179n de la informaci\195\179n de banda" -- Needs review
L["Raid lock expired, available"] = "Bloqueo de banda expirado, disponible" -- Needs review
L["Raid/Party"] = "Banda/Grupo" -- Needs review
L["Random roll"] = "Tirada de dados aleatoria" -- Needs review
L["Rank"] = "Rango" -- Needs review
L["(Re)announce loot to candidate"] = "(Re)anunciar bot\195\173n al candidato" -- Needs review
L["Registered bid %d, %s for %s"] = "Puja registrada %d, %s para %s" -- Needs review
L["Registered %s for %s"] = "Registrado %s para %s" -- Needs review
L["Reopens the loot selection popup at the candidate, this offers the candidate to vote for the loot after a crash or disconnect."] = "Reabre la ventana emergente de selecci\195\179n de bot\195\173n al candidato, esto ofrece al candidato la posibilidad de votar por el bot\195\173n despu\195\169s de un fallo o desconexi\195\179n." -- Needs review
L["Request version for: "] = "Solicitar versi\195\179n para:" -- Needs review
L["Request votes"] = "Solicitar votos" -- Needs review
L["Response"] = "Respuesta" -- Needs review
L["Roll"] = "Tirada de dados" -- Needs review
L["Save"] = "Guardar" -- Needs review
L["Saved to %d, but not yet locked"] = "Guardado a %d, pero no a\195\186n bloqueado" -- Needs review
L["Saved to %d, locked"] = "Guardado a %d, bloqueado" -- Needs review
L["Saved to your instance"] = "Guardado a tu instancia" -- Needs review
L["--==[    SELECT AN INSTANCE    ]==--        "] = "\009--==[    SELECCIONA UNA INSTANCIA   ]==--     " -- Needs review
L["Selected (temporarely hidden)"] = "Seleccionado (temporalmente oculto)" -- Needs review
L["Selection buttons"] = "Botones de selecci\195\179n" -- Needs review
L["Send a message to the selected candidate."] = "Enviar un mensaje al candidato seleccionado." -- Needs review
L["Send and receive monitor messages from the master looter and see what other raidmembers selected."] = "Env\195\173a y recibe mensajes de monitorizaci\195\179n del maestro despojador y observa que han seleccionado otros miembros de la banda." -- Needs review
L["[send installation info]"] = "[enviar informaci\195\179n de instalaci\195\179n]" -- Needs review
L["Send outgoing monitor updates"] = "Enviar actualizaci\195\179n salientes de monitorizaci\195\179n" -- Needs review
L["Serious error in class bitdecoder, bits %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Error serio en la clase de descodificaci\195\179n de bits, bits %s no encontrados. Por favor aseg\195\186rese que tiene la \195\186ltima versi\195\179n instalada e informe si el problema persiste." -- Needs review
L["Serious error in class bitencoder, class %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Error serio en la clase de descodificaci\195\179n de bits, clase %s no encontrada. Por favor aseg\195\186rese que tiene la \195\186ltima versi\195\179n instalada e informe si el problema persiste." -- Needs review
L["Set response manually"] = "Establece la respuesta manualmente" -- Needs review
L["Sets automatic loot announcement threshold, any loot that is of equal or higher quality will get auto announced to the raid members."] = "Establece el rango de calidad del anuncio del bot\195\173n autom\195\161tico, cualquier bot\195\173n que sea de igual o mayor calidad ser\195\161 autom\195\161ticamente anunciado a los miembros de banda." -- Needs review
L["Sets automatic looting threshold, any BoE and BoU loot that is of lower or equal quality will get auto sent to the candidate below."] = "Establece el rango de calidad para el bot\195\173n autom\195\161tico, cualquier objeto que se liga al equiparse o usarse que sea de menor calidad o igual ser\195\161 autom\195\161ticamente enviado al candidato de abajo." -- Needs review
L["Sets the amount of time a loot candidate has to select wether they want the loot or not."] = "Establece la cantidad de tiempo que dispone un candidato al bot\195\173n para seleccionar si lo quiere o no." -- Needs review
L["%s is offline, out of range or not grouped, unable to inspect."] = "%s est\195\161 desconectado, fuera de rango o no est\195\161 en el grupo, no se pudo inspeccionar."
L["%s not found on the loot list, perhaps it has already been looted?"] = "%s no se encontr\195\179 en la lista del bot\195\173n, \194\191tal vez ya ha sido despojado?"
L["\"%s\" not understood. usage:"] = "\"%s\" no reconocido. Uso:"
L["Some extra functions that might come in handy."] = "Algunas funciones adicionales que podr\195\173an ser \195\186tiles." -- Needs review
L["Specify how many buttons you want to show on your clients. You will need to configure 1 button minimal and be aware that the pass button will always be included."] = "Especifique cuantos botones quiere mostrar a sus clientes. Necesitar\195\161s configurar al menos un bot\195\179n y ten en cuenta que el bot\195\179n para pasar ser\195\161 siempre incluido." -- Needs review
L["%splease whisper me !epgp need/greed/pass %s [GP bid]  (or use the popup if you have EPGPLootmaster installed)"] = "%s por favor sus\195\186rrame !epgp need/greed/pass %s [puja de GP]  (o usa la ventana emergente si tienes el EPGPLootmaster instalado)" -- Needs review
L["%splease whisper me !epgp need/greed/pass %s  (or use the popup if you have EPGPLootmaster installed)"] = "%spor favor, sus\195\186rrame !epgp need/greed/pass %s  (o usa la ventana de selecci\195\179n si tienes EPGPLootmaster instalado)"
L["%s received %s for bank%4$s."] = "%s recibi\195\179 %s para el banco%4$s."
L["%s received %s for disenchantment%4$s."] = "%s recibi\195\179 %s para desencantar%4$s."
L["%s received %s for %s GP%s."] = "%s recibi\195\179 %s por %s GP%s."
L["%s received %s for unknown reason%4$s."] = "%s recibi\195\179 %s por motivo desconocido%4$s."
L["%s rolled %s."] = "%s tir\195\179 %s."
L["%s secs until pass"] = "%s seg para pasar"
L["%s sent \"%s %s\"; not understood, returned usage list."] = "%s envi\195\179 \"%s %s\"; no se ha entendido, se volvi\195\179 a la lista de uso."
L[" text:"] = "texto:"
L["The bidding system is a variation of the EPGP system where loot candidates are allowed to bid a custom GP value per item. The highest GP bid wins the loot."] = "El sistema de subasta es una variaci\195\179n del sistema EPGP en donde a los candidatos al bot\195\173n se les permite pujar un valor de GP personalizado por objeto. La puja mayor de GP gana el bot\195\173n." -- Needs review
L["The EPGP Lootmaster auto announcer allows you to auto announce specific loot to the raid."] = "El auto anunciador de EPGP Lootmaster le permite anunciar autom\195\161ticamente bot\195\173n espec\195\173fico a la banda." -- Needs review
L["The EPGP Lootmaster auto looter allows you to send specific BoU and BoE items to a predefined candidate without asking questions."] = "El auto despojador de EPGP Lootmaster le permite enviar objetos espec\195\173ficos ligados al equiparse o usarse a un candidato predefinido sin preguntar." -- Needs review
L["The EPGP Lootmaster Monitor allows you to send messages to other users in your raid. It will show them the same interface as the ML, allowing them to help with the loot distribution."] = "La ventana de monitorizaci\195\179n de EPGP Lootmaster le permite enviar mensajes a otros usuarios de su banda. Esto le mostrar\195\161 a ellos la misma interfaz que el maestro despojador, permitiendoles ayudar con la distribuci\195\179n del bot\195\173n." -- Needs review
L["The following players have voted for %s:"] = "Los siguientes jugadores han votado por %s:" -- Needs review
L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master can request a vote per item at any time by a simple press of a button."] = "El sistema de votado permite al maestro despojador solicitar ayuda cuando se hace una decisi\195\179n. Aunque esto no es algo que se aliente por el sistema EPGP, retrasar\195\161 el proceso de votaci\195\179n por un poco, pero dotar\195\161 a la hermandad de mucha mas flexibilidad. El maestro puede solicitar un voto por objeto en cualquier momento simplemente picando un bot\195\179n." -- Needs review
L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master looter can request a vote per item at any time by a simple press of a button."] = "El sistema de votado permite al maestro despojador solicitar ayuda cuando se hace una decisi\195\179n. Aunque esto no es algo que se aliente por el sistema EPGP, retrasar\195\161 el proceso de votaci\195\179n por un poco, pero dotar\195\161 a la hermandad de mucha mas flexibilidad. El maestro despojador puede solicitar un voto por objeto en cualquier momento simplemente picando un bot\195\179n." -- Needs review
L["The voting system has been disabled or no votes have been requested. You can enable the voting system from the configuration panel and you can request votes by pressing the [Request Votes] button if you are the master looter"] = "El sistema de voto ha sido deshabilitado o bien no se han registrado votos. Puedes activar el sistema de voto desde el panel de configuraci\195\179n y puedes solicitar votos haciendo clic en el bot\195\179n [Solicitar votos] si eres el maestro despojador" -- Needs review
L["This allows you to configure the selection buttons on the user interfaces of your raiders. Please note that client selections will be sorted the same as the buttons are sorted below. You will need to add one button minimal and the pass button will always be visible."] = "Esto le permite configurar los botones de seleccion en las interfaces de usuario de tus miembros de banda. Por favor tenga en cuenta que las selecciones de los clientes ser\195\161n ordenadas como est\195\161n ordenados los botones de abajo. Necesitar\195\161 agregar al menos un bot\195\179n teniendo en cuenta que el bot\195\179n para pasar ser\195\161 siempre visible." -- Needs review
L["This allows you to control the automatic hiding features of EPGPLootmaster."] = "Esto le permite controlar las caracter\195\173sticas de ocultado autom\195\161tico de EPGPLootmaster." -- Needs review
L["This field specifies the color of the selection text in the monitor windows."] = "Este campo especifica el color del texto de selecci\195\179n en las ventanas de monitorizaci\195\179n." -- Needs review
L["This field specifies the text on the button, this will be shown on the selection popups and monitor windows."] = "Este campo especifica el texto del bot\195\179n, esto ser\195\161 mostrado en los ventanas emergentes de selecci\195\179n y las ventanas de monitorizaci\195\179n." -- Needs review
L["This is a raid-wide configuration. This will hide the responses from players on monitors while the monitoring player is still making his selection for a specific item. This will prevent players from making selections based on other peoples responses. This prevents 'cheating' and speeds up the selection process because people will stop waiting for eachother"] = "Esta es una configuraci\195\179n para toda la banda que ocultar\195\161 las respuestas de los jugadores en los monitores mientras el jugador monitorizado est\195\161 a\195\186n realizando la selecci\195\179n para un objeto espec\195\173fico. Esto prevendr\195\161 que los jugadores hagan selecciones basadas en las respuesta de otra gente. Esto previene 'hacer trampas' y agiliza el proceso de selecci\195\179n porque la gente no se esperar\195\161 entre s\195\173. " -- Needs review
L["This value is only needed when two candidates have the same PR."] = "Solo se necesita este valor cuando dos candidatos tienen el mismo PR." -- Needs review
L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."] = "Esto es ralentiza algo porque los mensajes de monitorizaci\195\179n ser\195\161n enviados uno a uno a los jugador. Deja esto deshabilitado si quieres que todo el mundo pueda ver el monitor. Deshabilitando esta opci\195\179n hace que los monitores respondan m\195\161s r\195\161pido." -- Needs review
L["This will disallow players from voting on themselves"] = "Esto denegar\195\161 que los jugadores se voten a s\195\173 mismos." -- Needs review
L["This will emulate the \"Player receives [item].\" locally. Usually used to \"fix\" the portal problem in naxx."] = "Esto emular\195\161 el \"Jugador recibe [objeto]\". localmente. Usualmente utilizado para \"arreglar\" los problemas de portal en naxx." -- Needs review
L["This will open the selecton screen on their client."] = "Esto abrir\195\161 la pantalla de selecci\195\179n en su cliente." -- Needs review
L["This will play an audible warning when the loot selection popup is opened and requires your input."] = "Esto reproducir\195\161 una advertencia audible cuando la ventana emergente de selecci\195\179n de bot\195\173n se abre y requiere su gesti\195\179n." -- Needs review
L[" (Unable to register in CT_RaidTracker; no raid started)"] = "(No se pudo registrar en CT_RaidTracker, ninguna banda iniciada)" -- Needs review
L[" (Unable to register in HeadCount; item found, candidate wrong)"] = "(No se pudo registrar en HeadCount; objeto encontrado, candidato err\195\179neo)" -- Needs review
L[" (Unable to register in HeadCount; itemID not found)"] = " (No se pudo registrar en HeadCount; ID de objeto no encontrado)"
L[" (Unable to register in HeadCount; last item not found)"] = "(No se pudo registrar en HeadCount; \195\186ltimo objeto no encontrado)" -- Needs review
L[" (Unable to register in HeadCount; no active raid)"] = " (No se pudo registrar en HeadCount; no hay banda activa)"
L[" (Unable to register in HeadCount; no lootlist available)"] = " (No se pudo registrar en HeadCount; lista de bot\195\173n no disponible)"
L[" (Unable to register in HeadCount; no raidTracker)"] = "(No se pudo registrar en HeadCount; raidTracker no encontrado)"
L["Unable to register loot."] = "No se pudo registrar el bot\195\173n." -- Needs review
L["Unable to unlocalize %s"] = "No se pudo traducir a la inversa %s" -- Needs review
L["unknown"] = "desconocido"
L["Unknown"] = "Desconocido" -- Needs review
L["usage"] = "\
Este m\195\179dulo proporciona un completo sistema de distribuci\195\179n de bot\195\173n para EPGP.\
USO: Crea un grupo/banda y establece un maestro despojador. Al despojar un bot\195\173n, haz clic derecho en el objeto y la IU se abrir\195\161.\
Herramientas de l\195\173nea de comandos:\
/lm version: Muestra el comprobador de versi\195\179n\
/lm config: Muestra la ventana de opciones\
/lm reset: Reinicia la ubicaci\195\179n y escala de las ventanas\
/lm hide: Oculta la IU del maestro despojador manualmente\
/lm show: Muestra la IU del maestro despojador manualmente\
/lm toggle: Conmuta manualmente entre mostrar y ocultar la IU del maestro despojador\
/lm add [enlace de objeto]: A\195\177ade manualmente un objeto a la IU del maestro despojador\
/lm announce [enlace de objeto]: A\195\177ade un objeto manualmente y lo anuncia a tu grupo" -- Needs review
L["Usage: "] = "Uso:" -- Needs review
L["Usage: /lm emulate player [itemlink]"] = "Uso: /lm emulate player [enlace de bot\195\173n]" -- Needs review
L["Usage: /lm %s [lootlink]"] = "Uso: /lm %s [enlace de bot\195\173n]" -- Needs review
L["Use EPGPLootmaster"] = "Utiliza EPGPLootmaster" -- Needs review
L["Use this when you don't want to loot this item and close the lootmaster window."] = "Utiliza esto cuando no quieras despojar este objeto y cierra la ventana de lootmaster." -- Needs review
L["Verbose debugging disabled"] = "Depuraci\195\179n completa deshabilitada" -- Needs review
L["Verbose debugging enabled"] = "Depuraci\195\179n completa habilitada" -- Needs review
L["Version Checker"] = "Comprobador de versi\195\179n" -- Needs review
L["Vote"] = "Votar" -- Needs review
L["Votes"] = "Votos" -- Needs review
L["Voting system"] = "Sistema de voto" -- Needs review
L["When should bidding be available to player?"] = "\194\191Cuando deber\195\173a estar disponible la subasta al jugador?" -- Needs review
L["Whisper"] = "Susurro" -- Needs review
L["Whisper selected"] = "Susurro seleccionado" -- Needs review
L["You are not a candidate for %s. Perhaps you were not involved in the fight?"] = "No eres un candidato para %s. \194\191Quiz\195\161s no estuviste en la batalla?" -- Needs review
L["you are the loot master, loot tracking enabled"] = "eres el maestro despojador, seguimiento del bot\195\173n activado"
L["you are the loot master, tracking disabled manually (configuration: /lm config)"] = "eres el maestro despojador, seguimiento desactivado manualmente (configuraci\195\179n: /lm config)"
L["You can use upto 18 characters (^ ; * excluded)"] = "Puedes utilizar hasta 18 caracteres (^ : * excluidos)" -- Needs review
L["You have added this loot manually to the list, you will need to handle the loot manually and discard the loot from the list when you're done distributing it."] = "Has agregado este bot\195\173n manualmente a la lista, necesitar\195\161s gestionar el bot\195\173n manualmente y descartar el bot\195\173n de la lista cuando hayas acabado de distribuirlo." -- Needs review
L["You have already made a selection for %s. Corrections have been disabled by the master looter."] = "Ya has hecho la selecci\195\179n para %s. Las correcciones han sido deshabilitadas por el maestro despojador." -- Needs review
L["You have disabled loot tracking for this raid"] = "Has deshabilitado el seguimiento del bot\195\173n para esta banda" -- Needs review
L["You have enabled loot tracking for this raid"] = "Has habilitado el seguimiento del bot\195\173n para esta banda" -- Needs review
L["Your GP Bid:"] = "Tu puja de GP:" -- Needs review
L["Your selection for %s has been manually set to %s."] = "Tu selecci\195\179n para %s ha sido manualmente establecida a %s." -- Needs review
L["You've entered combat, hiding interface."] = "Has entrado en combato, ocultando interfaz." -- Needs review
