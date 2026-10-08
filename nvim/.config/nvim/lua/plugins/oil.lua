return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	opts = {
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["q"] = "actions.close",
		},
		float = {
			border = "none",
			override = function(conf)
				conf.width = 1000
				conf.height = 1000

				return conf
			end,
		},
	},
	keys = {
		{
			"<leader>e",
			function()
				require("oil").toggle_float()
			end,
		},
	},
}
