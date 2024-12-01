return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><leader>", false },
      { "<leader>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
  { "mrjones2014/smart-splits.nvim" },
}

--  TODO  Try out Harpoon
