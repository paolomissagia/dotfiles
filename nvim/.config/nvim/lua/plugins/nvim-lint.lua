return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "ruff" },
			ruby = { "standardrb" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}
	end,
}
