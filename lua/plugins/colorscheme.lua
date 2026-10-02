return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- Neovim 0.12 ships a built-in "catppuccin" colorscheme which would shadow the
      -- lazy-loaded plugin (and ignore its options like term_colors), so use the
      -- flavour name, which only the plugin provides
      colorscheme = "catppuccin-mocha",
    },
  },
}
