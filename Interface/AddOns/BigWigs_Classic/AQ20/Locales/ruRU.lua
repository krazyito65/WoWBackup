local L = BigWigs:NewBossLocale("Moam", "ruRU")
if not L then return end
if L then
	L.starttrigger = "%s был запуган и бежит в страхе."
end

L = BigWigs:NewBossLocale("Ossirian the Unscarred", "ruRU")
if L then
	L.debuff = "Слабость"
	L.debuff_desc = "Предупреждать о наложении слабости на игроков."
end

L = BigWigs:NewBossLocale("General Rajaxx", "ruRU")
if L then
	L.wave = "Волны"
	L.wave_desc = "Сообщать о наступлении волн."

	L.trigger1 = "Kill first, ask questions later... Incoming!"
	--L.trigger2 = "?????" -- There is no callout for wave 2 ><
	L.trigger3 = "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!"
	L.trigger4 = "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!\013\n"
	L.trigger5 = "Fear is for the enemy! Fear and death!"
	L.trigger6 = "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!\013\n"
	L.trigger7 = "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!\013\n"
	L.trigger8 = "Impudent fool! I will kill you myself!"
	L.trigger9 = "Remember, Rajaxx, when I said I'd kill you last?"

	L.warn1 = "Волна 1/8"
	L.warn2 = "Волна 2/8"
	L.warn3 = "Волна 3/8"
	L.warn4 = "Волна 4/8"
	L.warn5 = "Волна 5/8"
	L.warn6 = "Волна 6/8"
	L.warn7 = "Волна 7/8"
	L.warn8 = "Наступает Генерал Раджах"
	L.warn9 = "Волна 1/8" -- trigger for starting the event by pulling the first wave instead of talking to andorov
end

L = BigWigs:NewBossLocale("Ruins of Ahn'Qiraj Trash", "ruRU")
if L then
	--L.guardian = "Anubisath Guardian"
end

