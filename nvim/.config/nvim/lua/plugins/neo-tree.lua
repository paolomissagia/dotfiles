return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree = require("neo-tree")

		neotree.setup({
			popup_border_style = "rounded",
			filesystem = {
				filtered_items = {
					visible = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>e", ":Neotree float toggle<CR>")
	end,
}
