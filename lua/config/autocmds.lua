-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- notifying when recording a macro
autocmd("RecordingEnter", {
  callback = function()
    vim.notify("Macro recording started at register " .. vim.fn.reg_recording(), "info")
  end,
})

autocmd("RecordingLeave", {
  callback = function()
    vim.notify("Macro recorded into register " .. vim.fn.reg_recording(), "info")
  end,
})

--  TODO  Add Autocmds for showing whitespace on selection
