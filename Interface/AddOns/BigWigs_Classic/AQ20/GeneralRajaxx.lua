﻿
--------------------------------------------------------------------------------
-- Module declaration
--

local mod = BigWigs:NewBoss("General Rajaxx", 717)
if not mod then return end
mod:RegisterEnableMob(15341, 15471) -- General Rajaxx, Lieutenant General Andorov

local rajdead

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.bossName = "General Rajaxx"

	L.wave = "Waves"
	L.wave_desc = "Warn for incoming waves."

	L.trigger1 = "Kill first, ask questions later... Incoming!"
	L.trigger2 = "?????"  -- There is no callout for wave 2 ><
	L.trigger3 = "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!"
	L.trigger4 = "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!\013\n"
	L.trigger5 = "Fear is for the enemy! Fear and death!"
	L.trigger6 = "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!\013\n"
	L.trigger7 = "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!\013\n"
	L.trigger8 = "Impudent fool! I will kill you myself!"
	L.trigger9 = "Remember, Rajaxx, when I said I'd kill you last?"

	L.warn1 = "Wave 1/8"
	L.warn2 = "Wave 2/8"
	L.warn3 = "Wave 3/8"
	L.warn4 = "Wave 4/8"
	L.warn5 = "Wave 5/8"
	L.warn6 = "Wave 6/8"
	L.warn7 = "Wave 7/8"
	L.warn8 = "Incoming General Rajaxx"
	L.warn9 = "Wave 1/8" -- trigger for starting the event by pulling the first wave instead of talking to andorov
end
L = mod:GetLocale()
mod.displayName = L.bossName

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		"wave",
		25471, -- Attack Order
		8269, -- Frenzy
	}
end

function mod:VerifyEnable()
	return not rajdead
end

function mod:OnBossEnable()
	self:Log("SPELL_AURA_APPLIED", "AttackOrder", 25471)
	self:Log("SPELL_AURA_APPLIED", "Frenzy", 8269)

	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")

	self:Death("Win", 15341)
end

function mod:OnWin()
	rajdead = true
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:AttackOrder(args)
	self:TargetMessage(args.spellId, args.destName, "Attention")
	self:TargetBar(args.spellId, 10, args.destName)
end

function mod:Frenzy(args)
	self:Message(args.spellId, "Important")
end

function mod:CHAT_MSG_MONSTER_YELL(event, msg)
	for i = 1, 9 do
		if msg == L["trigger"..i] then
			self:Message("wave", "Urgent", nil, L["warn"..i], false)
			break
		end
	end
end

--[[
L:RegisterTranslations("frFR", function() return {
	wave = "Vagues",
	wave_desc = "Préviens de l'arrivée des vagues.",

	trigger1 = "Ils arrivent. Essayez de ne pas vous faire tuer, bleusaille.",
	-- trigger2 = "?????",
	trigger3 = "L’heure de notre vengeance sonne enfin ! Que les ténèbres règnent dans le coeur de nos ennemis !",
	trigger4 = "C’en est fini d’attendre derrière des portes fermées et des murs de pierre ! Nous ne serons pas privés de notre vengeance ! Les dragons eux-mêmes trembleront devant notre courroux !",
	trigger5 = "La peur est pour l’ennemi ! La peur et la mort !",
	trigger6 = "Staghelm pleurnichera pour avoir la vie sauve, comme l’a fait son morveux de fils ! En ce jour, mille ans d’injustice s’achèvent !",
	trigger7 = "Fandral ! Ton heure est venue ! Va te cacher dans le Rêve d’Emeraude, et prie pour que nous ne te trouvions jamais !",
	trigger8 = "Imbécile imprudent ! Je vais te tuer moi-même !",
	trigger9 = "Alors, Rajaxx, tu te souviens que j’avais dit que je te tuerais le dernier ?",

	warn1 = "Vague 1/8",
	warn2 = "Vague 2/8",
	warn3 = "Vague 3/8",
	warn4 = "Vague 4/8",
	warn5 = "Vague 5/8",
	warn6 = "Vague 6/8",
	warn7 = "Vague 7/8",
	warn8 = "Le général Rajaxx arrive !",
	warn9 = "Vague 1/8", -- trigger for starting the event by pulling the first wave instead of talking to andorov
} end )

L:RegisterTranslations("deDE", function() return {
	wave = "Wellen",
	wave_desc = "Warnung vor den ankommenden Gegner Wellen.",

	trigger1 = "Hier kommen sie. Bleibt am Leben, Welpen.",
	trigger2 = "?????",  -- There is no callout for wave 2 ><
	trigger3 = "Die Zeit der Vergeltung ist gekommen! Lasst uns die Herzen unserer Feinde mit Dunkelheit f\195\188llen!",
	trigger4 = "Wir werden nicht l\195\164nger hinter verbarrikadierten Toren und Mauern aus Stein ausharren! Die Rache wird unser sein! Selbst die Drachen werden im Angesicht unseres Zornes erzittern!",
	trigger5 = "Wir kennen keine Furcht! Und wir werden unseren Feinden den Tod bringen!",
	trigger6 = "Staghelm wird winseln und um sein Leben betteln, genau wie sein r\195\164udiger Sohn! Eintausend Jahre der Ungerechtigkeit werden heute enden!",
	trigger7 = "Fandral! Deine Zeit ist gekommen! Geh und verstecke dich im Smaragdgr\195\188nen Traum, und bete, dass wir dich nie finden werden!",
	trigger8 = "Unversch\195\164mter Narr! Ich werde Euch h\195\182chstpers\195\182nlich t\195\182ten!",
	trigger9 = "Erinnerst du dich daran, Rajaxx, wann ich dir das letzte Mal sagte, ich w\195\188rde dich t\195\182ten?",

	warn1 = "Welle 1/8",
	warn2 = "Welle 2/8",
	warn3 = "Welle 3/8",
	warn4 = "Welle 4/8",
	warn5 = "Welle 5/8",
	warn6 = "Welle 6/8",
	warn7 = "Welle 7/8",
	warn8 = "General Rajaxx kommt!",
	warn9 = "Welle 1/8", -- trigger for starting the event by pulling the first wave instead of talking to andorov
} end )

L:RegisterTranslations("zhCN", function() return {
	wave = "来袭警报",
	wave_desc = "当新一批敌人来袭时发出警报",

	trigger1 = "它们来了。尽量别被它们干掉，新兵。",
	trigger2 = "?????",  -- There is no callout for wave 2 ><
	trigger3 = "我们复仇的时刻到了！让敌人的内心被黑暗吞噬吧！",
	trigger4 = "我们不用再呆在这座石墙里面了！我们很快就能报仇了！在我们的怒火面前，就连那些龙也会战栗！",
	trigger5 = "让敌人胆战心惊吧！让他们在恐惧中死去！",
	trigger6 = "鹿盔将会呜咽着哀求我饶他一命，就像他那懦弱的儿子一样！一千年来的屈辱会在今天洗清！",
	trigger7 = "范达尔！你的死期到了！藏到翡翠梦境里去吧，祈祷我们永远都找不到你！",
	trigger8 = "无礼的蠢货！我会亲自要了你们的命！",
	trigger9 = "记得",

	warn1 = "第 1/8 批敌人来了！注意！",
	warn2 = "第 2/8 批敌人来了！注意！",
	warn3 = "第 3/8 批敌人来了！注意！",
	warn4 = "第 4/8 批敌人来了！注意！",
	warn5 = "第 5/8 批敌人来了！注意！",
	warn6 = "第 6/8 批敌人来了！注意！",
	warn7 = "第 7/8 批敌人来了！注意！",
	warn8 = "拉贾克斯将军亲自上阵！",
	warn9 = "第 1/8 批敌人来了！注意！", -- trigger for starting the event by pulling the first wave instead of talking to andorov
} end )

L:RegisterTranslations("zhTW", function() return {
	wave = "來襲警報",
	wave_desc = "當新一批敵人來襲時發出警報",

	trigger1 = "先殺再說...他們來了！", --開戰了才警告
	trigger2 = "?????",  -- There is no callout for wave 2 ><
	trigger3 = "我們懲罰的時刻就在眼前！讓黑暗支配敵人的內心吧！",
	trigger4 = "我們不需在被禁堵的門與石牆後等待了！我們的復仇將不再被否認！巨龍將在我們的憤怒之前顫抖！",
	trigger5 = "恐懼是給敵人的！恐懼與死亡！",
	trigger6 = "鹿盔將為了活命而啜泣、乞求，就像他的兒子一樣！一千年的不公將在今日結束！",
	trigger7 = "范達爾！你的時候到了！躲進翡翠夢境祈禱我們永遠不會找到你吧！",
	trigger8 = "厚顏無恥的笨蛋！我要親手殺了你！",
	trigger9 = "記得",

	warn1 = "第 1/8 波敵人",
	warn2 = "第 2/8 波敵人",
	warn3 = "第 3/8 波敵人",
	warn4 = "第 4/8 波敵人",
	warn5 = "第 5/8 波敵人",
	warn6 = "第 6/8 波敵人",
	warn7 = "第 7/8 波敵人",
	warn8 = "最後一波 拉賈克斯將軍！",
	warn9 = "第 1/8 波敵人", -- trigger for starting the event by pulling the first wave instead of talking to andorov
} end )

L:RegisterTranslations("koKR", function() return {
	wave = "단계 알림",
	wave_desc = "단계에 대한 알림",

	trigger1 = "그들이 오고 있다. 자신의 몸을 지키도록 하라!",
	trigger2 = "?????",  -- 2단계 외침은 없음 ><
	trigger3 = "응보의 날이 다가왔다! 암흑이 적들의 마음을 지배하게 되리라!",
	trigger4 = "‘더는’ 돌벽과 성문 뒤에서 기다릴 수 없다! 복수의 기회를 놓칠 수 없다. 우리가 분노를 터뜨리는 날 용족은 두려움에 떨리라.",
	trigger5 = "적에게 공포와 죽음의 향연을!",
	trigger6 = "스테그헬름은 흐느끼며 목숨을 구걸하리라. 그 아들놈이 그랬던 것처럼! 천 년의 한을 풀리라! 오늘에서야!",
	trigger7 = "판드랄! 때가 왔다! 에메랄드의 꿈속에 숨어서 기도나 올려라!",
	trigger8 = "건방진...  내 친히 너희를 처치해주마!",
	trigger9 = "내가 너는 꼭 마지막에 해치우겠다고 말했던 걸 기억하나, 라작스?", --CHECK

	warn1 = "1/8 단계",
	warn2 = "2/8 단계",
	warn3 = "3/8 단계",
	warn4 = "4/8 단계",
	warn5 = "5/8 단계",
	warn6 = "6/8 단계",
	warn7 = "7/8 단계",
	warn8 = "장군 라작스 등장",
	warn9 = "1/8 단계", -- trigger for starting the event by pulling the first wave instead of talking to andorov --CHECK
} end )

L:RegisterTranslations("ruRU", function() return {
	wave = "Волны",
	wave_desc = "Сообщать о наступлении волн.",

	trigger1 = "Kill first, ask questions later... Incoming!",
	trigger2 = "?????",  -- There is no callout for wave 2 ><
	trigger3 = "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!",
	trigger4 = "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!\013\n",
	trigger5 = "Fear is for the enemy! Fear and death!",
	trigger6 = "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!\013\n",
	trigger7 = "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!\013\n",
	trigger8 = "Impudent fool! I will kill you myself!",
	trigger9 = "Remember, Rajaxx, when I said I'd kill you last?",

	warn1 = "Волна 1/8",
	warn2 = "Волна 2/8",
	warn3 = "Волна 3/8",
	warn4 = "Волна 4/8",
	warn5 = "Волна 5/8",
	warn6 = "Волна 6/8",
	warn7 = "Волна 7/8",
	warn8 = "Наступает Генерал Раджах",
	warn9 = "Волна 1/8", -- trigger for starting the event by pulling the first wave instead of talking to andorov
} end )
]]

