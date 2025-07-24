return {
  { "tpope/vim-surround", event = "VeryLazy" },
  { "tpope/vim-repeat", event = "VeryLazy" },
  { "tpope/vim-speeddating", event = "VeryLazy" },
  {
    "folke/flash.nvim",
    keys = {
      { "S", mode = { "n", "x", "o" }, false }, -- this was conflicting with vim-surround
      { "s", mode = { "n", "x", "o" }, false },
      {
        "<c-/>",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
  },
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = {
      tabkey = "<Tab>",
      act_as_tab = true,
      behavior = "nested", ---@type ntab.behavior
      pairs = { ---@type ntab.pair[]
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "<", close = ">" },
      },
      exclude = {},
      smart_punctuators = {
        enabled = false,
        semicolon = {
          enabled = false,
          ft = { "cs", "c", "cpp", "java" },
        },
        escape = {
          enabled = false,
          triggers = {}, ---@type table<string, ntab.trigger>
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = {},
      },
    },
  },
  {
    "mbbill/undotree",
    event = "VeryLazy",
  },
}
