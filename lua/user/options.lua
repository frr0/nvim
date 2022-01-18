local options = {
  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  mouse = "a",                             -- allow the mouse to be used in neovim
  --hidden = false,                           --
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  autoindent = true,                       -- autoindent
  ignorecase = true
  }


for k, v in pairs(options) do
  vim.opt[k] = v
end

--vim.cmd "colorscheme onedark"
--vim.cmd "cset t_Co=256"
--vim.cmd "cset background=dark"
vim.cmd "hi Normal ctermbg=16 guibg=#292C32"
vim.cmd "hi LineNr ctermbg=16 guibg=#292C32"
vim.cmd "syntax on"

