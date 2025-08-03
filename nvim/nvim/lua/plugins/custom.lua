-- My customization of LazyVim. See example.lua for reference.
return {
  -- Configure Nord theme
  { "gbprod/nord.nvim" }, -- Add Nord theme
  -- Configure LazyVim to load Nord theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },

  -- Configure file explorer
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      picker = {
        hidden = true,
        ignored = true,
      },
    },
  },
}
