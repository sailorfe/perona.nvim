#!/usr/bin/env bash
set -euo pipefail
shopt -s extglob

THEME="perona"

case "${1:-}" in
# == vim build ==
vim)
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  if [[ -n $(git status -s) ]]; then
    echo "working directory is dirty. commit/stash first."
    exit 1
  fi
  echo "building $THEME vimscript..."
  cat <<-'x0' >./shipwright_build.lua
local shipwright = require("shipwright")
local lushwright = require("shipwright.transform.lush")
local overwrite = require("shipwright.transform.overwrite")
local append = require("shipwright.transform.append")
local colorscheme = require("lush_theme.perona")
local function make_vim_compatible(lines)
    local cleaned = {}
    for _, line in ipairs(lines) do
        if not line:match("[@%.]") then
            local scrubbed = line:gsub(",?strikethrough", "")
            scrubbed = scrubbed:gsub("undercurl", "underline")
            scrubbed = scrubbed:gsub("%s*blend=%S+", "")
            scrubbed = scrubbed:gsub("%s*guifg=%s*$", "")
            scrubbed = scrubbed:gsub("%s*guibg=%s*$", "")
            scrubbed = scrubbed:gsub("%s*gui=%s*$", "")
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
}, { overwrite, "colors/perona.vim" })
	x0
  nvim --headless +Shipwright +qa
  rm ./shipwright_build.lua

  echo "switching to vim branch..."
  if ! git rev-parse --verify vim >/dev/null 2>&1; then
    git checkout --orphan vim
    git rm -rf . --quiet
  else
    git stash -u
    git checkout vim
    git ls-files | xargs rm -rf
    git clean -fd
    git stash pop
  fi
  mkdir -p colors
  git add "colors/$THEME.vim"
  if ! git diff --cached --quiet; then
    git commit -m "build(vim): update distribution $(date +%Y-%m-%d)"
  else
    echo "no changes to commit."
  fi
  git checkout "$CURRENT_BRANCH"
  echo "done. back on $CURRENT_BRANCH"
  ;;

# == lua build ==
lua)
  echo "building $THEME lua..."
  cat <<-'x0' >./shipwright_build.lua
	local shipwright = require("shipwright")
	local lushwright = require("shipwright.transform.lush")
	local overwrite = require("shipwright.transform.overwrite")
	local colorscheme = require("lush_theme.perona")
	shipwright.run(colorscheme, lushwright.to_lua, {overwrite, "lua/perona/theme.lua.tmp"})
	x0

  nvim --headless +Shipwright +qa

  cat <<-x0 >"./lua/$THEME/theme.lua"
	L = {}
	---@return table
	L.build = function()
	  local theme = {
	x0
  cat "./lua/$THEME/theme.lua.tmp" >>"./lua/$THEME/theme.lua"
  cat <<-x0 >>"./lua/$THEME/theme.lua"
	  }
	  return theme
	end
	return L
	x0

  rm "./lua/$THEME/theme.lua.tmp" ./shipwright_build.lua
  echo "$THEME lua build complete"
  ;;

*)
  echo "usage: ./build.sh (vim|lua)"
  ;;
esac
