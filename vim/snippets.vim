Plug 'sirver/ultisnips'                                                      "code snippets
Plug 'honza/vim-snippets'                                                    "code snippets

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"snipp"
" NOTE: You can use other key to expand snippet.

" Expand
" imap <expr> <M-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<M-j>'
" smap <expr> <M-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<M-j>'
"
" " Expand or jump
" imap <expr> <M-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<M-l>'
" smap <expr> <M-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<M-l>'

" Jump forward or backward
imap <expr> <tab-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <tab-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <c-tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']
