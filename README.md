# neovim-config

## layout

        .
        ├── README.md
        ├── after
        │   └── plugin
        │       ├── colors.lua
        │       ├── lsp.lua
        │       ├── null-ls.lua
        │       └── tabnine.lua
        ├── init.lua
        ├── lsp_tabnine_stuff.txt
        ├── lua
        │   └── initasfuck
        │       ├── autocommands.lua
        │       ├── init.lua
        │       ├── keymap.lua
        │       ├── packer.lua
        │       ├── remap.lua
        │       ├── set.lua
        │       └── vimscript.lua
        └── plugin
            └── packer_compiled.lua

## null-ls

For the options I've added, I installed the following:

        brew install chktex     # LaTeX linter
        brew install checkmake  # Makefile linter
        brew install yamllint   # yaml linter
        brew install hadolint   # Dockerfile linter

## TODO

The Neovim version of this

### Language Modes

SaltStack, Jinja2

### Miscellaneous

* re-enter nvim at same line as previous session
* ...

## Acknowledgements

* [Your first vimrc - ThePrimeagen](https://www.youtube.com/watch?v=x2QJYq4IX6M)
* [ThePrimeagen's GitHub repo](https://github.com/ThePrimeagen/.dotfiles/tree/master/vim-2022/.config/nvim)
