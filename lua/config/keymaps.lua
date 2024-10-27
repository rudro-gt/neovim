-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Local keymaps can be found in $HOME/.local/share/nvim/lazy/LazyVim

local map = vim.keymap.set
local delete = vim.keymap.del
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts) -- normal mode remap
map("n", "<C-a>", "gg<S-v>G", opts) -- select all
map("n", "K", "-J", opts) -- join with previous line

-- Override terminal toggle
delete("n", "<c-/>")
delete("t", "<C-/>")
map("n", "<c-`>", function() -- LazyVim.terminal() is wrapped to match expected function signature
  LazyVim.terminal()
end, { desc = "Terminal (Root Dir)" })
map("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- windows and tabs
