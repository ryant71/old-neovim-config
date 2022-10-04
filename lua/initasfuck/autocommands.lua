
-- delete trailing whitespace
--vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--  pattern = { "*" },
--  command = [[%s/\s\+$//e]],
--})

--> :lua changeheader()
-- This function is called with the BufWritePre event (autocmd)
-- and when I want to save a file I use ":update" which
-- only writes a buffer if it was modified
function _G.changeheader()
    if (vim.fn.line('$') >= 7) then
        time = os.date("%a, %m %Y %H:%M")
        preserve('sil! keepp keepj 1,7s/\\vlast (modified|change):\\zs.*/ ' .. time .. '/ei') 
    end
end

-- https://www.reddit.com/r/neovim/comments/p5is1h/comment/h97jyjw/?utm_source=share&utm_medium=web2x&context=3
-- autocommands
--- This function is taken from https://github.com/norcalli/nvim_utils
function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end

local autocmds = {
--    reload_vimrc = {
--        -- Reload vim config automatically
--        {"BufWritePost",[[$VIM_PATH/{*.vim,*.yaml,vimrc} nested source $MYVIMRC | redraw]]};
--    };
--    change_header = {
--        {"BufWritePre", "*", "lua changeheader()"}
--    };
--    packer = {
--        { "BufWritePost", "plugins.lua", "PackerCompile" };
--    };
--    terminal_job = {
--        { "TermOpen", "*", [[tnoremap <buffer> <Esc> <c-\><c-n>]] };
--        { "TermOpen", "*", "startinsert" };
--        { "TermOpen", "*", "setlocal listchars= nonumber norelativenumber" };
--    };
    restore_cursor = {
        { 'BufRead', '*', [[call setpos(".", getpos("'\""))]] };
    };
    save_shada = {
        {"VimLeave", "*", "wshada!"};
    };
--    resize_windows_proportionally = {
--        { "VimResized", "*", ":wincmd =" };
--    };
--    toggle_search_highlighting = {
--        { "InsertEnter", "*", "setlocal nohlsearch" };
--    };
--    lua_highlight = {
--        { "TextYankPost", "*", [[silent! lua vim.highlight.on_yank() {higroup="IncSearch", timeout=400}]] };
--    };
--    ansi_esc_log = {
--        { "BufEnter", "*.log", ":AnsiEsc" };
--    };
}

nvim_create_augroups(autocmds)
-- autocommands END
