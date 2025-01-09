return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local nvim_treesitter = require("nvim-treesitter.configs")

    nvim_treesitter.setup({
      ensure_installed = {
        "lua",
        "python",
        "ruby",
        "java",
        "typescript",
        "javascript",
        "html",
        "css",
        "json",
        "yaml",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
