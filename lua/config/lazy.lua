local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins", {
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = { 
    colorscheme = { "melange" }
  },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    size = { width = 1, height = 1 },
    border = "none",
    title = "Plugins",
    icons = {
      lazy = " ",
      loaded = "󰸞",
      not_loaded = "",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },
  }
})

vim.api.nvim_create_user_command("Plugins", function()
  vim.api.nvim_command([[Lazy]])
end, {})
