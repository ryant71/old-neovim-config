-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use('sbdchd/neoformat')

    use('TimUntersberger/neogit')

    -- TJ created lodash of neovim
    use('nvim-lua/plenary.nvim')
    use('nvim-lua/popup.nvim')
    use('nvim-telescope/telescope.nvim')
    use('sharkdp/fd')
    use('nvim-treesitter/nvim-treesitter')


    use('tpope/vim-surround')

    -- All the things
    use('neovim/nvim-lspconfig')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/nvim-cmp')
    use('tzachar/cmp-tabnine', { run = './install.sh', requires = 'hrsh7th/nvim-cmp'})
    use('onsails/lspkind-nvim')
    use('nvim-lua/lsp_extensions.nvim')
    use('glepnir/lspsaga.nvim')
    --use('simrat39/symbols-outline.nvim')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')

    use({
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
            require('null-ls').setup()
        end,
        requires = { 'nvim-lua/plenary.nvim' },
    })

    use {                                         -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons' -- filesystem icons
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
      'phaazon/mind.nvim',
      branch = 'v2.2',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require'mind'.setup()
      end
    }
    -- colors
    -- Simple plugins can be specified as strings
    use 'folke/tokyonight.nvim'
    use 'gruvbox-community/gruvbox'

end)
