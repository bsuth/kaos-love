local router = require('ui.router')
local ui = {}

function ui:load()
  router:load()
end

function ui:update(dt)
  router:update(dt)
end

function ui:draw()
  router:draw()
end

return ui
