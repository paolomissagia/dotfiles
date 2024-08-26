return {
	"stevearc/conform.nvim",
    branch = "nvim-0.9",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason_tool_installed = require("mason-tool-installer")

		mason_tool_installed.setup({
			ensure_installed = {
				"stylua",
				"isort",
				"black",
				"standardrb",
				"prettierd",
			},
		})

		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				ruby = { "standardrb" },
				go = { "gofmt" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
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
