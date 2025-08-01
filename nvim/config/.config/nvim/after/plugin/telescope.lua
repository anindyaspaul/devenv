require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<C-j>'] = require('telescope.actions').move_selection_next,
        ['<C-k>'] = require('telescope.actions').move_selection_previous,
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
})

pcall(require('telescope').load_extension, 'fzf')

-- Falling back to find_files if git_files can't find a .git directory
local project_files = function()
  local opts = {} -- define here if you want to define something
  vim.fn.system('git rev-parse --is-inside-work-tree')
  if vim.v.shell_error == 0 then
    require"telescope.builtin".git_files(opts)
  else
    require"telescope.builtin".find_files(opts)
  end
end

-- Keymapping utiliy for telescope related items. It sets the mode, buffer and description for us each time.
local nmap = function(keys, func, desc)
  if desc then
    desc = 'Telescope: ' .. desc
  end
  vim.keymap.set('n', keys, func, { desc = desc })
end

local telescope_builtin = require('telescope.builtin')
nmap('<C-p>', project_files, '[P]roject Files')
nmap('<leader>ff', telescope_builtin.find_files, '[F]ind [F]iles')
nmap('<leader>fgf', telescope_builtin.git_files, '[F]ind [G]it [F]iles')
nmap('<leader>fs', telescope_builtin.live_grep, '[F]ind [S]tring')
