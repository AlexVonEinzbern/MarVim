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
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'Shatur/neovim-ayu'
  use 'nvim-treesitter/nvim-treesitter'
  use 'fatih/vim-go'
  use {"akinsho/toggleterm.nvim", tag = '*' }
  use 'm4xshen/autoclose.nvim'
  use {'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
       -- LSP support
      {'williamboman/mason-lspconfig.nvim'},        -- Required
      {'williamboman/mason.nvim'},                  -- Optional
      {'neovim/nvim-lspconfig'},                    -- Optional

       -- Autocompletion
      {'hrsh7th/nvim-cmp'},                         -- Required
      {'hrsh7th/cmp-nvim-lsp'},                     -- Required
      {'L3MON4D3/LuaSnip'},                         -- Required
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use 'terrortylor/nvim-comment'
  use 'github/copilot.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
