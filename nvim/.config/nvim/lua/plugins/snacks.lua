return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local snacks = require("snacks")

    snacks.setup({
      dashboard = { enabled = true },
      picker = { enabled = true }
    })

    local ignore = {
      "/vendor",
      "/cypress",
      "/deploy",
      "/build",
      "/android",
      "/ios",
      "/api-mock"
    }

    vim.keymap.set("n", "<leader>ff", function()
      Snacks.picker.files({
        exclude = ignore
      })
    end)

    vim.keymap.set("n", "<leader>fg", function()
      Snacks.picker.grep({
        exclude = ignore
      })
    end)
  end,
}
