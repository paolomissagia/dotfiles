return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup()

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", builtin.find_files)

    vim.keymap.set("n", "<leader>fg", function()
      builtin.live_grep({ additional_args = { "--fixed-strings" } })
    end)

    vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
  end,
}
