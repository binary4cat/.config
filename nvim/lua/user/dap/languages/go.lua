local M = {}

M.configuration = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
}

M.adapter = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. "/mason/bin/dlv",
    args = { "dap", "-l", "127.0.0.1:${port}" },
  },
}

return M
