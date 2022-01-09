local status_ok, surround = pcall(require, "surround")
if not status_ok then
  return
end

surround.setup {
  mappings_style = "surround",
  context_offset = 100,
  load_autogroups = false,
  map_insert_mode = true,
  quotes = {"'", '"'},
  brackets = {"(", '{', '['},
  space_on_closing_char = false,
  pairs = {
    nestable = {{"(", ")"}, {"[", "]"}, {"{", "}"}},
    linear = {{"'", "'"}, {"`", "`"}, {'"', '"'}}
  },
  prefix = "s"
}
