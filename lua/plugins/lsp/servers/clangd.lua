return function(on_attach, capabilities)
  require("lspconfig").clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "clangd", "--background-index", "--clang-tidy" },
  })
end
