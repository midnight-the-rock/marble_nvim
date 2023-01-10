local lualine = require('lualine')

local M = {}

local branch = { "branch", icon = "", icons_enabled = true }
local diff = { "diff", colored = false, symbols = { added = " ", modified = " ", removed = " " } }

local diagnostics =
{
  "diagnostics",
  sources = { "nvim_diagnostic" },
	symbols = { error = " ", warn = " " },
  sections = { "error", "warn" },
	colored = false,
	always_visible = true,
	update_in_insert = false,
}

local mode =
{
  "mode",
  fmt = function(str)
    return "  " .. str .. " "
  end,
}

local progress = function()
  local l = vim.fn.line(".") / vim.fn.line("$")
  local c = 
  {
    " ◼        ",
    " ◼◼       ",
    " ◼◼◼      ", 
    " ◼◼◼◼     ", 
    " ◼◼◼◼◼    ", 
    " ◼◼◼◼◼◼   ", 
    " ◼◼◼◼◼◼◼  ", 
    " ◼◼◼◼◼◼◼◼ ", 
    " ◼◼◼◼◼◼◼◼◼" 
  }
  local i = math.ceil(l * #c)
  return c[i]
end

M.options =
{
  theme = 'auto',
  ignore_focus = {},
  globalstatus = true,
  icons_enabled = true,
  always_divide_middle = true,
  section_separators = { left = '▙ ', right = ' ▟'},
  component_separators = { left = ' ▏', right = ' ▏'},
  refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
  disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline", statusline = {}, winbar = {}, },
}

M.sections = 
{
  lualine_a = { mode },
  lualine_b = { branch },
  lualine_c = {},
  lualine_x = { diff, diagnostics },
  lualine_y = {},
  lualine_z = { progress }
}

M.inactive_sections = 
{
  lualine_a = {},
  lualine_b = {},
  lualine_c = {'filename'},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
}

M.tabline = {}
M.winbar = {}
M.inactive_winbar = {}
M.extensions = {}

return lualine.setup(M)
