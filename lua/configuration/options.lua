-- [[ Settings ]]
vim.g.have_nerd_font = true

vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- UI
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Tabs / indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- netrw
-- netrw is an opt package in 0.12; load it now so netrw_gitignore#Hide exists
vim.cmd.packadd 'netrw'
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
local dotfiles = [[\(^\|\s\s\)\zs\.\S\+]]
local gitignored = vim.fn['netrw_gitignore#Hide']()
-- outside a git repo the helper returns git's error text instead of patterns
vim.g.netrw_list_hide = vim.v.shell_error == 0 and gitignored .. ',' .. dotfiles or dotfiles
