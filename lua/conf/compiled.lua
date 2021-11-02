-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/fra/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/fra/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/fra/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/fra/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/fra/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      -- vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\2p\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\18pre_save_cmds\1\0\0\1\3\0\0\18NvimTreeClose\vcclose\nsetup\17auto-session\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/auto-session"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/filetype.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27cosmic.core.statusline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14impatient\frequire\0" },
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  kommentary = {
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/kommentary"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28cosmic.lsp.autocomplete\frequire\0" },
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle" },
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15cosmic.lsp\frequire\0" },
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\2è\1\0\0\5\0\18\0\0276\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\15\0005\3\5\0009\4\4\0=\4\6\0039\4\a\0=\4\b\0039\4\t\0=\4\n\0039\4\v\0=\4\f\0039\4\r\0=\4\14\3=\3\16\2B\1\2\0016\1\17\0006\2\0\0'\3\2\0B\2\2\2=\2\2\1K\0\1\0\bvim\nicons\1\0\0\nTRACE\ntrace\nDEBUG\ndebug\tINFO\tinfo\tWARN\twarn\nERROR\1\0\0\nerror\nsetup\vnotify\28cosmic.core.theme.icons\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\2\0029\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\30cosmic.core.file-explorer\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27cosmic.core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    after = { "galaxyline.nvim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/fra/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27cosmic.core.navigation\frequire\0" },
    loaded = true,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2²\6\0\0\6\0-\0<6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\31\0005\3\t\0005\4\5\0009\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\0035\4\f\0009\5\v\0=\5\6\0045\5\r\0=\5\b\4=\4\14\0035\4\16\0009\5\15\0=\5\6\0045\5\17\0=\5\b\4=\4\18\0035\4\20\0009\5\19\0=\5\6\0045\5\21\0=\5\b\4=\4\22\0035\4\24\0009\5\23\0=\5\6\0045\5\25\0=\5\b\4=\4\26\0035\4\28\0009\5\27\0=\5\6\0045\5\29\0=\5\b\4=\4\30\3=\3 \0025\3\"\0005\4!\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\2B\1\2\1K\0\1\0\vcolors\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\26DiagnosticInformation\f#2563EB\fwarning\1\4\0\0\22DiagnosticWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\rkeywords\1\0\0\tNOTE\1\3\0\0\tINFO\tnote\1\0\1\ncolor\thint\tnote\tPERF\1\6\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\tperf\16performance\1\0\0\tperf\tWARN\1\5\0\0\fWARNING\bXXX\twarn\fwarning\1\0\1\ncolor\fwarning\twarn\tHACK\1\2\0\0\thack\1\0\1\ncolor\fwarning\nflame\tTODO\1\2\0\0\ttodo\1\0\1\ncolor\tinfo\ncheck\bFIX\1\0\0\balt\1\b\0\0\nFIXME\bBUG\nFIXIT\nISSUE\bfix\nfixme\bbug\ticon\1\0\1\ncolor\nerror\ndebug\nsetup\18todo-comments\28cosmic.core.theme.icons\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    after = { "nvim-web-devicons", "nvim-notify" },
    loaded = true,
    only_config = true
  },
  ["vim-floaterm"] = {
    commands = { "FloatermToggle", "FloatermNew", "FloatermSend" },
    config = { "\27LJ\2\0024\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\25cosmic.core.terminal\frequire\0" },
    loaded = true,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/vim-floaterm"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = true,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fra/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  }
}

time([[Defining packer_plugins]], true)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28cosmic.lsp.autocomplete\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], true)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15cosmic.lsp\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27cosmic.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\2\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\6\0'\1\a\0B\0\2\1K\0\1\0\21color tokyonight\bcmd\1\3\0\0\aqf\vpacker\24tokyonight_sidebars\nnight\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-notify ]]

-- Config for: nvim-notify
try_loadstring("\27LJ\2\2è\1\0\0\5\0\18\0\0276\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\15\0005\3\5\0009\4\4\0=\4\6\0039\4\a\0=\4\b\0039\4\t\0=\4\n\0039\4\v\0=\4\f\0039\4\r\0=\4\14\3=\3\16\2B\1\2\0016\1\17\0006\2\0\0'\3\2\0B\2\2\2=\2\2\1K\0\1\0\bvim\nicons\1\0\0\nTRACE\ntrace\nDEBUG\ndebug\tINFO\tinfo\tWARN\twarn\nERROR\1\0\0\nerror\nsetup\vnotify\28cosmic.core.theme.icons\frequire\0", "config", "nvim-notify")

vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27cosmic.core.statusline\frequire\0", "config", "galaxyline.nvim")

time([[Sequenced loading]], true)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClipboard lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClipboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermToggle lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermNew lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermNew", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClose lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermSend lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermSend", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'todo-comments.nvim', 'telescope.nvim', 'kommentary'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'auto-session'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
