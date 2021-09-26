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

function Vector.__add(a, b)
    local res = Vector:new()
    res.x = a.x + b.x
    res.y = a.y + b.y
    return res
end

function Vector.__sub(a, b)
    local res = Vector:new()
    res.x = a.x - b.x
    res.y = a.y - b.y
    return res
end


physics.Vector = Vector

return physics