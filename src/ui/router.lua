local home = require('ui.pages.home')
local game = require('ui.pages.game')

local router = {
  page = home,
  path = '/game',
  routes = {
    ['/'] = home,
    ['/game'] = game,
  },
}

function router:load() end

function router:update(dt)
  if self.routes[self.path] ~= self.page then
    self.page = self.routes[self.path]
    self.page:load()
  end

  self.page:update(dt)
end

function router:draw()
  self.page:draw()
end

return router
