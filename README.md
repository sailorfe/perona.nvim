<div align="center">

# perona.nvim

a base16 colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<img src="assets/grim.png" alt="perona" width="960">

</div>

+ <a href="#palette">palette</a>
+ <a href="#installation">installation</a>
+ <a href="extras">extras</a>

<img src="assets/921-crop.jpeg" align="right" width="240px" alt="chapter 921">

<img src="assets/658-crop.jpeg" align="right" width="480px" alt="chapter 658">

<a name="palette"></a>
## palette

### base16

for vim interface and syntax

| shades    | accents   |
| --------- | --------- |
| `#191017` | `#d32246` |
| `#261822` | `#b374be` |
| `#331f2d` | `#5cb1d6` |
| `#84717f` | `#d65c8d` |
| `#675161` | `#eb8490` |
| `#f8d3e7` | `#da95d6` |
| `#fbeff5` | `#95bdda` |
| `#3c2a31` | `#f877b5` |

### ansi

for terminal compatibility

| ansi      | bright    |
| --------- | --------- |
| `#261822` | `#331f2d` |
| `#b31a3b` | `#d32246` |
| `#b374be` | `#da95d5` |
| `#e65667` | `#eb8490` |
| `#5cb1d6` | `#95bdda` |
| `#b54073` | `#d65c8d` |
| `#e2509b` | `#f877b5` |

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
