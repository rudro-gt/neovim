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
  { import = "lazyvim.plugins.extras.lang.docker" },

  { import = "lazyvim.plugins.extras.lang.go" },

  { import = "lazyvim.plugins.extras.lang.python" },

  { import = "lazyvim.plugins.extras.lang.astro" },
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- Debug Adapter Protocol
  { import = "lazyvim.plugins.extras.dap.core" },
}
