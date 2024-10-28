return {
  { "nvimdev/dashboard-nvim", enabled = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right", -- Set NeoTree to open on the right
        width = 30, -- Optional: adjust the width of the NeoTree window
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlighting (vim regex)
      },
      search = {
        pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon
      },
    },
  },
}
