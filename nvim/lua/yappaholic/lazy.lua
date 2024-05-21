local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'nvim-telescope/telescope.nvim',
	'nvim-lua/plenary.nvim',
<<<<<<< HEAD
	"ellisonleao/gruvbox.nvim",
=======
  {"rose-pine/neovim", name="rose-pine"},
>>>>>>> 27c0cf7 (Small update)
	'nvim-treesitter/nvim-treesitter',
	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-buffer',
	'L3MON4D3/LuaSnip',
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	'nvim-lualine/lualine.nvim',
	'nvim-tree/nvim-web-devicons',
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2"
	},
	{
		"letieu/harpoon-lualine",
		dependencies = {
			{
				"ThePrimeagen/harpoon",
				branch = "harpoon2",
			}
		},
	},
	'stevearc/dressing.nvim',
	'MunifTanjim/nui.nvim',
	{
		"folke/noice.nvim",
		event = "VeryLazy",
	},
	"tree-sitter/tree-sitter-regex",
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter'
	},
	"echasnovski/mini.pairs",
	"echasnovski/mini.surround",
	"RRethy/vim-illuminate",
	"folke/flash.nvim",
	'stevearc/conform.nvim',
<<<<<<< HEAD
	{ 'akinsho/toggleterm.nvim',   version = "*",  config = true },
=======
>>>>>>> 27c0cf7 (Small update)
  {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }},
  {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy
  },
  "elkowar/yuck.vim",
  {
  'mrcjkb/haskell-tools.nvim',
  version = '^3', -- Recommended
  lazy = false, -- This plugin is already lazy
  },
  "stevearc/oil.nvim",
  {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  },
<<<<<<< HEAD
  "tpope/vim-fugitive"
=======
  "tpope/vim-fugitive",
  { "alexghergh/nvim-tmux-navigation",
    lazy=false,}
>>>>>>> 27c0cf7 (Small update)
}, {})
