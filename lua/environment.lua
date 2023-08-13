local options = {

  { "tabstop",       2   },
  { "cmdheight",     2   },
  { "scrolloff",     8   },
  { "shiftwidth",    2   },
  { "pumheight",     10  },
  { "showtabline",   2   },
  { "numberwidth",   4   },
  { "conceallevel",  0   },
  { "timeoutlen",    100 },
  { "updatetime",    300 },
  { "sidescrolloff", 8   },

  { "wrap",           false },
  { "number",         true  },
  { "backup",         false },
  { "hlsearch",       true  },
  { "undofile",       true  },
  { "swapfile",       false },
  { "showmode",       false },
  { "expandtab",      true  },
  { "smartcase",      true  },
  { "cursorline",     true  },
  { "splitbelow",     true  },
  { "ignorecase",     true  },
  { "splitright",     true  },
  { "smartindent",    true  },
  { "writebackup",    false },
  { "relativenumber", true  },

  { "mouse",        "a" },
  { "signcolumn",   "yes" },
  { "fileencoding", "utf-8" },
  { "clipboard",    "unnamedplus" },

  { "completeopt", { "menuone", "noselect" } },
}

local setup = function()
  for _, v in pairs(options) do
    vim.opt[v[1]] = v[2]
  end
end

return setup()
