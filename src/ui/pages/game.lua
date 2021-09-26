local engine = require('engine')
local game = {}

function game:load()
  engine:load()
end

function game:update(dt)
  engine:update(dt)
end

function game:draw()
  engine:draw()
end

return game
