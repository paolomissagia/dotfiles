local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "tokyonight_moon"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 10
config.hide_tab_bar_if_only_one_tab = true
config.default_domain = "WSL:Ubuntu-20.04"
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
