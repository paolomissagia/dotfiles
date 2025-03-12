return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },
  opts = {
    servers = {
      lua_ls = {},
      pylsp = {},
      ruby_lsp = {},
      ts_ls = {},
      html = {},
      cssls = {},
      tailwindcss = {},
    }
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")

    for server, config in pairs(opts.servers) do
      local capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)

      config.capabilities = capabilities

      lspconfig[server].setup(config)
    end

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-on-attach", { clear = true }),

      callback = function(event)
        local bf = { buffer = event.buf }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, bf)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bf)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bf)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, bf)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bf)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bf)
      end,
    })
  end,
}
