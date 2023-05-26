return {
  {
    -- 实时预览，需要跳转到的指定行数的代码
    "nacro90/numb.nvim",
    event = "VeryLazy",
    config = function()
      require("numb").setup()
    end,
  },
}
