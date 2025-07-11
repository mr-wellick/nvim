-- documentation: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ts_ls
-- note: need to run command: npm install -g typescript typescript-language-server
return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	root_makers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
}
