local nnoremap = require("initasfuck.keymap").nnoremap

-- does this make sense?
local vnoremap = require("initasfuck.keymap").vnoremap

nnoremap("<leader>nw", "<cmd>Ex<CR>")

nnoremap("<leader>.", "<cmd>set cursorline!<CR>")
nnoremap("<leader>,", "<cmd>set cursorcolumn!<CR>")

nnoremap("<C-j>", "20<Down>zz")
nnoremap("<C-k>", "20<Up>zz")

--nnoremap("", "")

nnoremap("Y", "y$")
nnoremap("C", "c$")

vnoremap("C-j>", "<cmd>m '>+1<CR>gv=gv")
vnoremap("C-k>", "<cmd>m '<-2<CR>gv=gv")

--vim.keymap.set('v', '<C-j>', "<cmd>m '>+1<CR>gv=gv")
--vim.keymap.set('v', '<C-k>', "<cmd>m '<-2<CR>gv=gv")
