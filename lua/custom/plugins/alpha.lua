return {
	"goolord/alpha-nvim",
	dependecies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("alpha").setup(require("alpha.themes.theta").config)
	end,
}
