return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		mason.setup()

		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"tsserver",
				"solargraph",
				"html",
				"cssls",
				"angularls",
			},
		})

		local mason_tool_installed = require("mason-tool-installer")
		mason_tool_installed.setup({
			ensure_installed = {
				"stylua",
				"isort",
				"black",
				"rubocop",
				"prettierd",
				"eslint_d",
				"pylint",
			},
		})
	end,
}
