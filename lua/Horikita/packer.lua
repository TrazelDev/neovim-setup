-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- treesitter (this is what allows me to use `\pf` and `\ps` to search in files)
  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.8',
          -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- extension to change colors of the words
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  })

  -- Parses the text and highlights the correct things
  use('nvim-treesitter/nvim-treesitter')
  use('nvim-treesitter/playground')

  -- LSP:
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

end)
