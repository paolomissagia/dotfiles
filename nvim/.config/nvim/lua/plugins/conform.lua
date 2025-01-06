return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "autopep8" },
        ruby = { "standardrb" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
      },

      format_on_save = {
        timeout_ms = 2500,
        lsp_fallback = true,
      },
    })
  end,
}
