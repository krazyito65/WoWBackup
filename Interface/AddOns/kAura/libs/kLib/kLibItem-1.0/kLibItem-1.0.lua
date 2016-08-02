local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibItem-1.0", 1

local kLibItem, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibItem then return end -- No upgrade needed

kLibItem.embeds = kLibItem.embeds or {} -- table containing objects kLibItem is embedded in.
kLibItem.commands = kLibItem.commands or {} -- table containing commands registered
kLibItem.weakcommands = kLibItem.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Get the color rgb for item based on rarity
]]
function kLibItem:Item_ColorByRarity(rarity)
  if not rarity then return end
  return GetItemQualityColor(rarity)
end

--[[ Is equippable
]]
function kLibItem:Item_Equippable(item)
  item = self:Item_Id(item)
  if not item then return end
  return IsEquippableItem(item)
end

--[[ Get item equip location
]]
function kLibItem:Item_EquipLocation(item)
  item = self:Item_Id(item)
  if not item then return end
  local location = select(9, GetItemInfo(item))
  return location
end

--[[ Retrieve equipped item(s) from slot
]]
function kLibItem:Item_EquippedBySlot(slot)
  if slot and type(slot) == 'string' then -- assume equipLocation, get slotNumber
    slot = self:Item_GetSlotValue(slot, 'equipLocation', 'slotNumber')
  end
  if not slot then return end
  if slot == 11 or slot == 12 then
    return GetInventoryItemLink('player', 11), GetInventoryItemLink('player', 12)
  elseif slot == 13 or slot == 14 then
    return GetInventoryItemLink('player', 13), GetInventoryItemLink('player', 14)
  elseif slot == 16 or slot == 17 then
    return GetInventoryItemLink('player', 16), GetInventoryItemLink('player', 17)
  end 
  return GetInventoryItemLink('player', slot)
end

--[[ Determine current item from priorities
]]
function kLibItem:Item_GetCurrentItem(item)
  -- Current equipped item of lowest item level for matching slots (fingers, weapons, trinkets)
  local itemA, itemB = self:Item_EquippedBySlot(self:Item_EquipLocation(item))
  local itemIdA = self:Item_Id(itemA)
  local itemIdB = self:Item_Id(itemB)
  if itemIdA and itemIdB then
    if self:Item_Level(itemIdA) > self:Item_Level(itemIdB) then
      return itemB
    else
      return itemA
    end
  elseif itemIdA then
    return itemA
  elseif itemIdB then
    return itemB
  end 
end

--[[ Get list of items similar to passed item
TODO: COMPLETE (Version 1.0)
]]
function kLibItem:Item_GetSimilarItems(item)
  item = self:Item_Id(item)
  if not item then return end
  -- Get equipped items
  local equipped1, equipped2 = self:Item_EquippedBySlot(self:Item_EquipLocation(item))
  -- Get inventory items
  local inventory = self:Utility_FilterTable(self:Inventory_ItemList('inventory'),
    function(a)
      return self:Item_Equippable(a) and (self:Item_EquipLocation(a) == self:Item_EquipLocation(item))
    end
  )
  -- Get bank items (TODO: Version 1.0)
  -- Get transmog items (TODO: Version 1.0)
  return {
    equipped = {equipped1, equipped2}, 
    inventory = inventory,
  } 
end

--[[ Retrieve the slot name from the slot number
]]
function kLibItem:Item_GetSlotValue(value, valueType, returnType)
  if not value then return end
  valueType = valueType or 'slotNumber'
  returnType = returnType or 'slotName'
  for i,v in pairs(self.itemSlotData) do
    if v[valueType] == value then return v[returnType] end
  end
end

--[[ Get the icon texture for the item
]]
function kLibItem:Item_Icon(item)
  item = self:Item_Id(item)
  if not item then return end
  return select(10, GetItemInfo(item))
end

--[[ Get item Id from item link, id, name
]]
function kLibItem:Item_Id(item)
  if not item then return end
  local itemId
  -- Id
  if type(item) == 'number' then 
    if item == 0 then return nil end
    GetItemInfo(item) -- Cache item
    return item
  end
  -- Id (string type)
  if type(item) == 'string' and type(tonumber(item)) == 'number' then 
    if tonumber(item) == 0 then return end
    GetItemInfo(tonumber(item)) -- Cache item
    return tonumber(item)
  end
  -- Table
  if type(item) == 'table' then
    if item.itemId and type(tonumber(item.itemId)) == 'number' then
      GetItemInfo(tonumber(item.itemId)) -- Cache item
      return tonumber(item.itemId)
    end
    if item.id and type(tonumber(item.id)) == 'number' then
      GetItemInfo(tonumber(item.id)) -- Cache item
      return tonumber(item.id)
    end
  end
  -- Link
  local found, _, itemString = string.find(item, "^|c%x+|H(.+)|h%[.*%]")
  if itemString then 
    itemId = select(2, strsplit(':', itemString))
    GetItemInfo(tonumber(itemId)) -- Cache item
    return tonumber(itemId) 
  end
  -- Item string
  _, itemId = strsplit(":", item)
  if type(item) == 'string' and itemId then
    GetItemInfo(tonumber(itemId)) -- Cache item
    return tonumber(itemId)
  end
  -- Name 
  local _, itemLink = GetItemInfo(item)
  if itemLink then
    GetItemInfo(itemLink) -- Cache item 
    return self:Item_Id(itemLink)
  end
end

--[[ Get item level
]]
function kLibItem:Item_Level(item)
  item = self:Item_Id(item)
  if not item then return end
  return select(4, GetItemInfo(item))
end

--[[ Get item link
]]
function kLibItem:Item_Link(item)
  if item and type(item) == 'string' and string.find(item, "^|c%x+|H(.+)|h%[.*%]") then
    GetItemInfo(item) -- Cache
    return item -- Link already detected, return
  else
    item = self:Item_Id(item) 
  end
  if not item then return end
  return select(2, GetItemInfo(item))
end

--[[ Extract the link from a string
]]
function kLibItem:Item_LinkFromString(item, instance)
  if not item then return end
  instance = instance or 1
  local count = 0
  for word in string.gmatch(item, "(|c.-|r)") do 
    count = count + 1
    if count == instance then return word end
  end
end

--[[ Count the number of links to be extracted from passed string
]]
function kLibItem:Item_LinkFromStringCount(item)
  if not item then return end
  local count
  for word in string.gmatch(item, "(|c.-|r)") do
    count = (count or 0) + 1
  end
  return count
end

--[[ Get item name
]]
function kLibItem:Item_Name(item)
  item = self:Item_Id(item)
  if not item then return end
  return select(1, GetItemInfo(item))
end

--[[ Get item rarity
]]
function kLibItem:Item_Rarity(item)
  item = self:Item_Id(item)
  if not item then return end
  return select(3, GetItemInfo(item))
end

--- embedding and embed handling
local mixins = {
  'Item_ColorByRarity',
  'Item_Equippable',
  'Item_EquipLocation',
  'Item_EquippedBySlot',
  'Item_GetCurrentItem',
  'Item_GetIdFromLink',
  'Item_GetSimilarItems',
  'Item_GetSlotValue',
  'Item_Icon',
  'Item_Id',
  'Item_Level',
  'Item_Link',
  'Item_LinkFromString',
  'Item_LinkFromStringCount',
  'Item_Name',
  'Item_Rarity',
} 

-- Embeds kLibItem into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibItem:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibItem:OnEmbedEnable( target )
  if kLibItem.weakcommands[target] then
    for command, func in pairs( kLibItem.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibItem:OnEmbedDisable( target )
  if kLibItem.weakcommands[target] then
    for command, func in pairs( kLibItem.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibItem.embeds) do
  kLibItem:Embed(addon)
end
