---@type vim.lsp.Config
return {
  capabilities = capabilities,
  filetypes = { "c", "cpp", "cc", "swift", "objective-c", "m" },
  flags = {
    debounce_text_changes = 500,
  },
})
