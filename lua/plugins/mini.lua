return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup({
			mappings = {
				add = "gsa", -- Add surrounding in Normal and Visual modes
				--e.g. gsaiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
				--e.g. gsaa}) - [S]urround [A]dd [A]round [}]Braces [)]Paren
				delete = "gsd", -- Delete surrounding
				--e.g.    gsd"   - [S]urround [D]elete ["]quotes
				replace = "gsr", -- Replace surrounding
				--e.g.     gsr)'  - [S]urround [R]eplace [)]Paren by [']quote
				find = "gsf", -- Find surrounding (to the right)
				find_left = "gsF", -- Find surrounding (to the left)
				highlight = "gsh", -- Highlight surrounding
				update_n_lines = "gsn", -- Update `n_lines`
			},
			n_lines = 500,
		})

		require("mini.animate").setup({
			cursor = {
				enabled = false,
			},
			scroll = {
				timing = function()
					return 2
				end,
			},
		})
	end,
}
