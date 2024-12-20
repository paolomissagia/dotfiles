return {
	"saghen/blink.cmp",
	version = "v0.*",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local blink = require("blink.cmp")

		blink.setup({
			keymap = {
				preset = "default",
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
			},
			signature = {
				enabled = false,
			},
			completion = {
				accept = {
					auto_brackets = {
						enabled = true,
					},
				},
			},
		})
	end,
}
