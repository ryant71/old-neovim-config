vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- Give more space for displaying messages.
vim.opt.cmdheight = 2

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.cursorline = true
vim.opt.errorbells = false

vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
--vim.opt.completeopt=menuone,noinsert,noselect
--
--
-- split window preferences
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- misc
vim.opt.iskeyword:append("-") -- consider string-string as whole word
