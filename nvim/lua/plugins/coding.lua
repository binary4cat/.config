return {
  -- golang
  {
    "ray-x/go.nvim",
    lazy = true,
    config = function()
      require("go").setup()
    end,
  },
}
