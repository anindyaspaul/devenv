--  Map leader. Must happen before plugins are required (otherwise wrong leader will be used).
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true }) -- Disable space, only use it as leader
-- Use `ALT+{h,j,k,l}` to navigate to left/down/up/right window
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
-- Use `ALT+{n,p}` to navigate to next/previous tab
vim.keymap.set('n', '<A-n>', ':tabn<CR>')
vim.keymap.set('n', '<A-p>', ':tabp<CR>')
-- Navigation with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

