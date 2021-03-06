local dap_status, dap = pcall(require, "dap")

if not dap_status then
	vim.notify("Please Install 'nvim-dap'")
	return
end

dap.adapters.cppdbg = {
  type = 'executable',
  command = os.getenv('HOME') .. '/.local/share/nvim/dapinstall/ccppr_vsc/cpptools-linux/extension/bin/OpenDebugAD7',
}


--dap.configurations.cpp = {
  --{
    --name = 'Attach to gdbserver',
    --type = 'cppdbg',
    --request = 'launch',
    --MIMode = 'gdb',
    --miDebuggerServerAddress = 'localhost:1234',
    --miDebuggerPath = '/usr/bin/gdb',
    --cwd = '${workspaceFolder}',
    --program = function()
      --return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --end,
  --},
--}

--dap.adapters.lldb = {
	--type = "executable",
	--attach = { pidProperty = "pid", pidSelect = "ask" },
	--command = "lldb-vscode",
	--name = "lldb",
	--env = { LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES" },
--}

--dap.configurations.cpp = {
	--{
		--name = "Launch",
		--type = "lldb",
		--request = "launch",
		--program = function()
			--return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		--end,
		--cwd = "${workspaceFolder}",
		--stopOnEntry = false,
		--args = {},

		---- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
		----
		----    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
		----
		---- Otherwise you might get the following error:
		----
		----    Error on launch: Failed to attach to the target process
		----
		---- But you should be aware of the implications:
		---- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
		--runInTerminal = false,
	--},
--}

--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp

-- adapter definition
--dap.adapters.cppdbg = {
        --id = "cppdbg",
        --type = "executable",
        ----command = {os.getenv("HOME") .. "/.vscode-server/extensions/ms-vscode.cpptools-1.8.4/debugAdapters/bin/OpenDebugAD7"},
        --command = "~/.local/share/nvim/dapinstall/ccppr_vsc/cpptools-linux/extension/bin/OpenDebugAD7",
        ----command = {os.getenv("HOME") .. "/.local/share/nvim/dapinstall/ccppr_vsc/cpptools-linux/extension/bin/OpenDebugAD7"},
--}

--dap.configurations.cpp = {
        --{
                --name = "(gdb) Launch file",
                --type = "cppdbg",
                --request = "launch",
                --program = function()
                        --return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                --end,
                --cwd = "${workspaceFolder}",
                --stopOnEntry = true,
                --setupCommands = {
                        --{
                                --text = "-enable-pretty-printing",
                                --description = "enable pretty printing",
                                --ignoreFailures = false,
                        --},
                --},
                ---- MIMode = "gdb",
                ---- miDebuggerPath = "/usr/bin/gdb",
        --},
        ---- {
        ----      name = "Attach to gdbserver :1234",
        ----      type = "cppdbg",
        ----      request = "launch",
        ----      MIMode = "gdb",
        ----      miDebuggerServerAddress = "localhost:1234",
        ----      miDebuggerPath = "/usr/bin/gdb",
        ----      cwd = "${workspaceFolder}",
        ----      program = function()
        ----              return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        ----      end,
        ---- },
--}

--dap.configurations.c = dap.configurations.cpp
