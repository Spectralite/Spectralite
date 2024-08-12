--[CP - SETUP]
--vim.opt.bg ="light" 
vim.opt.nu = true
vim.opt.rnu =  true
vim.opt.cul = true
vim.opt.ts = 4
vim.opt.sw = 4
vim.opt.et = true
vim.opt.si = true
vim.opt.udf = true
vim.opt.so = 10
vim.opt.updatetime = 10000
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.inccommand = 'split'
vim.opt.spr = true
vim.opt.sb = true
vim.keymap.set("i", "(", "()<left>", { noremap = true })
vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set("i", "[", "[]<left>", { noremap = true })
vim.keymap.set("i", "\"", "\"\"<left>", { noremap = true })
vim.keymap.set("i", "'", "''<left>", { noremap = true })
--[CP - END]
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
vim.api.nvim_exec(
    [[
  augroup CPPSnippets
    autocmd!
    autocmd FileType cpp inoremap <buffer> cf <C-R>=luaeval('CPPSnippet()')<CR>
  augroup END
]],
    false
)
function _G.CPPSnippet()
    local snippet = [[
#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>
#include <utility>
#include <string> 
#include <set>
using namespace std;
using str = string; 
using ll = long long;
using ull = unsigned ll;
using ld = long double;
using vi = vector<int>;
using vll = vector<ll>;
using vs = vector<string>;
#define pb push_back
#define all(x) begin(x), end(x)
#define sz(x) (int) (x).size()
using pii = pair<int,int>;
using pll = pair<ll,ll>;
#define mp make_pair
void setIO(string name = "") {
    cin.tie(0)->sync_with_stdio(0); 
    if (sz(name)) {
        freopen((name + ".in").c_str(), "r", stdin); 
        freopen((name + ".out").c_str(), "w", stdout);
    }
}
int main(){ 
    setIO();
}
]]
vim.api.nvim_put(vim.split(snippet, "\n"), "l", true, true)
	return ""
end
