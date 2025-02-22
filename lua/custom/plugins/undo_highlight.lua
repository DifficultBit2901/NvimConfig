return {
	"y3owk1n/undo-glow.nvim",
	opts = {}, -- your configuration
	config = function()
		local undo_glow = require("undo-glow")
		undo_glow.setup({})

		local setn = function(keys, action, desc)
			vim.keymap.set("n", keys, action, { noremap = true, desc = desc })
		end

		setn("u", undo_glow.undo, "Undo with highlight")
		setn("U", undo_glow.redo, "Redo with highlight")
		setn("<c-r>", undo_glow.redo, "Redo with highlight")
		setn("p", undo_glow.paste_below, "Paste below with highlight")
		setn("P", undo_glow.paste_above, "Paste above with highlight")
	end,
}
