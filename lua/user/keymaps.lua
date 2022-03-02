--local opts = { noremap = true, silent = true }

--local term_opts = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap
map({ "n", "<F4>", ":lua require('dapui').toggle()<CR>" })
map({ "n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>" })
map({ "n", "<F9>", ":lua require('dap').continue()<CR>" })

map({ "n", "<F1>", ":lua require('dap').step_over()<CR>" })
map({ "n", "<F2>", ":lua require('dap').step_into()<CR>" })
map({ "n", "<F3>", ":lua require('dap').step_out()<CR>" })

map({ "n", "<Leader>dsc", ":lua require('dap').continue()<CR>" })
map({ "n", "<Leader>dsv", ":lua require('dap').step_over()<CR>" })
map({ "n", "<Leader>dsi", ":lua require('dap').step_into()<CR>" })
map({ "n", "<Leader>dso", ":lua require('dap').step_out()<CR>" })

map({ "n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>" })
map({ "v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>" })

map({ "n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>" })
map({ "n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>" })

map({ "n", "<Leader>dro", ":lua require('dap').repl.open()<CR>" })
map({ "n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>" })

map({ "n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>" })
map({ "n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>" })
map({ "n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>" })

map({ "n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>" })
map({ "n", "<Leader>di", ":lua require('dapui').toggle()<CR>" })
--vim.api.nvim_command([[
--let g:mapleader=","

--" save and exit

--nnoremap <leader>z :wqa <cr>
--nnoremap <space>s :wa <cr>
--nnoremap <space>0 :q! <cr>
--nnoremap <space>9 :bdelete <cr>

--nnoremap <space>S :mksession! .session.vim <cr>
--nnoremap <space>O :so .session.vim <cr>

--" move

--nnoremap <Tab> gt
--nnoremap <S-Tab> gT
--nnoremap <S-l> :bnext <cr>
--nnoremap <S-h> :bprevious <cr>

--nnoremap <space>v :bn <cr>
--nnoremap <space>b :tabe <cr>

--nnoremap <space>n gg=G

--nnoremap <c-h> <c-w>h
--nnoremap <c-j> <c-w>j
--nnoremap <c-k> <c-w>k
--nnoremap <c-l> <c-w>l

--nnoremap \ 0
--vmap 1 0
--nnoremap 0 $
--vmap 0 $

--nnoremap <space>e :Vexplore

--" makefile

--nnoremap <space>m :make <cr>

--nnoremap <space>w :vsp <cr>
--nnoremap <space>i :split <cr>

--" yank

--nnoremap Y y$
--nnoremap yt 0y$
--vnoremap <C-c> "+y

--" man

--nnoremap gm :Man <cr>

--" brackets

--inoremap " ""<left>
--inoremap " ""<left>
--inoremap ' ''<left>
--inoremap ( ()<left>
--inoremap [ []<left>
--inoremap { {}<left>
--inoremap { {}<left>

--vnoremap < <gv
--vnoremap > >gv

--" tree

--nnoremap <space>e :NvimTreeToggle <cr>

--" Telescope

--nnoremap <space>f :Telescope git_files <cr>
--nnoremap <space>h :Telescope file_browser <cr>
--nnoremap <space>f :Telescope git_files <cr>
--nnoremap <space>f :Telescope git_files <cr>
--nnoremap <space>r :Telescope <cr>


--" Terminal

--let g:term_buf = 0
--let g:term_win = 0

--function! Term_toggle(height)
  --if win_gotoid(g:term_win)
    --hide
  --else
    --botright new
    --exec "resize " . a:height
    --try
      --exec "buffer " . g:term_buf
    --catch
      --call termopen($SHELL, {"detach": 0})
      --let g:term_buf = bufnr("")
    --endtry
    --startinsert!
    --let g:term_win = win_getid()
  --endif
--endfunction


--nnoremap <leader>t :call Term_toggle(20)<cr>
--tnoremap <leader>t <C-\><C-n>:call Term_toggl


--"Vimspector
--let g:vimspector_enable_mappings = 'HUMAN'
--" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

--nnoremap <space>du :call vimspector#Launch()<CR>
--nnoremap <F5> :call vimspector#Launch()<CR>
--nnoremap <space>dx :VimspectorReset<CR>
--nnoremap <space>de :VimspectorEval
--nnoremap <space>dw :VimspectorWatch
--nnoremap <space>do :VimspectorShowOutput
--let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

--" Debugger remaps
--nnoremap <space>. :MaximizerToggle!<CR>
--" nnoremap <leader>dd :call vimspector#Launch()<CR>
--nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
--nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
--nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
--nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
--nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
--nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
--nnoremap <leader>de :call vimspector#Reset()<CR>

--nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

--nmap <leader>dl <Plug>VimspectorStepInto
--nmap <F8> <Plug>VimspectorStepInto
--" nmap <leader>dj <Plug>VimspectorStepOver
--nmap <F10> <Plug>VimspectorStepOver
--" nmap <leader>dk <Plug>VimspectorStepOut
--nmap <F12> <Plug>VimspectorStepOut
--nmap <leader>d_ <Plug>VimspectorRestart
--nnoremap <leader>d<space> :call vimspector#Continue()<CR>

--nmap <leader>drc <Plug>VimspectorRunToCursor
--" nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
--nmap <F9> <Plug>VimspectorToggleBreakpoint
--nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

--]])
