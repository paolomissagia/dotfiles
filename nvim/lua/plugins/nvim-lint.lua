return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "pylint" },
			ruby = { "rubocop" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		-- Set pylint to work in virtualenv
		require("lint").linters.pylint.cmd = "python"
		require("lint").linters.pylint.args = { "-m", "pylint", "-f", "json" }
	end,
}
