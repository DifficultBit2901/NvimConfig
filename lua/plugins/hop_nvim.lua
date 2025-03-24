return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {},
	config = function()
		-- place this in one of your configuration file(s)
		local hop = require("hop")
		hop.setup({ keys = "fjdkslaghrueiwoqpvncm" })

		vim.keymap.set("", "<leader>hw", function()
			hop.hint_words()
		end, { desc = "[h]op [w]ord" })
		vim.keymap.set("", "<leader>hf", function()
			hop.hint_char1()
		end, { desc = "[h]op [f]ind" })
		vim.keymap.set("", "<leader>hc", function()
			hop.hint_camel_case()
		end, { desc = "[h]op [c]amelCase" })
	end,
}
