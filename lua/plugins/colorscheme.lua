return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- make LazyVim use catppuccin as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
