if GetLocale() ~= "zhTW" then return end
local L

------------------------
-- White TIger Temple --
------------------------
L= VEM:GetModLocalization("d640")

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	count1				= "備忘提示：第一波 (在相應波數這些文字會顯示在信息框中)",
	count2				= "第二波",
	count3				= "第三波",
	count4				= "第四波",
	count5				= "第五波",
	count6				= "第六波",
	count7				= "第七波",
	count8				= "第八波",
	count9				= "第九波",
	count10				= "第十波"
})