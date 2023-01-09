local indent = require("indent_blankline")

local M = 
{
  show_end_of_line = false,
  show_current_context = true,
  show_current_context_start = false,
}

vim.g.indent_blankline_char = "│"

return indent.setup(M)
