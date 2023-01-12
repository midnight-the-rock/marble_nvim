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
  require("plugins.autopairs")
  require("plugins.bufferline")
  require("plugins.treesitter")
  require("plugins.indentline")

end

return loader()
