return {
  'stevearc/conform.nvim', -- Format plugin
  lazy = false,
  keys = {
    { '<leader>F', '<CMD>lua require("conform").format({ lsp_fallback = true, async = true })<CR>', desc = 'Format code' },
  },
  opts = {
    ormatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'biome' },
      typescriptreact = { 'biome' },
      javascript = { 'biome' },
      javascriptreact = { 'biome' },
      json = { 'biome' },
      jsonc = { 'biome' },
      css = { 'biome' },
      scss = { 'biome' },
    },
    format_on_save = {
      quiet = true,
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
