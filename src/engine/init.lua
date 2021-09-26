local theme = require('theme')
local orbs = require('engine.orbs')
local physics = require('engine.physics')

local engine = {
  width = 0,
  height = 0,
  position = physics.Vector:new(),
  velocity = physics.Vector:new({x=-5, y=0}),
}

function engine:load()
  self.width = love.graphics.getWidth();
  self.height = love.graphics.getHeight();
  self.position = physics.Vector:new({ x = self.width / 2, y = self.height / 2 })
end

function engine:update(dt)
  if self.position.x < 0 or self.width < self.position.x then
    self.velocity = -self.velocity
  end
  self.position = self.position + self.velocity
end

function engine:draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)
  orbs.draw(theme.colors.green, self.position.x, self.position.y, 10)
 end

return engine
