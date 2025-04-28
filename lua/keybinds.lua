local keybinds = {}

function keybinds.setup()
	local set = vim.keymap.set

	-- move window focus
	set("n", "<c-h>", "<c-w>h")
	set("n", "<c-j>", "<c-w>j")
	set("n", "<c-k>", "<c-w>k")
	set("n", "<c-l>", "<c-w>l")

	set("n", "<Esc>", "<cmd>nohlsearch<CR>")

	-- Plugin based keybinds
	set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

	set("n", "<leader>tu", vim.cmd.UndotreeToggle, { desc = "[T]oggle [U]ndoTree" })

	set("n", "<leader>st", "<CMD>TodoTelescope<CR>", { desc = "[S]earch [T]odo" })
	set("n", "<leader>xt", "<CMD>TodoTrouble<CR>", { desc = "Todos (Trouble)" })

	set({ "n", "x" }, "<leader>re", function()
		return require("refactoring").refactor("Extract Function")
	end, { expr = true, desc = "[R]efactor [E]xtract Function" })
	set({ "n", "x" }, "<leader>rf", function()
		return require("refactoring").refactor("Extract Function To File")
	end, { expr = true, desc = "[R]efactor Extract to [F]ile" })
	set({ "n", "x" }, "<leader>rv", function()
		return require("refactoring").refactor("Extract Variable")
	end, { expr = true, desc = "[R]efactor Extract [V]ariable" })
	set({ "n", "x" }, "<leader>rI", function()
		return require("refactoring").refactor("Inline Function")
	end, { expr = true, desc = "[R]efactor [I]nline Function" })
	set({ "n", "x" }, "<leader>ri", function()
		return require("refactoring").refactor("Inline Variable")
	end, { expr = true, desc = "[R]efactor [I]nline Variable" })

	set({ "n", "x" }, "<leader>rbb", function()
		return require("refactoring").refactor("Extract Block")
	end, { expr = true, desc = "[R]efactor Extract [B]lock" })
	set({ "n", "x" }, "<leader>rbf", function()
		return require("refactoring").refactor("Extract Block To File")
	end, { expr = true, desc = "[R]efactor Extract [B]lock to [F]ile" })
end

return keybinds
