package.path = package.path .. ';./src/?.lua'
local utils = require('utils')

function love.load() end

function love.update(dt) end

function love.draw()
  utils.setHex('#ff0000')
  love.graphics.print('Hello World', 400, 300)
end
