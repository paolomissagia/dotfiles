return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	opts = {
		servers = {
			lua_ls = {},
			basedpyright = {},
			ruby_lsp = {},
			ts_ls = {},
			html = {},
			cssls = {},
		},
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")

		for server, config in pairs(opts.servers) do
			local capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			config.capabilities = capabilities

			lspconfig[server].setup(config)
		end
	end,
}
