return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local snacks = require("snacks")

    -- config
    snacks.setup({
      dashboard = { enabled = true },
      picker = { enabled = true },
      lazygit = { enabled = true },

      styles = {
        lazygit = {
          width = 0,
          height = 0
        }
      }
    })

    -- keymaps
    vim.keymap.set("n", "<leader>lg", function()
      Snacks.lazygit()
    end)

    vim.keymap.set("n", "<leader>ff", function()
      Snacks.picker.files()
    end)

    vim.keymap.set("n", "<leader>fg", function()
      Snacks.picker.grep()
    end)
  end,
}
