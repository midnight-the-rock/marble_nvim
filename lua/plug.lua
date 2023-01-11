local M = {}

M.setup = function()
  require("plugins.plugins")

  require("impatient")

  require("plugins.cmp")
  require("plugins.lsp")
  require("plugins.alpha")
  require("plugins.lualine")
  require("plugins.nvimtree")
  require("plugins.autopairs")
  require("plugins.treesitter")
  require("plugins.toggleterm")
  require("plugins.indentline")
  require("plugins.bufferline")
  require("colorizer")
  require("telescope").setup()
end

return M
