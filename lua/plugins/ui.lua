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
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "buffers" },
        lualine_x = { "diff", "diagnostics" },
        lualine_y = { "encoding", "fileformat", "filetype" },
        lualine_z = { "location" },
      },
      options = {
        component_separators = "",
      },
    },
  },
}
