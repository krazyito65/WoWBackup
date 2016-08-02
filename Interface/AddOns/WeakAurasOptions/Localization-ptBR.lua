if not(GetLocale() == "ptBR") then
    return;
end

local L = WeakAuras.L

-- Options translation
-- L[""] = ""
L["1 Match"] = "1 resultado"
-- L["A 20x20 pixels icon"] = ""
-- L["A 32x32 pixels icon"] = ""
-- L["A 40x40 pixels icon"] = ""
-- L["A 48x48 pixels icon"] = ""
-- L["A 64x64 pixels icon"] = ""
L["Actions"] = "Ações"
L["Activate when the given aura(s) |cFFFF0000can't|r be found"] = "Ativar quando a aura(s) recebida |cFFFF0000não|r for(em) encontra(s)"
L["Addons"] = "Addons"
L["Add to new Dynamic Group"] = "Adicionar a um novo Grupo Dinâmico"
L["Add to new Group"] = "Adicionar a um novo Grupo"
L["Add Trigger"] = "Adicionar Gatilho"
L["A group that dynamically controls the positioning of its children"] = "Um grupo que controla dinamicamente o posicionamentos dos seus elementos"
L["Align"] = "Alinhar"
L["Allow Full Rotation"] = "Habilitar rotação completa"
L["Alpha"] = "Transparência"
L["Anchor"] = "Âncora"
L["Anchor Point"] = "Ponto da âncora"
L["Angle"] = "Ângulo"
L["Animate"] = "Animar"
L["Animated Expand and Collapse"] = "Animação expande e esvai"
L["Animation relative duration description"] = [=[A duração da animação relativa ao tempo de duração do display, expresso como fração (1/2), porcentagem (50%), ou decimal. (0.5)
|cFFFF0000Nota:|r se um display não tiver progresso (o gatilho é não-temporal, é aura sem duração, etc), a animação não irá tocar.

|cFF4444FFFou Exemplo:|r
Se a duração da animação estiver setada para |cFF00CC0010%|r, e o display do gatilho for um benefício que dure 20 segundos, o começ da animação tocará por 2 segundos.
Se a duração da animação estiver setada para |cFF00C0010%|r, e o gatilho do display for um benefício que não tem duração, nenhum começõ de animação irá tocar (no entanto, tocaria se voce especificasse uma duração em segundos)."
WeakAuras → Opções → Opções ]=] -- Needs review
L["Animations"] = "Animações"
L["Animation Sequence"] = "Sequência da animação"
-- L["Apply Template"] = ""
-- L["Arcane Orb"] = ""
-- L["At a position a bit left of Left HUD position."] = ""
-- L["At a position a bit left of Right HUD position"] = ""
-- L["At the same position as Blizzard's spell alert"] = ""
-- L["Aura Name"] = ""
L["Aura(s)"] = "Aura(s)"
-- L["Aura Type"] = ""
L["Auto"] = "Auto"
L["Automatic Icon"] = "Ícone automático"
-- L["Backdrop Color"] = ""
-- L["Backdrop Style"] = ""
L["Background"] = "Fundo"
L["Background Color"] = "Cor de fundo"
L["Background Inset"] = "Inserção do fundo"
L["Background Offset"] = "Posicionamento do fundo"
L["Background Texture"] = "Textura do fundo"
L["Bar Alpha"] = "Transparência da barra"
L["Bar Color"] = "Cor da barra"
-- L["Bar Color Settings"] = ""
-- L["Bar in Front"] = ""
L["Bar Texture"] = "Textura da barra"
-- L["Big Icon"] = ""
-- L["Blend Mode"] = ""
-- L["Blue Rune"] = ""
-- L["Blue Sparkle Orb"] = ""
L["Border"] = "Borda"
-- L["Border Color"] = ""
-- L["Border Inset"] = ""
L["Border Offset"] = "Posicionamento da borda"
-- L["Border Settings"] = ""
-- L["Border Size"] = ""
-- L["Border Style"] = ""
L["Bottom Text"] = "Texto na base"
L["Button Glow"] = "Iluminar botão"
-- L["Can be a name or a UID (e.g., party1). Only works on friendly players in your group."] = ""
L["Cancel"] = "Cancelar"
L["Channel Number"] = "Número do canal"
-- L["Chat Message"] = ""
L["Check On..."] = "Verificar..."
-- L["Children:"] = ""
L["Choose"] = "Escolher"
L["Choose Trigger"] = "Escolher o gatilho"
L["Choose whether the displayed icon is automatic or defined manually"] = "Escolher se o ícone mostrado é automático ou definido manualmente"
-- L["Clone option enabled dialog"] = ""
L["Close"] = "Fechar"
-- L["Collapse all loaded displays"] = ""
-- L["Collapse all non-loaded displays"] = ""
L["Color"] = "Cor"
L["Compress"] = "Comprimir"
L["Constant Factor"] = "Fator constante"
L["Controls the positioning and configuration of multiple displays at the same time"] = "Controla o posicionamento e a configuração de múltiplos displays ao mesmo tempo"
L["Cooldown"] = "Tempo de recarga"
L["Count"] = "Contar"
L["Creating buttons: "] = "Criando botões:"
L["Creating options: "] = "Criando opções:"
-- L["Crop"] = ""
L["Crop X"] = "Cortar X"
L["Crop Y"] = "Cortar Y"
-- L["Custom"] = ""
L["Custom Code"] = "Código personalizado"
-- L["Custom Function"] = ""
L["Custom Trigger"] = "Gatilho personalizado"
-- L["Custom trigger event tooltip"] = ""
-- L["Custom trigger status tooltip"] = ""
-- L["Custom Untrigger"] = ""
L["Debuff Type"] = "Tipo de penalidade"
-- L["Default"] = ""
L["Delete all"] = "Apagar tudo"
L["Delete Trigger"] = "Apagar gatilho"
L["Desaturate"] = "Descolorir"
L["Disabled"] = "Desabilitar"
L["Discrete Rotation"] = "Rotação discreta"
L["Display"] = "Mostruário"
L["Display Icon"] = "Ícone do mostruário"
-- L["Displays a text, works best in combination with other displays"] = ""
L["Display Text"] = "Texto do mostruário"
L["Distribute Horizontally"] = "Distribuir horizontalmente"
L["Distribute Vertically"] = "Distribuir verticalmente"
-- L["Done"] = ""
-- L["-- Do not remove this comment, it is part of this trigger: "] = ""
L["Duration Info"] = "Informação da duração"
L["Duration (s)"] = "Duração"
L["Dynamic Group"] = "Grupo dinâmico"
-- L["Dynamic information"] = ""
-- L["Dynamic information from first Active Trigger"] = ""
-- L["Dynamic information from Trigger %i"] = ""
-- L["Dynamic text tooltip"] = ""
L["Enabled"] = "Habilitado"
-- L["End Angle"] = ""
L["Enter an aura name, partial aura name, or spell id"] = "Entre um nome de aura, uma parte do nome da aura, ou id do feitiço"
-- L["Event"] = ""
-- L["Event(s)"] = ""
L["Event Type"] = "Tipo de evento"
L["Expand all loaded displays"] = "Expandir todos os mostruários carregados"
L["Expand all non-loaded displays"] = "Expandir todos os mostruários não carregados"
L["Expand Text Editor"] = "Expandir o editor de texto"
L["Fade"] = "Sumir"
-- L["Fade In"] = ""
-- L["Fade Out"] = ""
L["Finish"] = "Finalizar"
-- L["Fire Orb"] = ""
L["Font"] = "Fonte"
-- L["Font Flags"] = ""
-- L["Font Size"] = ""
-- L["Font Type"] = ""
L["Foreground Color"] = "Cor do primeiro plano"
L["Foreground Texture"] = "Textura do primeiro plano"
L["Frame"] = "Quadro"
L["Frame Strata"] = "Camada do quadro"
-- L["From Template"] = ""
L["Glow Action"] = "Ação incandescente"
-- L["Green Rune"] = ""
-- L["Group"] = ""
-- L["Group aura count description"] = ""
L["Group Member Count"] = "Contagem dos membros do grupo"
-- L["Grow"] = ""
-- L["Hawk"] = ""
L["Height"] = "Altura"
-- L["Hide"] = ""
-- L["Hide on"] = ""
L["Hide When Not In Group"] = "Esconder quando em grupo"
L["Horizontal Align"] = "Alinhamento horizontal"
-- L["Horizontal Bar"] = ""
-- L["Horizontal Blizzard Raid Bar"] = ""
-- L["Huge Icon"] = ""
-- L["Icon"] = ""
-- L["Icon Color"] = ""
L["Icon Info"] = "Informação do ícone"
-- L["Icon Inset"] = ""
L["Ignored"] = "Ignorado"
L["%i Matches"] = "%i resultados"
L["Import"] = "Importar"
L["Import a display from an encoded string"] = "Importar um display de um string codificado"
-- L["Inverse"] = ""
L["Justify"] = "Justificar"
-- L["Leaf"] = ""
-- L["Left 2 HUD position"] = ""
-- L["Left HUD position"] = ""
L["Left Text"] = "Texto à esquerda"
-- L["Load"] = ""
L["Loaded"] = "Carrregar"
-- L["Low Mana"] = ""
L["Main"] = "Principal"
L["Manage displays defined by Addons"] = "Gerencia os displays definidos por addons"
-- L["Medium Icon"] = ""
-- L["Message"] = ""
L["Message Prefix"] = "Prefixo de mensagem"
L["Message Suffix"] = "Sufixo de mensagem"
-- L["Message Type"] = ""
L["Mirror"] = "Espelho"
L["Model"] = "Modelo"
L["Multiple Displays"] = "Múltiplos displays"
L["Multiple Triggers"] = "Múltiplos gatilhos"
-- L["Multiselect ignored tooltip"] = ""
-- L["Multiselect multiple tooltip"] = ""
-- L["Multiselect single tooltip"] = ""
L["Name Info"] = "Informação do nome"
L["Negator"] = "Negador"
-- L["Never"] = ""
L["New"] = "Novo"
L["No"] = "Não"
-- L["None"] = ""
-- L["Not all children have the same value for this option"] = ""
L["Not Loaded"] = "Não carregado"
-- L["No tooltip text"] = ""
-- L["Offer a guided way to create auras for your class"] = ""
L["% of Progress"] = "% do progresso"
L["Okay"] = "Okay"
L["On Hide"] = "Quando sumir"
-- L["On Init"] = ""
-- L["Only match auras cast by people other than the player"] = ""
-- L["Only match auras cast by the player"] = ""
L["On Show"] = "Quando mostrar"
L["Operator"] = "Operador"
-- L["or"] = ""
-- L["Orange Rune"] = ""
L["Orientation"] = "Orientação"
L["Outline"] = "Contorno"
L["Own Only"] = "Apenas meu"
-- L["Paste text below"] = ""
L["Play Sound"] = "Reproduzir som"
-- L["Portrait Zoom"] = ""
-- L["Preset"] = ""
L["Prevents duration information from decreasing when an aura refreshes. May cause problems if used with multiple auras with different durations."] = "Impede que informação de duração diminua quando uma aura é atualizada. Pode causar problemas se usado com múltiplas auras com diferentes durações."
-- L["Processed %i chars"] = ""
L["Progress Bar"] = "Barra de progresso"
L["Progress Texture"] = "Textura de progresso"
-- L["Purple Rune"] = ""
-- L["Radius"] = ""
L["Re-center X"] = "Recentralizar X"
L["Re-center Y"] = "Recentralizar Y"
-- L["Remaining Time"] = ""
L["Remaining Time Precision"] = "Precisão do tempo restante"
L["Required For Activation"] = "Requerido para ativar"
-- L["Right 2 HUD position"] = ""
L["Right-click for more options"] = "Clique-direito para mais opções"
-- L["Right HUD position"] = ""
L["Right Text"] = "Texto à direita"
L["Rotate"] = "Girar"
L["Rotate In"] = "Girar para dentro"
L["Rotate Out"] = "Girar para fora"
L["Rotate Text"] = "Girar o texto"
L["Rotation"] = "Rotação"
-- L["Rotation Mode"] = ""
L["Same"] = "Mesmo"
L["Search"] = "Procurar"
-- L["Select the auras you always want to be listed first"] = ""
L["Send To"] = "Enviar para"
L["Show all matches (Auto-clone)"] = "Mostrar todas as correspondências"
-- L["Show model of unit "] = ""
L["Show players that are |cFFFF0000not affected"] = "Mostrar todos os jogadores que |cFFFF0000não foram afetados"
L["Shows a 3D model from the game files"] = "Mostrar um modelo 3D dos arquivos do jogo"
L["Shows a custom texture"] = "Mostrar uma textura personalizada"
L["Shows a progress bar with name, timer, and icon"] = "Mostrar uma barra de progresso com nome, temporizador e ícone"
L["Shows a spell icon with an optional cooldown overlay"] = "Mostrar um ícone de feitiço com o opcional do tempo de recarga sobreposto" -- Needs review
L["Shows a texture that changes based on duration"] = "Mostrar uma textura que muda com base na duração"
L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "Mostra uma ou mais linhas de texto, que podem incluir informações dinâmicas tal como progresso ou quantidades"
L["Size"] = "Tamanho"
L["Slide"] = "Deslizar"
L["Slide In"] = "Deslizar para dentro"
L["Slide Out"] = "Deslizar para fora"
-- L["Small Icon"] = ""
L["Sort"] = "Ordenar"
L["Sound"] = "Som"
L["Sound Channel"] = "Canal de som"
L["Sound File Path"] = "Caminho do arquivo de som"
-- L["Sound Kit ID"] = ""
L["Space"] = "Espaço"
L["Space Horizontally"] = "Espaço horizontal"
L["Space Vertically"] = "Espaçar Verticalmente" -- Needs review
-- L["Spark"] = ""
-- L["Spark Settings"] = ""
-- L["Spark Texture"] = ""
-- L["Specific Unit"] = ""
L["Spell ID"] = "ID da magia" -- Needs review
L["Spell ID dialog"] = [=[
Voce especificou uma aura por |cFFFF0000ID da magia|r.

By default, |cFF8800FFWeakAuras|r cannot distinguish between auras with the same name but different |cFFFF0000spell ID|r.
However, if the Use Full Scan option is enabled, |cFF8800FFWeakAuras|r can search for specific |cFFFF0000spell ID|rs.

Would you like to enable Use Full Scan to match this |cFFFF0000spell ID|r?]=] -- Needs review
L["Stack Count"] = "Contagem do Monte" -- Needs review
L["Stack Info"] = "Informação do Monte" -- Needs review
-- L["Stacks"] = ""
L["Stacks Settings"] = "Configurações do Monte" -- Needs review
-- L["Stagger"] = ""
-- L["Star"] = ""
L["Start"] = "Início" -- Needs review
-- L["Start Angle"] = ""
-- L["Status"] = ""
-- L["Stealable"] = ""
-- L["Sticky Duration"] = ""
-- L["Symbol Settings"] = ""
L["Temporary Group"] = "Grupo temporário"
L["Text"] = "Texto"
L["Text Color"] = "Cor do texto"
L["Text Position"] = "Posição do texto"
-- L["Texture"] = ""
-- L["Texture Info"] = ""
-- L["The children of this group have different display types, so their display options cannot be set as a group."] = ""
-- L["The duration of the animation in seconds."] = ""
-- L["The type of trigger"] = ""
-- L["This region of type \"%s\" is not supported."] = ""
-- L["Time in"] = ""
-- L["Tiny Icon"] = ""
-- L["Toggle the visibility of all loaded displays"] = ""
-- L["Toggle the visibility of all non-loaded displays"] = ""
-- L["to group's"] = ""
-- L["Tooltip"] = ""
-- L["Tooltip on Mouseover"] = ""
-- L["Top HUD position"] = ""
-- L["Top Text"] = ""
-- L["to screen's"] = ""
-- L["Total Time Precision"] = ""
-- L["Trigger"] = ""
-- L["Trigger %d"] = ""
-- L["Type"] = ""
-- L["Unit"] = ""
-- L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = ""
-- L["Update Custom Text On..."] = ""
-- L["Use Full Scan (High CPU)"] = ""
-- L["Use tooltip \"size\" instead of stacks"] = ""
-- L["Vertical Align"] = ""
-- L["Vertical Bar"] = ""
-- L["WeakAurasOptions"] = ""
-- L["Width"] = ""
-- L["X Offset"] = ""
-- L["X Scale"] = ""
-- L["Yellow Rune"] = ""
-- L["Yes"] = ""
-- L["Y Offset"] = ""
-- L["Y Scale"] = ""
-- L["Z Offset"] = ""
-- L["Zoom"] = ""
-- L["Zoom In"] = ""
-- L["Zoom Out"] = ""



