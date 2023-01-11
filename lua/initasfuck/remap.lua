vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


---
---
---
vim.keymap.set("n", "<leader>.", "<cmd>set cursorline!<CR>")
vim.keymap.set("n", "<leader>,", "<cmd>set cursorcolumn!<CR>")

--vim.keymap.set("n", "", "")
--vim.keymap.set("n", "<C-j>", "20<Down>zz")
--vim.keymap.set("n", "<C-k>", "20<Up>zz")

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "C", "c$")

-- move selected lines
--vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- for nvim-tree
--
local map = vim.api.nvim_set_keymap
-- remap the key used to leave insert mode
map('i', 'jk', '', {})
-- Toggle nvim-tree
map('n', 't', [[:NvimTreeToggle]], {})

-- for mind
--
vim.keymap.set("n", "<leader>mom", [[:MindOpenMain<CR>]], {})
vim.keymap.set("n", "<leader>mop", [[:MindOpenProject]], {})

vim.keymap.set("n", "<right>", ":bn<CR>")
vim.keymap.set("n", "<left>", ":bp<CR>")
vim.keymap.set("n", "<up>", "<C-w><C-w>")
vim.keymap.set("n", "<down>", "")
