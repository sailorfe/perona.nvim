local script_path = debug.getinfo(1).source:sub(2)
local root_dir = script_path:match("(.*)/scripts/.*") or "."
package.path = package.path .. ";" .. root_dir .. "/?.lua"

local colors = require("lua.perona.horo")
local palette = colors.get()

local function hex_to_rgb_raw(hex)
	local h = hex:gsub("#", "")
	return string.format("%d, %d, %d", tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16))
end

local json_parts = {}

for name, color in pairs(palette) do
	local hex_str = tostring(color)

	table.insert(json_parts, string.format('  "%s": "%s"', name, hex_str))

	table.insert(json_parts, string.format('  "%s-rgb": "%s"', name, hex_to_rgb_raw(hex_str)))

	table.insert(json_parts, string.format('  "%s-hsl": "%d, %d, %d"', name, color.h, color.s, color.l))
end

local json_str = "{\n" .. table.concat(json_parts, ",\n") .. "\n}"

local output_path = root_dir .. "/palette.json"
local f = io.open(output_path, "w")
if f then
	f:write(json_str)
	f:close()
	print("palette.json updated: Hex, RGB, and HSL (raw) are ready.")
end
