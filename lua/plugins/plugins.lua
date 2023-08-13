-- packer bootstrap
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end


-- reload neovim when this file get saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- first usage guard 
local ok, packer = pcall(require, "packer")
if not ok then
  return
end

return packer.startup({
  -- plugins here
  function(use)
    -- completion tools
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-path' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }

    -- language server protocol
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'jose-elias-alvarez/null-ls.nvim' }

   -- useful plugins
    use { 'elkowar/yuck.vim' }                    -- eww sintax hl
    use { 'goolord/alpha-nvim' }                  -- menu
    use { 'tikhomirov/vim-glsl' }                 -- glsl sintax hl
    use { 'nvim-lua/plenary.nvim' }               -- file tree
    use { 'windwp/nvim-autopairs' }               -- auto pairs
    use { 'wbthomason/packer.nvim' }              -- plugin manager
    use { 'akinsho/toggleterm.nvim' }             -- terminal
    use { 'nvim-tree/nvim-tree.lua' }             -- file tree
    use { 'akinsho/bufferline.nvim' }             -- buffers
    use { 'lewis6991/impatient.nvim' }            -- quick plugin loader
    use { 'nvim-lualine/lualine.nvim' }           -- status line
    use { 'norcalli/nvim-colorizer.lua' }         -- coloring 
    use { 'kyazdani42/nvim-web-devicons' }        -- dev icons
    use { 'nvim-telescope/telescope.nvim' }       -- fuzzy finder
    use { 'nvim-treesitter/nvim-treesitter' }     -- parser generator
    --use { 'TheMidnightShow/starry_night.nvim' }   -- colorscheme
    use { 'lukas-reineke/indent-blankline.nvim' } -- indentation

    -- sync packer whenever this file gets updated 
    if Bootstrap then
      require("packer").sync()
      print("installing plugins: press <C-p> twice when ready")
    end
  end,

  -- set floating window
  config = {
    display = {
      open_fn = require("packer.util").float,
    }
  }
})
