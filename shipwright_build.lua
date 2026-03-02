local script_path = debug.getinfo(1).source:sub(2)
local project_root = vim.fn.fnamemodify(script_path, ":p:h")
local theme_path = project_root .. "/lua/perona/theme.lua"
local output_path = project_root .. "/colors/perona.vim"

local shipwright = require("shipwright")
local lushwright = require("shipwright.transform.lush")
local overwrite = require("shipwright.transform.overwrite")
local append = require("shipwright.transform.append")

local theme_file = loadfile(theme_path)
if not theme_file then
	error("Could not find theme file at: " .. theme_path)
end
local colorscheme = theme_file()

local function make_vim_compatible(lines)
	local cleaned = {}
	for _, line in ipairs(lines) do
		if not line:match("[@%.]") then
			local scrubbed = line:gsub("blend=[^%s]+", "")
			table.insert(cleaned, scrubbed)
		end
	end
	return cleaned
end

shipwright.run(colorscheme, lushwright.to_vimscript, make_vim_compatible, {
	append,
	{
		"if has('termguicolors')",
		"  set termguicolors",
		"endif",
		'let g:colors_name="perona"',
		"set background=dark",
		"highlight! link htmlLink String",
		"highlight! link mkdLink String",
		"highlight! link mkdURL Identifier",
		"",
		"highlight SpellBad gui=undercurl guibg=NONE",
		"highlight Error guibg=NONE",
		"highlight! link Title Normal",
		"highlight mkdHeading guibg=NONE gui=bold",
	},
}, { overwrite, output_path })

local f = io.open(output_path, "r")
if f then
	local content = f:read("*all")
	f:close()
	print("Build Finished.")
	print("Output path: " .. output_path)
	print("File size on disk: " .. #content .. " bytes")
else
	print("ERROR: File was never created at " .. output_path)
end
