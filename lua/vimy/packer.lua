local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
          '                                   ',
          '          ▀████▀▄▄              ▄█ ',
          '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
          '    ▄        █          ▀▀▀▀▄  ▄▀  ',
          '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
          '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
          '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
          '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
          '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
          '   █   █  █      ▄▄           ▄▀   ',
          '                                   ',
          '                                   ',
          },
          center = {
            {
              icon = '  ',
              desc = 'Recently opened files                   ',
              key = 'CTRL + H',
              action =  'Telescope oldfiles',
            },
            {
              icon = '  ',
              desc = 'Find File                               ',
              key = 'CTRL + F',
              action = 'Telescope find_files find_command=rg,--files',
            },
            {
              icon = '  ',
              desc = 'Load Session                            ',
              key = 'CTRL + L',
              action =  'SessionLoad',
            },
            {
              icon = '  ',
              desc = 'Open Projects                           ',
              key = 'CTRL + W',
              action = 'e ~/Work',
            },
          },
          footer = {'󱓟  Neovim FTW  󱓟'}
        },
        hide = {
          statusline = true,
          tabline = true,
          winbar = true,
        },
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }
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
