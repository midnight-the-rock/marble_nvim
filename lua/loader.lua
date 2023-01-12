local loader = function()
  require("impatient")
  require("plugins.plugins")

  -- load menu only if buffer is empty
  if vim.fn.bufname() == "" then
    require("plugins.alpha")
  end

  require("plugins.cmp")
  require("plugins.lsp")
  require("plugins.lualine")
  require("plugins.nvimtree")
  require("plugins.autopairs")
  require("plugins.treesitter")
  require("plugins.toggleterm")
  require("plugins.indentline")
  require("plugins.bufferline")
end

return loader()
