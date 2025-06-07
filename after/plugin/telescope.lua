local builtin = require("telescope.builtin")

-- search project files
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

-- search files tracked by git
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

-- search project
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({
		search = vim.fn.input("Grep > "),
	})
end)
