source ~/.config/nvim/keymap.vim

lua <<EOF
require "user.options"
--require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.dap"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.gitsigns"
require "user.nvim-tree"
require "user.lualine"
require "user.bufferline"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.whichkey"
require "user.autocommands"
require "user.statusbar"
require('dap.ext.vscode').load_launchjs()
EOF
