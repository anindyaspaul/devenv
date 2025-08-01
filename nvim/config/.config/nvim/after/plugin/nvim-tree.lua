-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Setup keymap for toggle
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', {silent = true, noremap = true})
-- Setup nvim-tree
require('nvim-tree').setup({
  renderer = {
    icons = {
      webdev_colors = false,
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = true,
      },
    },
    special_files = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
})
