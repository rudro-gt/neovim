-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Local keymaps can be found in $HOME/.local/share/nvim/lazy/LazyVim

local map = vim.keymap.set
local delete = vim.keymap.del
local opts = { noremap = true, silent = true }

-- Basics
map("i", "jj", "<Esc>", opts) -- normal mode remap
map("n", "<c-a>", "gg<S-v>G", opts) -- select all
map("n", "K", "-J", opts) -- join with previous line

-- Override terminal toggle
delete("n", "<c-/>")
delete("t", "<c-/>")
map("n", "<c-`>", function() -- LazyVim.terminal() is wrapped to match expected function signature
  LazyVim.terminal()
end, { desc = "Terminal (Root Dir)" })
map("t", "<c-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Tabs
map("n", "<leader>tn", ":tabnew|Telescope find_files<Return>", opts)
map("n", "<leader>tq", ":tabclose<Return>", opts)
map("n", "<leader>tQ", ":tabonly<Return>", opts)

map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)

-- Buffers
map("n", "<leader>bD", ":%bd<Return>", { desc = "Delete All Buffers" })
map("n", "<leader>bo", ":%bd|e#|bd#<Return>", { desc = "Delete Other Buffers" })

--  TODO  Add descriptions to the remaps
