return {
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.left = {
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          pinned = true,
          open = function()
            vim.api.nvim_input("<esc><space>e")
          end,
          size = { height = 0.5 },
        },
        { title = "Neotest Summary", ft = "neotest-summary" },
        {
          title = "Neo-Tree Git",
          ft = "neo-tree",

          filter = function(buf)
            return vim.b[buf].neo_tree_source == "git_status"
          end,
          pinned = true,
          open = "Neotree position=right git_status",
        },
        {
          title = "Neo-Tree Buffers",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "buffers"
          end,

          pinned = true,
          open = "Neotree position=top buffers",
        },
        "neo-tree",
      }
      opts.right = {
        {
          ft = "Outline",
          pinned = true,
          open = "SymbolsOutline",
        },
      }
    end,
  },
}
