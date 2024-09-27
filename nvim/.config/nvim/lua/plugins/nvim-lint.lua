return {
	"mfussenegger/nvim-lint",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"pylint",
				"standardrb",
				"eslint_d",
			},
		})

		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "pylint" },
			ruby = { "standardrb" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		-- Set pylint to work in virtualenv
		lint.linters.pylint.cmd = "python"
		lint.linters.pylint.args = { "-m", "pylint", "-f", "json" }
	end,
}
