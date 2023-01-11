local plg = require("plug")
local key = require("keymaps")
local env = require("environment")

local M = {
  plg.setup(), -- load plugins
  key.setup(), -- load keymaps
  env.setup(), -- load environment

  -- load colorscheme
  vim.cmd("colorscheme starry_nebula")
}

return M
