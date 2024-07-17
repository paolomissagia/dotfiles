return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set(
			"n",
			"<leader>lg",
			"<cmd>FloatermNew --height=0.95 --width=0.95 --disposable --title=Lazygit lazygit<CR>"
		)
		vim.keymap.set(
			"n",
			"<leader>ld",
			"<cmd>FloatermNew --height=0.95 --width=0.95 --disposable --title=Lazydocker lazydocker<CR>"
		)
	end,
}
