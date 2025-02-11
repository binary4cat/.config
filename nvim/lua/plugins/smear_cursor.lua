return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = false,
    -- Faster smear
    cursor_color = "#ff8800",
    stiffness = 0.9,
    trailing_stiffness = 0.1,
    trailing_exponent = 5,
    hide_target_hack = true,
    gamma = 1,
  },
}
