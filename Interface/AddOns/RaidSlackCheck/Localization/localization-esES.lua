﻿if GetLocale() == "esES" then

function rsclocalel()

	psfpotchecklocal = "Comprobar pociones"
	psfpotchecklocalt2 = "Comprobar frascos"
	psfpotchecklocalt3 = "Renacer - Rebufar"
	psfpotchecklocalt322 = "Comprobar bufos después de renacer en combate"
	rscadditionalstat1 = "Agnte"
	rscadditionalstat2 = "Int"
	rscadditionalstat3 = "Espíritu"
	rscadditionalstat4 = "Agi"
	rscadditionalstat5 = "Frza"
	rscadditionalstatbonus = "bono"
	rscaddonnotworkinz = "Addon activado en algunas zonas:"
	rscbuffnameslitnew1 = "5% estadísticas"
	rscbuffnameslitnew2 = "Aguante"
	rscbuffnameslitnew3 = "Protección a las Sombras"
	rscbuffnameslitnew4 = "Intelecto"
	rscbuffnameslitnew5 = "Poderío"
	rscbuffspart1 = "Éste módulo comprueba bufos que fueron seleccionados en"
	rscbuffspart2 = "después de renacer y notifica cuales faltan, después los recomprueba en"
	rscbuffspart3 = "Puedes asignar responsables para bufos (ejemplo: si no hay paladin en tu raid, introduce quien usa tambores), después si están vivos en una raid, sólamente se le susurrará en la primera comprobación a ellos, sino, a todos los que puedan bufar."
	rscbuttonreset = "Restablecer"
	rscbuttonztext1 = "Añadir zona actual"
	rscbuttonztext2 = "Eliminar zona actual"
	rscbuttonztext3 = "Mostrar lista"
	rscbuttonztext4 = "Reiniciar lista"
	rscchatlist1 = "banda"
	rscchatlist2 = "alerta de banda"
	rscchatlist3 = "oficial"
	rscchatlist4 = "grupo"
	rscchatlist5 = "hermandad"
	rscchatlist6 = "decir"
	rscchatlist7 = "gritar"
	rscchatlist8 = "sólo a mi"
	rscflasktext1 = "Excepto comprobación de frascos normales y comida, este módulo tiene opciones únicas para autocomprobar y notificar escaqueos al comenzar el combate contra un jefe, ready check o al comenzar el Pull-timer (utilizando el addon PhoenixStyle) (max 1 comprobación cada 50 sec excepto la comprobación al empezar combate)."
	rscflasktext10 = "Todos tienen frasco y bufo de comida."
	rscflasktext11 = "Todos tienen frasco."
	rscflasktext12 = "Sin datos. Muchos muertos/desconectados"
	rscflasktext1part2 = "El bufo es despreciado si su duración está por debajo de |cffff0000%s|r min."
	rscflasktext2 = "chat para auto-comprobación:"
	rscflasktext3 = "Comprobar primero"
	rscflasktext4 = "Sólo un Elixir"
	rscflasktext5 = "Sin Frasco"
	rscflasktext555 = "Frasco VIEJO"
	rscflasktext6 = "nadie tiene"
	rscflasktext7 = "Sin Bufo de Comida"
	rscflasktext8 = "Sólo tienen Bufo de Comida"
	rscflasktext9 = "Sin comprobar"
	rscflasktextc11 = "notificar al pulear boss"
	rscflasktextc12 = "notificar cuando el contador 'Pull' empieza"
	rscflasktextc13 = "notificar al realizar 'Ready check'"
	rscflasktextc14 = "enviar susurros al autocomprobar"
	rscflasktextc15 = "comprobar comida"
	rscflasktxtgroup2 = "grupos"
	rscflasktxtgroup5 = "grupos"
	rscflaskwhisptxt1 = "RSC > ¡No tienes Bufo de Comida!"
	rscflaskwhisptxt11 = "RSC > Tu Bufo de Comida pronto dejará de tener efecto."
	rscflaskwhisptxt2 = "RSC > ¡Sólo has usado 1 Elixir!"
	rscflaskwhisptxt3 = "RSC > ¡No tienes Frasco o Elixir!"
	rscflaskwhisptxt33 = "RSC > Tu Frasco pronto dejará de tener efecto."
	rscflaskwhisptxt4 = "RSC > ¡No tienes Bufo de Comida y sólo 1 Elixir!"
	rscflaskwhisptxt40 = "RSC > No tienes Bufo de Comida y el Frasco pronto dejará de tener efecto."
	rscflaskwhisptxt44 = "RSC > Tu Bufo de Comida pronto dejará de tener efecto y sólo tienes 1 Elixir!"
	rscflaskwhisptxt5 = "RSC > ¡No tienes Frasco ni Bufo de Comida!"
	rscflaskwhisptxt55 = "RSC > ¡No tienes Frasco y tu Bufo de Comida dejará de tener efecto pronto!"
	rscflaskwhisptxt56 = "RSC > Tu Frasco y Bufo de Comida dejarán de tener efecto pronto."
	rscfoodstillthere = "El festín sigue ahí"
	rsclocallpot = "todas las pociones"
	rscloccolor = "colorear nombres"
	rsclocfight1 = "último combate"
	rsclocfight2 = "combate anterior"
	rsclocfight3 = "combate"
	rscloclastf = "último combate"
	rsclocnotinc = "fuera de combate"
	rsclocpot10 = "Quién usó poción"
	rsclocpot11 = "Quién no usó"
	rsclocpot12 = "Pociones usadas en el combate anterior:"
	rsclocpot13 = "Pociones usadas antes del combate anterior"
	rsclocpot14 = "Antes del combate anterior nadie usó pociones."
	rsclocpot15 = "Pociones usadas antes del combate anterior sólo"
	rsclocpot16 = "0 pociones antes del combate anterior"
	rsclocpot17 = "Nadie usó pociones"
	rsclocpot18 = "Pociones usadas"
	rsclocpot2 = "0 pociones seleccionadas"
	rsclocpot3 = "0 pociones"
	rsclocpot4 = "Todos usaron pociones"
	rsclocpot5 = "Información sobre"
	rsclocpot6 = "0 pociones: "
	rsclocpot7 = "no se detectaron escaqueos"
	rsclocpot8 = "Otras pociones usadas: "
	rsclocpot9 = "no se usaron otras pociones."
	rsclocpoths17 = "Nadie se tomó un Caramelo"
	rsclocpoths172 = "Todo el mundo se ha tomado un Caramelo"
	rsclocpoths18 = "Caramelos usados"
	rsclocpoths182 = "NO se han usado los caramelos"
	rsclocrep1 = "Notificar en chat:"
	rsclocrlslak = "notificar escaqueos al RL"
	rscmanualsend = "envio manual:"
	rscmin = "minutos"
	rsconlybossfig1 = "Ahora el uso de pociones será examinado sólo en peleas contra jefes"
	rsconlybossfig2 = "Ahora el uso de pociones será examinado en cualquier combate"
	rsconlybossfigtloc = "solo peleas contra jefes"
	rscpartanons31 = "notificar en chat la 1a comprobación"
	rscpartanons32 = "notificar en chat la 2a comprobación"
	rscpartanons33 = "enviar susurros en la 1a comprobación"
	rscpartanons34 = "enviar susurros en la 2a comprobación"
	rscpartanons35 = "notificar sin tener promote"
	rscpartanons36 = "si se usan elixires, comprobar que se usan 2, no sólo 1"
	rscpartanonsfoodadd = "contadas %s comidas"
	rscparton3 = "ACTIVAR"
	rscpartwhobuff1 = "Responsables para bufos:"
	rscprepots = "Prepotis"
	rscreleasedtxt1 = "fue resucitado hace"
	rscreleasedtxt1f = "fue resucitada hace"
	rscreleasedtxt2 = ""
	rscreleasedtxt3 = "Falta"
	rscreleasedtxt4 = "AÚN FALTA"
	rscreleasedtxt5 = "segunda comprobación"
	rscreleasedtxt6 = "pero aún falta"
	rscreleasedtxt6f = "pero aún falta"
	rscreleasedtxt7 = "pero falta"
	rscreleasedtxt7f = "pero falta"
	rscreloadbutton = "Actualizar"
	rscsec = "segundos"
	rscsend = "Actualizar y Enviar"
	rsctablereptxt1 = "anuncia cuando alguien ponga un festín"
	rsctablereptxt2 = "anuncia cuando alguien ponga un caldero"
	rsctablereptxt3 = "anuncia cuando alguien ponga un Robot de Reparación"
	rsctablereptxt4 = "anuncia cuando alguien ponga un Pozo de Caramelos"
	rsctableused1 = "¡ha puesto un Festín!"
	rsctableused2 = "¡ha puesto un Caldero!"
	rsctableused3 = "¡ha puesto un Robot de Reparación!"
	rsctableused4 = "está casteando un Pozo de Caramelos"
	rscwhousehstext = "Caramelo usado"
	rscwhousehstext2 = "NO se ha usado el caramelo"
	rsczonereport1 = "Addon activado en: "
	rsczonereport2 = "El addon ahora se activará en la/las zona(s):"
	rsczonereport3 = "El addon no se activará en:"
	rsczonereport5 = "¡La lista está vacía! ¡El addon NO funcionará ahora en toda la instancia!"
	rsczonereport6 = "lista vacía"
	rsczonereport7 = "|cffff0000Error!|r ¡La zona actual ya está en una lista!"
	rsczonereport8 = "|cffff0000Error!|r ¡La zona actual no se encontró en la lista!"
	rsczonereport9 = "Para restablecer la lista negra clica el botón |cffff00002 VECES|r"



end


end