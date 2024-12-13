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
    {
      "abecodes/tabout.nvim",
      config = function()
        require("tabout").setup({
          tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
          backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
          act_as_tab = true, -- shift content if tab out is not possible
          act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
          default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
          default_shift_tab = "<C-d>", -- reverse shift default action,
          enable_backwards = true, -- well ...
          completion = false, -- if the tabkey is used in a completion pum
          tabouts = {
            { open = "'", close = "'" },
            { open = '"', close = '"' },
            { open = "`", close = "`" },
            { open = "(", close = ")" },
            { open = "[", close = "]" },
            { open = "{", close = "}" },
          },
          ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
          exclude = {}, -- tabout will ignore these filetypes
        })
      end,
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
      },
      opt = true, -- Set this to true if the plugin is optional
      event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    event = {
      -- Only enable plugin for vaults in the Documents directory
      "BufReadPre "
        .. vim.fn.expand("~")
        .. "/Documents/**/*.md",
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        {
          name = "backend-with-go",
          path = vim.fn.expand("~") .. "/Documents/backend-with-go/",
        },
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
