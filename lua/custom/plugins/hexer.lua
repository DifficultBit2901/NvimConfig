return {
	"theKnightsOfRohan/hexer.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("hexer").setup()
		vim.keymap.set("v", "<leader>Hx", "<CMD>Hexer<CR>", { desc = "[H]e[x]er" })
	end,
}
