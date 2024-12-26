vim.opt.background = 'dark'
vim.g.colors_name = 'perona'

package.loaded['lush_theme.perona'] = nil

require('lush')(require('lush_theme.perona'))
