return {
	"tinted-theming/tinted-vim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		vim.cmd.colorscheme("base24-dracula")

		vim.cmd.hi("Comment gui=none")
	end,
}
