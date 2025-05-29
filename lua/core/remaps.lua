local esc = "<Esc>"
local opts = {
    noremap = true
}

-- remaps
vim.keymap.set("i", "jj", esc, opts)

-- go to file explorer
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
