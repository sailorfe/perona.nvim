local miau = require("lua.perona.horo")
local palette = miau.get()

local hex_palette = {}

for name, color in pairs(palette) do
	hex_palette[name] = tostring(color.hex)
end

local json_parts = {}
for k, v in pairs(hex_palette) do
	table.insert(json_parts, string.format('  "%s": "%s"', k, v))
end
local json_str = "{\n" .. table.concat(json_parts, ",\n") .. "\n}"

local f = io.open("palette.json", "w")
if f then
	f:write(json_str)
	f:close()
	print("palette.json created with " .. #json_parts .. " colors!")
end
