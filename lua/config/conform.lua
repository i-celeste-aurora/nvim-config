require("conform").setup {
  -- Check out https://neovimcraft.com/plugin/stevearc/conform.nvim/ for more info
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
    js = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    vue = { "prettierd", "prettier", stop_after_first = true },
    proto = { "buf", lsp_format = "fallback" },
    json = { "jq", lsp_format = "fallback" },
    dart = { "dart_format", stop_after_first = true },
    nginx = { "nginxfmt", stop_after_first = true },
    sql = { "pg_format", stop_after_first = true },
    postgresql = { "pg_format", stop_after_first = true },
    pgsql = { "pg_format", stop_after_first = true },
    bash = { "beautysh", stop_after_first = true },
    shell = { "beautysh", stop_after_first = true },
    sh = { "beautysh", stop_after_first = true },
    yaml = { "yq", stop_after_first = true },
    format_on_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
}
