local ok, alpha = pcall(require, "alpha")
if not ok then
  return
end

local _, dashboard = pcall(require,"alpha.themes.dashboard")

-- menu title
dashboard.section.header.val =
{
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
	[[    ██ ███   ███ ▀▀▀                ██]],
	[[   ██  ███   ███ ███ ███████████   ██ ]],
	[[  ██    ███  ███ ███ ███ ███ ███  ██  ]],
	[[ ██      ██████   ██ ███  ██  ██ ██   ]],
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
	[[                                      ]],
}

-- menu navigation buttons
dashboard.section.buttons.val =
{
	dashboard.button("1", " | look up", ":lua require('telescope.builtin').find_files(); print('> look up...')<CR>"),
	dashboard.button("2", " | recent", ":lua require('telescope.builtin').oldfiles(); print('> recent files...')<CR>"),
	dashboard.button("3", " | create", ":ene <BAR> startinsert<CR>"),
	dashboard.button("4", "󰀚 | leave ", ":qa<CR>"),
}

-- menu footer 
dashboard.section.footer.val = "std::midnight neovim;"

-- menu colors
dashboard.section.header.opts.hl =  "Float"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.section.footer.opts.hl =  "Keyword"

-- setup
return alpha.setup(dashboard.opts)
