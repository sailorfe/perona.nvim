local GPP = {}
GPP.name = "perona"
function GPP.negativehollow(opts)
	-- vim.cmd("set t_Co=256")
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = GPP.name
	vim.o.background = "dark"
	vim.o.tgc = true

	local theme = require("perona.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end
return GPP
