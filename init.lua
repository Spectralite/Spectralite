-- Set tab settings

vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')

-- Enable syntax highlighting

vim.cmd('syntax enable')

-- Make line numbers default

vim.opt.number = true

-- Enable break indent

vim.opt.breakindent = true


-- Set colorscheme

vim.cmd('colorscheme default')

-- Save undo history

vim.opt.undofile = true


-- Keymaps for Auto-completion (probably the most useful thing in this whole setup tbh)

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', "'", "''<Left>", {noremap = true, silent = true})
--Just a bit annoying 
--vim.api.nvim_set_keymap('i', '<', '<><Left>', { noremap = true, silent = true })

-- Sync clipboard between OS and neovim
vim.opt.clipboard = 'unnamedplus'

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
