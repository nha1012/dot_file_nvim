-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  on_init = on_init,
  init_options = {
    volar = { autoClosingTags = true, autoCreateQuotes = true },
    vue = { autoInsert = { dotValue = true} },
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "../../node_modules/@vue/typescript-plugin",
        languages = {
          "javascript",
          "typescript",
          "vue",
       },
      },
    },
  },
  filetypes = {
    "javascript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "typescript"
  },
}

