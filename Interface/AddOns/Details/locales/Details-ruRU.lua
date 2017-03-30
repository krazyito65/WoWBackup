local L = LibStub("AceLocale-3.0"):NewLocale("Details", "ruRU") 
if not L then return end 

L["ABILITY_ID"] = "ID способности"
L["STRING_ABSORBED"] = "Поглощено"
L["STRING_ACTORFRAME_NOTHING"] = "упс, нет данных для отчета :("
L["STRING_ACTORFRAME_REPORTAT"] = "на"
L["STRING_ACTORFRAME_REPORTOF"] = "от"
L["STRING_ACTORFRAME_REPORTTARGETS"] = "отчет для целей из"
L["STRING_ACTORFRAME_REPORTTO"] = "отчет для"
L["STRING_ACTORFRAME_SPELLDETAILS"] = "Подробнее о заклинании"
L["STRING_ACTORFRAME_SPELLUSED"] = "Все произнесенные заклинания"
L["STRING_AGAINST"] = "против"
L["STRING_ALIVE"] = "Живой"
L["STRING_ALPHA"] = "Альфа"
L["STRING_ANCHOR_BOTTOM"] = "Снизу"
L["STRING_ANCHOR_BOTTOMLEFT"] = "Снизу Слева"
L["STRING_ANCHOR_BOTTOMRIGHT"] = "Снизу Справа"
L["STRING_ANCHOR_LEFT"] = "Слева"
L["STRING_ANCHOR_RIGHT"] = "Справа"
L["STRING_ANCHOR_TOP"] = "Сверху"
L["STRING_ANCHOR_TOPLEFT"] = "Вверху Слева"
L["STRING_ANCHOR_TOPRIGHT"] = "Вверху Справа"
L["STRING_ASCENDING"] = "По возрастанию"
L["STRING_ATACH_DESC"] = "Окно #%d группируется с окном #%d."
L["STRING_ATTRIBUTE_CUSTOM"] = "Пользовательское"
L["STRING_ATTRIBUTE_DAMAGE"] = "Урон"
L["STRING_ATTRIBUTE_DAMAGE_BYSPELL"] = "Урон, полученный от заклинаний"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS"] = "Ауры и войдзоны"
L["STRING_ATTRIBUTE_DAMAGE_DEBUFFS_REPORT"] = "Урон и время действия дебаффов"
L["STRING_ATTRIBUTE_DAMAGE_DONE"] = "Нанесённый урон"
L["STRING_ATTRIBUTE_DAMAGE_DPS"] = "УВС"
L["STRING_ATTRIBUTE_DAMAGE_ENEMIES"] = "Получено урона врагом"
L["STRING_ATTRIBUTE_DAMAGE_ENEMIES_DONE"] = "Нанесено урона врагом"
L["STRING_ATTRIBUTE_DAMAGE_FRAGS"] = "Убийства"
L["STRING_ATTRIBUTE_DAMAGE_FRIENDLYFIRE"] = "Урон по союзникам"
L["STRING_ATTRIBUTE_DAMAGE_TAKEN"] = "Полученный урон"
L["STRING_ATTRIBUTE_ENERGY"] = "Ресурсы"
L["STRING_ATTRIBUTE_ENERGY_ENERGY"] = "Получено: Энергия"
L["STRING_ATTRIBUTE_ENERGY_MANA"] = "Получено: Мана"
L["STRING_ATTRIBUTE_ENERGY_RAGE"] = "Получено: Ярость"
L["STRING_ATTRIBUTE_ENERGY_RESOURCES"] = "Прочие ресурсы"
L["STRING_ATTRIBUTE_ENERGY_RUNEPOWER"] = "Получено: Сила рун"
L["STRING_ATTRIBUTE_HEAL"] = "Исцеление"
L["STRING_ATTRIBUTE_HEAL_DONE"] = "Исцеление"
L["STRING_ATTRIBUTE_HEAL_ENEMY"] = "Произведено исцеления врагом"
L["STRING_ATTRIBUTE_HEAL_HPS"] = "ИВС"
L["STRING_ATTRIBUTE_HEAL_OVERHEAL"] = "Избыточное исцеление"
L["STRING_ATTRIBUTE_HEAL_PREVENT"] = "Урона предотвращено"
L["STRING_ATTRIBUTE_HEAL_TAKEN"] = "Получено лечения"
L["STRING_ATTRIBUTE_MISC"] = "Разное"
L["STRING_ATTRIBUTE_MISC_BUFF_UPTIME"] = "Время действия баффов"
L["STRING_ATTRIBUTE_MISC_CCBREAK"] = "СС Прерывания"
L["STRING_ATTRIBUTE_MISC_DEAD"] = "Смерти"
L["STRING_ATTRIBUTE_MISC_DEBUFF_UPTIME"] = "Время действия дебаффов"
L["STRING_ATTRIBUTE_MISC_DEFENSIVE_COOLDOWNS"] = "Кулдауны"
L["STRING_ATTRIBUTE_MISC_DISPELL"] = "Рассеивания"
L["STRING_ATTRIBUTE_MISC_INTERRUPT"] = "Прерывания"
L["STRING_ATTRIBUTE_MISC_RESS"] = "Воскрешения"
L["STRING_AUTO"] = "авто"
L["STRING_AUTOSHOT"] = "Автоматическая стрельба"
L["STRING_AVERAGE"] = "В среднем"
L["STRING_BLOCKED"] = "Заблокированно"
L["STRING_BOTTOM"] = "Снизу"
L["STRING_BOTTOM_TO_TOP"] = "Снизу вверх"
L["STRING_CAST"] = "Произнесено"
L["STRING_CCBROKE"] = "Спадение Контроля"
L["STRING_CENTER"] = "центр"
L["STRING_CENTER_UPPER"] = "Центр"
L["STRING_CHANGED_TO_CURRENT"] = "Сегмент изменен: |cFFFFFF00Текущий|r"
L["STRING_CHANNEL_PRINT"] = "Наблюдатель"
L["STRING_CHANNEL_RAID"] = "Рейд"
L["STRING_CHANNEL_SAY"] = "Сказать"
L["STRING_CHANNEL_WHISPER"] = "Шепнуть"
L["STRING_CHANNEL_YELL"] = "Крикнуть"
L["STRING_CLICK_REPORT_LINE1"] = "|cFFFFCC22Клик|r: |cFFFFEE00отчет|r"
L["STRING_CLICK_REPORT_LINE2"] = "|cFFFFCC22Shift+Клик|r: |cFFFFEE00режим окна|r"
L["STRING_CLOSEALL"] = "Все окна аддона закрыты. Напечатайте '/details new', чтобы снова их открыть."
L["STRING_COLOR"] = "Цвет"
L["STRING_COMMAND_LIST"] = "список команд"
L["STRING_COOLTIP_NOOPTIONS"] = "нет опций"
L["STRING_CRITICAL_HITS"] = "Критические попадания"
L["STRING_CRITICAL_ONLY"] = "критический"
L["STRING_CURRENT"] = "Текущий"
L["STRING_CURRENTFIGHT"] = "Текущий сегмент"
L["STRING_CUSTOM_ACTIVITY_ALL"] = "Активный режим"
L["STRING_CUSTOM_ACTIVITY_ALL_DESC"] = "Показывает результаты активности каждого игрока в рейдовой группе"
L["STRING_CUSTOM_ACTIVITY_DPS"] = "Урон (активность)"
L["STRING_CUSTOM_ACTIVITY_DPS_DESC"] = "Сообщает, сколько времени потратил каждый игрок на нанесение урона."
L["STRING_CUSTOM_ACTIVITY_HPS"] = "Исцеление (активность)"
L["STRING_CUSTOM_ACTIVITY_HPS_DESC"] = "Сообщает, сколько времени потратил каждый игрок на исцеление."
L["STRING_CUSTOM_ATTRIBUTE_DAMAGE"] = "Урон"
L["STRING_CUSTOM_ATTRIBUTE_HEAL"] = "Исцеление"
L["STRING_CUSTOM_ATTRIBUTE_SCRIPT"] = "Пользовательский скрипт"
L["STRING_CUSTOM_AUTHOR"] = "Автор:"
L["STRING_CUSTOM_AUTHOR_DESC"] = "Кто создал этот Монитор."
L["STRING_CUSTOM_CANCEL"] = "Отменить"
L["STRING_CUSTOM_CREATE"] = "Создать"
L["STRING_CUSTOM_CREATED"] = "Новый Монитор создан."
L["STRING_CUSTOM_DAMAGEONANYMARKEDTARGET"] = "Урон по другим меткам "
L["STRING_CUSTOM_DAMAGEONANYMARKEDTARGET_DESC"] = "Показать полученный урон по целям с другими метками."
L["STRING_CUSTOM_DAMAGEONSKULL"] = "Урон по \"Черепу\""
L["STRING_CUSTOM_DAMAGEONSKULL_DESC"] = "Показать полученный урон целью с меткой \"Череп\""
L["STRING_CUSTOM_DESCRIPTION"] = "Описание:"
L["STRING_CUSTOM_DESCRIPTION_DESC"] = "Описание того, что делает данный Монитор."
L["STRING_CUSTOM_DONE"] = "Готово"
L["STRING_CUSTOM_DTBS"] = "Урон, полученный от заклинаний"
L["STRING_CUSTOM_DTBS_DESC"] = "Показать урон от вражеских заклинаний, полученный вашей группой "
L["STRING_CUSTOM_EDIT"] = "Редактировать"
L["STRING_CUSTOM_EDIT_SEARCH_CODE"] = "Изменить параметры поиска кода"
L["STRING_CUSTOM_EDIT_TOOLTIP_CODE"] = "Изменить код подсказки"
L["STRING_CUSTOM_EDITCODE_DESC"] = "Это продвинутая функция, где пользователь может создать свой собственный код Монитора."
L["STRING_CUSTOM_EDITTOOLTIP_DESC"] = "Это код подсказки, запускается, когда пользователь держит курсор над полосой. "
L["STRING_CUSTOM_ENEMY_DT"] = "Получено урона"
L["STRING_CUSTOM_EXPORT"] = "Экспортировать"
L["STRING_CUSTOM_FUNC_INVALID"] = "Пользовательский скрипт содержит ошибку и не может обновить окно."
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT"] = "Исцеляющие зелья и камни"
L["STRING_CUSTOM_HEALTHSTONE_DEFAULT_DESC"] = "Показать, кто в вашей рейдовой группе использовал исцеляющие камни и зелья"
L["STRING_CUSTOM_ICON"] = "Иконка:"
L["STRING_CUSTOM_IMPORT"] = "Импортировать"
L["STRING_CUSTOM_IMPORT_ALERT"] = "Монитор загружен - нажмите 'Импортировать' для подтверждения."
L["STRING_CUSTOM_IMPORT_BUTTON"] = "Импортировать"
L["STRING_CUSTOM_IMPORT_ERROR"] = "Импорт не удался - неверная строка"
L["STRING_CUSTOM_IMPORTED"] = "Этот Монитор успешно импортирован."
L["STRING_CUSTOM_LONGNAME"] = "Слишком длинное название - максимум 32 символа"
L["STRING_CUSTOM_MYSPELLS"] = "Мои заклинания"
L["STRING_CUSTOM_MYSPELLS_DESC"] = "Показывать ваши заклинания в окне."
L["STRING_CUSTOM_NAME"] = "Название:"
L["STRING_CUSTOM_NAME_DESC"] = "Введите название Вашего нового Монитора."
L["STRING_CUSTOM_NEW"] = "Управлять пользовательскими Мониторами"
L["STRING_CUSTOM_PASTE"] = "Вставить здесь:"
L["STRING_CUSTOM_POT_DEFAULT"] = "Использовано зелий"
L["STRING_CUSTOM_POT_DEFAULT_DESC"] = "Показать, кто из рейда использовал зелья во время боя"
L["STRING_CUSTOM_REMOVE"] = "Удалить"
L["STRING_CUSTOM_REPORT"] = "(пользовательский)"
L["STRING_CUSTOM_SAVE"] = "Сохранить изменения"
L["STRING_CUSTOM_SAVED"] = "Монитор сохранен."
L["STRING_CUSTOM_SHORTNAME"] = "Название должно состоять как минимум из 5 символов."
L["STRING_CUSTOM_SKIN_TEXTURE"] = "Файл вашего скина"
L["STRING_CUSTOM_SKIN_TEXTURE_DESC"] = [=[Название файла: .tga .

Файл должен быть размещен в папке:

|cFFFFFF00WoW/Interface/|r

|cFFFFFF00Важно:|r прежде, чем создать файл, закройте игровой клиент. После этого пропишите /reload для применения изменений, сохраненные в файле текстуры.]=]
L["STRING_CUSTOM_SOURCE"] = "Источник:"
L["STRING_CUSTOM_SPELLID"] = "ID Заклинания:"
L["STRING_CUSTOM_TARGET"] = "Цель:"
L["STRING_CUSTOM_TEMPORARILY"] = "(|cFFFFC000временно|r)"
L["STRING_DAMAGE"] = "Урон"
L["STRING_DAMAGE_DPS_IN"] = "Урон, полученный от "
L["STRING_DAMAGE_TAKEN_FROM"] = "Урон, полученный от"
L["STRING_DESCENDING"] = "По убыванию"
L["STRING_DETACH_DESC"] = "Разорвать группирование окон"
L["STRING_DODGE"] = "Уклонение"
L["STRING_DOT"] = "(ДоТ)"
L["STRING_DPS"] = "УВС"
L["STRING_EMPTY_SEGMENT"] = "Пустой сегмент"
L["STRING_ENABLED"] = "Включить"
L["STRING_ENVIRONMENTAL_DROWNING"] = "Мир (утопление)"
L["STRING_ENVIRONMENTAL_FALLING"] = "Мир (падение)"
L["STRING_ENVIRONMENTAL_FATIGUE"] = "Мир (усталость)"
L["STRING_ENVIRONMENTAL_FIRE"] = "Мир (огонь)"
L["STRING_ENVIRONMENTAL_LAVA"] = "Мир (лава)"
L["STRING_ENVIRONMENTAL_SLIME"] = "Мир (слизь)"
L["STRING_ERASE"] = "удалить"
L["STRING_ERASE_DATA"] = "Сбросить все данные"
L["STRING_ERASE_DATA_OVERALL"] = "Сбросить всеобщие данные"
L["STRING_EXAMPLE"] = "Пример"
L["STRING_EXPLOSION"] = "взрыв"
L["STRING_FEEDBACK_CURSE_DESC"] = "Откройте тикет или оставьте сообщение на странице Details!."
L["STRING_FEEDBACK_MMOC_DESC"] = "Напишите в нашей теме на форуме mmo-champion."
L["STRING_FEEDBACK_PREFERED_SITE"] = "Выберите предпочитаемый Вами сайт сообщества (англ):"
L["STRING_FEEDBACK_SEND_FEEDBACK"] = "Отправить отзыв"
L["STRING_FEEDBACK_WOWI_DESC"] = "Оставить комментарий на странице проекта Details! "
L["STRING_FIGHTNUMBER"] = "Бой #"
L["STRING_FREEZE"] = "Этот сегмент недоступен в данный момент"
L["STRING_FROM"] = "От"
L["STRING_GLANCING"] = "Вскользь"
L["STRING_HEAL"] = "Исцеление"
L["STRING_HEAL_ABSORBED"] = "Исцеления поглощено"
L["STRING_HEAL_CRIT"] = "Критическое исцеление"
L["STRING_HITS"] = "Попадания "
L["STRING_HPS"] = "ИВС"
L["STRING_IMAGEEDIT_ALPHA"] = "Прозрачность"
L["STRING_IMAGEEDIT_CROPBOTTOM"] = "Обрезать снизу"
L["STRING_IMAGEEDIT_CROPLEFT"] = "Обрезать слева"
L["STRING_IMAGEEDIT_CROPRIGHT"] = "Обрезать справа"
L["STRING_IMAGEEDIT_CROPTOP"] = "Обрезать сверху"
L["STRING_IMAGEEDIT_DONE"] = "ГОТОВО"
L["STRING_IMAGEEDIT_FLIPH"] = "Отразить по горизонтали"
L["STRING_IMAGEEDIT_FLIPV"] = "Отразить по вертикали"
L["STRING_INFO_TAB_AVOIDANCE"] = "Избегание"
L["STRING_INFO_TAB_COMPARISON"] = "Сравнить"
L["STRING_INFO_TAB_SUMMARY"] = "Суммарно"
L["STRING_INTERFACE_OPENOPTIONS"] = "Открыть панель настроек"
L["STRING_KEYBIND_BOOKMARK"] = "Закладка"
L["STRING_KEYBIND_BOOKMARK_NUMBER"] = "Закладка #%s"
L["STRING_KEYBIND_RESET_SEGMENTS"] = "Сбросить сегменты"
L["STRING_KEYBIND_SCROLL_DOWN"] = "Прокрутить вниз все окна"
L["STRING_KEYBIND_SCROLL_UP"] = "Прокрутить вверх все окна"
L["STRING_KEYBIND_SCROLLING"] = "Прокрутка"
L["STRING_KEYBIND_SEGMENTCONTROL"] = "Сегменты"
L["STRING_KEYBIND_TOGGLE_WINDOW"] = "Переключить окно #%s"
L["STRING_KEYBIND_TOGGLE_WINDOWS"] = "Переключить всё"
L["STRING_KEYBIND_WINDOW_CONTROL"] = "Окна"
L["STRING_KEYBIND_WINDOW_REPORT"] = "Отчёт данных, отображаемых в окне #%s."
L["STRING_KEYBIND_WINDOW_REPORT_HEADER"] = "Отчет данных"
L["STRING_LAST_COOLDOWN"] = "последние использованные кулдауны"
L["STRING_LEFT"] = "слева"
L["STRING_LEFT_TO_RIGHT"] = "Слева направо "
L["STRING_LOCK_DESC"] = "Заблок. или разблок. окно"
L["STRING_LOCK_WINDOW"] = "заблок."
L["STRING_MASTERY"] = "Искусность "
L["STRING_MAXIMUM_SHORT"] = "Макс"
L["STRING_MELEE"] = "Атака ближнего боя"
L["STRING_MEMORY_ALERT_BUTTON"] = "Я понял"
L["STRING_MEMORY_ALERT_TEXT1"] = "Details! использует много памяти, |cFFFF8800вопреки распространенному мнению|r, использование памяти аддоном |cFFFF8800не влияет|r на производительность игры или FPS."
L["STRING_MEMORY_ALERT_TEXT2"] = "Если вы видите, что Details! использует очень много памяти, не паникуйте :D - |cFFFF8800все в порядке!|r. Часть этой памяти |cFFFF8800используется в кэше|r, чтобы сделать аддон еще быстрее!"
L["STRING_MEMORY_ALERT_TEXT3"] = "Однако, если вы хотите узнать, |cFFFF8800какой аддон самый 'тяжелый'|r, или какие сильно влияют на ваш FPS, установите аддон:'|cFFFFFF00AddOns Cpu Usage|r'."
L["STRING_MEMORY_ALERT_TITLE"] = "Пожалуйста, прочитайте внимательно!"
L["STRING_MENU_CLOSE_INSTANCE"] = "Закрыть данное окно"
L["STRING_MENU_CLOSE_INSTANCE_DESC"] = "Закрытое окно считается неактивным и его можно открыть снова в любое время с помощью меню управления окнами."
L["STRING_MENU_CLOSE_INSTANCE_DESC2"] = "Чтобы полностью удалить окно, зайдите в Панель настроек -> Окно: Общее -> Окна -> Удалить."
L["STRING_MENU_INSTANCE_CONTROL"] = "Управление окном"
L["STRING_MINIMAP_TOOLTIP1"] = "|cFFCFCFCFлевый клик|r: открыть панель настроек"
L["STRING_MINIMAP_TOOLTIP11"] = "|cFFCFCFCFлевый клик|r: сбросить все сегменты"
L["STRING_MINIMAP_TOOLTIP12"] = "|cFFCFCFCFлевый клик|r: показать/скрыть окна"
L["STRING_MINIMAP_TOOLTIP2"] = "|cFFCFCFCFправый клик|r: быстрое меню"
L["STRING_MINIMAPMENU_CLOSEALL"] = "Закрыть всё"
L["STRING_MINIMAPMENU_HIDEICON"] = "Скрыть иконку у миникарты"
L["STRING_MINIMAPMENU_LOCK"] = "Заблокировать"
L["STRING_MINIMAPMENU_NEWWINDOW"] = "Создать новое окно"
L["STRING_MINIMAPMENU_REOPENALL"] = "Открыть всё"
L["STRING_MINIMAPMENU_UNLOCK"] = "Разблокировать"
L["STRING_MINIMUM_SHORT"] = "Мин"
L["STRING_MINITUTORIAL_BOOKMARK1"] = "Щелкните правой кнопкой в любом месте в рамках окна, чтобы открыть закладки!"
L["STRING_MINITUTORIAL_BOOKMARK2"] = "Закладки предоставляют быстрый доступ к избранным мониторам."
L["STRING_MINITUTORIAL_BOOKMARK3"] = "Используйте правую клавишу мыши для закрытия панели закладок."
L["STRING_MINITUTORIAL_BOOKMARK4"] = "Не показывать это снова."
L["STRING_MINITUTORIAL_CLOSECTRL1"] = "|cFFFFFF00Ctrl + Правый клик|r закрывает окно!"
L["STRING_MINITUTORIAL_CLOSECTRL2"] = "Если вы захотите снова его открыть, перейдите в Меню -> Управление окном или в Панель настроек."
L["STRING_MINITUTORIAL_OPTIONS_PANEL1"] = "Окно, которое будет отредактировано."
L["STRING_MINITUTORIAL_OPTIONS_PANEL2"] = "Проверьте, все окна в группе также будут изменены."
L["STRING_MINITUTORIAL_OPTIONS_PANEL3"] = [=[Чтобы создать группу, перетащите окно #2 к окну #1.

Чтобы разорвать группу, кликните по кнопке |cFFFFFF00разгруппировать|r.]=]
L["STRING_MINITUTORIAL_OPTIONS_PANEL4"] = "Проверьте свои настройки создания тестовых полос."
L["STRING_MINITUTORIAL_OPTIONS_PANEL5"] = "Когда Редактирование Группа включена, все окна в группе изменилось."
L["STRING_MINITUTORIAL_OPTIONS_PANEL6"] = "Выберите здесь, какое окно вы хотите изменить внешний вид."
L["STRING_MINITUTORIAL_WINDOWS1"] = [=[Вы только что создали группу окон.

Чтобы разорвать их, кликните под иконке с замочком.]=]
L["STRING_MINITUTORIAL_WINDOWS2"] = [=[Окно заблокировано.

Нажмите на заголовок и растяните его.]=]
L["STRING_MIRROR_IMAGE"] = "Зеркальное изображение"
L["STRING_MODE_ALL"] = "Всё и вся"
L["STRING_MODE_GROUP"] = "Стандартный"
L["STRING_MODE_PLUGINS"] = "плагины"
L["STRING_MODE_RAID"] = "Плагины: Рейд "
L["STRING_MODE_SELF"] = "Плагины: Одиночная игра"
L["STRING_MULTISTRIKE"] = "Многократная атака"
L["STRING_MULTISTRIKE_HITS"] = "Многократные попадания"
L["STRING_NEWS_REINSTALL"] = "Обнаружили проблемы после обновления? Попробуйте команду '/details reinstall'."
L["STRING_NEWS_TITLE"] = "Что нового в данной версии"
L["STRING_NO_DATA"] = "данные уже были очищены"
L["STRING_NO_SPELL"] = "способности не были использованы"
L["STRING_NOLAST_COOLDOWN"] = "кулдауны не использованы"
L["STRING_NORMAL_HITS"] = "Обычные попадания"
L["STRING_NUMERALSYSTEM"] = "Система счисления"
L["STRING_NUMERALSYSTEM_ARABIC_MYRIAD_EASTASIA"] = "используется восточными странами Азии, разделяется на тысячи и мириады"
L["STRING_NUMERALSYSTEM_ARABIC_WESTERN"] = "Западная"
L["STRING_NUMERALSYSTEM_ARABIC_WESTERN_DESC"] = "наиболее распространённая, разделяется на тысячи и миллионы"
L["STRING_NUMERALSYSTEM_DESC"] = "Выберите систему счисления, которую будете использовать "
L["STRING_NUMERALSYSTEM_MYRIAD_EASTASIA"] = "Восточно-Азиатская "
L["STRING_OFFHAND_HITS"] = "Левая рука"
L["STRING_OPTIONS_3D_LALPHA_DESC"] = [=[Настройте степень прозрачности нижней модели.

|cFFFFFF00Важно|r: некоторые модели игнорируют степень прозрачности.]=]
L["STRING_OPTIONS_3D_LANCHOR"] = "Нижняя 3D модель:"
L["STRING_OPTIONS_3D_LENABLED_DESC"] = "Включить или выключить использование 3D моделей рамок под полосами."
L["STRING_OPTIONS_3D_LSELECT_DESC"] = "Выберите, какая модель будет использоваться нижней моделью полосы."
L["STRING_OPTIONS_3D_SELECT"] = "Выберите модель"
L["STRING_OPTIONS_3D_UALPHA_DESC"] = [=[Настройте степень прозрачности верхней модели.

|cFFFFFF00Важно|r: некоторые модели игнорируют степень прозрачности.]=]
L["STRING_OPTIONS_3D_UANCHOR"] = "Верхняя 3D модель:"
L["STRING_OPTIONS_3D_UENABLED_DESC"] = "Включить или выключить использование 3D моделей рамок над полосами."
L["STRING_OPTIONS_3D_USELECT_DESC"] = "Выберите, какая модель будет использоваться верхней моделью полосы."
L["STRING_OPTIONS_ADVANCED"] = "Дополнительно"
L["STRING_OPTIONS_ALPHAMOD_ANCHOR"] = "Авто-скрытие:"
L["STRING_OPTIONS_ALWAYS_USE"] = "Использовать на всех персонажах"
L["STRING_OPTIONS_ALWAYS_USE_DESC"] = "Профиль, используемый всеми персонажами. Вы можете изменить это на любом персонаже, просто выбрав другой профиль."
L["STRING_OPTIONS_ANIMATEBARS"] = "Анимация полос"
L["STRING_OPTIONS_ANIMATEBARS_DESC"] = "Включить анимацию для всех полос."
L["STRING_OPTIONS_APPEARANCE"] = "Внешний вид"
L["STRING_OPTIONS_ATTRIBUTE_TEXT"] = "Настройки текста заголовка "
L["STRING_OPTIONS_ATTRIBUTE_TEXT_DESC"] = "Данные опции управляют текстом заголовка окна "
L["STRING_OPTIONS_AUTO_SWITCH"] = "Все роли |cFFFFAA00(в бою)|r"
L["STRING_OPTIONS_AUTO_SWITCH_COMBAT"] = "|cFFFFAA00(в бою)|r"
L["STRING_OPTIONS_AUTO_SWITCH_DAMAGER_DESC"] = "Когда в специализации боец, то данное окно показывает выбранный атрибут или плагин."
L["STRING_OPTIONS_AUTO_SWITCH_DESC"] = [=[Когда вы входите в бой, то данное окно показывает выбранный атрибут или плагин.

|cFFFFFF00Важно|r: Индивидуальный атрибут, выбранный для каждой роли, перезаписывает атрибут, выбранный здесь.]=]
L["STRING_OPTIONS_AUTO_SWITCH_HEALER_DESC"] = "Когда в специализации лекаря, то данное окно показывает выбранный атрибут или плагин."
L["STRING_OPTIONS_AUTO_SWITCH_TANK_DESC"] = "Когда в специализации танка, то данное окно показывает выбранный атрибут или плагин."
L["STRING_OPTIONS_AUTO_SWITCH_WIPE"] = "После вайпа"
L["STRING_OPTIONS_AUTO_SWITCH_WIPE_DESC"] = "После того, как вы потерпели поражение в рейдовом бою. то данное окно автоматически показывает данный атрибут."
L["STRING_OPTIONS_AVATAR"] = "Выберите аватар"
L["STRING_OPTIONS_AVATAR_ANCHOR"] = "Личность:"
L["STRING_OPTIONS_AVATAR_DESC"] = "Аватары также отправляются членам гильдии, показываются в верхней части всплывающий подсказки и в окне 'Details! Игрока'."
L["STRING_OPTIONS_BAR_BACKDROP_ANCHOR"] = "Граница:"
L["STRING_OPTIONS_BAR_BACKDROP_COLOR_DESC"] = "Изменить цвет границы."
L["STRING_OPTIONS_BAR_BACKDROP_ENABLED_DESC"] = "Включение или отключение границы строк."
L["STRING_OPTIONS_BAR_BACKDROP_SIZE_DESC"] = "Изменить размер границы."
L["STRING_OPTIONS_BAR_BACKDROP_TEXTURE_DESC"] = "Изменить внешний вид границы."
L["STRING_OPTIONS_BAR_BCOLOR"] = "Фоновый цвет"
L["STRING_OPTIONS_BAR_BTEXTURE_DESC"] = "Данная текстура лежит под верхней текстурой и её размер всегда совпадает с шириной окна."
L["STRING_OPTIONS_BAR_COLOR_DESC"] = [=[Цвет и Прозрачность для данной текстуры.

|cFFFFFF00Важно|r: Выбранный цвет игнорируется, если используется цвет класса.]=]
L["STRING_OPTIONS_BAR_COLORBYCLASS"] = "Цвет по классу игрока"
L["STRING_OPTIONS_BAR_COLORBYCLASS_DESC"] = "Если включено, данная текстура всегда использует цвет класса игрока"
L["STRING_OPTIONS_BAR_FOLLOWING"] = "Всегда показывать себя"
L["STRING_OPTIONS_BAR_FOLLOWING_ANCHOR"] = "Полоса игрока:"
L["STRING_OPTIONS_BAR_FOLLOWING_DESC"] = "Если включено, то ваш бар всегда показывается, даже если вы не в топе игроков."
L["STRING_OPTIONS_BAR_GROW"] = "Направление роста полос"
L["STRING_OPTIONS_BAR_GROW_DESC"] = "Полосы растут из верхней или нижней части окна."
L["STRING_OPTIONS_BAR_HEIGHT"] = "Высота"
L["STRING_OPTIONS_BAR_HEIGHT_DESC"] = "Увеличить или уменьшить высоту полос."
L["STRING_OPTIONS_BAR_ICONFILE"] = "Файл иконки"
L["STRING_OPTIONS_BAR_ICONFILE_DESC"] = [=[Путь к файлу пользовательской иконки.

Название файла - .tga; 256x256 пикселей в альфа-каналом.]=]
L["STRING_OPTIONS_BAR_ICONFILE_DESC2"] = "Выберите используемый набор иконок."
L["STRING_OPTIONS_BAR_ICONFILE1"] = "Без иконки "
L["STRING_OPTIONS_BAR_ICONFILE2"] = "Стандартный"
L["STRING_OPTIONS_BAR_ICONFILE3"] = "Стандартный (черно-белый)"
L["STRING_OPTIONS_BAR_ICONFILE4"] = "Стандартный (прозрачный)"
L["STRING_OPTIONS_BAR_ICONFILE5"] = "Округлые иконки"
L["STRING_OPTIONS_BAR_ICONFILE6"] = "Стандартный (прозрачные черно-белые)"
L["STRING_OPTIONS_BAR_SPACING"] = "Расстояние"
L["STRING_OPTIONS_BAR_SPACING_DESC"] = "Расстояние между полосами"
L["STRING_OPTIONS_BAR_TEXTURE_DESC"] = "Текстура, используемая в верхней части полосы."
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM"] = "Включить пользовательский текст"
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM_DESC"] = "Если включено, то левый текст форматируется в соответствии с правилами, описанными в строке."
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM2"] = "."
L["STRING_OPTIONS_BARLEFTTEXTCUSTOM2_DESC"] = [=[|cFFFFFF00{data1}|r: в общем обозначает место игрока.

|cFFFFFF00{data2}|r: это всегда имя игрока.

|cFFFFFF00{data3}|r: в некоторых случаях это значение представляет фракцию или значок роли игрока.

|cFFFFFF00{func}|r: запускает настроенную функцию Lua, добавив возвращаемое значение к тексту.
Пример:
{func return 'hello azeroth'}

|cFFFFFF00Escape Sequences|r: используйте для изменения цвета или добавления текстуры. Поищите 'UI escape sequences' для большей информации.]=]
L["STRING_OPTIONS_BARORIENTATION"] = "Направление полос"
L["STRING_OPTIONS_BARORIENTATION_DESC"] = "Направление заполнения полос"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM"] = "Включить пользовательский текст"
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM_DESC"] = "Если включено, то правый текст форматируется в соответствии с правилами, описанными в строке."
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM2"] = "."
L["STRING_OPTIONS_BARRIGHTTEXTCUSTOM2_DESC"] = [=[|cFFFFFF00{data1}|r: это первое число, как правило, которое представляет итоговое число.

|cFFFFFF00{data2}|r: это второе число, большую часть времени представляет среднее значение в секунду.

|cFFFFFF00{data3}|r: третье число, как правило, это процент.

|cFFFFFF00{func}|r: запускает настроенную функцию Lua, добавив возвращаемое значение к тексту.
Пример:
{func return 'hello azeroth'}

|cFFFFFF00Escape Sequences|r:  используйте для изменения цвета или добавления текстуры. Поищите 'UI escape sequences' для большей информации.]=]
L["STRING_OPTIONS_BARS"] = "Основные настройки полос"
L["STRING_OPTIONS_BARS_CUSTOM_TEXTURE"] = "Файл вашей текстуры"
L["STRING_OPTIONS_BARS_CUSTOM_TEXTURE_DESC"] = " |cFFFFFF00Важно|r: изображение должно быть 256x32 пикселей."
L["STRING_OPTIONS_BARS_DESC"] = "Данные опции управляют внешний видом полос"
L["STRING_OPTIONS_BARSORT"] = "Сортировка полос по месту"
L["STRING_OPTIONS_BARSORT_DESC"] = "Сортировать полосы в порядке возрастания или убывания."
L["STRING_OPTIONS_BARSTART"] = "Полоса начинается после иконки"
L["STRING_OPTIONS_BARSTART_DESC"] = [=[Если выключено, то верхняя текстура начинается с левой стороны иконки вместо правой.

Это полезно при использовании набора иконок с прозрачными областями.]=]
L["STRING_OPTIONS_BARUR_ANCHOR"] = "Быстрое обновление"
L["STRING_OPTIONS_BARUR_DESC"] = "Если включено, то показатели УВС и ИВС обновляются немного быстрее, чем обычно."
L["STRING_OPTIONS_BG_ALL_ALLY"] = "Показать всё"
L["STRING_OPTIONS_BG_ALL_ALLY_DESC"] = [=[Если включено, то вражеские игроки также отображаются, когда окно находится в режиме группы.

|cFFFFFF00Важно|r: изменения вступят в силу после следующего входа в бой.]=]
L["STRING_OPTIONS_BG_ANCHOR"] = "Поля боя:"
L["STRING_OPTIONS_BG_REMOTE_PARSER"] = "Умный счет"
L["STRING_OPTIONS_BG_REMOTE_PARSER_DESC"] = "Если включено, то урон и исцеление синхронизируются с таблицей счета."
L["STRING_OPTIONS_CAURAS"] = "Собирать 'Ауры'"
L["STRING_OPTIONS_CDAMAGE"] = "Собирать 'Урон'"
L["STRING_OPTIONS_CENERGY"] = "Собирать 'Энергию'"
L["STRING_OPTIONS_CHANGE_CLASSCOLORS"] = "Изменить цвета классов"
L["STRING_OPTIONS_CHANGE_CLASSCOLORS_DESC"] = "Выберите новые цвета классов"
L["STRING_OPTIONS_CHANGELOG"] = "Заметки к версии"
L["STRING_OPTIONS_CHART_ADD"] = "Добавить данные"
L["STRING_OPTIONS_CHART_ADD2"] = "Добавить"
L["STRING_OPTIONS_CHART_ADDAUTHOR"] = "Автор:"
L["STRING_OPTIONS_CHART_ADDCODE"] = "Код:"
L["STRING_OPTIONS_CHART_ADDICON"] = "Иконка:"
L["STRING_OPTIONS_CHART_ADDNAME"] = "Название:"
L["STRING_OPTIONS_CHART_ADDVERSION"] = "Версия:"
L["STRING_OPTIONS_CHART_AUTHOR"] = "Автор"
L["STRING_OPTIONS_CHART_AUTHORERROR"] = "Имя автора недействительно."
L["STRING_OPTIONS_CHART_CANCEL"] = "Отменить"
L["STRING_OPTIONS_CHART_CLOSE"] = "Закрыть"
L["STRING_OPTIONS_CHART_CODELOADED"] = "Код уже загружен и не может быть показан."
L["STRING_OPTIONS_CHART_EDIT"] = "Редактировать код"
L["STRING_OPTIONS_CHART_EXPORT"] = "Экспорт"
L["STRING_OPTIONS_CHART_FUNCERROR"] = "Функция недействительна."
L["STRING_OPTIONS_CHART_ICON"] = "Иконка"
L["STRING_OPTIONS_CHART_IMPORT"] = "Импорт"
L["STRING_OPTIONS_CHART_IMPORTERROR"] = "Строка импорта недействительна."
L["STRING_OPTIONS_CHART_NAME"] = "Название"
L["STRING_OPTIONS_CHART_NAMEERROR"] = "Название недействительно."
L["STRING_OPTIONS_CHART_PLUGINWARNING"] = "Установите 'Chart Viewer Plugin' для отображения пользовательских графиков."
L["STRING_OPTIONS_CHART_REMOVE"] = "Удалить"
L["STRING_OPTIONS_CHART_SAVE"] = "Сохранить"
L["STRING_OPTIONS_CHART_VERSION"] = "Версия"
L["STRING_OPTIONS_CHART_VERSIONERROR"] = "Версия недействительна."
L["STRING_OPTIONS_CHEAL"] = "Собирать 'Исцеление'"
L["STRING_OPTIONS_CLASSCOLOR_MODIFY"] = "Изменить цвета классов"
L["STRING_OPTIONS_CLASSCOLOR_RESET"] = "Правый клик для сброса"
L["STRING_OPTIONS_CLEANUP"] = "Авто-сброс сегментов с трешем"
L["STRING_OPTIONS_CLEANUP_DESC"] = "Когда включено, то сегменты с трешем сбрасываются автоматически после двух других сегментов."
L["STRING_OPTIONS_CLICK_TO_OPEN_MENUS"] = "Клик для открытия меню"
L["STRING_OPTIONS_CLICK_TO_OPEN_MENUS_DESC"] = [=[Кнопки в строке заголовка не будут показывать свое меню при наведении курсора мыши над ними.

Вместо этого вам нужно нажать на них для открытия.]=]
L["STRING_OPTIONS_CMISC"] = "Собирать 'Разное'"
L["STRING_OPTIONS_COMBAT_ALPHA"] = "Когда"
L["STRING_OPTIONS_COMBAT_ALPHA_1"] = "Никогда"
L["STRING_OPTIONS_COMBAT_ALPHA_2"] = "В бою"
L["STRING_OPTIONS_COMBAT_ALPHA_3"] = "Вне боя"
L["STRING_OPTIONS_COMBAT_ALPHA_4"] = "Не в группе"
L["STRING_OPTIONS_COMBAT_ALPHA_5"] = "Не внутри подземелья"
L["STRING_OPTIONS_COMBAT_ALPHA_6"] = "Внутри подземелья"
L["STRING_OPTIONS_COMBAT_ALPHA_DESC"] = [=[Выберите, как бой влияет на прозрачность окна.

|cFFFFFF00Без изменений|r: Не изменять альфа.

|cFFFFFF00В бою|r: Когда ваш персонаж входит в бой, выбранное альфа применяется к окну.

|cFFFFFF00Вне боя|r: Альфа применяется всякий раз, когда ваш персонаж не в бою.

|cFFFFFF00Не в группе|r: Когда вы не в группе или рейде, окно принимает выбранное альфа.

|cFFFFFF00Важно|r: Этот параметр перезаписывает альфа, определяемый функцией авто-прозрачности.]=]
L["STRING_OPTIONS_COMBATTWEEKS"] = "Твики: Бой"
L["STRING_OPTIONS_COMBATTWEEKS_DESC"] = "Настройки поведения Details! в некоторых аспектах боя. "
L["STRING_OPTIONS_CONFIRM_ERASE"] = "Вы хотите сбросить данные?"
L["STRING_OPTIONS_CUSTOMSPELL_ADD"] = "Добавить заклинание"
L["STRING_OPTIONS_CUSTOMSPELLTITLE"] = "Редактировать настройки заклинаний"
L["STRING_OPTIONS_CUSTOMSPELLTITLE_DESC"] = "Данная панель позволит вам изменить имя и иконку заклинаний."
L["STRING_OPTIONS_DATABROKER_TEXT"] = "Текст"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD1"] = "Нанесено урона игроком"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD2"] = "УВС Игрока (эффективность)"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD3"] = "Позиция по урону"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD4"] = "Разница в уроне"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD5"] = "Исцелено игроком"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD6"] = "ИВС Игрока (эффективность)"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD7"] = "Позиция по исцелению"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD8"] = "Разница в исцелении"
L["STRING_OPTIONS_DATABROKER_TEXT_ADD9"] = "Прошедшее время боя"
L["STRING_OPTIONS_DATABROKER_TEXT1_DESC"] = [=[|cFFFFFF00{dmg}|r: нанесено урона игроком.

|cFFFFFF00{dps}|r: УВС игрока (эффективность).

|cFFFFFF00{dpos}|r: позиция между другими членами группы или рейда по урону.

|cFFFFFF00{ddiff}|r: разница в уроне между Вами и первым местом.

|cFFFFFF00{heal}|r: ислецено игроком.

|cFFFFFF00{hps}|r: ИВС игрока (эффективность).

|cFFFFFF00{hpos}|r: позиция между другими членами группы или рейда по исцелению.

|cFFFFFF00{hdiff}|r: разница в исцеления между Вами и первым местом.

|cFFFFFF00{time}|r: прошедшее время боя.]=]
L["STRING_OPTIONS_DEATHLIMIT"] = "Счетчик смертей"
L["STRING_OPTIONS_DEATHLIMIT_DESC"] = [=[Установить количество событий, отображаемых в мониторе смертей.

|cFFFFFF00Важно|r: относится только к новым смертям после применения.]=]
L["STRING_OPTIONS_DESATURATE_MENU"] = "Ненасыщенный"
L["STRING_OPTIONS_DESATURATE_MENU_DESC"] = "Включив данную опцию, все иконки меню на панели инструментов станут черно-белыми"
L["STRING_OPTIONS_DISABLE_ALLDISPLAYSWINDOW"] = "Отключить меню 'Все Мониторы'"
L["STRING_OPTIONS_DISABLE_ALLDISPLAYSWINDOW_DESC"] = "Если включено, то правый клик по полосе заголовка показывает ваши закладки."
L["STRING_OPTIONS_DISABLE_GROUPS"] = "Отключить группирование"
L["STRING_OPTIONS_DISABLE_GROUPS_DESC"] = "Окна не будут создавать группы при размещении рядом друг с другом."
L["STRING_OPTIONS_DISABLE_LOCK_RESIZE"] = "Откл.кнопки изменения размера"
L["STRING_OPTIONS_DISABLE_LOCK_RESIZE_DESC"] = "Кнопки изменение размера, заблок./разблок. и разгруппировать не показываются, когда мышка находится над окном."
L["STRING_OPTIONS_DISABLE_RESET"] = "Отключить кнопку сброса"
L["STRING_OPTIONS_DISABLE_RESET_DESC"] = "Если включить, то при нажатии на кнопку сброса ничего не будет происходить, для сброса данных нужно использовать меню всплывающей подсказки."
L["STRING_OPTIONS_DISABLE_STRETCH_BUTTON"] = "Откл.кнопку 'Растягиватель'"
L["STRING_OPTIONS_DISABLE_STRETCH_BUTTON_DESC"] = "Кнопка растягивания не показывается, когда эта опция включена."
L["STRING_OPTIONS_DISABLED_RESET"] = "Сброс с помощью этой кнопки в настоящее время отключен, выберите его в меню подсказки."
L["STRING_OPTIONS_DTAKEN_EVERYTHING"] = "Расширенный полученный урон"
L["STRING_OPTIONS_DTAKEN_EVERYTHING_DESC"] = "Полученный урон отображается в режиме 'Всё и вся'."
L["STRING_OPTIONS_ED"] = "Сброс данных"
L["STRING_OPTIONS_ED_DESC"] = [=[|cFFFFFF00Вручную|r: пользователю необходимо нажать на кнопку сброса.

|cFFFFFF00Уточнять|r: спрашивать о сбросе данных при входе в новое подземелье.

|cFFFFFF00Авто|r: сбрасывать данных после входа в новое подземелье.]=]
L["STRING_OPTIONS_ED1"] = "Вручную"
L["STRING_OPTIONS_ED2"] = "Уточнять"
L["STRING_OPTIONS_ED3"] = "Авто"
L["STRING_OPTIONS_EDITIMAGE"] = "Редактировать изображение"
L["STRING_OPTIONS_EDITINSTANCE"] = "Редактирование окна:"
L["STRING_OPTIONS_EXTERNALS_TITLE"] = "Внешние виджеты"
L["STRING_OPTIONS_EXTERNALS_TITLE2"] = "Данные опции управляют различными виджетами. "
L["STRING_OPTIONS_GENERAL"] = "Общие настройки"
L["STRING_OPTIONS_GENERAL_ANCHOR"] = "Общее:"
L["STRING_OPTIONS_HIDE_ICON"] = "Скрыть иконку"
L["STRING_OPTIONS_HIDECOMBATALPHA_DESC"] = [=[Изменение прозрачности данного значение, когда ваш персонаж совпадает с выбранным правилом.

|cFFFFFF00Ноль|r: полностью скрыто, невозможно взаимодействовать в пределах окна.

|cFFFFFF001 - 100|r: не скрыто, изменяется только прозрачность, вы можете взаимодействовать с окном.]=]
L["STRING_OPTIONS_HOTCORNER"] = "Показать кнопку"
L["STRING_OPTIONS_HOTCORNER_ACTION"] = "По клику"
L["STRING_OPTIONS_HOTCORNER_ACTION_DESC"] = "Выберите что делать, когда кнопка на панели Hotcorner будет нажата левой клавишей мыши."
L["STRING_OPTIONS_HOTCORNER_ANCHOR"] = "Hotcorner:"
L["STRING_OPTIONS_HOTCORNER_DESC"] = "Показать или скрыть кнопку на панели Hotcorner."
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK"] = "Включить быстрый клик"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_DESC"] = "Включить или выключить функцию 'Быстрого клика' для Hotcorner."
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC"] = "Быстрый клик по клику"
L["STRING_OPTIONS_HOTCORNER_QUICK_CLICK_FUNC_DESC"] = "Выберите что делать, когда кнопка 'Быстрый клик' на Hotcorner будет нажата."
L["STRING_OPTIONS_IGNORENICKNAME"] = "Игнорировать никнеймы и аватары"
L["STRING_OPTIONS_IGNORENICKNAME_DESC"] = "Если включено, никнеймы и аватары, установленные другими членами гильдии, игнорируются"
L["STRING_OPTIONS_ILVL_TRACKER"] = "Трекер уровня вещей:"
L["STRING_OPTIONS_ILVL_TRACKER_DESC"] = [=[Если включено и вы не в бою, то аддон отслеживает уровень предметов игроков в рейде.

Если выключено, то всё равно происходит считывание уровня предметов от других аддонов или, до тех пор, пока вы не осмотрите другого игрока.]=]
L["STRING_OPTIONS_ILVL_TRACKER_TEXT"] = "Включить"
L["STRING_OPTIONS_INSTANCE_ALPHA2"] = "Фоновый цвет"
L["STRING_OPTIONS_INSTANCE_ALPHA2_DESC"] = "Данная опция позволяет менять фоновый цвет окна"
L["STRING_OPTIONS_INSTANCE_BACKDROP"] = "Фоновая текстура"
L["STRING_OPTIONS_INSTANCE_BACKDROP_DESC"] = [=[Выбрать фоновую текстуру, которая будет использоваться данным окном.

|cFFFFFF00По умолчанию|r: Details Background.]=]
L["STRING_OPTIONS_INSTANCE_COLOR"] = "Цвет окна"
L["STRING_OPTIONS_INSTANCE_COLOR_DESC"] = [=[Изменить цвет и альфа данного окна.

|cFFFFFF00Важно|r: альфа выбранное здесь перезаписывается с показателями |cFFFFFF00Авто прозрачности|r, когда включено]=]
L["STRING_OPTIONS_INSTANCE_CURRENT"] = "Авто-переключение к текущему"
L["STRING_OPTIONS_INSTANCE_CURRENT_DESC"] = "Всякий раз, когда начинается бой, то данное окно автоматически переключается к текущему сегменту."
L["STRING_OPTIONS_INSTANCE_DELETE"] = "Удалить"
L["STRING_OPTIONS_INSTANCE_DELETE_DESC"] = [=[Удалить окно навсегда.
Ваши игровой экран будет перезагружен в процессе стирания.]=]
L["STRING_OPTIONS_INSTANCE_SKIN"] = "Скин"
L["STRING_OPTIONS_INSTANCE_SKIN_DESC"] = "Изменение внешнего вида окон, основанный на теме скина."
L["STRING_OPTIONS_INSTANCE_STATUSBAR_ANCHOR"] = "Строка состояния:"
L["STRING_OPTIONS_INSTANCE_STATUSBARCOLOR"] = "Цвет и прозрачность "
L["STRING_OPTIONS_INSTANCE_STATUSBARCOLOR_DESC"] = [=[Выбрать цвет используемый строкой состояния.

|cFFFFFF00Важно|r: данная опция перезаписывает цвет и прозрачность выбранные ранее для цвета Окна.]=]
L["STRING_OPTIONS_INSTANCE_STRATA"] = "Слой кадра"
L["STRING_OPTIONS_INSTANCE_STRATA_DESC"] = [=[Выбрать высоту слоя на котором будет размещена рамка.

По умолчанию нижний слой (Low) и происходит так, что окно остается за большинством других интерфейсных панелей.

При использовании верхнего слоя (High) окно может встать впереди других основных панелей.

При изменении высоты слоя вы можете найти конфликты с другими панелями, при которых будет идти перекрытие друг друга.]=]
L["STRING_OPTIONS_INSTANCES"] = "Окна:"
L["STRING_OPTIONS_LEFT_MENU_ANCHOR"] = "Настройки меню:"
L["STRING_OPTIONS_LOCKSEGMENTS"] = "Заблокировать сегменты"
L["STRING_OPTIONS_LOCKSEGMENTS_DESC"] = "Если включить, то при изменении сегмента все другие окна также будут переходить к выбранной части."
L["STRING_OPTIONS_MANAGE_BOOKMARKS"] = "Управление закладками"
L["STRING_OPTIONS_MAXINSTANCES"] = "Количество окон"
L["STRING_OPTIONS_MAXINSTANCES_DESC"] = [=[Ограничить количество окон, которые можно создать. 

Вы сможете управлять окнами через меню 'Управление окном'.]=]
L["STRING_OPTIONS_MAXSEGMENTS"] = "Количество сегментов"
L["STRING_OPTIONS_MAXSEGMENTS_DESC"] = "Количество сегментов, которые будут сохраняться."
L["STRING_OPTIONS_MENU_ALPHA"] = "Взаимодействия мыши:"
L["STRING_OPTIONS_MENU_ANCHOR"] = "Кнопки крепятся к правой стороне "
L["STRING_OPTIONS_MENU_ANCHOR_DESC"] = "Если стоит галочка, то кнопки прикреплены к правой стороне окна."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORX"] = "Положение X"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORX_DESC"] = "Настройка положения текста на оси X."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORY"] = "Положение Y"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ANCHORY_DESC"] = "Настройка положения текста на оси Y."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENABLED_DESC"] = "Активно показывает название текущего монитора отображаемого в окне."
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENCOUNTERTIMER"] = "Таймер боя"
L["STRING_OPTIONS_MENU_ATTRIBUTE_ENCOUNTERTIMER_DESC"] = "Когда включено, то показывается секундомер с левой стороны текста."
L["STRING_OPTIONS_MENU_ATTRIBUTE_FONT"] = "Шрифт текста"
L["STRING_OPTIONS_MENU_ATTRIBUTE_FONT_DESC"] = "Выберите шрифт текста"
L["STRING_OPTIONS_MENU_ATTRIBUTE_SHADOW_DESC"] = "Включение или выключение теней в тексте."
L["STRING_OPTIONS_MENU_ATTRIBUTE_SIDE"] = "Прикрепить к верхней стороне"
L["STRING_OPTIONS_MENU_ATTRIBUTE_SIDE_DESC"] = "Выберите, куда будет крепиться текст."
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTCOLOR"] = "Цвет текста"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTCOLOR_DESC"] = "Изменить цвет текста."
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTSIZE"] = "Размера текста"
L["STRING_OPTIONS_MENU_ATTRIBUTE_TEXTSIZE_DESC"] = "Настройка размера текста."
L["STRING_OPTIONS_MENU_ATTRIBUTESETTINGS_ANCHOR"] = "Настройки:"
L["STRING_OPTIONS_MENU_AUTOHIDE_DESC"] = "Скрывать кнопки автоматически, когда курсор мыши покидает окно и показывать, когда вы снова взаимодействуйте с окном."
L["STRING_OPTIONS_MENU_AUTOHIDE_LEFT"] = "Авто-скрытие кнопок"
L["STRING_OPTIONS_MENU_BUTTONSSIZE_DESC"] = "Выберите размер кнопок. Также изменяются кнопки, добавленные с помощью плагинов."
L["STRING_OPTIONS_MENU_FONT_FACE"] = "Шрифт текста меню"
L["STRING_OPTIONS_MENU_FONT_FACE_DESC"] = "Изменить шрифт, используемый во всех меню."
L["STRING_OPTIONS_MENU_FONT_SIZE"] = "Размер текста меню"
L["STRING_OPTIONS_MENU_FONT_SIZE_DESC"] = "Изменить размер шрифта во всех меню."
L["STRING_OPTIONS_MENU_SHOWBUTTONS"] = "Показывать кнопки"
L["STRING_OPTIONS_MENU_SHOWBUTTONS_DESC"] = "Выберите, какие кнопки показывать в строке заголовка."
L["STRING_OPTIONS_MENU_X"] = "Положение X"
L["STRING_OPTIONS_MENU_X_DESC"] = "Изменение положения оси X."
L["STRING_OPTIONS_MENU_Y"] = "Положение Y"
L["STRING_OPTIONS_MENU_Y_DESC"] = "Изменение положения оси Y."
L["STRING_OPTIONS_MENUS_SHADOW"] = "Тень"
L["STRING_OPTIONS_MENUS_SHADOW_DESC"] = "Добавить тонкую тень границ на все кнопки."
L["STRING_OPTIONS_MENUS_SPACEMENT"] = "Расстояние"
L["STRING_OPTIONS_MENUS_SPACEMENT_DESC"] = "Управляет расстоянием между кнопками."
L["STRING_OPTIONS_MICRODISPLAY_ANCHOR"] = "Микро отображения:"
L["STRING_OPTIONS_MICRODISPLAY_LOCK"] = "Заблокировать микро отображения"
L["STRING_OPTIONS_MICRODISPLAY_LOCK_DESC"] = "Когда заблокировано, они не будут взаимодействовать с мышью и кликами. "
L["STRING_OPTIONS_MICRODISPLAYS_DROPDOWN_TOOLTIP"] = "Выберите микро отображение, которое вы хотите видеть на данной стороне."
L["STRING_OPTIONS_MICRODISPLAYS_OPTION_TOOLTIP"] = "Задайте настойки для данного микро отображения."
L["STRING_OPTIONS_MICRODISPLAYS_SHOWHIDE_TOOLTIP"] = "Показать или скрыть данное микро отображение"
L["STRING_OPTIONS_MICRODISPLAYS_WARNING"] = [=[|cFFFFFF00Заметка|r: микро отображения не могут показаны,
потому что они прикреплены снизу
и строка состояния отключена.]=]
L["STRING_OPTIONS_MICRODISPLAYSSIDE"] = "Микро отображения сверху"
L["STRING_OPTIONS_MICRODISPLAYSSIDE_DESC"] = "Разместить микро отображения на верхней или нижней стороне окна."
L["STRING_OPTIONS_MICRODISPLAYWARNING"] = "Микро отображения не показываются, потому что строка состояния отключена."
L["STRING_OPTIONS_MINIMAP"] = "Показать значок"
L["STRING_OPTIONS_MINIMAP_ACTION"] = "По Клику"
L["STRING_OPTIONS_MINIMAP_ACTION_DESC"] = "Выберите, что будет происходить, когда значок у миникарты будет нажат левой кнопкой мыши."
L["STRING_OPTIONS_MINIMAP_ACTION1"] = "Открыть Панель настроек"
L["STRING_OPTIONS_MINIMAP_ACTION2"] = "Сбросить сегменты"
L["STRING_OPTIONS_MINIMAP_ACTION3"] = "Показать/скрыть Окна"
L["STRING_OPTIONS_MINIMAP_ANCHOR"] = "Миникарта"
L["STRING_OPTIONS_MINIMAP_DESC"] = "Показать или скрыть значок у миникарты."
L["STRING_OPTIONS_NICKNAME"] = "Никнейм"
L["STRING_OPTIONS_NICKNAME_DESC"] = [=[Настройте никнейм под себя.

Никнеймы отправляются членам гильдии и Details! использует их вместо имени персонажа.]=]
L["STRING_OPTIONS_OPEN_ROWTEXT_EDITOR"] = "Текстовый редактор строк"
L["STRING_OPTIONS_OPEN_TEXT_EDITOR"] = "Открыть редактор текста"
L["STRING_OPTIONS_OVERALL_ALL"] = "Все сегменты"
L["STRING_OPTIONS_OVERALL_ALL_DESC"] = "Все сегменты идут в зачет всеобщих данных"
L["STRING_OPTIONS_OVERALL_ANCHOR"] = "Всеобщие данные:"
L["STRING_OPTIONS_OVERALL_CHALLENGE"] = "Сбрасывать в режиме испытаний (эпох+)"
L["STRING_OPTIONS_OVERALL_CHALLENGE_DESC"] = "Когда включено, всеобщие данные сбрасываются автоматически, когда начинается новый режим испытаний (эпох+)."
L["STRING_OPTIONS_OVERALL_DUNGEONBOSS"] = "Боссы подземелий"
L["STRING_OPTIONS_OVERALL_DUNGEONBOSS_DESC"] = "Сегменты с боссами подземелий идут в зачет всеобщих данных."
L["STRING_OPTIONS_OVERALL_DUNGEONCLEAN"] = "Треш подземелий"
L["STRING_OPTIONS_OVERALL_DUNGEONCLEAN_DESC"] = "Сегменты с трешем подземелий идут в зачет всеобщих данных."
L["STRING_OPTIONS_OVERALL_LOGOFF"] = "Сбрасывать при выходе"
L["STRING_OPTIONS_OVERALL_LOGOFF_DESC"] = "Когда включено, всеобщие данные сбрасываются автоматически, когда вы выходите из игрового мира."
L["STRING_OPTIONS_OVERALL_NEWBOSS"] = "Сбрасывать на новом боссе"
L["STRING_OPTIONS_OVERALL_NEWBOSS_DESC"] = "Когда включено, всеобщие данные сбрасываются автоматически, когда начинается бой с другим рейдовым боссом."
L["STRING_OPTIONS_OVERALL_RAIDBOSS"] = "Рейдовые боссы"
L["STRING_OPTIONS_OVERALL_RAIDBOSS_DESC"] = "Сегменты с рейдовыми боями идут в зачет всеобщих данных."
L["STRING_OPTIONS_OVERALL_RAIDCLEAN"] = "Рейдовый треш"
L["STRING_OPTIONS_OVERALL_RAIDCLEAN_DESC"] = "Сегменты с рейдовым трешем идут в зачет всеобщих данных."
L["STRING_OPTIONS_PANIMODE"] = "Режим \"ПАНИКА!!!\""
L["STRING_OPTIONS_PANIMODE_DESC"] = "Если включено и Вас выбросило из игры (из-за дисконнекта, к примеру), когда вы находились в бою с боссом, то все сегменты будут сброшены. Это поможет процессу выхода произойти быстрее."
L["STRING_OPTIONS_PERCENT_TYPE"] = "Тип процентов"
L["STRING_OPTIONS_PERCENT_TYPE_DESC"] = [=[Изменить метод процентов:

|cFFFFFF00Relative Total|r: процент, показывающий активную часть от общего количества сделанного всеми участника рейда.

|cFFFFFF00Relative Top Player|r: процент относительно значений лучшего игрока.]=]
L["STRING_OPTIONS_PERFORMANCE_ANCHOR"] = "Общее:"
L["STRING_OPTIONS_PERFORMANCE_ARENA"] = "Арена"
L["STRING_OPTIONS_PERFORMANCE_BG15"] = "Поле боя (15)"
L["STRING_OPTIONS_PERFORMANCE_BG40"] = "Поле боя (40)"
L["STRING_OPTIONS_PERFORMANCE_DUNGEON"] = "Подземелье"
L["STRING_OPTIONS_PERFORMANCE_ERASEWORLD"] = "Авто-сброс мировых сегментов"
L["STRING_OPTIONS_PERFORMANCE_ERASEWORLD_DESC"] = "Автоматический сброс сегментов боя в открытом мире."
L["STRING_OPTIONS_PERFORMANCE_MYTHIC"] = "Эпохальный"
L["STRING_OPTIONS_PERFORMANCE_RAID15"] = "Рейд (10-15)"
L["STRING_OPTIONS_PERFORMANCE_RAID30"] = "Рейд (16-30)"
L["STRING_OPTIONS_PERFORMANCE_RF"] = "Поиск рейда (ЛФР)"
L["STRING_OPTIONS_PERFORMANCE_TYPES"] = "Тип"
L["STRING_OPTIONS_PICONS_DIRECTION"] = "Плагины крепятся к правой стороне"
L["STRING_OPTIONS_PICONS_DIRECTION_DESC"] = "Если стоит галочка, то кнопки плагинов отображаются с правой стороны меню кнопок."
L["STRING_OPTIONS_PLUGINS"] = "Плагины"
L["STRING_OPTIONS_PLUGINS_AUTHOR"] = "Автор"
L["STRING_OPTIONS_PLUGINS_NAME"] = "Название"
L["STRING_OPTIONS_PLUGINS_OPTIONS"] = "Опции"
L["STRING_OPTIONS_PLUGINS_RAID_ANCHOR"] = "Рейдовые плагины"
L["STRING_OPTIONS_PLUGINS_SOLO_ANCHOR"] = "Плагины одиночной игры"
L["STRING_OPTIONS_PLUGINS_VERSION"] = "Версия"
L["STRING_OPTIONS_PROFILE_COPYOKEY"] = "Профиль успешно скопирован."
L["STRING_OPTIONS_PROFILE_FIELDEMPTY"] = "В поле с названием пусто."
L["STRING_OPTIONS_PROFILE_GLOBAL"] = "Выбрать профиль, который будет использоваться всеми персонажами."
L["STRING_OPTIONS_PROFILE_LOADED"] = "Профиль загружен:"
L["STRING_OPTIONS_PROFILE_NOTCREATED"] = "Профиль не создан."
L["STRING_OPTIONS_PROFILE_POSSIZE"] = "Сохранить размер и положение"
L["STRING_OPTIONS_PROFILE_POSSIZE_DESC"] = "Сохранить положение окна и размеры в рамках профиля. Если выключено, каждый персонаж будет обладать своим показателями."
L["STRING_OPTIONS_PROFILE_REMOVEOKEY"] = "Профиль успешно удален."
L["STRING_OPTIONS_PROFILE_SELECT"] = "выбрать профиль."
L["STRING_OPTIONS_PROFILE_SELECTEXISTING"] = "Выберите существующий профиль или можете продолжить использовать новый профиль на данной персонаже:"
L["STRING_OPTIONS_PROFILE_USENEW"] = "Использовать новый профиль"
L["STRING_OPTIONS_PROFILES_ANCHOR"] = "Настройки:"
L["STRING_OPTIONS_PROFILES_COPY"] = "Скопировать профиль из"
L["STRING_OPTIONS_PROFILES_COPY_DESC"] = "Скопировать все настройки из выбранного профиля в текущий, все значения будут переписаны."
L["STRING_OPTIONS_PROFILES_CREATE"] = "Создать профиль"
L["STRING_OPTIONS_PROFILES_CREATE_DESC"] = "Создать новый профиль."
L["STRING_OPTIONS_PROFILES_CURRENT"] = "Текущий профиль:"
L["STRING_OPTIONS_PROFILES_CURRENT_DESC"] = "Наименование текущего активного профиля."
L["STRING_OPTIONS_PROFILES_ERASE"] = "Удалить профиль"
L["STRING_OPTIONS_PROFILES_ERASE_DESC"] = "Удалить выбранный профиль."
L["STRING_OPTIONS_PROFILES_RESET"] = "Сбросить текущий профиль"
L["STRING_OPTIONS_PROFILES_RESET_DESC"] = "Сбросить все настройки текущего профиля к стандартным показателям."
L["STRING_OPTIONS_PROFILES_SELECT"] = "Выбрать профиль"
L["STRING_OPTIONS_PROFILES_SELECT_DESC"] = "Загрузите существующий профиль. Если вы используйте один и тот же профиль на всех персонажах (опция \"Использовать на всех персонажах\"), то создается исключение для этого персонажа."
L["STRING_OPTIONS_PROFILES_TITLE"] = "Профили"
L["STRING_OPTIONS_PROFILES_TITLE_DESC"] = "Данные опции позволяют Вам управлять настройками и расшаривать их между различными персонажами."
L["STRING_OPTIONS_PS_ABBREVIATE"] = "Формат чисел"
L["STRING_OPTIONS_PS_ABBREVIATE_COMMA"] = "Запятая"
L["STRING_OPTIONS_PS_ABBREVIATE_DESC"] = [=[Выберите метод сокращения.

|cFFFFFF00ToK I|r:
520600 = 520.6K
19530000 = 19.53M

|cFFFFFF00ToK II|r:
520600 = 520K
19530000 = 19.53M

|cFFFFFF00ToM I|r:
520600 = 520.6K
19530000 = 19M

|cFFFFFF00Запятая|r:
19530000 = 19,530,000

|cFFFFFF00Нижняя|r и |cFFFFFF00Верхняя|r: определяет, как будут написаны 'K' и 'M' в нижнем или верхнем регистре.]=]
L["STRING_OPTIONS_PS_ABBREVIATE_NONE"] = "Никакой"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK"] = "ToK I Верхняя"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK0"] = "ToM I Верхняя"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK0MIN"] = "ToM I Нижняя"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK2"] = "ToK II Верхняя"
L["STRING_OPTIONS_PS_ABBREVIATE_TOK2MIN"] = "ToK II Нижняя"
L["STRING_OPTIONS_PS_ABBREVIATE_TOKMIN"] = "ToK I Нижняя"
L["STRING_OPTIONS_PVPFRAGS"] = "Только PvP убийства "
L["STRING_OPTIONS_REALMNAME"] = "Убрать название сервера"
L["STRING_OPTIONS_REALMNAME_DESC"] = [=[Когда включено, название сервера игрока не отображается.

|cFFFFFF00Выключено|r: Вася-Гром
|cFFFFFF00Включено|r: Вася]=]
L["STRING_OPTIONS_REPORT_ANCHOR"] = "Отчет:"
L["STRING_OPTIONS_REPORT_HEALLINKS"] = "Ссылки на вспомогательные заклинания"
L["STRING_OPTIONS_REPORT_HEALLINKS_DESC"] = "Когда отправляется отчет и при это данная опция включена, |cFF55FF55вспомогательные|r заклинания отображаются в виде ссылки вместо его названия."
L["STRING_OPTIONS_REPORT_SCHEMA"] = "Формат"
L["STRING_OPTIONS_REPORT_SCHEMA_DESC"] = "Выберите формат текста, отправляемого в канал чата."
L["STRING_OPTIONS_REPORT_SCHEMA1"] = "Всего / В секунду / Процент"
L["STRING_OPTIONS_REPORT_SCHEMA2"] = "Процент / В секунду / Всего"
L["STRING_OPTIONS_REPORT_SCHEMA3"] = "Процент / Всего / В секунду"
L["STRING_OPTIONS_RESET_TO_DEFAULT"] = "Сбросить к значениям по умолчанию"
L["STRING_OPTIONS_ROW_SETTING_ANCHOR"] = "Макет:"
L["STRING_OPTIONS_ROWADV_TITLE"] = "Дополнительные настройки полос"
L["STRING_OPTIONS_ROWADV_TITLE_DESC"] = "Данные опции позволяют вам глубже изменять полосы."
L["STRING_OPTIONS_RT_COOLDOWN1"] = "%s использован(а) на %s!"
L["STRING_OPTIONS_RT_COOLDOWN2"] = "%s использован(а)!"
L["STRING_OPTIONS_RT_COOLDOWNS_ANCHOR"] = "Объявлять кулдауны:"
L["STRING_OPTIONS_RT_COOLDOWNS_CHANNEL"] = "Канал"
L["STRING_OPTIONS_RT_COOLDOWNS_CHANNEL_DESC"] = [=[Какой канал чата будет использован для отправления сообщения.

Если выбран |cFFFFFF00Наблюдатель|r, то все кулдауны будут показываться только для вас в чате, кроме индивидуальных кулдаунов.]=]
L["STRING_OPTIONS_RT_COOLDOWNS_CUSTOM"] = "Ваш текст"
L["STRING_OPTIONS_RT_COOLDOWNS_CUSTOM_DESC"] = [=[Введите свою фразу, которая будет использоваться при отправлении.

Используйте |cFFFFFF00{spell}|r для добавления названия заклинания кулдауна.

Используйте |cFFFFFF00{target}|r для добавления имени цели.]=]
L["STRING_OPTIONS_RT_COOLDOWNS_ONOFF_DESC"] = "Когда вы используйте кулдаун, сообщение отправляется в выбранный канал."
L["STRING_OPTIONS_RT_COOLDOWNS_SELECT"] = "Игнорируемый список кулдаунов"
L["STRING_OPTIONS_RT_COOLDOWNS_SELECT_DESC"] = "Выберите, какие кулдауны будут игнорироваться."
L["STRING_OPTIONS_RT_DEATH_MSG"] = "Details! %s умер(ла)"
L["STRING_OPTIONS_RT_DEATHS_ANCHOR"] = "Объявлять смерти"
L["STRING_OPTIONS_RT_DEATHS_FIRST"] = "Только первые"
L["STRING_OPTIONS_RT_DEATHS_FIRST_DESC"] = "Сколько первых X смертей за бой будет объявлено."
L["STRING_OPTIONS_RT_DEATHS_HITS"] = "Количество ударов"
L["STRING_OPTIONS_RT_DEATHS_HITS_DESC"] = "Когда объявляется смерть, показывать количество ударов."
L["STRING_OPTIONS_RT_DEATHS_ONOFF_DESC"] = "Когда член рейда умирает, отправляется сообщение в канал рейда о том, что данный игрок умер."
L["STRING_OPTIONS_RT_DEATHS_WHERE1"] = "Рейд и Подземелье"
L["STRING_OPTIONS_RT_DEATHS_WHERE2"] = "Только Рейд"
L["STRING_OPTIONS_RT_DEATHS_WHERE3"] = "Только Подземелье"
L["STRING_OPTIONS_RT_FIRST_HIT"] = "Первый удар"
L["STRING_OPTIONS_RT_FIRST_HIT_DESC"] = "Писать в панели чата (|cFFFFFF00только для вас|r), кто нанёс первый удар, обычно это тот, кто начинает бой."
L["STRING_OPTIONS_RT_IGNORE_TITLE"] = "Игнорировать кулдауны"
L["STRING_OPTIONS_RT_INFOS"] = "Дополнительная информация:"
L["STRING_OPTIONS_RT_INFOS_PREPOTION"] = "Пре поты(зелья) использованы"
L["STRING_OPTIONS_RT_INFOS_PREPOTION_DESC"] = "Если включено и после боя в рейде, то в вашем чате показывается (|cFFFFFF00только для вас|r), кто использовал зелья до пула."
L["STRING_OPTIONS_RT_INTERRUPT"] = "%s прервано!"
L["STRING_OPTIONS_RT_INTERRUPT_ANCHOR"] = "Объявлять о прерываниях:"
L["STRING_OPTIONS_RT_INTERRUPT_NEXT"] = "Следующий: %s"
L["STRING_OPTIONS_RT_INTERRUPTS_CHANNEL"] = "Канал"
L["STRING_OPTIONS_RT_INTERRUPTS_CHANNEL_DESC"] = [=[Какой канал чата будет использован для отправления сообщения.

Если выбран |cFFFFFF00Наблюдатель|r, то все прерывания будут показываться только для вас в чате.]=]
L["STRING_OPTIONS_RT_INTERRUPTS_CUSTOM"] = "Пользовательский текст"
L["STRING_OPTIONS_RT_INTERRUPTS_CUSTOM_DESC"] = [=[Введите свою фразу, которая будет использоваться при отправлении.

Используйте |cFFFFFF00{spell}|r для добавления названия заклинания прерывания.

Используйте |cFFFFFF00{next}|r для добавления имени следующего игрока написанного в поле 'следующий игрок'.]=]
L["STRING_OPTIONS_RT_INTERRUPTS_NEXT"] = "Следующий игрок"
L["STRING_OPTIONS_RT_INTERRUPTS_NEXT_DESC"] = "При последовательных прерываниях, напишите имя игрока, ответственного за следующее прерывание."
L["STRING_OPTIONS_RT_INTERRUPTS_ONOFF_DESC"] = "Когда вы успешно прерываете заклинание, отправляется сообщение."
L["STRING_OPTIONS_RT_INTERRUPTS_WHISPER"] = "Шепнуть"
L["STRING_OPTIONS_RT_OTHER_ANCHOR"] = "Общее:"
L["STRING_OPTIONS_RT_TITLE"] = "Инструменты для рейдеров"
L["STRING_OPTIONS_RT_TITLE_DESC"] = "Данная панель поможет вам активировать несколько механизмов, которые помогут вам в рейде."
L["STRING_OPTIONS_SAVELOAD"] = "Сохранить и загрузить"
L["STRING_OPTIONS_SAVELOAD_APPLYALL"] = "Текущий скин был применен ко всем другим окнам."
L["STRING_OPTIONS_SAVELOAD_APPLYALL_DESC"] = "Применить текущий скин ко всем созданным окнам."
L["STRING_OPTIONS_SAVELOAD_APPLYTOALL"] = "Применить ко всем окнам"
L["STRING_OPTIONS_SAVELOAD_CREATE_DESC"] = "Сохранить текущий скин в виде готового скина, вы можете экспортировать и сохранить его в виде резервной копии."
L["STRING_OPTIONS_SAVELOAD_DESC"] = "Данные опции позволяют вам сохранить и загрузить предварительные настройки."
L["STRING_OPTIONS_SAVELOAD_ERASE_DESC"] = "Данная опция сбрасывает предыдущие сохранённые скины."
L["STRING_OPTIONS_SAVELOAD_EXPORT"] = "Экспорт"
L["STRING_OPTIONS_SAVELOAD_EXPORT_COPY"] = "Нажмите CTRL + C"
L["STRING_OPTIONS_SAVELOAD_EXPORT_DESC"] = "Сохранить скин в текстовом формате."
L["STRING_OPTIONS_SAVELOAD_IMPORT"] = "Импорт"
L["STRING_OPTIONS_SAVELOAD_IMPORT_DESC"] = "Импорт скина в текстовом формате."
L["STRING_OPTIONS_SAVELOAD_IMPORT_OKEY"] = "Скин успешно импортирован в ваш список сохранённых скинов. Теперь вы можете его применить в поле 'Применить'."
L["STRING_OPTIONS_SAVELOAD_LOAD"] = "Применить"
L["STRING_OPTIONS_SAVELOAD_LOAD_DESC"] = "Выберите один из сохранённых скинов, чтобы применить его к текущему выбранному окну."
L["STRING_OPTIONS_SAVELOAD_MAKEDEFAULT"] = "Установить стандарт"
L["STRING_OPTIONS_SAVELOAD_PNAME"] = "Название"
L["STRING_OPTIONS_SAVELOAD_REMOVE"] = "Сбросить"
L["STRING_OPTIONS_SAVELOAD_RESET"] = "Загрузить стандартный скин"
L["STRING_OPTIONS_SAVELOAD_SAVE"] = "сохранить"
L["STRING_OPTIONS_SAVELOAD_SKINCREATED"] = "Скин создан."
L["STRING_OPTIONS_SAVELOAD_STD_DESC"] = [=[Установить текущий внешний вид, как стандартный скин.

Данный скин применяется ко всем новым созданным окнам.]=]
L["STRING_OPTIONS_SAVELOAD_STDSAVE"] = "Стандартный скин сохранен, новые окна будут использовать этот скин по умолчанию."
L["STRING_OPTIONS_SCROLLBAR"] = "Полоса прокрутки"
L["STRING_OPTIONS_SCROLLBAR_DESC"] = [=[Включить или выключить полосу прокрутки.

По умолчанию, полосы прокрутки Details! заменяются механизмом, который растягивается окном.

|cFFFFFF00Отрезок управления|r находится вне и над кнопками окна/меню (слева от кнопки закрытия).]=]
L["STRING_OPTIONS_SEGMENTSSAVE"] = "Сохранение сегментов"
L["STRING_OPTIONS_SENDFEEDBACK"] = "Отзыв"
L["STRING_OPTIONS_SHOW_SIDEBARS"] = "Показывать границы:"
L["STRING_OPTIONS_SHOW_SIDEBARS_DESC"] = "Показать или скрыть границы окна."
L["STRING_OPTIONS_SHOW_STATUSBAR"] = "Показать строку состояния"
L["STRING_OPTIONS_SHOW_STATUSBAR_DESC"] = "Показать или скрыть нижнюю строку состояния."
L["STRING_OPTIONS_SHOW_TOTALBAR_COLOR_DESC"] = "Выбрать цвет. Значение прозрачности следует строки альфа-значения."
L["STRING_OPTIONS_SHOW_TOTALBAR_DESC"] = "Показать или скрыть полосу итога."
L["STRING_OPTIONS_SHOW_TOTALBAR_ICON"] = "Иконка"
L["STRING_OPTIONS_SHOW_TOTALBAR_ICON_DESC"] = "Выберите иконка, которая будет отображаться в полосе итога."
L["STRING_OPTIONS_SHOW_TOTALBAR_INGROUP"] = "Только в группе"
L["STRING_OPTIONS_SHOW_TOTALBAR_INGROUP_DESC"] = "Полоса итога не показывается, когда вы не в группе."
L["STRING_OPTIONS_SIZE"] = "Размер"
L["STRING_OPTIONS_SKIN_A"] = "Настройки: Скины"
L["STRING_OPTIONS_SKIN_A_DESC"] = "Данные опции позволяет вам изменять скин."
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON1"] = "Выравнивание по правому чату"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON1_DESC"] = "Перемещение и изменение размера окон |cFFFFFF00#1|r и |cFFFFFF00#2|r над правым чатом."
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON2"] = "Сделать границу подсказки тёмной"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON2_DESC"] = [=[Изменения в подсказках:

Цвет границы: |cFFFFFF00Чёрный|r.
Размер границы: |cFFFFFF0016|r.
Текстура: |cFFFFFF00Blizzard Tooltip|r.]=]
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"] = "Удалить границу подсказки"
L["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"] = [=[Изменения в подсказках:

Цвет границы: |cFFFFFF00Прозрачный|r.]=]
L["STRING_OPTIONS_SKIN_EXTRA_OPTIONS_ANCHOR"] = "Настройки скина:"
L["STRING_OPTIONS_SKIN_LOADED"] = "скин успешно загружен."
L["STRING_OPTIONS_SKIN_PRESETS_ANCHOR"] = "Сохранить скин:"
L["STRING_OPTIONS_SKIN_REMOVED"] = "скин удален."
L["STRING_OPTIONS_SKIN_RESET_TOOLTIP"] = "Сбросить границу подсказки"
L["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"] = "Установить цвет границы и текстуру подсказки к значениям по умолчанию."
L["STRING_OPTIONS_SKIN_SELECT"] = "выбрать скин"
L["STRING_OPTIONS_SKIN_SELECT_ANCHOR"] = "Выбор скина:"
L["STRING_OPTIONS_SPELL_ADD"] = "Добавить"
L["STRING_OPTIONS_SPELL_ADDICON"] = "Новая иконка:"
L["STRING_OPTIONS_SPELL_ADDNAME"] = "Новое название:"
L["STRING_OPTIONS_SPELL_ADDSPELL"] = "Добавить заклинание"
L["STRING_OPTIONS_SPELL_ADDSPELLID"] = "ID заклинания:"
L["STRING_OPTIONS_SPELL_CLOSE"] = "Закрыть"
L["STRING_OPTIONS_SPELL_ICON"] = "Иконка"
L["STRING_OPTIONS_SPELL_INDEX"] = "Индекс"
L["STRING_OPTIONS_SPELL_NAME"] = "Название"
L["STRING_OPTIONS_SPELL_REMOVE"] = "Удалить"
L["STRING_OPTIONS_SPELL_RESET"] = "Сбросить"
L["STRING_OPTIONS_SPELL_SPELLID"] = "ID заклинания"
L["STRING_OPTIONS_STRETCH"] = "Кнопка 'Растягиватель' сверху"
L["STRING_OPTIONS_STRETCH_DESC"] = "Расположить кнопку растягивания в верхней части окна."
L["STRING_OPTIONS_STRETCHTOP"] = "Кнопка 'Растягиватель' поверх остальных фреймов"
L["STRING_OPTIONS_STRETCHTOP_DESC"] = [=[Кнопка растягивания будет размещена на ПОЛНОЭКРАННОМ слое и всегда будет оставаться выше остальных рамок.

|cFFFFFF00Важно|r: Перемещение захвата на верхний слой, он может оставаться перед другими рамками, как сумки, используйте только если вам действительно нужно.]=]
L["STRING_OPTIONS_SWITCH_ANCHOR"] = "Переключатели:"
L["STRING_OPTIONS_TABEMB_ANCHOR"] = "Встраивание во вкладку чата"
L["STRING_OPTIONS_TABEMB_ENABLED_DESC"] = "Если включено, то одно или несколько окон прикрепляются к вкладке чата."
L["STRING_OPTIONS_TABEMB_SINGLE"] = "Единственное окно"
L["STRING_OPTIONS_TABEMB_SINGLE_DESC"] = "Если включено, то только одно окно прикрепляется вместо двух."
L["STRING_OPTIONS_TABEMB_TABNAME"] = "Название вкладки"
L["STRING_OPTIONS_TABEMB_TABNAME_DESC"] = "Название вкладки к которой будут прикрепляться окна."
L["STRING_OPTIONS_TESTBARS"] = "Создать тестовые полосы"
L["STRING_OPTIONS_TEXT"] = "Настройки текста полос"
L["STRING_OPTIONS_TEXT_DESC"] = "Данные опции управляют внешним видом текста полос окна."
L["STRING_OPTIONS_TEXT_FIXEDCOLOR"] = "Цвет текста"
L["STRING_OPTIONS_TEXT_FIXEDCOLOR_DESC"] = [=[Изменить цвет шрифта левого и правого текстов.

Игнорируется, если включен |cFFFFFFFFцвет по классу игрока|r.]=]
L["STRING_OPTIONS_TEXT_FONT"] = "Шрифт текста"
L["STRING_OPTIONS_TEXT_FONT_DESC"] = "Изменить шрифт левого и правого текстов."
L["STRING_OPTIONS_TEXT_LCLASSCOLOR_DESC"] = "Если включено, то для текста всегда используется цвет класса игрока."
L["STRING_OPTIONS_TEXT_LEFT_ANCHOR"] = "Текст слева:"
L["STRING_OPTIONS_TEXT_LOUTILINE"] = "Тень текста"
L["STRING_OPTIONS_TEXT_LOUTILINE_DESC"] = "Включить или выключить тень для левого текста."
L["STRING_OPTIONS_TEXT_LPOSITION"] = "Показывать номер"
L["STRING_OPTIONS_TEXT_LPOSITION_DESC"] = "Показывать номер места игрока с левой стороны."
L["STRING_OPTIONS_TEXT_RIGHT_ANCHOR"] = "Текст справа:"
L["STRING_OPTIONS_TEXT_ROUTILINE_DESC"] = "Включить или выключить тень для правого текста."
L["STRING_OPTIONS_TEXT_ROWICONS_ANCHOR"] = "Иконки:"
L["STRING_OPTIONS_TEXT_SHOW_BRACKET"] = "Скобка"
L["STRING_OPTIONS_TEXT_SHOW_BRACKET_DESC"] = "Выберите символ, используемый для открытия и закрытия блоков: урон в секунду и проценты."
L["STRING_OPTIONS_TEXT_SHOW_PERCENT"] = "Показывать проценты"
L["STRING_OPTIONS_TEXT_SHOW_PERCENT_DESC"] = "Показывать проценты."
L["STRING_OPTIONS_TEXT_SHOW_PS"] = "Показывать урон в секунду"
L["STRING_OPTIONS_TEXT_SHOW_PS_DESC"] = "Показывать 'Урон в Секунду' и 'Исцеление в Секунду'."
L["STRING_OPTIONS_TEXT_SHOW_SEPARATOR"] = "Разделитель"
L["STRING_OPTIONS_TEXT_SHOW_SEPARATOR_DESC"] = "Выберите символ, используемых для разделения показателей урона в секунду от процентов."
L["STRING_OPTIONS_TEXT_SHOW_TOTAL"] = "Показывать итог"
L["STRING_OPTIONS_TEXT_SHOW_TOTAL_DESC"] = [=[Показывать итоговые данные проделанные игроком.

Пример: всего нанесено урона, всего исцеления получено.]=]
L["STRING_OPTIONS_TEXT_SIZE"] = "Размер текста"
L["STRING_OPTIONS_TEXT_SIZE_DESC"] = "Изменить размер левого и правого текстов."
L["STRING_OPTIONS_TEXT_TEXTUREL_ANCHOR"] = "Фон:"
L["STRING_OPTIONS_TEXT_TEXTUREU_ANCHOR"] = "Внешний вид:"
L["STRING_OPTIONS_TEXTEDITOR_COMMA"] = "Запятая"
L["STRING_OPTIONS_TIMEMEASURE"] = "Измерение времени"
L["STRING_OPTIONS_TIMEMEASURE_DESC"] = [=[|cFFFFFF00Активный|r: таймер каждого игрока рейдовой группы будет приостанавливаться при прекращении активности, и снова рассчитываться при ее возобновлении. Распространенный способ измерения УВС и ИВС

|cFFFFFF00Эффективный|r: используется для рейтингов. Данный метод продолжает считывать УВС и ИВС всех членов рейдовой группы, даже тех кто неактивен.]=]
L["STRING_OPTIONS_TOOLBARSIDE"] = "Заголовок сверху"
L["STRING_OPTIONS_TOOLBARSIDE_DESC"] = [=[Размещение строки заголовка в верхней части окна.

|cFFFFFF00Важно|r: при переключении положения, текст заголовка не меняется, проверьте раздел |cFFFFFF00Заголовок: Текст|r для большего количества опций.]=]
L["STRING_OPTIONS_TOOLS_ANCHOR"] = "Инструменты:"
L["STRING_OPTIONS_TOOLTIP_ANCHOR"] = "Настройки:"
L["STRING_OPTIONS_TOOLTIP_ANCHORTEXTS"] = "Тексты:"
L["STRING_OPTIONS_TOOLTIPS_ABBREVIATION"] = "Тип сокращений"
L["STRING_OPTIONS_TOOLTIPS_ABBREVIATION_DESC"] = "Выберите формат чисел, отображаемый в подсказках."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_ATTACH"] = "Сторона подсказки"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_ATTACH_DESC"] = "Какая сторона подсказки будет использоваться для соответствия со стороной крепления."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_BORDER"] = "Граница:"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_POINT"] = "Крепление:"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_RELATIVE"] = "Сторона крепления"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_RELATIVE_DESC"] = "С какой стороны крепления будет размещена подсказка."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TEXT"] = "Крепление подсказки"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TEXT_DESC"] = "правый клик - заблок."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO"] = "Закрепить"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_CHOOSE"] = "Переместить точку крепления"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_CHOOSE_DESC"] = "Переместите позицию крепления, при выбранном крепеже |cFFFFFF00Точка на экране|r."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO_DESC"] = "Всплывающая подсказка крепится к наведённой полосе или к точке на экране игры."
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO1"] = "Полоса в окне"
L["STRING_OPTIONS_TOOLTIPS_ANCHOR_TO2"] = "Точка на экране"
L["STRING_OPTIONS_TOOLTIPS_ANCHORCOLOR"] = "заголовок"
L["STRING_OPTIONS_TOOLTIPS_BACKGROUNDCOLOR"] = "Фоновый цвет"
L["STRING_OPTIONS_TOOLTIPS_BACKGROUNDCOLOR_DESC"] = "Выберите фоновый цвет."
L["STRING_OPTIONS_TOOLTIPS_BORDER_COLOR_DESC"] = "Изменить цвет границы."
L["STRING_OPTIONS_TOOLTIPS_BORDER_SIZE_DESC"] = "Изменить размер границы."
L["STRING_OPTIONS_TOOLTIPS_BORDER_TEXTURE_DESC"] = "Изменить файл текстуры границы."
L["STRING_OPTIONS_TOOLTIPS_FONTCOLOR"] = "Цвет текста"
L["STRING_OPTIONS_TOOLTIPS_FONTCOLOR_DESC"] = "Измените цвет текста используемый в подсказках."
L["STRING_OPTIONS_TOOLTIPS_FONTFACE"] = "Шрифт текста"
L["STRING_OPTIONS_TOOLTIPS_FONTFACE_DESC"] = "Выбрать шрифт используемый в текстовых подсказках."
L["STRING_OPTIONS_TOOLTIPS_FONTSHADOW_DESC"] = "Включить или выключить тень текста."
L["STRING_OPTIONS_TOOLTIPS_FONTSIZE"] = "Размер текста"
L["STRING_OPTIONS_TOOLTIPS_FONTSIZE_DESC"] = "Увеличить или уменьшить размер текста подсказки."
L["STRING_OPTIONS_TOOLTIPS_IGNORESUBWALLPAPER"] = "Обои в подменю"
L["STRING_OPTIONS_TOOLTIPS_IGNORESUBWALLPAPER_DESC"] = "Если включить, то некоторые меню могут использовать собственные обои в подменю."
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE"] = "Метод расширения"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE_DESC"] = [=[Выберите метод расширения информации, отображаемой в подсказке.

|cFFFFFF00 Кнопки управления|r: окно подсказки расширяется, когда кнопки Shift, Ctrl или Alt нажаты.

|cFFFFFF00 Всегда расширено|r: вся информация всегда отображается в окне подсказки без каких-либо ограничений.

|cFFFFFF00 Только блок Shift|r: первый блок подсказки всегда расширен по умолчанию.

|cFFFFFF00 Только блок Ctrl|r: второй блок подсказки всегда расширен по умолчанию.

|cFFFFFF00 Только блок Alt|r: третий блок подсказки всегда расширен по умолчанию.]=]
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE1"] = "На Shift Ctrl Alt"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE2"] = "Всегда расширено"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE3"] = "Только блок Shift"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE4"] = "Только блок Ctrl"
L["STRING_OPTIONS_TOOLTIPS_MAXIMIZE5"] = "Только блок Alt"
L["STRING_OPTIONS_TOOLTIPS_MENU_WALLP"] = "Редактор обоев меню"
L["STRING_OPTIONS_TOOLTIPS_MENU_WALLP_DESC"] = "Изменить внешний вид обоев для меню в строке заголовка."
L["STRING_OPTIONS_TOOLTIPS_OFFSETX"] = "Расстояние по X"
L["STRING_OPTIONS_TOOLTIPS_OFFSETX_DESC"] = "Как далеко по горизонтали подсказка располагается от крепления."
L["STRING_OPTIONS_TOOLTIPS_OFFSETY"] = "Расстояние по Y"
L["STRING_OPTIONS_TOOLTIPS_OFFSETY_DESC"] = "Как далеко по вертикали подсказка располагается от крепления."
L["STRING_OPTIONS_TOOLTIPS_SHOWAMT"] = "Показывать количество"
L["STRING_OPTIONS_TOOLTIPS_SHOWAMT_DESC"] = "Показывать число, указывающее на количество заклинаний, целей и питомцев, которые имеются в подсказке."
L["STRING_OPTIONS_TOOLTIPS_TITLE"] = "Подсказки"
L["STRING_OPTIONS_TOOLTIPS_TITLE_DESC"] = "Данные опции управляют внешним видом подсказок."
L["STRING_OPTIONS_TOTALBAR_ANCHOR"] = "Полоса итога:"
L["STRING_OPTIONS_TRASH_SUPPRESSION"] = "Подавление треша"
L["STRING_OPTIONS_TRASH_SUPPRESSION_DESC"] = "На Х секунд, подавить автоматическое переключение, чтобы показать сегменты с трешем (только после победы над боссом)."
L["STRING_OPTIONS_WALLPAPER_ALPHA"] = "Альфа:"
L["STRING_OPTIONS_WALLPAPER_ANCHOR"] = "Выбор обоев:"
L["STRING_OPTIONS_WALLPAPER_BLUE"] = "Синий:"
L["STRING_OPTIONS_WALLPAPER_CBOTTOM"] = "Обрезать (|cFFC0C0C0снизу|r):"
L["STRING_OPTIONS_WALLPAPER_CLEFT"] = "Обрезать (|cFFC0C0C0слева|r):"
L["STRING_OPTIONS_WALLPAPER_CRIGHT"] = "Обрезать (|cFFC0C0C0справа|r):"
L["STRING_OPTIONS_WALLPAPER_CTOP"] = "Обрезать (|cFFC0C0C0сверху|r):"
L["STRING_OPTIONS_WALLPAPER_FILE"] = "Файл:"
L["STRING_OPTIONS_WALLPAPER_GREEN"] = "Зелёный"
L["STRING_OPTIONS_WALLPAPER_LOAD"] = "Загрузить изображение"
L["STRING_OPTIONS_WALLPAPER_LOAD_DESC"] = "Выберите изображение с вашего жёсткого диска для использование в качестве изображения."
L["STRING_OPTIONS_WALLPAPER_LOAD_EXCLAMATION"] = [=[Изображение необходимо:

-Быть в формате Truevision TGA (расширение .tga).
-Быть внутри корневой папки WOW/Interface/
-Размер должен быть 256x256 пикселей.
-Игра должна быть закрыта перед копированием файла.]=]
L["STRING_OPTIONS_WALLPAPER_LOAD_FILENAME"] = "Наименование файла:"
L["STRING_OPTIONS_WALLPAPER_LOAD_FILENAME_DESC"] = "Вставьте только имя файла, исключив путь и расширение."
L["STRING_OPTIONS_WALLPAPER_LOAD_OKEY"] = "Загрузить"
L["STRING_OPTIONS_WALLPAPER_LOAD_TITLE"] = "Из компьютера:"
L["STRING_OPTIONS_WALLPAPER_LOAD_TROUBLESHOOT"] = "Устранение проблем"
L["STRING_OPTIONS_WALLPAPER_LOAD_TROUBLESHOOT_TEXT"] = [=[Если обои отображаются в полностью зелёном цвете:

-Перезапустите клиент WoW.
-Убедитесь, что изображение 256 в ширину и 256 в высоту.
-Проверьте, находится ли изображение в формате .TGA и убедитесь, что оно сохранено с 32 бит/пиксель.
-Находится внутри папки Interface, для примера: C:/Program Files/World of Warcraft/Interface/]=]
L["STRING_OPTIONS_WALLPAPER_RED"] = "Красный:"
L["STRING_OPTIONS_WC_ANCHOR"] = "Быстрое управление окном (#%s)"
L["STRING_OPTIONS_WC_BOOKMARK"] = "Управление закладками"
L["STRING_OPTIONS_WC_BOOKMARK_DESC"] = "Открыть панель управления закладками."
L["STRING_OPTIONS_WC_CLOSE"] = "Закрыть"
L["STRING_OPTIONS_WC_CLOSE_DESC"] = [=[Закрыть редактируемое в данный момент окно.

В закрытом состояние окно считается неактивным и его можно открыть снова с помощью меню управления окнами.

|cFFFFFF00Важно:|r для окончательного удаление окна, перейдите в раздел "Окно:Общее"]=]
L["STRING_OPTIONS_WC_CREATE"] = "Создать окно"
L["STRING_OPTIONS_WC_CREATE_DESC"] = "Создать новое окно."
L["STRING_OPTIONS_WC_LOCK"] = "Заблокировать"
L["STRING_OPTIONS_WC_LOCK_DESC"] = [=[Заблокировать или разблокировать окно.

Окно нельзя перемещать, если заблокировано.]=]
L["STRING_OPTIONS_WC_UNLOCK"] = "Разблокировать"
L["STRING_OPTIONS_WC_UNSNAP"] = "Разгруппировать"
L["STRING_OPTIONS_WC_UNSNAP_DESC"] = "Убрать данное окно из группы окон."
L["STRING_OPTIONS_WHEEL_SPEED"] = "Скорость прокрутки"
L["STRING_OPTIONS_WHEEL_SPEED_DESC"] = "Изменение того, как быстро будут прокручиваться полосы колесиком мыши в окне"
L["STRING_OPTIONS_WINDOW"] = "Панель настроек"
L["STRING_OPTIONS_WINDOW_IGNOREMASSTOGGLE"] = "Игнорировать массовый переключатель"
L["STRING_OPTIONS_WINDOW_IGNOREMASSTOGGLE_DESC"] = "Если включено, то на данное окно не влияют скрытие, показ или переключение всех окон."
L["STRING_OPTIONS_WINDOW_SCALE"] = "Масштаб"
L["STRING_OPTIONS_WINDOW_SCALE_DESC"] = [=[Отрегулируйте масштаб окна.

|cFFFFFF00Совет|r: правый клик - ввести значения самому.

|cFFFFFF00Текущий|r: %s]=]
L["STRING_OPTIONS_WINDOW_TITLE"] = "Общие настройки окна"
L["STRING_OPTIONS_WINDOW_TITLE_DESC"] = "Данные опции позволяют управлять внешним видом выбранного окна."
L["STRING_OPTIONS_WINDOWSPEED"] = "Интервал обновления"
L["STRING_OPTIONS_WINDOWSPEED_DESC"] = [=[Интервал времени между обновлениями.

|cFFFFFF000.05|r: обновление в режиме реального времени.

|cFFFFFF000.3|r: обновление 3 раза за секунду.

|cFFFFFF003.0|r: обновление каждые 3 секунды.]=]
L["STRING_OPTIONS_WP"] = "Настройки: Обои"
L["STRING_OPTIONS_WP_ALIGN"] = "Выравнять "
L["STRING_OPTIONS_WP_DESC"] = "Данные опции управляют обоями окна."
L["STRING_OPTIONS_WP_EDIT"] = "Редактировать изображение "
L["STRING_OPTIONS_WP_GROUP"] = "Категория"
L["STRING_OPTIONS_WP_GROUP2"] = "Обои"
L["STRING_OPTIONSMENU_AUTOMATIC"] = "Окно: Автоматизация"
L["STRING_OPTIONSMENU_AUTOMATIC_TITLE"] = "Настройки: Автоматизация окна"
L["STRING_OPTIONSMENU_AUTOMATIC_TITLE_DESC"] = "Данные опции управляют автоматическим поведением окна, такими как авто-скрытие и авто-переключение."
L["STRING_OPTIONSMENU_COMBAT"] = "PvE | PvP"
L["STRING_OPTIONSMENU_DISPLAY"] = "Отображение "
L["STRING_OPTIONSMENU_DISPLAY_DESC"] = "Основные базовые настройки и быстрое управление окном."
L["STRING_OPTIONSMENU_LEFTMENU"] = "Заголовок: Общее"
L["STRING_OPTIONSMENU_PERFORMANCE"] = "Производительность"
L["STRING_OPTIONSMENU_PLUGINS"] = "Плагины"
L["STRING_OPTIONSMENU_PROFILES"] = "Профили"
L["STRING_OPTIONSMENU_RAIDTOOLS"] = "Рейдовые инструменты"
L["STRING_OPTIONSMENU_RIGHTMENU"] = "-- x -- x --"
L["STRING_OPTIONSMENU_ROWMODELS"] = "Полосы: Дополнительно"
L["STRING_OPTIONSMENU_ROWSETTINGS"] = "Полосы: Общее"
L["STRING_OPTIONSMENU_ROWTEXTS"] = "Полосы: Тексты"
L["STRING_OPTIONSMENU_SKIN"] = "Скины"
L["STRING_OPTIONSMENU_SPELLS"] = "Кастомизация заклинаний"
L["STRING_OPTIONSMENU_SPELLS_CONSOLIDATE"] = "Объединять общие заклинания с одинаковым названием"
L["STRING_OPTIONSMENU_TITLETEXT"] = "Заголовок: Текст"
L["STRING_OPTIONSMENU_TOOLTIP"] = "Подсказки"
L["STRING_OPTIONSMENU_WALLPAPER"] = "Окно: Обои"
L["STRING_OPTIONSMENU_WINDOW"] = "Окно: Общее"
L["STRING_OVERALL"] = "Всеобщие"
L["STRING_OVERHEAL"] = "Избыточное лечение"
L["STRING_OVERHEALED"] = "Избыточно исцелено"
L["STRING_PARRY"] = "Парирование"
L["STRING_PET"] = "Питомец"
L["STRING_PETS"] = "Питомцы"
L["STRING_PLAYER_DETAILS"] = "Details! Игрока"
L["STRING_PLAYERS"] = "Игроки"
L["STRING_PLEASE_WAIT"] = "Пожалуйста, подождите"
L["STRING_PLUGIN_CLEAN"] = "Никакой"
L["STRING_PLUGIN_CLOCKNAME"] = "Таймер боя"
L["STRING_PLUGIN_CLOCKTYPE"] = "Тип часов"
L["STRING_PLUGIN_DURABILITY"] = "Прочность "
L["STRING_PLUGIN_FPS"] = "Частота кадров"
L["STRING_PLUGIN_GOLD"] = "Золото"
L["STRING_PLUGIN_LATENCY"] = "Задержка "
L["STRING_PLUGIN_MINSEC"] = "Минуты и секунды"
L["STRING_PLUGIN_PATTRIBUTENAME"] = "Атрибут"
L["STRING_PLUGIN_PDPSNAME"] = "Рейдовый УВС"
L["STRING_PLUGIN_PSEGMENTNAME"] = "Сегмент"
L["STRING_PLUGIN_SECONLY"] = "Только секунды"
L["STRING_PLUGIN_SEGMENTTYPE"] = "Тип сегмента"
L["STRING_PLUGIN_SEGMENTTYPE_1"] = "Бой #X"
L["STRING_PLUGIN_SEGMENTTYPE_2"] = "Наименование боя"
L["STRING_PLUGIN_SEGMENTTYPE_3"] = "Наименование боя плюс сегмент"
L["STRING_PLUGIN_THREATNAME"] = "Моя угроза"
L["STRING_PLUGIN_TIME"] = "Часы"
L["STRING_PLUGIN_TIMEDIFF"] = "Разница с последним боем"
L["STRING_PLUGINOPTIONS_ABBREVIATE"] = "Сокращение"
L["STRING_PLUGINOPTIONS_COMMA"] = "Запятая"
L["STRING_PLUGINOPTIONS_FONTFACE"] = "Выбрать шрифт"
L["STRING_PLUGINOPTIONS_NOFORMAT"] = "Никакой"
L["STRING_PLUGINOPTIONS_TEXTALIGN"] = "Выравнивание текста"
L["STRING_PLUGINOPTIONS_TEXTALIGN_X"] = "Выравнивание текста по X"
L["STRING_PLUGINOPTIONS_TEXTALIGN_Y"] = "Выравнивание текста по Y"
L["STRING_PLUGINOPTIONS_TEXTCOLOR"] = "Цвет текста"
L["STRING_PLUGINOPTIONS_TEXTSIZE"] = "Размер текста"
L["STRING_PLUGINOPTIONS_TEXTSTYLE"] = "Стиль текста"
L["STRING_REPORT"] = "по"
L["STRING_REPORT_INVALIDTARGET"] = "Цель для шёпота не найдена"
L["STRING_REPORT_TOOLTIP"] = "Отчет"
L["STRING_REPORTFRAME_COPY"] = "Копировать и Вставить"
L["STRING_REPORTFRAME_GUILD"] = "Гильдия"
L["STRING_REPORTFRAME_INSERTNAME"] = "имя игрока"
L["STRING_REPORTFRAME_LINES"] = "Строк"
L["STRING_REPORTFRAME_OFFICERS"] = "Канал офицеров"
L["STRING_REPORTFRAME_PARTY"] = "Группа"
L["STRING_REPORTFRAME_RAID"] = "Рейд"
L["STRING_REPORTFRAME_REVERT"] = "в обратном"
L["STRING_REPORTFRAME_REVERTED"] = "обратный"
L["STRING_REPORTFRAME_REVERTINFO"] = "отправить в порядке возрастания"
L["STRING_REPORTFRAME_SAY"] = "Сказать"
L["STRING_REPORTFRAME_SEND"] = "Отправить"
L["STRING_REPORTFRAME_WHISPER"] = "Шепот"
L["STRING_REPORTFRAME_WHISPERTARGET"] = "Шепнуть цели"
L["STRING_REPORTFRAME_WINDOW_TITLE"] = "Линкануть Details!"
L["STRING_REPORTHISTORY"] = "Последние отчеты"
L["STRING_RIGHT"] = "справа"
L["STRING_RIGHT_TO_LEFT"] = "Справа налево"
L["STRING_SEGMENT"] = "Сегмент"
L["STRING_SEGMENT_EMPTY"] = "в данном сегменте ничего нет"
L["STRING_SEGMENT_END"] = "Конец"
L["STRING_SEGMENT_ENEMY"] = "Враг"
L["STRING_SEGMENT_LOWER"] = "сегмент"
L["STRING_SEGMENT_OVERALL"] = "Всеобщие данные"
L["STRING_SEGMENT_START"] = "Начало"
L["STRING_SEGMENT_TIME"] = "Время"
L["STRING_SEGMENT_TRASH"] = "Зачистка треша"
L["STRING_SEGMENTS"] = "Сегменты"
L["STRING_SLASH_WIPE"] = "вайп"
L["STRING_SLASH_WORLDBOSS"] = "мировые боссы"
L["STRING_SLASH_WORLDBOSS_DESC"] = "запускает макрос, показывающий каких вы убили на этой неделе "
L["STRING_SPELL_INTERRUPTED"] = "Заклинания прерваны"
L["STRING_SPELLS"] = "Заклинания"
L["STRING_SWITCH_CLICKME"] = "+закладка"
L["STRING_TARGET"] = "Цель"
L["STRING_TARGETS"] = "Цели"
L["STRING_TARGETS_OTHER1"] = "Питомцы и другие цели"
L["STRING_TEXTURE"] = "Текстура"
L["STRING_TIME_OF_DEATH"] = "Смерть"
L["STRING_TOP_TO_BOTTOM"] = "Сверху вниз"
L["STRING_TUTORIAL_FULLY_DELETE_WINDOW"] = [=[Вы закрыли окно и сможете в любой момент его снова открыть.
Чтобы удалить окно полностью, перейдите в Настройки -> Окно: Общее -> Удалить.]=]
L["STRING_UNKNOWSPELL"] = "Неизвестное заклинание"
L["STRING_UNLOCK_WINDOW"] = "разблок."
L["STRING_VERSION_UPDATE"] = "новая версия: что изменилось? кликните тут"
L["STRING_WAITPLUGIN"] = [=[ожидание
плагинов]=]
L["STRING_WAVE"] = "волна"
L["STRING_WELCOME_1"] = [=[|cFFFFFFFFДобро пожаловать в Details! С Вами - Мастер быстрой настройки 

|rДанный гайд поможет Вам в настройке некоторых важных элементов.
Заходите пропустить? Просто кликните в любой момент по кнопке "Пропустить".]=]
L["STRING_WELCOME_11"] = "передумали? всегда сможете всё изменить в панели настроек"
L["STRING_WELCOME_12"] = "Выберите как быстро будет обновляться окно, Вы также можете включить анимации и обновление ИВС и УВС в реальном времени"
L["STRING_WELCOME_14"] = "Скорость обновления"
L["STRING_WELCOME_15"] = [=[Интервал в секундах между обновлениями в окне.

|cffffff00Важно|r: Ютуберам и Стримерам может потребоваться |cFFFF55000.05|r для развлечения зрителей.]=]
L["STRING_WELCOME_16"] = "Включить анимации"
L["STRING_WELCOME_17"] = [=[Если включено, все полосы плавно движутся влево и вправо.

|cffffff00Важно|r: Ютуберам и Стримерам может потребоваться для развлечения зрителей.]=]
L["STRING_WELCOME_2"] = "если Вы передумаете, то всегда сможете это изменить в панели настроек"
L["STRING_WELCOME_26"] = "Фишки интерфейса: Растягиватель"
L["STRING_WELCOME_27"] = [=[Подсвеченная кнопка это Растягиватель. |cFFFFFF00Кликните|r и |cFFFFFF00потяните вверх!|r 

Если окно заблокировано, то вся строка заголовка превращается в Растягиватель.]=]
L["STRING_WELCOME_28"] = "Фишки интерфейса: Управление окном"
L["STRING_WELCOME_29"] = [=[Управление окном в основном делает две вещи:

- открывает |cFFFFFF00новое окно|r. 
- показывает меню с |cFFFFFF00закрытыми окнами|r, которые можно открыть снова в любой момент.]=]
L["STRING_WELCOME_3"] = "Выберите предпочитаемый метод УВС и ИВС:"
L["STRING_WELCOME_30"] = "Фишки интерфейса: Закладки"
L["STRING_WELCOME_31"] = [=[|cFFFFFF00Правый клик|r где угодно, в рамках окна, показывает панель с |cFFFFAA00Закладками|r.

|cFFFFFF00Правый клик снова|r закрыть или выбрать другой монитор, кликнув на иконку.

|cFFFFFF00Правый клик|r по панели с заголовком открывает панель "Все мониторы".

|TInterface\AddOns\Details\images\key_ctrl:14:30:0:0:64:64:0:64:0:40|t + Правый клик закрывает окно.]=]
L["STRING_WELCOME_32"] = "Фишка интерфейса: Сгруппировать окна"
L["STRING_WELCOME_34"] = "Фишка интерфейса: Всплывающие подсказки "
L["STRING_WELCOME_36"] = "Фишки интерфейса: Плагины"
L["STRING_WELCOME_38"] = "К рейду готов!"
L["STRING_WELCOME_39"] = [=[Спасибо за выбор Details!

Не стесняйтесь отправлять отзывы и сообщения об ошибках нам. (только на английском)


|cFFFFAA00/details feedback|r]=]
L["STRING_WELCOME_4"] = "Активный режим:"
L["STRING_WELCOME_41"] = "Развлекательные фишки интерфейса:"
L["STRING_WELCOME_42"] = "Быстрые настройки внешнего вида"
L["STRING_WELCOME_43"] = "Выберите предпочитаемый скин:"
L["STRING_WELCOME_44"] = "Обои"
L["STRING_WELCOME_46"] = "Импорт настроек"
L["STRING_WELCOME_5"] = "Эффектив.режим:"
L["STRING_WELCOME_59"] = "Включить фоновые обои."
L["STRING_WELCOME_6"] = "таймер каждого игрока рейдовой группы будет приостанавливаться при прекращении активности, и снова рассчитываться при ее возобновлении."
L["STRING_WELCOME_60"] = "Никнейм и аватар"
L["STRING_WELCOME_63"] = "Обновление DPS/HPS в режиме реального времени"
L["STRING_WELCOME_65"] = "Нажмите ПКМ"
L["STRING_WELCOME_66"] = [=[Перетащите окно к другому для создания группы.

Группированные окна растягиваются и изменяются в размере вместе.

Они также живут счастливо, как пара.]=]
L["STRING_WELCOME_67"] = [=[Нажмите Shift, для отображения всплывающей подсказки о всех используемых заклинаниях.

Ctrl для всех целей and Alt для всех питомцев.]=]
L["STRING_WELCOME_68"] = [=[Details! имеет фишку
под названием 'Плагины'

Они везде помогут Вам
в различных задачах.

К примеру: просмотр аггро, анализ УВС, информация о бое, создание графиков и т.д.]=]
L["STRING_WELCOME_69"] = "Пропустить"
L["STRING_WELCOME_7"] = "используется для рейтингов. Данный метод продолжает считывать УВС и ИВС всех членов рейдовой группы, даже тех кто неактивен."
L["STRING_WELCOME_72"] = "Настройки окна"
L["STRING_WINDOW_NOTFOUND"] = "Окно не найдено."
L["STRING_WINDOW1ATACH_DESC"] = "Чтобы создать группу окон, перетащите окно #2 к окну #1 "
L["STRING_YES"] = "Да"
