local dap_install = require("dap-install")

dap_install.setup({
	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

dap_install.config("python", {})
dap_install.config("ccppr_lldb", {})
dap_install.config("codelldb", {})
dap_install.config("ccppr_vsc", {})
