-- nvim config

local o = vim.o

-- UI
o.number = true
-- o.relativenumber = true
o.cursorline = true
o.signcolumn = 'yes'
o.termguicolors = true
o.wrap = false

-- Indentation
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true

-- Search
o.ignorecase = true        -- Ignore case when searching...
o.smartcase = true         -- ...unless uppercase present
o.incsearch = true         -- Show matches as you type
o.hlsearch = true          -- Highlight all matches

-- Enable mouse mode
o.mouse = 'a'

-- Files
o.undofile = true

-- Behavior
o.scrolloff = 20            -- Keep lines visible when scrolling
o.splitright = true        -- Vertical splits open to the right
o.splitbelow = true        -- Horizontal splits open below
-- o.clipboard = 'unnamedplus' -- Use system clipboard

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
vim.schedule(function()
    o.clipboard = 'unnamedplus'
end)

-- Performance
o.updatetime = 250         -- Faster completion & diagnostics
o.timeoutlen = 400         -- Shorter timeout for mapped sequences

-- Turn on confirmation dialog box that will ask if you wish to save if 
-- performing an operation would fail due to unsaved changes in the buffer (like ':q')
-- See ':help 'confirm''
o.confirm = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
