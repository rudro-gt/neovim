vim.api.nvim_set_keymap('n', 'Y', 'y$', {})
vim.opt.clipboard:append('unnamedplus')
vim.opt.nrformats:append('alpha')

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

if vim.g.vscode then
    vim.api.nvim_set_keymap('n', '<Space>', ':call VSCodeNotify("whichkey.show")<CR>', {silent=true})

    require('lazy').setup({
        { 'tpope/vim-surround' },
    })
else
    vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<C-o><S-o>', {})
    vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {})
    vim.cmd('filetype plugin indent on')
    vim.opt.termguicolors = true
    vim.opt.number = true
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true
    vim.opt.cursorline = true
    vim.opt.mouse = 'a'

    require('lazy').setup({
        { 'EdenEast/nightfox.nvim' },
        { 'olivercederborg/poimandres.nvim' },
        {
          'nvim-lualine/lualine.nvim',
          -- See `:help lualine.txt`
          opts = {
            options = {
              icons_enabled = false,
              theme = 'onedark',
              component_separators = { left = '', right = '' },
              section_separators = { left = '', right = '' },
            },
          },
        },
        { 'tpope/vim-surround' },
    })

    vim.cmd('colorscheme carbonfox')

    -- Auto-save on focus change (uncomment if needed)
    -- vim.cmd('autocmd FocusLost * :wa')
    -- Transparent background
    -- vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
end
