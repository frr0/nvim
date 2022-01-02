"========"
" Neovim "
"========"

source ~/.config/nvim/vim/keymap.vim

lua <<EOF
require "user.options"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.gitsigns"
require "user.nvim-tree"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.whichkey"
require "user.autocommands"
require "user.statusbar"
require "user.indentline"
require "user.bufferline"
--require "user.lualine"
EOF
