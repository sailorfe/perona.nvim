local script_path = debug.getinfo(1).source:sub(2)
local root_dir = script_path:match("(.*)/scripts/.*") or "."
package.path = package.path .. ";" .. root_dir .. "/?.lua"

local colors = require("lua.perona.horo")
local palette = colors.get()

local hex_palette = {}

for name, color in pairs(palette) do
  hex_palette[name] = tostring(color.hex)
end

local json_parts = {}
for k, v in pairs(hex_palette) do
  table.insert(json_parts, string.format('  "%s": "%s"', k, v))
end
local json_str = "{\n" .. table.concat(json_parts, ",\n") .. "\n}"

local output_path = root_dir .. "/palette.json"
local f = io.open(output_path, "w")
if f then
  f:write(json_str)
  f:close()
  print("palette.json created with " .. #json_parts .. " colors!")
end
