local keybinds = {}

function keybinds.setup()
	local set = vim.keymap.set

	-- move window focus
	set("n", "<c-h>", "<c-w>h")
	set("n", "<c-j>", "<c-w>j")
	set("n", "<c-k>", "<c-w>k")
	set("n", "<c-l>", "<c-w>l")

	set("n", "<Esc>", "<cmd>nohlsearch<CR>")

	-- Plugin based keybinds
	set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

	set("n", "<leader>tu", vim.cmd.UndotreeToggle, { desc = "[T]oggle [U]ndoTree" })

	set("n", "<leader>st", "<CMD>TodoTelescope<CR>", { desc = "[S]earch [T]odo" })
	set("n", "<leader>xt", "<CMD>TodoTrouble<CR>", { desc = "Todos (Trouble)" })

	set("x", "<leader>re", ":Refactor extract ")
	set("x", "<leader>rf", ":Refactor extract_to_file ")

	set("x", "<leader>rv", ":Refactor extract_var ")

	set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

	set("n", "<leader>rI", ":Refactor inline_func")

	set("n", "<leader>rb", ":Refactor extract_block")
	set("n", "<leader>rbf", ":Refactor extract_block_to_file")
end

return keybinds
