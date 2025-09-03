return {
  {
    'mason-org/mason.nvim',
    cmd = { 'Mason' },
    name = 'Mason',
    opts = {
      ui = {
        width = 1,
        height = 1,
        icons = {
          package_installed = '󰸞',
          package_pending = '➜',
          package_uninstalled = '',
        },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    name = 'Lsp Config',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      -- Virtual text
      vim.diagnostic.config({
        virtual_text = true,
        underline = true,
        update_in_insert = true,
        severity_sort = true,
      })

      -- Gutter
      local signs = { Error = ' ', Warn = ' ', Hint = '󰌶 ', Info = ' ' }

      for type, icon in pairs(signs) do
        local hl = 'DiagnosticSign' .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
      end
    end,
  },
  {
    'mason-org/mason-lspconfig.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    name = 'Mason Config',
    opts = {},
  },
  {
    'nvimdev/lspsaga.nvim',
    name = 'Lspsaga',
    cmd = 'Lspsaga',
    event = 'LspAttach',
    opts = {
      symbol_in_winbar = {
        enable = false,
        show_file = false,
      },
      lightbulb = {
        enable = false,
      },
      code_action = {
        show_server_name = true,
        extend_gitsigns = true,
      },
      finder = {
        default = 'def+imp+ref',
      },
      ui = {
        border = 'rounded',
        title = false,
      },
    },
    keys = {
      {
        'K',
        function()
          require('lspsaga.hover'):render_hover_doc()
        end,
        { desc = 'LSP Hover' },
      },
      {
        '[e',
        function()
          require('lspsaga.diagnostic'):goto_prev()
        end,
        { desc = 'Previous diagnostic' },
      },
      {
        '[e',
        function()
          require('lspsaga.diagnostic'):goto_next()
        end,
        { desc = 'Next diagnostic' },
      },
      {
        'gd',
        '<cmd>Lspsaga goto_definition<CR>',
        { desc = 'Go To Definition' },
      },
      {
        'gf',
        '<cmd>Lspsaga finder<CR>',
        { desc = 'LSP Finder' },
      },
      {
        'gr',
        function()
          require('lspsaga.rename'):lsp_rename({ '++project' })
        end,
        { desc = 'LSP Rename' },
      },
    },
  },
}
