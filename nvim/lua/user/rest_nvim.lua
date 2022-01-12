local status_ok, restnvim = pcall(require, "rest-nvim")
if not status_ok then
	return
end

restnvim.setup({
	-- Open request results in a horizontal split
	result_split_horizontal = false,
	-- Skip SSL verification, useful for unknown certificates
	skip_ssl_verification = false,
	-- Highlight request on run
	highlight = {
		enabled = true,
		timeout = 150,
	},
	-- Jump to request line on run
	jump_to_request = false,
})
