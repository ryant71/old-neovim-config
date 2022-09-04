local nnoremap = require("initasfuck.keymap").nnoremap

-- does this make sense?
local vnoremap = require("initasfuck.keymap").vnoremap

nnoremap("<leader>nw", "<cmd>Ex<CR>")

nnoremap("<leader>.", "<cmd>set cursorline!<CR>")
nnoremap("<leader>,", "<cmd>set cursorcolumn!<CR>")

--nnoremap("", "")
nnoremap("<C-j>", "20<Down>zz")
nnoremap("<C-k>", "20<Up>zz")


nnoremap("Y", "y$")
nnoremap("C", "c$")

-- move selected lines
vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
vnoremap("<C-k>", ":m '<-2<CR>gv=gv")
