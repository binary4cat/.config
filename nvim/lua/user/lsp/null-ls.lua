local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Async formatting

null_ls.setup({
	debug = false,
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
	sources = {
		---- formatting ----
		formatting.goimports.with({
			filetypes = { "go" },
			command = "goimports",
			args = {},
		}),
		formatting.prettier.with({
			command = "prettier",
			args = { "--stdin-filepath", "$FILENAME" },
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"yml",
				"toml",
				"markdown",
				"graphql",
			},
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
			dynamic_command = require("null-ls.helpers.command_resolver").from_node_modules,
		}),
		formatting.black.with({
			extra_args = { "--fast" },
		}),
		formatting.stylua.with({
			filetypes = { "lua" },
			command = "stylua",
			args = { "-s", "-" },
		}),
		formatting.clang_format.with({
			filetypes = { "c", "cpp", "cs", "java" },
			command = "clang-format",
			args = {},
		}),
		formatting.fish_indent.with({
			filetypes = { "fish" },
			command = "fish_indent",
			args = {},
		}),
		formatting.shfmt.with({
			filetypes = { "sh" },
			command = "shfmt",
			args = { "-filename", "$FILENAME" },
		}),

		---- diagnostics----
		-- diagnostics.flake8
		diagnostics.golangci_lint.with({
			filetypes = { "go" },
			command = "golangci-lint",
			args = {
				"run",
				"-c",
				vim.fn.expand("~/.config/nvim/lua/user/lsp/linter_config/golangci.yaml"),
				"--fix=false",
				"--fast",
				"--out-format=json",
				"$DIRNAME",
				"--path-prefix",
				"$ROOT",
			},
		}),
		diagnostics.shellcheck.with({
			filetypes = { "sh" },
			command = "shellcheck",
			args = { "--format", "json1", "--source-path=$DIRNAME", "--external-sources", "-" },
		}),
	},
})
