return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      -- a list of all tools you want to ensure are installed upon
      -- start; they should be the names Mason uses for each tool
      ensure_installed = require("plugins.extras.lsp.mason.installer"),
      -- if set to true this will check each tool for updates. If updates
      -- are available the tool will be updated. This setting does not
      -- affect :MasonToolsUpdate or :MasonToolsInstall.
      -- Default: false
      auto_update = false,
      -- automatically install / update on startup. If set to false nothing
      -- will happen on startup. You can use :MasonToolsInstall or
      -- :MasonToolsUpdate to install tools and check for updates.
      -- Default: true
      run_on_start = false,
      -- set a delay (in ms) before the installation starts. This is only
      -- effective if run_on_start is set to true.
      -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
      -- Default: 0
      start_delay = 3000, -- 3 second delay
    },
    lazy = true,
    config = function(_, opts)
      require("mason-tool-installer").setup(opts)
    end,
  },

  -- null-ls custom config.
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      local nls_diagnostics = nls.builtins.diagnostics
      local nls_formatting = nls.builtins.formatting
      local diagnostics = {
        -- 需要增加的linter加载这里
        nls_diagnostics.golangci_lint.with(require("plugins.extras.lsp.null-ls.diagnostics.golangci_lint")),
      }
      local formatting = {
        -- 需要增加的formatter加载这里
        nls_formatting.goimports.with(require("plugins.extras.lsp.null-ls.formatting.goimports")),
      }
      if type(opts.sources) == "table" then
        opts.sources = vim.list_extend(opts.sources, diagnostics)
        opts.sources = vim.list_extend(opts.sources, formatting)
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local server_opts = {
        -- 需要配置的LSP服务器配置，加载在这里
        gopls = require("plugins.extras.lsp.server.gopls"),
      }
      if type(opts.servers) == "table" then
        opts.servers = vim.list_extend(opts.servers, server_opts)
      end
    end,
  },
}
