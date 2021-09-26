local router = require('ui.router')

local ui = {
  font = nil,
}

function ui:load()
  love.graphics.setFont(
    love.graphics.newFont('assets/fonts/FugazOne-Regular.ttf')
  )
  router:load()
end

function ui:update(dt)
  router:update(dt)
end

function ui:draw()
  router:draw()
end

return ui
