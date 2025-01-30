return {
  {
    "nvim-neotest/neotest",
    opts = {
      -- Can be a list of adapters like what neotest expects,
      -- or a table of adapter names, mapped to adapter configs.
      -- The adapter will then be automatically loaded with the config.
      -- Example for loading neotest-go with a custom config
      -- adapters = {
      --   ["neotest-go"] = {
      --     args = { "-tags=integration" },
      --   },
      -- },
    },
  },
}
