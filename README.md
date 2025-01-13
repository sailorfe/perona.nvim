<div align="center">

# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/) in standard and base16 flavors.

<img src="assets/grim.png" alt="perona" width="960">

</div>

+ <a href="#palette">palette</a>
+ <a href="#installation">installation</a>
+ <a href="extras">extras</a>

<a name="palette"></a>
## palette

<img src="assets/921-crop.jpeg" align="right" width="240px" alt="chapter 921">

| ansi      | bright    |
| --------- | --------- |
| `#261722` | `#655363` |
| `#b31a3b` | `#d32246` |
| `#b374be` | `#da95d5` |
| `#e65667` | `#eb8490` |
| `#6ba3be` | `#9dbad2` |
| `#b54073` | `#d65c8d` |
| `#e2509b` | `#f877b5` |
| `#ab87a2` | `#dbb3c8` |

<img src="assets/658-crop.jpeg" align="right" width="360px" alt="chapter 658">

### base16

for vim highlights

| shades    | accents   |
| --------- | --------- |
| `#191017` | `#d32246` |
| `#261722` | `#b374be` |
| `#331f2d` | `#6ba3be` |
| `#846c81` | `#d65c8d` |
| `#ab87a2` | `#eb8490` |
| `#dbb3c8` | `#da95d6` |
| `#e5c8d7` | `#9dbad2` |
| `#3f2739` | `#f877b5` |

<a name="installation"></a>
## installation

### easy option: vimscript

copy your preferred flavor from `colors` to `.config/nvim/colors`.

`init.lua`:

```lua
vim.cmd("colorscheme perona") -- or vim.cmd("colorscheme perona-base16")
```

`init.vim` or `.vimrc`:

```vimscript
colorscheme perona " or colorscheme perona-base16
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

ports for [foot](https://codeberg.org/dnkl/foot), [iSH](https://github.com/ish-app/ish), [spotify_player](https://github.com/aome510/spotify-player), and tty can be found under <a href="https://codeberg.org/spica/perona.nvim/src/branch/dev/extras">extras</a>.
