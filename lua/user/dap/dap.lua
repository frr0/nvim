local dap_install = require("dap-install")

dap_install.setup({
	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

dap_install.config("python", {})
dap_install.config("ccppr_vsc", {})
dap_install.config("codelldb", {})
dap_install.config("ccppr_lldb", {})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='➡️', texthl='', linehl='', numhl=''})

