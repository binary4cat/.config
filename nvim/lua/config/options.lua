-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.lazyvim_prettier_needs_config = true

vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.foldcolumn = "0"

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.backup = true
  vim.opt.cmdheight = 0
  vim.opt.backupdir = vim.fn.stdpath("state") .. "/backup"
end

-- vim.g.node_host_prog = "/Users/folke/.pnpm-global/5/node_modules/neovim/bin/cli.js"
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

-- GUI config
vim.o.guifont =
  "FiraCode_Nerd_Font_Mono,CaskaydiaCove_Nerd_Font_Mono,JetBrainsMonoNL_NFM,Sarasa_UI_TC,Segoe_UI_Emoji,Noto_Color_Emoji,codicon_Regular:h11"

if vim.g.neovide then
  -- vim.g.neovide_transparency = 0.8
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_underline_automatic_scaling = true
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  -- vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
end
