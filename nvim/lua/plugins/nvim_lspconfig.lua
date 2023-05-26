return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local server_opts = {
        -- The LSP server configuration that needs to be configured is loaded here
        gopls = require("plugins.extras.lsp.server.gopls"),
        bufls = require("plugins.extras.lsp.server.bufls"),
        -- clangd = require("plugins.extras.lsp.server.clangd"),
      }
      if type(opts.servers) == "table" then
        opts.servers = vim.list_extend(opts.servers, server_opts)
      end

      -- lsp timeout error
      opts.format.timeout_ms = 10000

      -- fold only by indentation
      opts.capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      }
    end,
  },
}
