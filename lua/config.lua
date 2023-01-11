local plg = require("plug")
local key = require("keymaps")
local env = require("environment")

local M = {
  key.setup(), -- load keymaps
  env.setup(), -- load environment
  plg.setup(), -- load plugins

  -- load colorscheme
  vim.cmd("colorscheme starry_nebula")
}

return M
