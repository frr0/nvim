"========"
" Neovim "
"========"

call plug#begin(stdpath('data') . 'vimplug')
  source ~/.config/nvim/vim/plug.vim
  source ~/.config/nvim/vim/keymap.vim
  source ~/.config/nvim/vim/vimspector.vim
call plug#end()

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
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.whichkey"
require "user.autocommands"
require "user.statusbar"
require "user.indentline"
--require "user.alpha"
--require "user.comment"
--require "user.keymaps"
EOF

colorscheme onedark
