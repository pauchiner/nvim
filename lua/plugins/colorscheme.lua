return {
  "savq/melange-nvim",
  name = "Melange",
  lazy = false,
  priority = 1000,
  config = function()
    vim.api.nvim_command([[colorscheme melange]])
  end,
}
