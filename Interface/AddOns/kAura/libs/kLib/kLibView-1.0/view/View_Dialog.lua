local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

function kLibView:View_Dialog_Create(id, text, width, height, margin, color)
   id = id or 'Default'
   width = width or 300
   height = height or 150
   color = color or {r=0,g=0,b=0,a=0.8}
   local frameName = ('%s%s%s'):format(tostring(self), 'Dialog', id)
   
   local f = _G[frameName] or CreateFrame('Frame', frameName, UIParent)
   f.Close = f.Close or function() f:Hide() end
   f:SetWidth(width)
   f:SetHeight(height)
   f.margin = margin or 4
   local t = f.texture or f:CreateTexture(nil,'BACKGROUND')
   t:SetTexture(color.r, color.g, color.b, color.a)
   t:SetAllPoints(f)
   f.texture = t
   f:SetPoint('TOP',0,-100)
   
   local fontString = f.fontString or f:CreateFontString(('%s%s'):format(f:GetName(),'Text'))
   f.fontString = fontString
   fontString:SetPoint('BOTTOMRIGHT', -5, 35)
   fontString:SetPoint('TOPLEFT', 5, -5)
   fontString:SetFont('Fonts\\FRIZQT__.TTF', 14)
   fontString:SetJustifyV('TOP')
   fontString:SetText(('|cFF%s%s|r|n%s'):format(self:Color_Get(self.color.green, nil, nil, nil, 'hex'), tostring(self), text))
   f:Show()
   return f
end

function kLibView:View_DialogButton_Create(id, text, parent, onClick, height, color, hoverColor)
   id = id or 'Button'
   text = text or 'Yes'
   height = height or 30
   color = color or {r=1,g=1,b=1,a=0.5}   
   hoverColor = hoverColor or {r=0,g=0.7,b=0,a=1}
   parent.buttons = parent.buttons or {}
   local AddButtonFrame = function(id, parent)
      parent.buttons = parent.buttons or {}
      for i,v in pairs(parent.buttons) do
         if v.id == id then return v.frame end
      end
      local f = CreateFrame('Frame', ('%sButton%s'):format(parent:GetName(),id), parent)   
      table.insert(parent.buttons, {id = id, frame = f})
      return f
   end
   local f = AddButtonFrame(id, parent)
   local t = f.texture or f:CreateTexture(nil,'BACKGROUND')   
   f.texture = t
   f:SetScript('OnMouseDown', function() onClick() end)
   f:SetScript('OnEnter', function(self) 
         self.texture:SetTexture(hoverColor.r,hoverColor.g,hoverColor.b,hoverColor.a)
   end)
   f:SetScript('OnLeave', function(self) self.texture:SetTexture(color.r,color.g,color.b,color.a) end)   
   
   t:SetTexture(color.r,color.g,color.b,color.a)
   t:SetAllPoints(f)
   
   f:SetHeight(height)
   
   local fontString = f.fontString or f:CreateFontString(('%s%s'):format(f:GetName(),'Text'))
   f.fontString = fontString
   fontString:SetPoint('CENTER', 0, 0)
   fontString:SetFont('Fonts\\FRIZQT__.TTF', 14, 'OUTLINE')
   fontString:SetText(text)
   
   -- Adjust buttons
   for i,v in pairs(parent.buttons) do
      v.frame:SetWidth((v.frame:GetParent():GetWidth()-(parent.margin*(1+#parent.buttons)))/#parent.buttons)
      v.frame:ClearAllPoints()
      if i==1 then
         v.frame:SetPoint('BOTTOMLEFT',parent.margin,parent.margin)
      else
         v.frame:SetPoint('LEFT', parent.buttons[i-1].frame, 'RIGHT', parent.margin, 0)
      end
   end   
   f:Show()   
end

function kLibView:View_DialogTextbox_Create(parent, text, highlightText)
   text = text or ''
   local textbox = parent.textbox or CreateFrame('EditBox', ('%s%s'):format(parent:GetName(),'TextBox'),parent, 'InputBoxTemplate')
   parent.textbox = textbox
   textbox:SetPoint('BOTTOM', 0,45)
   textbox:SetWidth(parent:GetWidth()-10)
   textbox:SetHeight(1)
   textbox:SetText(text)
   textbox:SetMultiLine(false)
   if highlightText then textbox:HighlightText() end
   textbox:SetCursorPosition(0)
   textbox:SetAutoFocus(false)
   textbox:SetTextInsets(0,0,0,0)
   textbox:ClearFocus()
   textbox:Show()
   
   local textboxT = textbox.texture or textbox:CreateTexture(nil,'BACKGROUND')
   textboxT:SetTexture(0, 0,0,0.3)
   textboxT:SetAllPoints(textbox)
   textbox.texture = textboxT
end

--- embedding and embed handling
local mixins = {
  'View_Dialog_Create',
  'View_DialogButton_Create',
  'View_DialogTextbox_Create',
} 

-- Add Mixins
kLibView:AddMixins(mixins)