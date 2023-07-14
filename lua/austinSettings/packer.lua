-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- -- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
--
return require('packer').startup(function(use)
--   -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		  -- or                            , branch = '0.1.x',
		requires = { {
			'nvim-lua/plenary.nvim'
		} }
	}
	use "rebelot/kanagawa.nvim"
	-- lua with packer.nvim
	use {
		   "max397574/better-escape.nvim",
		     config = function()
			     require("better_escape").setup {
				     mapping = {"jj"},
				     timeout = vim.o.timeoutlen,
				     clear_empty_lines = false,
				     keys = "<Esc>",
			     }
		 end,
	 }
	 use('nvim-treesitter/nvim-treesitter', { run = ':TSUpadte'})
	 use 'nvim-treesitter/playground'
	 use 'ThePrimeagen/harpoon'
	 use 'mbbill/undotree'
	 use 'tpope/vim-fugitive'
	 use {
		   'VonHeikemen/lsp-zero.nvim',
		     branch = 'v2.x',
		       requires = {
			       --LSP Support
			       {'neovim/nvim-lspconfig'},             -- Required
			       {                                      -- Optional
			       	'williamboman/mason.nvim',
			       	run = function()
				       pcall(vim.cmd, 'MasonUpdate')
			       	end,
			       },
		       {'williamboman/mason-lspconfig.nvim'}, -- Optional
					   
		       -- Autocompletion
		       {'hrsh7th/nvim-cmp'},     -- Required
		       {'hrsh7th/cmp-nvim-lsp'}, -- Required
		       {'L3MON4D3/LuaSnip'},     -- Required
	       }
       }
       use 'github/copilot.vim'
 end)
