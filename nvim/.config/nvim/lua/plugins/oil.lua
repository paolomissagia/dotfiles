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
        ["<Esc>"] = "actions.close",
      },
      float = {
        border = "none",
        override = function(conf)
          conf.width = 1000
          conf.height = 1000

          return conf
        end
      }
    })

    vim.keymap.set("n", "<leader>e", function()
      oil.toggle_float()
    end)
  end,
}
