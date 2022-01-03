-- The current directory
local root = love.filesystem.getSource()

-- Path separator of current os
local pathSep = _G.package.config:sub(1, 1)

-- Make path cross platform, remove duplicate separators
local function pathify(path)
  return path:gsub('/+', pathSep)
end

-- https://www.lua.org/manual/5.1/manual.html#pdf-package.path
local function addPackagePath(dir)
  package.path = pathify(dir .. '/?.lua') .. ';' .. package.path
  package.path = pathify(dir .. '/?/init.lua') .. ';' .. package.path
end

-- https://www.lua.org/manual/5.1/manual.html#pdf-package.cpath
local function addCPackagePath(dir)
  package.cpath = pathify(dir .. '/?.so') .. ';' .. package.cpath
end

-- Local game files
addPackagePath(root .. '/src')

-- 3rd party libraries
addPackagePath(root .. '/3rdparty')

-- Luarocks dependencies are assumed to be installed to a local tree under
-- 'luarocks_modules' (ex. `luarocks --lua-version 5.1 --tree luarocks_modules`)
-- This adds the necessary luarocks path.
addPackagePath(root .. '/luarocks_modules/share/lua/5.1')
addCPackagePath(root .. '/luarocks_modules/lib/lua/5.1')

require('erde.loader')
require('main')
