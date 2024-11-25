return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			preset = {
				keys = {
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{
						icon = " ",
						key = "l",
						desc = "Leetcode",
						action = ":Leet",
					},
					{
						icon = "󱌣 ",
						key = "m",
						desc = "Mason",
						action = ":Mason",
					},
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		},
	},
}
