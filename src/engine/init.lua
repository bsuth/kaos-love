local theme = require('theme')
local orbs = require('engine.orbs')
local physics = require('engine.physics')

local engine = {
  width = 0,
  height = 0,
  orb = orbs.Orb:new({
    p = physics.Vector:new(),
    v = physics.Vector:new({x=-5, y=0}),
    color = theme.colors.cyan,
  })
}

function engine:load()
  self.width = love.graphics.getWidth();
  self.height = love.graphics.getHeight();
  self.orb.p = physics.Vector:new({ x = self.width / 2, y = self.height / 2 })
end

function engine:update(dt)
  if self.orb.p.x < 0 or self.width < self.orb.p.x then
    self.orb.v = -self.orb.v
  end
  self.orb:update()
end

function engine:draw()
  self.orb:draw()
 end

return engine
