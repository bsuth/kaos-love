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

function Vector:magnitude()
    return self * self
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

--[[--
number * Vector --> scalar multiplication
Vector * Vector --> dot product
]]
function Vector.__mul(a, b)
    if type(b) == "number" then a, b = b, a end
    if type(a) == "number" and getmetatable(b) == Vector then
        return Vector:new({
            x = a * b.x,
            y = a * b.y
        })
    elseif getmetatable(a) == Vector and getmetatable(b) == Vector then
        return a.x * b.x + a.y * b.y
    else 
        error("A Vector can only be multiplied by a number or another Vector.")
    end
end

function Vector:__unm()
    return Vector:new({
        x = -self.x,
        y = -self.y
    })
end

physics.Vector = Vector

return physics