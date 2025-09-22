return {
  -- Add the web devicons plugin
  "nvim-tree/nvim-web-devicons",

  -- The Catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        telescope = true,
      },
    },
  },

  -- LazyVim config
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
