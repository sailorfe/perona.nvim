# perona.nvim

a colorscheme for neovim inspired by ghost princess perona from *one piece*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<div align="center">

![horohorohorohorohoro](grim.png)

</div>

## palette

+ base = `#0c030a` `#150a12` `#1c111a`
+ accent = `#6e0c2a` `#a5123e` `#dc1853`
+ text = `#fec8d5` `#a28189` `#644f54`
+ black = `#261722` `#372a34` `#160813`
+ red = `#ed1d2e` `#ff4c5b` `#cc0011`
+ green = `#d573d9` `#f893fb` `#c733cc`
+ yellow = `#ff5c74` `#ff8093` `#fb3754`
+ blue = `#8896c8` `#a9b7ea` `#687dca`
+ magenta = `#ff70b3` `#ff94c6` `#fd3592`
+ cyan = `#d5396b` `#fa5c8e` `#cc2459`
+ white = `#deafba` `#f2c0cb` `#fcd9e1`

## installation

### neovim

**requires lush.nvim**.

clone this repository:

```bash
git clone https://codeberg.org/spica/perona.nvim.git
```

install lush.nvim. i use lazy and configure `lush.lua` like this:

```lua
return {
    { dir = '/absolute/path/to/perona.nvim', lazy = true },
    config = fuction()
        require 'lush'.setup()
    end,
}
```

### lualine

```bash
git clone https://codeberg.org/spica/perona.nvim.git
cd perona.nvim
cp -r lua ~/.config/nvim
```

i configure `lualine.lua` like this:

```lua
local perona = require'lualine.themes.perona'

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-ree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = { theme = perona },
        }
    end,
}
```

## terminals

so far only ported for foot:

```
[cursor]
color= 0e030b fec8d5

[colors]
background= 0e030a
foreground= fec8d5

regular0=   261722
regular1=   ed1d2e
regular2=   d573d9
regular3=   ff5c74
regular4=   8896c8
regular5=   ff70b3
regular6=   d5396b
regular7=   deafba

bright0=    342731
bright1=    ff4c5b
bright2=    f893fb
bright3=    ff8093
bright4=    a9b7ea
bright5=    ff94c6
bright6=    fa5c8e
bright7=    f2c0cb
```
