--[[
Name: LibRover-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library calculating travel paths from point A to point B.
Dependencies: None
License: MIT
]]

-- BabbleZone or somesuch heavily suggested. This library uses English map names.

local MAJOR_VERSION = "LibRover-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

local tostring=tostring --Getting a nil value sometimes. Localizing to see if it address the issue.

local name,addon = ...
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

local Astrolabe = DongleStub("Astrolabe-ZGV")
local LibTaxi = LibStub("LibTaxi-1.0")

do
	local LIB_MAJOR, LIB_MINOR = "LibRover-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)

	--[[
	if not Lib then -- ookay, REPLACE the old thing! This is evil, I know.
		Lib = LibStub:GetLibrary(LIB_MAJOR, LIB_MINOR)
		if not Lib.is_stub then  return  end
		Lib.is_stub=nil
	end
	--]]

	if Lib then

		local BZ = LibStub("LibBabble-SubZone-3.0")
		local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

		-- let's get famous
		addon.LibRover = Lib
		_G['LibRover'] = Lib

		local yield = coroutine.yield
		local resume = coroutine.resume

		-- Localization stub:
		local L = {}
		setmetatable(L,{__index=function(self,k) return rawget(self,k) or k end})

		Lib.data = Lib.data or addon.LibRoverData     addon.LibRoverData = nil

		Lib.opennodes = { }
		Lib.closednodes = { }

		Lib.banned_nodes = {}

		local WEAK_VALUES={__mode='v'}
		Lib.nodes = {all={},taxi={},id={},mageteleport={},['start']={},['end']={}}
		-- if a node falls out of the 'all', drop it everywhere.
		local allnodes = Lib.nodes.all
		setmetatable(Lib.nodes.taxi,WEAK_VALUES)
		setmetatable(Lib.nodes.id,WEAK_VALUES)
		setmetatable(Lib.nodes.mageteleport,WEAK_VALUES)

		local MAGE_TELEPORT_COST = 20
		local MAGE_TELEPORT_COST_STORMWIND = 30    -- Stormwind Mage Tower is a bitch to get out of.
		local COST_CROSSCONTINENT_DEFAULT = 20
		local COST_SHIP_DEFAULT = 240

		Lib.knowntaxis = {}  -- managed by LibTaxi


		-- intercrossable zone pairs
		Lib.greenborders = {}

		Lib.do_updating = true

		Lib.cfg = {
			use_cot = true,
			use_mage_teleport = true,
			use_last_resort = true, -- Warlock summons/Courtesy portals
			avoid_highlevel_zones = true,
			strip_arrivals=true,
			use_hearth = true,
			use_astral_recall = true,
		}

		--[[
		local TYPE_BORDER = 1
		local TYPE_TAXI = 3
		local TYPE_START = 4
		local TYPE_END = 5

		local WAY_GROUND = 1
		local WAY_SHIP = 2
		local WAY_TAXI = 3
		local WAY_FLY = 4
		local WAY_PORTAL = 5
		local WAY_ZEPPELIN = 6
		--]]

		local function getdist(node1,node2)
			local dist,xd,yd = Astrolabe:ComputeDistance(node1.m,node1.f,node1.x,node1.y,node2.m,node2.f,node2.x,node2.y)
			if dist==0 and node1.c~=node2.c or (node1.c==node2.c and node1.c==-1 and node1.m~=node2.m) then dist=nil end   -- the latter condition shouldn't matter anymore, since we moved to Astrolabe systems instead of continents
			return dist or 99999999,xd,yd
		end
		Lib.GetDist=getdist

		local function map_breaks_stuff()
			return WorldMapFrame:IsShown() and (GetPlayerMapPosition("player")==0)
		end

		local function playerpos()
			local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor -- WHY OH WHY do I have to do it like that ;_;
			local lam,laf,lax,lay = unpack(Astrolabe.LastPlayerPosition)
			local x,y = Astrolabe:TranslateWorldMapPosition( lam, laf, lax, lay, m, f )
			if not x or x<0 or y<0 or x>1 or y>1 then x,y=nil,nil end
			return m,f,x,y
		end
		Lib.playerpos=playerpos

		local function myassert(test,msg,...)
			if not test then
				ERRORS=ERRORS or {}  -- global!
				tinsert(ERRORS,{...})
				error(msg)
			end
		end

		local function is_exo_or_belf(map) -- dual purpose:
			return map==464 or map==476 or map==471 or map==894  -- exo & co.
				or map==463 or map==462 or map==480 or map==893  -- smoon & co.
		end

		-- This magic makes a bitmask out of which parts of Eastern see each other.
		-- They're all split by bays and seas, which cannot be flown over, so this is needed for sane navigation.
		-- Result - only zones sharing a "part bit" see each other directly.
		local function which_eastern_part(map)
			if map==14 then return 255 end  -- holy crap, this will suck - but hey, SOMEONE put a node out in continent space...
			if map==23 or map==22 or map==20 or map==892 or map==21 or map==24 or map==684 or map==382 then return 1 end  --northmost
			if map==16 then return 1+2 end  --Arathi, connecting the parts, kinda
			if map==40 or map==700 then return 2+4 end  --Wetlands and Twilight
			if map==27 or map==35 or map==17 or map==866 or map==895 or map==28 or map==29 or map==30 or map==864 or map==301 or map==36 or map==38 or map==19 or map==689 or map==37 or map==673 or map==34 or map==39 or map==32 or map==38 then return 4 end  -- the goddamn rest
			return 8
		end
		local function same_eastern_part(map1,map2)
			return bit.band(which_eastern_part(map1),which_eastern_part(map2))>0
		end

		local function is_barad(map)
			return map==708 or map==709
		end

		local function is_vash(map)
			return map==613 or map==610 or map==614 or map==615
		end



		-- IMPORTANT OBSERVATION.
		-- Nodes are (almost) ALWAYS separated by "walk"/"fly"

		local function MapName(id,floor)
			if type(id)=="table" then id,floor=id.m,id.f end
			return ZGV.Pointer.GetMapNameByID2(tonumber(id) or 0,floor or 0) or "(map "..tostring(id).."?)"
		end

		local node_proto = {}

		-- Run as node:GetText().
		-- Additional params allow for contextualization - give a node its predecessor and successor, and get proper "ship from..." display.
		function node_proto.GetText(node,prevnode,nextnode,dir)
			local prevstep,nextstep
			if prevnode and prevnode.node then prevstep,prevnode = prevnode,prevnode.node end
			if nextnode and nextnode.node then nextstep,nextnode = nextnode,nextnode.node end

			function FromTo(strfrom,strto)
				if prevnode and prevnode==node.border then return strfrom else return strto end
			end

			if node.extra_title then return L[node.extra_title] end

			if Lib.debug_verbose_nodes then
				return ("[%d] %s %d,%d (%s)"):format(node.num,GetMapNameByID(node.m or 0) or "world",node.x*100,node.y*100,node.type)

			elseif node.type=="border" then
				--if fromnode and fromnode.n[node] and fromnode.n[node].border then
					--local border = fromnode.n[node].border
					--return ("%s border"):format(GetMapNameByID(fromnode:GetText()) or dstmap)
				--else
					--return ("%s/%s border"):format(GetMapNameByID(node.border[1]) or node.border[1],GetMapNameByID(node.border[2]) or node.border[2])
				--end
				return ("%s/%s border"):format(MapName(node),MapName(node.border or node.ms and next(node.ms)))
			elseif node.type=="taxi" then
				return ("%s flight point"):format(node.name)
			elseif node.type=="ship" then
				local destportname = node.border.port and ("%s, %s"):format(node.border.port,MapName(node.border)) or node.border.name or MapName(node.border)
				return FromTo("Ship from %s","Ship to %s"):format(destportname)
			elseif node.type=="zeppelin" then
				local destportname = node.border.port and ("%s, %s"):format(node.border.port,MapName(node.border)) or node.border.name or MapName(node.border)
				return FromTo("Zeppelin from %s","Zeppelin to %s"):format(destportname)
			elseif node.type=="tram" then
				--local dest=node.border.port or (nextnode.m~=node.m and nextnode) or (prevnode.m~=node.m and prevnode)
				local destportname = node.border.port and ("%s, %s"):format(node.border.port,MapName(node.border)) or node.border.name or MapName(node.border)
				return FromTo("Tram from %s","Tram to %s"):format(destportname)
			elseif node.type=="portal" then
				if node.border and node.m==node.border.m then
					return ("Portal")
				elseif node.border and node.border~="multi" then -- should have one! though portals tend to have common destination points, account for that too.
					local destportname = node.border.port and ("%s, %s"):format(node.border.port,MapName(node.border)) or node.border.name or MapName(node.border)
					return FromTo("Portal from %s","Portal to %s"):format(destportname)
				elseif prevnode then
					local destportname = prevnode.port or prevnode.name or MapName(prevnode)
					return FromTo("Portal from %s","Portal to %s"):format(destportname)
				else
					return "Portal destination"
				end
				--if not srcmap then
					--return ("%s/%s portal"):format(GetMapNameByID(node.n[fromnode]border[1]),GetMapNameByID(node.border[2]))
				--else
				--	local dstmap = node.border[1]==srcmap and dstmap or srcmap
				--	return ("Portal %s %s"):format(dir=="src" and "to" or "from",GetMapNameByID(dstmap))
				--end
			else
				return ("%s %d,%d"):format(MapName(node),node.x*100,node.y*100)
			end
		end

		function node_proto.tostring(node,withneighs)
			local ret = ("[%d] %s\"%s\" = %s /%d %.1f,%.1f [%s]"):format(node.num, (node.id and "@"..node.id.." " or ""), node:GetText(), MapName(node.m),node.f, node.x*100,node.y*100, node.type or "?")
			if node.is_arrival then  ret = ret .. " (arrival)" end
			if node.region then  ret = ret .. (" (REG:|cff0088ff%s|r)"):format(node.region)  end
			if node.type=="taxi" then  ret = ret .. (" (taxi known:%s)"):format((node.known==true and "|cff00ff00YES|r") or (node.known==false and "|cffff0000NO|r") or "|cffffaa00?|r")  end
			if node.score then  ret = ret .. (" (t=|cffffffff%.1f|r, h=%.1f)"):format(node.score or -1,node.heur or -1)  end
			if node.link then  ret = ret .. (" (link:mode=%s)"):format(node.link.mode)  end
			if withneighs then
				local neighs = ""
				for n,link in pairs(node.n) do neighs=neighs.." ".. n:tostring().." <"..(link.mode or "?")..">\n" end
				ret = ret .. "\nLinks:\n"..neighs
			end
			return ret
		end

		function node_proto.GetAngleTo(node1,node2)
			local dist,xd,yd = getdist(node1,node2)
			if not xd then return end
			local dir = atan2(xd, -yd)
			return dir%360
		end

		function node_proto:CanFlyTo(dest)
			if type(dest)=="number" then dest=Lib.nodes.all[dest] end
			if dest==self then return false,"same node" end
			if self.onlyhardwire then return false,"src is onlyhardwire" end
			if dest.onlyhardwire and not self.player then return false,"dest is onlyhardwire" end
			if not (dest.c==self.c and dest.c>=0) then return false,"not same cont" end
			if dest.type=="border" then return false,"dest is a border" end
			if dest.nofly or self.nofly then return false,"either is nofly" end
			if is_exo_or_belf(dest.m) then return false,"dest is exo or belf" end
			if not same_eastern_part(dest.m,self.m) then return false,"not same eastern part" end
			if not is_barad(dest.m)==is_barad(self.m) then return false,"either is barad" end
			if not is_vash(dest.m)==is_vash(self.m) then return false,"either is vash" end
			--if ((dest.m==321 and dest.f==2) or (self.m==321 and self.f==2))  then return false,"dest is orgri cleft" end
			--if ((dest.m==504 and dest.f==2) or (self.m==504 and self.f==2)) then return false,"dest is dala sewer" end

			if ((self.m==321 or self.m==504) and self.f==2)  -- Orgri or Dala
			or ((dest.m==321 or dest.m==504) and dest.f==2)
				then return false,"Orgri or Dala underground" end

			if (dest.f>0 or self.f>0) -- a cave, usually
			and not ((self.m==321 or self.m==504) and self.f==1)  -- but not Orgri or Dala overground
			and not ((dest.m==321 or dest.m==504) and dest.f==1)
				then return false,"dest is a cave or something; not Orgri or Dala, anyway" end
			return true
		end

		local node_meta = {__index=node_proto}

		local TWOPI=math.pi*2

		local link_walk_greenborders = {mode="walk", interx=1}


		-- ONE WAY. Run twice to do two-way.
		-- Checks if n1 sees n2, and - if yes - adds it to neighbours.
		-- node.m = map id
		-- node.ms[mapid] = "does node see nodes in mapid as visible" (crossable borders)
		-- node.c = cont id
		local function DoNodeLinkage(n1,n2,debugmode)
			if n1.c==n2.c then

				if n1.onlyhardwire then return false,"src is onlyhardwire" end
				if n2.onlyhardwire and not n1.player then return false,"dest is onlyhardwire" end

				if n1.type=="taxi" and n2.type=="taxi" then
					-- Timings are IN.
					local cost = n1.costs and n1.costs[n2.taxitag]
					if cost then n1.n[n2]={mode="taxi",cost=cost} end
					return
				end

				-- do ground connections

				if (debugmode) then
					if n1.m==n2.m then print("same map") end
					if (ZGV.Pointer.phasedMaps[n1.m]==ZGV.Pointer.phasedMaps[n2.m]) then print("same phased map") end
					if (n2.ms and n2.ms[n1.m]) then print("n2 visible from n1.ms") end
					if Lib.greenborders:CanCross(n1.m,n2.m) then print("greenborder cancross",n1.m,n2.m) end
					if (n1.regionobj and n1.regionobj:HasGreenBorder(n2.m)) then print("n1.regionobj has green border to n2.m ",n2.m) end
					if (n2.regionobj and n2.regionobj:HasGreenBorder(n1.m)) then print("n2.regionobj has green border to n1.m ",n1.m) end
				end
				
				if (
					( -- same map, at least phase-wise, or the points are set as "guests" on the other map
						(
						 n1.m==n2.m
						 -- or same phased map
						 or (ZGV.Pointer.phasedMaps[n1.m]==ZGV.Pointer.phasedMaps[n2.m])  -- same phased map
						 --or (n1.ms and n1.ms[n2.m])  -- same "surrogate" map, one way or another
						 or (n2.ms and n2.ms[n1.m])
						)
						-- and same floor, if that matters
						and ((n1.f==n2.f) or not Lib.data.basenodes.MapsWithExplicitFloors[n1.m])
						-- and same region
						and (n1.region==n2.region)
					)
					or Lib.greenborders:CanCross(n1.m,n2.m)
					-- or any of the nodes is in a green-bordered region; these are parts of zones that somehow logically belong to another zone, NOT their true zone.
					or (n1.regionobj and n1.regionobj:HasGreenBorder(n2.m))
					or (n2.regionobj and n2.regionobj:HasGreenBorder(n1.m))
				   )
				and not (n1~=Lib.startnode and n1~=Lib.endnode and n2~=Lib.startnode and n2~=Lib.endnode and (n1.noallzone or n2.noallzone)) -- startnode and endnode is allowed to connect even in noallzone, we'll just run a "mud" penalty for beelines later
				and not (n2.m==41 and (n1.y-0.8)*(n2.y-0.8)<0) -- Darnassus! Unwalkable to Rut'n! TEMPORARY... --TODO: make this a region.
				--and not (n1.is_remote~=n2.is_remote)
				then
					n1.n[n2]={mode="walk",implicit=true}

					if (debugmode) then print("linked!") end

					-- The "noallzone" nodes can still see start/end nodes, but through a "mud" penalty.
					-- This guarantees that starts/ends within some special low-visibility areas get connected to the closest explicit node only, with no excessive beelining.
					if n1.noallzone or n2.noallzone then
						if n1==Lib.startnode then
							n1.n[n2].mud=10  -- let's be a little bit lenient on the starts
						elseif n2==Lib.endnode then
							n1.n[n2].mud=100  -- ends better be damn close.
						end
						-- This difference causes routes to have easy starts, but precise endings.
					end

					--DEBUG
					if n1.debug or n2.debug then
						Lib:Debug(n1:tostring().."  --WALK--  "..n2:tostring())
						Lib:Debug("n2.noallzone: "..tostring(n2.noallzone).."  startnode? "..tostring(n1==Lib.startnode))
					end
				end

			end
			--[[
			for t,to in pairs(n1.taxi) do
				if (#to==2 and to[1]==n2.l[1] and to[2]==n2.l[2]) -- they see us using "see all zone"
				or ((type(to)==number or type(to)==string) and n2.id==to) -- direct link to us
				then
					n1.n[i]=WAY_TAXI
				end
			end
			--]]
		end
		--DNL=DoNodeLinkage  --global

		local function AddNode(node)
			--if not self.nodes[node.l[1]] then self.nodes[node.l[1]]={} end
			table.insert(allnodes,node)
			if (node.type) then
				if not Lib.nodes[node.type] then Lib.nodes[node.type]={} --[[setmetatable(Lib.nodes[node.type],{__mode="v"}) --]] end
				setmetatable(Lib.nodes[node.type],WEAK_VALUES)
				table.insert(Lib.nodes[node.type],node)
			end

			setmetatable(node,node_meta)

			-- sanitize continent, coordinates, floor
			node.c = node.c or Astrolabe.WorldMapSize[node.m].system --Lib.ContinentsByID[node.m]
			if node.x>1 then node.x,node.y=node.x/100,node.y/100 end
			node.m = ZGV.Pointer:SanitizePhase(node.m)
			node.f = ZGV:SanitizeMapFloor(node.m,node.f)

			local ni = #allnodes
			node.num=ni

			-- set node.region, if applicable. BEFORE neighbours, ffs.
			Lib.NodeRegions:Assign(node)
			--if node.m==341 then node.nofly=1 end  --ironforge, experimental nofly
			if Lib.data.zoneflags[node.m] then
				for k,v in pairs(Lib.data.zoneflags[node.m]) do
					if node[k]==nil then node[k]=v end
				end
			end


			-- sanitize metadata
			node.dist=tonumber(node.dist)

			node.n={}  -- prepare neighbours
			--setmetatable(node.n,{__mode="k"})
			-- connect to other nodes in the zone, by automatic linkage (taxi, ground)
			for i,v in pairs(allnodes) do
				if v~=node then
					-- endnode only gets linked TO.
					if node~=Lib.endnode then DoNodeLinkage(node,v) end
					-- startnode and inns don't get linked TO, only FROM.
					if node~=Lib.startnode and node.type~="inn" then DoNodeLinkage(v,node) end
				end
			end

			--[[
			-- now done differently through the intelligent Lib.greenborders
			for pi,pair in ipairs(Lib.greenborders) do
				if node.m==pair[1] or node.m==pair[2] then
					for ni2,node2 in ipairs(Lib.nodes.all) do
						if (node~=node2) and ((node2.m==pair[1]) or (node2.m==pair[2])) then
							node.n[node2]=link_walk_greenborders
							node2.n[node]=link_walk_greenborders
						end
					end
				end
			end
			--]]

			if node.id then Lib.nodes.id[node.id]=node end

			return node
		end

		function MakeNode(text)
			if not text then return end
			local dat
			if type(text)=="table" then
				-- hardcore, aren't we? we have an advanced node here!
				dat=text
				text=text[1]
				dat[1]=nil
			else
				dat={}
			end

			-- advanced or not, treat it as a normal all-string parsable node.
			local function grab_dat(s)
				s=s:gsub("%%GT%%","<")
				local k,v = s:match("(.-):(.+)")
				dat[k]=v
				return ""
			end
			text=text:gsub("%s*<(.-)>",grab_dat)

			-- now extract map and coords.
			text=text:match("^%s*(.-)%s*$") or text  --trim
			local rest,id = text:match("^(.-)%s*@(%S+)$")  -- "Map/1 12,34 @id"
			if id and rest=="" then return nil,nil,nil,nil,id end  -- just id!
			text=rest~="" and rest or text
			local m,x,y = text:match("^(.-)[%s,]+([0-9%.]+),([0-9%.]+)$")
			local f
			if m then
				_,f = m:match("^(.-)%s*/%s*(%d+)$")
				m = _ or m
			end
			m=m or text  -- could be just the zone, after all.
			if tonumber(m) then
				m=tonumber(m) -- pure numeric zone!
			else
				m = Lib.data.MapIDsByName[m]
			end
			if type(m)=="table" then m=m[1] end

			assert(m,"Bad map in MakeNode('"..text.."')")

			return m,tonumber(f) or 0,x and tonumber(x)/100,y and tonumber(y)/100,id,dat
		end

		--[[
		local function ParseFullNode(text)
			local text2,faction,ntype = text:match("^(.-) %((.):(.-)%)$")
			text=text2 or text
			local mxy1,dir,mxy2 = text:match("^(.-)%s+([xto]+)%s+(.-)$")
			local m1,x1,y1 = ParseMapXY(mxy1)
			local m2,x2,y2
			if mxy2 then m2,x2,y2 = ParseMapXY(mxy2) end

			if ntype=="_" then ntype=nil end
			return m1,x1,y1,m2,x2,y2,dir=="x",faction,ntype
		end
		--]]

		--[[-- REGIONS --]]--
		-- All this jazz allows us to Lib.NodeRegions:Assign(node) and the node gets .region set to the name of a matching region. All automagically.
			Lib.NodeRegions = { }

			function Lib.NodeRegions:Assign(node)
				for ri,region in ipairs(self) do if region:Contains(node) then
					node.region=region.name
					node.regionobj=region
					node.noallzone = node.noallzone or region.noallzone
					node.nofly = node.nofly or region.nofly
				end end
			end

			local function Region__Contains(region,node)
				--Lib:Debug(getdist(region.centernode,node))
				if region.name==node.region then
					return true
				elseif region.centernode then
					return region.centernode.m==node.m and region.centernode.f==node.f and getdist(region.centernode,node)<region.radius
				elseif region.subzone then
					return node.subzone==region.subzone
				elseif region.minimapzone then
					return node.minimapzone==region.minimapzone and (node.m==region.mapzone or not region.mapzone)
				end
			end
			
			local function Region__HasGreenBorder(region,mapid)
				return region.greenborders and region.greenborders[mapid]
			end

			local region_proto = {Contains=Region__Contains, HasGreenBorder=Region__HasGreenBorder}
			local region_mt = {__index=region_proto}
			local function AddRegion(data)
				local region = data
				setmetatable(region,region_mt)
				local m1,f1,x1,y1,id1,dat1 = MakeNode(region.center)   region.center=nil
				region.centernode = x1 and {m=m1,f=f1,x=x1,y=y1,id=id1,type=ntype} or Lib.nodes.id[id1]
				if region.greenborders then
					for ni,n in ipairs(region.greenborders) do
						local id = Lib.data.MapIDsByName[n]
						if id then region.greenborders[id]=true end
					end
				end
				tinsert(Lib.NodeRegions,region)
			end

		local LAST_NODE  -- to use with @+ pseudo-id in data

		local function __SmartAddTextNodes(text,deftype)
			local extra

			deftype=deftype or "misc"

			-- by default, nodes are "misc" and connect as "walk".

			-- Extract the (A:TYPE) faction+type marker. Ugly, but there it is.
			local text1,faction,ntype,text2 = text:match("^(.-)%((.):(.-)%)(.-)$")
			text=text1 and text1..text2 or text
			-- faction check
			local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
			if faction==enemyfac then return end
			-- type default: border
			if ntype=="_" then ntype=nil end
			ntype=ntype and ntype:lower()

			
			-- Powerhorse: extract all {data:blablabla} tags.

			local extra={mode=ntype or "walk"}
			while text:find("{") do
				local text1,key,val,text2 = text:match("^(.-){(.-):(.-)}(.-)$")
				if key then
					local num = tonumber(val)
					if num then val=num end
					extra[key]=val
					text=text1..text2
				end
			end

			if extra.cond then
				local err
				extra.cond_fun,err = loadstring("return "..extra.cond)
				if err then error(err.." in parsing '"..extra.cond.."'") end
			end

			if extra.style=="portal_dungeon" then
				ntype="portal"
				extra.mode="portal"
			end

			text=text:gsub("\\>","%%GT%%")


			-- Powerhorse #2: parse "zone 12,34 -to- zone 55,66"

			local mxy1,dir,mxy2 = text:match("^(.-)%s+%-([xto]+)%-%s+(.-)$")
			if not mxy1 then mxy1 = text end -- OMG one node!?
			local m1,f1,x1,y1,id1,dat1 = MakeNode(mxy1)
			local m2,f2,x2,y2,id2,dat2 = MakeNode(mxy2)
			local twoway = dir=="x"

			local n1 = x1 and {m=m1,f=f1,x=x1,y=y1,id=id1,type=ntype or deftype} or (id1=="+" and LAST_NODE) or Lib.nodes.id[id1]
			local n2 = x2 and {m=m2,f=f2,x=x2,y=y2,id=id2,type=ntype or deftype} or Lib.nodes.id[id2]

			LAST_NODE = n2 or n1

			if id1 and not m1 and not n1 then error(("Node id @%s not found"):format(id1)) end
			if id2 and not m2 and not n2 then error(("Node id @%s not found"):format(id2)) end
			if not n1 then error(("Cannot make a node from %s/%d %.1f,%.1f @%s"):format(tostring(m1),tonumber(f1),tonumber(x1),tonumber(y1),id1 or "")) end

			local link12,link21,link1m

			if dat1 then for k,v in pairs(dat1) do n1[k]=v end end
			if x1 then AddNode(n1) end --new!
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				if x2 then
					AddNode(n2)
				end

				-- we have a proper second node! link to it
				link12 = {}
				for k,v in pairs(extra) do link12[k]=v end
				link12.hardwired=true

				n1.n[n2]=link12
			end

			if twoway then
				if n2 then
					-- normal return trip
					link21 = {}
					n2.n[n1] = link21
					for k,v in pairs(extra) do link21[k]=v end
					link21.hardwired=true
				elseif m2 then
					-- "Zone 12,34 x Zone"? Write a dual-map node. We only have one node here with a multiple personality.
					if not n1.ms then n1.ms={} end
					local link1m = {}
					n1.ms[m2]=link1m
					for k,v in pairs(extra) do link1m[k]=v end
				end
			else
				--if n2 then n2.onlydst=n1 end
			end

			-- define some more details about the nodes' linkage.
			if n1 and (n2 or n1.ms) then
				if link12 then link12.mode = link12.mode or ntype or "walk" end -- this is link metadata. Assign a mode of travel.
				if link21 then link21.mode = link21.mode or ntype or "walk" end  -- this is link metadata. Assign a mode of travel.
				if link1m then link1m.mode = link1m.mode or ntype or "walk" end  -- this is link metadata. Assign a mode of travel.

				-- If the node is closely bound with another (quite likely, since they're usually added in pairs), store the (hint to the) linkage separately.
				-- This way a node that's later known to have 5 neighbours, can quickly tell one of the neighbours as the SPECIAL neighbour.
				-- But, if the node ALREADY has a special neighbour... then delete this; it's a multi-special whore node.

				if not extra.dontsetborder then -- allow for some linkages that are NOT special
					n1.border = n1.border and "multi" or n2
					if n2 then  n2.border = n2.border and "multi" or n1  end
				end

			else
				-- single node!!
				for k,v in pairs(extra) do n1[k]=v end
			end

			if extra.style=="portal_dungeon" then
				link12.tag = "portalDungeonEnter" -- note: these are TRAVEL MODES, so they're verbs.
				link21.tag = "portalDungeonExit"
			end

			if n1.spell then
				n1.spell=tonumber(n1.spell)
				tinsert(Lib.nodes.mageteleport,n1)
			end

			--assert(n1,"No coords in SmartAddNode(\""..text.."\")")
			--[[
			if n2 then
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s %.1f,%.1f"):format(GetMapNameByID(m1),x1,y1, twoway and "x" or "to", GetMapNameByID(m2),x2,y2))
			else
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s"):format(GetMapNameByID(m1),x1,y1, twoway and "x" or "to", GetMapNameByID(m2)))
			end
			--]]

			return n1,n2
		end

		local def_deftype = "walk"
		local function __SmartAddArrayNodes(data,deftype)
			deftype=deftype or def_deftype
			local extra

			-- faction check
			local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
			if data.faction==enemyfac then return end
			data.mode=data.mode or deftype

			-- by default, nodes are "misc" and connect as "walk".

			-- Powerhorse #2: parse "zone 12,34 to zone 55,66"
			local m1,f1,x1,y1,id1,dat1 = MakeNode(data[1])
			local m2,f2,x2,y2,id2,dat2 = MakeNode(data[2])
			data[1]=nil
			data[2]=nil

			if data.set_def_type then def_deftype=data.set_def_type end
			if not m1 and not m2 and not id1 and not id2 then return end

			local n1 = x1 and {m=m1,f=f1,x=x1,y=y1,id=id1,type=dat1 and dat1.type or data.mode} or (id1=="+" and LAST_NODE) or Lib.nodes.id[id1]
			local n2 = x2 and {m=m2,f=f2,x=x2,y=y2,id=id2,type=dat2 and dat2.type or data.mode} or Lib.nodes.id[id2]

			LAST_NODE = n2 or n1

			if id1 and not m1 and not n1 then error(("Node id @%s not found"):format(id1)) end
			if id2 and not m2 and not n2 then error(("Node id @%s not found"):format(id2)) end
			if not n1 then error(("Cannot make a node from %s/%d %.1f,%.1f @%s"):format(tostring(m1),tonumber(f1 or 0),tonumber(x1 or 0),tonumber(y1 or 0),id1 or "")) end

			if dat1 then for k,v in pairs(dat1) do n1[k]=v end end
			if x1 then AddNode(n1) end --new!
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				if x2 then AddNode(n2) end
				-- we have a proper second node! link to it
				n1.n[n2]=data
				data.hardwired=1

				if n1.c~=n2.c and data.mode~="ship" and data.mode~="zeppelin" then  -- continent crossing, distance will be extreme, and it's not a ship, oddly
					data.cost=data.cost or COST_CROSSCONTINENT_DEFAULT -- just assume 20s and get over it.
				end
			end

			-- parse condition, if any
			if data.cond then
				local err
				data.cond_fun,err = loadstring("return "..data.cond)
				if err then error(err.." in parsing '"..data.cond.."'") end
			end

			if not data.oneway then
				if n2 then
					-- normal return trip, same type
					n2.n[n1]=n1.n[n2]
				elseif m2 then
					-- "Zone 12,34 x Zone"? Write a dual-map node. We only have one node here with a multiple personality.
					if not n1.ms then n1.ms={} end
					n1.ms[m2]=data
				end
			else
				--if n2 then n2.onlydst=n1 end
			end
			data.oneway=nil

			-- remember which node was first - for order-specific linkages.
			data.n1=n1
			data.n2=n2

			-- define some more details about the nodes' linkage.
			if n1 and (n2 or n1.ms) then
				data.mode=data.mode or "walk"  -- this is link metadata. Assign a mode of travel.

				-- If the node is closely bound with another (quite likely, since they're usually added in pairs), store the (hint to the) linkage separately.
				-- This way a node that's later known to have 5 neighbours, can quickly tell one of the neighbours as the SPECIAL neighbour.
				-- But, if the node ALREADY has a special neighbour... then delete this; it's a multi-special whore node.

				if not data.dontsetborder then -- allow for some linkages that are NOT special
					n1.border = n1.border and "multi" or n2
					if n2 then  n2.border = n2.border and "multi" or n1  end
				end
			end

			if n1.spell then
				n1.spell=tonumber(n1.spell)
				tinsert(Lib.nodes.mageteleport,n1)
			end

			return n1,n2
		end

		local function SmartAddNode(data,deftype)
			-- all-purpose "map x,y x map x,y"
			local aok,n1,n2
			if type(data)=="string" then
				aok,n1,n2 = pcall(__SmartAddTextNodes,data,deftype)
				if not aok then error(n1.." in SmartAddNode(\""..data.."\")") end
			elseif type(data)=="table" and data[1] then
				aok,n1,n2 = pcall(__SmartAddArrayNodes,data,deftype)
				local function tostr(data)
					while type(data)=="table" do data=next(data) end
					return data or ""
				end
				if not aok then error(n1.." in SmartAddNode({\" "..tostr(data[1]).." \",\" "..tostr(data[2]).." \"...})") end
			end
			return n1,n2
		end


		function Lib.greenborders:CanCross(id1,id2)
			return (self[id1] and self[id1][id2]) or (self[id2] and self[id2][id1])
		end

		local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"

		--[[================ INITIALIZE NODES ===============]]--

		local function InitializeTaxis()
			for c,cont in pairs(LibTaxi.taxipoints) do
				for z,zone in pairs(cont) do
					z=Lib.data.MapIDsByName[z] or z
					if type(z)=="table" then z=z[1] end
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							node.m = z
							node.c = Astrolabe.WorldMapSize[z].system or -1
							node.type = "taxi"
							-- other fields are already there, how convenient!
							AddNode(node)
						end
					end
				end
			end
			-- DON'T clear taxis. They're good for lookups by other addons.
			-- Though we could clean up the enemy faction...
		end

		Lib.ContinentsByID = {[13]=1,[14]=2,[466]=3,[485]=4,[862]=6}  -- main continents, somehow they're unnamed, the bastards.
		Lib.MapFloorCountCache = {}
		Lib.MapLevels = {}
		setmetatable(Lib.MapLevels,{__index=function() return 0 end})

		function Lib:DoStartup()

			for id=1,1000 do
				local sane_id = ZGV.Pointer:SanitizePhase(id)
				if GetMapNameByID(sane_id) then
					SetMapByID(sane_id)
					Lib.ContinentsByID[id]=GetCurrentMapContinent()
					Lib.MapLevels[id]=GetCurrentMapLevelRange() --minimum.
					--Lib.MapFloorCountCache[id]=Astrolabe.WorldMapSize[sane_id].floorMin or GetNumDungeonMapLevels() or 0
				end
			end
			--Lib.MapLevels[770]=84 -- 770 is a phase in Twlight Highlands and it returns 0 for GetCurrentMapLevelRange() this is a fix for that since it breaks the taxi system.
				-- off with her head! Just sanitize as above.

			Lib.MapLevels[614]=80 -- 3 sub zones in Vashj'ir that returned 0 as their level... Thank you blizzard.  They're just subzones of Vashj'ir #613.
			Lib.MapLevels[615]=80
			Lib.MapLevels[610]=80
			Lib.MapLevels[499]=65 -- Isle of Quel'Danas. Had 0 for whatever reason but FP is learned automatically at 65

			--Panda Land Levels hardcoded until GetCurrentMapLevelRange() works for them.
			Lib.MapLevels[808]=1
			Lib.MapLevels[809]=87
			Lib.MapLevels[806]=85
			Lib.MapLevels[811]=90
			Lib.MapLevels[810]=88
			Lib.MapLevels[858]=89
			Lib.MapLevels[807]=86
			Lib.MapLevels[857]=86
			Lib.MapLevels[873]=87

			do -- INITIALIZE SETUP
				for i,text in ipairs(Lib.data.basenodes.setup) do
					SmartAddNode(text)
				end
				Lib.data.basenodes.setup = nil
			end

			do -- INITIALIZE ADVANCED
				for i,pair in ipairs(Lib.data.basenodes.advanced) do
					local cmd,data = unpack(pair)
					if cmd=="REGION" then  AddRegion(data)  end
				end
				Lib.data.basenodes.advanced = nil
			end

			do -- INITIALIZE ZONE FLAGS
				for id,data in pairs(Lib.data.zoneflags) do
					if type(id)=="string" then
						local oldid=id
						id=Lib.data.MapIDsByName[id]
						Lib.data.zoneflags[id]=data
						Lib.data.zoneflags[oldid]=nil
					end
				end
			end

			do -- INITIALIZE TAXIS
				-- add map IDs to taxis
				InitializeTaxis()
				-- if available, try to glean known taxi routes. Otherwise assume they're not known.
				if LibTaxi and ZGV.db then
					LibTaxi:Startup(ZGV.db.char.taxis)
				end
			end

			do -- INITIALIZE INNS
				for z,zone in pairs(Lib.data.basenodes.inns) do
					if type(z)=="string" then
						local z2=Lib.data.MapIDsByName[z]
						if type(z2)=="table" then z2=z2[1] end
						assert(z2,"bad zone: "..z)
						z=z2
					end
					--local c=Lib.ContinentsByID[z]
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							node.m = z
							--node.c = c
							node.type = "inn"
							-- other fields are already there, how convenient!
							AddNode(node)
						end
					end
				end
			end

			do -- INITIALIZE GREEN BORDERS
				-- special cases, these zones are inter-crossable easily.
				for pi,pair in ipairs(Lib.data.greenborders) do
					local z1 = Lib.data.MapIDsByName[pair[1]]
					if type(z1)=="table" then z1=z1[1] end
					local z2 = Lib.data.MapIDsByName[pair[2]]
					if type(z2)=="table" then z2=z2[1] end
					assert(z1,"Bad zone "..pair[1])
					assert(z2,"Bad zone "..pair[2])
					local iz1=Lib.greenborders[z1] or {}   iz1[z2]=1   Lib.greenborders[z1] = iz1
					local iz2=Lib.greenborders[z2] or {}   iz2[z1]=1   Lib.greenborders[z2] = iz2
				end
				Lib.data.greenborders=nil
			end

			do -- INITIALIZE BORDERS
				for c,cont in pairs(Lib.data.basenodes.borders) do  -- yes, c is useless
					for d,data in ipairs(cont) do
						SmartAddNode(data,"border")
					end
				end
				Lib.data.basenodes.borders = nil
			end

			do -- INITIALIZE TRAVEL
				for d,data in ipairs(Lib.data.basenodes.travel) do
					SmartAddNode(data)
				end
				Lib.data.basenodes.travel = nil
			end

			do -- INITIALIZE EXPLICIT FLOORING
				-- This is just silly.
				for id,data in pairs(Lib.data.basenodes.MapsWithExplicitFloors) do
					for i,node in ipairs(data) do
						SmartAddNode(node)
					end
					Lib.data.basenodes.MapsWithExplicitFloors[id]=true
				end
				-- don't delete it, it'll come in handy to check which maps NEED explicit floor crossing.
			end

		end

		--[[====]]--



		-- uhhh, WHY!???
		local function GetPlayerPos()
			local m,f,x,y = Astrolabe:GetCurrentPlayerPosition()
			if m==13 or m==14 or m==0 or m==689 or m==-1 or m==485 or m==466 or m==613 or m==862 then
				-- bad pos, better get the last
				m,f,x,y=unpack(Astrolabe.LastPlayerPosition)
			end
			return m,f,x,y
		end


		 -- LEGACY, OBSOLETE, only used by the |fly lines

			function Lib:GetNearestTaxi()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local m,f,x,y = playerpos()
				if not x then return end
				for n,node in ipairs(Lib.nodes.taxi) do
					if node.m and node.x and node.y then
						local dist = Astrolabe:ComputeDistance(m,f,x,y,node.m,node.f,node.x,node.y)
						if dist and dist<mindist then mindist,minnode=dist,node end
					end
				end
				return minnode,mindist
			end

			function Lib:GetNearestTaxiInZone()
				--pmap = GetCurrentMapAreaID()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local m,f,x,y = playerpos()
				if not x then return end
				for n,node in ipairs(Lib.nodes.taxi) do
					if node.m and node.x and node.y and node.m == m then
						local dist = Astrolabe:ComputeDistance(m,f,x,y,node.m,node.f,node.x,node.y)
						if dist and dist<mindist then mindist,minnode=dist,node end
					end
				end
				return minnode,mindist
			end

		--[[
			--- Parse the taxis table, changing map
			function Lib:ImportTaxis(taxiset)
				local knownTaxis = self.LibTaxi.master
				for name,data in pairs(taxiset) do
					if type(data)~="number" then
						if knownTaxis[name] then
							if type(data[1]=="table") then -- new style, proper
								local loc=data[1]
								if type(loc[1])=="string" then -- lo
								--TODO everything
								end
							end
							if type(data[3])=="table" then
								-- table = faction-specific data
								if UnitFactionGroup("player")=="Alliance" then
									data[3],data[4] = data[3][1],data[3][2]
								else
									data[3],data[4] = data[4][1],data[4][2]
								end
							end

							self:AddNode({l={data[1],data[2],data[3],data[4]},taxi={"taxi"..data[1]},id="taxi"..data[1],t="taxi",t2=name})
						end
					end
				end
			end

			function Lib:ImportBorders()
				for name,data in pairs(self.basenodes_borders) do
					self:AddNode({
						l={data[1][1],data[1][2],data[1][3],data[1][4]},
						to={{data[1][1],data[1][2]},{data[2][1],data[2][2]}},
						t="border",
						t2={data[3],data[4]},
						n={}
					})
				end
			end
		--]]

		local temp_fields = {'cost','time','heur','score','status','calclink','parent','prev','next','text','maplabel','toend','taxiFinal'}

		local lam,laf,lax,lay, lbm,lbf,lbx,lby
		local fromme=false

		--- Drop our special start/end nodes from the map
		function Lib:ClearPath()
			local removed,node,lastn

			-- forget our start/end
			Lib.nodes.all[Lib.startnode and Lib.startnode.num or 0]=nil
			Lib.nodes.all[Lib.endnode and Lib.endnode.num or 0]=nil
			Lib.nodes.all[Lib.copyendnode and Lib.copyendnode.num or 0]=nil
			
			-- make neighbours forget our linkage
			for ni,node in ipairs(Lib.nodes.all) do
				if node.n[Lib.startnode] then  node.n[Lib.startnode]=nil  end
				if node.n[Lib.endnode] then  node.n[Lib.endnode]=nil  end
				if node.n[Lib.copyendnode] then  node.n[Lib.copyendnode]=nil  end
			end

			--[[
			while (allnodes[#allnodes].t=="start" or allnodes[#allnodes].t=="end") do
				removed = table.remove(allnodes)
			end
			--]]

			-- clear calculation garbage
			for ni,no in ipairs(Lib.nodes.all) do
				for fi,f in ipairs(temp_fields) do
					no[f]=nil
				end
			end
		end

		local success_endnode

		--]=]

		local function dictsize(dict)
			local i=0
			for _,__ in pairs(dict) do i=i+1 end
			return i
		end

		-- one-step A*

		local closingnode,minscore,current,found
		local cost,heur,time
		local cl,nl,el
		local neigh,neighlink

		local lastupdate=0

		Lib.calculation_step_limit = 9999

		--[[
		Notes on speeds: [yd/sec]
		run: 7
		mount: 7*1.6=11.2
		fmount: 7*2.2=14
		fly: 7*2.5=17.5
		ffly: 7*4.1=28.7

		taxi storm-iron: 3:36=216
		--]]

		local function assertfmt(test,msg,...)
			if not test then error(msg:format(...)) end
		end

		local WALKSPEED=7

		local bestcost

		--local flylink={mode="fly"}  -- DO NOT USE, breaks cachins.
		Lib.hearthlink = {mode="hearth",cost=55}  -- down from 150, as it kept preferring a taxi to a hearth. Down from 60 to make it occur more often while leveling.
		Lib.astralrecall = {mode="astralrecall",cost=30}

		Lib.DO_HEUR = false

		Lib.debug_nodes = {}

		local colors={['portal']="|cffff8800",['taxi']="|cff88ff00"}

		function Lib:StepForever()
			local still,ret = true,nil
			while still do
				still,ret = self:StepPath()
			end
			if ret then
				self:ReportPath(ret)
			else
				self:ReportFail()
			end
			self:Cleanup()
		end

		Lib.PlayerFlags = {}
		setmetatable(Lib.PlayerFlags,{__index=function(t,i) return rawget(t,i) or "" end})

		local dists_to_portals = {}
		Lib.dists_to_portals = dists_to_portals

		local default_maxspeedinzone = {1,1,1}

		local tmp_neighs = {}
		local tmp_modefly = {mode="fly"}

		function Lib:StepPath()  -- THE WORKHORSE.
			local _

			self.calculation_step = self.calculation_step + 1

			local current

			current = next(self.opennodes)

			if not current then
				-- no more open nodes! end of story.
				if (success_endnode) then
					--self:ReportPath(success_endnode)  -- don't report what was reported already, doofus.
				else
					return false --FAIL
				end
				return false
			end

			-- fix current node's map, if phasing
			current.m = ZGV.Pointer:SanitizePhase(current.m)
			current.f = ZGV:SanitizeMapFloor(current.m,current.f)

			-- find cheapest open node

			minscore=current.score
			for node,_ in pairs(self.opennodes) do
				if node.score<minscore then minscore=node.score current=node end
				if node==self.force_next then current=node break end -- bully.
			end
			--print("Min score "..minscore)

			if current == self.endnode then
				return false,current --SUCCESS
			end

			-- remove from open nodes, insert into closed

			self.opennodes[current]=nil
			self.closednodes[current]=current.num
			current.status="closed"

			local speeds = self.maxspeedinzone[current.m] or default_maxspeedinzone
			local maxspeed,runspeed,flyspeed = unpack(speeds)

			runspeed = runspeed*0.8  -- you don't run in a beeline, always. Best not overestimate this flawed transportation method.

			-- process neighbours:

			-- clone neigh table
			local neighs = tmp_neighs
			wipe(neighs)

			-- add all our known neighs, unless they're borders.
			-- border nodes are useless in flight, so ignore them outright.
			for no,nm in pairs(current.n) do
				if not (flyspeed and no.type=="border")  -- if not ignoring borders in flight...
				and not (no.type=="taxi" and nm.mode=="taxi" and not no.known)  -- Disallow ARRIVAL at unknown taxis. Depart from unknown freely - they'll just get learned, big deal...
				then
					tinsert(neighs,{no,nm})
				end

				-- fix neighbouring node's map, if phasing
				no.m = ZGV.Pointer:SanitizePhase(no.m)
				no.f = ZGV:SanitizeMapFloor(no.m,no.f)

				if no.testflags then
					-- check flags as follows:  "flag1 == (val1 OR val2 OR val3)  AND  flag2 == (val4 OR val5 OR val6)"
					local allgood=true
					for flag,test in pairs(no.testflags) do
						local thisgood=false

						local function split(str,sep)
							local fields = {}
							str = str..sep
							local tinsert=tinsert
							str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
							return fields
						end

						if type(test)=="string" then
							test=split(test,",")
							no.testflags[flag]=test
						end
						--if type(test)~="table" then test={test} end
						for i,testval in ipairs(test) do
							if Lib.PlayerFlags[flag]==testval then
								thisgood=true
								break
							end
						end
						if not thisgood then allgood=false end
					end
					no.flagtestresult = allgood
				end

				-- FLAGS. Set them according to any nearby nodes.
				if current==Lib.startnode and (no.flagtestresult or not no.testflags or no.steponflag) and no.setflags and current.m==no.m and current.f==no.f and getdist(current,no)<=(no.dist or 20) then
					Lib:Debug("setting flags")
					-- We're on another node nearby, set flags now!
					for flag,set in pairs(no.setflags) do
						local old=Lib.PlayerFlags[flag]
						Lib.PlayerFlags[flag]=set
						if old~=set and ZGV.db.profile.debug then
							ZoneTextString:SetText( "Zygor Nav OMG!" )
							SubZoneTextString:SetText( ("%s = %s"):format(flag,set) )
							FadingFrame_Show( ZoneTextFrame )
							FadingFrame_Show( SubZoneTextFrame )
						end
						Lib:Debug("set flag %s to %s",flag,tostring(set))
					end
				end

			end

			-- add flying mount destinations, if flight is available.
			-- This means let all nodes on the continent see each other, unless some special cases.
			if flyspeed and not current.nofly then
				for ni,no in ipairs(self.nodes.all) do
					if current:CanFlyTo(no) then  tinsert(neighs,{no,tmp_modefly})  end
				end
			end

			-- STARTING CHEATS: mage teleports and inns
			if current==Lib.startnode then
				if Lib.cfg.use_mage_teleport then
					local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
					-- teleports allowed at all
					for i,node in ipairs(Lib.nodes.mageteleport) do
						if GetSpellInfo(GetSpellInfo(node.spell)) then
							local meta = {mode="teleport",cost=MAGE_TELEPORT_COST}
							tinsert(neighs,{node,meta})
							if node.spell==50977 then node.tag="deathgate" end
							if node.spell==3561 then meta.cost = MAGE_TELEPORT_COST_STORMWIND end  -- Stormwind Mage Tower is a bitch to get out of.
						elseif Lib.cfg.use_last_resort then
							if node.faction and (node.faction=="B" or node.faction~=enemyfac) then 
								tinsert(neighs,{node,{mode="courtesy",cost=20000}}) --Crazy cost to not use it unless this is only way to get to this continent.
								node.tag="courtesymage"
							end
						end
					end
				end
				if Lib.cfg.use_hearth then
					local bind=GetBindLocation()
					local cool=(GetItemCooldown(6948)==0)
					if cool then
						--print("StepPath: Trying to use hearth: "..bind)
						local found
						for i,node in ipairs(Lib.nodes.inn) do
							if bind==node.name then
								tinsert(neighs,{node,Lib.hearthlink})
								Lib:Debug(" - Found hearth node %s" , node:tostring())
								found=true
								break
							end
						end
						if ZGV and ZGV.db and ZGV.db.profile.debug and not found then Lib:Debug("|cffff8844 No idea where player's hearthstone is bound to: |cffff8800%s",bind) end
						if not hearthunknown then hearthunknown = {} end --BAD GLOBAL
						if ZGV and ZGV.DEV and not found and not hearthunknown[bind] then --Easy way to find more Hearth locations for MoP
							hearthunknown[bind]=1
							StaticPopupDialogs["HearthStone!"] = {
								text = bind.." - this Hearth location is not known! Report it!",
								button1 = YES,
								button2 = NO,
								timeout = 0,
								whileDead = true,
								hideOnEscape = true,
							}
							--StaticPopup_Show ("HearthStone!")
						end
					end
				end

				if Lib.cfg.use_astral_recall then
					if GetSpellInfo(GetSpellInfo(556)) then
						local bind=GetBindLocation()
						local cool=(GetSpellCooldown(556)==0)
						if cool then
							--print("StepPath: Trying to use astral: "..bind)
							local found
							for i,node in ipairs(Lib.nodes.inn) do
								if bind==node.name then
									tinsert(neighs,{node,Lib.astralrecall})
									Lib:Debug(" - Found astral node %s" , node:tostring())
									found=true
									break
								end
							end
							if ZGV and ZGV.db and ZGV.db.profile.debug and not found then Lib:Debug("|cffff8844 No idea where player's hearthstone is bound to: |cffff8800%s",bind) end
						end
					end
				end

				if Lib.cfg.use_last_resort then
					for i,node in ipairs(Lib.nodes.temp) do
						if node.warlocksummon then
							tinsert(neighs,{node,{mode="courtesy",cost=30000}}) --Don't use this unless there is not other possible path.
							node.tag="courtesywarlock"
						end
					end
				end
				-- This allows for forcing the next node to be visited - like, flying on a taxi enforces the destination point.
				if self.force_next then
					tinsert(neighs,{self.force_next,{mode="taxi",cost=-9999}})  -- this should guarantee that this one will be most promising, yes?
					if self.force_next.tostring then
						Lib:Debug("StepPath: Forced next node: ".. self.force_next:tostring() )
					else
						Lib:Debug("StepPath: Forced next node... WHAT!? How is that a node!?  Storing in global FORCENODE, check this!!")
						FORCENODE = self.force_next
					end
					--self.delayed_by_taxi=true
				end

			end

			local opened=0
			local perstep=0

			local allow=100

			for i,neighpair in ipairs(neighs) do
				local neigh,neighlink = unpack(neighpair)
				-- is in closed list? if yes, bail out

				perstep=perstep+1

				--[[
				if (self.startnode.c==self.endnode.c and self.startnode.c>=0) and (neigh.c~=self.startnode.c or neigh.c==-1) then
					-- useless transcontinent
					self.closednodes[neigh]=true
					neigh.status="closed"
				end
				--]]

				local mode=neighlink.mode

				if neigh.status~="closed"
				and not (neighlink.cond_fun and not neighlink.cond_fun())
				and not (mode=="fly" and not flyspeed)
				--and not (neigh.onlydst and neigh.onlydst~=current)
				and not ((current==Lib.startnode) and neigh.testflags and not neigh.flagtestresult)
				then
					perstep=perstep+1  -- for throttling

					-- we'll be handling this one, eh? okay, cost calculation

					local endn=self.endnode
					local mycost = 0

					--local dist = neighlink.dist
					--if not dist then  dist=getdist(current,neigh)  neighlink.dist=dist  end

					--[[  DETERMINE THE MOVEMENT COST, BASING ON LINK MODE ]]--
					local time,mytime = 0,nil
					do
						if neighlink.cost and mode~="taxi" then -- explicit cost given, don't use any mode-based templates (taxis still use their own times)
							mycost = neighlink.cost  -- timetabled!
							mytime = mycost

						elseif mode == "taxi" then
							mycost = neighlink.cost  -- timetabled!
									or
									getdist(current,neigh) * 1.2 -- taxis fly in wide curves...
										/ (WALKSPEED*4.5) -- roughly?
							mytime = mycost
							if IsSpellKnown(117983) then mycost=mycost*.8 end -- Guild Perk Ride like the Wind.
						elseif mode == "tram" then
							--mycost = 120.00  -- 2 minutes.
							mycost = 300.00  -- make it suck
						elseif mode == "teleport" or mode=="hearth" or mode=="astralrecall" then
							mycost = neighlink.cost
							--if ZGV.db.profile.pathfinding_preferfly then mycost=mycost*0.3 end
						elseif mode == "courtesy" then
							mycost = neighlink.cost
						elseif mode=="portal" then
							mycost = neighlink.cost or 15.00 -- to avoid "teleport 10 feet away" silliness
						elseif mode=="ship" or mode=="zeppelin" then
							--mycost = 110.00 + 30.00   -- about 3m40s between trips, half that.  + departure/arrival.
							--mycost = (neighlink.freq or 220.00) / 2   -- about 3m40s between trips, half that.  + departure/arrival.
							if neighlink.cost then
								mycost=neighlink.cost
							elseif current.c==485 or neigh.c==485 then mycost=240 -- 4m between Northrend ships/zeppelins
							else mycost = 240
							end
						else
							local dist=getdist(current,neigh)
							if dist>999999 then dist=2000 end
							local speedcost = (mode=="fly" and flyspeed or runspeed) * WALKSPEED
							--print(neigh.num," costs ",runspeed,"runspeed for ",dist)
							mycost = dist / speedcost
							--(Astrolabe:ComputeDistance(current.m,current.f or 0,current.x,current.y, neigh.m,neigh.f or 0,neigh.x,neigh.y) or 99999999)*speedcost
							-- divide by movement speed later
						end

						if ZGV.db.profile.pathfinding_preferfly then
							if mode=="walk" or mode=="fly" then mycost=mycost*3 end
						end

						if mycost>100000 then mycost=10 end  -- sanitize "impassable" links

						mytime=mytime or mycost

						mycost = mycost or neighlink.cost

						if Lib.cfg.avoid_highlevel_zones and mode=="walk" and Lib.MapLevels[neigh.m]-UnitLevel("player")>=2 then
							mycost = mycost * ( 1 + (Lib.MapLevels[neigh.m]-UnitLevel("player"))*0.2 )
						end

						--if neighlink.hardwired then mycost=mycost*0.6 end
						if neigh.costmod or current.costmod then mycost=mycost*tonumber(neigh.costmod or current.costmod) end

						if neighlink.mud then mycost=mycost*neighlink.mud end  -- Normally, we wouldn't even see this; but startnode is allowed to "see through thick fog" to latch onto the nodes.

						-- Don't start at taxis that are unknown and complicated.
						if neigh.type=="taxi" and not neigh.known and (neigh.quest or neigh.factionid or neigh.condition) then  mycost=99999  end  -- don't walk to unknown special taxis
						-- Note: no need to check for actual quest completion; these are handled in LibTaxi. Here we trust that not .known means not .known .

						-- Seriously frown upon banned nodes :)
						if Lib.banned_nodes[neigh] then mycost=mycost+99999 end


						--[[
						-- penalty for switching travel modes
						if ZGV.db.profile.pathfinding_preferfly
						and current.link and current.link.mode~=mode  -- mode changed
						and mode~="taxi"  -- don't penalize for hopping on a taxi, however
						then
							mycost=mycost+30
						end
						--]]

					end

					-- cost calculation is over.

					cost = current.cost + mycost
					time = current.time + mytime


					--[[  DO HEURISTICS (OR NOT)  ]]--
					do
						if self.DO_HEUR then
							heur = getdist(neigh,endn) *4
							if heur<99999999 then heur=heur/self.maxspeedinzone[neigh.m][1] end
						elseif self.DO_HEUR2 then
							-- find all portals and distances. CACHED.
							--dists_to_portals[neigh]
							--if not dists then dists={} dists_to_portals[neigh]=dists end
							if neigh.type=="portal" then
								heur=0 --instant favourite
							else
								local heur=neigh.toend
								if not heur then heur=getdist(neigh,endn) neigh.toend=heur end
								heur=heur*5
								local minheur=dists_to_portals[neigh]
								if not minheur then
									minheur=99999999
									for ni,nport in ipairs(self.nodes.portal) do  if nport.c==neigh.c then
										h=getdist(neigh,no)
										if h<minheur then  minheur=h  end
									end  end
									--dists_to_portals[neigh]=minheur
								end
								heur=min(heur,minheur)
								if heur<99999999 and heur>0 then heur=heur/self.maxspeedinzone[neigh.m][1] end
								--print(heur)
							end
						else
							-- what if heuristics SUCK?
							heur = 0
						end
					end

					if neigh.status~="open" then
						self.opennodes[neigh]=neigh.num
						neigh.status="open"
						opened=opened+1
					end
					-- or perhaps just our path is better?
					if Lib.debug_onodes or Lib.debug_nodes[neigh.num] then
						Lib:Debug ("From [%d]: %s%s|r (%s %.1f), c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r",current.num, colors[neigh.type] or "",neigh:tostring(), mode,mycost, cost,heur,cost+heur)
					end
					if not neigh.cost or cost<neigh.cost then
						if Lib.debug_onodes or Lib.debug_nodes[neigh.num] then
							if neigh.cost then
								Lib:Debug ("Updating node: %s%s|r (%s), c=%.1f>%.1f, h=%.1f>%.1f, sc=%.1f>|cffddffdd%.1f|r", colors[neigh.type] or "",neigh:tostring(), mode, neigh.cost,cost,neigh.heur,heur,neigh.score,cost+heur)
							else
								--Lib:Debug (("Opening node: %s%s|r, c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r"):format(colors[neigh.type] or "",neigh:tostring(),cost,heur,cost+heur))
								Lib:Debug ("Opening node: %s%s|r (%s), c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r", colors[neigh.type] or "",neigh:tostring(), mode, cost,heur,cost+heur)
							end
							--ZGV.Pointer:SetWaypoint(neigh.m,neigh.f,neigh.x,neigh.y,{title=neigh:tostring(true),overworld=true})
						end
						neigh.cost,neigh.heur,neigh.score = cost,heur,cost+heur
						neigh.time = time
						neigh.calclink = neighlink
						neigh.parent = current
					end

				else
					if Lib.debug_badnodes and not self.closednodes[neigh] then
						local reason=""
						if (neighlink.cond_fun and not neighlink.cond_fun()) then reason=reason.." failed condition " end
						if (mode=="fly" and not flyspeed) then reason=reason.." can't fly " end
						if (neigh.onlydst and neigh.onlydst~=current) then reason=reason.." only dst "..neigh.onlydst.num.."!="..current.num end
						Lib:Debug ("Not opening node: %s%s|r, cost %d, heur %d, score |cffddffdd%.2f|r - %s", colors[neigh.type] or "",neigh:tostring(),neigh.cost,neigh.heur,neigh.cost+neigh.heur, reason)
					end
				end

				if perstep>allow then
					perstep=0
					yield(perstep)
				end
			end
			_,allow = yield(perstep)

			if Lib.debug_cnodes or Lib.debug_nodes[current.num] then
				Lib:Debug ("Closing node: [%d] %s%s|r, cost %d, heur %d, score |cffddffdd%.2f|r. Opened: %d", current.num,colors[current.type] or "",current:tostring(),current.cost or 99999999,current.heur or 0,(current.cost or 99999999)+(current.heur or 0), opened)
				Lib:Debug ("Step %d: %d open, %d closed, time %.1f", self.calculation_step,dictsize(self.opennodes),dictsize(self.closednodes),cost or 0)

				ZGV.Pointer:ClearWaypoints("manual")
				for no,ni in pairs(self.closednodes) do
					ZGV.Pointer:SetWaypoint(no.m,no.f,no.x,no.y,{title=no:tostring(true),overworld=true,type="manual"})
				end
			end

			if self.calculation_step>=self.calculation_step_limit then
				return false,current
			end

			return true --continue
		end

		--[[
			Here's what gets nasty.

			Usually, waypoints are depicted as the action that gets you to them. Go to 12,34; Board a boat [and go to destination]; etc.

			However, per request, we'll be violating this rule. Hence, some points will be... special.
			You've been warned.
		--]]

		--[[
			These are the various waypoint descriptions.
			They're matched against, in order:
			 1. (travel-mode)_(destination-type)__(nexttravel-mode)_(nextdestination-type),
			 2. (travel-mode)_(destination-type),
			 3. (travel-mode),
			 4. (destination-type).
			In each case a capital "X" is used as a wildcard.

			"X_ship__ship_ship", for example, means "by 'any means' arriving at a 'ship' point, when a 'ship' travel to a 'ship' next destination follows".
			This of this as a poor man's XPath...
		--]]

		function Lib:Cleanup()
			--self.force_next=nil
		end

		-- This is a kind of a nightmare data set, but it has to be traveled in the written order - plain pairs(travel_locale) would screw the order.

		-- These tags have to
		local travel_locale = {
			{'taxi_taxi__taxi_taxi',"Arrive at {npc}\nFly again to {next_name}, {next_map}"},
			--{'taxi_taxi__taxi_taxi',"arrive"},
			{'*_taxi__taxi_taxi',"taxi"}, {'taxi_taxi',"arrive"},
			{'taxi',"Talk to {npc}\nFly to {next_name}, {next_map}"},
			{'taxidumb',"Arrive at your destination"},

			{'*_ship__ship_ship',"Ride the boat to {next_port}"}, {'ship_ship',"arrive"},
			{'*_zeppelin__zeppelin_zeppelin',"Ride the zeppelin to {next_port}"}, {'zeppelin_zeppelin',"arrive"},

			{'*_portal__portal_*',"portalclick"}, {'portal*_*',"arrive"},
			{'*_portal__portalauto_*',"portalauto"},-- {'portalauto_X',"arrive"},
			{'*_portal__portalDungeonEnter_*',"portalauto"},-- {'portaldungeon_X',"arrive"},
			{'*_portal__portalDungeonExit_*',"Use the portal to exit {map}"},-- {'portaldungeon_X',"arrive"},
			{'portalauto',"Enter portal to {next_map}"},
			{'portaldungeon',"Enter portal to {next_map}"},
			{'portalclick',"Click portal to {next_map}\nTeleport to {next_map}"},
			--{'portal',"Click portal to {next_map}\nTeleport to {next_map}"},
			{'*_pinkportal',"Go through the pink portal to {next_map}"},
			{'*_darkportal',"Enter the huge green portal\nTeleport to {next_map}"},
			{'*_cityportal',"Enter the circular portal\nTeleport to {next_map}"},
			{'*_pandarope',"Click the rope on the ground\nto swing to {next_map}"},
			{'*__transporter_*',"Enter the transporter"},
			{'transporter_*',"Exit the transporter"},

			{'walk_border',"walk_map"}, {'border_border',"walk_map"},

			{'arrive',"Arrive at {map}"},
			{'arrivefp',"Arrive at {name}, {map}"},

			{'*_tram__tram_tram',"tram"}, {'tram_tram',"arrive"},
			{'tram',"Ride the tram to {next_map}"},

			{'deathgate',"Cast Death Gate to Acherus"},
			{'teleport',"Cast teleport to {map}"},
			
			{'courtesymage',"Find a Mage to teleport you to {map}\nThere is no direct path"},
			{'courtesywarlock',"There is no path to {map} for you."},
			{'courtesy',"Use a Courtesy!"},

			{'teleport_ask',"Use a Mage Portal to {map}"},

			{'hearth',"Hearth to {name}"},
			{'astralrecall',"Cast Astral Recall to {name}"},

			{'walk',"Go to {node}"},
			{'swim',"Swim to {node}"},
			{'walk_map',"Go to {bordermap}"},
			{'fly',"Go to {node}"},
			{'travel','walk'},
		}
		-- And, this is for fast lookups.
		local travel_locale_keys={}  for i,pair in ipairs(travel_locale) do travel_locale_keys[pair[1]]=pair[2] end

		local function AngleBetween(n1,n2,n3)
			if not (n1 and n2 and n3) then return 99 end
			local a1 = n2:GetAngleTo(n1)
			local a2 = n2:GetAngleTo(n3)
			if not (a1 and a2) then return 99 end
			local d = math.abs(a2-a1)
			if d>180 then d=360-d end
			return d
		end

		Lib.RESULTS_SKIPPED_START = {}
		Lib.RESULTS_SKIPPED_END = {}

		local n
		function Lib:ReportPath(endnode)
			local results = {}
			self.RESULTS = results

			wipe(Lib.RESULTS_SKIPPED_START)
			wipe(Lib.RESULTS_SKIPPED_END)

			self.is_first_run = false

			-- do the backwards walk
			while endnode do
				--local t={}
				--for k,v in pairs(endnode) do t[k]=v end
				--table.insert(results,1,t)
				endnode.link=endnode.calclink
				table.insert(results,1,endnode)
				endnode = endnode.parent
			end

			-- now walk forward. This could be done backwards, too, but it just a nuisance do to so.

			-- If a node is close enough to the starting node... just let its own neighbours be ours.
			-- This should result in seamless skipping of the node.
			-- PATH COMPLETION IS ACHIEVED HERE.



			--=========== HAIRPIN OPTIMIZATION

			-- try to skip the first point, if it's close and an acute angle

			local sn,n1,n2=results[1],results[2],results[3]

			--if (n1.type=="border" or n1.type=="fly" or n1.type=="walk")
			while sn and n1 and n2
			and n2.link and (n2.link.mode=="walk" or n2.link.mode=="border" or n2.link.mode=="fly")
			and (n1.link.mode=="walk" or n1.link.mode=="fly")
			--and n2.border
			and
				(
					-- standing on the point
					getdist(sn,n1)<(tonumber(n1.dist) or (IsFlying("player") and 50 or 20))
					--or getdist(n1,n2.border)<(IsFlying("player") and 50 or 20)
					or
					--(n2.type=="border" and n2.border and getdist(n1,n2)+getdist(n1,n2.border)-getdist(n2,n2.border)<100)  -- n1 is between n2 and n2.border
					(
						-- or standing next to the point, acute angle, same floor
						AngleBetween(sn,n1,n2)<45-- and getdist(sn,n1)<getdist(n1,n2)
						and sn.f==n1.f and n1.f==n2.f
					)
					or
					(
						-- standing directly between this and next, any floor (staircase?)
						AngleBetween(sn,n1,n2)<15 -- and getdist(sn,n1)<getdist(n1,n2)
						and ((sn.f==n1.f) or (sn.f==n2.f))
					)
				)
				-- "skip if standing on first node ; also if hairpin detected, but only all on same floor"
			and not (n1.testflags and not n1.flagtestresult)
			and not (n2.testflags and not n2.flagtestresult)
			do
				Lib:Debug("|cffff8800skipped starting node|r: %s",n1:tostring())
				-- remove n1 from between sn and n2
				sn.link=n1.link
				tremove(results,2)
				tinsert(Lib.RESULTS_SKIPPED_START,n1)
				sn,n1,n2=results[1],results[2],results[3]
			end

			-- repeat for pre-end point. UGLY.

			if #results>2 then
				-- try to skip the pre-last point, if it's close and an acute angle
				local n1,n2,en=results[#results-2],results[#results-1],results[#results]

				if n2.link and (n2.link.mode=="walk" or n2.link.mode=="border" or n2.link.mode=="fly")
				--and n2.border
				and ( getdist(n2,en)<(n2.dist or 20)  or  (getdist(n2,en)<(n2.dist or 20)*3 and AngleBetween(n1,n2,en)<45) )
				then
					Lib:Debug("|cffff8800skipped pre-ending node|r: %s",n2:tostring())
					-- remove n1 from between sn and n2
					n1.link=n2.link
					tremove(results,#results-1)
					tinsert(Lib.RESULTS_SKIPPED_END,n1)
				end
			end

			--============ HAIRPIN OPTIMIZATION ENDS.


			-- TAXI DISPLAY PREPARATION: find the final flight and stamp it onto all flights in a sequence.

			local final_node
			for i=#results-1,2,-1 do  while true do --find the flights that are not final
				-- go backwards, so that we meet the final nodes first.

				local n,np,npp,nn=results[i],results[i-1],results[i-2],results[i+1]

				--[[  VISUAL AID:

				Typical case:
				 (START) -----> (taxi) ==> (taxi) ==> (taxi) -----> (whatever) -----> (taxi) ==> (taxi) ----> (END)

				Simple in-progress case: ... just arrive
				 (START) -----> (taxi, cost<0) -----> (END)

				Keep-flying in-progress case:
				 (START) -----> (taxi, cost<0) ==> (taxi) ==> (taxi) ==> (taxi) -----> (END)

				--]]

				if n.type=="taxi" then  -- no point in checking other nodes, is there :)
					if np.type=="taxi" --or n.cost<0 -- there's a taxi before this, or player's currently on one
					and nn.type~="taxi"
					then  -- we're an endpoint!
						final_node = n  -- remember this, will stamp nodes before us with this
						Lib:Debug("&LR_TAXIFINAL Taxi result %d is new final %s",i,final_node.name)
						n.taxiFinal=true
						n.taxiDestination=nil -- If we are a final then we don't have any Destinations.
						--n.is_arrival = true -- (n.cost>0)  -- forced-arrival low-costies ARE NOT arrivals.

					elseif final_node then  -- we're a start or midpoint

					--if n.cost>0  -- negative cost? could be, when the taxi was marked as current in progress.
					--if final_node  -- is known (but isn't us)
					--then
						Lib:Debug("&LR_TAXIFINAL Taxi result %d is %s, final = %s",i,n.name,final_node.name)
						n.taxiDestination = final_node
						--if np.type=="taxi" then n.is_arrival = true end  -- we're not the first, and not the last, so we're a skipped midpoint.
					end
				else
					final_node = nil
				end
			break end end



			for n=1,#results do while(1) do
				local node = results[n]

				node.prev = results[n-1]
				node.next = results[n+1]

				local nextnode = node.next
				local text

				if node.link and node.link.mode=="fly" and node.is_indoors then node.link.mode="walk" end

				--if not node.link then break end --continue

				local travelmode = node.link and (node.link.tag or node.link.mode) or "walk"  -- how we get to this point
				local nodetype = node.tag or node.type or (node==Lib.startnode and "start") or "*"  -- this point type

				--[[
				if Lib.cfg.use_mage_teleport==true and travelmode=="teleport" and not GetSpellInfo(GetSpellInfo(node.spell)) then
					-- not a mage? use courtesy or something?
				end
				--]]

				if node.link and node==node.link.n1 and nextnode==node.link.n2 then text=node.link.dir1 end
				if node.link and node==node.link.n2 and nextnode==node.link.n1 then text=node.link.dir2 end

				text = text or node.title or (node.link and node.link.title)

				if not text then
					-- Determine proper wording for the node.
					local a_b = travelmode .. "_" .. nodetype
					local a_b__c_d = ""
					if nextnode then
						if is_vash(node.m) and is_vash(nextnode.m) and travelmode=="walk" then travelmode="swim" end
						a_b__c_d = travelmode .. "_" .. nodetype .. "__" .. (nextnode.link and (nextnode.link.tag or nextnode.link.mode) or "walk") .. "_" .. (nextnode.tag or nextnode.type or "*")
					end

					node.a_b = a_b
					node.a_b__c_d = a_b__c_d

					-- Try for a fast match first
					--text = travel_locale[a_b__c_d] or travel_locale[a_b] or travel_locale[travelmode] or travel_locale[nodetype] or "walk"

					-- Okay, wildcards it is, then.
					-- First, try to match full current and next node types and travel modes.
					-- For example, fly_ship__ship_ship means this node has us flying to the pier, while the next is a ship connection to the destination port.
					if DEBUG_MATCHING then Lib:Debug("%d. matching: |cffaadd55%s, %s, %s, %s",n,a_b__c_d,a_b,travelmode,nodetype) end
					for i,patpair in ipairs(travel_locale) do
						local pat=patpair[1] :gsub("%*","%%w*")
						if a_b__c_d:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("%d matched |cffaaff00%s",n,pat) end   break end
						if a_b:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("%d matched |cff77ff00%s",n,pat) end   break end
						if travelmode==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("%d matched |cff44ff00%s",n,pat) end   break end
						if nodetype==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("%d matched |cff00ff00%s",n,pat) end   break end
					end
				end

				text=text or "walk"

				if text=="arrive" then  -- prepare to skip the point... oh shit oh shit
					node.is_arrival=true
				end

				if DEBUG_MATCHING then Lib:Debug("%d final: |cff00ff88%s",n,text) end

				while (travel_locale_keys[text]) do text=travel_locale_keys[text] end   -- do redirects

				local nextmap = GetMapNameByID(nextnode and (nextnode.taxiDestination and nextnode.taxiDestination.m or nextnode.m) or 0)

				-- Show "Portal to Vashj'ir" instead of "Portal to Shimmering Expanses" et al.
				if nextnode and nextnode.type=="portal" and (nextnode.m==610 or nextnode.m==614 or nextnode.m==615) then  nextmap=GetMapNameByID(613)  end

				local text = text
					:gsub("{node}",node:GetText(node.prev,node.next) or "?")
					:gsub("{name}",node.name or "?")
					:gsub("{next_name}",nextnode and (nextnode.taxiDestination and nextnode.taxiDestination.name or nextnode.name) or "?")
					:gsub("{map}",MapName(node))
					:gsub("{next_map}",nextmap or "?")
					:gsub("{next_port}",nextnode and nextnode.port and nextnode.port..", "..nextmap or nextmap or "?port?")
					:gsub("{bordermap}",nextnode and nextnode.border==node and MapName(nextnode) or MapName(node))
					:gsub("{npc}",node.npc or "?")
				node.text = text

				node.maplabel = node:GetText(node.prev,node.next)
				if ZGV.db.profile.debug then node.maplabel = node.maplabel .. "\n" .. node:tostring() end

				break
			end end

			-- print out. Remove it later!
			--print("path:")
			for i=1,#results do
				local node=results[i]
				local color=""
				if (node.is_arrival) then color="|cff888888" end
				--if not (node.is_arrival and Lib.cfg.strip_arrivals) then
					Lib:Debug (color.."%d. |cff88ff88%s|r -- |cff88ccdd%s|r  (dist %d, time %.1f, total %.1f)|r |cff8888dd{%s}|r",
					i-1, node.type=="start" and "START" or node.text, node.maplabel,
					node.link and node.link.dist or 0, node.cost-(node.prev and node.prev.cost or 0), node.cost, node.a_b__c_d~="" and node.a_b__c_d or node.a_b or "")
				--end
			end

			lastupdate=0

			if #results==2 then
				if getdist(results[1],results[2])<ZGV.Pointer:GetDefaultStepDist() then return self:ReportArrival() end
			end

			if self.PathFoundHandler then self.PathFoundHandler("success",results,{fromme=fromme}) end
		end

		function Lib:ReportFail()
			Lib:Debug("No route found.")
			if self.PathFoundHandler then self.PathFoundHandler("failure") end
			Lib:Stop()
		end

		function Lib:ReportArrival()
			Lib:Debug("Arrived.")
			if self.PathFoundHandler then self.PathFoundHandler("arrival") end
			Lib:Stop()
		end



		--[[
		function Lib:____RebuildNodes()
			wipe(self.masternodes)

			self:ImportTaxis(self.basenodes_taxis_N)
			if UnitFactionGroup("player")~="Alliance" then
				self:ImportTaxis(self.basenodes_taxis_A)
			else
				self:ImportTaxis(self.basenodes_taxis_H)
			end

			self:ImportBorders()
		end
		--]]

		--local maxpersec = 20000  -- nodes processed
		local hardmaxfirst = 3000 -- don't get greedy
		local hardmaxidle = 1000 -- don't get greedy
		local hardmax = 1000
		local hardmin = 50 -- don't get greedy
		local perframethrot = 0

		-- off the top of my head. elapsed>0.05 (20fps) = setting slow speed. elapsed<0.02 (50fps) = setting full speed.

		local waitphase=0

		Lib.update_interval = 10

		local interval_min=1/12
		local interval_max=1/50

		local tmp_progress = {}
		function Lib:OnUpdate(elapsed)
			--if not UnitOnTaxi("player") then  Lib.force_next = nil  end

			if self.calculating and self.thread then

				--## Throttle according to framerate.
				 if elapsed>interval_min then perframethrot=hardmin
 				 elseif elapsed>interval_max then perframethrot=((elapsed-interval_max)/(interval_min-interval_max))*(hardmax-hardmin) + hardmin
				 else perframethrot=hardmax end

				local count=0
				local resumed,num
				--if perframethrot>hardmax then perframethrot=hardmax end
				while perframethrot>=1 and self.calculating do
					--perframethrot = perframethrot - self:StepPath()
					resumed,num = resume(self.thread,self,perframethrot) -- returns num as count of nodes covered. nil if ending.
					--[[
					if not resumed then
						-- restart!
						self.thread = coroutine.create(self.StepForever)
						resumed,num = resume(self.thread,self,perframethrot) -- returns num as count of nodes covered. nil if ending.
					end
					-- MAYBE not restart, since it ends up reviving dead paths
					--]]
					if num then
						perframethrot = perframethrot-num
						count=count+num
					end
					if not num then self.calculating = nil end
				end

				--## Show waiting animation.
				if num and self.is_first_run and self.PathFoundHandler then
					tmp_progress.progress = self.calculation_step*0.02
					self.PathFoundHandler("progress",nil,tmp_progress)
				end

				--print("Processed "..count.." nodes"..(self.calculating and "" or " - DONE"))

				if perframethrot<0 or not self.calculating then perframethrot=0 end

				lastupdate = 0

			elseif self.updating and not self.delayed_by_taxi and not InCombatLockdown() then

				if UnitOnTaxi("player") or ZGunitOnTaxi then
					-- Trickiness. Restart path searching, with a different starting point: at the taxi destination.
					-- FindLastPath was called above, but that doesn't matter much - we're just injecting something into the start node.
					if not self.force_next and not self.force_next_failed then lastupdate=999 else lastupdate=-5 end
					self.force_next = LibTaxi.LastTaxi and LibTaxi.LastTaxi.node
					self.force_next_failed = not self.force_next

					--self.PathFoundHandler("progress",nil,{progress=self.calculation_step*0.02})
				else
					self.force_next = nil
				end

				-- normal
				--self.taxisuggested=false
				lastupdate = lastupdate + elapsed
				if lastupdate>Lib.update_interval then
					local m,f,x,y = playerpos()
					if ZGunitOnTaxi then lay=-999 end
					if m and x and (x~=lax or y~=lay) then
						lam,laf,lax,lay = m,f,x,y
						self:FindLastPath()
					end
					lastupdate=0
				end
			end
		end

		function Lib:UpdateNow()
			lastupdate=999
			lax=-999
			self.calculating=false -- yes, false; need to restart, so stop calculating, start updating, wait for FindLastPath call.
			self.updating=true
			self.is_first_run=1
			--self.updatepaused=nil
		end

		function Lib:FindPath(am,af,ax,ay,bm,bf,bx,by, handler, extradata)
			--if ax>=1 then ax,ay=ax/100,ay/100 end
			--if bx>=1 then bx,by=bx/100,by/100 end
			am,af = ZGV:SanitizeMapFloor(am,af)
			lam,laf,lax,lay,lbm,lbf,lbx,lby=am,af,ax,ay,bm,bf,bx,by
			self.is_first_run = true
			if lam==0 then
				lam,laf,lax,lay = playerpos()
				if not lax then self:ReportFail() end
				fromme=true
				self.updating = self.do_updating
			else
				self.updating = false
			end
			self.PathFoundHandler = handler
			self.extradata = extradata
			wipe(self.nodes['start'])
			wipe(self.nodes['end'])
			self:FindLastPath(lbm)
			--self:FindImpossiblePath()
		end

		function Lib:FindLastPath()
			self:ClearPath()
			self:CheckMaxSpeeds()
			--[[
			if not self.importedTaxis then
				self:RebuildNodes()
				self.importedTaxis = true
			end
			--]]

			--if UnitOnTaxi("player") then
			if self.delayed_by_taxi then
				Lib:Debug("path delayed by taxi. Will resume upon landing.")
				--self.delayed_by_taxi = true
				self.calculating=false
				return
			end

			--if lam==13 or lam==14 or lam==0 or lam==689 or lam==-1 or lam==485 or lam==466 then
				-- Guess which zone we're in. SILLY.
			if fromme then
				local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor
				lam,laf,lax,lay = playerpos()
				if not lam or not lax or lam==0 then
					Lib:Debug("&LibRover FindLastPath current pos unknown, failing")
					Lib:ReportFail()
					return
				end
				local x,y = Astrolabe:TranslateWorldMapPosition( lam, laf, lax, lay, m, f )
				if x and y and x>0 and y>0 and x<1 and y<1 then
					lam,laf,lax,lay=m,f,x,y
					--Lib:Debug("We're actually in %s at %.1f %.1f", GetMapNameByID(lam) or lam,lax*100,lay*100)
				end
			end
			--end

			if not lam or not laf or not lbm or not lbf or lam==0 or lbm==0 then self:ReportFail() return end
			--assert(lam,"missing starting map")
			--assert(laf,"missing starting floor")
			--assert(lax and lay,"missing starting coord")
			--assert(lbm,"missing ending map")
			--assert(lbf,"missing ending floor")
			--assert(lbx and lby,"missing ending coord")

			Lib:Debug("&LibRover FindLastPath from %s/%d %.1f,%.1f to %s/%d %.1f,%.1f", GetMapNameByID(lam) or lam,laf,lax*100,lay*100,GetMapNameByID(lbm) or lbm,lbf,lbx*100,lby*100)

			self.startnode = {m=lam,f=laf,x=lax,y=lay,type="start",player=fromme, score=0,cost=0,time=0}
			self.endnode = {m=lbm,f=lbf,x=lbx,y=lby,type="end",extra_title=Lib.extradata and Lib.extradata.title}

			-- guess region by subzonetext, if any region matches that.
			if self.startnode.player then
				self.startnode.minimapzone=BZR[GetMinimapZoneText()]
			end

			--[[
			-- Find closest node, start with a link to it. Why?
			-- startnode might be in world space; can't tell which zone that is in. And going beeline to the endnode would be too easy.
			local mindist,minnode
			for ni,node in ipairs(self.nodes.all) do
				local dist = getdist(self.startnode,node)
				if not mindist or mindist>dist then  mindist,minnode=dist,node  end
			end
			--]]

			self.copyendnode = {m=lbm,f=lbf,x=lbx,y=lby,type="temp",warlocksummon=true}
			AddNode(self.copyendnode) --TODO Remove this node so it is not infinitely created

			AddNode(self.startnode)
			AddNode(self.endnode)

			if self.extradata.direct then -- let's shoot ourselves in the foot! yeah!
				self.startnode.n[self.endnode]={mode="walk",cost=-9999999}
			end

			self.opennodes = {[self.startnode]=1}
			self.closednodes = {}

			self.calculating = true
			self.calculation_step = 0
			self.thread = coroutine.create(self.StepForever)

			hardmax = self.is_first_run and hardmaxfirst or hardmaxidle

			success_endnode = nil

			-- NOW, EVERYTHING IS SET UP. Calculation kicks off in frame updates.
		end

		function Lib:FindImpossiblePath(map)
			Lib:Debug("FindImpossiblePath")
			map = map or lbm
			local fac = UnitFactionGroup("player")
			local impossible=false
			local arrowtext=""
			
			
			--TODO add worgen and Golbin areas.
			--Vashji and Deepholm

			if self.ContinentsByID[map]==6 and not (IsQuestFlaggedCompleted(31736) or IsQuestFlaggedCompleted(31767))  then
				--Pandaria
				Lib:Debug("Impossible path to Pandaria.")
				local title
				if fac=="Alliance" then 
					title = ZGV.Localizers:GetQuestData(29548).title
				else
					title = ZGV.Localizers:GetQuestData(29690).title
				end
				impossible=true
				arrowtext="To get to Pandaria,\nyou must first complete quest "..title.."."
			elseif (map==606 or map==683) and not GetSpellInfo(GetSpellInfo(90267)) then --Mount Hyjal
				Lib:Debug("Impossible path to Mount Hyjal.")
				impossible=true
				arrowtext="You need your GetSpellInfo(90267)\nto fly to Mount Hyjal."
			elseif map==882 --Unga Ingoo 
			 or map==899 --Arena of Annihilation --map is named Proving Grounds
			 or map==878 --A Brewing Storm
			 or map==884 --Brewmoon Festival
			 or map==900 --Crypt of Forgotten Kings
			 or map==9999 --Greenstone Village --Don't know these map ids yet.
			 or map==906 --Theramore's Fall
			 then
							
				local title=map~=899 and GetMapNameByID(map) or "Arena of Annilhilation" --TODO Localize Area of Annilhilation
				Lib:Debug("Impossible path to a scenario "..title)	
				impossible=true
				arrowtext="Use the Dungeon Finder to queue\nfor the "..title.." Scenario." 

			elseif map==808 and fac~="Neutral" then -- Can't get to Panda area
				Lib:Debug("Impossible path to Panda Starter Area... Stop looking at the Panda starter guide.")	
				arrowtext="You can't get there,\n that is the Panda Starter Area."
				impossible=true
			end

			--TODO make rainbow bridge for Dungeons. Doesn't make sense to check for every dungeon location
			--but if there is not path to it, we can always say "Queue for it in Dungeon Finder"
			--This will not be done here, but is related.

			if impossible then
				--TODO make sure travel system doesn't try to calculate a route. 
				--TODO set the text of the arrow to arrowtext
				--TODO Hide waypoint/ants? Set waypoint to end point? 
				ZGV:Debug(arrowtext)
			end
		end

		function Lib:Abort()
			Lib.updating=false
			Lib.calculating=false
			Lib.thread=nil
			lam,laf,lax,lay,lbm,lbf,lbx,lby = nil
			Lib:Debug("LibRover aborting")
		end

		function Lib:Stop()
			Lib.calculating=false
			Lib.thread=nil
			Lib:Debug("LibRover stopping gracefully, will update")
		end

		Lib.maxspeedinzone={}

		function Lib.HasAchievement(id)
			return select(4,GetAchievementInfo(id))
		end
		local HasAchievement=Lib.HasAchievement

		local last_speed_check=0
		function Lib:CheckMaxSpeeds()
			local time=GetTime()
			if time-last_speed_check<1 then return end
			last_speed_check=time

			local maxspeed = ZGV and ZGV.db and ZGV.db.profile.debug_librover_maxspeed
				    or (HasAchievement(5180) and 3.1) --master riding: epic flight
				    or (HasAchievement(892) and 2.8) --artisan riding: fast flight
				    or (HasAchievement(890) and 1.5) --expert riding: flight
				    or (HasAchievement(889) and 1.0) --journeyman riding: fast ride
				    or (HasAchievement(891) and 0.6) --apprentice riding: normal ride
				    or 0 -- this is thanks to Maldivia, who is a fucking genius

			local ridespeed = min(maxspeed,1.0)

			local coldflying = GetSpellInfo(GetSpellInfo(54197))
			local flightlicense = GetSpellInfo(GetSpellInfo(90267)) or (ZGV and ZGV.db and ZGV.db.profile.debug_librover_flightazeroth)
			local pandarialicense = GetSpellInfo(GetSpellInfo(115916) or 0)

			if ZGV and ZGV.db then
				if ZGV.db.profile.debug_librover_flightcold~=nil then coldflying=ZGV.db.profile.debug_librover_flightcold end
				if ZGV.db.profile.debug_librover_flightazeroth~=nil then flightlicense=ZGV.db.profile.debug_librover_flightazeroth end
			end

			-- areas:
			-- 1 = Azeroth (no flying)
			-- 2 = Outland (flying)
			-- 3 = Northrend (flying with cold)
			-- 4 = Pandaria (flying with pandairalicense)

			Lib.speeds = {
				["Azeroth"] = 1.0 + ( flightlicense and maxspeed or ridespeed ),
				["Outland"] = 1.0 + maxspeed,
				["Northrend"] = 1.0 + ( coldflying    and maxspeed or ridespeed ),
				["Pandaria"] = 1.0 + ( pandarialicense and maxspeed or ridespeed ),
			}

			for zoneid=1,1000 do
				local zonedata = Astrolabe.WorldMapSize[zoneid]
				local system = zonedata and (zonedata.system or zonedata.systemParent)
				if system then
					local speed
					if system==13 or system==14 or system==640 then speed=Lib.speeds["Azeroth"]
					elseif system==485 then speed=Lib.speeds["Northrend"]
					elseif system==466 then speed=Lib.speeds["Outland"]
					elseif system==862 then speed=Lib.speeds["Pandaria"]
					else speed=1.0 end

					local runspeed = min(speed,2.0)
					local flyspeed = (speed>2.4 and not is_exo_or_belf(zoneid) and not is_barad(zoneid)) and speed
					if is_vash(zoneid) then flyspeed=2.4 end
					Lib.maxspeedinzone[zoneid]={ flyspeed or runspeed, runspeed, flyspeed }
				end
			end
		end

		local function warn(message)
			local _, ret = pcall(error, message, 3)
			geterrorhandler()(ret)
		end


		local function onEvent(this, event, arg1)
			if event=="ADDON_LOADED" and not Lib.loaded and ZGV and ZGV.Pointer and ZGV.db then
				Lib.loaded=true  -- TODO added a ZGV.db check for sanity, test how it is working in real life

				Lib:DoStartup()

			elseif event=="ACHIEVEMENT_EARNED" or event=="LEARNED_SPELL_IN_TAB" or event=="RECEIVED_ACHIEVEMENT_LIST" then
				Lib:CheckMaxSpeeds()
			elseif event=="PLAYER_CONTROL_LOST" then  --getting on a taxi
				Lib:Debug("We're flying!")
				ZGunitOnTaxi=true
				lastupdate=999  -- done in UpdateNow() but just makes sure frame doesn't update first.... It has happened
				Lib:UpdateNow()
			elseif event=="PLAYER_CONTROL_GAINED" then  --getting off a taxi
				Lib:Debug("Got off taxi.")
				ZGunitOnTaxi=false
				Lib.delayed_by_taxi=nil
				SetMapToCurrentZone()  -- EVIL.
				Lib:UpdateNow()

			elseif event=="WORLD_MAP_UPDATE" then
				lastupdate = 999  -- soft force update; this happens too often
			elseif event=="ZONE_CHANGED_NEW_AREA" then
				Lib:UpdateNow()  -- hard force update
			elseif event=="TAXIMAP_OPENED" then	-- highlight suggested taxi destination

				local taxiframe = TaxiFrame
				local glow = taxiframe.LibRover_glow
				if not glow then
					glow = taxiframe:CreateTexture(nil,"ARTWORK")
					taxiframe.LibRover_glow = glow
					glow:SetTexture("Interface/SPELLBOOK/UI-GlyphFrame-Glow")
					glow:SetBlendMode("ADD")
					glow:SetSize(48,48)
				end
				glow:Hide()

				--Lib:UpdateTaxis()
				if Lib.RESULTS
				and not (Lib.extradata and Lib.extradata.waypoint and Lib.extradata.waypoint.type=="way" and not ZGV.db.profile.visible)  -- do NOTHING if current path was guide-driven.
				then
					for k=1, #Lib.RESULTS do
						local node = Lib.RESULTS[k]
						if node and node.type=="taxi" and node.taxiFinal then

							for i=1,NumTaxiNodes() do
								if TaxiNodeGetType(i)~="NONE" and TaxiNodeName(i):find(node.name,0,true) then
									local b = _G["TaxiButton"..i]

									-- hop on automatically?
									if ZGV.db.profile.autotaxi and b:GetID() then
										Dismount()
										TakeTaxiNode(b:GetID())
									end

									-- glow it!
									--glow:SetSize(64,64)  glow:SetPoint("CENTER",b,"CENTER",8,-7)
									glow:SetPoint("CENTER",b,"CENTER",6,-5)
									UIFrameFlash(glow,0.4,0.4,5.0,true,0,0,1)
									glow:Show()

									break
								end
							end
						end
					end
					return
				end
			end
		end

		Lib.frame = LibRoverFrame or CreateFrame("Frame", "LibRoverFrame")
		Lib.frame:RegisterEvent("ADDON_LOADED")
		Lib.frame:RegisterEvent("ACHIEVEMENT_EARNED")
		Lib.frame:RegisterEvent("RECEIVED_ACHIEVEMENT_LIST")
		Lib.frame:RegisterEvent("LEARNED_SPELL_IN_TAB")
		Lib.frame:RegisterEvent("PLAYER_CONTROL_GAINED")
		Lib.frame:RegisterEvent("PLAYER_CONTROL_LOST")
		Lib.frame:RegisterEvent("TAXIMAP_OPENED")
		Lib.frame:RegisterEvent("WORLD_MAP_UPDATE")
		Lib.frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		Lib.frame:SetScript("OnEvent", onEvent)
		Lib.frame:SetScript("OnUpdate", function(frame,elapsed) Lib:OnUpdate(elapsed) end)

		function Lib:ShowAllNodes(nodetype)
			nodetype=nodetype or "all"
			for ni,n in ipairs(Lib.nodes[nodetype]) do
				ZGV.Pointer:SetWaypoint(n.m,n.f,n.x,n.y,{title=n:tostring(true)})
			end
		end

		function PlayerCompletedQuest(id)
			local completedquests = GetQuestsCompleted()
			if not completedquests then return end
			return completedquests[id]
		end

		if tonumber(select(2,GetBuildInfo()),nil)>=15799 then PlayerCompletedQuest=IsQuestFlaggedCompleted end

		function Lib:GoSlow()
			maxpersec = 1
		end

		function Lib:Debug(msg,...)
			ZGV:Debug("&LibRover ".. msg, ...)
		end

		function Lib:IsWintergraspControlled()
			if WorldMapFrame:IsVisible() then return false end  -- sinus: can't go changing the map when it's open!
			SetMapByID(501) --set map to Wintergrasp
			for i=1,GetNumMapLandmarks() do
				local name,_,textureIndex,_,_ = GetMapLandmarkInfo(i);
				if ( name == "Wintergrasp Fortress") then
					if ( textureIndex == 79 ) then
						if UnitFactionGroup("player")=="Horde" then
							SetMapToCurrentZone()
							return true
						end
					elseif ( textureIndex == 82 ) then
						if UnitFactionGroup("player")=="Alliance" then
							SetMapToCurrentZone()
							return true
						end
					end
				end
			end
			SetMapToCurrentZone()
			return false
		end

	end

end

--[[
local MapZoneCache={}
local cached
local function GetMapZoneNumbers(zonename)
	if zonename==self.BZL["Plaguelands: The Scarlet Enclave"] then return 5,1 end
	cached = MapZoneCache[zonename]
	if cached then return unpack(cached) end
	for cont in pairs{GetMapContinents()} do
		for zone,name in pairs{GetMapZones(cont)} do
			if name==zonename then
				MapZoneCache[zonename]={cont,zone}
				return cont,zone
			end
		end
	end
	return 0
end
--]]