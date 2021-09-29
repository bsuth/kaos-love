local theme = require('theme')
local utils = require('utils')
local physics = require('engine.physics')

local orbs = {}

-- -----------------------------------------------------------------------------
-- Orb
-- -----------------------------------------------------------------------------

local Orb = {}
Orb.__index = Orb

function Orb:new(o)
    o = o or {}
    setmetatable(o, self)
    o.p = o.p or physics.Vector:new() 
    o.v = o.v or phsics.Vector:new()
    o.r = o.r or 10
    o.color = o.color or theme.colors.white
    return o
end

function Orb:update()
  self.p = self.p + self.v
end

function Orb:draw()
  utils.setHex(self.color)
  love.graphics.circle('fill', self.p.x, self.p.y, self.r)
end

orbs.Orb = Orb

return orbs
