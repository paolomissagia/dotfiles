return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set(
			"n",
			"<leader>lg",
			"<cmd>FloatermNew --height=0.9 --width=0.9 --disposable --title=Lazygit lazygit<CR>"
		)
		vim.keymap.set(
			"n",
			"<leader>ld",
			"<cmd>FloatermNew --height=0.9 --width=0.9 --disposable --title=Lazydocker lazydocker<CR>"
		)
	end,
}
