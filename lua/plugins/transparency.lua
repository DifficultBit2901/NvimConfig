return {
	"xiyaowong/transparent.nvim",
	lazy = false,
	config = function()
		local transparent = require("transparent")
		transparent.setup({
			extra_groups = {
				"NormalFloat",
			},
		})
		transparent.clear_prefix("lualine")
		transparent.clear_prefix("snipe")
		transparent.clear_prefix("which")
		vim.cmd.TransparentEnable()
	end,
}
