-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts) -- normal mode remap
map("n", "<C-a>", "gg<S-v>G", opts) -- select all
