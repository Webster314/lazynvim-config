return function(on_attach, capabilities)
  require("lspconfig").lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = { version = 'Lua 5.4' },
        diagnostics = { },
        workspace = {
            library = {
              vim.env.VIMRUNTIME,
              vim.fn.stdpath("config") .. "/lua",
            },
            checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  })
end

