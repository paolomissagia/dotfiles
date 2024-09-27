-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- panes navigation
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-l>", "<c-w>l")

-- search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- file explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>")
