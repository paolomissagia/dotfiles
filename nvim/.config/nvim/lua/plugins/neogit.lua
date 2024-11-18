return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local neogit = require("neogit")

		neogit.setup({
			vim.keymap.set("n", "<leader>lg", function()
				if vim.bo.filetype == "NeogitStatus" then
					neogit.close()
				else
					neogit.open()
				end
			end, { desc = "Neogit" }),
		})
	end,
}
