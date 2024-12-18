return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autopep8" },
				ruby = { "standardrb" },
				go = { "gofmt" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
			},

			format_on_save = {
				timeout_ms = 2500,
				lsp_fallback = true,
			},
		})
	end,
}
