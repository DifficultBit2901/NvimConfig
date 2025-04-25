return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon Add" })
		vim.keymap.set("n", '<leader>"', function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open Harpoon buffer menu" })

		for i = 1, 4, 1 do
			vim.keymap.set("n", "<leader>h" .. i, function()
				harpoon:list():select(i)
			end, { desc = "Go To [H]arpoon Buffer #" .. i })
		end
	end,
}
