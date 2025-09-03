return {
  "akinsho/bufferline.nvim",
  name = "Bufferline",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    options = {
      always_show_bufferline = true,
      color_icons = true,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      indicator = {
        style = "none",
      },
      enforce_regular_tabs = false,
      separator_style = "thin",
      show_tab_indicators = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
  keys = {
    { "<S-Tab>", function() require("bufferline").cycle(-1) end },
    { "<Tab>", function() require("bufferline").cycle(1) end },
    { "<leader>x", "<cmd>bd<CR>" },
  }
}
