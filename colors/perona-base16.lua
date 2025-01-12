vim.opt.background = 'dark'
vim.g.colors_name = 'perona-base16'

package.loaded['lush_theme.perona-base16'] = nil

require('lush')(require('lush_theme.perona-base16'))
