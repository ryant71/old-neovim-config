require("zen-mode").setup {
    window = {
        width = 90,
        options = {
            number = false,
            relativenumber = false,
        }
    },
}

vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.opt.colorcolumn = "90"
    vim.opt.nu = false
   -- ColorMyPencils()
end)
