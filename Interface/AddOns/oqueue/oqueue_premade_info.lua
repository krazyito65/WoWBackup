--[[ 
  @file       oqueue_premade_info.lua
  @brief      functions to gather up premade info for the leader

  @author     rmcinnis
  @date       april 06, 2012
  @copyright  Solid ICE Technologies
              this file may be distributed so long as it remains unaltered
              if this file is posted to a web site, credit must be given to me along with a link to my web page
              no code in this file may be used in other works without expressed permission  
]]--
local addonName, OQ = ... ;
local oq = OQ:mod() ; -- thank goodness i stumbled across this trick
local _ ; -- throw away (was getting taint warning; what happened blizz?)

-- list of achieves in links:  http://mmo4ever.com/mists-of-pandaria/achievement.php?id=5359
--
OQ.rbg_rank = { [  0 ] = { id = 0, rank = "" },
                [  1 ] = { id = 5345, rank = OQ.RBG_HRANK_1 },
                [  2 ] = { id = 5346, rank = OQ.RBG_HRANK_2 },
                [  3 ] = { id = 5347, rank = OQ.RBG_HRANK_3 },
                [  4 ] = { id = 5348, rank = OQ.RBG_HRANK_4 },
                [  5 ] = { id = 5349, rank = OQ.RBG_HRANK_5 },
                [  6 ] = { id = 5350, rank = OQ.RBG_HRANK_6 },
                [  7 ] = { id = 5351, rank = OQ.RBG_HRANK_7 },
                [  8 ] = { id = 5352, rank = OQ.RBG_HRANK_8 },
                [  9 ] = { id = 5338, rank = OQ.RBG_HRANK_9 },
                [ 10 ] = { id = 5353, rank = OQ.RBG_HRANK_10 },
                [ 11 ] = { id = 5354, rank = OQ.RBG_HRANK_11 },
                [ 12 ] = { id = 5355, rank = OQ.RBG_HRANK_12 },
                [ 13 ] = { id = 5342, rank = OQ.RBG_HRANK_13 },
                [ 14 ] = { id = 5356, rank = OQ.RBG_HRANK_14 },
                [ 15 ] = { id = 5330, rank = OQ.RBG_ARANK_1 },
                [ 16 ] = { id = 5331, rank = OQ.RBG_ARANK_2 },
                [ 17 ] = { id = 5332, rank = OQ.RBG_ARANK_3 },
                [ 18 ] = { id = 5333, rank = OQ.RBG_ARANK_4 },
                [ 19 ] = { id = 5334, rank = OQ.RBG_ARANK_5 },
                [ 20 ] = { id = 5335, rank = OQ.RBG_ARANK_6 },
                [ 21 ] = { id = 5336, rank = OQ.RBG_ARANK_7 },
                [ 22 ] = { id = 5337, rank = OQ.RBG_ARANK_8 },
                [ 23 ] = { id = 5359, rank = OQ.RBG_ARANK_9 },
                [ 24 ] = { id = 5339, rank = OQ.RBG_ARANK_10 },
                [ 25 ] = { id = 5340, rank = OQ.RBG_ARANK_11 },
                [ 26 ] = { id = 5341, rank = OQ.RBG_ARANK_12 },
                [ 27 ] = { id = 5357, rank = OQ.RBG_ARANK_13 },
                [ 28 ] = { id = 5343, rank = OQ.RBG_ARANK_14 },
              } ;

function oq.has_completed( achieve_id )
  return (achieve_id ~= nil) and (achieve_id > 0) and (GetStatistic( achieve_id ) ~= "--") ;
end

function oq.has_achieved( achieve_id )
  return (achieve_id ~= nil) and (achieve_id > 0) and (select( 4, GetAchievementInfo( achieve_id )) == true) ;
end

function oq.pve_group_wiped()
  if (oq.raid.type == OQ.TYPE_DUNGEON) then
    OQ_data.leader["pve.5man"].nWipes = (OQ_data.leader["pve.5man"].nWipes or 0) + 1 ;
  elseif (oq.raid.type == OQ.TYPE_RAID) then
    OQ_data.leader["pve.raid"].nWipes = (OQ_data.leader["pve.raid"].nWipes or 0) + 1 ;
  elseif (oq.raid.type == OQ.TYPE_CHALLENGE) then
    OQ_data.leader["pve.challenge"].nWipes = (OQ_data.leader["pve.challenge"].nWipes or 0) + 1 ;
  end
  local dt = oq.utc_time() - oq._instance_tm ;
  print( "wipe detected @ ".. tostring(floor(dt/60)) ..":".. tostring(floor(dt%60)) ) ;
end

function oq.check_for_wipe() 
  if (not oq.iam_raid_leader()) or (oq._inside_instance == nil) or ((oq._instance_type ~= "party") and (oq._instance_type ~= "raid")) then
    return ;
  end
  local hp = UnitHealth("player") ;
  if (hp > 0) then
    oq._wiped = nil ;
    return ;
  end
  local nMembers = GetNumGroupMembers() ;
  local type = "party" ;
  if (IsInRaid()) then
    type = "raid" ;
  end

  local i ;
  for i=1,nMembers-1 do
    if (UnitHealth( type .."".. tostring(i) ) > 0) then
      oq._wiped = nil ;
      return ;
    end
  end
  
  -- if here, group has wiped
  if (oq._wiped == nil) then
    oq.pve_group_wiped() ;
  end
  oq._wiped = 1 ;
end

function oq.get_nboss_kills()
  local nbosses = (OQ_data.leader["pve.5man"].nBosses or 0) ;
  nbosses = nbosses + OQ_data.leader["pve.raid"].nBosses ;
  nbosses = nbosses + OQ_data.leader["pve.challenge"].nBosses ;
  
  local nwipes = (OQ_data.leader["pve.5man"].nWipes or 0) ;
  nwipes = nwipes + (OQ_data.leader["pve.raid"].nWipes or 0) ;
  nwipes = nwipes + (OQ_data.leader["pve.challenge"].nWipes or 0) ;
  
  return nbosses, nwipes ;
end

function oq.get_raid_progression()
--  GetStatistic(588)
-- oq.bset( m.flags, OQ_FLAG_DESERTER, deserter ) ;
  local flags = 0 ;

  -- terrace of endless spring
  local toes = "" ;
  -- 10 and 25 man normal
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6813 ) or oq.has_completed( 7965 ) ) ; -- Protectors of the Endless kills
  flags = oq.bset( flags, 0x02, oq.has_completed( 6815 ) or oq.has_completed( 7967 ) ) ; -- Tsulong
  flags = oq.bset( flags, 0x04, oq.has_completed( 6817 ) or oq.has_completed( 7969 ) ) ; -- Lei Shi
  flags = oq.bset( flags, 0x08, oq.has_completed( 6819 ) or oq.has_completed( 7971 ) ) ; -- Sha of Fear
  toes = toes .."".. oq.encode_mime64_1digit( flags ) ;
  
  -- 10 and 25 man heroic
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6814 ) or oq.has_completed( 7966 ) ) ; -- Protectors of the Endless kills
  flags = oq.bset( flags, 0x02, oq.has_completed( 6816 ) or oq.has_completed( 7968 ) ) ; -- Tsulong
  flags = oq.bset( flags, 0x04, oq.has_completed( 6818 ) or oq.has_completed( 7970 ) ) ; -- Lei Shi
  flags = oq.bset( flags, 0x08, oq.has_completed( 6820 ) or oq.has_completed( 7972 ) ) ; -- Sha of Fear
  toes = toes .."".. oq.encode_mime64_1digit( flags ) ;
  
  -- heart of fear
  local hof = "" ;
  -- 10 and 25 man normal
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6801 ) or oq.has_completed( 7951 ) ) ; -- Imperial Vizier Zor'lok
  flags = oq.bset( flags, 0x02, oq.has_completed( 6803 ) or oq.has_completed( 7954 ) ) ; -- Blade Lord Ta'yak
  flags = oq.bset( flags, 0x04, oq.has_completed( 6805 ) or oq.has_completed( 7956 ) ) ; -- Garalon
  flags = oq.bset( flags, 0x08, oq.has_completed( 6807 ) or oq.has_completed( 7958 ) ) ; -- Wind Lord Mel'jarak
  flags = oq.bset( flags, 0x10, oq.has_completed( 6809 ) or oq.has_completed( 7961 ) ) ; -- Amber-Shaper Un'sok
  flags = oq.bset( flags, 0x20, oq.has_completed( 6811 ) or oq.has_completed( 7963 ) ) ; -- Grand Empress Shek'zeer
  hof = hof .."".. oq.encode_mime64_1digit( flags ) ;
  
  -- 10 and 25 man heroic
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6802 ) or oq.has_completed( 7953 ) ) ; -- Imperial Vizier Zor'lok
  flags = oq.bset( flags, 0x02, oq.has_completed( 6804 ) or oq.has_completed( 7955 ) ) ; -- Blade Lord Ta'yak
  flags = oq.bset( flags, 0x04, oq.has_completed( 6806 ) or oq.has_completed( 7957 ) ) ; -- Garalon
  flags = oq.bset( flags, 0x08, oq.has_completed( 6808 ) or oq.has_completed( 7960 ) ) ; -- Wind Lord Mel'jarak
  flags = oq.bset( flags, 0x10, oq.has_completed( 6810 ) or oq.has_completed( 7962 ) ) ; -- Amber-Shaper Un'sok
  flags = oq.bset( flags, 0x20, oq.has_completed( 6812 ) or oq.has_completed( 7964 ) ) ; -- Grand Empress Shek'zeer
  hof = hof .."".. oq.encode_mime64_1digit( flags ) ;
  
  -- mogu'shan vaults
  local mv = "" ;
  -- 10 and 25 man normal
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6789 ) or oq.has_completed( 7914 ) ) ; -- Stone Guard
  flags = oq.bset( flags, 0x02, oq.has_completed( 6791 ) or oq.has_completed( 7917 ) ) ; -- Feng the Accursed
  flags = oq.bset( flags, 0x04, oq.has_completed( 6793 ) or oq.has_completed( 7919 ) ) ; -- Gara'jal the Spiritbinder
  flags = oq.bset( flags, 0x08, oq.has_completed( 6795 ) or oq.has_completed( 7921 ) ) ; -- Four Kings
  flags = oq.bset( flags, 0x10, oq.has_completed( 6797 ) or oq.has_completed( 7923 ) ) ; -- Elegon
  flags = oq.bset( flags, 0x20, oq.has_completed( 6799 ) or oq.has_completed( 7926 ) ) ; -- Qin-xi
  mv = mv .."".. oq.encode_mime64_1digit( flags ) ;

  -- 10 and 25 man heroic
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 6790 ) or oq.has_completed( 7915 ) ) ; -- Stone Guard
  flags = oq.bset( flags, 0x02, oq.has_completed( 6792 ) or oq.has_completed( 7918 ) ) ; -- Feng the Accursed
  flags = oq.bset( flags, 0x04, oq.has_completed( 6794 ) or oq.has_completed( 7920 ) ) ; -- Gara'jal the Spiritbinder
  flags = oq.bset( flags, 0x08, oq.has_completed( 6796 ) or oq.has_completed( 7922 ) ) ; -- Four Kings
  flags = oq.bset( flags, 0x10, oq.has_completed( 6798 ) or oq.has_completed( 7924 ) ) ; -- Elegon
  flags = oq.bset( flags, 0x20, oq.has_completed( 6800 ) or oq.has_completed( 7927 ) ) ; -- Qin-xi
  mv = mv .."".. oq.encode_mime64_1digit( flags ) ;
  
  -- throne of thunder
  local tot = "" ;
  -- 10 and 25 man normal
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8142 ) or oq.has_completed( 8143 ) ) ; -- Jin'rokh the Breaker
  flags = oq.bset( flags, 0x02, oq.has_completed( 8149 ) or oq.has_completed( 8150 ) ) ; -- Horridon 
  flags = oq.bset( flags, 0x04, oq.has_completed( 8154 ) or oq.has_completed( 8155 ) ) ; -- Council of Elders
  flags = oq.bset( flags, 0x08, oq.has_completed( 8159 ) or oq.has_completed( 8160 ) ) ; -- Tortos
  flags = oq.bset( flags, 0x10, oq.has_completed( 8164 ) or oq.has_completed( 8165 ) ) ; -- Megaera
  flags = oq.bset( flags, 0x20, oq.has_completed( 8169 ) or oq.has_completed( 8170 ) ) ; -- Ji-Kun
  tot = tot .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8174 ) or oq.has_completed( 8175 ) ) ; -- Durumu the Forgotten
  flags = oq.bset( flags, 0x02, oq.has_completed( 8179 ) or oq.has_completed( 8182 ) ) ; -- Primordius
  flags = oq.bset( flags, 0x04, oq.has_completed( 8184 ) or oq.has_completed( 8185 ) ) ; -- Dark Animus
  flags = oq.bset( flags, 0x08, oq.has_completed( 8189 ) or oq.has_completed( 8190 ) ) ; -- Iron Qon
  flags = oq.bset( flags, 0x10, oq.has_completed( 8194 ) or oq.has_completed( 8195 ) ) ; -- Twin Consorts
  flags = oq.bset( flags, 0x20, oq.has_completed( 8199 ) or oq.has_completed( 8200 ) ) ; -- Lei Shen
  tot = tot .."".. oq.encode_mime64_1digit( flags ) ;  
  
  -- 10 and 25 man heroic  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8144 ) or oq.has_completed( 8145 ) ) ; -- Jin'rokh the Breaker
  flags = oq.bset( flags, 0x02, oq.has_completed( 8151 ) or oq.has_completed( 8152 ) ) ; -- Horridon 
  flags = oq.bset( flags, 0x04, oq.has_completed( 8156 ) or oq.has_completed( 8157 ) ) ; -- Council of Elders
  flags = oq.bset( flags, 0x08, oq.has_completed( 8162 ) or oq.has_completed( 8161 ) ) ; -- Tortos
  flags = oq.bset( flags, 0x10, oq.has_completed( 8166 ) or oq.has_completed( 8167 ) ) ; -- Megaera
  flags = oq.bset( flags, 0x20, oq.has_completed( 8171 ) or oq.has_completed( 8172 ) ) ; -- Ji-Kun
  tot = tot .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8176 ) or oq.has_completed( 8177 ) ) ; -- Durumu the Forgotten
  flags = oq.bset( flags, 0x02, oq.has_completed( 8181 ) or oq.has_completed( 8180 ) ) ; -- Primordius
  flags = oq.bset( flags, 0x04, oq.has_completed( 8186 ) or oq.has_completed( 8187 ) ) ; -- Dark Animus
  flags = oq.bset( flags, 0x08, oq.has_completed( 8191 ) or oq.has_completed( 8192 ) ) ; -- Iron Qon
  flags = oq.bset( flags, 0x10, oq.has_completed( 8196 ) or oq.has_completed( 8197 ) ) ; -- Twin Consorts
  flags = oq.bset( flags, 0x20, oq.has_completed( 8202 ) or oq.has_completed( 8201 ) ) ; -- Lei Shen
  tot = tot .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8203 ) or oq.has_completed( 8256 ) ) ; -- Ra-den
  tot = tot .."".. oq.encode_mime64_1digit( flags ) ;  
  
  -- siege of orgrimmar
  local soo = "" ;
  -- 10 and 25 man normal
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8551 ) or oq.has_completed( 8552 ) ) ; -- Immerseus
  flags = oq.bset( flags, 0x02, oq.has_completed( 8557 ) or oq.has_completed( 8558 ) ) ; -- The Fallen Protectors
  flags = oq.bset( flags, 0x04, oq.has_completed( 8563 ) or oq.has_completed( 8564 ) ) ; -- Norushen
  flags = oq.bset( flags, 0x08, oq.has_completed( 8569 ) or oq.has_completed( 8570 ) ) ; -- Sha of Pride
  flags = oq.bset( flags, 0x10, oq.has_completed( 8576 ) or oq.has_completed( 8577 ) ) ; -- Galakras
  flags = oq.bset( flags, 0x20, oq.has_completed( 8582 ) or oq.has_completed( 8583 ) ) ; -- Iron Juggernaut
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8588 ) or oq.has_completed( 8589 ) ) ; -- Kor'kron Dark Shaman
  flags = oq.bset( flags, 0x02, oq.has_completed( 8595 ) or oq.has_completed( 8596 ) ) ; -- General Nazgrim
  flags = oq.bset( flags, 0x04, oq.has_completed( 8601 ) or oq.has_completed( 8602 ) ) ; -- Malkorok
  flags = oq.bset( flags, 0x08, oq.has_completed( 8608 ) or oq.has_completed( 8609 ) ) ; -- Spoils of Pandaria
  flags = oq.bset( flags, 0x10, oq.has_completed( 8616 ) or oq.has_completed( 8617 ) ) ; -- Thok the Bloodthirsty
  flags = oq.bset( flags, 0x20, oq.has_completed( 8622 ) or oq.has_completed( 8623 ) ) ; -- Siegecrafter Blackfuse
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8628 ) or oq.has_completed( 8629 ) ) ; -- Paragons of the Klaxxi
  flags = oq.bset( flags, 0x02, oq.has_completed( 8635 ) or oq.has_completed( 8636 ) ) ; -- Garrosh Hellscream
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  
  -- 10 and 25 man heroic  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8553 ) or oq.has_completed( 8554 ) ) ; -- Immerseus
  flags = oq.bset( flags, 0x02, oq.has_completed( 8559 ) or oq.has_completed( 8560 ) ) ; -- The Fallen Protectors
  flags = oq.bset( flags, 0x04, oq.has_completed( 8565 ) or oq.has_completed( 8566 ) ) ; -- Norushen
  flags = oq.bset( flags, 0x08, oq.has_completed( 8571 ) or oq.has_completed( 8573 ) ) ; -- Sha of Pride
  flags = oq.bset( flags, 0x10, oq.has_completed( 8578 ) or oq.has_completed( 8579 ) ) ; -- Galakras
  flags = oq.bset( flags, 0x20, oq.has_completed( 8584 ) or oq.has_completed( 8585 ) ) ; -- Iron Juggernaut
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8590 ) or oq.has_completed( 8591 ) ) ; -- Kor'kron Dark Shaman
  flags = oq.bset( flags, 0x02, oq.has_completed( 8597 ) or oq.has_completed( 8598 ) ) ; -- General Nazgrim
  flags = oq.bset( flags, 0x04, oq.has_completed( 8603 ) or oq.has_completed( 8604 ) ) ; -- Malkorok
  flags = oq.bset( flags, 0x08, oq.has_completed( 8610 ) or oq.has_completed( 8612 ) ) ; -- Spoils of Pandaria
  flags = oq.bset( flags, 0x10, oq.has_completed( 8618 ) or oq.has_completed( 8619 ) ) ; -- Thok the Bloodthirsty
  flags = oq.bset( flags, 0x20, oq.has_completed( 8624 ) or oq.has_completed( 8625 ) ) ; -- Siegecrafter Blackfuse
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8630 ) or oq.has_completed( 8631 ) ) ; -- Paragons of the Klaxxi
  flags = oq.bset( flags, 0x02, oq.has_completed( 8637 ) or oq.has_completed( 8638 ) ) ; -- Garrosh Hellscream
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  
  -- flex
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8550 ) ) ; -- Immerseus
  flags = oq.bset( flags, 0x02, oq.has_completed( 8556 ) ) ; -- The Fallen Protectors
  flags = oq.bset( flags, 0x04, oq.has_completed( 8562 ) ) ; -- Norushen
  flags = oq.bset( flags, 0x08, oq.has_completed( 8568 ) ) ; -- Sha of Pride
  flags = oq.bset( flags, 0x10, oq.has_completed( 8575 ) ) ; -- Galakras
  flags = oq.bset( flags, 0x20, oq.has_completed( 8581 ) ) ; -- Iron Juggernaut
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8587 ) ) ; -- Kor'kron Dark Shaman
  flags = oq.bset( flags, 0x02, oq.has_completed( 8594 ) ) ; -- General Nazgrim
  flags = oq.bset( flags, 0x04, oq.has_completed( 8600 ) ) ; -- Malkorok
  flags = oq.bset( flags, 0x08, oq.has_completed( 8606 ) ) ; -- Spoils of Pandaria
  flags = oq.bset( flags, 0x10, oq.has_completed( 8615 ) ) ; -- Thok the Bloodthirsty
  flags = oq.bset( flags, 0x20, oq.has_completed( 8621 ) ) ; -- Siegecrafter Blackfuse
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  flags = 0 ;
  flags = oq.bset( flags, 0x01, oq.has_completed( 8627 ) ) ; -- Paragons of the Klaxxi
  flags = oq.bset( flags, 0x02, oq.has_completed( 8634 ) ) ; -- Garrosh Hellscream
  soo = soo .."".. oq.encode_mime64_1digit( flags ) ;  
  
  -- bosses and wipes
  local nbosses, nwipes = oq.get_nboss_kills() ;
  local record = oq.encode_mime64_3digit( nbosses ) .."".. 
                 oq.encode_mime64_2digit( nwipes ) .."".. 
                 oq.encode_mime64_3digit( OQ_data.leader_dkp ) .."".. 
                 oq.encode_mime64_3digit( OQ_data._dkp ) ;
  
  -- put it all together
  -- AA BB CC DDDDD bbbWWdddmmm
  return toes .. hof .. mv .. tot .. record .. soo ;
end

function oq.get_pvp_experience()
  local str = "" ;
  -- get top rbg rank
  local rank = 0 ;
  local faction = 1 ;
  local flags = 0 ;
  if (strlower(select( 1, UnitFactionGroup("player"))) == "alliance") then
    faction = 15 ;
  end
  local i ;
  for i=faction,faction+13 do
    if (oq.has_achieved( OQ.rbg_rank[i].id )) then
      rank = i ;
    end
  end
  str = str .."".. oq.encode_mime64_1digit(rank) ;
  
  -- get various rbg achieves (hero of the horde)
  flags = 0 ;
  if (faction == 1) then 
    flags = oq.bset( flags, 0x01, oq.has_achieved( 6941 ) ) ; -- hero of the horde
    flags = oq.bset( flags, 0x02, oq.has_achieved( 5326 ) ) ; -- warbringer of the horde
  else
    flags = oq.bset( flags, 0x01, oq.has_achieved( 6942 ) ) ; -- hero of the alliance
    flags = oq.bset( flags, 0x02, oq.has_achieved( 5329 ) ) ; -- warbound veteran of the alliance
  end
  str = str .."".. oq.encode_mime64_1digit(flags) ;
  -- get various bg achieves (battlemaster, bloodthirsty, khan, conqueror)
  flags = 0 ;
  if (faction == 1) then
    -- horde
    flags = oq.bset( flags, 0x01, oq.has_achieved( 1175 ) ) ; -- battlemaster
    flags = oq.bset( flags, 0x02, oq.has_achieved(  714 ) ) ; -- conqueror
    flags = oq.bset( flags, 0x04, oq.has_achieved( 5363 ) ) ; -- bloodthirsty
    flags = oq.bset( flags, 0x20, oq.has_achieved( 8055 ) ) ; -- khan
  else
    -- alliance
    flags = oq.bset( flags, 0x01, oq.has_achieved(  230 ) ) ; -- battlemaster
    flags = oq.bset( flags, 0x02, oq.has_achieved(  907 ) ) ; -- justicar
    flags = oq.bset( flags, 0x04, oq.has_achieved( 5363 ) ) ; -- bloodthirsty
    flags = oq.bset( flags, 0x20, oq.has_achieved( 8052 ) ) ; -- khan
  end
  str = str .."".. oq.encode_mime64_1digit(flags) ;
  -- get top arena rank
  flags = 0 ;
  if (faction == 1) then
    -- horde
    flags = oq.bset( flags, 0x01, oq.has_achieved( 1174 ) ) ; -- arena master
    flags = oq.bset( flags, 0x02, oq.has_achieved( 2091 ) ) ; -- gladiator  0.0 -  0.5%
    flags = oq.bset( flags, 0x04, oq.has_achieved( 2092 ) ) ; -- duelist    0.5 -  3.0%
    flags = oq.bset( flags, 0x08, oq.has_achieved( 2093 ) ) ; -- rival      3.0 - 10.0%
  else
    -- alliance
    flags = oq.bset( flags, 0x01, oq.has_achieved( 1174 ) ) ; -- arena master
    flags = oq.bset( flags, 0x02, oq.has_achieved( 2091 ) ) ; -- gladiator
    flags = oq.bset( flags, 0x04, oq.has_achieved( 2092 ) ) ; -- duelist
    flags = oq.bset( flags, 0x08, oq.has_achieved( 2093 ) ) ; -- rival
  end
  str = str .."".. oq.encode_mime64_1digit(flags) ;
  return str ;
end

function oq.get_bg_experience( as_lead ) 
  local str = "" ;
  if (as_lead) then
    local s = OQ_data.leader["bg"] ;
    str = str .."".. oq.encode_mime64_3digit( s.nWins ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nLosses ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nGames ) ;
  else  
    local s = oq.toon.stats["bg"] ;
    str = str .."".. oq.encode_mime64_3digit( s.nWins ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nLosses ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nGames ) ;
  end
  return str .."".. oq.get_pvp_experience() ;
end

function oq.get_rbg_experience( as_lead ) 
  local str = "" ;
  if (as_lead) then
    local s = OQ_data.leader["rbg"] ;
    str = str .."".. oq.encode_mime64_3digit( s.nWins ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nLosses ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nGames ) ;
  else  
    local s = oq.toon.stats["rbg"] ;
    str = str .."".. oq.encode_mime64_3digit( s.nWins ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nLosses ) ;
    str = str .."".. oq.encode_mime64_3digit( s.nGames ) ;
  end
  return str .."".. oq.get_pvp_experience() ;
end

function oq.get_medal_count( id )
  local b = GetStatistic(id) ;
  if (b == "--") then
    b = 0 ;
  end
  return b ;
end

function oq.get_challenge_experience( as_lead )
  local str = "" ;
  str = str .."".. oq.encode_mime64_2digit( oq.get_medal_count(7400) ) ;
  str = str .."".. oq.encode_mime64_2digit( oq.get_medal_count(7401) ) ;
  str = str .."".. oq.encode_mime64_2digit( oq.get_medal_count(7402) ) ;
  
  -- AA BB CC bbbWWdddmmm
  -- bosses and wipes
  local nbosses, nwipes = oq.get_nboss_kills() ;
  return str .."".. oq.encode_mime64_3digit( nbosses            ) .."".. 
                    oq.encode_mime64_2digit( nwipes             ) .."".. 
                    oq.encode_mime64_3digit( OQ_data.leader_dkp ) ..""..
                    oq.encode_mime64_3digit( OQ_data._dkp       ) ;
end

function oq.get_scenario_experience( as_lead )
  -- bbbWWdddmmm
  -- bosses and wipes
  local nbosses, nwipes = oq.get_nboss_kills() ;
  return oq.encode_mime64_3digit( nbosses            ) .."".. 
         oq.encode_mime64_2digit( nwipes             ) .."".. 
         oq.encode_mime64_3digit( OQ_data.leader_dkp ) ..""..
         oq.encode_mime64_3digit( OQ_data._dkp )  ;
end

function oq.get_leader_experience()
  if (oq.raid.type == OQ.TYPE_DUNGEON) or (oq.raid.type == OQ.TYPE_RAID) then
    return oq.get_raid_progression() ;
  end
  if (oq.raid.type == OQ.TYPE_BG) then
    return oq.get_bg_experience( true ) ;
  end
  if (oq.raid.type == OQ.TYPE_RBG) then
    return oq.get_rbg_experience( true ) ;
  end
  if (oq.raid.type == OQ.TYPE_CHALLENGE) then
    return oq.get_challenge_experience( true ) ;
  end
  if (oq.raid.type == OQ.TYPE_SCENARIO) then
    return oq.get_scenario_experience( true ) ;
  end
  
  return "A" ; -- ie: nothing
end

--
-- for member information
--
function oq.get_past_experience()
  if (oq.raid.type == OQ.TYPE_DUNGEON) or (oq.raid.type == OQ.TYPE_RAID) then
    return oq.get_raid_progression() ;
  end
  if (oq.raid.type == OQ.TYPE_BG) then
    return oq.get_bg_experience( nil ) ;
  end
  if (oq.raid.type == OQ.TYPE_RBG) then
    return oq.get_rbg_experience( nil ) ;
  end
  if (oq.raid.type == OQ.TYPE_CHALLENGE) then
    return oq.get_challenge_experience( nil ) ;
  end
  if (oq.raid.type == OQ.TYPE_SCENARIO) then
    return oq.get_scenario_experience( nil ) ;
  end
  
  return "A" ; -- ie: nothing
end

-- premade data 
-- this is data specific to the premade type
-- 
function oq.get_pdata()
  local pdata = "-----" ;
  if (oq.raid.type == OQ.TYPE_DUNGEON) then
    local n = 0 ;
    local i ;
    for i=1,5 do
      local m = oq.raid.group[1].member[i] ;
      if (m.name ~= nil) and (m.name ~= "-") then 
        if (OQ.ROLES[ m.role ] == "TANK") then
          pdata = oq.strrep( pdata, "T", 1 ) ;
        elseif (OQ.ROLES[ m.role ] == "HEALER") then
          pdata = oq.strrep( pdata, "H", 2 ) ;
        else
          pdata = oq.strrep( pdata, "D", 3 + n ) ;
          n = n + 1 ;
        end
      end
    end
  elseif (oq.raid.type == OQ.TYPE_CHALLENGE) or (oq.raid.type == OQ.TYPE_QUESTS) then
    local i ;
    for i=1,5 do
      local m = oq.raid.group[1].member[i] ;
      if (m.name ~= nil) and (m.name ~= "-") then 
        if (OQ.ROLES[ m.role ] == "TANK") then
          pdata = oq.strrep( pdata, "T", i ) ;
        elseif (OQ.ROLES[ m.role ] == "HEALER") then
          pdata = oq.strrep( pdata, "H", i ) ;
        else
          pdata = oq.strrep( pdata, "D", i ) ;
        end
      end
    end
  elseif (oq.raid.type == OQ.TYPE_SCENARIO) then
    local n = 0 ;
    local i ;
    pdata = "---" ;
    for i=1,3 do
      local m = oq.raid.group[1].member[i] ;
      if (m.name ~= nil) and (m.name ~= "-") then 
        if (OQ.ROLES[ m.role ] == "TANK") then
          pdata = oq.strrep( pdata, "T", i ) ;
        elseif (OQ.ROLES[ m.role ] == "HEALER") then
          pdata = oq.strrep( pdata, "H", i ) ;
        else
          pdata = oq.strrep( pdata, "D", i ) ;
          n = n + 1 ;
        end
      end
    end
  else
    local ntanks, nheals, ndps = oq.get_n_roles() ;
    pdata = oq.encode_mime64_1digit(ntanks) .."".. oq.encode_mime64_1digit(nheals) .."".. oq.encode_mime64_1digit(ndps) ;
  end
  return pdata ;
end

function oq.get_dragon_rank( type, nwins, leader_xp ) 
  if (nwins == nil) and (leader_xp ~= nil) then
    if (type == OQ.TYPE_RBG) or (type == OQ.TYPE_BG) then
      nwins, _ = oq.get_winloss_record( leader_xp ) ;
    elseif (type == OQ.TYPE_RAID) or (type == OQ.TYPE_DUNGEON) then
      _, _, nwins = oq.get_pve_winloss_record( leader_xp ) ;
    elseif (type == OQ.TYPE_CHALLENGE) then
      _, _, nwins = oq.get_challenge_winloss_record( leader_xp ) ;
    elseif (type == OQ.TYPE_SCENARIO) then
      _, _, nwins = oq.get_scenario_winloss_record( leader_xp ) ;
    else
      nwins    = 0 ;
    end
  elseif (nwins == nil) then
    nwins = 0 ;
  end

  local t = "pve" ;  
  if (type == OQ.TYPE_RBG) or (type == OQ.TYPE_ARENA) then
    t = "rated" ;
  elseif (type == OQ.TYPE_BG) then
    t = "pvp" ;
  end
  
  local title = "" ;
  local rank  = 0 ;
  local i = 0 ;
  if (t) and (OQ.rank_breaks[t]) then
    local i ;
    for i=4,1,-1 do
      if (OQ.rank_breaks[t][i]) and (nwins >= OQ.rank_breaks[t][i].line) then
        rank  = OQ.rank_breaks[t][i].rank ;
        title = OQ.rank_breaks[t][i].r ;
        return OQ.dragon_rank[ rank ].tag, OQ.dragon_rank[ rank ].y, OQ.dragon_rank[ rank ].cx, OQ.dragon_rank[ rank ].cy, title, rank ;
      end
    end
  end
  return nil, 0, 0, 0, "", 0 ;
end

function oq.get_winloss_record( leader_xp )
  if (leader_xp == nil) then
    return 0,0 ;
  end
  local nwins   = oq.decode_mime64_digits(leader_xp:sub(1,3)) ;
  local nlosses = oq.decode_mime64_digits(leader_xp:sub(4,6)) ;
  return nwins, nlosses ;
end

function oq.get_challenge_winloss_record( leader_xp )
  if (leader_xp == nil) then
    return 0,0,0 ;
  end
  -- AA BB CC bbbWWddd
  local nwins   = oq.decode_mime64_digits(leader_xp:sub( 7, 9)) ;
  local nlosses = oq.decode_mime64_digits(leader_xp:sub(10,11)) ;
  local dkp     = oq.decode_mime64_digits(leader_xp:sub(12,14)) ;
  return nwins, nlosses, dkp ;
end

function oq.get_scenario_winloss_record( leader_xp )
  if (leader_xp == nil) then
    return 0,0,0 ;
  end
  -- bbbWWddd
  local nwins   = oq.decode_mime64_digits(leader_xp:sub( 1, 3)) ;
  local nlosses = oq.decode_mime64_digits(leader_xp:sub( 4, 5)) ;
  local dkp     = oq.decode_mime64_digits(leader_xp:sub( 6, 8)) ;
  return nwins, nlosses, dkp ;
end

function oq.get_pve_winloss_record( leader_xp )
  if (leader_xp == nil) then
    return 0,0,0 ;
  end
  -- AA BB CC DDDDD bbbWWddd
  local nwins   = oq.decode_mime64_digits(leader_xp:sub(12,14)) ;
  local nlosses = oq.decode_mime64_digits(leader_xp:sub(15,16)) ;
  local dkp     = oq.decode_mime64_digits(leader_xp:sub(17,19)) ;
  return nwins, nlosses, dkp ;
end



