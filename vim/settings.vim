syntax on
set syntax=c
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=2
set ruler
set shiftwidth=2
set hlsearch
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent
set belloff=all
set noerrorbells
set vb t_vb=
set spelllang=en_us
set mouse=a  " mouse support
autocmd FileType make setlocal noexpandtab "extremely important if you want to use spaces over tabs"
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType vim let b:vcm_tab_complete = 'vim'
autocmd FileType markdown,txt setlocal complete+=k/usr/share/dict/words
colorscheme onedark
