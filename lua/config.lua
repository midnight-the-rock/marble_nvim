local plg = require("plug")
local key = require("keymaps")
local env = require("environment")

local setup = {
  plg.setup(), -- load plugins
  key.setup(), -- load keymaps
  env.setup(), -- load environment

  -- set colorscheme
  vim.cmd("colorscheme starry_nebula")
}

return setup
