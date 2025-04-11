return {
	"xiyaowong/transparent.nvim",
	lazy = false,
	config = function()
		local transparent = require("transparent")
		transparent.setup({
			extra_groups = {
				"NormalFloat",
				"WinBar",
				"WinBarNC",
				"WinSeparator",
			},
		})
		transparent.clear_prefix("lualine")
		transparent.clear_prefix("snipe")
		transparent.clear_prefix("Snipe")
		transparent.clear_prefix("which")
		transparent.clear_prefix("Markview")
		vim.cmd.TransparentEnable()
	end,
}
