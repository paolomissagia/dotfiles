vim.api.nvim_create_autocmd("BufEnter", {
	desc = "Disable New Line Comment",
	group = vim.api.nvim_create_augroup("user-next-line-comment", { clear = true }),
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("user-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
