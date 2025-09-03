return {
  'folke/snacks.nvim',
  name = 'Snacks',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                             
                   .,        
           /\___/\ ((        
           \`@_@'/  ))       
           {_:Y:.}_//        
----------{_}^-'{_}----------
                             
          Everything.        
]],
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ':lua Snacks.dashboard.pick(\'files\')' },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ':lua Snacks.dashboard.pick(\'oldfiles\')' },
          { icon = ' ', key = 's', desc = 'Language Servers', action = ':Mason' },
          { icon = ' ', key = 'p', desc = 'Plugins', action = ':Plugins', enabled = package.loaded.lazy ~= nil },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
      },
    },
    indent = {
      enabled = true,
      only_scope = true,
      only_current = true,
      animate = { enable = false },
    },
    words = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    bigfile = { enabled = true },
    lazygit = { enabled = true },
    statuscolumn = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
  },
  keys = {
    -- Pickers
    {
      '\\\\',
      function()
        Snacks.picker.buffers()
      end,
      desc = 'Buffers',
    },
    {
      '<leader>f',
      function()
        Snacks.picker.files()
      end,
      desc = 'Files',
    },
    {
      '<leader>r',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Live Grep',
    },
    {
      '<leader>e',
      function()
        Snacks.picker.diagnostics()
      end,
      desc = 'Diagnostics',
    },
    -- Git
    {
      'lz',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
