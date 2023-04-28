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
	 	version = "*",
		dependencies = {'nvim-tree/nvim-web-devicons'},
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
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' }
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
		'lewis6991/gitsigns.nvim',
		config = function()
			require("conf.gitsigns")
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate"
	},
	{	'numToStr/Comment.nvim',
		config=function()
			require("conf.comment")
		end
	},
	{
		'hrsh7th/nvim-cmp',
		config=function()
			require("conf.nvim-cmp")
		end,
        dependencies={
            'hrsh6th/cmp-nvim-lsp',
            'hrsh6th/cmp-buffer',
            'hrsh6th/cmp-path',
            'hrsh6th/cmp-cmdline',
            'hrsh6th/cmp-vsnip',
            'hrsh6th/vim-vsnip'
        }
	},
    {
        'sbdchd/neoformat',
        event="LspAttach",
        config=function()
            require("conf.neoformat")
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies={
            'mfussenegger/nvim-dap',
        },
		config = function()
			require("conf.nvim-dap")
        end
    }
}

require("lazy").setup(plugins)
