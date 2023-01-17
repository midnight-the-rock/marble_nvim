local keymap = vim.api.nvim_buf_set_keymap

local M = {}

M.configuration =
{
  float =
  {
    style = "minimal",
    header = "",
    prefix = "",
    source = "always",
    border = "rounded",
    focusable = false,
  },
  signs =
  {
    active =
    {
      { name = "DiagnosticSignError" , text = "" },
      { name = "DiagnosticSignWarn"  , text = "" },
      { name = "DiagnosticSignHint"  , text = "" },
      { name = "DiagnosticSignInfo"  , text = "" },
    }
  },
  underline = true,
  virtual_text = false,
  severity_sort = true,
  update_in_insert = true,
}

M.setup = function()
  for _, sign in ipairs(M.configuration.signs.active) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  vim.diagnostic.config(M.configuration)
end

return M.setup()
