local status_ok_fold, fold = pcall(require, "pretty-fold")
if not status_ok_fold then
	return
end

local status_ok_preview, preview = pcall(require, "pretty-fold.preview")
if not status_ok_preview then
	return
end

fold.setup({
	fill_char = "•",
	sections = {
		left = {
			"content",
		},
		right = {
			" ",
			"number_of_folded_lines",
			": ",
			"percentage",
			" ",
			function(config)
				return config.fill_char:rep(3)
			end,
		},
	},

	remove_fold_markers = true,

	-- Keep the indentation of the content of the fold string.
	keep_indentation = true,

	-- Possible values:
	-- "delete" : Delete all comment signs from the fold string.
	-- "spaces" : Replace all comment signs with equal number of spaces.
	-- false    : Do nothing with comment signs.
	process_comment_signs = "spaces",

	-- Comment signs additional to the value of `&commentstring` option.
	comment_signs = {},

	-- List of patterns that will be removed from content foldtext section.
	stop_words = {
		"@brief%s*", -- (for C++) Remove '@brief' and all spaces after.
	},

	add_close_pattern = true,
	matchup_patterns = {
		{ "{", "}" },
		{ "%(", ")" }, -- % to escape lua pattern char
		{ "%[", "]" }, -- % to escape lua pattern char
		{ "if%s", "end" },
		{ "do%s", "end" },
		{ "for%s", "end" },
	},
})

preview.setup({
	key = "h", -- 'h', 'l' or nil (if you would like to set your own keybinding)

	-- 'none', "single", "double", "rounded", "solid", 'shadow' or table
	-- For explanation see: :help nvim_open_win()
	border = { " ", "", " ", " ", " ", " ", " ", " " },
})
