local map = vim.api.nvim_set_keymap
local conf = { noremap = true, silent = true }

local M = {}

M.setup = function()
  -- NORMAL
  map("n", "<C-s>", ":w <CR>", conf)
  map("n", "<C-q>", ":wq <CR>", conf)
  map("n", "<C-p>", ":q! <CR>", conf)
  map("n", "<S-k>", "{", conf)
  map("n", "<S-j>", "}", conf)
  map("n", "<C-h>", "<C-w>h", conf)
  map("n", "<C-j>", "<C-w>j", conf)
  map("n", "<C-k>", "<C-w>k", conf)
  map("n", "<C-l>", "<C-w>l", conf)
  map("n", "<C-v>", "<C-w>v", conf)
  map("n", "<C-b>", "<C-w>s", conf)
  map("n", "<C-Up>", ":resize -2<CR>", conf)
  map("n", "<C-Down>", ":resize +2<CR>", conf)
  map("n", "<C-Left>", ":vertical resize -2<CR>", conf)
  map("n", "<C-Right>", ":vertical resize +2<CR>", conf)
  map("n", "<S-l>", ":bnext<CR>", conf)
  map("n", "<S-h>", ":bprevious<CR>", conf)
  map("n", "<C-t>", ":ToggleTerm<CR>", conf)
  map("n", "<C-f>", ":NvimTreeToggle<CR>", conf)

  -- VISUAL
  map("v", "jf", "<ESC>", conf)
  map("v", "fj", "<ESC>", conf)
  map("v", "<", "<gv", conf)
  map("v", ">", ">gv", conf)

  -- INSERT
  map("i", "fj", "<ESC>", conf)
  map("i", "jf", "<ESC>", conf)
  
  -- TERMINAL
  map("t", "fj", "exit<CR>", conf)
  map("t", "jf", "exit<CR>", conf)
end

return M
