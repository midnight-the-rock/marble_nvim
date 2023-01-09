local opt = function(name, value)
  vim.opt[name] = value
end

local M = {}

M.setup = function()
  opt("wrap", false)
  opt("mouse", "a")
  opt("number", true)
  opt("backup", false)
  opt("hlsearch", true)
  opt("undofile", true)
  opt("swapfile", false)
  opt("showmode", false)
  opt("expandtab", true)
  opt("smartcase", true)
  opt("cursorline", true)
  opt("splitbelow", true)
  opt("ignorecase", true)
  opt("splitright", true)
  opt("smartindent", true)
  opt("writebackup", false)
  opt("relativenumber", true)

  opt("tabstop", 2)
  opt("cmdheight", 2)
  opt("scrolloff", 8)
  opt("shiftwidth", 2)
  opt("pumheight", 10)
  opt("showtabline", 2)
  opt("numberwidth", 4)
  opt("conceallevel", 0)
  opt("timeoutlen", 100)
  opt("updatetime", 300)
  opt("sidescrolloff", 8)

  opt("signcolumn", "yes")
  opt("fileencoding", "utf-8")
  opt("clipboard", "unnamedplus")
  opt("completeopt", { "menuone", "noselect" })
end

return M
