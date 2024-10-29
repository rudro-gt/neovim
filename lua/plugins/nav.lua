return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><leader>", false },
      { "<leader>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
}

--  TODO  Try out Harpoon
