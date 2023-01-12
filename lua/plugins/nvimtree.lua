local ok, nvim_tree = pcall(require,"nvim-tree")
if not ok then
  return 0
end

local M = {}

M.update_focused_file = { enable = true, update_cwd = true, }

M.renderer =
{
  root_folder_modifier = ":t",
  icons = {
    glyphs =
    {
      default = "",
      symlink = "",
      folder =
      {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
      },
      git =
      {
        unstaged = "",
        staged = "",
        unmerged = "",
        renamed = "➜",
        untracked = "",
        deleted = "",
        ignored = "◌",
      },
    },
  }
}

M.diagnostics =
{
  enable = true,
  show_on_dirs = true,
  icons = { hint = "", info = "", warning = "", error = "" }
}


return nvim_tree.setup(M)
