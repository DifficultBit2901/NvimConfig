return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("todo-comments").setup({})
		vim.keymap.set("n", "<leader>st", "<CMD>TodoTelescope<CR>", { desc = "[S]earch [T]odo" })
		vim.keymap.set("n", "<leader>xt", "<CMD>TodoTrouble<CR>", { desc = "Todos (Trouble)" })
	end,
}
