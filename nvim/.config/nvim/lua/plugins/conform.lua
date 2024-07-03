return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				ruby = { "rubocop" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
				go = { "fmt" },
			},

			format_on_save = {
				timeout_ms = 2500,
				lsp_fallback = true,
			},
		})
	end,
}
