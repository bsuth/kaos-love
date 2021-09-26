local physics = {}

-- -----------------------------------------------------------------------------
-- Position
-- -----------------------------------------------------------------------------

physics.Position = {
    __index = Position,
    new = function(x, y)
        local position = {}
        setmetatable(position, Position)
        position.x = x
        position.y = y
        return position
    end,
}

return physics