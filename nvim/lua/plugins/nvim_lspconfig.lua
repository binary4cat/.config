return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- lsp timeout error
      opts.format.timeout_ms = 10000

      -- fold only by indentation
      opts.capabilities.textDocument = {
        foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true,
        },
      }

      opts.inlay_hints.enabled = false
    end,
  },
}
