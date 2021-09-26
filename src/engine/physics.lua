local physics = {}

-- -----------------------------------------------------------------------------
-- Vector
-- -----------------------------------------------------------------------------

local Vector = {}

function Vector:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.x = o.x or 0
    o.y = o.y or 0
    return o
end

function Vector.__add(a, b)
    return Vector:new({
        x = a.x + b.x,
        y = a.y + b.y
    })
end

function Vector.__sub(a, b)
    return Vector:new({
        x = a.x - b.x,
        y = a.y - b.y
    })
end

function Vector:__unm()
    return Vector:new({
        x = -self.x,
        y = -self.y
    })
end

physics.Vector = Vector

return physics