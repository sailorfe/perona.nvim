vim.opt.background = 'dark'
vim.g.colors_name = 'base16-perona'

package.loaded['lush_theme.base16-perona'] = nil

require('lush')(require('lush_theme.base16-perona'))
