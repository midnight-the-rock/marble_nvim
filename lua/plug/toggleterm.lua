local toggleterm = require("toggleterm")

local M =
{
	size = 15,
	shell = "zsh",
	direction = "float",
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shading_factor = 2,
	persist_size = true,
	hide_numbers = true,
	close_on_exit = true,
	shade_terminals = true,
	start_in_insert = true,
	insert_mappings = true,
	float_opts = 
  {
		winblend = 0,
	  border = "single",
	},
}

return toggleterm.setup(M)
