--[CP - SETUP]--
--vim.opt.bg = "light"
vim.opt.nu = true
vim.opt.rnu =  true
vim.opt.ts = 4
vim.opt.sw = 4     
vim.opt.et = true     
vim.opt.si = true               
vim.opt.so = 10
vim.opt.ic = true
vim.opt.cb = 'unnamedplus'
vim.keymap.set("i", "(", "()<left>", { noremap = true })
vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set("i", "[", "[]<left>", { noremap = true })
vim.keymap.set("i", "\"", "\"\"<left>", { noremap = true })
vim.keymap.set("i", "'", "''<left>", { noremap = true })
-- [CP - END]--
vim.g.mapleader = " "
vim.keymap.set("i", "$", function()
	vim.api.nvim_put({ "$$" }, "c", true, true)
	vim.api.nvim_input("<Left>")
end, { noremap = true, silent = true })
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.cpp",
	callback = function()
		local header = string.format("// %s - %s", os.date("%d/%m/%Y"), os.date("%H:%M:%S"))
		vim.api.nvim_buf_set_lines(0, 0, 0, false, { header })
	end,
})
vim.api.nvim_set_keymap("n", "<leader>ps", ":vsplit | wincmd l | terminal pwsh<CR>", { noremap = true, silent = true })

