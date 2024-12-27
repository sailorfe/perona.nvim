<div align="center">

# perona.nvim
a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<img src="grim.png" alt="negative hollow!" width="960">
</div>

+ <a href="#palette">palette</a>
+ <a href="#installation">installation</a>
    + <a href="#lualine">lualine</a>
+ <a href="#extras">extras</a>

<a name="palette"></a>
## palette

+ base = `#0c030a` `#150a12` `#1c111a`
+ accent = `#62182f` `#932546` `#ab2b51`
+ text = `#fec8d5` `#a28189` `#644f54`
+ black = `#261722` `#372a34` `#160813`
+ red = `#ed1d2e` `#ff4c5b` `#cc0011`
+ green = `#d573d9` `#f893fb` `#c733cc`
+ yellow = `#ff5c74` `#ff8093` `#fb3754`
+ blue = `#8896c8` `#a9b7ea` `#687dca`
+ magenta = `#ff70b3` `#ff94c6` `#fd3592`
+ cyan = `#d5396b` `#fa5c8e` `#cc2459`
+ white = `#deafba` `#f2c0cb` `#fcd9e1`

<a name="installation"></a>
## installation

because i honestly don't know lua well enough, a lua-compatible, non-lush export won't be on the table for a while, so this requires you to have lush installed. first, clone this repository:

```bash
git clone https://codeberg.org/spica/perona.nvim.git
```

then configure lush.nvim for your package manager. if you use lazy:

```lua
return {
    "rktjmp/lushnvim",
    { dir = '/absolute/path/to/perona.nvim', lazy = true },
    config = function()
        require 'lush'.setup()
    end,
}
```

add `vim.cmd("colorscheme perona")` to your `init.lua`, or `colorscheme perona` to `init.vim`.

<a name="lualine"></a>
### lualine

```bash
git clone https://codeberg.org/spica/perona.nvim.git
cd perona.nvim
cp -r lua/perona lua/lualine .config/nvim/lua
```

then configure lualine to use `perona`. wih lazy, mine is:

```bash
local perona = require'lualine.themes.perona'

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = { theme  = perona },
		}
	end,
}
```

<a href="extras">extras</a>

ported in classic vimscript, foot, and wezterm, to be added soon.
