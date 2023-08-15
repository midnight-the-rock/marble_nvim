local ok, bufferline = pcall(require,"bufferline")
if not ok then
  return 0
end

local M = {}

M.options =
{
  mode = "buffers",
  numbers = "none",
  themeable = true,
  middle_mouse_command = nil,
  close_command = "bdelete! %d",
  left_mouse_command = "buffer %d",
  right_mouse_command = "bdelete! %d",
  indicator = { style = "none" },
  close_icon = '',
  modified_icon = '󰆦',
  buffer_close_icon = '󰆧',
  left_trunc_marker = '',
  right_trunc_marker = '',
  name_formatter = function(buf)
    return ""..buf.name..""
  end,
  max_name_length = 18,
  max_prefix_length = 15,
  truncate_names = true,
  tab_size = 18,
  diagnostics = "nvim_lsp",
  diagnostics_indicator = false,
  diagnostics_update_in_insert = false,
  offsets =
  {{
    filetype = "NvimTree",
    text = "「ファイル」",
    text_align = "center",
    separator = true
  }},
  color_icons = true,
  show_buffer_icons = false,
  show_buffer_close_icons = true,
  show_close_icon = true,
  show_tab_indicators = true,
  show_duplicate_prefix = true,
  persist_buffer_sort = true,
  separator_style = { ' ', ' ' },
  enforce_regular_tabs = true,
  always_show_bufferline = true,
  hover = { enabled = true, delay = 200, reveal = {'close'} },
  sort_by = 'insert_at_end',
}

return bufferline.setup(M)
