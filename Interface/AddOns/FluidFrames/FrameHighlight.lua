----------------------------
-- Frame Stack Code
----------------------------

FluidFrames.FrameStack = {}
FluidFrames.ExcludedFrames = {
    WorldFrame = true,
    UIParent = true,
    
    MainMenuBarArtFrame = true,
    MainMenuBarOverlayFrame = true,
    TargetFrameTextureFrame = true,
    LFGWizardFrame = true,
    FriendsListFrame = true,
}
for i=1, NUM_CONTAINER_FRAMES do
    FluidFrames.ExcludedFrames["ContainerFrame"..i] = true
end

function FluidFrames.Is_Allowed(testframe)

  if not testframe then
    return false
  end

--Check 2 checks for excluded frames
  local frameName = testframe:GetName() or "noFrameName"
  if FluidFrames.ExcludedFrames[frameName] then
    return false
  end

--Check 3 checks if testframe is a child of FluidFrames.DragFrame
    while (testframe) do
        if (testframe == FluidFrames.DragFrame) then
            return false
        end
    testframe = testframe:GetParent()
    end
  return true
end

function FluidFrames.IsUnique_and_Allowed(stack,testframe)

--Check 1 checks for duplicates
    for i, frame in ipairs(stack) do
	    if frame == testframe then
	      return false
	    end
    end

--Do the other two checks in a separate function
  local allowed = FluidFrames.Is_Allowed(testframe)

    return allowed
end

function FluidFrames.BuildCursorFrameStack()

    local stack = FluidFrames.FrameStack
    
    --Empty Stack
    local stackSize = #stack
    while (stackSize > 0) do
        tremove(stack, #stack)
        stackSize = #stack
    end
    
--Build Stack Part 1:  
--   This iterates though all frames, adding them to the stack IF the frame is underneath the mouse
    local frame = EnumerateFrames()
    while (frame) do
      if (frame:IsVisible() and MouseIsOver(frame) and FluidFrames.Is_Allowed(frame)) then
        tinsert(stack, frame)
        end
        frame = EnumerateFrames(frame)
    end
    
--Build Stack Part 2:
-- gets the frame underneath the mouse with the method GetMouseFocus()
    frame = GetMouseFocus()
    if FluidFrames.IsUnique_and_Allowed(stack,frame) then
    tinsert(stack, frame)
  end 
  
--Build Stack Part 3:
-- Iterate through all the parents of the found frames...
  local tempstack = stack
    for i, frame in ipairs(tempstack) do
    local parent = frame:GetParent()
    while (parent) do
      if (frame:IsVisible() and MouseIsOver(parent)
      and FluidFrames.IsUnique_and_Allowed(stack,parent)) then
          tinsert(stack, parent)
      end
      parent = parent:GetParent()
    end
    end
end


function FluidFrames.GetNextStackFrame(frame, showAll)
    local stack = FluidFrames.FrameStack
    
    local returnNext
    
    if (not frame) then
        if (#stack > 0) then
            returnNext = true
        else
            return
        end
    end
    
    for i, sFrame in ipairs(stack) do
        if (showAll or sFrame:GetName()) then
            if (returnNext) then
                return sFrame
            elseif (frame == sFrame) then
                returnNext = true
            end
        end
    end
end


function FluidFrames.GetPreviousStackFrame(frame)
    local stack = FluidFrames.FrameStack
    
    if (not frame) then
        if (#stack > 0) then
            return stack[#stack]
        else
            return
        end
    end
    
    local prevFrame
    for i, sFrame in ipairs(stack) do
        if (frame == sFrame) then
            return prevFrame
        end
        prevFrame = sFrame
    end
end

----------------------------
-- Frame Highlight
----------------------------

function FluidFrames.HighlightMouseFrame(showAll)
    
    local dragFrame = FluidFrames.DragFrame
    
    if (dragFrame.isResizing) then
        dragFrame:StopMovingOrSizing()
        dragFrame.isResizing = nil
    end
    
    FluidFrames.BuildCursorFrameStack()
    
    local newFrame
    if (not dragFrame:IsVisible()) then
        if (IsShiftKeyDown()) then
            newFrame = FluidFrames.GetPreviousStackFrame()
        else
            newFrame = FluidFrames.GetNextStackFrame()
        end
    else
        if (#FluidFrames.FrameStack > 0) then
            if (IsShiftKeyDown()) then
                newFrame = FluidFrames.GetPreviousStackFrame(dragFrame.frame)
            else
                newFrame = FluidFrames.GetNextStackFrame(dragFrame.frame)
            end
            if (not newFrame) then
                dragFrame.frame = nil
                dragFrame:Hide()
                return
            end
        end
    end
    
    if (not newFrame) then
        FluidFrames.Print(FLUIDFRAMES_NO_MOVABLE_FRAMES)
        dragFrame.frame = nil
        dragFrame:Hide()
        return
    end

    
    local parent = newFrame:GetParent()
    FluidFrames.Print(format(FLUIDFRAMES_HIGHLIGHT, FluidFrames.OrNil(newFrame:GetName()), FluidFrames.OrNil(parent and parent:GetName())))
    
    dragFrame:SetWidth(newFrame:GetWidth())
    dragFrame:SetHeight(newFrame:GetHeight())
    local scale = newFrame:GetEffectiveScale()/UIParent:GetEffectiveScale()
    dragFrame:SetScale(scale)
    local left = newFrame:GetLeft()
    local bottom = newFrame:GetBottom()
    dragFrame:ClearAllPoints()
    dragFrame:SetPoint("BOTTOMLEFT", left, bottom)
    
    newFrame:SetMovable(1)
    
    --[[
    if (parent == UIParent or parent == nil) then
        newFrame:SetUserPlaced(nil)
        newFrame:ClearAllPoints()
        newFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, bottom)
        newFrame:SetUserPlaced(1)
    end
    ]]--    
    
    dragFrame.frame = newFrame
    dragFrame:Show()
end