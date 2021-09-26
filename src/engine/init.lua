local theme = require('theme')
local orbs = require('engine.orbs')
local physics = require('engine.physics')

local engine = {
  position = physics.Vector:new({x=0, y=0});
  velocity = physics.Vector:new({x=2, y=0});
}

function engine:load()
  self.position.x = love.graphics.getWidth() / 2
  self.position.y = love.graphics.getHeight() / 2
  print(self.position.x, self.position.y)
end

function engine:update(dt)
  self.position.x = self.position.x + self.velocity.x
  self.position.y = self.position.y + self.velocity.y
end

function engine:draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)
  orbs.draw(theme.colors.green, self.position.x, self.position.y, 10)
 end

return engine
