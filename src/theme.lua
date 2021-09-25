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

function theme.colors.setCyan()
	utils.setHex(theme.colors.cyan)
end
function theme.colors.setGreen()
	utils.setHex(theme.colors.green)
end
function theme.colors.setPurple()
	utils.setHex(theme.colors.purple)
end
function theme.colors.setRed()
	utils.setHex(theme.colors.red)
end

return theme
