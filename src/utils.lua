local utils = {}

function utils.setHex(hex)
	hex = hex:gsub("#", "")
	love.graphics.setColor(
		tonumber("0x" .. hex:sub(1, 2)) / 255,
		tonumber("0x" .. hex:sub(3, 4)) / 255,
		tonumber("0x" .. hex:sub(5, 6)) / 255
	)
end

return utils
