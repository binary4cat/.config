local lspconfig = require("lspconfig")

return {
	cmd = { "golangci-lint-langserver" },
	filetypes = { "go", "mod" },
	init_options = {
		command = { "golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json" },
	},
	root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
}
