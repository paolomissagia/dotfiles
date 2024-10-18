return {
	"stevearc/conform.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"stylua",
				"isort",
				"black",
				"standardrb",
				"prettierd",
			},
		})

		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				ruby = { "standardrb" },
				eruby = { "erb_format" },
				go = { "gofmt" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
			},

			format_on_save = {
				timeout_ms = 1500,
				lsp_fallback = true,
			},
		})
	end,
}
