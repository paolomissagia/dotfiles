local servers = {
	pyright = {
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "off",
				},
			},
		},
	},
	lua_ls = {},
	ruby_lsp = {},
	ts_ls = {},
	html = {},
	cssls = {},
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{
				"mason-org/mason-lspconfig.nvim",
				opts = {
					ensure_installed = vim.tbl_keys(servers),
					automatic_enable = false,
				},
			},
		},
		config = function()
			for server, config in pairs(servers) do
				vim.lsp.config(server, config)
			end

			vim.lsp.enable(vim.tbl_keys(servers))

			vim.diagnostic.config({
				virtual_text = true,
				severity_sort = true,
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
				callback = function(event)
					local bf = { buffer = event.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, bf)
					vim.keymap.set({ "n", "x" }, "<leader>f", vim.lsp.buf.format, bf)
				end,
			})
		end,
	},
}
