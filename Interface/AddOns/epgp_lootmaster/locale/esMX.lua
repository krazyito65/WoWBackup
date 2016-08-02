-- EPGPLootmaster Locale
-- Please use the Localization App on Curseforge to Update this
-- http://wow.curseforge.com/addons/epgp_lootmaster/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("EPGPLootmaster", "esMX")
if not L then return end

L["Add note"] = "A\195\177adir nota." -- Needs review
L["Allow candidates to add notes to each item."] = "Permitir al candidato a\195\177adir notas para cada \195\173tem." -- Needs review
L["Allows you to manually set the response for a given candidate"] = "Te permite poner manualmente la respuesta para un candidato dado." -- Needs review
-- L["Always enable bidding"] = ""
--[=[ L["Always: the bidding inputs will always be available when using the auto announcing features.\
\
Manual: Disable the bidding system by default and allow me to select per item (you should disable auto announce). Bidding system will be disabled when you're using the auto announcing system. You can by-pass the auto announcing system per item by alt+clicking an item on the native loot window."] = "" ]=]
L["Always use EPGPLootmaster to distribute loot, without asking"] = "Siempre use EPGPLootmaster para distribuir el bot\195\173n, sin preguntar" -- Needs review
L["Amount of buttons to display:"] = "Cantidad de botones para mostrar:" -- Needs review
L["Announce loot"] = "Anunciar bot\195\173n" -- Needs review
-- L["Announce loot & request bids"] = ""
L["Ask me every time I become loot master"] = "Preguntarme cada vez que me haga maestro despojador" -- Needs review
L["Attempts to send the loot to the candidate and awards %s GP to the candidate"] = "Intentos de mandar el bot\195\173n al candidato y premia %s GP al candidato" -- Needs review
L["Attempts to send the loot to the candidate and awards %s GP to the candidate for %s"] = "Intentos de mandar el bot\195\173n al candidato y premia %s GP al candidato por %s" -- Needs review
L["Attempts to send the loot to the candidate and doesn't award GP to the candidate, thus giving it for free."] = "Intentos de mandar el bot\195\173n al candidato y no da GP al candidato, lo que lo otorga de forma gratuita." -- Needs review
L["Attempts to send the loot to the candidate for disenchantment."] = "Intenta mandar el bot\195\173n al candidato para desencantarlo." -- Needs review
L["Attempts to send the loot to the candidate for storage in bank."] = "Intenta mandar el bot\195\173n al candidato para guardarlo en el banco." -- Needs review
L["Auto announcement"] = "Anunciar autom\195\161ticamente" -- Needs review
L["Auto announcement threshold"] = "Umbral autom\195\161tico de aviso" -- Needs review
L["Auto hiding"] = "Esconder autom\195\161ticamente" -- Needs review
L["Auto looting"] = "Despojar autom\195\161ticamente " -- Needs review
L["Auto looting of items"] = "Despoje autom\195\161tico de los objetos" -- Needs review
L["Auto looting of %s to %s failed. Not a candidate for this loot."] = "Auto despojo de %s para %s ha fallado. No es un candidato para este bot\195\173n." -- Needs review
L["Auto looting %s to %s"] = "Auto despojo de %s para &s" -- Needs review
L["Auto loot threshold (BoE and BoU items only)"] = "Umbral de bot\195\173n autom\195\161tico (solamente objetos LaE y LaU)" -- Needs review
L["Auto message: please install EPGPLootmaster from curse.com:  http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx"] = "Mensaje autom\195\161tico: por favor instale EPGPLootmaster de curse.com: http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx" -- Needs review
L["Auto notice from %s: please update epgp_lootmaster from curse.com. If you fail to do so you might not get loot during raids."] = "Notificaci\195\179n autom\195\161tica de %s: por favor actualice epgp_lootmaster de curse.com. Si no lo haces, puede que no obtengas bot\195\173n durante las bandas." -- Needs review
L["Auto pass; Enchanter (%s)"] = "Pase autom\195\161tico; Encantador (%s)"
L["Autopassing %s (not eligible)"] = "Pasando autom\195\161ticamente %s (no elegible)"
L["Auto pass (not eligible)"] = "Pase autom\195\161tico (No elegible)" -- Needs review
-- L["bank"] = ""
-- L["Bid"] = ""
-- L["Bidding system"] = ""
L[", BoE"] = ", Ligado al Equiparse(LaE)"
L[", BoP"] = ", Ligado al Recoger(LaR)" -- Needs review
L[", BoU"] = ", Ligado al Utilizar(LaU)" -- Needs review
L["Button 1"] = "Bot\195\179n 1"
L["Button 2"] = "Bot\195\179n 2"
L["Button 3"] = "Bot\195\179n 3"
L["Button 4"] = "Bot\195\179n 4"
L["Button 5"] = "Bot\195\179n 5" -- Needs review
L["Button 6"] = "Bot\195\179n 6"
L["Button 7"] = "Bot\195\179n 7" -- Needs review
L["Button caption"] = "Captura de bot\195\179n"
L["Button text:"] = "Texto del bot\195\179n:" -- Needs review
L["Candidate"] = "Candidato" -- Needs review
L["Candidate did not respond on time."] = "El candidato no respondi\195\179 a tiempo." -- Needs review
L["Candidate's current equipment:"] = "Equipamiento actual del candidato:" -- Needs review
L["- Cannot distribute loot -"] = "- No se puede distribuir el bot\195\173n -" -- Needs review
L["\
\
|cFFFF8080WARNING: Alot of settings have been hidden because the EPGPLootmaster 'ML' module has been disabled. Please enabled it from the addon configuration screen.|r"] = "|cFFFF8080WARNING: Algunas opciones de configuraci\195\179n se han ocultado debido a que el m\195\179dulo EPGPLootmaster 'ML' ha sido desactivado. Por favor act\195\173velo desde la pantalla de configuraci\195\179n de accesorios."
L["Change this to the GP value you wish to set for this item"] = "Cambia esto al valor de GP que deseas ponerle a este objeto" -- Needs review
L["Check if you want display incoming monitor updates. This function allows you to see the masterlooter interface so you can help in making decisions about the loot distribution."] = "Marca si quieres ver las actualizaciones entrantes del monitor. Esta funci\195\179n te permite ver la interfaz del maestro despojador para as\195\173 poder ayudar en la toma de decisiones sobre la distribuci\195\179n del bot\195\173n." -- Needs review
L["Check if you want send outgoing monitor messages. This functions allows other raidmembers to see the masterlooter interface so they can help in making decisions about the loot distribution. You will only send out messages if you are the master looter."] = "Marca si quieres mandar mensajes al monitor. Est\195\161 funci\195\179n le permites a los dem\195\161s miembros de la banda ver la interfaz del maestro despojador para que as\195\173 puedan ayudar en la toma de decisiones sobre la distribuci\195\179n del bot\195\173n. S\195\179lo enviaras mensajes si eres el maestro." -- Needs review
L["Checks whether players are locked to an instance."] = "Revisa si los jugadores ya est\195\161n grabados en una instancia." -- Needs review
L["Check this if you want your candidates to send notes to you. The notes will show up as an icon on your loot interface. You can read them by hovering the icon. This allows your candidates to send you messages such as: 'Only needed if noone else needs' or 'Item B has higher priority'. You can disable this if you feel this slows the loot distribution down."] = "Marca esto si quieres que los candidatos te envi\195\169n notas. Las notas se ver\195\161n como un \195\173cono en la interfaz de despoje. Puedes leerlas al flotar el cursor sobre este \195\173cono. Esto le permite a los candidatos mandarte mensajes tales como: \"S\195\179lo lo necesito si nadie m\195\161s lo va a hacer\" o \"El \195\173tem B tiene m\195\161s prioridad\". Puedes desactivar esto si piensas que retrasa la distribuci\195\179n del bot\195\173n." -- Needs review
L["Check this to auto hide the Loot need/greed/pass selection interface when you are entering combat, it will restore automatically when you leave combat."] = "Marca esto para que la interfaz de necesidad/avaricia/pasar se desaparezca cuando se entre en combate, reapareciendo automaticamente al terminarse el combate." -- Needs review
L["Check this to auto hide the Master Looter/Monitor Interface when you are entering combat, it will restore automatically when you leave combat."] = "Marca esto para auto esconder la interfaz de Maestro/Monitor cuando entres en combate, reaparecer\195\161 automaticamente en cuanto salgas de combate." -- Needs review
L["Check this to auto hide the Master Looter/Monitor Interface when you are required to select need/greed/pass on loot."] = "Marca esto para esconder automaticamente la interfaz de Maestro/Monitor cuando se te requiere necesitar/avaricia/pasar el bot\195\173n." -- Needs review
L["Click and drag to move this window."] = "Clickea y arrastra para mover esta vendana." -- Needs review
L["Click this to add a note to send to the master looter."] = "Clickea aqu\195\173 para a\195\177adir una nota para mandarle al maestro despojador." -- Needs review
L["Click to announce this item to all candidates"] = "Clickea para anunciar este \195\173tem a todos los candidatos." -- Needs review
-- L["Click to announce this item to all candidates and allow GP bid input"] = ""
-- L["Click to ask your loot council to vote for a player for the selected item"] = ""
L["Click to remove this item and all the candidate selections from your list."] = "Clickea para remover este \195\173tem y a todos las elecciones de los candidatos de tu lista." -- Needs review
L["Click to retrieve current equipment."] = "Clickea para ver el equipamiento actual." -- Needs review
-- L["Click to vote for this candidate"] = ""
L["Close"] = "Cerrar." -- Needs review
L["Configure this selection button."] = "Configura este bot\195\179n de selecci\195\179n." -- Needs review
L["Controls whether EPGPLootmaster is enabled or not."] = "Controla si EPGPLootmaster est\195\161 activado o no." -- Needs review
L["Could not add loot, master looter module not active"] = "No se pudo a\195\177adir el bot\195\173n, el m\195\179dulo de maestro despojador no est\195\161 activo." -- Needs review
L["Could not ask player if needed because %s is not cached"] = "No se le pudo preguntar al jugador si es necesitado porque %s no est\195\161 en cach\195\169." -- Needs review
-- L["could not display lootdropdown; loot not in table"] = ""
L["Could not get itemcount for %s (no itemid found)"] = "No se pudo encontrar " -- Needs review
L["Could not redistribute %s because quantity != 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "No se pudo distribuir %s debido a que la cantidad no es uno (%s). Por favor manejelo manualmente. Cree un ticket en curseforge si esto pasa com\195\186nmente." -- Needs review
L["Could not redistribute %s because total quantity < 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "No se pudo distribuir %s porque la cantidad es menor que 1 (%s). Por favor manejelo manualmente. Cree un ticket en curseforge si esto pasa com\195\186nmente." -- Needs review
L["Could not register loot"] = "No se pudo registrar el bot\195\173n." -- Needs review
L["Could not send command, no target specified"] = "No se pudo enviar el comando, no se ha especificado un objetivo." -- Needs review
L["Could not send %s to %s, candidate not found (offline, left group?)"] = "No se pudo enviar %s a %s. El candidato no fue encontrado (desconectado, dej\195\179 el grupo?)" -- Needs review
L["Could not send %s to %s, loot not found in cache"] = "No se pudo enviar %s a %s, el loot no se encontr\195\179 en el cach\195\169." -- Needs review
L["Could not send %s to %s, lootslotID not found (already looted or lootwindow closed?) "] = "No se pudo enviar %s a %s, lootslotID no fue encontrado (ya fue despojado o cerraste la ventana de despojo?)" -- Needs review
-- L["default GP:"] = ""
-- L["Disallow voting for self"] = ""
L["Discard loot"] = "Descartar bot\195\173n." -- Needs review
-- L["disenchanted"] = ""
L["Doubleclick to fold/unfold this window."] = "Doble click para minimizar/maximizar esta ventana." -- Needs review
L["\
Empty: use normal GP value \
50%: use 50% of normal GP value \
25: all items are worth 25 GP"] = "Vac\195\173o: use el valor GP normal\
50%: use el 50% del valor normal GP\
25: todos los objetos valen 25 GP" -- Needs review
-- L["Enable the bidding system"] = ""
-- L["Enable the voting system"] = ""
L["EPGP is an in game, relational loot distribution system. LootMaster helps you distribute loot to your raid and registers this loot in the EPGP system."] = "EPGP es un sistema de distribuci\195\179n de bot\195\173n dentro del juego. LootMaster te permite distribuir este bot\195\173n a tu raid y registra este bot\195\173n en el sistema EPGP." -- Needs review
L["EPGPLootmaster has a nice system where even raid members who don't have EPGPLootmaster installed can need/greed/pass on items. This will be done by whispering and sending chat messages to the raid channel. Enable this option to filter all these messages from your chat."] = "EPGPLootmaster tiene un bonito sistema d\195\179nde los miembros de la raid que no tengan EPGPLootmaster instalado pueden tambi\195\169n necesitar y pasar \195\173tems. Esto se hace susurrando y mandando mensajes al canal de raid. Habilita esta opci\195\179n para filtrar todos esos mensajes de tu chat." -- Needs review
L["EPGPLootmaster Notice!\
\
|cFFFF8080WARNING:|r you have EPGPLootmaster installed but EPGP is not enabled. \
\
Please make sure you have EPGP installed and enabled. If you fail to do so, no GP will be awarded for looted items.\
\
All other features of EPGPLootmaster such as announcing and distributing loot will still function without EPGP."] = "Noticia de EPGPLootmaster!\
\
 |cFFFF8080ADVERTENCIA:|r tienes EPGPLootmaster instalado, pero EPGP no est\195\161 activado.\
\
Por favor asegurate tener EPGP instalado y activado. Si no lo tienes, no se le asignar\195\161 GP a los items despojados. \
\
Todas las otras funciones de EPGPLootmaster tales como anunciar y distribuir el bot\195\173n a\195\186n funcionar\195\161n sin EPGP." -- Needs review
L["- - - - EPGPLootmaster - - - -\
\
You are the loot master, would you like to use EPGPLootmaster to distribute loot?\
\
(You will be asked again next time. Use /lm config to change this behaviour)"] = "---- EPGPLootmaster----\
\
Eres el maestro despojador, quieres utilizar EPGPLootmaster para distribuir los despojos?\
\
(Se te preguntar\195\161 de nuevo la proxima ves. Utiliza /lm config para cambiar este comportamiento)" -- Needs review
L["<ERROR> Could not increase GP in officernotes for %s %s (EPGP not installed or no rights?!)"] = "<ERROR> No se pudo aumentar el GP en las notas de oficial para %s %s (EPGP no est\195\161 instalado o no tienes derecho?!)" -- Needs review
L["Error while parsing message '%s' from %s: %s"] = "Error al parsear mensaje \"%s\" de %s: %s" -- Needs review
L["Extra functions"] = "Funciones extra" -- Needs review
-- L["fallback:"] = ""
L["Fill this field to override the GP value when players select this button. This only adds an entry to the master looter distribution popup, so the master looter always has the final choice."] = "Llena este campo para sobreescribir el valor de GP cuando los players seleccionen este bot\195\179n. Esto solo a\195\177ade una linea a la ventana de distribuci\195\179n de bot\195\173n del maestro, as\195\173 que el maestro despojador siempre tiene la palabra final." -- Needs review
L["Filter chat announces and whispers."] = "Filtrar los anuncios del chat y los susurros." -- Needs review
L["General config"] = "Configuraci\195\179n General" -- Needs review
L["Give loot and award %s GP"] = "Dar bot\195\173n y otorgar %s GP." -- Needs review
L["Give loot and award %s GP (100%%)"] = "Dar bot\195\173n y otorgar %s GP (100%%)" -- Needs review
-- L["Give loot and award %s GP Bid"] = ""
L["Give loot and award %s GP for %s (%s)"] = "Dar bot\195\173n y otorgar %s GP para %s (%s)" -- Needs review
L["Give loot for bank"] = "Dar bot\195\173n para banco." -- Needs review
L["Give loot for disenchantment"] = "Dar bot\195\173n para desencantar." -- Needs review
L["Give loot for free"] = "Dar bot\195\173n gratis." -- Needs review
L["GP value:"] = "Valor GP:" -- Needs review
L["GP value override"] = "Sobreescritura del valor GP" -- Needs review
L["Greed"] = "Avaricia." -- Needs review
L["Greed / Alt"] = "Avaricia/Alt" -- Needs review
L["Guild"] = "Hermandad" -- Needs review
L["Hide loot selection window when entering combat."] = "Esconder la ventana de selecci\195\179n de bot\195\173n cuando se entra en combate" -- Needs review
L["Hide monitor window when entering combat."] = "Esconder la ventana de monitor cuando se entra en combate" -- Needs review
L["Hide monitor window when loot selection opens."] = "Ocultar la ventana de monitor cuando se abra la seleccion de bot\195\173n" -- Needs review
L["Hiding lootmaster window, reopen with /lm show"] = "Ocultando la ventana del maestro despojador, use /lm show para volver a mostrarla" -- Needs review
L["If you have people in your raid who are using old clients, you can use this to specify where their selection should go in your button setup. You may use each value only once."] = "Si tienes a gente en tu bando que est\195\169 usando clientes antiguos, puedes usar esto para especificar donde debe ir su selecci\195\179n en tu configuraci\195\179n de botones. Puedes usar cada valor solo una vez." -- Needs review
L["If you set this to Mainspec, for example, old clients that select mainspec on their popups will have their selection go in this selection button category."] = "Si selecciones Mainspec, por ejemplo, los clientes antiguos que seleccionen mainspec en sus ventanas emergentes har\195\161n que su selecci\195\179n aparezca en esta categoria de botones." -- Needs review
-- L["ilevel: %s, GP: %s"] = ""
-- L["ilevel: %s, GP: %s%s%s"] = ""
-- L["iLvl"] = ""
L["- inspect -"] = "-Inspeccionar-" -- Needs review
L["Instances:"] = "Instancias:" -- Needs review
L[" (Invalid link)"] = "(Enlace no v\195\161lido)" -- Needs review
L["Invite selected"] = "Inivitar a los seleccionados" -- Needs review
L["It is just a simple random roll to decide who gets the loot"] = "Es un simple tiro al azar para decidir quien recibe el bot\195\173n." -- Needs review
L["Listen for incoming monitor updates"] = "Escuchar a actualizaciones entrantes de monitores." -- Needs review
L["Looted"] = "Despojado." -- Needs review
-- L["looter: %s"] = ""
L[" (Loot not registered in CT_RaidTracker; please set it manually)"] = "(Bot\195\173n no registrado en CT_RaidTracker; por favor p\195\179ngalo manualmente)"
L[" (Loot registered in CT_RaidTracker)"] = "(Bot\195\173n registrado en CT_RaidTracker)"
L[" (Loot registered in HeadCount)"] = "(Bot\195\173n registrado en HeadCount)"
-- L["Loot selection timeout"] = ""
-- L["Mainspec"] = ""
-- L["Mainspec / Need"] = ""
L["Making selection, please wait..."] = "Haciendo selecci\195\179n, por favor espere..." -- Needs review
-- L["Manual, disable bidding when auto announcing"] = ""
L["Manually sets the response of this candidate to "] = "Poner manualmente la respuesta de este candidato a" -- Needs review
L["Manually sets the response of this candidate to pass. Please note that the candidate will receive a notice about this in whisper."] = "Poner manualmente la respuesta de este candidato a pasar. Favor notar que el candidato va a recibir una noticia sobre esto en un susurro." -- Needs review
-- L["Mask monitors while selecting"] = ""
L["Master Looter Module not enabled"] = "Modulo del maestro despojador no est\195\161 activado" -- Needs review
L["Minor Upgrade"] = "Mejora menor" -- Needs review
L["Monitoring"] = "Monitoreando" -- Needs review
L["** MONITORING ** Only %s may distribute this item **"] = "**MONITOREANDO** Solo %s podr\195\161 distribuir este objeto**"
L["** MONITOR ONLY **"] = "**SOLO MONITOR**" -- Needs review
L["Monitor text color"] = "Color de texto del monitor." -- Needs review
L["My note: %s"] = "Mi nota: %s" -- Needs review
L["Name of the default candidate (case sensitive):"] = "Nombre del candidato por defecto (diferencia mayusculas):" -- Needs review
L["Never auto announce"] = "Nunca utilizar auto anuncio" -- Needs review
L["Never use EPGPLootmaster to distribute loot"] = "Nunca utilizar EPGPLootmaster para distribuir el bot\195\173n" -- Needs review
-- L["No fallback"] = ""
-- L["no loot selected"] = ""
-- L["Noone has voted for %s"] = ""
L["No response; not installed?"] = "No hay respues; no est\195\161 instalado?" -- Needs review
L["Normally candidates can send multiple whispers per loot to change their selection. For example they first selected need but then decided to change to greed and give more priority to someone else. If you enable this option only the first response will be counted."] = "Normalmente los candidatos pueden mandar multiples susurros por cada bot\195\173n para cambiar su selecci\195\179n. Por ejemplo si primero eligieron necesidad pero luego decidieron cambiar a avaricia y darle m\195\161s prioridada a alguien m\195\161s. Si activas esta opci\195\179n solo la primera respuesta sera tomada en cuenta." -- Needs review
L["Not auto announcing (alt+click detected)"] = "Sin auto anunciar (detectado alt+click)" -- Needs review
L["Not auto looting (alt+click detected)"] = "Sin auto despojar (detectado alt+click)" -- Needs review
L["Note"] = "Nota" -- Needs review
L["Note added by "] = "Nota a\195\177adida por" -- Needs review
L["No time left"] = "No queda tiempo." -- Needs review
-- L["No timeout"] = ""
L["Not saved, available"] = "No est\195\161 salvado, disponible" -- Needs review
L["Not yet announced to candidate"] = "No ha sido a\195\186n anunciado al candidato" -- Needs review
L["Offline or lootmaster not installed?"] = "Desconectado o no tiene instalado Lootmaster?" -- Needs review
-- L["Offspec"] = ""
-- L["Offspec / Greed"] = ""
-- L["Old client fallback compatibility"] = ""
L["Only accept first candidate response for each item."] = "Solo aceptar la primera respuesta de los candidatos para cada \195\173tem." -- Needs review
L["Only BoE and BoU items will be filtered. BoP items will always send a monitor message."] = "Solo los items que se liguen al equipar ser\195\161n filtrados. Los \195\173tems LaR siempre enviar\195\161n un mensaje al monitor." -- Needs review
L["Only listen for monitor messages from the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = "Solo escuchar los mensajes del monitor de la raid para \195\173tems que cumplan con esta calidad o mayor. (Favor de recordar que las recetas tambi\195\169n usan la misma calidad)." -- Needs review
L["Only receive for equal or higher than"] = "Solo recibir para igual o mayor que" -- Needs review
L["Only send for equal or higher than"] = "S\195\179lo enviar para igual o mayor que" -- Needs review
-- L["Only send monitor messages to the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = ""
-- L["Only send to promoted players in raid"] = ""
-- L["Only send to specific guildranks"] = ""
-- L["Only send to the following guildranks:"] = ""
L["Opens up a testing popup and monitor window, so you can see what this will look like on your clients. After you're done testing just click the discard loot button to close the monitor window."] = "Abrir pruebas de ventanas emergente y de monitor, para que puedas ver com\195\179 se ver\195\173a en tus clientes. Despu\195\169s de terminar la prueba puedes apretar el bot\195\179n de descartar bot\195\173n para cerrar la ventana del monitor." -- Needs review
L["Opens up the version checker frame."] = "Abre el marco de revisi\195\179n de versi\195\179n." -- Needs review
L["Open test popup and monitor windows"] = "Abrir pruebas de ventanas emergente y de monitor" -- Needs review
L[" or %s"] = "o %s" -- Needs review
L["Pass"] = "Pasar," -- Needs review
L["Pass; Enchanter (%s)"] = "Pasar: Encantador (%s)" -- Needs review
L["Play audio warning on loot selection popup."] = "Reproducir sonido de advertencia en la ventana emergente de selecci\195\179n de bot\195\173n." -- Needs review
-- L["Please click this button to vote for %s for the selected item"] = ""
L["Please enable the lootmaster ML module."] = "Por favor active el modulo maestro despojador de lootmaster" -- Needs review
L["Please enter the name of the default candidate to receive the BoE and BoU items here."] = "Favor de ingresar aqu\195\173 el nombre del candidato por defecto que recibir\195\161 los \195\173tems que se liguen al equipar" -- Needs review
L[". Please note that the candidate will receive a notice about this in whisper."] = ". Favor notar que el candidato recivir\195\161 una noticia sobre esto en un privado." -- Needs review
L["Raidinfo Check"] = "Revisar Raidinfo" -- Needs review
L["Raid lock expired, available"] = "Expir\195\179 la grabada de banda, disponible" -- Needs review
L["Raid/Party"] = "Banda/Grupo" -- Needs review
L["Random roll"] = "Tiro al azar" -- Needs review
L["Rank"] = "Rango" -- Needs review
L["(Re)announce loot to candidate"] = "(Re)anunciar botin al candidato"
-- L["Registered bid %d, %s for %s"] = ""
L["Registered %s for %s"] = "Registrado %s para %s" -- Needs review
L["Reopens the loot selection popup at the candidate, this offers the candidate to vote for the loot after a crash or disconnect."] = "Vuelve a abrir la pantalla de selecci\195\179n de bot\195\173n en el candidato, esto le ofrece la opci\195\179n de votar por el bot\195\173n despu\195\169s de una desconectada." -- Needs review
L["Request version for: "] = "Pedir versi\195\179n para:" -- Needs review
-- L["Request votes"] = ""
L["Response"] = "Respuesta" -- Needs review
L["Roll"] = "Tirada" -- Needs review
L["Save"] = "Salvado" -- Needs review
L["Saved to %d, but not yet locked"] = "Salvado en %d, pero no bloqueado a\195\186n" -- Needs review
L["Saved to %d, locked"] = "Salvado en %d, bloqueado." -- Needs review
L["Saved to your instance"] = "Salvado en tu instancia." -- Needs review
L["--==[    SELECT AN INSTANCE    ]==--        "] = "--==[    SELECCIONA INSTANCIA    ]==--      " -- Needs review
L["Selected (temporarely hidden)"] = "Seleccionado (oculto temporalmente)" -- Needs review
L["Selection buttons"] = "Botones de selecci\195\179n" -- Needs review
L["Send a message to the selected candidate."] = "Enviar un mensaje al candidato seleccionado." -- Needs review
L["Send and receive monitor messages from the master looter and see what other raidmembers selected."] = "Enviar y recibir mensajes del monitor desde el maestro despojador y ver que seleccionaron otros miembros de la banda." -- Needs review
-- L["[send installation info]"] = ""
L["Send outgoing monitor updates"] = "Enviar actualizaciones salientes al monitor." -- Needs review
L["Serious error in class bitdecoder, bits %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Error grave en clase bitdecoder, bits %s no encontrados. Favor de asegurarse que tiene la \195\186ltima version instalada y reportar si el problema persiste." -- Needs review
L["Serious error in class bitencoder, class %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Error grave en clase bitencoder, bits %s no encontrados. Favor de asegurarse que tiene la \195\186ltima version instalada y reportar si el problema persiste." -- Needs review
L["Set response manually"] = "Poner respuesta manualmente" -- Needs review
-- L["Sets automatic loot announcement threshold, any loot that is of equal or higher quality will get auto announced to the raid members."] = ""
-- L["Sets automatic looting threshold, any BoE and BoU loot that is of lower or equal quality will get auto sent to the candidate below."] = ""
-- L["Sets the amount of time a loot candidate has to select wether they want the loot or not."] = ""
L["%s is offline, out of range or not grouped, unable to inspect."] = "%s est\195\161 desconectado, fuera de rango o no agrupado, imposible inspeccionar." -- Needs review
L["%s not found on the loot list, perhaps it has already been looted?"] = "%s no fue encontrado en la lista de botin, quiz\195\161s ya haya sido despojado?" -- Needs review
L["\"%s\" not understood. usage:"] = "\"%s\" no entendido. Utilizaci\195\179n: " -- Needs review
-- L["Some extra functions that might come in handy."] = ""
-- L["Specify how many buttons you want to show on your clients. You will need to configure 1 button minimal and be aware that the pass button will always be included."] = ""
-- L["%splease whisper me !epgp need/greed/pass %s [GP bid]  (or use the popup if you have EPGPLootmaster installed)"] = ""
L["%splease whisper me !epgp need/greed/pass %s  (or use the popup if you have EPGPLootmaster installed)"] = "%s Por favor susurrame !epgp need/greed/pass %s  (o usa la ventana emergente si tienes EPGPLootmaster instalado)"
L["%s received %s for bank%4$s."] = "%s recibi\195\179 %s para banco%4$s" -- Needs review
L["%s received %s for disenchantment%4$s."] = "%s ha recibido %s para desencantar%4$s" -- Needs review
L["%s received %s for %s GP%s."] = "%s recibi\195\179 %s por %s GP%s"
L["%s received %s for unknown reason%4$s."] = "%s recibi\195\179 %s por raz\195\179n desconocida" -- Needs review
L["%s rolled %s."] = "%s tiro dados %s" -- Needs review
L["%s secs until pass"] = "%s segundos hasta que pase" -- Needs review
L["%s sent \"%s %s\"; not understood, returned usage list."] = "%s envi\195\179 \"%s %s\"; no se entiende, se ha respondido con la lista de utilizaci\195\179n" -- Needs review
L[" text:"] = "texto:" -- Needs review
-- L["The bidding system is a variation of the EPGP system where loot candidates are allowed to bid a custom GP value per item. The highest GP bid wins the loot."] = ""
-- L["The EPGP Lootmaster auto announcer allows you to auto announce specific loot to the raid."] = ""
-- L["The EPGP Lootmaster auto looter allows you to send specific BoU and BoE items to a predefined candidate without asking questions."] = ""
-- L["The EPGP Lootmaster Monitor allows you to send messages to other users in your raid. It will show them the same interface as the ML, allowing them to help with the loot distribution."] = ""
-- L["The following players have voted for %s:"] = ""
-- L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master can request a vote per item at any time by a simple press of a button."] = ""
-- L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master looter can request a vote per item at any time by a simple press of a button."] = ""
-- L["The voting system has been disabled or no votes have been requested. You can enable the voting system from the configuration panel and you can request votes by pressing the [Request Votes] button if you are the master looter"] = ""
-- L["This allows you to configure the selection buttons on the user interfaces of your raiders. Please note that client selections will be sorted the same as the buttons are sorted below. You will need to add one button minimal and the pass button will always be visible."] = ""
-- L["This allows you to control the automatic hiding features of EPGPLootmaster."] = ""
-- L["This field specifies the color of the selection text in the monitor windows."] = ""
-- L["This field specifies the text on the button, this will be shown on the selection popups and monitor windows."] = ""
-- L["This is a raid-wide configuration. This will hide the responses from players on monitors while the monitoring player is still making his selection for a specific item. This will prevent players from making selections based on other peoples responses. This prevents 'cheating' and speeds up the selection process because people will stop waiting for eachother"] = ""
-- L["This value is only needed when two candidates have the same PR."] = ""
-- L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."] = ""
-- L["This will disallow players from voting on themselves"] = ""
-- L["This will emulate the \"Player receives [item].\" locally. Usually used to \"fix\" the portal problem in naxx."] = ""
-- L["This will open the selecton screen on their client."] = ""
-- L["This will play an audible warning when the loot selection popup is opened and requires your input."] = ""
L[" (Unable to register in CT_RaidTracker; no raid started)"] = "(No es posible registrar en CT_RaidTracker; no se ha empezado ning\195\186n raid)" -- Needs review
L[" (Unable to register in HeadCount; item found, candidate wrong)"] = "(No es posible registrar en HeadCount; Objeto encontrado, candidato equivocado)" -- Needs review
L[" (Unable to register in HeadCount; itemID not found)"] = "(No es posible registrar en HeadCount; el ID del objeto no fue encontrado)" -- Needs review
L[" (Unable to register in HeadCount; last item not found)"] = "(No es posible registrar en HeadCount; \195\186ltimo objeto no fue encontrado)" -- Needs review
L[" (Unable to register in HeadCount; no active raid)"] = "(Imposible registrar en HeadCount; no hay una banda activa)" -- Needs review
L[" (Unable to register in HeadCount; no lootlist available)"] = "Imposible registrar en HeadCount; no hay lista de botin disponible" -- Needs review
L[" (Unable to register in HeadCount; no raidTracker)"] = "(Imposible de registrar en HeadCount; no raidTracker)" -- Needs review
-- L["Unable to register loot."] = ""
-- L["Unable to unlocalize %s"] = ""
-- L["unknown"] = ""
-- L["Unknown"] = ""
-- L["usage"] = ""
-- L["Usage: "] = ""
-- L["Usage: /lm emulate player [itemlink]"] = ""
-- L["Usage: /lm %s [lootlink]"] = ""
-- L["Use EPGPLootmaster"] = ""
-- L["Use this when you don't want to loot this item and close the lootmaster window."] = ""
-- L["Verbose debugging disabled"] = ""
-- L["Verbose debugging enabled"] = ""
-- L["Version Checker"] = ""
-- L["Vote"] = ""
-- L["Votes"] = ""
-- L["Voting system"] = ""
-- L["When should bidding be available to player?"] = ""
-- L["Whisper"] = ""
-- L["Whisper selected"] = ""
-- L["You are not a candidate for %s. Perhaps you were not involved in the fight?"] = ""
-- L["you are the loot master, loot tracking enabled"] = ""
-- L["you are the loot master, tracking disabled manually (configuration: /lm config)"] = ""
-- L["You can use upto 18 characters (^ ; * excluded)"] = ""
-- L["You have added this loot manually to the list, you will need to handle the loot manually and discard the loot from the list when you're done distributing it."] = ""
-- L["You have already made a selection for %s. Corrections have been disabled by the master looter."] = ""
-- L["You have disabled loot tracking for this raid"] = ""
-- L["You have enabled loot tracking for this raid"] = ""
-- L["Your GP Bid:"] = ""
-- L["Your selection for %s has been manually set to %s."] = ""
-- L["You've entered combat, hiding interface."] = ""
