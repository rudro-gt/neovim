-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
local function is_wsl()
  local uname = vim.fn.system("uname -r")
  return string.find(uname, "WSL2")
end

return {
  { "navarasu/onedark.nvim", opts = { style = "darker", transparent = is_wsl() } },
  { "EdenEast/nightfox.nvim", opts = { options = { transparent = is_wsl() } } },
  {
    "lazyvim/lazyVim",
    opts = { colorscheme = "carbonfox" },
  },
}
