return {
  "j-hui/fidget.nvim",
  opts = {
    notification = { override_vim_notify = false, },
    progress = { ignore_done_already = false, },
  },
  event = "LspAttach",
}
