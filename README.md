<div align="center">

# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/) in 24- and 16-bit flavors for portability.

you're viewing **perona 16**, simplified and poppier. [switch branches](https://codeberg.org/spica/perona.nvim/src/branch/24-bit) to see perona 24.

<img src="assets/grim-16.png" alt="16-bit" width="960">

</div>

+ <a href="#palette">palette</a>
+ <a href="#installation">installation</a>
    + <a href="#lualine">lualine</a>
+ <a href="extras">extras</a>

<a name="palette"></a>
## palette

|         |                     |
| ------- | ------------------- |
| black   | `#10040d` `#261722` |
| red     | `#e11428` `#ef4354` |
| green   | `#d574dc` `#dd8de2` |
| yellow  | `#fc738e` `#fd91a7` |
| blue    | `#6896ca` `#95b5da` |
| magneta | `#c4315d` `#d0436e` |
| cyan    | `#f15fa8` `#f47cb8` |
| white   | `#896c72` `#fecdd7` |

<a name="installation"></a>
## installation

### easy option: vimscript

copy `colors/perona16.vim` to `.config/nvim/colors`.

`init.lua`:

```lua
vim.cmd("colorscheme perona16")
```

`init.vim` or `.vimrc`:

```vimscript
colorscheme perona16
```

### customizable option: lush
because i honestly don't know lua well enough, a lua-compatible, non-lush export won't be on the table for a while, so this requires you to have lush installed. first, clone this repository:

```bash
git clone https://codeberg.org/spica/perona.nvim.git
git checkout 16-bit
```

then configure lush.nvim for your package manager. if you use lazy:

```lua
return {
    "rktjmp/lushnvim",
    { dir = '/absolute/path/to/perona16.nvim', lazy = true },
    config = function()
        require 'lush'.setup()
    end,
}
```

add `vim.cmd("colorscheme perona16")` to your `init.lua`, or `colorscheme perona16` to `init.vim`.

<a name="lualine"></a>
### lualine

<div align="center">

</div>

clone this repo and copy `lua/lualine` and `lua/perona16` to your `.config/lua` directory.

```bash
git clone https://codeberg.org/spica/perona.nvim.git
cd perona.nvim
git checkout 16-bit
cp -r lua/perona lua/lualine .config/nvim/lua
```

then configure lualine to use `perona16`. with lazy:

```bash
local perona = require'lualine.themes.perona'

return {
    'nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup {
			options = {
                theme  = perona16
            },
		}
	end,
}
```
<a name="extras"></a>
## extras

ports for [foot](https://codeberg.org/dnkl/foot), [iSH](https://github.com/ish-app/ish), and [spotify_player](https://github.com/aome510/spotify-player) can be found under <a href="https://codeberg.org/spica/perona.nvim/src/branch/16-bit/extras">extras</a>.

