local lspconfig = require("lspconfig")

return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gotmpl" },
	root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
	settings = {
		gopls = {
			allExperiments = true,
			experimentalUseInvalidMetadata = true,
			gofumpt = true,
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			usePlaceholders = true,
		},
	},
}
