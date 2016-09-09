local L = LibStub("AceLocale-3.0"):NewLocale("EnemyGrid", "ptBR") 
if not L then return end 

L["S_AGGROCOLORS"] = "Cor pelo Aggro"
L["S_AGGROCOLORS_DPS_AGGRO"] = "[dps] Cor do Aggro"
L["S_AGGROCOLORS_DPS_AGGRO_DESC"] = "A nameplate tem esta cor quando você é DPS (ou healer) e o mob esta agrado em você."
L["S_AGGROCOLORS_DPS_HIGHAGGRO"] = "[dps] Cor Aggro Alto"
L["S_AGGROCOLORS_DPS_HIGHAGGRO_DESC"] = "Quando você está próximo de puxar aggro."
L["S_AGGROCOLORS_DPS_NOAGGRO"] = "[dps] Cor Sem Aggro"
L["S_AGGROCOLORS_DPS_NOAGGRO_DESC"] = "A nameplate tem esta cor quando você é DPS (ou healer) e o mob não esta atacando você."
L["S_AGGROCOLORS_TANK_AGGRO"] = "[tank] Cor do Aggro"
L["S_AGGROCOLORS_TANK_AGGRO_DESC"] = "A nameplate tem esta cor quando você é TANK e o mob esta agrado em você."
L["S_AGGROCOLORS_TANK_HIGHAGGRO"] = "[tank] Cor Aggro Alto"
L["S_AGGROCOLORS_TANK_HIGHAGGRO_DESC"] = "Quando você está próximo de puxar o aggro do outro tank ou de algum membro da raide."
L["S_AGGROCOLORS_TANK_NOAGGRO"] = "[tank] Cor Sem Aggro"
L["S_AGGROCOLORS_TANK_NOAGGRO_DESC"] = "Quando você é um tank e o mob não esta atacando você."
L["S_AGGROCOLORS_TANK_NOCOMBAT"] = "[tank] Fora de Combate"
L["S_AGGROCOLORS_TANK_NOCOMBAT_DESC"] = "Quando você esta em combate e o inimigo não esta fora de combate."
L["S_ALPHA"] = "Transparência"
-- L["S_ALWAYSSHOWDEBUFFS"] = ""
-- L["S_ALWAYSSHOWDEBUFFS_DESC"] = ""
L["S_ANCHOR"] = "Âncora"
L["S_ANCHOR_TOOLTIP"] = [=[|cFFFFFF00Botão Direito|r or '|cFFFFFF00/enemygrid|r' para configurar.
Você pode trancar o frame lá.]=]
L["S_APPLY"] = "Aplicar"
L["S_BACKGROUNDCOLOR"] = "Cor de Fundo"
L["S_BORDERCOLOR"] = "Cor da Borda"
L["S_CASTBAR_APPEARANCE"] = "Aparência da Barra de Cast"
L["S_CASTBAR_NONINTERRUPT_COLOR"] = "Cor Sem Interrupt"
L["S_CASTBAR_TEXT"] = "Texto do Nome da Magia"
L["S_CLASSCOLOR"] = "Cor da Classe"
L["S_COLOR"] = "Cor"
L["S_DEBUFFCONFIG"] = "Definições de Aura"
L["S_ENABLED"] = "Ativado"
L["S_ENEMY"] = "Inimigo"
L["S_FACTION"] = "Facção"
L["S_FONT"] = "Fonte"
L["S_FRAMESTRATA"] = "Nível do Frame"
L["S_FRAMESTRATA_DESC"] = "Altura em que o frame é posto na sua interface. Ele pode ficar sobre ou abaixo de outros frames."
L["S_FRIENDLY"] = "Amigável"
L["S_GROWDIRECTION"] = "Direção de Crescimento"
L["S_GROWDIRECTION_BOTTOM_TOP"] = "De Baixo Para Cima"
L["S_GROWDIRECTION_TOP_BOTTOM"] = "De Cima Para Baixo"
L["S_HEALTHBAR_APPEARANCE"] = "Aparência da Barra"
L["S_HEALTHBAR_TEXT"] = "Texto da Barra"
L["S_HEALTHPERCENT_TEXT"] = "Texto de Porcentagem"
L["S_HEIGHT"] = "Altura"
L["S_INBOSS"] = "Em Bosses de Raide"
L["S_INBOSS_DESC"] = "O frame é mostrado apenas durante um boss de raide."
L["S_INCOMBAT"] = "Em Combate"
L["S_INCOMBAT_DESC"] = "O frame é mostrado apenas quando você esta em combate."
L["S_INDICATORS"] = "Indicadores"
L["S_ININSTANCE"] = "Em Instância"
L["S_ININSTANCE_DESC"] = "O frame é mostrado apenas quando você esta em uma instância."
L["S_LAYOUT"] = "Layout"
L["S_LEFT"] = "Esquerda"
L["S_LENGTH"] = "Comprimento"
L["S_LOCKED"] = "Travado"
L["S_LOCKED_DESC"] = "O frame não pode ser movido."
L["S_MAXTARGETS"] = "Número de Alvos"
L["S_MAXTARGETS_DESC"] = "Quantos alvos são mostrados de cada vez."
L["S_MENU_BARSCONFIG"] = "Ajuste das Barras"
L["S_MENU_DEBUFFCONFIG"] = "Ajuste dos Debuffs"
L["S_MENU_KEYBINDS"] = "Ajuste de Atalhos"
L["S_MENU_MAINPANEL"] = "Configurações Gerais"
L["S_NAMEPLATE_DISTANCE"] = "Distância da Nameplate"
L["S_NAMEPLATE_DISTANCE_DESC"] = [=[Distância em que as nameplates podem ser vistas.

|cFFFFFF00Importante:|r esta configuração é salva no cliente e qualquer addon pode modifica-la.]=] -- Needs review
L["S_NAMEPLATE_DISTANCE_NOCOMBAT"] = "Você não pode modificar isso em combate."
L["S_NEUTRAL"] = "Neutro"
L["S_NPCCOLOR"] = "Cor do Npc"
L["S_ONLYSHOWWHEN"] = "Apenas Mostrar Quando"
L["S_OPTIONSDENY_REASON_INCOMBAT"] = "Não é possível configurar durante o combate."
L["S_PADDING_HORIZONTAL"] = "Espaço Horizontal"
L["S_PADDING_HORIZONTAL_DESC"] = "Espaço deixado entre cada coluna de alvos."
L["S_PADDING_VERTICAL"] = "Espaço Vertical"
L["S_PADDING_VERTICAL_DESC"] = "Espaço deixado entre cada alvo verticalmente."
L["S_PRESETWIZARD"] = "Assistente de Ajustes"
L["S_PRESETWIZARD_DESC"] = "Reabre o assistente de ajustes."
L["S_PROFILES"] = "Perfis"
L["S_QUESTCOLOR"] = "Cor de Quest"
L["S_RAIDMARKS"] = "Marcadores de Raide"
L["S_RANGEALPHA"] = "Alpha por Distância"
L["S_RANGEALPHA_DESC"] = "Quando o mob esta fora de alcance, troca a transparência do alvo."
L["S_RANGECHECK"] = "Verificar Distância"
L["S_RIGHT"] = "Direita"
L["S_ROWS"] = "Quantidade Colunas"
L["S_ROWS_DESC"] = "Quantidade de colunas."
L["S_SCALE"] = "Escala"
L["S_SHADOW"] = "Sombra"
L["S_SHOWTAB"] = "Mostrar Aba"
L["S_SHOWTAB_DESC"] = "Mostra a aba do frame."
L["S_SHOWTIMER"] = "Mostrar Cronometro"
L["S_SHOWTIMER_DESC"] = "Tempo restante que a aura possui."
L["S_SHOWTITLE"] = "Mostrar Título"
-- L["S_SHOWTOOLTIP"] = ""
L["S_SIZE"] = "Tamanho"
L["S_SPECBAN"] = "Especialização"
L["S_SPECBAN_TOOLTIP"] = "Mostrar o frame quando você estiver nesta especialização."
L["S_TEXT"] = "Texto"
L["S_TEXTURE"] = "Textura"
L["S_TEXTUREBACKGROUND"] = "Textura de Fundo"
-- L["S_UNIT_ENEMY"] = ""
-- L["S_UNIT_FRIENDLY"] = ""
L["S_WIDTH"] = "Largura"
L["S_XOFFSET"] = "X Offset"
L["S_YOFFSET"] = "Y Offset"

