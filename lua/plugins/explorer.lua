return {
  "nvim-tree/nvim-tree.lua",
  name = "Tree",
  cmd = "NvimTreeToggle",
  keys = {
    { "<leader>l", "<cmd> NvimTreeToggle<CR>" },
  },
  opts = {
    view = {
      signcolumn = "auto",
      side = "right",
    },

    notify = {
      threshold = vim.log.levels.ERROR,
    },

    renderer = {
      root_folder_label = function(path)
        return vim.fn.fnamemodify(path, ":t")
      end,
      group_empty = true,

      highlight_git = true,

      indent_markers = {
        enable = true,
        icons = { corner = "╰" },
      },

      icons = {
        show = {
          git = true,
          folder_arrow = true,
        },
        glyphs = {
          git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "➜",
            untracked = "",
            deleted = "",
            ignored = "◌",
          },
          folder = {
            default = "󰉋 ",
            open = "󰝰 ",
            empty = "󰉖 ",
            empty_open = "󰷏 ",
          },
        },
        diagnostics_placement = "before",
        git_placement = "after",
      },
    },
  },
}
