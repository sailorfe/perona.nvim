<div align="center">

# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/) in 24- and 16-bit flavors for portability.

you're viewing **perona 16**, simplified and poppier. [switch branches](https://codeberg.org/spica/perona.nvim/src/branch/24-bit) to see perona 24.

<img src="assets/grim-16.png" alt="16-bit" width="960">

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
- base0a: `#5cb1d6`
- base0b: `#b54071`
- base0c: `#d86e7a`
- base0d: `#da95d6`
- base0e: `#95bdda`
- base0f: `#d65c8f`

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

<a name="extras"></a>
## extras

ports for [foot](https://codeberg.org/dnkl/foot) and [iSH](https://github.com/ish-app/ish) can be found under <a href="https://codeberg.org/spica/perona.nvim/src/branch/dev/extras">extras</a>.

