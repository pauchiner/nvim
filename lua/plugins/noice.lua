return {
  {
    'folke/noice.nvim',
    name = 'Noice',
    event = 'VeryLazy',
    opts = {
      cmdline = {
        enabled = false,
      },
      messages = {
        enabled = false,
      },
      popupmenu = {
        enabled = false,
      },
      commands = {
        enabled = false,
      },
      notify = {
        enabled = false,
      },
      lsp = {
        progress = { enabled = true },
      },
      presets = {
        lsp_doc_border = true,
        inc_rename = false,
      },
    },
    dependencies = {
      {
        'MunifTanjim/nui.nvim',
        name = 'Nui',
      },
    },
  },
}
