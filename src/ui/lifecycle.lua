local lifecycle = {}

function lifecycle.create(t)
  return setmetatable(t, {
    __index = {
      load = function() end,
      update = function() end,
      draw = function() end,
      unload = function() end,
    },
  })
end

return lifecycle
