local assetLoader = {
  fonts = {},
}

function assetLoader.getFontId(fontFile, size)
  return fontFile .. ':' .. tostring(size)
end

function assetLoader:getFont(fontFile, size)
  return self.fonts[self.getFontId(fontFile, size)]
    or love.graphics.newFont('assets/fonts/' .. fontFile, 24)
end

function assetLoader:setFont(fontFile, size)
  love.graphics.setFont(self:getFont(fontFile, size))
end

return assetLoader
