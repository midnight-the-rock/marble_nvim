local ok, alpha = pcall(require, "alpha")
if not ok then
  return
end

local _, dashboard = pcall(require,"alpha.themes.dashboard")

-- menu title
dashboard.section.header.val =
{
	[[                                     ]],
	[[                                     ]],
	[[   ██ ███   ███ ▀▀▀                ██]],
	[[  ██  ███   ███ ███ ███████████   ██ ]],
	[[ ██    ███  ███ ███ ███ ███ ███  ██  ]],
	[[██      ██████   ██ ███  ██  ██ ██   ]],
	[[                                     ]],
	[[                                     ]],
}

-- menu navigation buttons
dashboard.section.buttons.val =
{
	dashboard.button("1", "[] search", ":lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{ previewer = false }); print('> search file...')<CR>"),
	dashboard.button("2", "[﬚] recent", ":lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown{ previewer = false }); print('> recent files...')<CR>"),
	dashboard.button("3", "[] create", ":ene <BAR> startinsert<CR>"),
	dashboard.button("4", "[] leave", ":qa<CR>"),
}

-- menu footer 
dashboard.section.footer.val = "#include <midnight>"

-- menu colors
dashboard.section.header.opts.hl =  "Float"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.section.footer.opts.hl =  "Keyword"

-- setup
return alpha.setup(dashboard.opts)
