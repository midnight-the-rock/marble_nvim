local M = {}

M.setup = function()
  require("impatient")

  require("plug.cmp")
  require("plug.alpha")
  require("plug.packer")
  require("plug.lualine")
  require("plug.nvimtree")
  require("plug.autopairs")
  require("plug.treesitter")
  require("plug.toggleterm")
  require("plug.indentline")
  require("plug.bufferline")
end

return M
