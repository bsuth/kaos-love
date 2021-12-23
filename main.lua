package.cpath = package.cpath .. ';./luarocks_modules/lib/lua/5.1/?.so'
package.path = table.concat({
  './src/?.lua',
  './src/?/init.lua',
  './luarocks_modules/share/lua/5.1/?.lua',
  './luarocks_modules/share/lua/5.1/?.lua',
  package.path,
}, ';')

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
