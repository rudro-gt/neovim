-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.shell = "zsh"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.nrformats:append("alpha") --[[ This defines what bases Vim will consider for numbers when using the
                                       CTRL-A and CTRL-X commands for adding to and subtracting from a number
                                       respectively ]]
vim.opt.showtabline = 0
