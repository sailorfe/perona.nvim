local GPP = {}
GPP.name = "perona"
--- @class PeronaConfig colorscheme options
local defaults = {
  transparent = false,
  overrides = false,
}
GPP.opts = defaults
--- @param opts PeronaConfig colorscheme opts
function GPP.setup(opts)
  GPP.opts = vim.tbl_deep_extend("force", {}, GPP.opts or defaults, opts or {})
end

--- @param opts PeronaConfig colorscheme opts
function GPP.negativehollow(opts)
  if opts then GPP.setup(opts) end
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
  vim.g.terminal_color_0 = tostring(palette.base.hex)
  vim.g.terminal_color_8 = tostring(palette.overlay.hex)
  vim.g.terminal_color_1 = tostring(palette.mihawk.hex)
  vim.g.terminal_color_9 = tostring(palette.dracule.hex)
  vim.g.terminal_color_2 = tostring(palette.garden.hex)
  vim.g.terminal_color_10 = tostring(palette.wonder.hex)
  vim.g.terminal_color_3 = tostring(palette.sangria.hex)
  vim.g.terminal_color_11 = tostring(palette.fruit.hex)
  vim.g.terminal_color_4 = tostring(palette.kumashi.hex)
  vim.g.terminal_color_12 = tostring(palette.beary.hex)
  vim.g.terminal_color_5 = tostring(palette.zombie.hex)
  vim.g.terminal_color_13 = tostring(palette.surprise.hex)
  vim.g.terminal_color_6 = tostring(palette.hollow.hex)
  vim.g.terminal_color_14 = tostring(palette.negative.hex)
end

return GPP
