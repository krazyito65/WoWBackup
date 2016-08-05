local L = BigWigs:NewBossLocale("Moam", "koKR")
if not L then return end
if L then
	--L.starttrigger = "%s senses your fear."
end

L = BigWigs:NewBossLocale("Ossirian the Unscarred", "koKR")
if L then
	--L.debuff = "Weakness"
	--L.debuff_desc = "Warn for various weakness types."
end

L = BigWigs:NewBossLocale("General Rajaxx", "koKR")
if L then
	wave = "단계 알림",
	wave_desc = "단계에 대한 알림",

	trigger1 = "그들이 오고 있다. 자신의 몸을 지키도록 하라!",
	--trigger2 = "?????",  -- 2단계 외침은 없음 ><
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
end

L = BigWigs:NewBossLocale("Ruins of Ahn'Qiraj Trash", "koKR")
if L then
	--L.guardian = "Anubisath Guardian"
end

