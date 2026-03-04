#!/usr/bin/env bash
set -euo pipefail
shopt -s extglob
THEME="perona"

case "${1:-}" in
# == vim build ==
vim)
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
local colorscheme = require("perona.lush")
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
  echo "committing to vim branch via worktree..."
  WORKTREE=$(mktemp -d)
  if ! git rev-parse --verify vim >/dev/null 2>&1; then
    # first time: create orphan branch with empty root commit so it has a
    # proper base — future builds will fast-forward cleanly with no conflicts
    git worktree add --orphan -b vim "$WORKTREE"
    git -C "$WORKTREE" commit --allow-empty -m "chore(vim): init distribution branch"
  else
    git worktree add "$WORKTREE" vim
  fi
  # wipe everything in the worktree except .git so the branch stays clean
  git -C "$WORKTREE" rm -rf . --quiet 2>/dev/null || true
  mkdir -p "$WORKTREE/colors"
  cp "colors/$THEME.vim" "$WORKTREE/colors/$THEME.vim"
  git -C "$WORKTREE" add "colors/$THEME.vim"
  if ! git -C "$WORKTREE" diff --cached --quiet; then
    git -C "$WORKTREE" commit -m "build(vim): update distribution $(date -Im)"
    echo "done. committed to vim branch."
  else
    echo "no changes to commit."
  fi
  git worktree remove "$WORKTREE"
  trap - EXIT
  rm "colors/$THEME.vim"
  echo "removed colors/$THEME.vim from main working tree"
  ;;

# == lua build ==
lua)
  echo "building $THEME lua..."
  cat <<-'x0' >./shipwright_build.lua
	local shipwright = require("shipwright")
	local lushwright = require("shipwright.transform.lush")
	local overwrite = require("shipwright.transform.overwrite")
	local colorscheme = require("perona.lush")
	shipwright.run(colorscheme, lushwright.to_lua, {overwrite, "lua/perona/theme.lua.tmp"})
	x0
  nvim --headless +Shipwright +qa
  cat <<-x0 >"./lua/$THEME/theme.lua"
	P = {}
	---@return table
	P.build = function()
	  local theme = {
	x0
  cat "./lua/$THEME/theme.lua.tmp" >>"./lua/$THEME/theme.lua"
  cat <<-x0 >>"./lua/$THEME/theme.lua"
	  }
	  return theme
	end
	return P
	x0
  rm "./lua/$THEME/theme.lua.tmp" ./shipwright_build.lua
  echo "$THEME lua build complete"
  ;;

*)
  echo "usage: ./build.sh (vim|lua)"
  ;;
esac
