local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

local M = {}

M.highlight = { enable = true, }
M.sync_install = true

configs.setup(M)
