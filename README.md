<div align="center">

# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<img src="assets/grim.png" alt="perona">

</div>

- <a href="#palette">palette</a>
- <a href="#installation">installation</a>
- <a href="#extras">extras</a>

<a name="palette"></a>
## palette

<img src="assets/921-crop.jpeg" align="right" width="240px" alt="chapter 921">

<img src="assets/658-crop.jpeg" align="right" width="360px" alt="chapter 658">

| ansi      | bright    |
| --------- | --------- |
| `#3e1d31` | `#683152` |
| `#a90f30` | `#de3557` |
| `#a75fb4` | `#de91da` |
| `#e65667` | `#eb8490` |
| `#8dafe2` | `#b4cff8` |
| `#b54067` | `#d65c85` |
| `#f269ad` | `#ff99cc` |
| `#b1819e` | `#f4b9dc` |

<a name="installation"></a>
## installation

### pure lua

1. clone this repository somewhere on your system like `$HOME/src`: `git clone https://codeberg.org:spica/perona.nvim.git`.
2. with lazy:

```lua
return {
	dir = "/absolute/path/to/perona.nvim",
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

1. clone this repository somewhere on your system like `$HOME/src` and check out the vim branch:

```
git clone https://codeberg.org:spica/perona.nvim.git
cd perona.nvim
git checkout vim
```

2. copy `perona.vim` to your vim or neovim `colors` directory:

```
cp colors/perona.vim ~/.config/nvim/colors
# or maybe
cp colors/perona.vim ~/.vim/colors
# or
cp colors/perona.vim ~/.config/vim/colors
```

3. set colorscheme:

- `init.lua`: `vim.cmd.colorscheme("perona")`
- `.vimrc`: `set colorscheme "perona"`
- the command  `:colorscheme perona`

<a name="extras"></a>
## extras

ports for [foot](https://codeberg.org/dnkl/foot), [iSH](https://github.com/ish-app/ish), [spotify_player](https://github.com/aome510/spotify-player), [termux](https://github.com/termux/termux-app), and tty can be found under <a href="https://codeberg.org/spica/perona.nvim/src/branch/dev/extras">extras</a>.
