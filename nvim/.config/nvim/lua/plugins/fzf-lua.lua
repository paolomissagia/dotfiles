return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = true,
	keys = {
		{ "<leader>ff", "<cmd>FzfLua files<cr>" },
		{ "<leader>fg", "<cmd>FzfLua live_grep<cr>" },
	},
}
