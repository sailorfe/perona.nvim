local lush = require("lush")
local hsl = lush.hsl

local HORO = {}
---@return table
function HORO.get()
	return {
		["base"] = hsl(324, 24, 12),
		["surface"] = hsl(324, 24, 16),
		["overlay"] = hsl(324, 24, 20),
		["muted"] = hsl(324, 12, 48),
		["faint"] = hsl(324, 20, 60),
		["text"] = hsl(324, 48, 88),
		["light"] = hsl(324, 96, 96),
		["mihawk"] = hsl(348, 60, 54),
		["garden"] = hsl(288, 60, 72),
		["sangria"] = hsl(360, 60, 72),
		["kumashi"] = hsl(216, 60, 72),
		["zombie"] = hsl(336, 60, 60),
		["hollow"] = hsl(324, 70, 72),
		["low"] = hsl(324, 20, 16),
		["med"] = hsl(324, 18, 24),
		["high"] = hsl(324, 16, 32),
		["dracule"] = hsl(348, 90, 70),
		["wonder"] = hsl(288, 80, 80),
		["fruit"] = hsl(360, 80, 80),
		["beary"] = hsl(216, 80, 80),
		["surprise"] = hsl(336, 90, 70),
		["negative"] = hsl(324, 90, 84),
	}
end
return HORO
