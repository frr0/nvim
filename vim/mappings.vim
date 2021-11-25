" ███████████████████████████████████████████████████████████████████████████████████████████████
" ██ Maps Normal                                                                               ██
" ███████████████████████████████████████████████████████████████████████████████████████████████

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-Tab> bNext

" ███████████████████████████████████████████████████████████████████████████████████████████████

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Make Y behave like the other capitals
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

nnoremap Y y$
nnoremap yt 0y$

" ███████████████████████████████████████████████████████████████████████████████████████████████
" Same for insert mode, including up down
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ███████████████████████████████████████████████████████████████████████████████████████████████

nnoremap <C-h> <C-w><left>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w><Right>

" ███████████████████████████████████████████████████████████████████████████████████████████████
nnoremap <nowait><C-y> <C-d>
nnoremap <space>gs :GitGutterBufferToggle<cr>
nnoremap <space>ss :windo set syntax=c<cr>
nnoremap gm :Man <cr>
"------------------------------------------------------------
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"------------------------------------------------------------
nnoremap <space>\ :Startify <CR>
" ███████████████████████████████████████████████████████████████████████████████████████████████
"------------------------------------------------------------
nnoremap <space>1 :w <CR> :!gcc -g % -o %< && ./%< <CR>
nnoremap <space>C :w <CR> :tabe term://gcc -g % -o %< && ./%< <CR>
nnoremap <space>P :wa <CR> :!python3 % <CR>
nnoremap <space>J :wa <CR> :!javac -g % && java %< <CR>
nnoremap <space>2 :wa <CR> :tabe term://javac -g % && java %< <CR>
map! <F4> :!./%<
map <F7> :w  <CR> :packadd termdebug <CR>
autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
nnoremap <F2> :below vertical terminal <CR>
nnoremap <space>T :NERDTreeToggle <CR>
nnoremap <space>v :bn <CR>
nnoremap <leader>. :bn <CR>
nnoremap <nowait><space>X :bd <CR>
" nnoremap <tab>  :BTags <CR>
nnoremap <space>y :Tagbar <CR>
nnoremap <C-Tab> gt
" ███████████████████████████████████████████████████████████████████████████████████████████████
"------------------------------------------------------------
" nnoremap <space>f :Files <CR>
" nnoremap <space>e :NERDTreeToggle <CR>
nnoremap <space>j :Lines <CR>
nnoremap <space>k :BCommits <CR>
nnoremap <space>b :tabe <CR>
nnoremap <space>w :vsp <CR>
nnoremap <space>i :split <CR>
nnoremap <space>sy :set spell<cr>
nnoremap <space>sn :set nospell<cr>
" ███████████████████████████████████████████████████████████████████████████████████████████████
nnoremap <silent> <space>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <space>* :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <space>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <space>_ :exe "resize " . (winwidth(0) * 2/3)<CR>
""------------------------------------------------------------
" ███████████████████████████████████████████████████████████████████████████████████████████████
"Git
" ███████████████████████████████████████████████████████████████████████████████████████████████
""------------------------------------------------------------
nnoremap <space>gt :! git add * <CR> ! git commit -m "%" <CR> ! git push <CR>
nnoremap <space>gb :Git Blame <CR>
nnoremap <space>ga :Git add . <CR>
nnoremap <space>gc :Git commit <CR>
nnoremap <space>gp :Git push <CR>
nnoremap <space>gl :GitGutterLineHighlightToggle <CR>
nnoremap <leader>e :!cat % <CR>
""------------------------------------------------------------
" ███████████████████████████████████████████████████████████████████████████████████████████████
"run
noremap <space>rv :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./program <CR>
""------------------------------------------------------------
nnoremap <space>M :wa <CR> :! make <CR>
nnoremap <space>n :wa <CR> :! make <CR>
nnoremap <M-v> :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
noremap <space>V :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./program <CR>
" ███████████████████████████████████████████████████████████████████████████████████████████████
nnoremap <space>rr :Telescope <CR>
nnoremap <space>rc :Telescope BCommits <CR>
nnoremap <space>rd :Telescope Lsp_definitions <CR>
nnoremap <space>ra :Telescope code_actions <CR>
nnoremap <space>rm :Telescope man_pages <CR>
nnoremap <space>rn :Telescope marks <CR>
" ███████████████████████████████████████████████████████████████████████████████████████████████
nnoremap <leader>n :noh <CR>
nnoremap <space>ò :noh <CR>
nnoremap <leader>s :set spell <CR>
nnoremap <space>S :mksession! .session.vim <CR>
nnoremap <space>O :so .session.vim <CR>
nnoremap <space>o :so% <CR>
nnoremap <space>7 :tabe term://./% <CR>

" ███████████████████████████████████████████████████████████████████████████████████████████████
" ██ Maps Insert                                                                               ██
" ███████████████████████████████████████████████████████████████████████████████████████████████

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"key
inoremap <silent><expr> <tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()

" ███████████████████████████████████████████████████████████████████████████████████████████████

" inoremap <esc> <Nop>

" inoremap <C-h> <left>
inoremap <M-h> <left>
" inoremap <C-j> <down>
inoremap <M-j> <down>
" inoremap <M-h> <s-left>
" inoremap <C-l> <right>
inoremap <M-l> <right>
" inoremap <C-k> <up>
inoremap <M-k> <up>
" inoremap <M-l> <s-right>
" Ctrl-j in insert mode: Move cursor down if autocomplete menu is closed
inoremap <expr> <c-j> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"
" Ctrl-k in insert mode: Move cursor up if autocomplete menu is closed
inoremap <expr> <c-k> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
"
" inoremap <C-h> <esc>hi
" inoremap <C-j> <esc>ji
" inoremap <C-k> <esc>ki
" inoremap <C-l> <esc>li

" ███████████████████████████████████████████████████████████████████████████████████████████████

inoremap " ""<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>

" ███████████████████████████████████████████████████████████████████████████████████████████████

inoremap ` ``````<left><left><left>
inoremap ~ ~~~~<left><left>
inoremap ° **<left>
inoremap °° ****<left><left>
inoremap § ```mermaid<cr>graph LR<cr>  a -->b<cr>```
inoremap <M-i> ![image](support/){width=70%}<left><left><left><left><left><left><left><left><left><left><left><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" ███████████████████████████████████████████████████████████████████████████████████████████████
" ██ Maps Visual                                                                               ██
" ███████████████████████████████████████████████████████████████████████████████████████████████

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Paste replace visual selection without copying it
vnoremap <leader>p "_dP

" ███████████████████████████████████████████████████████████████████████████████████████████████
" ██ Maps Terminal                                                                             ██
" ███████████████████████████████████████████████████████████████████████████████████████████████

"Toggle terminal"
"-----------------------------------------------------------------------------------------------------"
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


nnoremap <space>tt :call Term_toggle(10)<cr>
tnoremap <leader>tt <C-\><C-n>:call Term_toggle(10)<cr>

noremap <space>m  :wa <CR> <C-\><C-n>:tabe term://make<CR>
nnoremap <silent> <space>gg :wa <CR> :LazyGit<CR>
noremap <silent> <space> :WhichKey '<Space>'<CR>
noremap <silent> <leader> :WhichKey ','<CR>
nnoremap <silent> <space>g :WhichKey 'g'<CR>

" ███████████████████████████████████████████████████████████████████████████████████████████████
" ██ Maps Command                                                                              ██
" ███████████████████████████████████████████████████████████████████████████████████████████████

" Ctrl-h / l: Move left/right by word in command mode
cnoremap <c-h> <s-left>
cnoremap <c-l> <s-right>




" Delete current buffer
" nmap <space>bd :bdelete<CR>

nnoremap <S-\> :BTags <CR>
inoremap <silent><tab> <C-n>
nnoremap <space>x :wa<cr>
nnoremap <space>z :xa<cr>
nnoremap ,z :xa<cr>
nnoremap <space>q :wq<cr>
nnoremap <nowait><space>s :wa<cr>
nnoremap <space>0 :q!<cr>
imap <nowait><space> <space>
imap <tab> <C-n>
nnoremap - ,
" nnoremap \ _
nnoremap <nowait>\ 0
vmap 1 0
nnoremap 0 $
vmap 0 $
nnoremap <C-y> <Nop>
tnoremap <C-c> <Nop>
"-----------------------------------------------------------------------------------------------------"
imap <M-b> public class First {<CR>public static void main(String[] args) {<CR>System.out.println("Hello OOP!");<CR>}<CR>}
"Makefile---------------------------------------------------------------------------------------------"
noremap <M-m> :e %:h/Makefile<CR>
" imap <M-j> compile:<CR>javac %.java && java %
noremap <M-g> :wa <CR> :!javac % && java %< <CR>
"------------------------------------------------------------
vmap <C-C> "+y
"------------------------------------------------------------
"tagbar
"------------------------------------------------------------
nnoremap yn :TagbarJumpNext <CR>
nnoremap yp :TagbarJumpPrev <CR>
"------------------------------------------------------------


"
noremap <silent> <space> :WhichKey '<Space>'<CR>

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

set cursorline
tnoremap <Esc> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
" tnoremap <C-c> <C-\><C-n>:q!<CR>
" tnoremap <C-c> <C-\><C-n>

" set leader key to ,
let g:mapleader=","

" ███████████████████████████████████████████████████████████████████████████████████████████████

set nolist
tnoremap <C-c> <Nop>
nnoremap <M-c> :! kill -SIGINT
noremap <silent> <space> :WhichKey '<Space>'<CR>
inoremap <C-l> <right>
let g:scrollLock = 0
