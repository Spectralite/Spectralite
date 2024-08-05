vim.opt.number = true
vim.opt.tabstop = 4      
vim.opt.shiftwidth = 4    
vim.opt.expandtab = true   
vim.opt.smartindent = true  
vim.opt.clipboard = 'unnamedplus'
vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set('i', '{{', '{', { noremap = true })
vim.keymap.set('i', '{}', '{}', { noremap = true })
vim.keymap.set('i', '[', '[]<Left>', { noremap = true })
vim.keymap.set('i', '[<CR>', '[<CR>]<Esc>O', { noremap = true })
vim.keymap.set('i', '[[', '[', { noremap = true })
vim.keymap.set('i', '[]', '[]', { noremap = true })
vim.keymap.set('i', '(', '()<Left>', { noremap = true })
vim.keymap.set('i', '(<CR>', '(<CR>)<Esc>O', { noremap = true })
vim.keymap.set('i', '((', '(', { noremap = true })
vim.keymap.set('i', '()', '()', { noremap = true })
vim.keymap.set('i', '"', '""<Left>', { noremap = true })
vim.keymap.set('i', '""', '"', { noremap = true })
vim.g.mapleader = ' '
vim.keymap.set('i', '$', function()
  vim.api.nvim_put({'$$'}, 'c', true, true)
  vim.api.nvim_input('<Left>')
end, { noremap = true, silent = true })
local function insert_cpp_header()
    local date = os.date("%d/%m/%Y")
    local time = os.date("%H:%M:%S")
    local header = {
        string.format('// %s - %s', date, time),}
    vim.api.nvim_buf_set_lines(0, 0, 0, false, header)
end
vim.api.nvim_create_autocmd({"BufNewFile"}, {
    pattern = "*.cpp",
    callback = function()
        insert_cpp_header()
    end
})
vim.api.nvim_set_keymap('n', '<leader>ps', ':vsplit | wincmd l | terminal pwsh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ',snip', ':-1read C:/Users/Eyobell/AppData/Local/nvim/snippet/<CR>', {noremap = true, silent = true})
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end 
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
     {
	"L3MON4D3/LuaSnip",
    lazy = true,
	config = function()
		require("luasnip").config.set_config({
			enable_autosnippets = true,
			store_selection_keys = "<Tab>",
      })
      require("luasnip.loaders.from_lua").load({paths = "C:/Users/Eyobell/AppData/Local/nvim/LuaSnip"})
    end}
})
