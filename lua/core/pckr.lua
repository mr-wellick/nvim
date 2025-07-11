local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

	if not (vim.uv or vim.loop).fs_stat(pckr_path) then
		vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/lewis6991/pckr.nvim", pckr_path })
	end

	vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

-- pckr commands: https://github.com/lewis6991/pckr.nvim?tab=readme-ov-file#commands
require("pckr").add({
	-- lsp config taken from: https://lsp-zero.netlify.app/docs/getting-started.html#installing
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	-- for autocomplete: https://github.com/hrsh7th/nvim-cmp
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

	-- Snippet engine + source
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",

	-- colorscheme stuff
	"rose-pine/neovim",

	-- telescope
	"nvim-lua/plenary.nvim",

	-- required dependency for telescope
	"nvim-telescope/telescope.nvim",

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},

	-- github
	"tpope/vim-fugitive",

	-- formatters
	"mhartington/formatter.nvim",

	-- https://github.com/echasnovski/mini.nvim/tree/main?tab=readme-ov-file#installation
	{
		"echasnovski/mini.nvim",
		branch = "stable",
	},
})
