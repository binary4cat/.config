local status_ok, golang = pcall(require, "go")
if not status_ok then
  return
end

golang.setup {}

require("go.format").goimport()

vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
vim.api.nvim_exec([[ autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)]], false)
