return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local oil = require("oil")

    oil.setup({
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["q"] = { "actions.close", mode = "n" }
      }
    })

    vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
  end,
}
