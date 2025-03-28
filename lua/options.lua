local options = {}

function options.setup()
	-- tab related options
	vim.opt.expandtab = true
	vim.opt.tabstop = 4
	vim.opt.shiftwidth = 4

	vim.opt.breakindent = true

	vim.opt.number = true
	vim.wo.relativenumber = true

	vim.opt.signcolumn = "yes"

	vim.opt.ignorecase = true
	vim.opt.smartcase = true

	vim.opt.termguicolors = true
end

return options
