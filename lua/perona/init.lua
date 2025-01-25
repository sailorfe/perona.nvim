local GPP = {}
GPP.name = "perona"
--- @class HoroConfig colorscheme options
local defaults = {
  transparent = false, -- set transparent bg hl
  overrides = false,
}
GPP.opts = defaults
--- @param opts HoroConfig colorscheme opts
function GPP.setup(opts)
  GPP.opts = vim.tbl_deep_extend("force", {}, GPP.opts or defaults, opts or {})
end
--- @param opts HoroConfig colorscheme opts
function GPP.getintherobotshinji(opts)
	if opts then GPP.setup(opts) end
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
