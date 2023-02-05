return {
  -- golang
  {
    "ray-x/go.nvim",
    lazy = true,
    config = function()
      require("go").setup()
    end,
  },

  -- YAML
  {
    "someone-stole-my-name/yaml-companion.nvim",
    lazy = true,
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("telescope").load_extension("yaml_schema")
    end,
  },
}
