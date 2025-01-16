return {
	"RaafatTurki/hex.nvim",
	lazy = false,
	config = function()
		local hex = require("hex")
		hex.setup({})
		vim.keymap.set("n", "<leader>bb", "<cmd>HexToggle<cr>")
	end,
}
