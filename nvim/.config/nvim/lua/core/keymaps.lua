-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- navigation
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })

-- search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
