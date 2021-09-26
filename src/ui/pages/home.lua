local lifecycle = require('ui.lifecycle')
local home = lifecycle.create({})

function home:draw()
  local x = 200
  local y = 300
  love.graphics.print('Play', x, y)
  love.graphics.print('Scores', x, y + 40)
  love.graphics.print('Settings', x, y + 80)
end

return home
