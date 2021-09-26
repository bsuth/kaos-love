local assetLoader = require('ui.assetLoader')
local router = require('ui.router')
local ui = {}

function ui:load()
  assetLoader:setFont('FugazOne-Regular.ttf', 24)
  router:load()
end

function ui:update(dt)
  router:update(dt)
end

function ui:draw()
  router:draw()
end

return ui
