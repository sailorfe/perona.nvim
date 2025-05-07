local perona = {}

--- @class HoroConfig colorscheme options
local defaults = {
  transparent = false, -- set transparent bg hl
  overrides = false,
}
perona.opts = defaults

--- @param opts HoroConfig colorscheme opts
function perona.setup(opts)
	perona.opts = vim.tbl_deep_extend("force", {}, perona.opts or defaults, opts or {})
end

--- @param opts HoroConfig colorscheme opts
function perona.negativehollow(opts)
	if opts then perona.setup(opts) end
	-- vim.cmd("set t_Co=256")
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = "perona"
	vim.o.background = "dark"
	vim.o.tgc = true

	local theme = require("perona.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end
return perona
