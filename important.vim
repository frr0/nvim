set number
set relativenumber
set mouse=a
set ignorecase
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set spelllang=it,en

" save and exit
nnoremap ,z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :q! <cr>

" move
nnoremap <Tab> gt
nnoremap <S-Tab> gT 
nnoremap <S-l> :bnext <cr>
nnoremap <S-h> :bprevious <cr>

nnoremap <space>v :bn <cr>
nnoremap <space>b :tabe <cr>
nnoremap <space>n gg=G
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

vnoremap < <gv
vnoremap > >gv

nnoremap \ 0
vmap 1 0
nnoremap 0 $
vmap 0 $

" altro
nnoremap <space>m :make <cr>
nnoremap gc :%s/

" yank
nnoremap Y y$
nnoremap yt 0y$
vnoremap <C-c> "+y

" brackets
inoremap " ""<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>
