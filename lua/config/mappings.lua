local keymap = vim.keymap.set
local silent = { silent = true }
local saga = { noremap = true, silent = true }

--- Increment/decrement
keymap('n', '+', '<C-a>', silent)
keymap('n', '-', '<C-x>', silent)

--- Delete a word backwards
keymap('n', 'dw', 'vb"_d', silent)

--- Clear highlights
keymap('n', '<Esc>', '<cmd>noh<CR>', silent)

--- Split window
keymap('n', 'ss', ':split<Return><C-w>w', silent)
keymap('n', 'sv', ':vsplit<Return><C-w>w', silent)

--- Move window
keymap('n', '<Space>', '<C-w>w', silent)
keymap('', '<C-h>', '<C-w>h', silent)
keymap('', '<C-k>', '<C-w>k', silent)
keymap('', '<C-j>', '<C-w>j', silent)
keymap('', '<C-l>', '<C-w>l', silent)

--- Resize window
keymap('n', '<C-w><left>', '<C-w><', silent)
keymap('n', '<C-w><right>', '<C-w>>', silent)
keymap('n', '<C-w><up>', '<C-w>+', silent)
keymap('n', '<C-w><down>', '<C-w>-', silent)
