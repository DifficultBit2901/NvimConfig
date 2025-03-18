local hg = {}

function hg.setup()
	-- gray
	vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { bg = "NONE", strikethrough = true, fg = "#808080", force = true })
	-- blue
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { bg = "NONE", fg = "#569CD6", force = true })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { link = "CmpIntemAbbrMatch", force = true })
	-- light blue
	vim.api.nvim_set_hl(0, "CmpItemKindVariable", { bg = "NONE", fg = "#9CDCFE", force = true })
	vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "CmpItemKindVariable", force = true })
	vim.api.nvim_set_hl(0, "CmpItemKindText", { link = "CmpItemKindVariable", force = true })
	-- pink
	vim.api.nvim_set_hl(0, "CmpItemKindFunction", { bg = "NONE", fg = "#C586C0", force = true })
	vim.api.nvim_set_hl(0, "CmpItemKindMethod", { link = "CmpItemKindFunction", force = true })
	-- front
	vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { bg = "NONE", fg = "#D4D4D4", force = true })
	vim.api.nvim_set_hl(0, "CmpItemKindProperty", { link = "CmpItemKindKeyword", force = true })
	vim.api.nvim_set_hl(0, "CmpItemKindUnit", { link = "CmpItemKindKeyword", force = true })

	vim.api.nvim_set_hl(0, "CmpItemMenu", { bg = "#D4D4D4", force = true })
end

return hg
