package.path = package.path .. ';./src/?.lua'
local theme = require('theme')
local utils = require('utils')

function love.load() end

function love.update(dt) end

function love.draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)
end
