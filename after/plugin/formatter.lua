require("formatter").setup({
	logging = false,
	filetype = {
		-- brew install stylua
		lua = { require("formatter.filetypes.lua").stylua },
		-- npm install -g prettier
		javascript = { require("formatter.filetypes.javascript").prettier },
		typescript = { require("formatter.filetypes.typescript").prettier },
	},
})

-- Optional: Autoformat on save
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "FormatWrite",
	pattern = { "*.lua", "*.ts", "*.js", "*.tsx" },
})
