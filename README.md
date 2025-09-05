# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece* with support for many mini.nvim modules, gitsigns, lsp, lualine, render-markdown, and trouble (so far!). built with [lush](https://github.com/rktjmp/lush.nvim/).

<div align="center">
<img src="grim.png" alt="perona">
</div>

- <a href="#installation">installation</a>
- <a href="#extras">extras</a>
- <a href="#acknowledgments">acknowledgments</a>

this repository is mirrored to [github](https://github.com/sailorfe/perona.nvim) from [codeberg](https://codeberg.org/sailorfe/perona.nvim).

<a name="installation"></a>
## installation

### lua

with lazy:

```lua
return {
    "sailorfe/perona.nvim",
    opts = {
        -- transparent = false,
        -- overrides = false,
    },
    init function()
        vim.cmd.colorscheme("perona")
    end,
}
```

### vimscript

the easiest method is probably just to run curl from your n/vim `colors` directory:

```sh
curl -LO https://codeberg.org/sailorfe/perona.nvim/raw/branch/vim/colors/perona.vim
```

then set colorscheme with one of the folowing:

- `init.lua`: `vim.cmd.colorscheme("perona")`
- `.vimrc`: `set colorscheme "perona"`
- the command  `:colorscheme perona`

<a name="extras"></a>
## extras

there is an `extras/` dir with ports for

- `alacritty`, `foot` and `wezterm`: what i alternate between in [my sway setup](https://codeberg.org/sailorfe/dots)
- `termux`: may lag behind a bit
- `tty`: plain bash colors for the console

`perona.json` is included to in case you want to port this theme to whatever emulator you use. if you do, please make pull request!

<a name="acknowledgments"></a>
## acknowledgments

- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for entire chunks of lua and weeb inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for dir structure
