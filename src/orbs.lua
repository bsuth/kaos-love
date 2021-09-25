local utils = require "utils"

local orbs = {}

function orbs.draw(color, x, y)
  utils.setHex(color)
  love.graphics.circle("fill", x, y, 10)
end

return orbs