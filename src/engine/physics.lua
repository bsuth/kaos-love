local physics = {}

-- -----------------------------------------------------------------------------
-- Vector
-- -----------------------------------------------------------------------------

local Vector = {}

function Vector:new(o)
    local o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.x = o.x or 0
    o.y = o.y or 0
    return o
end

physics.Vector = Vector

return physics