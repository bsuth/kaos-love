local lifecycle = require('ui.lifecycle')
local button = lifecycle.create({})

function button:draw()
  love.graphics.circle('fill', 0, 0, 10)
end

return button