"========"
" Neovim "
"========"

call plug#begin(stdpath('data') . 'vimplug')

  source ~/.config/nvim/vim/telescope.vim                  "file founder
  source ~/.config/nvim/vim/treesitter.vim                 "highlight, indent
  source ~/.config/nvim/vim/snippets.vim                   "code snippets
  source ~/.config/nvim/vim/coc.vim                        "~/.config/nvim/coc-settings.json
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
  source ~/.config/nvim/vim/tree.vim                       "java
  source ~/.config/nvim/vim/yankring.vim                   "yank memory

call plug#end()

lua <<EOF
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
EOF


" stettings
"===================================


set number
set relativenumber
set mouse=a
set ignorecase
set hidden
set spelllang=en_us

set expandtab
set tabstop=2
set shiftwidth=2

set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent
set cursorline

colorscheme onedark
set t_Co=256
set background=dark

hi Normal ctermbg=16 guibg=#292C32
hi LineNr ctermbg=16 guibg=#292C32

syntax on



" mappings
"===================================


let g:mapleader=","


" save and exit

nnoremap <leader>z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :q! <cr>

nnoremap <space>S :mksession! .session.vim <cr>
nnoremap <space>O :so .session.vim <cr>

" move

nnoremap <Tab> gt
nnoremap <S-Tab> gT

nnoremap <space>v :bn <cr>
nnoremap <space>b :tabe <cr>

nnoremap \ 0
vmap 1 0
nnoremap 0 $
vmap 0 $

nnoremap <space>e :Vexplore

" makefile

nnoremap <space>m :make <cr>

nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>

" yank

nnoremap Y y$
nnoremap yt 0y$

" man

nnoremap gm :Man <cr>

" brackets

inoremap " ""<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>

vnoremap < <gv
vnoremap > >gv

" Terminal

let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <space>t :call Term_toggle(20)<cr>
tnoremap <space>t <C-\><C-n>:call Term_toggle(20)<cr>
