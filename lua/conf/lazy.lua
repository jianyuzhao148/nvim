local vim=vim or {}
local lazyPath=vim.fn.stdpath("data").."/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazyPath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazyPath,
	})
end
vim.opt.rtp:prepend(lazyPath)

local plugins={
	{
		"folke/tokyonight.nvim",
		lazy=false,
		config= function()
			vim.cmd([[colorscheme tokyonight]])
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config=function()
			require("conf.lualine")
		end
	},
	{
		'akinsho/bufferline.nvim',
		version = "v3.*",
		config=function()
			require("conf.bufferline")
		end
	},
	{
		'nvim-tree/nvim-tree.lua',
		config=function()
			require("conf.nvim-tree")
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate"
	},
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require("conf.gitsigns")
		end
	},
	{	'numToStr/Comment.nvim',
		config=function()
			require("conf.comment")
		end
	},
	{
		'simrat39/symbols-outline.nvim',
		event = "LspAttach",
		config=function()
			require("symbols-outline").setup()
		end
	},
	{
		'williamboman/mason.nvim',
		config=function()
			require("conf.mason")
		end,
		dependencies={
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
		}
	},
	{
		'hrsh7th/nvim-cmp',
		config=function()
			require("conf.nvim-cmp")
		end,
		dependencies={
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		}
	},
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("conf.lspsaga")
		end,
	},
	{
		'junegunn/fzf.vim',
		dependencies='junegunn/fzf',
	},
}

require("lazy").setup(plugins)
