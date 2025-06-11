-- scrolling
vim.opt.scrolloff = 8
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- cursor
vim.opt.guicursor = {
	"n-v-c:block", -- normal, visual, command-line: block cursor
	"n:ver25", -- override normal mode to vertical bar with height 25
	"i:ver25", -- insert mode: vertical bar with height 25
	"r:hor20", -- replace mode: horizontal bar (optional)
	"o:hor20", -- operator-pending mode
	"v:block", -- visual mode
	"c:ver25", -- command-line mode
}

-- appearences
vim.opt.number = true -- show active row number
vim.opt.cursorline = true -- highlight the line under the cursor
vim.api.nvim_set_hl(0, "CursorLineNr", {
	fg = "#ff00ff",
	bg = "#4e4e4e",
	bold = false,
}) -- style the cursor line number (in the gutter)

-- netrw settings
vim.g.netrw_winsize = 85
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.opt.autochdir = false -- prevent auto-directory changes

vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1 -- open files to left side

-- not sure on these options. need to read more about them
-- vim.g.netrw_keepdir = 0 -- dont change directory when openning files
-- vim.g.netrw_chgwin = 1 -- dont change directory when switching windows

-- creating folds
vim.opt.foldenable = true
vim.opt.foldmethod = "manual"

-- mouse input
vim.opt.mouse = a
