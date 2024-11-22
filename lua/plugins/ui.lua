return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "BUG", "DEBUG", "REMOVE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = " ", color = "info", alt = { "REFACTOR" } },
      },
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
