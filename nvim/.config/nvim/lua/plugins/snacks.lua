return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = { enabled = true },
    picker = { enabled = true },
    lazygit = { enabled = true },

    styles = {
      lazygit = {
        width = 0,
        height = 0
      },
      terminal = {
        keys = {
          term_normal = false
        }
      }
    }
  },
  keys = {
    { "<leader>lg", function() Snacks.lazygit() end },
    { "<leader>ff", function() Snacks.picker.files() end },
    { "<leader>fg", function() Snacks.picker.grep() end },
  }
}
