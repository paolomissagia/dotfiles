return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("n", "  > New file", "<cmd>ene<CR>"),
			dashboard.button("r", "  > Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("l", "󰒲  > Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("m", "󱁤  > Mason", "<cmd>Mason<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h<CR>"),
			dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
		}

		dashboard.section.footer.val = {
			[[ Success is the ability to go from failure to failure ]],
			[[           without losing your enthusiasm             ]],
			[[                                                      ]],
			[[                 Winston Churchill                    ]],
		}

		dashboard.opts.layout = {
			{ type = "padding", val = 8 },
			dashboard.section.header,
			{ type = "padding", val = 5 },
			dashboard.section.buttons,
			{ type = "padding", val = 4 },
			dashboard.section.footer,
		}

		alpha.setup(dashboard.opts)
	end,
}
