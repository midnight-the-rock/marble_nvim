require("luasnip/loaders/from_vscode").lazy_load()

local cmp = require("cmp")
local luasnip = require("luasnip")
local bordered = cmp.config.window.bordered()

local M = {}

local icons = 
{
  Text =          "", Unit =          "", Enum =          "",
  File =          "", Color =         "", Value =         "",
  Event =         "", Class =         "", Struct =        "",
  Method =        "", Folder =        "", Module =        "",
  Keyword =       "", Snippet =       "", Variable =      "",
  Function =      "ﬦ", Operator =      "", Constant =      "",
  Property =      "", Reference =     "", Interface =     "",
  EnumMember =    "", Constructor =   "", TypeParameter = "",
}

M.snippet = 
{
  expand = function(args)
    luasnip.lsp_expand(args.body)
  end,
}

M.mapping = 
{ 
  -- navigation
  ["<Tab>"] = cmp.mapping.select_next_item(),
  ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
  ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),

  -- selection
  ["<CR>"] = cmp.mapping.confirm { select = true },
  ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),

  -- abort / disable
  ["<C-y>"] = cmp.config.disable,
  ["<C-e>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close(), },
}

M.formatting = 
{
  fields = { "kind", "abbr", "menu" },
  format = function(entry, vim_item)
    vim_item.menu = 
    ({
      path = "[pth]",
      buffer = "[buf]",
      luasnip = "[snip]",
      nvim_lsp = "[lsp]",
    })[entry.source.name]
    vim_item.kind = string.format("%s", incons[vim_item.kind])
    return vim_item
  end,
}
  
M.sources = 
{
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "path" }
}
  
M.confirm_opts = 
{
  behavior = cmp.ConfirmBehavior.Replace,
  select = false,
}

M.window = 
{
  completion = bordered,
  documentation = bordered,
}

return cmp.setup(M)
