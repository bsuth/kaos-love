local home = {}

function home:load() end

function home:update(dt) end

function home:draw()
  love.graphics.circle('fill', 0, 0, 10)
end

return home
