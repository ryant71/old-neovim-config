-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- begin theprimegean --
    use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
    }
    use("folke/zen-mode.nvim")
    use("github/copilot.vim")

    -- end theprimegean --

    -- use("sbdchd/neoformat")
    -- use("TimUntersberger/neogit")
    -- -- TJ created lodash of neovim
    -- use("nvim-lua/popup.nvim")
    -- use("sharkdp/fd")
    -- use("tpope/vim-surround")
    -- -- All the things
    -- use("tzachar/cmp-tabnine", { run = "./install.sh", requires = "hrsh7th/nvim-cmp"})
    -- use("onsails/lspkind-nvim")
    -- use("nvim-lua/lsp_extensions.nvim")
    -- use("glepnir/lspsaga.nvim")
    -- --use("simrat39/symbols-outline.nvim")
    -- use({
    --     "jose-elias-alvarez/null-ls.nvim",
    --     config = function()
    --         require("null-ls").setup()
    --     end,
    --     requires = { "nvim-lua/plenary.nvim" },
    -- })
    use {                                         -- filesystem navigation
         "kyazdani42/nvim-tree.lua",
         requires = "kyazdani42/nvim-web-devicons" -- filesystem icons
    }
    use {
       "nvim-lualine/lualine.nvim",
       requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    -- -- cool note taking plugin
    -- use {
    --   "phaazon/mind.nvim",
    --   branch = "v2.2",
    --   requires = { "nvim-lua/plenary.nvim" },
    --   config = function()
    --     require("mind").setup()
    --   end
    -- }
    -- -- colors
    use("folke/tokyonight.nvim")
    use("gruvbox-community/gruvbox")
    -- I gave up on opening nvim in last cursor position
    -- so I have resorted to a plugin
    use("farmergreg/vim-lastplace")
end)
