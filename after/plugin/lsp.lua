require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "jdtls", "volar", "gopls" },
}

require("lspconfig").gopls.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").volar.setup {}
require("lspconfig").jdtls.setup {}
