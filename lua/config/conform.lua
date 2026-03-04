require("conform").setup {
  -- Check out https://neovimcraft.com/plugin/stevearc/conform.nvim/ for more info
  formatters_by_ft = {
    bash = { "beautysh", stop_after_first = true },
    csharp = { "astyle", stop_after_first = true },
    cs = { "astyle", stop_after_first = true },
    cpp = { "astyle", stop_after_first = true },
    objectivec = { "astyle", stop_after_first = true },
    dart = { "dart_format", stop_after_first = true },
    json = { "jq", lsp_format = "fallback" },
    lua = { "stylua" },
    nginx = { "nginxfmt", stop_after_first = true },
    pgsql = { "pg_format", stop_after_first = true },
    postgresql = { "pg_format", stop_after_first = true },
    proto = { "buf", lsp_format = "fallback" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    sh = { "beautysh", stop_after_first = true },
    shell = { "beautysh", stop_after_first = true },
    sql = { "pg_format", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    vue = { "prettierd", "prettier", stop_after_first = true },
    yaml = { "yq", stop_after_first = true },
    format_on_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
}
