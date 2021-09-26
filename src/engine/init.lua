local theme = require('theme')
local orbs = require('engine.orbs')
local physics = require('engine.physics')

local engine = {
  position = physics.Position:new(0, 0)
}

function engine:load()
  self.position.x = love.graphics.getWidth() / 2
  self.position.y = love.graphics.getHeight() / 2
  print(self.position.x, self.position.y)
end

function engine:update(dt)
end

function engine:draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)
  orbs.draw(theme.colors.green, self.position.x, self.position.y, 10)
 end

return engine
