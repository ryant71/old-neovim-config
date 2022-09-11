local nnoremap = require("initasfuck.keymap").nnoremap
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


-- for nvim-tree
--
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 't', [[:NvimTreeToggle]], {})


-- for mind
--

nnoremap("<leader>mom", [[:MindOpenMain<CR>]], {})
nnoremap("<leader>mop", [[:MindOpenProject]], {})
