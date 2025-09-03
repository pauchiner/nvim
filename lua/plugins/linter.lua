return {
  'mfussenegger/nvim-lint',
  name = 'Linter',
  event = 'BufEnter',
  config = function()
    require('lint').linters_by_ft = {
      lua = { 'selene' },
      rust = { 'bacon' },
      tsx = { 'biome' },
      javascript = { 'biome' },
      typescript = { 'biome' },
    }
  end,
}
