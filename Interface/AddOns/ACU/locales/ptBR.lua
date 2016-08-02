local L = LibStub("AceLocale-3.0"):NewLocale ("AddonCpuUsage", "ptBR") 
if not L then return end 

L["STRING_CAPTURING_CPU"] = "capturando Dados" -- Needs review
L["STRING_CLOSE"] = "fechar" -- Needs review
L["STRING_DATABROKER_HELP_LEFTBUTTON"] = "|cFFFFFF00Botão Esquerdo|r: abrir o painel principal." -- Needs review
L["STRING_DATABROKER_HELP_RIGHTBUTTON"] = [=[|cFFFFFF00Botão Direito|r: abrir opções.
]=] -- Needs review
L["STRING_FINISHED_INCOMBAT"] = "esperando o fim do combate para abrir a janela." -- Needs review
L["STRING_FINISHED_NOTENOUGHTIME"] = "a duração do combate foi pequena demais." -- Needs review
L["STRING_FINISHED_SUCCESSFUL"] = "data capturada com sucesso." -- Needs review
L["STRING_HELP_DONTSHOWAGAIN"] = "Não mostrar este painel novamente." -- Needs review
L["STRING_LISTPANEL_ADDONNAME"] = "Nome do AddOn" -- Needs review
L["STRING_LISTPANEL_AVERAGE"] = "Média:" -- Needs review
L["STRING_LISTPANEL_AVERAGE_DESC"] = [=[Média do tempo em milésimos de segundo
usado pelo addon para processar data.

O jogo precisa entregar um
frame a cada |cFFFFFF0016ms|r, qualquer delay causa
uma perda de FPS.]=] -- Needs review
L["STRING_LISTPANEL_AVERAGE_DESC_TITLE"] = "Média de Tempo Gasto" -- Needs review
L["STRING_LISTPANEL_MS"] = "Milésimos" -- Needs review
L["STRING_LISTPANEL_MS_DESC"] = "Média de tempo usada a cada segundo." -- Needs review
L["STRING_LISTPANEL_PEAK"] = "Pico" -- Needs review
L["STRING_LISTPANEL_PEAK_DESC"] = "Maior uso enquanto a captura estava sendo feita." -- Needs review
L["STRING_LISTPANEL_PERCENT"] = "Porcentagem" -- Needs review
L["STRING_LISTPANEL_TOTAL"] = "Total:" -- Needs review
L["STRING_LISTPANEL_TOTAL_DESC"] = [=[Quantidade de tempo onde o jogo ficou congelado
para processar informações de addons.

Esta quantidade é distribuída dentre
cada frame processado.]=] -- Needs review
L["STRING_LISTPANEL_TOTAL_DESC_TITLE"] = "Tempo Total Usado" -- Needs review
L["STRING_LISTPANEL_TOTALUSAGE"] = "Total Usado" -- Needs review
L["STRING_LISTPANEL_TOTALUSAGE_DESC"] = [=[Total de tempo em segundos usado pelo
addon para processar informações.]=] -- Needs review
L["STRING_NO_INTENDED"] = "Não queria? |cFFFF7700Clique aqui|r" -- Needs review
L["STRING_OPTIONS_GATHERTIME"] = "Tempo de Captura" -- Needs review
L["STRING_OPTIONS_GATHERTIME_DESC"] = "Tempo para ficar capturando dados de Cpu dos addons." -- Needs review
L["STRING_OPTIONS_MINIMAP"] = "Ícone no Minimapa" -- Needs review
L["STRING_OPTIONS_MINIMAP_DESC"] = "Mostra ou esconde o ícone no minimapa." -- Needs review
L["STRING_OPTIONS_STARTDELAY"] = "Delay de Início" -- Needs review
L["STRING_OPTIONS_STARTDELAY_DESC"] = "Quando uma luta contra um feche de raide for iniciada, esperar X segundos antes de iniciar a captura." -- Needs review
L["STRING_PROFILE_DISABLED"] = "O jogo não esta capturando uso de CPU (requerido por este addon). Clique no botão ao lado para ligar a captura:" -- Needs review
L["STRING_PROFILE_ENABLED"] = "O jogo esta com a captura de CPU ligada! O addon está pronto para uso." -- Needs review
L["STRING_PROFILE_START"] = "Ligar Captura" -- Needs review
L["STRING_PROFILE_STOP"] = "Desligar" -- Needs review
L["STRING_SWITCH_SHOWGRAPHIC"] = "Mostrar Gráfico" -- Needs review
L["STRING_SWITCH_SHOWLIST"] = "Mostrar Lista" -- Needs review
L["STRING_TUTORIAL_LINE_1"] = "|cFFFFFFFF2|r) Verifique se a Captura de Cpu esta ligada (indicado na parte de baixo da janela)." -- Needs review
L["STRING_TUTORIAL_LINE_2"] = "|cFFFFFFFF3|r) Se não estiver, ligue-a clicando no botão 'Ligar Captura'." -- Needs review
L["STRING_TUTORIAL_LINE_3"] = "|cFFFFFFFF1|r) Entre em uma raide (pode ser Localizador de Raides)." -- Needs review
L["STRING_TUTORIAL_LINE_4"] = [=[|cFFFFFFFF4|r) Jogue normalmente um encontro com um boss por pelo menos 2 minutos.
Após a luta com o boss ter sido iniciada, você verá um indicador de captura de CPU.]=] -- Needs review
L["STRING_TUTORIAL_LINE_5"] = "|cFFFFFFFF5|r) No final no encontro, o painel com os resultados da captura é mostrado." -- Needs review
L["STRING_TUTORIAL_LINE_6"] = [=[

|cFFFFFFFFImportante:|r) Quando terminar com os testes de performance, desative a Captura de CPU clicando no botão 'Desligar', no canto inferior direito da janela.]=] -- Needs review
L["STRING_TUTORIAL_TITLE"] = "Sega estes passos:" -- Needs review
