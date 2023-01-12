local map = vim.api.nvim_set_keymap
local conf = { noremap = true, silent = true }

local M = {}

M.keys =
{
  -- file manipulation
  { "n", "<C-s>", ":w!<CR>" },
  { "n", "<C-p>", ":q!<CR>" },
  { "n", "<C-q>", ":wq!<CR>" },

  -- code chunk navigation
  { "n", "<S-k>", "{" },
  { "n", "<S-j>", "}" },

  -- window navigation 
  { "n", "<C-k>", "<C-w>k" },
  { "n", "<C-j>", "<C-w>j" },
  { "n", "<C-h>", "<C-w>h" },
  { "n", "<C-l>", "<C-w>l" },

  -- window splitting
  { "n", "<C-v>", "<C-w>v" },
  { "n", "<C-b>", "<C-w>s" },

  -- window resize
  { "n", "<C-Up>", ":resize -2<CR>" },
  { "n", "<C-Down>", ":resize +2<CR>" },
  { "n", "<C-Left>", ":vertical resize -2<CR>" },
  { "n", "<C-Right>", ":vertical resize +2<CR>" },

  -- buffer navigation
  { "n", "<S-l>", ":bnext<CR>" },
  { "n", "<S-h>", ":bprevious<CR>" },

  -- quick mode exit 
  { "i", "fj", "<ESC>" },
  { "i", "jf", "<ESC>" },
  { "v", "jf", "<ESC>" },
  { "v", "fj", "<ESC>" },
  { "t", "fj", "exit<CR>" },
  { "t", "jf", "exit<CR>" },

  -- indentation
  { "v", "<", "<gv" },
  { "v", ">", ">gv" },

  -- lazy load plugin
  { "n", "<C-t>", ":lua require('plugins.toggleterm'); vim.cmd[[ ToggleTerm ]]<CR>" },
  { "n", "<C-f>", ":lua require('plugins.nvimtree'); vim.cmd[[ NvimTreeToggle ]]<CR>" },
}

M.setup = function()
  for _, v in pairs(M.keys) do
    map(v[1], v[2], v[3], conf)
  end
end

return M
