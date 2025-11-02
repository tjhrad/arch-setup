
-- Set leader key to SPACE
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Faster mode switching
keymap('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })

-- File operations
keymap('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
keymap('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

-- Clear search highlight
keymap('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear highlight' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

