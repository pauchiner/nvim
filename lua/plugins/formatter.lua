FormatOnSave = true

return {
  'stevearc/conform.nvim',
  name = 'Formatter',
  enabled = FormatOnSave,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        tsx = { 'biome' },
        lua = { 'stylua' },
        rust = { 'rustfmt' },
        javascript = { 'biome' },
        typescript = { 'biome' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    })

    --- Format Commands
    vim.api.nvim_create_user_command('Format', function()
      vim.lsp.buf.format()
    end, {})

    vim.api.nvim_create_user_command('FormatOnSave', function()
      FormatOnSave = not FormatOnSave

      if not FormatOnSave then
        vim.notify('Format On Save Enabled', 'info', {
          title = 'Editor',
          icon = '',
        })
      else
        vim.notify('Format On Save Disabled', 'error', {
          title = 'Editor',
          icon = '',
        })
      end
    end, {})
  end,
}
