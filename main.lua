package.path = package.path .. ';./src/?.lua;./src/?/init.lua'
local ui = require('ui')

function love.load()
  ui:load()
end

function love.update(dt)
  ui:update(dt)
end

function love.draw()
  ui:draw()
end
