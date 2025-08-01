-- Default tab config as fallback for vim-sleuth
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- Enable line number
vim.opt.number = true
-- Enable line wrap
vim.opt.wrap = false
-- Disable swap file
vim.opt.swapfile = false
-- Save undo history
vim.opt.undofile = true
-- Highlight cursor line
vim.opt.cursorline = true
-- Disable search highlight
vim.opt.hlsearch = false
-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Enable mouse
vim.opt.mouse = 'a'
-- Decrease update time
vim.opt.updatetime = 100
vim.opt.signcolumn = 'yes'
-- Use system clipboard
vim.opt.clipboard:append {'unnamedplus'}
-- Set colorscheme
vim.opt.termguicolors = true
vim.cmd('colorscheme nord')
-- Remove line numbers from terminal
-- autocmd TermOpen * setlocal nonumber norelativenumber
vim.api.nvim_create_autocmd('TermOpen', {
  command = 'setlocal nonumber'
})

-- Highlight on yank
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*',
})
