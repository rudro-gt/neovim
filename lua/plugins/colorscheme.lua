-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
return {
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "darker",
      transparent = true,
      lualine = {
        transparent = true,
      },
    },
  },
  {
    "lazyvim/lazyVim",
    opts = { colorscheme = "onedark" },
  },
}
