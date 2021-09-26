local orbs = require('engine.orbs')
local theme = require('theme')

local engine = {
  x = 0,
  y = 0,
  vX = 2,
}

function engine:load()
  self.x = love.graphics.getWidth() / 2
  self.y = love.graphics.getHeight() / 2
  self.vX = 2
end

function engine:update(dt)
  self.x = self.x + 10 * dt
end

function engine:draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)
  orbs.draw(theme.colors.green, self.x, self.y, 10)
end

return engine
