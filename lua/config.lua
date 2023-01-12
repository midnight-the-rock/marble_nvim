
-- load an alernative background 
local ok = pcall(vim.cmd, 'colorscheme starry_nebula')
if not ok then
  vim.cmd[[ colorscheme industry ]]
end

require("loader")       -- load plugins
require("keymaps")      -- load keymaps
require("environment")  -- load environment config
