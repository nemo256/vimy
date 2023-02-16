return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  -- Dashboard
  -- use {
  --   'glepnir/dashboard-nvim',
  --   event = 'VimEnter',
  -- }
  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Plenary
  use 'nvim-lua/plenary.nvim'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'

	-- Treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Colorscheme
	use 'folke/tokyonight.nvim'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

	-- Undotree
	use 'mbbill/undotree'

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup() end
  }

  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end
  }

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

end)
