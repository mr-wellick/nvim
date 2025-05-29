require("core")

-- todo: maybe move plugin configuration to a separate file
-- require('plugins.lsp-keymaps')

-- enable language servers
vim.lsp.enable("luals")
vim.lsp.enable("ts_ls")
