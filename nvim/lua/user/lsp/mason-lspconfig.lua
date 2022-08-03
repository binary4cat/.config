local status_mason_lspconf_ok, mason_lspconf = pcall(require, "mason-lspconfig")
if not status_mason_lspconf_ok then
	return
end

local status_lspconf_ok, lspconf = pcall(require, "lspconfig")
if not status_lspconf_ok then
	return
end

mason_lspconf.setup({
	ensure_installed = {
		"dockerfile-language-server",
		"gopls",
	},
	automatic_installation = false,
})

mason_lspconf.setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		local opts = {
			on_attach = require("user.lsp.handlers").on_attach,
			capabilities = require("user.lsp.handlers").capabilities,
		}

		if server_name == "jsonls" then
			local jsonls_opts = require("user.lsp.settings.jsonls")
			opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
		end

		if server_name == "sumneko_lua" then
			local sumneko_opts = require("user.lsp.settings.sumneko_lua")
			opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
		end

		if server_name == "gopls" then
			local gopls_opts = require("user.lsp.settings.gopls")
			opts = vim.tbl_deep_extend("force", gopls_opts, opts)
		end

		if server_name == "remark_ls" then
			local remark_opts = require("user.lsp.settings.remark_ls")
			opts = vim.tbl_deep_extend("force", remark_opts, opts)
		end

		lspconf[server_name].setup(opts)
	end,
	-- Next, you can provide targeted overrides for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	-- ["rust_analyzer"] = function()
	-- 	lspconf.setup({})
	-- end,
})
