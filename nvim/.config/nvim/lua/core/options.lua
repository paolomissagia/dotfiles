-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 2
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

-- disable netrw banner
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- top/bottom lines from cursor
vim.opt.scrolloff = 4

-- window manager
vim.opt.splitbelow = true
vim.opt.splitright = true

-- word wrap
vim.o.wrap = false

-- turn off mouse/trackpad
vim.opt.mouse = ""

-- disable tabs
vim.opt.showtabline = 0

-- fixed space for warning/error column
vim.opt.signcolumn = "number"
