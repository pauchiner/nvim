return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.6.0',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    keymap = {
      preset = 'enter',

      ['<S-Tab>'] = { 'select_prev', 'fallback_to_mappings' },
      ['<Tab>'] = { 'select_next', 'fallback_to_mappings' },
    },

    signature = {
      enabled = true,
    },
    completion = {
      menu = { auto_show = true },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
  opts_extend = { 'sources.default' },
}
