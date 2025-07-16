return function(on_attach, capabilities)
  require("lspconfig").pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = "workspace",  -- or "openFilesOnly"
          typeCheckingMode = "basic",    -- or "strict" / "off"
        },
      },
    },
  })
end
