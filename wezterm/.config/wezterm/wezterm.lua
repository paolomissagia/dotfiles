local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night Moon"
config.enable_tab_bar = false
config.font_size = 10.5
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.font_size = 10
	config.window_decorations = "RESIZE"
	config.default_domain = "WSL:Fedora-41"
	config.default_cwd = "~"
end

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
