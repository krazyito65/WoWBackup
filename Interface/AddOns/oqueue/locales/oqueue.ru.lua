--[[ 
  @file       oqueue.ru.lua
  @brief      localization for oqueue addon (russian)

  @author     rmcinnis
  @date       june 11, 2012
  @par        Copyright (c) 2012 Solid ICE Technologies, Inc.  All rights reserved.
              this file may be distributed so long as it remains unaltered
              if this file is posted to a web site, credit must be given to me along with a link to my web page
              no code in this file may be used in other works without expressed permission  
]]--
local addonName, OQ = ... ;

OQ.TRANSLATED_BY["ruRU"] = "Efzet (Сибил, Azuregos EU)" ;
if ( GetLocale() ~= "ruRU" ) then
  return ;
end
local L = OQ._T ;

BINDING_HEADER_OQUEUE = "oQueue";
BINDING_NAME_TOGGLE_OQUEUE = "Вкл/Выкл oQueue";

OQ.TITLE_LEFT         = "oQueue v" ;
OQ.TITLE_RIGHT        = " - Поисковик премейдов" ;
OQ.BNET_FRIENDS       = "%d  b-net друзей" ;
OQ.PREMADE            = "Мой премейд" ;
OQ.FINDPREMADE        = "Поиск" ;
OQ.CREATEPREMADE      = "Создать" ;
OQ.CREATE_BUTTON      = "Создать премейд" ;
OQ.UPDATE_BUTTON      = "Обновить премейд" ;
OQ.WAITLIST           = "Очередь" ;
OQ.HONOR_BUTTON       = "oQ премейд" ;
OQ.SETUP              = "Настройки" ;
OQ.PLEASE_SELECT_BG   = "Пожалуйста, выберите поле боя" ;
OQ.BAD_REALID         = "Неверный real-id или battle-tag.\n" ;
OQ.QUEUE1_SELECTBG    = "<выберите поле боя>" ;
OQ.NOLEADS_IN_RAID    = "В рейде нет лидеров групп" ;
OQ.NOGROUPS_IN_RAID   = "Невозможно присоединить группу к рейду" ;
OQ.BUT_INVITE         = "Пригласить" ;
OQ.BUT_GROUPLEAD      = "Дать лидера" ;
OQ.BUT_INVITEGROUP    = "Группа (%d)" ;
OQ.BUT_WAITLIST       = "В очередь" ;
OQ.BUT_INGAME         = "В игре" ;
OQ.BUT_PENDING        = "Ожидание" ;
OQ.BUT_INPROGRESS     = "В бою." ;
OQ.BUT_NOTAVAILABLE   = "Недоступно" ;
OQ.BUT_FINDMESH       = "Найти связи" ;
OQ.BUT_SUBMIT2MESH    = "Отправ. b-tag" ;
OQ.BUT_PULL_BTAG      = "Отозвать b-tag" ;
OQ.BUT_BAN_BTAG       = "Ввести b-tag" ;
OQ.BUT_INVITE_ALL     = "Взять всех" ;
OQ.BUT_REMOVE_OFFLINE = "Убрать оффлайн" ;
OQ.TT_LEADER          = "Лидер" ;
OQ.TT_REALM           = "Игровой мир" ;
OQ.TT_BATTLEGROUP     = "Боевая группа" ;
OQ.TT_MEMBERS         = "Игроки" ;
OQ.TT_WAITLIST        = "Очередь" ;
OQ.TT_RECORD          = "Победы - Поражения" ;
OQ.TT_AVG_HONOR       = "Очков чести за игру" ;
OQ.TT_AVG_HKS         = "Почетных побед за игру" ;
OQ.TT_AVG_GAME_LEN    = "Продолжительность игры" ;
OQ.TT_AVG_DOWNTIME    = "Время без активности" ;
OQ.TT_RESIL           = "Устойчивость" ;
OQ.TT_ILEVEL          = "Ур. предметов" ;
OQ.TT_MAXHP           = "Макс. здоровья" ;
OQ.TT_WINLOSS         = "Победа - Поражение" ;
OQ.TT_HKS             = "Всего почетных побед" ;
OQ.TT_OQVERSION       = "Версия" ;
OQ.TT_TEARS           = "Покинул рейд" ;
OQ.TT_PVPPOWER        = "PvP сила" ;
OQ.TT_MMR             = "PvP рейтинг" ;
OQ.JOIN_QUEUE         = "Встать в очередь" ;
OQ.LEAVE_QUEUE        = "Покинуть очередь" ;
OQ.LEAVE_QUEUE_BIG    = "ПОКИНУТЬ ОЧЕРЕДЬ" ;
OQ.DAS_BOOT           = "ЭТО БОТ!" ;
OQ.DISBAND_PREMADE    = "Распустить премейд" ;
OQ.LEAVE_PREMADE      = "Покинуть премейд" ;
OQ.RELOAD             = "Перезагрузить" ;
OQ.ILL_BRB            = "Скоро вернусь" ;
OQ.LUCKY_CHARMS       = "Расставить метки" ;
OQ.IAM_BACK           = "Я вернулся" ;
OQ.ROLE_CHK           = "Проверка ролей" ;
OQ.READY_CHK          = "Готовность" ;
OQ.APPROACHING_CAP    = "СКОРО ЗАХВАТЫВАТЬ" ;
OQ.CAPPED             = "ЗАХВАЧЕН" ;
OQ.HDR_PREMADE_NAME   = "Список премейдов" ;
OQ.HDR_LEADER         = "Leader" ;
OQ.HDR_LEVEL_RANGE    = "Level" ;
OQ.HDR_TIME           = "Time" ;
OQ.HDR_BGROUP         = "B-group" ;
OQ.HDR_TOONNAME       = "Name" ;
OQ.HDR_REALM          = "Realm" ;
OQ.HDR_LEVEL          = "Level" ;
OQ.HDR_ILEVEL         = "iLvl" ;
OQ.HDR_RESIL          = "Resil" ;
OQ.HDR_MMR            = "Rating" ;
OQ.HDR_PVPPOWER       = "PvP Power" ;
OQ.HDR_POWER          = "Сила" ;
OQ.HDR_HASTE          = "Haste" ;
OQ.HDR_MASTERY        = "Mastery" ;
OQ.HDR_HIT            = "Hit" ;
OQ.HDR_DATE           = "Дата" ;
OQ.HDR_BTAG           = "Battle Tag" ;
OQ.HDR_REASON         = "Причина" ;
OQ.QUALIFIED          = "Подходит" ;
OQ.PREMADE_NAME       = "Название премейда" ;
OQ.LEADERS_NAME       = "Имя лидера" ;
OQ.REALID             = "Real-Id или B-tag" ;
OQ.REALID_MOP         = "Battle-tag" ;
OQ.MIN_ILEVEL         = "Мин. ур. предметов" ;
OQ.MIN_RESIL          = "Мин. устойчивость" ;
OQ.MIN_MMR            = "Мин. рейтинг поля боя" ;
OQ.BATTLEGROUNDS      = "Описание" ;
OQ.ENFORCE_LEVELS     = "Подобрать группу по уровню" ;
OQ.NOTES              = "Заметка" ;
OQ.PASSWORD           = "Пароль" ;
OQ.CREATEURPREMADE    = "Создание своего премейда" ;
OQ.LABEL_LEVEL        = "Уровень" ;
OQ.LABEL_LEVELS       = "Уровни" ;
OQ.RAFK_ENABLED       = "AFK включен" ;
OQ.RAFK_DISABLED      = "AFK выключен" ;
OQ.SETUP_HEADING      = "Настройки и различные команды" ;
OQ.SETUP_BTAG         = "Почтовый адрес battle.net" ;
OQ.SETUP_GODARK_LBL   = "Сообщить oQ-друзьям, что вы заняты" ;
OQ.SETUP_CAPCHK       = "Проверка совместимости oQ" ;
OQ.SETUP_REMOQADDED   = "Удалить oQ-друзей" ;
OQ.SETUP_REMOVEBTAG   = "Отозвать свой b-tag" ;
OQ.SETUP_ALTLIST      = "Список альтов на b-net аккаунте:\n(Мультибоксинг)" ;
OQ.SETUP_AUTOROLE     = "Автовыставление роли" ;
OQ.SETUP_CLASSPORTRAIT = "Использовать иконки классов" ;
OQ.SETUP_SAYSAPPED    = "Оповещать об Ошеломлении" ;
OQ.SETUP_WHOPOPPED    = "Оповещать о Героизме" ;
OQ.SETUP_GARBAGE      = "Собирать мусор (интервал 30 сек)" ;
OQ.SETUP_SHOUTKBS     = "Оповещать о смертельных ударах" ;
OQ.SETUP_SHOUTCAPS    = "Оповещать о целях поля боя" ;
OQ.SETUP_SHOUTADS     = "Объявить премейды" ;
OQ.SETUP_AUTOACCEPT_MESH_REQ = "Автоподтверждение запросов связей b-tag" ;
OQ.SETUP_ANNOUNCE_RAGEQUIT   = "Оповещать о покинувших премейд" ;
OQ.SETUP_OK2SUBMIT_BTAG      = "Отправлять b-tag каждые 4 дня" ;
OQ.SETUP_AUTOJOIN_OQGENERAL  = "Автоподключение к каналу oqgeneral" ;
OQ.SETUP_AUTOHIDE_FRIENDREQS = "Скрывать запросы предложения дружбы" ;
OQ.SETUP_ADD          = "Добавить" ;
OQ.SETUP_MYCREW       = "Моя команда" ;
OQ.SETUP_CLEAR        = "Очистить" ;
OQ.SETUP_COLORBLIND   = "Изменить цвет (при дальтонизме)" ;
OQ.SAPPED             = "{rt8}  Ошеломлен  {rt8}" ;
OQ.BN_FRIENDS         = "Друзья oQ" ;
OQ.LOCAL_OQ_USERS     = "Локальные oQ пользователи" ;
OQ.TIME_DRIFT         = "Время дрейфа" ;
OQ.PPS_SENT           = "Отправлено пакетов в сек" ;
OQ.PPS_RECVD          = "Получено пакетов в сек" ;
OQ.PPS_PROCESSED      = "Обработано пакетов в сек" ;
OQ.MEM_USED           = "Использование памяти (kB)" ;
OQ.BANDWIDTH_UP       = "Выгрузка (kBps)" ;
OQ.BANDWIDTH_DN       = "Загрузка (kBps)" ;
OQ.OQSK_DTIME         = "Время дисперсии" ;
OQ.SETUP_CHECKNOW     = "Проверить сейчас" ;
OQ.SETUP_GODARK       = "Занят" ;
OQ.SETUP_REMOVENOW    = "Удалить сейчас" ;
OQ.STILL_IN_PREMADE   = "Пожалуйста, покиньте ваш премейд, чтобы создать новый." ;
OQ.DD_PROMOTE         = "Назначить лидером" ;
OQ.DD_KICK            = "Исключить игрока" ;
OQ.DD_BAN             = "Заблокировать b-tag игрока" ;
OQ.DISABLED           = "oQueue отключен" ;
OQ.ENABLED            = "oQueue включен" ;
OQ.THETIMEIS          = "Время: %d (GMT)" ;
OQ.RAGEQUITSOFAR      = "Вышло из боя: %s  после %d:%02d  (%d уже)" ;
OQ.RAGEQUITTERS       = "%d покинувших бой за %d:%02d" ;
OQ.RAGELASTGAME       = "%d покинло в последней игре (бой длился %d:%02d)" ;
OQ.NORAGEQUITS        = "Вы находитесь не на поле боя" ;
OQ.RAGEQUITS          = "%d уже покинуло бой" ;
OQ.MSG_PREMADENAME    = "Пожалуйста, введите название премейда" ;
OQ.MSG_MISSINGNAME    = "Пожалуйста, назовите свой премейд" ;
OQ.MSG_REJECT         = "Запрос не принят.\nПричина: %s" ;
OQ.MSG_CANNOTCREATE_TOOLOW   = "Невозможно создать премейд.  \nВы должны быть 10 уровня или выше." ;
OQ.MSG_NOTLFG         = "Пожалуйста, не используйте oQueue как рекламную площадку для поиска группы. \nНекоторые игроки могут вас заблокировать." ;
OQ.TAB_PREMADE        = "Премейд" ;
OQ.TAB_FINDPREMADE    = "Поиск" ;
OQ.TAB_CREATEPREMADE  = "Создать" ;
OQ.TAB_THESCORE       = "Счет" ;
OQ.TAB_SETUP          = "Настройки" ;
OQ.TAB_BANLIST        = "Блок-лист" ;
OQ.TAB_WAITLIST       = "Ожидание" ;
OQ.TAB_WAITLISTN      = "Ожидание (%d)" ;
OQ.CONNECTIONS        = "Соединение  %d - %d" ;
OQ.ANNOUNCE_PREMADES  = "Доступно %d премейдов" ;
OQ.NEW_PREMADE        = "(|cFF808080%d|r) |cFFC0C0C0%s|r : %s  |cFFC0C0C0%s|r" ;
OQ.PREMADE_NAMEUPD    = "(|cFF808080%d|r) |cFFC0C0C0%s|r : %s  |cFFC0C0C0%s|r" ;
OQ.DLG_OK             = "OK" ;
OQ.DLG_YES            = "Да" ;
OQ.DLG_NO             = "Нет" ;
OQ.DLG_CANCEL         = "Отмена" ;
OQ.DLG_ENTER          = "Войти в бой" ;
OQ.DLG_LEAVE          = "Покинуть очередь" ;
OQ.DLG_READY          = "Готов" ;
OQ.DLG_NOTREADY       = "НЕ ГОТОВ" ;
OQ.DLG_01             = "Пожалуйста, введите имя альта:" ;
OQ.DLG_02             = "Войти в бой" ;
OQ.DLG_03             = "Пожалуйста, назовите ваш премейд:" ;
OQ.DLG_04             = "Пожалуйста, введите ваш real-id:" ;
OQ.DLG_05             = "Пароль:" ;
OQ.DLG_06             = "Пожалуйста, введите real-id или имя нового лидера группы:" ;
OQ.DLG_07             = "\nДоступна НОВАЯ ВЕРСИЯ!\n\noQueue  v%s  build  %d\nСкачать с официального сайта: http://solidice.com/oqueue/" ;
OQ.DLG_08             = "Пожалуйста, покиньте вашу группу чтобы встать в очередь или \nпопросите вашего лидера встать в очередь группой" ;
OQ.DLG_09             = "Только лидер группы имеет право создавать премейд в oQ" ;
OQ.DLG_10             = "Пришло приглашение.\n\nВаше решение?" ;
OQ.DLG_11             = "Пришло приглашение. Ждем лидера рейда для принятия решения.\nПожалуйста, подождите." ;
OQ.DLG_12             = "Вы уверены, что хотите покинуть рейдовую группу?" ;
OQ.DLG_13             = "Лидер премейда запустил проверку готовности" ;
OQ.DLG_14             = "Лидер рейда перезагружается" ;
OQ.DLG_15             = "Блокировка: %s \nПожалуйста, введите причину:" ;
OQ.DLG_16             = "Невозможно выбрать тип премейда.\nСлишком много игроков (макс. %d)" ;
OQ.DLG_17             = "Пожалуйста, введите b-tag для блокировки:" ;
OQ.DLG_18a            = "Версия %d.%d.%d уже доступна!" ;
OQ.DLG_18b            = "--  Требуется обновление  --" ;
OQ.DLG_19             = "Вы должны соответствовать требованиям вашего премейда" ;
OQ.DLG_20             = "Нет подходящих групп для этого типа премейда" ;
OQ.DLG_21             = "Покиньте ваш премейд прежде чем встать в очередь" ;
OQ.DLG_22             = "Распустите ваш премейд прежде чем встать в очередь" ;
OQ.MENU_KICKGROUP     = "Распустить группу" ;
OQ.MENU_SETLEAD       = "Дать лидера" ;
OQ.HONOR_PTS          = "Очки чести" ;
OQ.NOBTAG_01          = "Информация о b-tag не получена вовремя" ;
OQ.NOBTAG_02          = "Пожалуйста, попробуйте еще раз." ;
OQ.MINIMAP_HIDDEN     = "(OQ) Скрыть иконку миникарты" ;
OQ.MINIMAP_SHOWN      = "(OQ) Показать иконку миникарты" ;
OQ.FINDMESH_OK        = "Соединение в порядке. Премейды обновляются каждые 30 сек." ;
OQ.TIMEERROR_1        = "OQ: Ваше системное время сильно отличается (%s)." ;
OQ.TIMEERROR_2        = "OQ: Пожалуйста, синхронизируйте ваше системное время с вашим часовым поясом." ;
OQ.SYS_YOUARE_AFK     = "Вы отсутствуете (AFK)." ;
OQ.SYS_YOUARENOT_AFK  = "Вы вернулись." ;
OQ.ERROR_REGIONDATA   = "Региональные данные загружены неправильно." ;
OQ.TT_LEAVEPREMADE    = "ЛКМ: Скрыть премейд\nПКМ: Заблокировать лидера премейда" ;
OQ.TT_FINDMESH        = "Запросить b-tag`и\nчтобы получить связи" ;
OQ.TT_SUBMIT2MESH     = "Отправить b-tag\ntдля увеличения связей" ;
OQ.LABEL_TYPE         = "|cFF808080type:|r  %s" ;
OQ.LABEL_ALL          = "Все премейды" ;
OQ.LABEL_BGS          = "Поля боя" ;
OQ.LABEL_RBGS         = "Рейтинговые поля боя" ;
OQ.LABEL_DUNGEONS     = "Подземелья" ;
OQ.LABEL_LADDERS      = "Ладдеры" ;
OQ.LABEL_RAIDS        = "Рейды" ;
OQ.LABEL_SCENARIOS    = "Сценарии" ;
OQ.LABEL_CHALLENGES   = "Испытания" ;
OQ.LABEL_BG           = "Поле боя" ;
OQ.LABEL_RBG          = "Рейтинговое поле боя" ;
OQ.LABEL_ARENAS       = "Арены" ;
OQ.LABEL_ARENA        = "Арена" ;
OQ.LABEL_DUNGEON      = "Подземелье" ;
OQ.LABEL_LADDER       = "Ладдер" ;
OQ.LABEL_RAID         = "Рейд" ;
OQ.LABEL_SCENARIO     = "Сценарий" ;
OQ.LABEL_CHALLENGE    = "Испытание" ;
OQ.LABEL_QUESTING     = "Задание" ;
OQ.LABEL_QUESTERS     = "Групповые задания" ;
OQ.LABEL_MISC         = "Разное" ;
OQ.PATTERN_CAPS       = "[ABCDEFGHIJKLMNOPQRSTUVWXYZ]" ;
OQ.CONTRIBUTE         = "На пиво!" ;
OQ.MATCHUP            = "Совпадают" ;
OQ.NODIPFORYOU        = "У вас более %d b-net друзей." ;
OQ.GAINED             = "Получено" ;
OQ.LOST               = "Потеряно" ;
OQ.PERHOUR            = "в час" ;
OQ.NOW                = "Сейчас" ;
OQ.WITH               = "с" ;
OQ.RAID_TOES          = "Терраса Вечной Весны" ;
OQ.RAID_HOF           = "Сердце Страха" ;
OQ.RAID_MV            = "Подземелья Могушан" ;
OQ.RAID_TOT           = "Престол Гроз" ;
OQ.RAID_RA_DEN        = "Ра-Ден" ;
OQ.RBG_HRANK_1        = "Scout" ;
OQ.RBG_HRANK_2        = "Grunt" ;
OQ.RBG_HRANK_3        = "Sergeant" ;
OQ.RBG_HRANK_4        = "Senior Sergeant" ;
OQ.RBG_HRANK_5        = "First Sergeant" ;
OQ.RBG_HRANK_6        = "Stone Guard" ;
OQ.RBG_HRANK_7        = "Blood Guard" ;
OQ.RBG_HRANK_8        = "Legionnaire" ;
OQ.RBG_HRANK_9        = "Centurion" ;
OQ.RBG_HRANK_10       = "Champion" ;
OQ.RBG_HRANK_11       = "Lieutenant General" ;
OQ.RBG_HRANK_12       = "General" ;
OQ.RBG_HRANK_13       = "Warlord" ;
OQ.RBG_HRANK_14       = "High Warlord" ;
OQ.RBG_ARANK_1        = "Private" ;
OQ.RBG_ARANK_2        = "Corporal" ;
OQ.RBG_ARANK_3        = "Sergeant" ;
OQ.RBG_ARANK_4        = "Master Sergeant" ;
OQ.RBG_ARANK_5        = "Sergeant Major" ;
OQ.RBG_ARANK_6        = "Knight" ;
OQ.RBG_ARANK_7        = "Knight-Lieutenant" ;
OQ.RBG_ARANK_8        = "Knight-Captain" ;
OQ.RBG_ARANK_9        = "Knight-Champion" ;
OQ.RBG_ARANK_10       = "Lieutenant Commander" ;
OQ.RBG_ARANK_11       = "Commander" ;
OQ.RBG_ARANK_12       = "Marshal" ;
OQ.RBG_ARANK_13       = "Field Marshal" ;
OQ.RBG_ARANK_14       = "Grand Marshal" ;
OQ.TITLES             = "Звания" ;
OQ.CONQUEROR          = "Завоеватель" ;
OQ.BLOODTHIRSTY       = "Кровожадный" ;
OQ.BATTLEMASTER       = "Полководец" ;
OQ.HERO               = "Герой" ;
OQ.WARBRINGER         = "Вестник войны" ;
OQ.KHAN               = "Хан" ;
OQ.RANAWAY            = "Дезертир. Убежал с поля боя."
OQ.TT_KARMA           = "Репутация"  ;
OQ.UP                 = "[+]" ;
OQ.DOWN               = "[-]" ;
OQ.BAD_KARMA_BTAG     = "OQ: Неверный b-tag у выбранного игрока" ;
OQ.MAX_KARMA_TODAY    = "OQ: Сегодня вы уже отнимали репутацию у игрока %s" ;
OQ.YOUVE_GOT_KARMA    = "Вы получили %d репутации." ;
OQ.YOUVE_LOST_KARMA   = "Вы потеряли %d репутации." ;
OQ.YOUVE_LOST_KARMAS  = "Вы потеряли %d репутации." ;
OQ.INSTANCE_LASTED    = "Инстанс длился" ;
OQ.SHOW_ILEVEL        = "Показать iLvl" ;
OQ.SOCKET             = "Разъем" ;
OQ.SHA_TOUCHED        = "Прикосновение Ша" 
OQ.TT_BATTLE_TAG      = "Battle Tag" ;
OQ.TT_REGULAR_BG      = "Поля боя" ;
OQ.TT_PERSONAL        = "как игрок" ;
OQ.TT_ASLEAD          = "как лидер" ;
OQ.AVG_ILEVEL         = "Средний iLvl: %d" ;
OQ.ENCHANTED          = "Зачаровано:" ;
OQ.ENABLE_FOG         = "Туман войны" ;
OQ.AUTO_INSPECT       = "Авто-осмотр персонажа (Ctrl+ЛКМ)" ;
OQ.TIMELEFT           = "Прошло времени:" ;
OQ.HORDE              = "Орда" ;
OQ.ALLIANCE           = "Альянс" ;
OQ.SETUP_TIMERWIDTH   = "Ширина таймера" ;
OQ.BG_BEGINS          = "Начинается!" -- partial text of start msg
OQ.BG_BEGUN           = "Началось!" -- partial text of start msg
OQ.SETUP_SHOW_CONTROLLED   = "Показать контролируемые узлы" ;
OQ.MM_OPTION1         = "Вкл/Выкл главное окно" ;
OQ.MM_OPTION2         = "Вкл/Выкл окно счета" ;
OQ.MM_OPTION3         = "Вкл/Выкл таймеры" ;
OQ.MM_OPTION4         = "Вкл/Выкл окно угрозы" ;
OQ.MM_OPTION5         = "Очистить таймеры" ;
OQ.MM_OPTION6         = "Показать время связей" ;
OQ.MM_OPTION7         = "Фиксация интерфейс" ;
OQ.MM_OPTION8         = "Где я?" ;
OQ.MM_OPTION9         = "Статус: Занят" ;
OQ.ACTIVE_LASTPERIOD  = "# активность за 7 дней" ;
OQ.SCORE_NLEADERS     = "# лидеры" ;
OQ.SCORE_NGAMES       = "# игры" ;
OQ.SCORE_NBOSSES      = "# боссы" ;
OQ.TT_PVERECORD       = "Победы - Поражения" ;
OQ.TT_5MANS           = "лидер: подземелья" ;
OQ.TT_RAIDS           = "лидер: рейды" ;
OQ.TT_CHALLENGES      = "лидер: испытания" ;
OQ.TT_LEADER_DKP      = "лидер: очки DKP" ;
OQ.TT_DKP             = "Очки DKP" ;
OQ.SCORE_DKP          = "# Очки DKP" ;
OQ.ERR_NODURATION     = "Неизвестна продолжительность инстанса. Валютные изменения не рассчитаны." ;
OQ.DRUNK              = "..ик!" ;
OQ.MM_OPTION2a        = "Вкл/Выкл доску контрактов" ;
OQ.ANNOUNCE_CONTRACTS = "Оповещать контракты" ;
OQ.SETUP_SHOUTCONTRACTS = "Оповещать контракты" ;
OQ.CONTRACT_ARRIVED   = "Контракт #%s только что появился!  Цель: %s  Награда: |h%s" ;
OQ.CONTRACT_CLAIMED01 = "%s %s закрыл(а) контракт #%s и выиграл(а) %s" ;
OQ.CONTRACT_CLAIMED02 = "%s закрыл(а) контракт #%s и выиграл(а) %s" ;
OQ.TARGET_MARK        = "Вы выбрали главную цель! ( контракт#%s )" ;
OQ.BOUNTY_TARGET      = "Вы убили главную цель! ( контракт#%s )" ;
OQ.DEATHMATCH_SCORE   = "Счет!" ;
OQ.FRIEND_REQUEST     = "%s-%s хочет стать вашим другом" ;
OQ.ALREADY_FRIENDED   = "Вы уже являетесь b-net другом с %s" ;
OQ.TT_FRIEND_REQUEST  = "Запрос дружбы" ;
OQ.DEATHMATCH_BEGINS  = "Бой на смерть (мировое PvP) начался!" ;
OQ.WONTHEMATCH        = "Выиграл матч!" ;
OQ.MSG_MISSINGTYPE    = "Пожалуйста, выберите тип премейда" ;

OQ.CONTRIBUTION_DLG = { "",
                        "Нравится oQueue и PublicVent?",
                        "Тогда отправь нам пивка!",
                        "",
                        "для tiny и oQueue:",
                        "beg.oq",
                        "",
                        "для Rathamus и PublicVent:",
                        "beg.vent",
                        "",
                        "Спасибо!",
                        "",
                        "- tiny",
                      } ;
OQ.TIMEVARIANCE_DLG = { "",
                        "Внимание:",
                        "",
                        "  Ваше системное время значительно ",
                        "  отличается от сетевого. Вы должны",
                        "  скорректировать его, прежде чем приступите",
                        "  к созданию премейда.",
                        "",
                        "  разница времени:  %s",
                        "",
                        "- tiny",
                      } ;
OQ.LFGNOTICE_DLG = { "",
                        "Внимание:",
                        "",
                        "  Не используйте имена премейдов oQueue",
                        "  для поиска группы или другой вашей",
                        "  рекламы. Большинство игроков может",
                        "  заблокировать вас и вы не сможете",
                        "  присоединиться к их премейдам.",
                        "",
                        "- tiny",
                      } ;


OQ.BG_NAMES     = { [ "Случайное поле боя"     ] = { type_id = OQ.RND  },
                    [ "Ущелье Песни Войны"     ] = { type_id = OQ.WSG  },
                    [ "Два Пика"               ] = { type_id = OQ.TP   },
                    [ "Битва за Гилнеас"       ] = { type_id = OQ.BFG  },
                    [ "Низина Арати"           ] = { type_id = OQ.AB   },
                    [ "Око Бури"               ] = { type_id = OQ.EOTS },
                    [ "Берег Древних"          ] = { type_id = OQ.SOTA },
                    [ "Остров Завоеваний"      ] = { type_id = OQ.IOC  },
                    [ "Альтеракская Долина"    ] = { type_id = OQ.AV   },
                    [ "Сверкающие Копи"        ] = { type_id = OQ.SSM  },
                    [ "Храм Котмогу"           ] = { type_id = OQ.TOK  },
                    [ "Каньон Суровых Ветров"  ] = { type_id = OQ.DWG  },
                    [ "Очки DKP"               ] = { type_id = OQ.DKP  },
                    [ ""                       ] = { type_id = OQ.NONE },
                  } ;
                  
OQ.BG_SHORT_NAME = { [ "Низина Арати"           ] = "Арати",
                     [ "Альтеракская Долина"    ] = "Альтерак",
                     [ "Битва за Гилнеас"       ] = "Гилнеас",
                     [ "Око Бури"               ] = "Око",
                     [ "Остров Завоеваний"      ] = "ОЗ",
                     [ "Берег Древних"          ] = "Берег",
                     [ "Два Пика"               ] = "Пики",
                     [ "Ущелье Песни Войны"     ] = "Ущелье",
                     [ "Сверкающие Копи"        ] = "Копи",
                     [ "Храм Котмогу"           ] = "Котмогу",
                     [ "Каньон Суровых Ветров"  ] = "Каньон",
                     
                     [ OQ.AB                    ] = "Арати",
                     [ OQ.AV                    ] = "Альтерак",
                     [ OQ.BFG                   ] = "Гилнеас",
                     [ OQ.EOTS                  ] = "Око",
                     [ OQ.IOC                   ] = "ОЗ",
                     [ OQ.SOTA                  ] = "Берег",
                     [ OQ.TP                    ] = "Пики",
                     [ OQ.WSG                   ] = "Ущелье",
                     [ OQ.SSM                   ] = "Копи",
                     [ OQ.TOK                   ] = "Котмогу",
                     [ OQ.DWG                   ] = "Каньон",
                     
                     [ "Арати"                  ] = OQ.AB,
                     [ "Альтерак"               ] = OQ.AV,
                     [ "Гилнеас"                ] = OQ.BFG,
                     [ "Око"                    ] = OQ.EOTS,
                     [ "ОЗ"                     ] = OQ.IOC,
                     [ "Берег"                  ] = OQ.SOTA,
                     [ "Пики"                   ] = OQ.TP,
                     [ "Ущелье"                 ] = OQ.WSG,
                     [ "Копи"                   ] = OQ.SSM,
                     [ "Котмогу"                ] = OQ.TOK,
                     [ "Каньон"                 ] = OQ.DWG,
                   } ;
                   
OQ.BG_STAT_COLUMN = { [ "База атакована"        ] = "База атакована",
                      [ "База защищена"         ] = "База защищена",
                      [ "Разрушитель уничтожен" ] = "Разрушитель уничтожен",
                      [ "Флаг захвачен"         ] = "Флаг захвачен",
                      [ "Флаг возвращен"        ] = "Флаг возвращен",
                      [ "Врат разрушены"        ] = "Врата разрушены",
                      [ "Кладбище атаковано"    ] = "Кладбище атаковано",
                      [ "Кладбище защищено"     ] = "Кладбище защищено",
                      [ "Башня атакованы"       ] = "Башня атакована",
                      [ "Башня защищена"        ] = "Башня защищена",
                    } ;

OQ.COLORBLINDSHADER = { [ 0 ] = "Выключено",
                        [ 1 ] = "Протанопия",
                        [ 2 ] = "Протаномалия",
                        [ 3 ] = "Дейтеранопия",
                        [ 4 ] = "Дейтераномалия",
                        [ 5 ] = "Тританопия",
                        [ 6 ] = "Тританомалия",
                        [ 7 ] = "Ахроматопсия",
                        [ 8 ] = "Ахроматомалия",
                      } ;

-- Class talent specs
local DK    = { ["Кровь"]              = "Tank",
                ["Лед"]                = "Melee",
                ["Нечестивость"]       = "Melee",
              } ;
local DRUID = { ["Баланс"]             = "Knockback",
                ["Сила зверя"]         = "Melee",
                ["Исцеление"]          = "Healer",
                ["Страж"]              = "Tank",
              } ;
local HUNTER = {
                ["Повелитель зверей"]  = "Knockback",
                ["Стрельба"]           = "Ranged",
                ["Выживание"]          = "Ranged",
               } ;
local MAGE = {  ["Тайная магия"]       = "Knockback",
                ["Огонь"]              = "Ranged",
                ["Лед"]                = "Ranged",
             } ; 
local MONK = {  ["Хмелевар"]           = "Tank",
                ["Ткач туманов"]       = "Healer",
                ["Танцующий с ветром"] = "Melee",
             } ; 
local PALADIN = { ["Свет"]             = "Healer",
                  ["Защита"]           = "Tank",
                  ["Воздаяние"]        = "Melee",
                } ; 
local PRIEST = { ["Послушание"]        = "Healer",
                 ["Свет"]              = "Healer",
                 ["Тьма"]              = "Ranged",
               } ; 
local ROGUE = { ["Ликвидация"]         = "Melee",
                ["Бой"]                = "Melee",
                ["Скрытность"]         = "Melee",
              } ; 
local SHAMAN = { ["Стихии"]            = "Knockback",
                 ["Совершенствование"] = "Melee",
                 ["Исцеление"]         = "Healer",
               } ; 
local WARLOCK = { ["Колдовство"]       = "Knockback",
                  ["Демонология"]      = "Knockback",
                  ["Разрушение"]       = "Knockback",
                } ; 
local WARRIOR = { ["Оружие"]           = "Melee",
                  ["Неистовство"]      = "Melee",
                  ["Защита"]           = "Tank",
                } ; 

OQ.BG_ROLES = {} ;
OQ.BG_ROLES["DEATHKNIGHT" ] = DK ;
OQ.BG_ROLES["DRUID"       ] = DRUID ;
OQ.BG_ROLES["HUNTER"      ] = HUNTER ;
OQ.BG_ROLES["MAGE"        ] = MAGE ;
OQ.BG_ROLES["MONK"        ] = MONK ;
OQ.BG_ROLES["PALADIN"     ] = PALADIN ;
OQ.BG_ROLES["PRIEST"      ] = PRIEST ;
OQ.BG_ROLES["ROGUE"       ] = ROGUE ;
OQ.BG_ROLES["SHAMAN"      ] = SHAMAN ;
OQ.BG_ROLES["WARLOCK"     ] = WARLOCK ;
OQ.BG_ROLES["WARRIOR"     ] = WARRIOR ;

-- some bosses do not 'die'... their defeat must be detected by watching their yell emotes
-- this table maps a defeat emote to the boss-id (it'd be better if it was mapped to the name, but names aren't necessarily localized)
--
OQ.DEFEAT_EMOTES = {} ;
OQ.DEFEAT_EMOTES["The Sha of Hatred has fled my body... and the monastery, as well. I must thank you, strangers. The Shado-Pan are in your debt. Now, there is much work to be done..."] = 56884 ; -- Taran Zhu
OQ.DEFEAT_EMOTES["I am bested. Give me a moment and we will venture together to face the Sha."] = 60007 ; -- Master Snowdrift
OQ.DEFEAT_EMOTES["Even together... we failed..."] = 56747 ; -- Gu Cloudstrike
OQ.DEFEAT_EMOTES["Impossible! Our might is the greatest in all the empire!"] = 61445 ; -- Haiyan the Unstoppable, Trial of the King
OQ.DEFEAT_EMOTES["The haze has been lifted from my eyes... forgive me for doubting you..."] = 56732 ; -- Liu Flameheart


-- contract toon names; to translate, replace 'nil' with the translation
--
L["Doom Lord Kazzak"        ] = nil ;
L["Hogger"                  ] = nil ; 
L["Lord Overheat"           ] = nil ;
L["Randolph Moloch"         ] = nil ;
L["Adarogg"                 ] = nil ;
L["Slagmaw"                 ] = nil ;
L["Lava Guard Gordoth"      ] = nil ;
L["Newton Burnside"         ] = nil ;
L["Auctioneer Chilton"      ] = nil ;
L["Alchemist Mallory"       ] = nil ; 
L["Toddrick"                ] = nil ;  
L["Remen Marcot"            ] = nil ;
L["Goldtooth"               ] = nil ; 
L["Auctioneer Fazdran"      ] = nil ; 
L["Kixa"                    ] = nil ; 
L["Gor the Enforcer"        ] = nil ; 
L["Tarshaw Jaggedscar"      ] = nil ;
L["Rokar Bladeshadow"       ] = nil ; 
L["Kor'kron Spotter"        ] = nil ; 
L["Falstad Wildhammer"      ] = nil ;
L["Baine Bloodhoof"         ] = nil ; 
L["Fel Reaver"              ] = nil ; 
L["Brewmaster Roland"       ] = nil ; 
L["Reeler Uko"              ] = nil ; 
L["Sulik'shor"              ] = nil ; 
L["Qu'nas"                  ] = nil ; 
L["Nal'lak the Ripper"      ] = nil ;
L["Bonobos"                 ] = nil ;
L["Muerta"                  ] = nil ; 
L["Disha Fearwarden"        ] = nil ; 
L["Bonestripper Buzzard"    ] = nil ; 
L["Fulgorge"                ] = nil ; 
L["Sahn Tidehunter"         ] = nil ; 
L["Moldo One-Eye"           ] = nil ; 
L["Omnis Grinlok"           ] = nil ; 
L["Armsmaster Holinka"      ] = nil ; 
L["Roo Desvin"              ] = nil ; 
L["Hiren Loresong"          ] = nil ;
L["Vasarin Redmorn"         ] = nil ;
L["Grumbol Grimhammer"      ] = nil ;
L["Usha Eyegouge"           ] = nil ;
L["Bartlett the Brave"      ] = nil ; 
L["Anette Williams"         ] = nil ; 
L["Auctioneer Vizput"       ] = nil ; 
L["Lady Sylvanas Windrunner"] = nil ;
L["Devrak"                  ] = nil ; 
L["Felicia Maline"          ] = nil ; 
L["Radulf Leder"            ] = nil ; 
L["The Black Bride"         ] = nil ; 
L["Shan'ze Battlemaster"    ] = nil ; 
L["Holgar Stormaxe"         ] = nil ; 
L["Ruskan Goreblade"        ] = nil ; 
L["Maginor Dumas"           ] = nil ; 
L["High Sorcerer Andromath" ] = nil ;
L["Captain Dirgehammer"     ] = nil ; 
L["Keryn Sylvius"           ] = nil ; 
L["Bizmo's Brawlpub Bouncer"] = nil ; 
L["Myolor Sunderfury"       ] = nil ; 
L["Golnir Bouldertoe"       ] = nil ; 
L["Auctioneer Lympkin"      ] = nil ; 
L["Jarven Thunderbrew"      ] = nil ; 
L["Mistblade Scale-Lord"    ] = nil ; 
L["Major Nanners"           ] = nil ; 
L["Doris Chiltonius"        ] = nil ; 
L["Lucan Malory"            ] = nil ; 
L["Acon Deathwielder"       ] = nil ; 
L["Ethan Natice"            ] = nil ; 
L["Kri'chon"                ] = nil ; 
L["Warlord Bloodhilt"       ] = nil ; 
L["High Marshal Twinbraid"  ] = nil ;
L["Krol the Blade"          ] = nil ;
L["Ik-Ik the Nimble"        ] = nil ; 
L["Ai-Li Skymirror"         ] = nil ; 
L["Gar'lok"                 ] = nil ; 
L["Omnis Grinlok"           ] = nil ; 
L["Dak the Breaker"         ] = nil ; 
L["Karr the Darkener"       ] = nil ; 
L["Nalash Verdantis"        ] = nil ; 
L["Ai-Ran the Shifting Cloud"] = nil ; 
L["Major Nanners"           ] = nil ; 
L["Yorik Sharpeye"          ] = nil ; 
L["Kang the Soul Thief"     ] = nil ; 
L["Kal'tik the Blight"      ] = nil ; 
L["Scritch"                 ] = nil ; 
L["Sele'na"                 ] = nil ; 
L["Blackhoof"               ] = nil ; 
L["Nasra Spothide"          ] = nil ; 
L["Jonn-Dar"                ] = nil ; 
L["Ahone the Wanderer"      ] = nil ; 
L["Norlaxx"                 ] = nil ; 
L["Ski'thik"                ] = nil ; 
L["Havak"                   ] = nil ; 
L["Nessos the Oracle"       ] = nil ; 
L["Korda Torros"            ] = nil ; 
L["Borginn Darkfist"        ] = nil ; 

L["Krol the Blade"          ] = nil ;
L["Ik-Ik the Nimble"        ] = nil ;
L["Ai-Li Skymirror"         ] = nil ;
L["Gar'lok"                 ] = nil ;
L["Omnis Grinlok"           ] = nil ;
L["Dak the Breaker"         ] = nil ;
L["Karr the Darkener"       ] = nil ;
L["Nalash Verdantis"        ] = nil ;
L["Ai-Ran the Shifting Cloud"] = nil ;
L["Major Nanners"           ] = nil ;
L["Yorik Sharpeye"          ] = nil ;
L["Kang the Soul Thief"     ] = nil ;
L["Kal'tik the Blight"      ] = nil ;
L["Scritch"                 ] = nil ;
L["Sele'na"                 ] = nil ;
L["Blackhoof"               ] = nil ;
L["Nasra Spothide"          ] = nil ;
L["Jonn-Dar"                ] = nil ;
L["Ahone the Wanderer"      ] = nil ;
L["Norlaxx"                 ] = nil ;
L["Ski'thik"                ] = nil ;
L["Havak"                   ] = nil ;
L["Nessos the Oracle"       ] = nil ;
L["Korda Torros"            ] = nil ;
L["Borginn Darkfist"        ] = nil ;

L["Garnia"                  ] = nil ;
L["Leafmender"              ] = nil ;
L["Urdur the Cauterizer"    ] = nil ;
L["Rock Moss"               ] = nil ;
L["Spirit of Jadefire"      ] = nil ;
L["Tsavo'ka"                ] = nil ;
L["Spelurk"                 ] = nil ;
L["Cinderfall"              ] = nil ;
L["Golganarr"               ] = nil ;
L["Cranegnasher"            ] = nil ;
L["Scary Sprite"            ] = nil ;
L["Zhu-Gon the Sour"        ] = nil ;
L["Gu'chi the Swarmbringer" ] = nil ;
L["Watcher Osu"             ] = nil ;
L["Jakur of Ordon"          ] = nil ;
L["Rattleskew"              ] = nil ;
L["Stinkbraid"              ] = nil ;
L["Karkanos"                ] = nil ;
L["Cursed Hozen Swabby"     ] = nil ;
L["Zesqua"                  ] = nil ;
L["Dread Ship Vazuvius"     ] = nil ;
L["Chelon"                  ] = nil ;
L["Spectral Pirate"         ] = nil ;

-- 
L[" Battle.net is currently down."] = "Battle.net временно недоступен." ;
L[" oQueue will not function properly until Battle.net is restored."] = "oQueue не будет функционировать, пока Battle.net не восстановит работу." ;
L[" Please set your battle-tag before using oQueue."] = "Пожалуйста, создайте Battle Tag прежде чем использовать oQueue." ;
L[" Your battle-tag can only be set via your WoW account page."] = "Ваш Battle Tag может быть создан только на странице аккаунта." ;
L["NOTICE:  You've exceeded the cap before the cap(%s).  removed: %s"] = "НАПОМИНАНИЕ: Вы превысили максимально возможное кол-во(%s). Удаление: %s" ;
L["WARNING:  Your battle.net friends list has %s friends."] = "ВНИМАНИЕ: Ваш список друзей Battle.net содержит %s друзей." ;
L["WARNING:  You've exceeded the cap before the cap(%s)"] = "ВНИМАНИЕ: Вы превысили максимально возможное кол-во(%s)." ;
L["WARNING:  No mesh nodes available for removal.  Please trim your b.net friends list"] = "Нет доступных узлов связи для удаления. Проверьте список друзей Battle.net." ;
L["Found oQ banned b.tag on your friends list.  removing: %s"] = "В вашем списке друзей найден заблокированный Battle Tag. Удаление: %s" ;
L["<html><body>"..
  "<h2 align=\"left\">where to get help</h2>".. 
  "<br/>"..
  "<h1 align=\"left\">main site</h1>".. 
  "<p>solidice.com</p>"..
  "<br/>"..
  "<h1 align=\"left\">vent support</h1>".. 
  "<p>wow.publicvent.org : 4135  room 0</p>"..
  "<br/>"..
  "<h1 align=\"left\">facebook group</h1>".. 
  "<p>facebook.com/groups/oqueue</p>"..
  "<br/>"..
  "<h1 align=\"left\">forums</h1>".. 
  "<p>oq.publicvent.org/forums</p>"..
  "<br/>"..
  "<h1 align=\"left\">twitter</h1>".. 
  "<p>twitter.com/tinystomper</p>"..
  "</body></html>"] = nil ;
