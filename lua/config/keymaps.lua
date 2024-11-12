-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Local keymaps can be found in $HOME/.local/share/nvim/lazy/LazyVim

local map = vim.keymap.set
local delete = vim.keymap.del
local default_opts = { noremap = true, silent = true }
local function add_desc(description) -- add description with default options
  return {
    noremap = default_opts.noremap,
    silent = default_opts.silent,
    desc = description,
  }
end

-- Basics
map("i", "jj", "<Esc>", default_opts)
map("n", "K", "-J", default_opts)
map("n", "<leader><leader>", "<c-6>", add_desc("Alternate between last 2 buffers"))

-- Jump remap (<c-i> conflicting with <Tab>)
map("n", "<c-[>", "<c-o>", default_opts)
map("n", "<c-]>", "<c-i>", default_opts)

-- Terminal
delete("t", "<c-/>")
map("t", "<c-`>", "<cmd>close<cr>", add_desc("Hide Terminal"))

-- Windows
delete("n", "<leader>wd") -- q for quitting views (i.e tabs and windows), d for deleting buffers

-- Tabs
delete("n", "<leader><tab>[")
delete("n", "<leader><tab>]")
delete("n", "<leader><tab>d")

map("n", "<leader><tab><tab>", ":tabnew|Telescope find_files<Return>", add_desc("Create New Tab"))
map("n", "<leader><tab>q", ":tabclose<Return>", add_desc("Close Current Tab"))
map("n", "<leader><tab>Q", ":tabonly<Return>", add_desc("Close All Tabs"))

map("n", "<tab>", ":tabnext<Return>", add_desc("Next Tab"))
map("n", "<s-tab>", ":tabprev<Return>", add_desc("Prev Tab"))

-- Buffers
map("n", "<leader>bD", ":%bd<Return>", add_desc("Delete All Buffers"))
map("n", "<leader>bo", ":%bd|e#|bd#<Return>", add_desc("Delete Other Buffers"))
