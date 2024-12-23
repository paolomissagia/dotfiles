return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local nvim_treesitter = require("nvim-treesitter.configs")

		nvim_treesitter.setup({
			ensure_installed = {
				"lua",
				"python",
				"ruby",
				"typescript",
				"javascript",
				"html",
				"css",
				"tsx",
				"yaml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
