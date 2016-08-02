local ZGV = ZygorGuidesViewer
if not ZGV then return end

ZGV.skills = {}

local LS=ZygorGuidesViewer_L("Skills")

ZGV.skillSpells = {
	['Alchemy']=2259,
	['Blacksmithing']=2018,
	['Inscription']=45357,
	['Jewelcrafting']=25229,
	['Leatherworking']=2108,
	['Tailoring']=3908,
	['Enchanting']=7411,
	['Engineering']=4036,

	['Herbalism']=2366,
	['Mining']=2575,
	['Smelting']=2656,
	['Skinning']=8613,

	['Archaeology']=78670,
	['Cooking']=2550,
		['Way of the Grill']=124694,
		['Way of the Wok']=125584,
		['Way of the Pot']=125586,
		['Way of the Steamer']=125587,
		['Way of the Oven']=125588,
		['Way of the Brew']=125589,
	['First Aid']=3273,
	['Fishing']=7620,
}

local skillSpells=ZGV.skillSpells

ZGV.LocaleSkills={}
ZGV.LocaleSkillsR={}
setmetatable(ZGV.LocaleSkills,{__index=function(t,q) return q end})
setmetatable(ZGV.LocaleSkillsR,{__index=function(t,q) return q end})

tinsert(ZGV.startups,function(self)
	self:AddEvent("PLAYER_ENTERING_WORLD","CacheSkills")
	self:AddEvent("SKILL_LINES_CHANGED","CacheSkills")
	self:AddEvent("TRADE_SKILL_UPDATE","CacheSkills")
	self:AddEvent("CHAT_MSG_SKILL","CacheSkills")
	self:AddEvent("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEvent("TRADE_SKILL_SHOW","Profession_TRADE_SKILL_SHOW")
	--self:AddEvent("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	self.skills[""]={
		active=false,
		level=0,
		max=0
	}

	if GetLocale()~="enUS" then
		for skill,num in pairs(skillSpells) do
			ZGV.LocaleSkills[skill]=GetSpellInfo(num)
			ZGV.LocaleSkillsR[ZGV.LocaleSkills[skill]]=skill
		end
	end
end)

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function ZGV:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end

function ZGV:Profession_TRADE_SKILL_SHOW()
	self:CacheSkills()
	if self.Delayed_PerformTradeSkill_step then
		self:PerformTradeSkillGoal(self.Delayed_PerformTradeSkill_step,self.Delayed_PerformTradeSkill_goal)
		self.Delayed_PerformTradeSkill_step=nil
		self.Delayed_PerformTradeSkill_goal=nil
	end
end

function ZGV:CacheSkills()
	if not TradeSkillFrame then
	--TODO
	end

	local profs={GetProfessions()}
	for i,prof in pairs(profs) do
		local name,icon,rank,maxrank,numspells,spelloffset,skillline = GetProfessionInfo(prof)

		local pro = self.skills[name]
		if not pro then
			pro={}
			self.skills[name]=pro
		end
		pro.level=rank
		pro.max=maxrank
		pro.active=true
	end

	self:CacheRecipes()  -- or try to, anyway. --Do Cooking masteries too
end

function ZGV:GetSkill(name)
	if ZGV.db.profile.fakeskills[name] then
		return ZGV.db.profile.fakeskills[name]
	else
		local name = ZGV.LocaleSkills[name]
		--if name~="Cooking" then print(name) end
		return self.skills[name] or self.skills[""]
	end
end

local CookingSkills = { --Copy from skillSpells, just to make scanning them easier.
	['Way of the Pot']=125586,
	['Way of the Grill']=124694,
	['Way of the Wok']=125584,
	['Way of the Steamer']=125587,
	['Way of the Oven']=125588,
	['Way of the Brew']=125589,
}


function ZGV:CacheRecipes()
	-- assume tradeskill window is open?
	local skill = GetTradeSkillLine()
	if skill=="UNKNOWN" then return end

	-- ah fuck this
	--[[
	-- clear filters
	if TradeSkillFrameAvailableFilterCheckButton:GetChecked() then
		TradeSkillOnlyShowMakeable(false)
		TradeSkillFrameAvailableFilterCheckButton:SetChecked(false)
	end
	--UIDropDownMenu_Initialize(TradeSkillInvSlotDropDown, TradeSkillInvSlotDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillInvSlotDropDown,1)
	SetTradeSkillInvSlotFilter(0,1,1)
	--UIDropDownMenu_Initialize(TradeSkillSubClassDropDown, TradeSkillSubClassDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillSubClassDropDown,1)
	SetTradeSkillSubClassFilter(0,1,1)

	--expand headers
	local openedheaders={}
	for i=GetNumTradeSkills(),1,-1 do
		local name,ttype,_,expanded = GetTradeSkillInfo(i)
		if ttype=="header" and not expanded then
			ExpandTradeSkillSubClass(i)
			openedheaders[name]=true
		end
	end
	--]]

	if IsTradeSkillLinked() then return end
	-- scan!
	local recipes = self.db.char.RecipesKnown

	wipe(recipes)

	local scanned=0
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)
		local rank,maxrank = select(9,GetTradeSkillInfo(i))

		if tradeName and tradeType~="header" and tradeType~="subheader" then
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local spell = strmatch(link,"|H%w+:(%d+)")
				recipes[tonumber(spell)]=true
				scanned=scanned+1
			end
		elseif tradeName and tradeType=="subheader" then --Cooking Masteries
			for k,id in pairs(CookingSkills) do
				local name = GetSpellInfo(id) --local name
				
				if tradeName == name then
					local pro = self.skills[name]
					if not pro then
						pro={} self.skills[name]=pro
					end
					pro.level=rank
					pro.max=maxrank
					pro.active=true

					self:Debug(tradeName.." has level "..rank)
					break
				end
			end
		end
	end
	self:Debug(scanned.." "..skill.." recipes found")

	--[[
	--collapse headers
	for i=GetNumTradeSkills(),1,-1 do
		local name = GetTradeSkillInfo(i)
		if openedheaders[name] then CollapseTradeSkillSubClass(i) end
	end
	--]]
end

function ZGV:DelayPerformTradeSkillGoal(step,goal)
	self.Delayed_PerformTradeSkill_step=step
	self.Delayed_PerformTradeSkill_goal=goal
end

function ZGV:PerformTradeSkillGoal(step,goal)
	if not step or not goal or type(step)~="number" or type(goal)~="number" or not GetTradeSkillLine() then return end
	step = ZGV.CurrentGuide.steps[step]   if not step then return end
	goal = step.goals[goal]   if not goal then return end
	if goal.skillnum then
		-- skillup-based
		self:PerformTradeSkill(goal.spellid,goal.skillnum)
	elseif goal.targetid then
		self:PerformTradeSkill(goal.spellid,goal.count-GetItemCount(goal.targetid))
	end
end

function ZGV:PerformTradeSkill(id,count)
	if not count then count=1 end
	if count<=0 then return end
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" then
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local spell = tonumber(strmatch(link,"|H%w+:(%d+)"))
				if spell==id then
					DoTradeSkill(i,count)
				end
			end
		end
	end
end