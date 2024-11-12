return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<c-`>",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle Terminal",
      },
    },
  },
}
