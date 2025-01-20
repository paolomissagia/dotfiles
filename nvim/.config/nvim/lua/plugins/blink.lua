return {
  "saghen/blink.cmp",
  dependencies = 'rafamadriz/friendly-snippets',
  version = "*",
  opts = {
    keymap = {
      preset = "default",
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    completion = {
      list = {
        selection = {
          auto_insert = false
        }
      },
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
    }
  },
  opts_extend = { "sources.default" },
}
