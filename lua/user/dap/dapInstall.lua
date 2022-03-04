local dap_install = require("dap-install")

dap_install.setup({
	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

dap_install.config("python", {})
dap_install.config("ccppr_vsc", {})
dap_install.config("codelldb", {})
dap_install.config("ccppr_lldb", {})

--dap_install.adapters.cpptools = {
  --type = 'executable',
  --command = os.getenv('HOME') .. '/.local/share/nvim/dapinstall/ccppr_vsc/cpptools-linux/extension/bin/OpenDebugAD7',
--}

