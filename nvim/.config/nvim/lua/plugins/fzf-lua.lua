return {
	"ibhagwan/fzf-lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local fzf_lua = require("fzf-lua")

		fzf_lua.setup({})

		vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>")
		vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>")
	end,
}
