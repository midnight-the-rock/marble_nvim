local ok, config = pcall(require,"lspconfig")
if not ok then
  return
end

require("plugins.lsp.settings")
require("plugins.lsp.null-ls")

local M = {}

-- your servers here
M.servers =
{
  "clangd",
  "sumneko_lua"
}

M.setup = function()
  local status, installer = pcall(require, "nvim-lsp-installer")
  if not status then
    return
  end

  installer.setup({ ensure_installed = M.servers })

  local maps = require("plugins.lsp.maps")
  for _, s in pairs(M.servers) do
    config[s].setup({ on_attach = maps.keymaps, capabilities = maps.capabilities })
  end
end

return M.setup()
