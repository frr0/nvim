local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

--[[--Remap space as leader key]]
--[[keymap("", "<Space>", "<Nop>", opts)]]
--[[vim.g.mapleader = " "]]
--[[vim.g.maplocalleader = " "]]

--[[-- Modes]]
--[[--   normal_mode = "n",]]
--[[--   insert_mode = "i",]]
--[[--   visual_mode = "v",]]
--[[--   visual_block_mode = "x",]]
--[[--   term_mode = "t",]]
--[[--   command_mode = "c",]]

--[[-- Normal --]]
--[[-- Better window navigation]]
--[[keymap("n", "<C-h>", "<C-w>h", opts)]]
--[[keymap("n", "<C-j>", "<C-w>j", opts)]]
--[[keymap("n", "<C-k>", "<C-w>k", opts)]]
--[[keymap("n", "<C-l>", "<C-w>l", opts)]]

--[[-- Resize with arrows]]
--[[keymap("n", "<C-Up>", ":resize -2<CR>", opts)]]
--[[keymap("n", "<C-Down>", ":resize +2<CR>", opts)]]
--[[keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)]]
--[[keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)]]

--[[-- Navigate buffers]]
--[[keymap("n", "<S-l>", ":bnext<CR>", opts)]]
--[[keymap("n", "<S-h>", ":bprevious<CR>", opts)]]

--[[-- Move text up and down]]
--[[keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)]]
--[[keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)]]

--[[-- Insert --]]
--[[-- Press jk fast to enter]]
--[[keymap("i", "jk", "<ESC>", opts)]]

--[[-- Visual --]]
--[[-- Stay in indent mode]]
--[[keymap("v", "<", "<gv", opts)]]
--[[keymap("v", ">", ">gv", opts)]]

--[[-- Move text up and down]]
--[[keymap("v", "<A-j>", ":m .+1<CR>==", opts)]]
--[[keymap("v", "<A-k>", ":m .-2<CR>==", opts)]]
--[[keymap("v", "p", '"_dP', opts)]]

--[[-- Visual Block --]]
--[[-- Move text up and down]]
--[[keymap("x", "J", ":move '>+1<CR>gv-gv", opts)]]
--[[keymap("x", "K", ":move '<-2<CR>gv-gv", opts)]]
--[[keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)]]
--[[keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)]]

--[[-- Terminal --]]
--[[-- Better terminal navigation]]
--[[-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)]]
--[[-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)]]
--[[-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)]]
--[[-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)]]

--[[map('n', '<space>dh', ':lua require"dap".toggle_breakpoint()<CR>')]]
--[[map('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")]]
--[[map('n', '<c-k>', ':lua require"dap".step_out()<CR>')]]
--[[map('n', "<c-l>", ':lua require"dap".step_into()<CR>')]]
--[[map('n', '<c-j>', ':lua require"dap".step_over()<CR>')]]
--[[map('n', '<c-h>', ':lua require"dap".continue()<CR>')]]
--[[map('n', '<leader>dn', ':lua require"dap".run_to_cursor()<CR>')]]
--[[map('n', '<leader>dk', ':lua require"dap".up()<CR>')]]
--[[map('n', '<leader>dj', ':lua require"dap".down()<CR>')]]
--[[map('n', '<leader>dc', ':lua require"dap".terminate()<CR>')]]
--[[map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')]]
--[[map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>')]]
--[[map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>')]]
--[[map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>')]]
--[[map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>')]]
--[[map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')]]

--[[-- nvim-telescope/telescope-dap.nvim]]
--[[require('telescope').load_extension('dap')]]
--[[map('n', '<leader>ds', ':Telescope dap frames<CR>')]]
--[[-- map('n', '<leader>dc', ':Telescope dap commands<CR>')]]
--[[map('n', '<leader>db', ':Telescope dap list_breakpoints<CR>')]]

--[[-- theHamsta/nvim-dap-virtual-text and mfussenegger/nvim-dap]]
--[[require('nvim-dap-virtual-text').setup()]]
--[[-- g.dap_virtual_text = true]]

