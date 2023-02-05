return {
  {
    -- 实时预览，需要跳转到的指定行数的代码
    "nacro90/numb.nvim",
    config = function()
      require("numb").setup()
    end,
  },

  -- 实时预览宏，norm命令的结果在内容里面的改动
  {
    "smjonas/live-command.nvim",
    -- live-command supports semantic versioning via tags
    -- tag = "1.*",
    config = function()
      require("live-command").setup({
        commands = {
          Norm = { cmd = "norm" },
        },
      })
    end,
  },

  -- 优化的复制粘贴
  {
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },

  -- 将代码展开或者合并成一行  :TSJToggle
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter" },
    config = function()
      require("treesj").setup({--[[ your config ]]
      })
    end,
  },
}
