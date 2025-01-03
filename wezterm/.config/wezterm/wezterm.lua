local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 10
config.color_scheme = "Tokyo Night Moon"
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false
config.default_domain = "WSL:Ubuntu-24.04"
config.default_cwd = "~"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
