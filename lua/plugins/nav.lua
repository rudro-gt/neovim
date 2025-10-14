return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader><leader>", false },
      { "<leader>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
  { "mrjones2014/smart-splits.nvim" },
  { "cbochs/portal.nvim" },
}
