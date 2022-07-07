local _COLORSCHEME_ = "tokyonight"
local _TRANSPARENT_ = false

local function enable_transparent_mode()
	vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi EndOfBuffer ctermbg=none guibg=none")
	vim.cmd("let &fcs='eob: '")
end

if _TRANSPARENT_ then
	enable_transparent_mode()
end

if _COLORSCHEME_ == "tokyonight" then
	vim.g.tokyonight_style = "night"
	vim.g.tokyonight_terminal_colors = true
	vim.g.tokyonight_italic_comments = false
	vim.g.tokyonight_italic_keywords = false
	vim.g.tokyonight_lualine_bold = true
	vim.g.tokyonight_transparent_sidebar = true
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. _COLORSCHEME_)
if not status_ok then
	vim.notify("colorscheme " .. _COLORSCHEME_ .. " not found!")
	return
end
