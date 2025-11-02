return {
	---------------------------------------------------------------------------
	-- 🌌 Kanagawa (beautiful Japanese-inspired dark theme)
	---------------------------------------------------------------------------
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				compile = false,
				undercurl = true,
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false,
				dimInactive = false,
				terminalColors = true,
				theme = "wave", -- options: "wave", "dragon", "lotus"
				background = { dark = "dragon", light = "lotus" },
			})
			-- vim.cmd("colorscheme kanagawa-dragon")
			-- Other dark variants:
			-- vim.cmd("colorscheme onedarkpro")
			-- vim.cmd("colorscheme kanagawa-wave")
			-- vim.cmd("colorscheme oxocarbon")
			-- vim.cmd("colorscheme nordic")
			-- vim.cmd("colorscheme dracula")
			-- vim.cmd("colorscheme monokai-pro")
			-- vim.cmd("colorscheme catppuccin")
			vim.cmd("colorscheme github_dark_default")
			-- vim.cmd("colorscheme tokyonight")
		end,
	},

	---------------------------------------------------------------------------
	-- 🐉 Tokyonight
	---------------------------------------------------------------------------
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			style = "night", -- night, storm, day, moon
			transparent = false,
			treesitter = true,
		},
	},

	---------------------------------------------------------------------------
	-- ☕ Catppuccin
	---------------------------------------------------------------------------
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			treesitter = true,
			telescope = true,
		},
	},

	---------------------------------------------------------------------------
	-- 🌲 Gruvbox
	---------------------------------------------------------------------------
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		opts = {
			contrast = "hard", -- options: soft, medium, hard
			transparent_mode = false,
		},
	},

	---------------------------------------------------------------------------
	-- ❄️ Nord
	---------------------------------------------------------------------------
	{
		"shaunsingh/nord.nvim",
		lazy = true,
	},

	---------------------------------------------------------------------------
	-- ❄️ Nordic
	---------------------------------------------------------------------------
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
	},

	---------------------------------------------------------------------------
	-- 🦊 Nightfox (includes nordfox, carbonfox, etc.)
	---------------------------------------------------------------------------
	{
		"EdenEast/nightfox.nvim",
		lazy = true,
		opts = {
			options = {
				transparent = false,
				terminal_colors = true,
			},
		},
	},

	---------------------------------------------------------------------------
	-- 🧛 Dracula
	---------------------------------------------------------------------------
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
	},

	---------------------------------------------------------------------------
	-- Onedark
	---------------------------------------------------------------------------
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
	},
	---------------------------------------------------------------------------
	-- Onedark Pro
	---------------------------------------------------------------------------

	-- Lazy
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},

	---------------------------------------------------------------------------
	-- 🌿 Everforest
	---------------------------------------------------------------------------
	{
		"neanias/everforest-nvim",
		lazy = true,
		opts = {
			background = "medium", -- soft, medium, hard
			transparent_background_level = 0,
		},
	},

	---------------------------------------------------------------------------
	-- 🕯️ Rose Pine
	---------------------------------------------------------------------------
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		opts = {
			variant = "moon", -- auto, main, moon, dawn
			dark_variant = "moon",
			bold_vert_split = false,
		},
	},

	---------------------------------------------------------------------------
	-- Github theme
	---------------------------------------------------------------------------
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false,
		priority = 1000,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		-- Add in any other configuration;
		--   event = foo,
		--   config = bar
		--   end,
	},

	---------------------------------------------------------------------------
	-- Monokai-pro
	---------------------------------------------------------------------------
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		lazy = false,
		opts = {
			variant = "Pro", -- auto, main, moon, dawn
		},
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		-- Add in any other configuration;
		--   event = foo,
		--   config = bar
		--   end,
	},
}
