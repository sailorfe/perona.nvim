<div align="center">

# perona.nvim

a base16 colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<img src="assets/grim.png" alt="perona" width="960">

</div>

+ <a href="#palette">palette</a>
+ <a href="#installation">installation</a>
+ <a href="extras">extras</a>

<a name="palette"></a>
## palette

- base00: `#191017`
- base01: `#261822`
- base02: `#331f2d`
- base03: `#84717f`
- base04: `#675161`
- base05: `#f8d3e7`
- base06: `#fbeff5`
- base07: `#3c2a31`
- base08: `#d32246`
- base09: `#b374be`
- base0A: `#5cb1d6`
- base0B: `#b54071`
- base0C: `#d86e7a`
- base0D: `#da95d6`
- base0E: `#95bdda`
- base0F: `#d65c8f`

<a name="installation"></a>
## installation

### easy option: vimscript

copy `colors/perona.vim` to `.config/nvim/colors`.

`init.lua`:

```lua
vim.cmd("colorscheme perona")
```

`init.vim` or `.vimrc`:

```vimscript
colorscheme perona
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
    { dir = '/absolute/path/to/perona.nvim', lazy = true },
    config = function()
        require 'lush'.setup()
    end,
}
```

add `vim.cmd("colorscheme perona")` to your `init.lua`, or `colorscheme perona` to `init.vim`.

<a name="extras"></a>
## extras

ports for [foot](https://codeberg.org/dnkl/foot) and [iSH](https://github.com/ish-app/ish) can be found under <a href="https://codeberg.org/spica/perona.nvim/src/branch/dev/extras">extras</a>.

