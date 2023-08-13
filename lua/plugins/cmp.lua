local ok, cmp = pcall(require,"cmp")
if not ok then
  return 0
end

local luasnip = require("luasnip")
local bordered = cmp.config.window.bordered()

require("luasnip/loaders/from_vscode").lazy_load()

local M = {}

local icon_kind =
{
  Text =          " ", Unit =          " ", Enum =          " ",
  File =          " ", Color =         " ", Value =         " ",
  Event =         " ", Class =         "󰮄 ", Struct =        "󰮄 ",
  Method =        "󰘧 ", Folder =        "󰉋 ", Module =        "󰋙 ",
  Keyword =       " ", Snippet =       " ", Variable =      "󰙨 ",
  Function =      "󰘧 ", Operator =      " ", Constant =      " ",
  Property =      " ", Reference =     "󰪍 ", Interface =     " ",
  EnumMember =    " ", Constructor =   " ", TypeParameter = " ",
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
  ["<C-j>"] = cmp.mapping.select_next_item(),
  ["<C-k>"] = cmp.mapping.select_prev_item(),
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
      path      = "[pth]",
      buffer    = "[buf]",
      luasnip   = "[snp]",
      nvim_lsp  = "[lsp]",
    })[entry.source.name]
    vim_item.kind = string.format("%s", icon_kind[vim_item.kind])
    return vim_item
  end,
}

M.sources =
{
  { name = "path" },
  { name = "buffer" },
  { name = "luasnip" },
  { name = "nvim_lsp" },
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
