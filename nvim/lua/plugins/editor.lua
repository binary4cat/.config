return {
  {
    -- 实时预览，需要跳转到的指定行数的代码
    "nacro90/numb.nvim",
    event = "VeryLazy",
    config = function()
      require("numb").setup()
    end,
  },

  -- 实时预览宏，norm命令的结果在内容里面的改动
  {
    "smjonas/live-command.nvim",
    -- live-command supports semantic versioning via tags
    -- tag = "1.*",
    event = "VeryLazy",
    config = function()
      require("live-command").setup({
        commands = {
          Norm = { cmd = "norm" },
        },
      })
    end,
  },

  -- 将代码展开或者合并成一行  :TSJToggle
  {
    "Wansmer/treesj",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter" },
    config = function()
      require("treesj").setup({ --[[ your config ]]
      })
    end,
  },

  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  -- add nvim-ufo
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "BufReadPost",
    opts = {},

    init = function()
      -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set("n", "zR", function()
        require("ufo").openAllFolds()
      end)
      vim.keymap.set("n", "zM", function()
        require("ufo").closeAllFolds()
      end)
    end,
  },
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

  -- 在相对行号和绝对行号之间自动切换
  {
    "sitiom/nvim-numbertoggle",
    event = "VeryLazy",
  },

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
