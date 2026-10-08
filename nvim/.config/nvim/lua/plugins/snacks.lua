return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
		},
		picker = {
			layout = {
				fullscreen = true,
			},
		},
		lazygit = {
			win = {
				height = 0,
				width = 0,
			},
		},
		styles = {
			terminal = {
				keys = {
					term_normal = false,
				},
			},
		},
	},
	keys = {
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.grep_word()
			end,
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
		},
		{
			"<leader>fd",
			function()
				Snacks.picker.diagnostics()
			end,
		},
		{
			"<leader>fo",
			function()
				Snacks.picker.lsp_symbols()
			end,
		},
	},
}
