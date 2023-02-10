local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"CaskaydiaCove NF",
		"Sarasa UI TC Semibold",
	}),
	window_decorations = "RESIZE",
	font_size = 11,
	color_scheme = "tokyonight",
}
