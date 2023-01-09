local set = function(name, value)
  vim.opt[name] = value
end

local M = {}

M.setup = function()
  set("wrap", false)
  set("mouse", false)
  set("number", true)
  set("backup", false)
  set("hlsearch", true)
  set("undofile", true)
  set("swapfile", false)
  set("showmode", false)
  set("expandtab", true)
  set("smartcase", true)
  set("cursorline", true)
  set("splitbelow", true)
  set("ignorecase", true)
  set("splitright", true)
  set("smartindent", true)
  set("writebackup", false)
  set("relativenumber", true)

  set("tabstop", 2)
  set("cmdheight", 2)
  set("scrolloff", 8)
  set("shiftwidth", 2)
  set("pumheight", 10)
  set("showtabline", 2)
  set("numberwidth", 4)
  set("conceallevel", 0)
  set("timeoutlen", 100)
  set("updatetime", 300)
  set("sidescrolloff", 8)

  set("signcolumn", "yes")
  set("fileencoding", "utf-8")
  set("clipboard", "unnamedplus")
  set("completeopt", { "menuone", "noselect" })
end

return M
