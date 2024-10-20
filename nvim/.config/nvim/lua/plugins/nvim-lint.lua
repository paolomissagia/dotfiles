return {
	"mfussenegger/nvim-lint",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"eslint_d",
				"ruff",
				"standardrb",
			},
		})

		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "ruff" },
			ruby = { "standardrb" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
