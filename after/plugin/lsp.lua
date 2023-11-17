local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "jdtls", "volar", "gopls" },
})

require("lspconfig").tsserver.setup({
  capabilities = capabilities,
})

require("lspconfig").clangd.setup({
  capabilities = capabilities,
})

require("lspconfig").jdtls.setup({
  capabilities = capabilities,
})

require("lspconfig").gopls.setup({
  capabilities = capabilities,
})
require("lspconfig").volar.setup({
  capabilities = capabilities,
})
