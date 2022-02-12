local dap = require('dap')
dap.adapters.cppdbg = {
  type = 'executable',
  command = '~/extension/debugAdapters/bin/OpenDebugAD7',
}
