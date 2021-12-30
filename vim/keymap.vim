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
vnoremap <C-y> "+y

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

" tree

nnoremap <space>e :NvimTreeToggle <cr>

" Telescope

nnoremap <space>f :Telescope git_files <cr>
nnoremap <space>h :Telescope file_browser <cr>
nnoremap <space>f :Telescope git_files <cr>
nnoremap <space>f :Telescope git_files <cr>
nnoremap <space>r :Telescope <cr>


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
tnoremap <space>t <C-\><C-n>:call Term_toggl
