-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'NvChad/nvim-colorizer.lua'
    --use({
    --    "epwalsh/obsidian.nvim",
    --    tag = "*",})
    use 'epwalsh/obsidian.nvim'
    --- testing
    use 'folke/noice.nvim'
    use 'MunifTanjim/nui.nvim'
    --        use 'rcarriga/nvim-notify
    use 'folke/which-key.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'stevearc/oil.nvim'
    --- use 'nvim-tree/nvim-tree.lua'
    use 'christoomey/vim-tmux-navigator'
    end)
