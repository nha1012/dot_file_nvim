local options = {
  formatters_by_ft = {
    css = { { "prettied", "prettier" } },
    graphql = { { "prettied", "prettier" } },
    html = { { "prettied", "prettier" } },
    javascript = { { "prettied", "prettier" } },
    javascriptreact = { { "prettied", "prettier" } },
    json = { { "prettied", "prettier" } },
    lua = { "stylua" },
    markdown = { { "prettied", "prettier" } },
    python = { "isort", "black" },
    sql = { "sql-formatter" },
    svelte = { { "prettied", "prettier" } },
    typescript = { { "prettied", "prettier" } },
    typescriptreact = { { "prettied", "prettier" } },
    yaml = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
