return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- override hover keymap
      keys[#keys + 1] = { "K", false }
    end,
  },
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
