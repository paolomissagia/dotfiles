return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")
		local lspconfig = require("lspconfig")

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf })
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf })
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { buffer = ev.buf })
				vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = ev.buf })
			end,
		})
	end,
}
