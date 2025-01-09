return {
  "saghen/blink.cmp",
  dependencies = 'rafamadriz/friendly-snippets',
  version = "*",
  config = function()
    local blink = require("blink.cmp")

    blink.setup({
      keymap = {
        preset = "default",
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      completion = {
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
      },
      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
        cmdline = {},
      },
    })
  end,
  opts_extend = { "sources.default" },
}
