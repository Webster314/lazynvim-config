return {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local on_attach = require("plugins.lsp.on_attach")
        local capabilities = require("plugins.lsp.capabilities")
        local servers = {
            "clangd",
            "lua_ls",
            "pyright",
            "rust_analyzer",
        }
        for _, server in ipairs(servers) do
            local ok, config = pcall(require, "plugins.lsp.servers." .. server)
            if ok and type(config) == "function" then
                config(on_attach, capabilities)
            end
        end
    end,
}
