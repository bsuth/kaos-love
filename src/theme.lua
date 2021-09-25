local utils = require("utils")
local theme = {}

-- -----------------------------------------------------------------------------
-- Colors
-- -----------------------------------------------------------------------------

theme.colors = {
	cyan = "#4bb6d6",
	green = "#76e635",
	purple = "#7842f5",
	red = "#f55742",
}

theme.colors.setCyan = function()
	utils.setHex(theme.colors.cyan)
end
theme.colors.setGreen = function()
	utils.setHex(theme.colors.green)
end
theme.colors.setPurple = function()
	utils.setHex(theme.colors.purple)
end
theme.colors.setRed = function()
	utils.setHex(theme.colors.red)
end

return theme
