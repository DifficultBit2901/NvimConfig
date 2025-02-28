return {
	"tribela/transparent.nvim",
	event = "VimEnter",
	config = function()
		require("transparent").setup({
			auto = false, -- Automatically applies transparent
			extra_groups = {
				"ClapSpinner",
				"ClapPreview",
				"ClapInput",
			}, -- If you want to add some groups to be transparent. eg: { 'Pmenu', 'CocFloating' }
			excludes = {}, -- If you want to excludes from default transparent groups. eg: { 'LineNr' }
		})
	end,
}
