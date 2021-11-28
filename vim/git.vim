Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }                    "git ui
Plug 'tpope/vim-fugitive'                                                    "git stufh
Plug 'airblade/vim-gitgutter'                                                "git stuff

" vim-gitgutter used to do this by default:
highlight! link SignColumn LineNr

" or you could do this:
highlight SignColumn guibg=red ctermbg=red

" Vim 7.4.2201
set signcolumn=yes

let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_removed_above_and_below = '┃'
let g:gitgutter_sign_modified_removed = '┃'

