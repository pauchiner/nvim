return {
  'lewis6991/gitsigns.nvim',
  name = 'Git Symbols',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    signs = {
      add = { text = '│' },
      untracked = { text = '│' },
    },
    signcolumn = true,
    current_line_blame = false,
  },
}
