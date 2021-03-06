local L = WeakAuras.L

local texture_types = WeakAurasStopMotion.texture_types;
local texture_data = WeakAurasStopMotion.texture_data;
local animation_types = WeakAurasStopMotion.animation_types;
local setTile = WeakAuras.setTile;

local function setTextureFunc(textureWidget, texturePath, textureName)
  local data = texture_data[texturePath];
  textureWidget.frameNr = 0;
  if (data) then
      if (data.rows and data.columns) then
        -- Texture Atlas
        textureWidget:SetTexture(texturePath, textureName);

        setTile(textureWidget, data.count, data.rows, data.columns);

        textureWidget:SetOnUpdate(function()
          textureWidget.frameNr = textureWidget.frameNr + 1;
          if (textureWidget.frameNr == data.count) then
            textureWidget.frameNr = 1;
          end
          setTile(textureWidget, textureWidget.frameNr, data.rows, data.columns);
        end);
      else
        -- Numbered Textures
        local texture = texturePath .. format("%03d", texture_data[texturePath].count)
        textureWidget:SetTexture(texture, textureName)
        textureWidget:SetTexCoord(0, 1, 0, 1);

        textureWidget:SetOnUpdate(function()
          textureWidget.frameNr = textureWidget.frameNr + 1;
          if (textureWidget.frameNr == data.count) then
            textureWidget.frameNr = 1;
          end
          local texture = texturePath .. format("%03d", textureWidget.frameNr)
          textureWidget:SetTexture(texture, textureName);
        end);
      end
  else
    local texture = texturePath .. format("%03d", 1)
    textureWidget:SetTexture(texture, textureName);
  end
end

local function createOptions(id, data)
    local options = {
        foregroundTexture = {
            type = "input",
            name = L["Texture"],
            order = 0,
        },
        backgroundTexture = {
            type = "input",
            name = L["Background Texture"],
            order = 5,
            disabled = function() return data.sameTexture or data.hideBackground  end,
            get = function() return data.sameTexture and data.foregroundTexture or data.backgroundTexture; end,
        },
        chooseForegroundTexture = {
            type = "execute",
            name = L["Choose"],
            order = 12,
            func = function()
                WeakAuras.OpenTexturePick(data, "foregroundTexture", texture_types, setTextureFunc);
            end
        },
        sameTexture = {
            type = "toggle",
            name = L["Same"],
            width = "half",
            order = 15,
            disabled = function() return data.hideBackground; end
        },
        chooseBackgroundTexture = {
            type = "execute",
            name = L["Choose"],
            width = "half",
            order = 17,
            func = function()
                WeakAuras.OpenTexturePick(data, "backgroundTexture", texture_types, setTextureFunc);
            end,
            disabled = function() return data.sameTexture or data.hideBackground; end
        },
        desaturateForeground = {
            type = "toggle",
            name = L["Desaturate"],
            order = 17.5,
        },
        desaturateBackground = {
            type = "toggle",
            name = L["Desaturate"],
            order = 17.6,
            width = "half",
            disabled = function() return data.hideBackground; end
        },
        hideBackground = {
          type = "toggle",
          name = L["Hide"],
          order = 17.65,
          width = "half",
        },
        -- Foreground options for custom textures
        customForegroundHeader = {
            type = "header",
            name = L["Custom Foreground"],
            order = 17.70,
            hidden = function() return texture_data[data.foregroundTexture] end
        },
        customForegroundRows = {
            type = "range",
            name = L["Rows"],
            min = 1,
            max = 64,
            order = 17.71,
            hidden = function() return texture_data[data.foregroundTexture] end
        },
        customForegroundColumns = {
            type = "range",
            name = L["Columns"],
            min = 1,
            max = 64,
            order = 17.72,
            hidden = function() return texture_data[data.foregroundTexture] end
        },
        customForegroundFrames = {
            type = "range",
            name = L["Frame Count"],
            min = 0,
            max = 4096,
            --bigStep = 0.01,
            order = 17.73,
            hidden = function() return texture_data[data.foregroundTexture] end
        },
        customForegroundSpace = {
            type = "execute",
            name = "",
            order = 17.74,
            image = function() return "", 0, 0 end,
            hidden = function() return texture_data[data.foregroundTexture] end
        },
        -- Background options for custom textures
        customBackgroundHeader = {
            type = "header",
            name = L["Custom Background"],
            order = 18.00,
            hidden = function() return data.sameTexture or texture_data[data.backgroundTexture]
                                       or data.hideBackground end
        },
        customBackgroundRows = {
            type = "range",
            name = L["Rows"],
            min = 1,
            max = 64,
            order = 18.01,
            hidden = function() return data.sameTexture or texture_data[data.backgroundTexture]
                                       or data.hideBackground end
        },
        customBackgroundColumns = {
            type = "range",
            name = L["Columns"],
            min = 1,
            max = 64,
            order = 18.02,
            hidden = function() return data.sameTexture or texture_data[data.backgroundTexture]
                                       or data.hideBackground end
        },
        customBackgroundFrames = {
            type = "range",
            name = L["Frame Count"],
            min = 0,
            max = 4096,
            step = 1,
            order = 18.03,
            hidden = function() return data.sameTexture or texture_data[data.backgroundTexture]
                                       or data.hideBackground end
        },
        customBackgroundSpace = {
            type = "execute",
            name = "",
            order = 18.04,
            image = function() return "", 0, 0 end,
            hidden = function() return data.sameTexture or texture_data[data.backgroundTexture]
                                       or data.hideBackground end
        },
        blendMode = {
            type = "select",
            name = L["Blend Mode"],
            order = 20,
            values = WeakAuras.blend_types
        },
        animationType = {
            type = "select",
            name = L["Animation Mode"],
            order = 21,
            values = animation_types
        },
        startPercent = {
            type = "range",
            name = L["Animation Start"],
            min = 0,
            max = 1,
            --bigStep = 0.01,
            order = 22,
            isPercent = true
        },
        endPercent = {
            type = "range",
            name = L["Animation End"],
            min = 0,
            max = 1,
            --bigStep  = 0.01,
            order = 23,
            isPercent = true
        },
        frameRate = {
           type = "range",
           name = L["Frame Rate"],
           min = 3,
           max = 120,
           step = 1,
           bigStep = 3,
           order = 24,
           disabled = function() return data.animationType == "progress" end;
        },
        backgroundPercent = {
            type = "range",
            name = L["Background"],
            min = 0,
            max = 1,
            order = 25,
            isPercent = true,
            disabled = function() return data.hideBackground; end
        },
        foregroundColor = {
            type = "color",
            name = L["Foreground Color"],
            hasAlpha = true,
            order = 30
        },
        backgroundColor = {
            type = "color",
            name = L["Background Color"],
            hasAlpha = true,
            order = 32,
            disabled = function() return data.hideBackground; end
        },
        inverse = {
            type = "toggle",
            name = L["Inverse"],
            order = 33
        },
        space3 = {
            type = "execute",
            name = "",
            order = 36,
            image = function() return "", 0, 0 end,
        },
    };
    options = WeakAuras.AddPositionOptions(options, id, data);

    return options;
end

local function createThumbnail(parent, fullCreate)
    local borderframe = CreateFrame("FRAME", nil, parent);
    borderframe:SetWidth(32);
    borderframe:SetHeight(32);

    local border = borderframe:CreateTexture(nil, "OVERLAY");
    border:SetAllPoints(borderframe);
    border:SetTexture("Interface\\BUTTONS\\UI-Quickslot2.blp");
    border:SetTexCoord(0.2, 0.8, 0.2, 0.8);

    local texture = borderframe:CreateTexture();
    borderframe.texture = texture;
    texture:SetPoint("CENTER", borderframe, "CENTER");

    return borderframe;
end

local function modifyThumbnail(parent, region, data, fullModify, size)
    size = size or 30;
    local scale;
    if(data.height > data.width) then
        scale = size/data.height;
        region.texture:SetWidth(scale * data.width);
        region.texture:SetHeight(size);
    else
        scale = size/data.width;
        region.texture:SetWidth(size);
        region.texture:SetHeight(scale * data.height);
    end

    local frame = 1;

    local tdata = texture_data[data.foregroundTexture];
    if (tdata) then
      local lastFrame = tdata.count - 1;
      region.startFrame = floor( (data.startPercent or 0) * lastFrame) + 1;
      region.endFrame = floor( (data.endPercent or 1) * lastFrame) + 1;
      region.foregroundRows = tdata.rows;
      region.foregroundColumns = tdata.columns;
    else
      local lastFrame = data.customForegroundFrames - 1;
      region.startFrame = floor( (data.startPercent or 0) * lastFrame) + 1;
      region.endFrame = floor( (data.endPercent or 1) * lastFrame) + 1;
      region.foregroundRows = data.customForegroundRows;
      region.foregroundColumns = data.customForegroundColumns;
    end

    if (region.startFrame and region.endFrame) then
      frame = floor(region.startFrame + (region.endFrame - region.startFrame) * 0.75);
    end

    local texture = data.foregroundTexture or "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\Runes\\legionv";

    if (region.foregroundRows and region.foregroundColumns) then
      region.texture:SetTexture(texture);
      setTile(region.texture, frame, region.foregroundRows, region.foregroundColumns);

      region.SetValue = function(self, percent)
        local frame = floor(percent * (region.endFrame - region.startFrame) + region.startFrame);
        setTile(self.texture, frame, region.foregroundRows, region.foregroundColumns);
      end
    else
      region.texture:SetTexture(texture .. format("%03d", frame));
      region.texture:SetTexCoord(0, 1, 0, 1);

      region.SetValue = function(self, percent)
        local frame = floor(percent * (region.endFrame - region.startFrame) + region.startFrame);
        self.texture:SetTexture((data.foregroundTexture) .. format("%03d", frame));
      end
    end

    region.texture:SetVertexColor(data.foregroundColor[1], data.foregroundColor[2], data.foregroundColor[3], data.foregroundColor[4]);
    region.texture:SetBlendMode(data.blendMode);

    region.elapsed = 0;
    region:SetScript("OnUpdate", function(self, elapsed)
        region.elapsed = region.elapsed + elapsed;
        if(region.elapsed > 4) then
            region.elapsed = region.elapsed - 4;
        end
        region:SetValue(region.elapsed / 4);
    end);
end

local function createIcon()
    local data = {
        height = 30,
        width = 30,
        foregroundTexture = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\Runes\\legionv",
        foregroundColor = {1, 1, 1, 1},
        blendMode = "ADD",
        rotate = false,
        rotation = 0,
        startPercent = 0,
        endPercent = 1,
        backgroundPercent = 1,
        animationType = "progress"
    };

    local thumbnail = createThumbnail(UIParent);
    modifyThumbnail(UIParent, thumbnail, data, nil, 75);

    thumbnail.elapsed = 0;
    thumbnail:SetScript("OnUpdate", function(self, elapsed)
        thumbnail.elapsed = thumbnail.elapsed + elapsed;
        if(thumbnail.elapsed > 2) then
            thumbnail.elapsed = thumbnail.elapsed - 2;
        end
        thumbnail:SetValue(thumbnail.elapsed / 2);
    end);

    return thumbnail;
end

local templates = {
  {
    title = L["Left Progress Arc"],
    data = {
      xOffset = -90,
      yOffset = -60,
      height = 256,
      foregroundTexture = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\Basic\\leftarc",
      width = 256,
    }
  },
  {
    title = L["Right Progress Arc"],
    data = {
      xOffset = 90,
      yOffset = -60,
      height = 256,
      foregroundTexture = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\Basic\\rightarc",
      width = 256,
    }
  },
}

WeakAuras.RegisterRegionOptions("stopmotion", createOptions, createIcon, L["Stop Motion"], createThumbnail, modifyThumbnail, L["Shows a stop motion textures"], templates);
