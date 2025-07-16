local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
return vim.tbl_deep_extend(
    "force",
    vim.lsp.protocol.make_client_capabilities(),
    ok and cmp_nvim_lsp.default_capabilities() or {}
)
