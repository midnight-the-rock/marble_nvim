local key = require("keymaps")
local env = require("environment")

local M = {
  key.setup(), -- load keymaps
  env.setup(), -- load environment

  require("loader"), -- load plugins

  -- load colorscheme
  vim.cmd("colorscheme starry_nebula")
}

return M
