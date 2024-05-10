-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- terminal
vim.opt.termguicolors = true

-- disable swap files
vim.opt.swapfile = false

-- use default system clipboard
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- top/bottom lines from cursor
vim.opt.scrolloff = 8

-- window manager
vim.opt.splitbelow = true
vim.opt.splitright = true

-- make command bar single line
vim.o.cmdheight = 0
