local ok = pcall(require,"lspconfig")
if not ok then
  return
end

require("plugins.lsp.config")
require("plugins.lsp.handler").setup()
require("plugins.lsp.null-ls")
