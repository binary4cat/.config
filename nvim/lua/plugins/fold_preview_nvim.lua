return {
  {
    "anuvyklack/fold-preview.nvim",
    event = "BufReadPost",
    dependencies = { "anuvyklack/keymap-amend.nvim" },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "*" },
        callback = function()
          -- Because the l key conflicts with the alpha plugin, the case of non-loading alpha is handled here
          if not vim.bo.ft == "alpha" then
            require("lazy").load({ plugins = { "fold-preview.nvim" } })
          end
        end,
      })
    end,
    config = function()
      require("fold-preview").setup({
        -- Your configuration goes here.
      })
    end,
  },
}
