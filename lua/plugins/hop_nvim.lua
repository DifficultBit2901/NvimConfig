return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {},
	config = function()
		-- place this in one of your configuration file(s)
		local hop = require("hop")
		hop.setup({ keys = "fjdkslaghrueiwoqpvncm" })
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "t", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR })
		end, { remap = true })
		vim.keymap.set("", "T", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR })
		end, { remap = true })
		vim.keymap.set("", "<leader>hw", function()
			hop.hint_words()
		end, { desc = "[h]op [w]ord" })
		vim.keymap.set("", "<leader>hc", function()
			hop.hint_camel_case()
		end, { desc = "[h]op [c]amelCase" })
	end,
}
