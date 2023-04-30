return {
  {
    "rest-nvim/rest.nvim",
    event = "BufReadPre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          show_http_info = true,
          show_headers = true,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end,
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = ".env",
        custom_dynamic_variables = {},
        yank_dry_run = true,
      })
    end,
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
      -- rest.nvim
      opts.defaults["<leader>cR"] = {
        name = "+rest.nvim",
        r = { "<Plug>RestNvim", "Run the request under the cursor" },
        p = { "<Plug>RestNvimPreview", "Preview the request cURL command" },
        l = { "<Plug>RestNvimLast", "Re-run the last request" },
      }
      -- SinpRun https://michaelb.github.io/sniprun/sources/README.html
      opts.defaults["<leader>cS"] = {
        name = "+SinpRun",
        r = { "<cmd>SnipRun<CR>", "Run the code under the cursor" },
        p = { "<cmd>SnipReset<CR>", "Will kill everything Sniprun ran so far" },
        l = { "<cmd>SnipClose<CR>", "Close the SinpRun window" },
      }
    end,
  },
}
