-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

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

autocmd({ "BufLeave", "FocusLost" }, {
  pattern = "*",
  callback = function()
    local current_buf = vim.api.nvim_get_current_buf()
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = current_buf })
    local isModifiable = vim.api.nvim_get_option_value("modifiable", { buf = current_buf })
    local isValid = vim.api.nvim_buf_is_valid(current_buf)

    if isModifiable and isValid and buftype ~= "nofile" and vim.bo.modified then
      vim.cmd("silent write")
    end
  end,
})

