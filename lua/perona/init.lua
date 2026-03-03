-- init.lua
local GPP = {}
GPP.name = "perona"
function GPP.inthenameofthemoon()
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = GPP.name
	vim.o.background = "dark"

	local theme = require("perona.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end

	local palette = require("perona.horo").get()
	vim.g.terminal_color_0 = palette.base
	vim.g.terminal_color_8 = palette.overlay
	vim.g.terminal_color_1 = palette.mihawk
	vim.g.terminal_color_9 = palette.dracule
	vim.g.terminal_color_2 = palette.garden
	vim.g.terminal_color_10 = palette.wonder
	vim.g.terminal_color_3 = palette.sangria
	vim.g.terminal_color_11 = palette.fruit
	vim.g.terminal_color_4 = palette.kumashi
	vim.g.terminal_color_12 = palette.beary
	vim.g.terminal_color_5 = palette.zombie
	vim.g.terminal_color_13 = palette.surprise
	vim.g.terminal_color_6 = palette.hollow
	vim.g.terminal_color_14 = palette.negative
end
return GPP
