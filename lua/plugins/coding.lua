return {
  -- LSP, Linters etc.
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- override hover keymap
      keys[#keys + 1] = { "K", false }
    end,
  },
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.astro" },
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.lang.svelte" },
  {
    "norcalli/nvim-colorizer.lua",
    opts = {
      "css",
      "javascript",
      html = {
        mode = "foreground",
      },
    },
  },

  -- Debug Adapter Protocol
  { import = "lazyvim.plugins.extras.dap.core" },

  -- Testing
  { import = "lazyvim.plugins.extras.test.core" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "fredrikaverpil/neotest-golang",
      "marilari88/neotest-vitest",
    },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-golang"))
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
