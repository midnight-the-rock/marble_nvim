local M = {}

M.setup = function()
  local colorscheme = require("themes/marble_dark/colors")

  vim.cmd('hi clear')
  vim.o.background = theme
  vim.cmd('syntax reset')

  vim.o.termguicolors = true
  vim.g.colors_name = 'marble_dar'

  require("themes/options").setup(colorscheme)
end

return M
