require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.completion.spell,
        require("null-ls").builtins.diagnostics.cfn_lint,
        require("null-ls").builtins.diagnostics.flake8,
        require("null-ls").builtins.diagnostics.shellcheck,
        require("null-ls").builtins.formatting.beautysh,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.fixjson,
        require("null-ls").builtins.formatting.nginx_beautifier,
        require("null-ls").builtins.formatting.shellharden,
        require("null-ls").builtins.formatting.mix,
        require("null-ls").builtins.formatting.sqlfluff.with({extra_args = { "--dialect", "postgres" },}),
    },
})
