local M = {}

M.setup = function()
  require("plug.packer")

  require("impatient")

  require("plug.cmp")
  require("plug.lsp")
  require("plug.alpha")
  require("plug.lualine")
  require("plug.nvimtree")
  require("plug.autopairs")
  require("plug.treesitter")
  require("plug.toggleterm")
  require("plug.indentline")
  require("plug.bufferline")
  require("colorizer")
  require("telescope").setup()
end

return M
