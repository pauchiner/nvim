return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'gitcommit',
        'regex',
        'json',
        'bash',
        'markdown_inline',
        'markdown',
        'vim',
        'typescript',
        'javascript',
        'tsx',
        'rust',
        'html',
        'css',
        'lua',
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      autotag = { enable = true },
      indent = { enable = true },
    })
  end,
}
