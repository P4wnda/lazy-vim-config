return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").clangd.setup({
      cmd = { "clangd", "--header-insertion=never", "--fallback-style=none" },
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
      end,
    })
  end,
}
