return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = true,
	keys = {
		{ "<leader>lg", "<cmd>Neogit<cr>" },
	},
}
