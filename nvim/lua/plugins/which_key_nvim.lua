return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      -- opts.defaults["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
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
      -- Glow
      opts.defaults["<leader>cM"] = { "<cmd>Glow<CR>", "Markdown Preview" }
    end,
  },
}
