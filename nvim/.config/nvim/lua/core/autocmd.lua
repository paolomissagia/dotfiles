-- auto comment line
vim.api.nvim_create_autocmd("BufEnter", {
	group = vim.api.nvim_create_augroup("remove-next-line-comment", { clear = true }),
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("yank-highlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- lsp
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-on-attach", { clear = true }),

	callback = function(event)
		local bf = { buffer = event.buf }

		vim.keymap.set("n", "K", vim.lsp.buf.hover, bf)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, bf)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bf)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, bf)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bf)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bf)
	end,
})
