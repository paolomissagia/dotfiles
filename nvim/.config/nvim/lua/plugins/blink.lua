return {
	"saghen/blink.cmp",
	version = "v0.*",
	config = function()
		local blink = require("blink.cmp")

		blink.setup({
			keymap = { preset = "default" },
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
		})
	end,
}
