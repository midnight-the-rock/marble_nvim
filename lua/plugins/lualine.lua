local ok, lualine = pcall(require,'lualine')
if not ok then
  return 0
end

local M = {}

local branch = {
  "branch",
  icon = "",
  colored = true,
  icons_enabled = true
}

local diff = {
  "diff",
  colored = true,
  symbols = {
    added     = " ",
    removed   = " ",
    modified  = " ",
  },
}

local diagnostics = {
 "diagnostics",

  separator = {
    left  = " ",
    right = " ",
  },

  sources = { "nvim_diagnostic" },

  symbols = {
    warn  = " ",
    error = " ",
  },

  sections = {
    "error",
    "warn",
  },

  colored = false,
  always_visible = true,
  update_in_insert = false,
}

local mode = {
  "mode",
  separator = {
    left  = " ",
    right = " ",
  },
  fmt = function(str)
    return "  " .. str .. " "
  end,
}

local progress = function()
  local total_lines   = vim.fn.line("$")
  local current_line  = vim.fn.line(".")

  return "󰟀 "..math.floor(current_line/total_lines*100).."󰏰"
end

M.options =
{
  theme = 'auto',
  ignore_focus = {},
  globalstatus = true,
  icons_enabled = true,
  always_divide_middle = true,
  section_separators = { left = ' ', right = ' '},
  component_separators = '│',
  refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },

  disabled_filetypes = {
    "alpha",
    "Outline",
    "NvimTree",
    "dashboard",
    winbar = {},
    statusline = {},
  },
}

M.sections = {
  lualine_a = { mode },
  lualine_b = { 'filetype', progress },
  lualine_c = {},
  lualine_x = { diff, branch },
  lualine_y = {},
  lualine_z = { diagnostics }
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

M.winbar = {}
M.tabline = {}
M.extensions = {}
M.inactive_winbar = {}

return lualine.setup(M)
