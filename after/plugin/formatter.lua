require("formatter").setup({
    logging = false,
    filetype = {
        lua = {require("formatter.filetypes.lua").stylua},
        javascript = {require("formatter.filetypes.javascript").prettier},
        typescript = {require("formatter.filetypes.typescript").prettier},
        python = {require("formatter.filetypes.python").black}
    }
})

-- Optional: Autoformat on save
vim.api.nvim_create_autocmd("BufWritePost", {
    command = "FormatWrite",
    pattern = {"*.lua", "*.ts", "*.js", "*.py"}
})
