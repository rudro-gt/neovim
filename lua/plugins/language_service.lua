return {
  -- LSP keymap Overrides
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- override hover keymap
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
    end,
  },

  -- Language Support
  { import = "lazyvim.plugins.extras.lang.go" },
}
