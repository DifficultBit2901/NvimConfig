return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {},
	config = function()
		-- place this in one of your configuration file(s)
		local hop = require("hop")
		hop.setup({ keys = "fjdkghruvn" })
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "f", function()
			hop.hint_char1()
		end, { remap = true })
		vim.keymap.set("", "F", function()
			hop.hint_words()
		end, { remap = true })
		vim.keymap.set("", "<leader>hc", function()
			hop.hint_camel_case()
		end, { desc = "[h]op [c]amelCase" })
	end,
}
