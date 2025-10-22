local GPP = {}

function GPP.load()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'perona'

  require('lush')(require('perona.theme'))
end

return GPP
