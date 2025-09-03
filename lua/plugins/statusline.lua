return {
  'nvim-lualine/lualine.nvim',
  main = 'lualine',
  name = 'Statusline',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { { 'branch', icon = '' } },
        lualine_c = {
          {
            'diff',
            colored = true,
            symbols = {
              added = ' ',
              modified = ' ',
              removed = ' ',
            },
          },
        },

        lualine_x = {
          {
            'diagnostics',
            symbols = {
              error = ' ',
              warn = ' ',
              info = ' ',
              hint = ' ',
            },
          },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    })
  end,
}
