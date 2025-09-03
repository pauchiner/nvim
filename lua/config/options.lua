local globals = {
  mapleader = ';', --- Map leader key to ;
}

local options = {
  autoindent = true, --- Good auto indent
  backspace = 'indent,eol,start', --- Making sure backspace works
  backup = false, --- Recommended by coc
  clipboard = 'unnamed,unnamedplus', --- Copy-paste between vim and everything else
  cmdheight = 0, --- Give more space for displaying messages
  completeopt = 'menu,menuone,noselect', --- Better autocompletion
  concealcursor = '', --- Set to an empty string to expand tailwind class when on cursorline
  cursorline = true, --- Highlight of current line
  emoji = false, --- Fix emoji display
  encoding = 'utf-8', --- The encoding displayed
  errorbells = false, --- Disables sound effect for errors
  expandtab = true, --- Use spaces instead of tabs
  fileencoding = 'utf-8', --- The encoding written to file

  foldmethod = 'expr',
  foldexpr = 'v:lua.vim.treesitter.foldexpr()',
  foldcolumn = '1',
  foldnestmax = 4, ---
  foldenable = true, --- Enable folds
  foldlevel = 99, ---
  foldlevelstart = 99,

  ignorecase = true, --- Needed for smartcase
  incsearch = true, --- Start searching before pressing enter
  laststatus = 2, --- Have a global statusline at the bottom instead of one for each window
  mouse = 'a', --- Enable mouse
  number = true, --- Shows current line number
  pumheight = 10, --- Max num of items in completion menu
  relativenumber = true, --- Enables relative number
  scrolloff = 8, --- Always keep space when scrolling to bottom/top edge
  shiftwidth = 2, --- Change a number of space characters inserted for indentation
  showmode = false, --- Don't show things like -- INSERT -- anymore
  signcolumn = 'yes:1', --- Add extra sign column next to line number
  smartcase = true, --- Uses case in search
  smartindent = true, --- Makes indenting smart
  smarttab = true, --- Makes tabbing smarter will realize you have 2 vs 4
  softtabstop = 2, --- Insert 2 spaces for a tab
  splitright = true, --- Vertical splits will automatically be to the right
  swapfile = false, --- Swap not needed
  tabstop = 2, --- Insert 2 spaces for a tab
  termguicolors = true, --- Correct terminal colors
  timeoutlen = 200, --- Faster completion (cannot be lower than 200 because then commenting doesn't work)
  undofile = true, --- Sets undo to file
  updatetime = 100, --- Faster completion
  viminfo = '\'1000', --- Increase the size of file history
  wildignore = '*node_modules/**', --- Don't search inside Node.js modules
  wrap = false, --- Display long lines as just one line
  writebackup = false, --- Not needed
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end
