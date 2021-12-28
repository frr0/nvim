"========"
" Neovim "
"========"

call plug#begin(stdpath('data') . 'vimplug')
  source ~/.config/nvim/vim/plug.vim
  source ~/.config/nvim/vim/keymap.vim
call plug#end()

lua <<EOF
require "user.plugins"
require "user.cmp"
require "user.option"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.nvim-tree"
require "user.statusbar"
require "user.whichkey"
EOF
