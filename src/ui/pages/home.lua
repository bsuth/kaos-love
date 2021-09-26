local lifecycle = require('ui.lifecycle')
local home = lifecycle.create({})

function home:draw()
  love.graphics.print('KaOs', 400, 300)
end

return home
