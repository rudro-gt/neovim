return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "nvim-mini/mini.files",
    opts = {
      -- Module mappings created only inside explorer.
      -- Use `''` (empty string) to not create one.
      mappings = {
        close = "q",
        go_in = "L",
        go_in_plus = "<Enter>",
        go_out = "H",
        go_out_plus = "<BS>",
        mark_goto = "'",
        mark_set = "m",
        reset = "",
        reveal_cwd = "@",
        show_help = "g?",
        synchronize = ":w",
        trim_left = "<",
        trim_right = ">",
      },
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 30,
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
      {
        "<leader>E",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
    },
  },
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
