--  [[
-- local lushwright = require("shipwright.transform.lush")
--
-- run(require("lua.lush_theme.perona"),
--	lushwright.to_lua,
--	{patchwrite, "lua/perona/theme.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE"})
--  ]]

local colorscheme = require("lua.lush_theme.perona")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {append, {"set background=dark", "let g:colors_name=\"perona\""}},
  {overwrite, "colors/perona.vim"})
