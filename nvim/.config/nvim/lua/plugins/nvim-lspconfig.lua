return {
	"neovim/nvim-lspconfig",
	config = function()
		local servers = {
			lua_ls = {},
			basedpyright = {
                settings = {
                    basedpyright = {
                        typeCheckingMode = "off"
                    }
                }
            },
			ruby_lsp = {},
			ts_ls = {},
			html = {},
			cssls = {},
		}

		for server, config in pairs(servers) do
			vim.lsp.config(server, config)
		end

		vim.lsp.enable(vim.tbl_keys(servers))
	end,
}
