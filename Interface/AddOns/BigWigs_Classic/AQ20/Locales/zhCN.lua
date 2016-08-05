local L = BigWigs:NewBossLocale("Moam", "zhCN")
if not L then return end
if L then
	--L.starttrigger = "%s senses your fear."
end

L = BigWigs:NewBossLocale("Ossirian the Unscarred", "zhCN")
if L then
	--L.debuff = "Weakness"
	--L.debuff_desc = "Warn for various weakness types."
end

L = BigWigs:NewBossLocale("General Rajaxx", "zhCN")
if L then
	wave = "来袭警报",
	wave_desc = "当新一批敌人来袭时发出警报",

	trigger1 = "它们来了。尽量别被它们干掉，新兵。",
	--trigger2 = "?????",  -- There is no callout for wave 2 ><
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
end

L = BigWigs:NewBossLocale("Ruins of Ahn'Qiraj Trash", "zhCN")
if L then
	--L.guardian = "Anubisath Guardian"
end

