package.path = package.path .. ';./src/?.lua'
local theme = require('theme')
local utils = require('utils')
local orbs = require('orbs')

function love.load()
  x = love.graphics.getWidth() / 2
  y = love.graphics.getHeight() / 2
  vX = 2
end

function love.update(dt)
  x = x + 10 * dt
end

function love.draw()
  theme.colors.setCyan()
  love.graphics.print('Hello World', 400, 300)

  orbs.draw(theme.colors.green, x, y, 10)
end
