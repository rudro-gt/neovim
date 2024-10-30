return {
  {
    "folke/persistence.nvim",
    event = "VeryLazy",
    init = function(_)
      require("persistence").load()
    end,
  },
}
