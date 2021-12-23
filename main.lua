package.cpath = package.cpath .. ';./luarocks_modules/lib/lua/5.1/?.so'
package.path = table.concat({
  './src/?.lua',
  './src/?/init.lua',
  './luarocks_modules/share/lua/5.1/?.lua',
  './luarocks_modules/share/lua/5.1/?.lua',
  package.path,
}, ';')

require('erde.loader')
require('main')
