-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Install plugins using packer
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  use { -- Fuzzy Finder
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use { -- Fuzzy Finder Algorithm which requires `make` to be built
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }

  -- Git plugins
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  use { -- Highlight code with treesitter
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind.nvim',
      'nvim-tree/nvim-web-devicons'
    },
  }

  use { -- File explorer
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' } -- optional, for file icons
  }

  use 'numToStr/Comment.nvim' -- Comment code using gc
  use 'tpope/vim-surround' -- Modifying parentheses, brackets, quotes, tags
  use 'arcticicestudio/nord-vim' -- Nord theme
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
  use 'yuttie/comfortable-motion.vim' -- Smooth scrolling
  use 'folke/which-key.nvim' -- Which key to show available keymaps
  use 'junegunn/goyo.vim' -- Goyo mode for writing

  use { -- lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' } -- optional, for statusline icons
  }

  if is_bootstrap then
    require('packer').sync()
  end
end)

-- When bootstrapping, restart is required.
if is_bootstrap then
  print 'Plugins are being installed. Restart nvim after packer completes.'
  return
end

require('anindya.options')
require('anindya.keymaps')
