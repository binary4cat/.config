return {
  -- 根据行长度自动显示或隐藏行长度标尺
  {
    "m4xshen/smartcolumn.nvim",
    event = "BufReadPost",
    config = function()
      require("smartcolumn").setup({
        colorcolumn = "120",
        disabled_filetypes = { "help", "text", "markdown", "NeoTree", "lazy", "mason", "help" },
        custom_colorcolumn = {},
        scope = "window",
      })
    end,
  },
}
