local ok, cmp = pcall(require, "cmp_nvim_lsp")
if not ok then
  return
end

local map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

local M = {}

M.keymaps = function()
  map(0, "n", "gr", "<cmd>lua vim.lsp.buf.reference()<CR>", opts)
  map(0, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  map(0, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  map(0, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  map(0, "n", "gl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded' })<CR>", opts)
end

M.capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

return M
