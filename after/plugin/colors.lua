function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {
		bg = "none",
	})
	vim.api.nvim_set_hl(0, "NormalFloat", {
		bg = "none",
	})

	vim.api.nvim_set_hl(0, "Comment", {
		fg = "#6A9955",
		italic = true,
	})
end

ColorMyPencils()
