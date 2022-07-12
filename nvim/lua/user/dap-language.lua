local dapgo_status_ok, dapgo = pcall(require, "dap-go")
if not dapgo_status_ok then
	  return
end

dapgo.setup()
