local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- Async formatting
_G.formatting = function(bufnr)
	bufnr = tonumber(bufnr) or vim.api.nvim_get_current_buf()

	vim.lsp.buf_request(
		bufnr,
		"textDocument/formatting",
		{ textDocument = { uri = vim.uri_from_bufnr(bufnr) } },
		function(err, res)
			if err then
				local err_msg = type(err) == "string" and err or err.message
				-- you can modify the log message / level (or ignore it completely)
				vim.notify("formatting: " .. err_msg, vim.log.levels.WARN)
				return
			end

			-- don't apply results if buffer is unloaded or has been modified
			if not vim.api.nvim_buf_is_loaded(bufnr) or vim.api.nvim_buf_get_option(bufnr, "modified") then
				return
			end

			if res then
				vim.lsp.util.apply_text_edits(res, bufnr)
				vim.api.nvim_buf_call(bufnr, function()
					vim.cmd("silent noautocmd update")
				end)
			end
		end
	)
end

null_ls.setup({
	debug = false,
	on_attach = function(client)
		if client.supports_method("textDocument/formatting") then
			-- wrap in an augroup to prevent duplicate autocmds
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePost <buffer> lua formatting(vim.fn.expand("<abuf>"))
            augroup END
            ]])
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
		diagnostics.codespell.with({
			filetypes = {},
			command = "codespell",
			args = { "-" },
		}),
		diagnostics.shellcheck.with({
			filetypes = { "sh" },
			command = "shellcheck",
			args = { "--format", "json1", "--source-path=$DIRNAME", "--external-sources", "-" },
		}),
	},
})
