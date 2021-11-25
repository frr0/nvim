" ████████████████████████████████████████████████████████████████████████████████████████████
" ██ init.vim                                                                               ██
" ████████████████████████████████████████████████████████████████████████████████████████████

let g:startify_custom_header = [ "",
	\ "                                                     ",
	\ "	███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗	",
	\ "	████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ",
	\ "	██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ",
	\ "	██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ",
	\ "	██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║	",
	\ "	╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝	",
	\ "                                                     ",
	\ ]

" ████████████████████████████████████████████████████████████████████████████████████████████
" ██ Plugins                                                                                ██
" ████████████████████████████████████████████████████████████████████████████████████████████

call plug#begin(stdpath('data') . 'vimplug')

  source ~/.config/nvim/vim/telescope.vim                  "file founder
  source ~/.config/nvim/vim/treesitter.vim                 "highlight, indent
  source ~/.config/nvim/vim/snippets.vim                   "code snippets
  source ~/.config/nvim/vim/coc.vim                        "autocomplete, syntax errors
  source ~/.config/nvim/vim/startify.vim                   "start page
  source ~/.config/nvim/vim/vimtex.vim                     "latex
  source ~/.config/nvim/vim/vimspector.vim                 "debugger
  source ~/.config/nvim/vim/which-key.vim                  "menu keys
  source ~/.config/nvim/vim/nerdcommenter.vim              "comment at once
  source ~/.config/nvim/vim/rainbow.vim                    "colored brackets
  source ~/.config/nvim/vim/git.vim                        "git stuff
  source ~/.config/nvim/vim/markdown.vim                   "markdown preview
  source ~/.config/nvim/vim/tmux.vim                       "tmux 'panes' navigation
  source ~/.config/nvim/vim/lsp.vim                        "lsp
  source ~/.config/nvim/vim/java.vim                       "java
  source ~/.config/nvim/vim/line.vim                       "java
  source ~/.config/nvim/vim/yankring.vim                   "yank memory

call plug#end()

" ████████████████████████████████████████████████████████████████████████████████████████████
" ██ Lua                                                                                    ██
" ████████████████████████████████████████████████████████████████████████████████████████████

lua <<EOF
  require("lsp")
  require("statusbar")
EOF

" ████████████████████████████████████████████████████████████████████████████████████████████
" ██ basic settings                                                                         ██
" ████████████████████████████████████████████████████████████████████████████████████████████

  source ~/.config/nvim/vim/settings.vim

" ████████████████████████████████████████████████████████████████████████████████████████████
" ██ Mappings                                                                               ██
" ████████████████████████████████████████████████████████████████████████████████████████████

  source ~/.config/nvim/vim/mappings.vim
