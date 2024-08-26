return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"solargraph",
				"gopls",
				"tsserver",
				"html",
				"cssls",
				"angularls",
			},
		})

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
		vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
	end,
}
